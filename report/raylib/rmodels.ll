Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@UpdateModelAnimationVertexBuffers:bb.a
  %i.em = shufflevector <4 x float> %i.ds, <4 x float> %i.bz, <4 x i32> <i32 3, i32 poison, i32 poison, i32 7>
  %i.en = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.ep = shufflevector <4 x float> %i.em, <4 x float> %i.eo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.eq = insertelement <4 x float> %i.ej, float %i.el, i64 0
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.ep, <4 x float> %i.eq) ; 4 uses
  %i.es = extractelement <4 x float> %i.er, i64 3
  %i.et = extractelement <4 x float> %i.er, i64 0
  %i.eu = fmul float %.sroa.14190.0.copyload, %i.dk
  %i.ev = extractelement <4 x float> %i.dp, i64 0
  %i.ew = fneg float %i.dk                        ; 2 uses
  %i.ex = fmul float %i.cb, %i.ew
  %i.ey = fmul float %.sroa.8184.0.copyload, %i.ek
  %i.ez = tail call float @llvm.fmuladd.f32(float %.sroa.4180.0.copyload, float %i.dt, float %i.ey)
  %i.fa = fmul float %.sroa.7183.0.copyload, %i.dx
  %i.fb = shufflevector <12 x float> %i.bo, <12 x float> poison, <2 x i32> <i32 poison, i32 4>
  %i.fc = insertelement <2 x float> %i.fb, float %.sroa.10186.0.copyload, i64 0
  %i.fd = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.dk, i64 1
  %i.ff = fmul <2 x float> %i.fc, %i.fe
  %i.fg = insertelement <4 x float> poison, float %.sroa.16192.0.copyload, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.df, i64 1
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float %i.dg, i64 3
  %i.fk = shufflevector <4 x float> %i.bz, <4 x float> %i.ds, <4 x i32> <i32 2, i32 6, i32 0, i32 0>
  %i.fl = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fm = insertelement <4 x float> %i.fl, float %i.fa, i64 1
  %i.fn = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fo = shufflevector <4 x float> %i.fm, <4 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.fk, <4 x float> %i.fo) ; 4 uses
  %i.fq = extractelement <4 x float> %i.fp, i64 0
  %i.fr = extractelement <4 x float> %i.fp, i64 1
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.co, float %i.fr)
  %i.ft = extractelement <4 x float> %i.fp, i64 2
  %i.fu = tail call float @llvm.fmuladd.f32(float %.sroa.18194.0.copyload, float %i.dj, float %i.ft)
  %i.fv = extractelement <4 x float> %i.fp, i64 3
  %i.fw = extractelement <2 x float> %i.cz, i64 0
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.dj, float %i.fv)
  %i.fy = load float, ptr %i.y, align 4           ; 3 uses
  %i.fz = load float, ptr %i.z, align 4           ; 3 uses
  %i.ga = load float, ptr %i.aa, align 4          ; 3 uses
  %i.gb = tail call float @llvm.fmuladd.f32(float %.sroa.0179.0.copyload, float %.sroa.12188.0.copyload, float %i.bp) ; 3 uses
  %i.gc = fmul float %i.gb, %i.du
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dv, float %i.gc)
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dw, float %i.gd)
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.dx, float %i.ge)
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %i.gf)
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.gg)
  %i.gi = fdiv float 1.000000e+00, %i.gh          ; 12 uses
  %i.gj = tail call float @llvm.fmuladd.f32(float %.sroa.16192.0.copyload, float %i.dw, float %i.dz)
  %i.gk = fmul float %i.gj, %i.gi
  %i.gl = extractelement <4 x float> %i.ej, i64 0
  %i.gm = fmul float %i.gl, %i.gi
  %i.gn = extractelement <4 x float> %i.er, i64 1
  %i.go = fmul float %i.gn, %i.gi
  %i.gp = extractelement <4 x float> %i.er, i64 2
  %i.gq = fmul float %i.gp, %i.gi
  %i.gr = fmul float %i.es, %i.gi
  %i.gs = tail call float @llvm.fmuladd.f32(float %.sroa.15191.0.copyload, float %i.cm, float %i.et)
  %i.gt = fmul float %i.gs, %i.gi
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.cn, float %i.eu)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.de, float %i.gb, float %i.gu)
  %i.gw = fmul float %i.gv, %i.gi
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cn, float %i.ex)
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.gb, float %i.gx)
  %i.gz = fmul float %i.gy, %i.gi
  %i.ha = fmul float %i.fq, %i.gi
  %i.hb = fmul float %i.fs, %i.gi
  %i.hc = fmul float %i.fu, %i.gi
  %i.hd = fmul float %i.fx, %i.gi
  %i.he = fmul float %i.fz, %i.gm
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.fy, float %i.he)
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.go, float %i.ga, float %i.hf)
  %i.hh = fadd float %i.gq, %i.hg
  %i.hi = fmul float %i.fz, %i.gt
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.fy, float %i.hi)
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.ga, float %i.hj)
  %i.hl = fadd float %i.gz, %i.hk
  %i.hm = fmul float %i.fz, %i.hb
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.fy, float %i.hm)
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.ga, float %i.hn)
  %i.hp = fadd float %i.hd, %i.ho
  %i.hq = load <2 x float>, ptr %i.t, align 4
  %i.hr = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hs = insertelement <2 x float> %i.hr, float %i.hl, i64 1
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> %i.bj, <2 x float> %i.hq)
  store <2 x float> %i.ht, ptr %i.t, align 4
  %i.hu = load float, ptr %i.u, align 4
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.af, float %i.hu)
  store float %i.hv, ptr %i.u, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.2 = phi i1 [ %.1219, %bb.e ], [ true, %bb.g ], [ true, %bb.f ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond.not, label %bb.d, label %bb.e

bb.i:                                             ; preds = %._crit_edge
  %i.hw = load i32, ptr %.sroa.36102.0.copyload, align 4
  %i.hx = mul i32 %.sroa.071.0.copyload, 12       ; 2 uses
  tail call void @rlUpdateVertexBuffer(i32 noundef %i.hw, ptr noundef nonnull %.sroa.18.0.copyload, i32 noundef %i.hx, i32 noundef 0) #54
  br i1 %.not114, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.36102.0.copyload, i64 12
  %i.hz = load i32, ptr %i.hy, align 4
  tail call void @rlUpdateVertexBuffer(i32 noundef %i.hz, ptr noundef nonnull %.sroa.26.0.copyload, i32 noundef %i.hx, i32 noundef 0) #54
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %bb.j, %bb.i, %bb.b
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count
  br i1 %exitcond241.not, label %._crit_edge227, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @UpdateModelAnimationEx(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.ModelAnimation) align 8 captures(none) %1, float noundef %2, ptr nofree noundef readonly byval(%struct.ModelAnimation) align 8 captures(none) %3, float noundef %4, float noundef %5) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i32, ptr %i.d, align 4              ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond5 = select i1 %or.cond, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp ne ptr %i.n, null
  %or.cond11 = select i1 %or.cond8, i1 %i.o, i1 false
  %i.p = fcmp oge float %5, 0.000000e+00
  %or.cond13 = and i1 %i.p, %or.cond11
  %i.q = fcmp ole float %5, 1.000000e+00
  %or.cond15 = and i1 %i.q, %or.cond13
  br i1 %or.cond15, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.r = fptosi float %2 to i32
  %i.s = srem i32 %i.r, %i.e                      ; 3 uses
  %i.t = add nsw i32 %i.s, 1                      ; 3 uses
  %i.u = sitofp i32 %i.s to float
  %i.v = fsub float %2, %i.u                      ; 2 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = select i1 %i.w, float 0.000000e+00, float %i.v ; 2 uses
  %i.y = fcmp ogt float %i.x, 1.000000e+00
  %.0.i = select i1 %i.y, float 1.000000e+00, float %i.x ; 5 uses
  %.not166 = icmp slt i32 %i.t, %i.e
  br i1 %.not166, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = srem i32 %i.t, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0150 = phi i32 [ %i.z, %bb.c ], [ %i.t, %bb.b ]
  %i.aa = fptosi float %4 to i32
  %i.ab = srem i32 %i.aa, %i.k                    ; 3 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 3 uses
  %i.ad = sitofp i32 %i.ab to float
  %i.ae = fsub float %4, %i.ad                    ; 2 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  %i.ag = select i1 %i.af, float 0.000000e+00, float %i.ae ; 2 uses
  %i.ah = fcmp ogt float %i.ag, 1.000000e+00
  %.0.i169 = select i1 %i.ah, float 1.000000e+00, float %i.ag ; 4 uses
  %.not168 = icmp slt i32 %i.ac, %i.k
  br i1 %.not168, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = urem i32 %i.ac, %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0152 = phi i32 [ %i.ai, %bb.e ], [ %i.ac, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.am = sext i32 %i.s to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.am
  %i.ao = sext i32 %.0150 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ao
  %i.aq = fsub float 1.000000e+00, %.0.i
  %i.ar = sext i32 %i.ab to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ar
  %i.at = sext i32 %.0152 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.at
  %i.av = fsub float 1.000000e+00, %.0.i169
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = fsub nnan ninf float 1.000000e+00, %5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load ptr, ptr %i.az, align 8
  %wide.trip.count = zext nneg i32 %i.ak to i64
  %i.bb = insertelement <2 x float> poison, float %.0.i169, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.bd = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bf = insertelement <2 x float> poison, float %5, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bh = insertelement <2 x float> %i.bc, float %5, i64 1
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  br label %bb.g

._crit_edge:                                      ; preds = %QuaternionSlerp.exit288, %bb.f
  tail call fastcc void @UpdateModelAnimationVertexBuffers(ptr noundef nonnull byval(%struct.Model) align 8 %0)
  br label %bb.w

bb.g:                                             ; preds = %.lr.ph, %QuaternionSlerp.exit288
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %QuaternionSlerp.exit288 ] ; 8 uses
  %i.bj = load ptr, ptr %i.an, align 8
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv ; 6 uses
  %i.bl = load ptr, ptr %i.ap, align 8
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %indvars.iv ; 6 uses
  %.sroa.086.0.copyload = load <2 x float>, ptr %i.bk, align 4 ; 3 uses
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.287.0.copyload = load float, ptr %.sroa.287.0..sroa_idx, align 4
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.bm, align 4 ; 2 uses
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4
  %.sroa.08.0.vec.extract.i = extractelement <2 x float> %.sroa.086.0.copyload, i64 0
  %foldExtExtBinop = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.086.0.copyload
  %i.bn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bo = tail call float @llvm.fmuladd.f32(float %.0.i, float %i.bn, float %.sroa.08.0.vec.extract.i)
  %i.bp = shufflevector <2 x float> %.sroa.084.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bq = insertelement <2 x float> %i.bp, float %.sroa.285.0.copyload, i64 1
  %i.br = shufflevector <2 x float> %.sroa.086.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = insertelement <2 x float> %i.br, float %.sroa.287.0.copyload, i64 1 ; 2 uses
  %i.bt = fsub <2 x float> %i.bq, %i.bs
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bt, <2 x float> %i.bs)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bx = load <2 x float>, ptr %i.bv, align 4    ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bz = load <2 x float>, ptr %i.by, align 4    ; 7 uses
  %i.ca = load <2 x float>, ptr %i.bw, align 4    ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.cc = load <2 x float>, ptr %i.cb, align 4    ; 4 uses
  %.sroa.054.0.vec.extract.i = extractelement <2 x float> %i.bx, i64 0
  %.sroa.023.0.vec.extract.i = extractelement <2 x float> %i.ca, i64 0
  %foldExtExtBinop663 = fmul <2 x float> %i.bx, %i.ca
  %i.cd = extractelement <2 x float> %foldExtExtBinop663, i64 1
  %i.ce = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i, float %.sroa.023.0.vec.extract.i, float %i.cd)
  %.sroa.9.8.vec.extract.i = extractelement <2 x float> %i.bz, i64 0
  %.sroa.12.8.vec.extract.i = extractelement <2 x float> %i.cc, i64 0
  %i.cf = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i, float %.sroa.12.8.vec.extract.i, float %i.ce)
  %.sroa.9.12.vec.extract.i = extractelement <2 x float> %i.bz, i64 1
  %.sroa.12.12.vec.extract.i = extractelement <2 x float> %i.cc, i64 1
  %i.cg = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i, float %.sroa.12.12.vec.extract.i, float %i.cf) ; 3 uses
  %i.ch = fcmp olt float %i.cg, 0.000000e+00      ; 3 uses
  %i.ci = fneg <2 x float> %i.ca
  %i.cj = fneg <2 x float> %i.cc
  %i.ck = fneg float %i.cg
  %.0.i170 = select i1 %i.ch, float %i.ck, float %i.cg ; 5 uses
  %.sroa.023.0.i = select i1 %i.ch, <2 x float> %i.ci, <2 x float> %i.ca ; 3 uses
  %.sroa.12.0.i = select i1 %i.ch, <2 x float> %i.cj, <2 x float> %i.cc ; 3 uses
  %i.cl = tail call float @llvm.fabs.f32(float %.0.i170)
  %i.cm = fcmp ult float %i.cl, 1.000000e+00
  br i1 %i.cm, label %bb.h, label %QuaternionSlerp.exit

bb.h:                                             ; preds = %bb.g
  %i.cn = fcmp ogt float %.0.i170, f0x3F733333
  br i1 %i.cn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.co = fsub <2 x float> %.sroa.12.0.i, %i.bz
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.co, <2 x float> %i.bz) ; 3 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cr = extractelement <2 x float> %i.cp, i64 1 ; 2 uses
  %i.cs = fsub <2 x float> %.sroa.023.0.i, %i.bx
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.cs, <2 x float> %i.bx) ; 4 uses
  %foldExtExtBinop665 = fmul <2 x float> %i.ct, %i.ct
  %i.cu = extractelement <2 x float> %foldExtExtBinop665, i64 1
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cw)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cx) ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cy)
  %i.cz = fcmp oeq float %i.cy, 0.000000e+00
  %i.da = fdiv float 1.000000e+00, %sqrt.i.i
  %i.db = select i1 %i.cz, float 1.000000e+00, float %i.da
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = fmul <2 x float> %i.ct, %i.dd
  %i.df = fmul <2 x float> %i.cp, %i.dd
  br label %QuaternionSlerp.exit

bb.j:                                             ; preds = %bb.h
  %i.dg = tail call float @acosf(float noundef %.0.i170) #54 ; 2 uses
  %i.dh = fneg float %.0.i170
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %.0.i170, float 1.000000e+00)
  %i.dj = tail call float @sqrtf(float noundef %i.di) #54 ; 2 uses
  %i.dk = tail call float @llvm.fabs.f32(float %i.dj)
  %i.dl = fcmp olt float %i.dk, f0x358637BD
  br i1 %i.dl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dm = fmul <2 x float> %.sroa.023.0.i, splat (float 5.000000e-01)
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> splat (float 5.000000e-01), <2 x float> %i.dm)
  %i.do = fmul <2 x float> %.sroa.12.0.i, splat (float 5.000000e-01)
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> splat (float 5.000000e-01), <2 x float> %i.do)
  br label %QuaternionSlerp.exit

bb.l:                                             ; preds = %bb.j
  %i.dq = fmul float %i.aq, %i.dg
  %i.dr = tail call float @sinf(float noundef %i.dq) #54
  %i.ds = fmul float %.0.i, %i.dg
  %i.dt = tail call float @sinf(float noundef %i.ds) #54
  %i.du = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dt, i64 1
  %i.dw = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fdiv <2 x float> %i.dv, %i.dx           ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ea = fmul <2 x float> %.sroa.023.0.i, %i.dz
  %i.eb = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.eb, <2 x float> %i.ea)
  %i.ed = fmul <2 x float> %.sroa.12.0.i, %i.dz
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.eb, <2 x float> %i.ed)
  br label %QuaternionSlerp.exit

QuaternionSlerp.exit:                             ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.pn87.i = phi <2 x float> [ %i.bx, %bb.g ], [ %i.de, %bb.i ], [ %i.dn, %bb.k ], [ %i.ec, %bb.l ] ; 7 uses
  %.pn85.i = phi <2 x float> [ %i.bz, %bb.g ], [ %i.df, %bb.i ], [ %i.dp, %bb.k ], [ %i.ee, %bb.l ] ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %.sroa.074.0.copyload = load <2 x float>, ptr %i.ef, align 4 ; 2 uses
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %.sroa.275.0.copyload = load float, ptr %.sroa.275.0..sroa_idx, align 4 ; 2 uses
  %.sroa.072.0.copyload = load <2 x float>, ptr %i.eg, align 4
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %.sroa.273.0.copyload = load float, ptr %.sroa.273.0..sroa_idx, align 4
  %i.eh = fsub <2 x float> %.sroa.072.0.copyload, %.sroa.074.0.copyload
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.eh, <2 x float> %.sroa.074.0.copyload) ; 2 uses
  %i.ej = fsub float %.sroa.273.0.copyload, %.sroa.275.0.copyload
  %i.ek = tail call float @llvm.fmuladd.f32(float %.0.i, float %i.ej, float %.sroa.275.0.copyload) ; 2 uses
  %i.el = load ptr, ptr %i.as, align 8
  %i.em = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %indvars.iv ; 6 uses
  %i.en = load ptr, ptr %i.au, align 8
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %indvars.iv ; 6 uses
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.em, align 4 ; 3 uses
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.265.0.copyload = load float, ptr %.sroa.265.0..sroa_idx, align 4
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.eo, align 4 ; 2 uses
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.263.0.copyload = load float, ptr %.sroa.263.0..sroa_idx, align 4
  %.sroa.08.0.vec.extract.i179 = extractelement <2 x float> %.sroa.064.0.copyload, i64 0
  %foldExtExtBinop667 = fsub <2 x float> %.sroa.062.0.copyload, %.sroa.064.0.copyload
  %i.ep = extractelement <2 x float> %foldExtExtBinop667, i64 0
  %i.eq = tail call float @llvm.fmuladd.f32(float %.0.i169, float %i.ep, float %.sroa.08.0.vec.extract.i179)
  %i.er = shufflevector <2 x float> %.sroa.062.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.es = insertelement <2 x float> %i.er, float %.sroa.263.0.copyload, i64 1
  %i.et = shufflevector <2 x float> %.sroa.064.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eu = insertelement <2 x float> %i.et, float %.sroa.265.0.copyload, i64 1 ; 2 uses
  %i.ev = fsub <2 x float> %i.es, %i.eu
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ev, <2 x float> %i.eu)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.ez = load <2 x float>, ptr %i.ex, align 4    ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.fb = load <2 x float>, ptr %i.fa, align 4    ; 7 uses
  %i.fc = load <2 x float>, ptr %i.ey, align 4    ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.fe = load <2 x float>, ptr %i.fd, align 4    ; 4 uses
  %.sroa.054.0.vec.extract.i187 = extractelement <2 x float> %i.ez, i64 0
  %.sroa.023.0.vec.extract.i188 = extractelement <2 x float> %i.fc, i64 0
  %foldExtExtBinop669 = fmul <2 x float> %i.ez, %i.fc
  %i.ff = extractelement <2 x float> %foldExtExtBinop669, i64 1
  %i.fg = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i187, float %.sroa.023.0.vec.extract.i188, float %i.ff)
  %.sroa.9.8.vec.extract.i191 = extractelement <2 x float> %i.fb, i64 0
  %.sroa.12.8.vec.extract.i192 = extractelement <2 x float> %i.fe, i64 0
  %i.fh = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i191, float %.sroa.12.8.vec.extract.i192, float %i.fg)
  %.sroa.9.12.vec.extract.i193 = extractelement <2 x float> %i.fb, i64 1
  %.sroa.12.12.vec.extract.i194 = extractelement <2 x float> %i.fe, i64 1
  %i.fi = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i193, float %.sroa.12.12.vec.extract.i194, float %i.fh) ; 3 uses
  %i.fj = fcmp olt float %i.fi, 0.000000e+00      ; 3 uses
  %i.fk = fneg <2 x float> %i.fc
  %i.fl = fneg <2 x float> %i.fe
  %i.fm = fneg float %i.fi
  %.0.i195 = select i1 %i.fj, float %i.fm, float %i.fi ; 5 uses
  %.sroa.023.0.i196 = select i1 %i.fj, <2 x float> %i.fk, <2 x float> %i.fc ; 3 uses
  %.sroa.12.0.i197 = select i1 %i.fj, <2 x float> %i.fl, <2 x float> %i.fe ; 3 uses
  %i.fn = tail call float @llvm.fabs.f32(float %.0.i195)
  %i.fo = fcmp ult float %i.fn, 1.000000e+00
  br i1 %i.fo, label %bb.m, label %QuaternionSlerp.exit229

bb.m:                                             ; preds = %QuaternionSlerp.exit
  %i.fp = fcmp ogt float %.0.i195, f0x3F733333
  br i1 %i.fp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@GenMeshHeightmap:bb.a
  %i.dv = getelementptr [4 x i8], ptr %i.w, i64 %indvars.iv259 ; 12 uses
  store float %i.du, ptr %i.dv, align 4
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  store float %i.au, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  store float %i.du, ptr %i.dx, align 4
  %i.dy = getelementptr i8, ptr %i.dv, i64 12
  store float %i.av, ptr %i.dy, align 4
  %i.dz = fdiv float %i.cg, %i.z                  ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dv, i64 16
  store float %i.dz, ptr %i.ea, align 4
  %i.eb = getelementptr i8, ptr %i.dv, i64 20
  store float %i.au, ptr %i.eb, align 4
  %i.ec = getelementptr i8, ptr %i.dv, i64 24
  store float %i.dz, ptr %i.ec, align 4
  %i.ed = getelementptr i8, ptr %i.dv, i64 28
  store float %i.au, ptr %i.ed, align 4
  %i.ee = getelementptr i8, ptr %i.dv, i64 32
  store float %i.du, ptr %i.ee, align 4
  %i.ef = getelementptr i8, ptr %i.dv, i64 36
  store float %i.av, ptr %i.ef, align 4
  %i.eg = getelementptr i8, ptr %i.dv, i64 40
  store float %i.dz, ptr %i.eg, align 4
  %i.eh = getelementptr i8, ptr %i.dv, i64 44
  store float %i.av, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.ej = load float, ptr %i.ei, align 4          ; 2 uses
  %i.ek = add nsw i64 %indvars.iv261, 1           ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ek
  %i.em = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.en = getelementptr i8, ptr %i.em, i64 12
  %i.eo = load float, ptr %i.en, align 4
  %i.ep = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %i.er = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.es = getelementptr i8, ptr %i.er, i64 24
  %i.et = load float, ptr %i.es, align 4
  %i.eu = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.ev = getelementptr i8, ptr %i.eu, i64 28
  %i.ew = load <2 x float>, ptr %i.el, align 4    ; 2 uses
  %i.ex = load <2 x float>, ptr %i.eq, align 4
  %i.ey = load <2 x float>, ptr %i.ev, align 4
  %i.ez = fsub float %i.eo, %i.ej                 ; 2 uses
  %i.fa = fsub <2 x float> %i.ex, %i.ew           ; 3 uses
  %i.fb = fsub float %i.et, %i.ej                 ; 2 uses
  %i.fc = fsub <2 x float> %i.ey, %i.ew           ; 3 uses
  %i.fd = fneg <2 x float> %i.fc
  %i.fe = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.ez, i64 1
  %i.fg = fmul <2 x float> %i.ff, %i.fd
  %i.fh = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fi = insertelement <2 x float> %i.fh, float %i.fb, i64 1
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fi, <2 x float> %i.fg) ; 5 uses
  %i.fk = fneg float %i.fb
  %i.fl = extractelement <2 x float> %i.fa, i64 0
  %i.fm = fmul float %i.fl, %i.fk
  %i.fn = extractelement <2 x float> %i.fc, i64 0
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.fn, float %i.fm) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.fj, %i.fj
  %i.fp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fq = extractelement <2 x float> %i.fj, i64 0 ; 2 uses
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.fq, float %i.fp)
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fr) ; 2 uses
  %i.ft = fcmp une float %i.fs, 0.000000e+00
  br i1 %i.ft, label %bb.c, label %Vector3Normalize.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.fs)
  %i.fu = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.fv = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fj, %i.fw
  %i.fy = fmul float %i.fo, %i.fu
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.b, %bb.c
  %.sroa.013.0.i = phi <2 x float> [ %i.fx, %bb.c ], [ %i.fj, %bb.b ] ; 2 uses
  %.sroa.617.0.i = phi float [ %i.fy, %bb.c ], [ %i.fo, %bb.b ]
  %.sroa.097.0.vec.extract = extractelement <2 x float> %.sroa.013.0.i, i64 0
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv261
  store float %.sroa.097.0.vec.extract, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ek
  %i.gb = shufflevector <2 x float> %.sroa.013.0.i, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.gc = insertelement <3 x float> %i.gb, float %.sroa.617.0.i, i64 1
  %i.gd = shufflevector <3 x float> %i.gc, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  store <8 x float> %i.gd, ptr %i.ga, align 4
  %i.ge = add nsw i64 %indvars.iv261, 9           ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4          ; 2 uses
  %i.gh = add nsw i64 %indvars.iv261, 10          ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.gh
  %i.gj = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.gk = getelementptr i8, ptr %i.gj, i64 48
  %i.gl = load float, ptr %i.gk, align 4
  %i.gm = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.gn = getelementptr i8, ptr %i.gm, i64 52
  %i.go = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.gp = getelementptr i8, ptr %i.go, i64 60
  %i.gq = load float, ptr %i.gp, align 4
  %i.gr = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.gs = getelementptr i8, ptr %i.gr, i64 64
  %i.gt = load <2 x float>, ptr %i.gi, align 4    ; 2 uses
  %i.gu = load <2 x float>, ptr %i.gn, align 4
  %i.gv = load <2 x float>, ptr %i.gs, align 4
  %i.gw = fsub float %i.gl, %i.gg                 ; 2 uses
  %i.gx = fsub <2 x float> %i.gu, %i.gt           ; 3 uses
  %i.gy = fsub float %i.gq, %i.gg                 ; 2 uses
  %i.gz = fsub <2 x float> %i.gv, %i.gt           ; 3 uses
  %i.ha = fneg <2 x float> %i.gz
  %i.hb = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hc = insertelement <2 x float> %i.hb, float %i.gw, i64 1
  %i.hd = fmul <2 x float> %i.hc, %i.ha
  %i.he = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hf = insertelement <2 x float> %i.he, float %i.gy, i64 1
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.hf, <2 x float> %i.hd) ; 5 uses
  %i.hh = fneg float %i.gy
  %i.hi = extractelement <2 x float> %i.gx, i64 0
  %i.hj = fmul float %i.hi, %i.hh
  %i.hk = extractelement <2 x float> %i.gz, i64 0
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.hk, float %i.hj) ; 4 uses
  %foldExtExtBinop286 = fmul <2 x float> %i.hg, %i.hg
  %i.hm = extractelement <2 x float> %foldExtExtBinop286, i64 1
  %i.hn = extractelement <2 x float> %i.hg, i64 0 ; 2 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hm)
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.ho) ; 2 uses
  %i.hq = fcmp une float %i.hp, 0.000000e+00
  br i1 %i.hq, label %bb.d, label %Vector3Normalize.exit.1

bb.d:                                             ; preds = %Vector3Normalize.exit
  %sqrt.i.1 = tail call float @llvm.sqrt.f32(float %i.hp)
  %i.hr = fdiv float 1.000000e+00, %sqrt.i.1      ; 2 uses
  %i.hs = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x float> %i.hg, %i.ht
  %i.hv = fmul float %i.hl, %i.hr
  br label %Vector3Normalize.exit.1

Vector3Normalize.exit.1:                          ; preds = %bb.d, %Vector3Normalize.exit
  %.sroa.013.0.i.1 = phi <2 x float> [ %i.hu, %bb.d ], [ %i.hg, %Vector3Normalize.exit ] ; 2 uses
  %.sroa.617.0.i.1 = phi float [ %i.hv, %bb.d ], [ %i.hl, %Vector3Normalize.exit ]
  %.sroa.097.0.vec.extract.1 = extractelement <2 x float> %.sroa.013.0.i.1, i64 0
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ge
  store float %.sroa.097.0.vec.extract.1, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.gh
  %i.hy = shufflevector <2 x float> %.sroa.013.0.i.1, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.hz = insertelement <3 x float> %i.hy, float %.sroa.617.0.i.1, i64 1
  %i.ia = shufflevector <3 x float> %i.hz, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  store <8 x float> %i.ia, ptr %i.hx, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 18  ; 2 uses
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, 12 ; 2 uses
  %indvars.iv.next262 = add nsw i64 %indvars.iv261, 18 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare ptr @LoadImageColors(ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #34

declare void @UnloadImageColors(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @GenMeshCubicmap(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1, <2 x float> %2, float %3) local_unnamed_addr #33 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.a = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %1) #54 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %.sroa.01030.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %.sroa.01030.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 24 uses
  %i.f = mul i32 %i.c, 36
  %i.g = mul i32 %i.f, %i.e
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = mul nsw i64 %i.h, 12                     ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #56 ; 10 uses
  %i.k = shl nsw i64 %i.h, 3
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #56 ; 10 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #56 ; 10 uses
  %i.n = icmp sgt i32 %i.e, 0
  %i.o = icmp sgt i32 %i.c, 0
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %.preheader1058, label %._crit_edge1070

.preheader1058:                                   ; preds = %bb.a, %._crit_edge
  %i.p = phi i32 [ %i.ar, %._crit_edge ], [ %i.e, %bb.a ]
  %i.q = phi i32 [ %i.as, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.r = phi i32 [ %i.at, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  %.010351069 = phi i32 [ %.11036.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.010381068 = phi i32 [ %.11039.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.010441067 = phi i32 [ %.11045.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.010501066 = phi i32 [ %.pre-phi, %._crit_edge ], [ 0, %bb.a ] ; 10 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %.preheader1058.._crit_edge_crit_edge

.preheader1058.._crit_edge_crit_edge:             ; preds = %.preheader1058
  %.pre = add nuw nsw i32 %.010501066, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1058
  %i.t = uitofp nneg i32 %.010501066 to float     ; 2 uses
  %i.u = fadd nnan ninf float %i.t, -5.000000e-01
  %i.v = fmul float %3, %i.u                      ; 24 uses
  %i.w = fadd nnan float %i.t, 5.000000e-01
  %i.x = fmul float %3, %i.w                      ; 24 uses
  %i.y = add nuw nsw i32 %.010501066, 1           ; 2 uses
  %cond = icmp eq i32 %.010501066, 0
  %i.z = add nsw i32 %.010501066, -1
  br label %bb.b

._crit_edge1070:                                  ; preds = %._crit_edge, %bb.a
  %.01044.lcssa = phi i32 [ 0, %bb.a ], [ %.11045.lcssa, %._crit_edge ] ; 4 uses
  %.01038.lcssa = phi i32 [ 0, %bb.a ], [ %.11039.lcssa, %._crit_edge ] ; 3 uses
  %.01035.lcssa = phi i32 [ 0, %bb.a ], [ %.11036.lcssa, %._crit_edge ] ; 8 uses
  store i32 %.01035.lcssa, ptr %0, align 8
  %i.aa = sdiv i32 %.01035.lcssa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = mul nsw i32 %.01035.lcssa, 3
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #56 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ae) #56 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = shl nsw i32 %.01035.lcssa, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 2
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.ao, align 8
  %i.ap = icmp sgt i32 %.01035.lcssa, 0
  br i1 %i.ap, label %.lr.ph1079.preheader, label %.preheader1057

.lr.ph1079.preheader:                             ; preds = %._crit_edge1070
  %wide.trip.count = zext nneg i32 %.01035.lcssa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aq = icmp eq i32 %.01035.lcssa, 1
  br i1 %i.aq, label %.lr.ph1079.epil.preheader, label %.lr.ph1079.preheader.new

.lr.ph1079.preheader.new:                         ; preds = %.lr.ph1079.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph1079

._crit_edge.loopexit:                             ; preds = %.thread
  %.pre1112 = load i32, ptr %i.d, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader1058.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i32 [ %.pre, %.preheader1058.._crit_edge_crit_edge ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %i.ar = phi i32 [ %i.p, %.preheader1058.._crit_edge_crit_edge ], [ %.pre1112, %._crit_edge.loopexit ] ; 2 uses
  %i.as = phi i32 [ %i.q, %.preheader1058.._crit_edge_crit_edge ], [ %i.kp, %._crit_edge.loopexit ]
  %i.at = phi i32 [ %i.r, %.preheader1058.._crit_edge_crit_edge ], [ %i.kp, %._crit_edge.loopexit ]
  %.11045.lcssa = phi i32 [ %.010441067, %.preheader1058.._crit_edge_crit_edge ], [ %.51049, %._crit_edge.loopexit ] ; 2 uses
  %.11039.lcssa = phi i32 [ %.010381068, %.preheader1058.._crit_edge_crit_edge ], [ %.51043, %._crit_edge.loopexit ] ; 2 uses
  %.11036.lcssa = phi i32 [ %.010351069, %.preheader1058.._crit_edge_crit_edge ], [ %.5, %._crit_edge.loopexit ] ; 2 uses
  %i.au = icmp slt i32 %.pre-phi, %i.ar
  br i1 %i.au, label %.preheader1058, label %._crit_edge1070, !llvm.loop !209

bb.b:                                             ; preds = %.lr.ph, %.thread
  %i.av = phi i32 [ %i.q, %.lr.ph ], [ %i.kp, %.thread ] ; 7 uses
  %i.aw = phi i32 [ %i.r, %.lr.ph ], [ %i.kp, %.thread ] ; 2 uses
  %.110361063 = phi i32 [ %.010351069, %.lr.ph ], [ %.5, %.thread ] ; 12 uses
  %.110391062 = phi i32 [ %.010381068, %.lr.ph ], [ %.51043, %.thread ] ; 12 uses
  %.110451061 = phi i32 [ %.010441067, %.lr.ph ], [ %.51049, %.thread ] ; 12 uses
  %.010511059 = phi i32 [ 0, %.lr.ph ], [ %i.kq, %.thread ] ; 10 uses
  %i.ax = uitofp nneg i32 %.010511059 to float    ; 2 uses
  %i.ay = fadd nnan ninf float %i.ax, -5.000000e-01
  %i.az = fmul float %.sroa.01030.0.vec.extract, %i.ay ; 24 uses
  %i.ba = fadd nnan float %i.ax, 5.000000e-01
  %i.bb = fmul float %.sroa.01030.0.vec.extract, %i.ba ; 24 uses
  %i.bc = mul nuw nsw i32 %i.aw, %.010501066
  %i.bd = add nsw i32 %i.bc, %.010511059
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.be ; 7 uses
  %i.bg = load i8, ptr %i.bf, align 1
  switch i8 %i.bg, label %.thread [
    i8 -1, label %bb.c
    i8 0, label %bb.af
  ]

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, -1
  br i1 %i.bj, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, -1
  br i1 %i.bp, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bq = sext i32 %.110361063 to i64
  %i.br = getelementptr [12 x i8], ptr %i.j, i64 %i.bq ; 51 uses
  store float %i.az, ptr %i.br, align 4
  %.sroa.11406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float %i.v, ptr %.sroa.12.0..sroa_idx, align 4
  %i.bs = getelementptr i8, ptr %i.br, i64 12
  store float %i.az, ptr %i.bs, align 4
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.br, i64 16
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8391.0..sroa_idx = getelementptr i8, ptr %i.br, i64 20
  store float %i.x, ptr %.sroa.8391.0..sroa_idx, align 4
  %i.bt = getelementptr i8, ptr %i.br, i64 24
  store float %i.bb, ptr %i.bt, align 4
  %.sroa.10355.0..sroa_idx = getelementptr i8, ptr %i.br, i64 28
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx, align 4
  %.sroa.11368.0..sroa_idx = getelementptr i8, ptr %i.br, i64 32
  store float %i.x, ptr %.sroa.11368.0..sroa_idx, align 4
  %i.bu = getelementptr i8, ptr %i.br, i64 36
  store float %i.az, ptr %i.bu, align 4
  %.sroa.11406.0..sroa_idx407 = getelementptr i8, ptr %i.br, i64 40
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx407, align 4
  %.sroa.12.0..sroa_idx421 = getelementptr i8, ptr %i.br, i64 44
  store float %i.v, ptr %.sroa.12.0..sroa_idx421, align 4
  %i.bv = getelementptr i8, ptr %i.br, i64 48
  store float %i.bb, ptr %i.bv, align 4
  %.sroa.10355.0..sroa_idx356 = getelementptr i8, ptr %i.br, i64 52
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx356, align 4
  %.sroa.11368.0..sroa_idx369 = getelementptr i8, ptr %i.br, i64 56
  store float %i.x, ptr %.sroa.11368.0..sroa_idx369, align 4
  %i.bw = getelementptr i8, ptr %i.br, i64 60
  store float %i.bb, ptr %i.bw, align 4
  %.sroa.8330.0..sroa_idx = getelementptr i8, ptr %i.br, i64 64
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.8330.0..sroa_idx, align 4
  %.sroa.9339.0..sroa_idx = getelementptr i8, ptr %i.br, i64 68
  store float %i.v, ptr %.sroa.9339.0..sroa_idx, align 4
  %i.bx = sext i32 %.110451061 to i64
  %i.by = getelementptr [12 x i8], ptr %i.m, i64 %i.bx ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.ca = getelementptr i8, ptr %i.by, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.cb = getelementptr i8, ptr %i.by, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.cc = getelementptr i8, ptr %i.by, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.cd = getelementptr i8, ptr %i.by, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.ce = sext i32 %.110391062 to i64
  %i.cf = getelementptr [8 x i8], ptr %i.l, i64 %i.ce ; 9 uses
  store <4 x float> <float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 1.000000e+00>, ptr %i.cf, align 4
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 0.000000e+00, float 5.000000e-01>, ptr %i.cg, align 4
  %i.ch = getelementptr i8, ptr %i.cf, i64 32
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.ch, align 4
  %i.ci = getelementptr i8, ptr %i.br, i64 72
  store float %i.az, ptr %i.ci, align 4
  %.sroa.9281.0..sroa_idx = getelementptr i8, ptr %i.br, i64 76
  store float 0.000000e+00, ptr %.sroa.9281.0..sroa_idx, align 4
  %.sroa.10292.0..sroa_idx = getelementptr i8, ptr %i.br, i64 80
  store float %i.v, ptr %.sroa.10292.0..sroa_idx, align 4
  %i.cj = getelementptr i8, ptr %i.br, i64 84
  store float %i.bb, ptr %i.cj, align 4
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %i.br, i64 88
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr i8, ptr %i.br, i64 92
  store float %i.x, ptr %.sroa.11.0..sroa_idx, align 4
  %i.ck = getelementptr i8, ptr %i.br, i64 96
  store float %i.az, ptr %i.ck, align 4
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %i.br, i64 100
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10264.0..sroa_idx = getelementptr i8, ptr %i.br, i64 104
  store float %i.x, ptr %.sroa.10264.0..sroa_idx, align 4
  %i.cl = getelementptr i8, ptr %i.br, i64 108
  store float %i.az, ptr %i.cl, align 4
  %.sroa.9281.0..sroa_idx282 = getelementptr i8, ptr %i.br, i64 112
  store float 0.000000e+00, ptr %.sroa.9281.0..sroa_idx282, align 4
  %.sroa.10292.0..sroa_idx293 = getelementptr i8, ptr %i.br, i64 116
  store float %i.v, ptr %.sroa.10292.0..sroa_idx293, align 4
  %i.cm = getelementptr i8, ptr %i.br, i64 120
  store float %i.bb, ptr %i.cm, align 4
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.br, i64 124
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9316.0..sroa_idx = getelementptr i8, ptr %i.br, i64 128
  store float %i.v, ptr %.sroa.9316.0..sroa_idx, align 4
  %i.cn = getelementptr i8, ptr %i.br, i64 132
  store float %i.bb, ptr %i.cn, align 4
  %.sroa.10.0..sroa_idx224 = getelementptr i8, ptr %i.br, i64 136
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx224, align 4
  %.sroa.11.0..sroa_idx236 = getelementptr i8, ptr %i.br, i64 140
  store float %i.x, ptr %.sroa.11.0..sroa_idx236, align 4
  %i.co = add nsw i32 %.110361063, 12             ; 3 uses
  %i.cp = getelementptr i8, ptr %i.by, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cp, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cq = getelementptr i8, ptr %i.by, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cq, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cr = getelementptr i8, ptr %i.by, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cr, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cs = getelementptr i8, ptr %i.by, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.ct = getelementptr i8, ptr %i.by, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ct, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cu = getelementptr i8, ptr %i.by, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cv = add nsw i32 %.110451061, 12             ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cf, i64 48
  store <4 x float> <float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %i.cw, align 4
  %i.cx = getelementptr i8, ptr %i.cf, i64 64
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 5.000000e-01>, ptr %i.cx, align 4
  %i.cy = getelementptr i8, ptr %i.cf, i64 80
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %i.cy, align 4
  %i.cz = add nsw i32 %.110391062, 12             ; 3 uses
  %i.da = load i32, ptr %i.d, align 4
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  %i.dc = icmp slt i32 %.010501066, %i.db
  br i1 %i.dc, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.dd = mul nuw nsw i32 %i.aw, %i.y
  %i.de = add nsw i32 %i.dd, %.010511059
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.df ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = icmp eq i8 %i.dq, -1
  br i1 %i.dr, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.old = icmp eq i32 %.010501066, %i.db
  br i1 %.old, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ds = sext i32 %i.co to i64
  %i.dt = getelementptr inbounds [12 x i8], ptr %i.j, i64 %i.ds ; 3 uses
  store float %i.az, ptr %i.dt, align 4
  %.sroa.7.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.7.0..sroa_idx385, align 4
  %.sroa.8391.0..sroa_idx392 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store float %i.x, ptr %.sroa.8391.0..sroa_idx392, align 4
  %i.du = getelementptr i8, ptr %i.br, i64 156
  store float %i.az, ptr %i.du, align 4
  %.sroa.9.0..sroa_idx254 = getelementptr i8, ptr %i.br, i64 160
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx254, align 4
  %.sroa.10264.0..sroa_idx265 = getelementptr i8, ptr %i.br, i64 164
  store float %i.x, ptr %.sroa.10264.0..sroa_idx265, align 4
  %i.dv = getelementptr i8, ptr %i.br, i64 168
  store float %i.bb, ptr %i.dv, align 4
  %.sroa.10355.0..sroa_idx358 = getelementptr i8, ptr %i.br, i64 172
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx358, align 4
end_hunk_1
