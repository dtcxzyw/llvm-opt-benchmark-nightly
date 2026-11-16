Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3CpuNarrowPhase?download=true
inline.NumInlined: 585
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z21b3ClipFaceAgainstHullRK9b3Vector3PK22b3ConvexPolyhedronDataS1_RK12b3QuaternionPS_iS8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiES8_i:bb.a
  %invariant.gep = getelementptr [32 x i8], ptr %i.g, i64 %i.u
  %i.v = insertelement <4 x float> poison, float %i.i, i64 0
  %i.w = extractelement <3 x float> %i.k, i64 1
  %i.x = extractelement <3 x float> %i.k, i64 2
  %i.y = extractelement <4 x float> %i.o, i64 0   ; 2 uses
  %i.z = extractelement <4 x float> %i.o, i64 1   ; 2 uses
  %i.aa = extractelement <4 x float> %i.o, i64 2  ; 2 uses
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> %i.o, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.ac = icmp slt i32 %.190, 0
  br i1 %i.ac, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.089191 = phi i32 [ -1, %.lr.ph ], [ %.190, %bb.b ]
  %.091190 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.192, %bb.b ] ; 2 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ad = load <3 x float>, ptr %gep, align 16, !tbaa !80 ; 3 uses
  %i.ae = shufflevector <3 x float> %i.ad, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0> ; 2 uses
  %i.af = load float, ptr %gep, align 16, !tbaa !80
  %i.ag = shufflevector <3 x float> %i.ad, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ah = fneg <4 x float> %i.ae
  %i.ai = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aj = fmul <4 x float> %i.l, %i.ai
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ae, <4 x float> %i.aj)
  %i.al = shufflevector <3 x float> %i.ad, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 1, i32 2>
  %i.am = insertelement <4 x float> %i.al, float %i.af, i64 1
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.am, <4 x float> %i.ak) ; 4 uses
  %i.ao = extractelement <4 x float> %i.an, i64 2 ; 3 uses
  %i.ap = fmul float %i.i, %i.ao
  %i.aq = extractelement <4 x float> %i.an, i64 3 ; 3 uses
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.y, float %i.ap)
  %i.as = extractelement <4 x float> %i.an, i64 0 ; 3 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aa, float %i.ar)
  %i.au = extractelement <4 x float> %i.an, i64 1 ; 3 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.w, float %i.at)
  %i.aw = fmul float %i.i, %i.as
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.z, float %i.aw)
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.y, float %i.ax)
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.x, float %i.ay)
  %i.ba = fmul float %i.i, %i.au
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aa, float %i.ba)
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.z, float %i.bb)
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.as, float %i.j, float %i.bc)
  %i.be = fmul float %i.r, %i.az
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.av, float %i.p, float %i.be)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.t, float %i.bf) ; 2 uses
  %i.bh = fcmp olt float %i.bg, %.091190          ; 2 uses
  %.192 = select i1 %i.bh, float %i.bg, float %.091190
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %.190 = select i1 %i.bh, i32 %i.bi, i32 %.089191 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !189

bb.c:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !108
  %i.bl = add nsw i32 %i.bk, %.190
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !67
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [32 x i8], ptr %i.bn, i64 %i.bo ; 5 uses
  %i.bq = load <3 x float>, ptr %i.bp, align 16   ; 8 uses
  %i.br = shufflevector <3 x float> %i.bq, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %.sroa.019.0.copyload = load float, ptr %i.bp, align 16 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !80
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !41 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !41 ; 2 uses
  %i.bs = icmp sgt i32 %.sroa.12.0.copyload, 0
  br i1 %i.bs, label %.lr.ph197, label %.._crit_edge198_crit_edge

.._crit_edge198_crit_edge:                        ; preds = %bb.c
  %i.bt = extractelement <3 x float> %i.bq, i64 1
  %.pre = fneg float %i.bt
  br label %._crit_edge198

.lr.ph197:                                        ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bz = extractelement <3 x float> %i.bq, i64 1
  %i.ca = fneg float %i.bz                        ; 2 uses
  %.sroa.25.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.26.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = sext i32 %.sroa.10.0.copyload to i64
  %i.cc = zext nneg i32 %.sroa.12.0.copyload to i64
  %i.cd = shufflevector <3 x float> %i.bq, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %i.ce = shufflevector <3 x float> %i.bq, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2> ; 2 uses
  %i.cf = insertelement <4 x float> %i.ce, float %.sroa.019.0.copyload, i64 2
  %i.cg = insertelement <4 x float> %i.ce, float %.sroa.019.0.copyload, i64 1
  br label %bb.d

._crit_edge198:                                   ; preds = %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit, %.._crit_edge198_crit_edge
  %.pre-phi = phi float [ %.pre, %.._crit_edge198_crit_edge ], [ %i.ca, %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit ]
  %.086.lcssa = phi i32 [ %5, %.._crit_edge198_crit_edge ], [ %.0.i, %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit ] ; 2 uses
  %.084.lcssa = phi ptr [ %4, %.._crit_edge198_crit_edge ], [ %.085194, %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !99 ; 4 uses
  %i.cj = load float, ptr %3, align 16, !tbaa !99 ; 2 uses
  %i.ck = load <3 x float>, ptr %3, align 16, !tbaa !99 ; 4 uses
  %i.cl = shufflevector <3 x float> %i.ck, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.cm = extractelement <3 x float> %i.ck, i64 2
  %i.cn = shufflevector <3 x float> %i.bq, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float %.pre-phi, i64 3
  %i.cp = fmul <4 x float> %i.cl, %i.co
  %i.cq = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.cr = extractelement <3 x float> %i.ck, i64 1
  %i.cs = shufflevector <3 x float> %i.ck, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 2, i32 2>
  %i.ct = insertelement <4 x float> %i.cs, float %i.cj, i64 0
  %i.cu = fneg <4 x float> %i.ct                  ; 5 uses
  %i.cv = shufflevector <4 x float> %i.cq, <4 x float> %i.cu, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.br, <4 x float> %i.cp)
  %i.cx = shufflevector <3 x float> %i.bq, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 1, i32 2>
  %i.cy = insertelement <4 x float> %i.cx, float %.sroa.019.0.copyload, i64 1
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.cy, <4 x float> %i.cw) ; 4 uses
  %i.da = extractelement <4 x float> %i.cz, i64 2 ; 3 uses
  %i.db = fmul float %i.ci, %i.da
  %i.dc = extractelement <4 x float> %i.cz, i64 3 ; 3 uses
  %i.dd = extractelement <4 x float> %i.cu, i64 0 ; 2 uses
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dd, float %i.db)
  %i.df = extractelement <4 x float> %i.cz, i64 0 ; 3 uses
  %i.dg = extractelement <4 x float> %i.cu, i64 2 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.df, float %i.dg, float %i.de)
  %i.di = extractelement <4 x float> %i.cz, i64 1 ; 3 uses
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %i.cr, float %i.dh) ; 2 uses
  %i.dk = fmul float %i.ci, %i.df
  %i.dl = extractelement <4 x float> %i.cu, i64 1 ; 2 uses
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dl, float %i.dk)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.di, float %i.dd, float %i.dm)
  %i.do = tail call float @llvm.fmuladd.f32(float %i.da, float %i.cm, float %i.dn) ; 2 uses
  %i.dp = fmul float %i.ci, %i.di
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dg, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dl, float %i.dq)
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.df, float %i.cj, float %i.dr) ; 2 uses
  %i.dt = load float, ptr %2, align 16, !tbaa !80
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !80
  %i.dw = fmul float %i.dv, %i.do
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dt, float %i.dw)
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !80
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.dz, float %i.dx)
  %i.eb = fsub float %.sroa.9.0.copyload, %i.ea
  %i.ec = icmp sgt i32 %.086.lcssa, 0
  br i1 %i.ec, label %.lr.ph204.preheader, label %.loopexit

.lr.ph204.preheader:                              ; preds = %._crit_edge198
  %wide.trip.count215 = zext nneg i32 %.086.lcssa to i64
  br label %.lr.ph204

bb.d:                                             ; preds = %.lr.ph197, %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit
  %indvars.iv207 = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next208, %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit ] ; 2 uses
  %.084195 = phi ptr [ %4, %.lr.ph197 ], [ %.085194, %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit ] ; 3 uses
  %.085194 = phi ptr [ %6, %.lr.ph197 ], [ %.084195, %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit ] ; 5 uses
  %.086193 = phi i32 [ %5, %.lr.ph197 ], [ %.0.i, %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit ] ; 2 uses
  %i.ed = load i32, ptr %i.bu, align 16, !tbaa !116 ; 2 uses
  %i.ee = load ptr, ptr %i.bv, align 8, !tbaa !60 ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.ee, i64 %indvars.iv207
  %i.eg = getelementptr [4 x i8], ptr %i.ef, i64 %i.cb
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !41
  %i.ei = add nsw i32 %i.eh, %i.ed
  %i.ej = load ptr, ptr %i.bw, align 8, !tbaa !53 ; 2 uses
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 3 uses
  %.not = icmp eq i64 %indvars.iv.next208, %i.cc  ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv.next208 to i32
  %iv.rem = select i1 %.not, i32 0, i32 %i.em
  %i.en = add nsw i32 %iv.rem, %.sroa.10.0.copyload
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !41
  %i.er = add nsw i32 %i.eq, %i.ed
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.es
  %i.eu = load float, ptr %i.bx, align 4, !tbaa !99 ; 8 uses
  %i.ev = load <3 x float>, ptr %i.el, align 16   ; 3 uses
  %i.ew = shufflevector <3 x float> %i.ev, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %.sroa.0178.0.copyload = load float, ptr %i.el, align 16 ; 3 uses
  %i.ex = load <3 x float>, ptr %i.et, align 16
  %i.ey = shufflevector <3 x float> %i.ex, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.ez = fsub <4 x float> %i.ew, %i.ey           ; 4 uses
  %i.fa = load <3 x float>, ptr %3, align 16, !tbaa !99 ; 6 uses
  %i.fb = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 4 uses
  %i.fc = extractelement <3 x float> %i.fa, i64 2 ; 4 uses
  %i.fd = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.fe = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 2, i32 2>
  %i.ff = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.fg = shufflevector <3 x float> %i.bq, <3 x float> %i.fa, <4 x i32> <i32 2, i32 5, i32 3, i32 poison>
  %.sroa.23.48.copyload.i = load float, ptr %2, align 16
  %.sroa.25.48.copyload.i = load float, ptr %.sroa.25.48..sroa_idx.i, align 4
  %.sroa.26.48.copyload.i = load float, ptr %.sroa.26.48..sroa_idx.i, align 8
  %i.fh = load float, ptr %i.by, align 4, !tbaa !99 ; 9 uses
  %i.fi = extractelement <3 x float> %i.fa, i64 0 ; 4 uses
  %i.fj = insertelement <4 x float> %i.fe, float %i.fh, i64 1
  %i.fk = fneg <4 x float> %i.fj                  ; 7 uses
  %i.fl = shufflevector <4 x float> %i.fd, <4 x float> %i.fk, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.fm = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.eu, i64 0
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fo = shufflevector <4 x float> %i.fk, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 2 uses
  %i.fp = insertelement <4 x float> %i.fk, float -0.000000e+00, i64 3
  %i.fq = shufflevector <4 x float> %i.fb, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 poison, i32 7>
  %i.fr = insertelement <4 x float> %i.fq, float %i.fh, i64 2 ; 2 uses
  %i.fs = insertelement <4 x float> %i.fg, float %i.fh, i64 3
  %i.ft = insertelement <4 x float> %i.cg, float %i.fh, i64 0 ; 2 uses
  %i.fu = insertelement <4 x float> %i.ft, float %i.ca, i64 3
  %i.fv = fmul <4 x float> %i.fs, %i.fu
  %i.fw = shufflevector <4 x float> %i.ft, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.fx = insertelement <2 x float> %i.fw, float %i.eu, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fz = shufflevector <4 x float> %i.cd, <4 x float> %i.fk, <4 x i32> <i32 poison, i32 1, i32 2, i32 4>
  %i.ga = insertelement <4 x float> %i.fz, float %.sroa.019.0.copyload, i64 0
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.ga, <4 x float> %i.fv)
  %i.gc = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.cf, <4 x float> %i.gb) ; 4 uses
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.fb, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.gf = fmul <4 x float> %i.ge, %i.fn
  %i.gg = shufflevector <4 x float> %i.gd, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.gh = shufflevector <4 x float> %i.fk, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.gh, <4 x float> %i.gf)
  %i.gj = insertelement <4 x float> %i.gd, float 0.000000e+00, i64 3
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.fo, <4 x float> %i.gi)
  %i.gl = shufflevector <4 x float> %i.gd, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.gm = insertelement <4 x float> %i.fb, float -0.000000e+00, i64 3
  %i.gn = insertelement <4 x float> %i.gm, float %i.fh, i64 1
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.gn, <4 x float> %i.gk) ; 2 uses
  %i.gp = shufflevector <4 x float> %i.ez, <4 x float> %i.go, <4 x i32> <i32 0, i32 6, i32 4, i32 5>
  %i.gq = fneg <4 x float> %i.gp                  ; 2 uses
  %i.gr = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.gs = shufflevector <4 x float> %i.ez, <4 x float> %i.gq, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.gt = fmul <4 x float> %i.gr, %i.gs
  %i.gu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.ez, <4 x float> %i.gt)
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.ff, <4 x float> %i.gu) ; 4 uses
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gx = fmul <4 x float> %i.gw, %i.fn
  %i.gy = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %i.fo, <4 x float> %i.gx)
  %i.ha = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.hb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.fp, <4 x float> %i.gz)
  %i.hc = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %i.fr, <4 x float> %i.hb) ; 2 uses
  %15 = shufflevector <4 x float> %i.hd, <4 x float> %i.fr, <4 x i32> <i32 1, i32 2, i32 0, i32 6>
  %i.he = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.hf = insertelement <4 x float> %i.he, float %i.fh, i64 3
  %i.hg = fmul <4 x float> %15, %i.hf
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.go, <4 x float> %i.hg) ; 4 uses
  %i.hi = extractelement <4 x float> %i.hh, i64 0
  %i.hj = fneg float %i.hi                        ; 3 uses
  %i.hk = extractelement <4 x float> %i.hh, i64 1
  %i.hl = fneg float %i.hk                        ; 3 uses
  %i.hm = extractelement <4 x float> %i.hh, i64 2
  %i.hn = fneg float %i.hm                        ; 3 uses
  %i.ho = extractelement <4 x float> %i.hh, i64 3
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.ho)
  %i.hq = tail call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.hp)
  %i.hr = fdiv float 2.000000e+00, %i.hq          ; 3 uses
  %i.hs = fmul float %i.fi, %i.hr                 ; 2 uses
  %i.ht = fmul float %i.fh, %i.hr                 ; 3 uses
  %i.hu = fmul float %i.fc, %i.hr                 ; 4 uses
  %i.hv = fmul float %i.eu, %i.hs                 ; 2 uses
  %i.hw = fmul float %i.eu, %i.ht                 ; 2 uses
  %i.hx = fmul float %i.eu, %i.hu                 ; 2 uses
  %i.hy = fmul float %i.fi, %i.hs                 ; 2 uses
  %i.hz = fmul float %i.fi, %i.ht                 ; 2 uses
  %i.ia = fmul float %i.fi, %i.hu                 ; 2 uses
  %i.ib = fmul float %i.fh, %i.ht                 ; 2 uses
  %i.ic = fmul float %i.fh, %i.hu                 ; 2 uses
  %i.id = fmul float %i.fc, %i.hu                 ; 2 uses
  %i.ie = fadd float %i.ib, %i.id
  %i.if = fsub float 1.000000e+00, %i.ie
  %i.ig = fsub float %i.hz, %i.hx
  %i.ih = fadd float %i.ia, %i.hw
  %i.ii = fadd float %i.hz, %i.hx
  %i.ij = fadd float %i.hy, %i.id
  %i.ik = fsub float 1.000000e+00, %i.ij
  %i.il = fsub float %i.ic, %i.hv
  %i.im = fsub float %i.ia, %i.hw
  %i.in = fadd float %i.ic, %i.hv
  %i.io = fadd float %i.hy, %i.ib
  %i.ip = fsub float 1.000000e+00, %i.io
  %i.iq = extractelement <3 x float> %i.ev, i64 1 ; 3 uses
  %i.ir = fmul float %i.iq, %i.ig
  %i.is = tail call float @llvm.fmuladd.f32(float %.sroa.0178.0.copyload, float %i.if, float %i.ir)
  %i.it = extractelement <3 x float> %i.ev, i64 2 ; 3 uses
  %i.iu = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.ih, float %i.is)
  %i.iv = fmul float %i.iq, %i.ik
  %i.iw = tail call float @llvm.fmuladd.f32(float %.sroa.0178.0.copyload, float %i.ii, float %i.iv)
  %i.ix = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.il, float %i.iw)
  %i.iy = fmul float %i.iq, %i.in
  %i.iz = tail call float @llvm.fmuladd.f32(float %.sroa.0178.0.copyload, float %i.im, float %i.iy)
  %i.ja = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.ip, float %i.iz)
  %i.jb = fadd float %.sroa.23.48.copyload.i, %i.iu
  %i.jc = fadd float %.sroa.25.48.copyload.i, %i.ix
  %i.jd = fadd float %.sroa.26.48.copyload.i, %i.ja
  %i.je = fmul float %i.jc, %i.hl
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.hj, float %i.je)
  %i.jg = tail call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.hn, float %i.jf) ; 2 uses
  %i.jh = icmp slt i32 %.086193, 2
  br i1 %i.jh, label %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ji = zext nneg i32 %.086193 to i64           ; 2 uses
  %i.jj = getelementptr [16 x i8], ptr %.084195, i64 %i.ji ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 -16
  %i.jl = load <2 x float>, ptr %i.jk, align 16   ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr i8, ptr %i.jj, i64 -8
  %.sroa.11.0.copyload.i = load float, ptr %.sroa.11.0..sroa_idx.i, align 8 ; 2 uses
  %i.jm = extractelement <2 x float> %i.jl, i64 1
  %i.jn = fmul float %i.jm, %i.hl
  %i.jo = extractelement <2 x float> %i.jl, i64 0
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.jo, float %i.jn)
  %i.jq = tail call noundef float @llvm.fmuladd.f32(float %i.hn, float %.sroa.11.0.copyload.i, float %i.jp)
  %i.jr = fsub float %i.jq, %i.jg
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.03590.i = phi float [ %i.jr, %bb.e ], [ %i.kb, %bb.l ] ; 5 uses
  %.03689.i = phi i32 [ 0, %bb.e ], [ %.1.i, %bb.l ] ; 7 uses
  %.sroa.11.086.i = phi float [ %.sroa.11.0.copyload.i, %bb.e ], [ %i.jz, %bb.l ] ; 4 uses
  %i.js = phi <2 x float> [ %i.jl, %bb.e ], [ %i.lg, %bb.l ] ; 4 uses
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %.084195, i64 %indvars.iv.i
  %i.ju = load <4 x float>, ptr %i.jt, align 16   ; 8 uses
  %i.jv = extractelement <4 x float> %i.ju, i64 1
  %i.jw = fmul float %i.jv, %i.hl
  %i.jx = extractelement <4 x float> %i.ju, i64 0
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.jx, float %i.jw)
  %i.jz = extractelement <4 x float> %i.ju, i64 2 ; 4 uses
  %i.ka = tail call noundef float @llvm.fmuladd.f32(float %i.hn, float %i.jz, float %i.jy)
  %i.kb = fsub float %i.ka, %i.jg                 ; 4 uses
  %i.kc = fcmp olt float %.03590.i, 0.000000e+00
  %i.kd = fcmp olt float %i.kb, 0.000000e+00      ; 2 uses
  br i1 %i.kc, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.kd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ke = add nsw i32 %.03689.i, 1
  %i.kf = sext i32 %.03689.i to i64
  %i.kg = getelementptr inbounds [16 x i8], ptr %.085194, i64 %i.kf
  store <4 x float> %i.ju, ptr %i.kg, align 16
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.kh = fsub float %.03590.i, %i.kb
  %i.ki = fdiv float %.03590.i, %i.kh             ; 2 uses
  %i.kj = shufflevector <4 x float> %i.ju, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kk = fsub <2 x float> %i.kj, %i.js
  %i.kl = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.km, <2 x float> %i.js)
  %i.ko = fsub float %i.jz, %.sroa.11.086.i
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.ki, float %.sroa.11.086.i)
  %.sroa.3.12.vec.insert.i.i.i133 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kp, i64 0
  %i.kq = add nsw i32 %.03689.i, 1
  %i.kr = sext i32 %.03689.i to i64
  %i.ks = getelementptr inbounds [16 x i8], ptr %.085194, i64 %i.kr ; 2 uses
  store <2 x float> %i.kn, ptr %i.ks, align 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i133, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !80
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  br i1 %i.kd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kt = fsub float %.03590.i, %i.kb
  %i.ku = fdiv float %.03590.i, %i.kt             ; 2 uses
  %i.kv = shufflevector <4 x float> %i.ju, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kw = fsub <2 x float> %i.kv, %i.js
  %i.kx = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> %i.ky, <2 x float> %i.js)
  %i.la = fsub float %i.jz, %.sroa.11.086.i
  %i.lb = tail call float @llvm.fmuladd.f32(float %i.la, float %i.ku, float %.sroa.11.086.i)
  %.sroa.3.12.vec.insert.i.i42.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lb, i64 0
  %i.lc = sext i32 %.03689.i to i64
  %i.ld = getelementptr inbounds [16 x i8], ptr %.085194, i64 %i.lc ; 3 uses
  store <2 x float> %i.kz, ptr %i.ld, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i42.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !80
  %i.le = add nsw i32 %.03689.i, 2
  %i.lf = getelementptr i8, ptr %i.ld, i64 16
  store <4 x float> %i.ju, ptr %i.lf, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.1.i = phi i32 [ %i.ke, %bb.h ], [ %i.kq, %bb.i ], [ %i.le, %bb.k ], [ %.03689.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ji
  %i.lg = shufflevector <4 x float> %i.ju, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br i1 %exitcond.not.i, label %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit, label %bb.f, !llvm.loop !190

_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit:          ; preds = %bb.l, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ %.1.i, %bb.l ]  ; 2 uses
  br i1 %.not, label %._crit_edge198, label %bb.d, !llvm.loop !191

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.p
  %indvars.iv212 = phi i64 [ 0, %.lr.ph204.preheader ], [ %indvars.iv.next213, %bb.p ] ; 2 uses
  %.083202 = phi i32 [ 0, %.lr.ph204.preheader ], [ %.1, %bb.p ] ; 6 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %.084.lcssa, i64 %indvars.iv212 ; 2 uses
  %i.li = load <2 x float>, ptr %i.lh, align 16, !tbaa !80 ; 3 uses
  %i.lj = extractelement <2 x float> %i.li, i64 1
  %i.lk = fmul float %i.do, %i.lj
  %i.ll = extractelement <2 x float> %i.li, i64 0
  %i.lm = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ll, float %i.lk)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lo = load float, ptr %i.ln, align 8, !tbaa !80 ; 2 uses
  %i.lp = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.lo, float %i.lm)
  %i.lq = fadd float %i.eb, %i.lp                 ; 2 uses
  %.inv = fcmp ole float %i.lq, %8
  %.087 = select i1 %.inv, float %8, float %i.lq  ; 2 uses
  %i.lr = icmp slt i32 %.083202, %14
  br i1 %i.lr, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph204
  %i.ls = fcmp ugt float %.087, %9
  br i1 %i.ls, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.3.12.vec.insert6.i136 = insertelement <2 x float> poison, float %i.lo, i64 0
  %.sroa.3.12.vec.insert.i137 = insertelement <2 x float> %.sroa.3.12.vec.insert6.i136, float %.087, i64 1
  %i.lt = add nsw i32 %.083202, 1
  %i.lu = sext i32 %.083202 to i64
  %i.lv = getelementptr inbounds [16 x i8], ptr %13, i64 %i.lu ; 2 uses
  store <2 x float> %i.li, ptr %i.lv, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i137, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !80
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph204
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 164)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.9, i32 noundef %.083202, i32 noundef %14)
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.1 = phi i32 [ %i.lt, %bb.n ], [ %.083202, %bb.m ], [ %.083202, %bb.o ] ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %.loopexit, label %.lr.ph204, !llvm.loop !192

.loopexit:                                        ; preds = %bb.p, %bb.a, %._crit_edge198, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %._crit_edge198 ], [ 0, %bb.a ], [ %.1, %bb.p ]
  ret i32 %.0
end_hunk_0
