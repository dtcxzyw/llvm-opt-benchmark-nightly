Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHull?download=true
inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE:bb.a

bb.g:                                             ; preds = %bb.f
  %i.cg = sext i32 %.0165 to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %1, i64 %i.cg ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load <2 x float>, ptr %i.ch, align 4, !tbaa !12
  %i.ck = load <2 x float>, ptr %i.i, align 4, !tbaa !12
  %i.cl = fsub <2 x float> %i.cj, %i.ck           ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !12
  %i.co = load float, ptr %i.s, align 4, !tbaa !12
  %i.cp = fsub float %i.cn, %i.co                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cp, i64 0
  store <2 x float> %i.cl, ptr %i.aq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !16
  %i.cq = extractelement <2 x float> %i.cl, i64 1
  %i.cr = load float, ptr %4, align 16, !tbaa !12 ; 2 uses
  %i.cs = extractelement <2 x float> %i.cl, i64 0
  %i.ct = fneg float %i.cr
  %i.cu = fmul float %i.cq, %i.ct
  %i.cv = load <2 x float>, ptr %.sroa.4159.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.cw = fneg <2 x float> %i.cv
  %i.cx = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cy = insertelement <2 x float> %i.cx, float %i.cp, i64 0
  %i.cz = fmul <2 x float> %i.cy, %i.cw
  %i.da = insertelement <2 x float> %i.cx, float %i.cp, i64 1
  %i.db = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = insertelement <2 x float> %i.db, float %i.cr, i64 1
  %i.dd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dc, <2 x float> %i.cz) ; 4 uses
  %i.de = extractelement <2 x float> %i.cv, i64 0
  %i.df = call float @llvm.fmuladd.f32(float %i.cs, float %i.de, float %i.cu) ; 3 uses
  %foldExtExtBinop187 = fmul <2 x float> %i.dd, %i.dd
  %i.dg = extractelement <2 x float> %foldExtExtBinop187, i64 1
  %i.dh = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  %i.di = call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.dg)
  %i.dj = call noundef float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.di)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.dj)
  %i.dk = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.dd, %i.dm
  %i.do = fmul float %i.df, %i.dk
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.do, i64 0
  store <2 x float> %i.dn, ptr %i.as, align 16
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !16
  %i.dp = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dq = icmp eq i32 %i.dp, %i.a
  %i.dr = icmp eq i32 %i.dp, %i.g
  %or.cond61 = or i1 %i.dq, %i.dr
  %i.ds = icmp eq i32 %i.dp, %.0165
  %or.cond63 = or i1 %i.ds, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dt = load <2 x float>, ptr %i.as, align 16, !tbaa !12
  %i.du = fneg <2 x float> %i.dt
  %i.dv = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !12
  %i.dw = fneg float %i.dv
  %.sroa.3.12.vec.insert.i100 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  store <2 x float> %i.du, ptr %7, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i100, ptr %i.dx, align 8
  %i.dy = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.dy, %bb.h ], [ %i.dp, %bb.g ] ; 6 uses
  %i.dz = icmp eq i32 %.0, %i.a
  %i.ea = icmp eq i32 %.0, %i.g
  %or.cond64 = or i1 %i.dz, %i.ea
  %i.eb = icmp eq i32 %.0, %.0165
  %or.cond66 = or i1 %i.eb, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ec = sext i32 %.0 to i64
  %i.ed = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ec ; 3 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !12
  %i.ef = load float, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.eg = fsub float %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = load float, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %i.ek = fsub float %i.ei, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !12
  %i.en = load float, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.eo = fsub float %i.em, %i.en
  %i.ep = load float, ptr %i.k, align 4, !tbaa !12
  %i.eq = fsub float %i.ep, %i.ef                 ; 2 uses
  %i.er = load float, ptr %i.p, align 4, !tbaa !12
  %i.es = fsub float %i.er, %i.ej                 ; 2 uses
  %i.et = load float, ptr %i.u, align 4, !tbaa !12
  %i.eu = fsub float %i.et, %i.en                 ; 2 uses
  %i.ev = load float, ptr %i.ch, align 4, !tbaa !12
  %i.ew = fsub float %i.ev, %i.ef                 ; 2 uses
  %i.ex = load float, ptr %i.ci, align 4, !tbaa !12
  %i.ey = fsub float %i.ex, %i.ej                 ; 2 uses
  %i.ez = load float, ptr %i.cm, align 4, !tbaa !12
  %i.fa = fsub float %i.ez, %i.en                 ; 2 uses
  %i.fb = fneg float %i.ey
  %i.fc = fmul float %i.eu, %i.fb
  %i.fd = call float @llvm.fmuladd.f32(float %i.es, float %i.fa, float %i.fc)
  %i.fe = fneg float %i.fa
  %i.ff = fmul float %i.eq, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.eu, float %i.ew, float %i.ff)
  %i.fh = fneg float %i.ew
  %i.fi = fmul float %i.es, %i.fh
  %i.fj = call float @llvm.fmuladd.f32(float %i.eq, float %i.ey, float %i.fi)
  %i.fk = fmul float %i.ek, %i.fg
  %i.fl = call float @llvm.fmuladd.f32(float %i.eg, float %i.fd, float %i.fk)
  %i.fm = call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.fj, float %i.fl)
  %i.fn = fcmp olt float %i.fm, 0.000000e+00      ; 2 uses
  %spec.select = select i1 %i.fn, i32 %.0, i32 %.0165
  %spec.select173 = select i1 %i.fn, i32 %.0165, i32 %.0
  %i.fo = zext i32 %i.g to i64
  %i.fp = shl nuw i64 %i.fo, 32
  %i.fq = zext i32 %i.a to i64
  %i.fr = or disjoint i64 %i.fp, %i.fq
  %i.fs = zext i32 %spec.select173 to i64
  %i.ft = shl nuw i64 %i.fs, 32
  %i.fu = zext i32 %spec.select to i64
  %i.fv = or disjoint i64 %i.ft, %i.fu
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.b, %bb.f, %bb.i, %bb.a
  %.sroa.5163.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.fr, %bb.j ]
  %.sroa.14.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.fv, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.5163.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.14.2, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 0                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.d = load <3 x float>, ptr %2, align 4        ; 6 uses
  %i.e = shufflevector <3 x float> %i.d, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.f = load float, ptr %2, align 4              ; 4 uses
  %i.g = extractelement <3 x float> %i.d, i64 2   ; 2 uses
  %i.h = fmul float %i.g, 0.000000e+00
  %i.i = extractelement <3 x float> %i.d, i64 1   ; 2 uses
  %i.j = fsub float %i.i, %i.h                    ; 2 uses
  %i.k = fneg <3 x float> %i.d                    ; 3 uses
  %i.l = extractelement <3 x float> %i.k, i64 0
  %i.m = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.l) ; 2 uses
  %i.n = fmul float %i.i, -0.000000e+00           ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.f, float 0.000000e+00, float %i.n) ; 2 uses
  %i.p = fmul float %i.f, -0.000000e+00
  %i.q = shufflevector <3 x float> %i.d, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.r = shufflevector <3 x float> %i.k, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.p, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> zeroinitializer, <2 x float> %i.s) ; 3 uses
  %i.u = fadd float %i.n, %i.f                    ; 2 uses
  %i.v = insertelement <2 x float> %i.t, float %i.m, i64 0 ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.v
  %i.x = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.y = insertelement <2 x float> %i.x, float %i.j, i64 0 ; 2 uses
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.y, <2 x float> %i.w)
  %i.aa = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.u, i64 1 ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ab, <2 x float> %i.z)
  %i.ad = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ac) ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.af = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt float %i.ae, %i.af             ; 2 uses
  %sqrt.i.sqrt.i8.i = select i1 %i.ag, float %i.ae, float %i.af
  %i.ah = insertelement <3 x i1> poison, i1 %i.ag, i64 0
  %i.ai = shufflevector <3 x i1> %i.ah, <3 x i1> poison, <3 x i32> zeroinitializer
  %i.aj = insertelement <3 x float> poison, float %i.o, i64 0
  %i.ak = insertelement <3 x float> %i.aj, float %i.j, i64 1
  %i.al = insertelement <3 x float> %i.ak, float %i.m, i64 2
  %i.am = insertelement <3 x float> poison, float %i.u, i64 0
  %i.an = shufflevector <2 x float> %i.t, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ao = shufflevector <3 x float> %i.am, <3 x float> %i.an, <3 x i32> <i32 0, i32 3, i32 4>
  %i.ap = select <3 x i1> %i.ai, <3 x float> %i.al, <3 x float> %i.ao
  %i.aq = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8.i
  %i.ar = insertelement <3 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <3 x i32> zeroinitializer
  %i.at = fmul <3 x float> %i.ap, %i.as           ; 4 uses
  %i.au = shufflevector <3 x float> %i.at, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.av = shufflevector <3 x float> %i.k, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.aw = fmul <3 x float> %i.au, %i.av
  %i.ax = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.at, <3 x float> %i.d, <3 x float> %i.aw) ; 2 uses
  %i.ay = insertelement <3 x float> %i.e, float %i.f, i64 1
  %i.az = shufflevector <3 x float> %i.ax, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ba = shufflevector <3 x float> %i.ax, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread206
  br i1 %i.a, label %.lr.ph.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.bb = load <4 x float>, ptr %2, align 4       ; 3 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bd = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !41
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = icmp eq i32 %.01314.i, -1
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12
  %i.bl = sext i32 %.01314.i to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12
  %i.bp = load <2 x float>, ptr %i.bi, align 4, !tbaa !12 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bm, align 4, !tbaa !12 ; 2 uses
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.bs = fmul <2 x float> %i.be, %i.br
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bd, <2 x float> %i.bs)
  %i.bv = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bo, i64 1
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bc, <2 x float> %i.bu) ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = extractelement <2 x float> %i.bx, i64 1
  %i.ca = fcmp ogt float %i.by, %i.bz
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.cb, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
  %.013.lcssa.i = phi i32 [ -1, %bb.b ], [ %.1.i, %bb.g ] ; 7 uses
  %i.cc = sext i32 %.013.lcssa.i to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cc ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !41
  %i.cf = icmp eq i32 %i.ce, 3
  br i1 %i.cf, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit
  %or.cond79216 = icmp eq i32 %.013.lcssa.i, -1
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %.thread194
  %.063230.int = phi i32 [ 0, %.preheader ], [ %.int, %.thread194 ] ; 5 uses
  %.064229 = phi i32 [ -1, %.preheader ], [ %.013.lcssa.i101, %.thread194 ] ; 4 uses
  %indvar.conv = uitofp nneg i32 %.063230.int to float ; 5 uses
  %i.cg = fmul nnan float %indvar.conv, f0x3C8EFA35 ; 2 uses
  %i.ch = tail call noundef float @sinf(float noundef %i.cg) #19
  %i.ci = tail call noundef float @cosf(float noundef %i.cg) #19
  %i.cj = insertelement <3 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <3 x float> %i.cj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cl = fmul <3 x float> %i.at, %i.ck
  %i.cm = insertelement <3 x float> poison, float %i.ci, i64 0
  %i.cn = shufflevector <3 x float> %i.cm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.co = fmul <3 x float> %i.az, %i.cn
  %i.cp = fadd <3 x float> %i.cl, %i.co
  %i.cq = fmul <3 x float> %i.cp, splat (float 2.500000e-02)
  %i.cr = fadd <3 x float> %i.ay, %i.cq           ; 3 uses
  br i1 %i.a, label %.lr.ph.i102.preheader, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110

.lr.ph.i102.preheader:                            ; preds = %bb.h
  %i.cs = shufflevector <3 x float> %i.cr, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ct = shufflevector <3 x float> %i.cr, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cu = shufflevector <3 x float> %i.cr, <3 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.lr.ph.i102.preheader, %bb.l
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i108, %bb.l ], [ 0, %.lr.ph.i102.preheader ] ; 4 uses
  %.01314.i105 = phi i32 [ %.1.i107, %bb.l ], [ -1, %.lr.ph.i102.preheader ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i104
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !41
  %.not.i106 = icmp eq i32 %i.cw, 0
  br i1 %.not.i106, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i102
  %i.cx = icmp eq i32 %.01314.i105, -1
  br i1 %i.cx, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i104 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12
  %i.db = sext i32 %.01314.i105 to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %0, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !12
  %i.df = load <2 x float>, ptr %i.cy, align 4, !tbaa !12 ; 2 uses
  %i.dg = load <2 x float>, ptr %i.dc, align 4, !tbaa !12 ; 2 uses
  %i.dh = shufflevector <2 x float> %i.df, <2 x float> %i.dg, <2 x i32> <i32 1, i32 3>
  %i.di = fmul <2 x float> %i.cs, %i.dh
  %i.dj = shufflevector <2 x float> %i.df, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.ct, <2 x float> %i.di)
  %i.dl = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.de, i64 1
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.cu, <2 x float> %i.dk) ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = extractelement <2 x float> %i.dn, i64 1
  %i.dq = fcmp ogt float %i.do, %i.dp
  br i1 %i.dq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dr = trunc nuw nsw i64 %indvars.iv.i104 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i102
  %.1.i107 = phi i32 [ %i.dr, %bb.k ], [ %.01314.i105, %bb.j ], [ %.01314.i105, %.lr.ph.i102 ] ; 2 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i
  br i1 %exitcond.not.i109, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110, label %.lr.ph.i102, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110: ; preds = %bb.l, %bb.h
  %.013.lcssa.i101 = phi i32 [ -1, %bb.h ], [ %.1.i107, %bb.l ] ; 3 uses
  %i.ds = icmp eq i32 %.064229, %.013.lcssa.i
  %i.dt = icmp eq i32 %.013.lcssa.i101, %.013.lcssa.i
  %or.cond = and i1 %i.ds, %i.dt
  br i1 %or.cond, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110
  %.not = icmp eq i32 %.064229, -1
  %.not77 = icmp eq i32 %.064229, %.013.lcssa.i101
  %or.cond78 = or i1 %.not, %.not77
  br i1 %or.cond78, label %.thread194, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.du = add nsw i32 %.063230.int, -40
  %i.dv = sitofp i32 %i.du to float               ; 3 uses
  %i.dw = fcmp ugt float %i.dv, %indvar.conv
  br i1 %i.dw, label %.thread194, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %i.a, label %.lr.ph.i137.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.dx = fmul nnan float %i.dv, f0x3C8EFA35      ; 2 uses
  %i.dy = tail call noundef float @sinf(float noundef %i.dx) #19 ; 0 uses
  %i.dz = tail call noundef float @cosf(float noundef %i.dx) #19 ; 0 uses
  %i.ea = add nsw i32 %.063230.int, -35
  %i.eb = sitofp i32 %i.ea to float               ; 2 uses
  %i.ec = fcmp ugt float %i.eb, %indvar.conv
  br i1 %i.ec, label %.thread194, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.thread

.lr.ph.i137.us:                                   ; preds = %.lr.ph, %bb.u
  %.0227.us = phi float [ %i.fr, %bb.u ], [ %i.dv, %.lr.ph ] ; 2 uses
  %.062226.us = phi i32 [ %.1.i142.us, %bb.u ], [ %.064229, %.lr.ph ]
  %i.ed = fmul float %.0227.us, f0x3C8EFA35       ; 2 uses
  %i.ee = tail call noundef float @sinf(float noundef %i.ed) #19
  %i.ef = tail call noundef float @cosf(float noundef %i.ed) #19
  %i.eg = insertelement <3 x float> poison, float %i.ee, i64 0
  %i.eh = shufflevector <3 x float> %i.eg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ei = fmul <3 x float> %i.at, %i.eh
  %i.ej = insertelement <3 x float> poison, float %i.ef, i64 0
  %i.ek = shufflevector <3 x float> %i.ej, <3 x float> poison, <3 x i32> zeroinitializer
  %i.el = fmul <3 x float> %i.ba, %i.ek
  %i.em = fadd <3 x float> %i.ei, %i.el
  %i.en = fmul <3 x float> %i.em, splat (float 2.500000e-02)
  %i.eo = fadd <3 x float> %i.e, %i.en            ; 3 uses
  %i.ep = shufflevector <3 x float> %i.eo, <3 x float> poison, <2 x i32> zeroinitializer
  %i.eq = shufflevector <3 x float> %i.eo, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.er = shufflevector <3 x float> %i.eo, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i137.us
  %indvars.iv.i139.us = phi i64 [ 0, %.lr.ph.i137.us ], [ %indvars.iv.next.i143.us, %bb.t ] ; 4 uses
  %.01314.i140.us = phi i32 [ -1, %.lr.ph.i137.us ], [ %.1.i142.us, %bb.t ] ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i139.us
  %i.et = load i32, ptr %i.es, align 4, !tbaa !41
  %.not.i141.us = icmp eq i32 %i.et, 0
  br i1 %.not.i141.us, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = icmp eq i32 %.01314.i140.us, -1
  br i1 %i.eu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i139.us ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !12
  %i.ey = sext i32 %.01314.i140.us to i64
  %i.ez = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !12
  %i.fc = load <2 x float>, ptr %i.ev, align 4, !tbaa !12 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.ez, align 4, !tbaa !12 ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fc, <2 x float> %i.fd, <2 x i32> <i32 1, i32 3>
end_hunk_0
