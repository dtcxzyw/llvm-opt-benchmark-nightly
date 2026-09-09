Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHull?download=true
inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE:bb.a
  %i.ba = call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.az)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ba) ; 2 uses
  %i.bb = fmul float %i.au, %i.au
  %i.bc = call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.bc)
  %sqrt.i77 = call noundef float @llvm.sqrt.f32(float %i.bd)
  %i.be = fcmp ogt float %sqrt.i, %sqrt.i77
  br i1 %i.be, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !34
  %i.bf = load <2 x float>, ptr %i.ar, align 16, !tbaa !12 ; 4 uses
  %foldExtExtBinop187 = fmul <2 x float> %i.bf, %i.bf
  %i.bg = extractelement <2 x float> %foldExtExtBinop187, i64 1
  %i.bh = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bi = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bg)
  %i.bj = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !12 ; 3 uses
  %i.bk = call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bi)
  %sqrt.i.i78 = call noundef float @llvm.sqrt.f32(float %i.bk)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread, %bb.c
  %sqrt.i.i78.sink = phi float [ %sqrt.i.i78, %bb.c ], [ %sqrt.i, %_ZNK9btVector3eqERKS_.exit.thread ]
  %.sink181 = phi float [ %i.bj, %bb.c ], [ %i.aq, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bl = phi <2 x float> [ %i.bf, %bb.c ], [ %i.an, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bm = fdiv float 1.000000e+00, %sqrt.i.i78.sink ; 2 uses
  %i.bn = fmul float %.sink181, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bl, %i.bp
  store <2 x float> %i.bq, ptr %i.ar, align 16, !tbaa !12
  store float %i.bn, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !12
  %i.br = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 3 uses
  %i.bs = icmp eq i32 %i.br, %i.a
  %i.bt = icmp eq i32 %i.br, %i.g
  %or.cond = or i1 %i.bs, %i.bt
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bu = load <2 x float>, ptr %i.ar, align 16, !tbaa !12
  %i.bv = fneg <2 x float> %i.bu
  %i.bw = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !12
  %i.bx = fneg float %i.bw
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  store <2 x float> %i.bv, ptr %6, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.by, align 8
  %i.bz = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0165 = phi i32 [ %i.bz, %bb.e ], [ %i.br, %bb.d ] ; 7 uses
  %i.ca = icmp eq i32 %.0165, %i.a
  %i.cb = icmp eq i32 %.0165, %i.g
  %or.cond60 = or i1 %i.ca, %i.cb
  br i1 %or.cond60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = sext i32 %.0165 to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %1, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load <2 x float>, ptr %i.cd, align 4, !tbaa !12
  %i.cg = load <2 x float>, ptr %i.i, align 4, !tbaa !12
  %i.ch = fsub <2 x float> %i.cf, %i.cg           ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !12
  %i.ck = load float, ptr %i.s, align 4, !tbaa !12
  %i.cl = fsub float %i.cj, %i.ck                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  store <2 x float> %i.ch, ptr %i.ar, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !16
  %i.cm = extractelement <2 x float> %i.ch, i64 1
  %i.cn = load float, ptr %4, align 16, !tbaa !12 ; 2 uses
  %i.co = extractelement <2 x float> %i.ch, i64 0
  %i.cp = fneg float %i.cn
  %i.cq = fmul float %i.cm, %i.cp
  %i.cr = load <2 x float>, ptr %.sroa.4159.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.cs = fneg <2 x float> %i.cr
  %i.ct = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = insertelement <2 x float> %i.ct, float %i.cl, i64 0
  %i.cv = fmul <2 x float> %i.cu, %i.cs
  %i.cw = insertelement <2 x float> %i.ct, float %i.cl, i64 1
  %i.cx = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x float> %i.cx, float %i.cn, i64 1
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.cv) ; 4 uses
  %i.da = extractelement <2 x float> %i.cr, i64 0
  %i.db = call float @llvm.fmuladd.f32(float %i.co, float %i.da, float %i.cq) ; 3 uses
  %foldExtExtBinop189 = fmul <2 x float> %i.cz, %i.cz
  %i.dc = extractelement <2 x float> %foldExtExtBinop189, i64 1
  %i.dd = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.dc)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.de)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.cz, %i.di
  %i.dk = fmul float %i.db, %i.dg
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dk, i64 0
  store <2 x float> %i.dj, ptr %i.aw, align 16
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !16
  %i.dl = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dm = icmp eq i32 %i.dl, %i.a
  %i.dn = icmp eq i32 %i.dl, %i.g
  %or.cond61 = or i1 %i.dm, %i.dn
  %i.do = icmp eq i32 %i.dl, %.0165
  %or.cond63 = or i1 %i.do, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dp = load <2 x float>, ptr %i.aw, align 16, !tbaa !12
  %i.dq = fneg <2 x float> %i.dp
  %i.dr = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !12
  %i.ds = fneg float %i.dr
  %.sroa.3.12.vec.insert.i100 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  store <2 x float> %i.dq, ptr %7, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i100, ptr %i.dt, align 8
  %i.du = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.du, %bb.h ], [ %i.dl, %bb.g ] ; 6 uses
  %i.dv = icmp eq i32 %.0, %i.a
  %i.dw = icmp eq i32 %.0, %i.g
  %or.cond64 = or i1 %i.dv, %i.dw
  %i.dx = icmp eq i32 %.0, %.0165
  %or.cond66 = or i1 %i.dx, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dy = sext i32 %.0 to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dy ; 3 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = load float, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.ec = fsub float %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !12
  %i.ef = load float, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %i.eg = fsub float %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = load float, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.ek = fsub float %i.ei, %i.ej
  %i.el = load float, ptr %i.k, align 4, !tbaa !12
  %i.em = fsub float %i.el, %i.eb                 ; 2 uses
  %i.en = load float, ptr %i.p, align 4, !tbaa !12
  %i.eo = fsub float %i.en, %i.ef                 ; 2 uses
  %i.ep = load float, ptr %i.u, align 4, !tbaa !12
  %i.eq = fsub float %i.ep, %i.ej                 ; 2 uses
  %i.er = load float, ptr %i.cd, align 4, !tbaa !12
  %i.es = fsub float %i.er, %i.eb                 ; 2 uses
  %i.et = load float, ptr %i.ce, align 4, !tbaa !12
  %i.eu = fsub float %i.et, %i.ef                 ; 2 uses
  %i.ev = load float, ptr %i.ci, align 4, !tbaa !12
  %i.ew = fsub float %i.ev, %i.ej                 ; 2 uses
  %i.ex = fneg float %i.eu
  %i.ey = fmul float %i.eq, %i.ex
  %i.ez = call float @llvm.fmuladd.f32(float %i.eo, float %i.ew, float %i.ey)
  %i.fa = fneg float %i.ew
  %i.fb = fmul float %i.em, %i.fa
  %i.fc = call float @llvm.fmuladd.f32(float %i.eq, float %i.es, float %i.fb)
  %i.fd = fneg float %i.es
  %i.fe = fmul float %i.eo, %i.fd
  %i.ff = call float @llvm.fmuladd.f32(float %i.em, float %i.eu, float %i.fe)
  %i.fg = fmul float %i.eg, %i.fc
  %i.fh = call float @llvm.fmuladd.f32(float %i.ec, float %i.ez, float %i.fg)
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ff, float %i.fh)
  %i.fj = fcmp olt float %i.fi, 0.000000e+00      ; 2 uses
  %spec.select = select i1 %i.fj, i32 %.0, i32 %.0165
  %spec.select173 = select i1 %i.fj, i32 %.0165, i32 %.0
  %i.fk = zext i32 %i.g to i64
  %i.fl = shl nuw i64 %i.fk, 32
  %i.fm = zext i32 %i.a to i64
  %i.fn = or disjoint i64 %i.fl, %i.fm
  %i.fo = zext i32 %spec.select173 to i64
  %i.fp = shl nuw i64 %i.fo, 32
  %i.fq = zext i32 %spec.select to i64
  %i.fr = or disjoint i64 %i.fp, %i.fq
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.b, %bb.f, %bb.i, %bb.a
  %.sroa.5163.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.fn, %bb.j ]
  %.sroa.14.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.fr, %bb.j ]
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
  %4 = load <3 x float>, ptr %2, align 4          ; 3 uses
  %5 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bb = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> zeroinitializer
  %6 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !41
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = icmp eq i32 %.01314.i, -1
  br i1 %i.be, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = sext i32 %.01314.i to i64
  %i.bj = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = load <2 x float>, ptr %i.bf, align 4, !tbaa !12 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.bp = fmul <2 x float> %6, %i.bo
  %i.bq = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bb, <2 x float> %i.bp)
  %i.bs = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bl, i64 1
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %5, <2 x float> %i.br) ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  %i.bw = extractelement <2 x float> %i.bu, i64 1
  %i.bx = fcmp ogt float %i.bv, %i.bw
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.by = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.by, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
  %.013.lcssa.i = phi i32 [ -1, %bb.b ], [ %.1.i, %bb.g ] ; 7 uses
  %i.bz = sext i32 %.013.lcssa.i to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bz ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  %i.cc = icmp eq i32 %i.cb, 3
  br i1 %i.cc, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit
  %or.cond79216 = icmp eq i32 %.013.lcssa.i, -1
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %.thread194
  %.063230.int = phi i32 [ 0, %.preheader ], [ %.int, %.thread194 ] ; 5 uses
  %.064229 = phi i32 [ -1, %.preheader ], [ %.013.lcssa.i101, %.thread194 ] ; 4 uses
  %indvar.conv = uitofp nneg i32 %.063230.int to float ; 5 uses
  %i.cd = fmul nnan float %indvar.conv, f0x3C8EFA35 ; 2 uses
  %i.ce = tail call noundef float @sinf(float noundef %i.cd) #19
  %i.cf = tail call noundef float @cosf(float noundef %i.cd) #19
  %i.cg = insertelement <3 x float> poison, float %i.ce, i64 0
  %i.ch = shufflevector <3 x float> %i.cg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ci = fmul <3 x float> %i.at, %i.ch
  %i.cj = insertelement <3 x float> poison, float %i.cf, i64 0
  %i.ck = shufflevector <3 x float> %i.cj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cl = fmul <3 x float> %i.az, %i.ck
  %i.cm = fadd <3 x float> %i.ci, %i.cl
  %i.cn = fmul <3 x float> %i.cm, splat (float 2.500000e-02)
  %i.co = fadd <3 x float> %i.ay, %i.cn           ; 3 uses
  br i1 %i.a, label %.lr.ph.i102.preheader, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110

.lr.ph.i102.preheader:                            ; preds = %bb.h
  %i.cp = shufflevector <3 x float> %i.co, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cq = shufflevector <3 x float> %i.co, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = shufflevector <3 x float> %i.co, <3 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.lr.ph.i102.preheader, %bb.l
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i108, %bb.l ], [ 0, %.lr.ph.i102.preheader ] ; 4 uses
  %.01314.i105 = phi i32 [ %.1.i107, %bb.l ], [ -1, %.lr.ph.i102.preheader ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i104
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !41
  %.not.i106 = icmp eq i32 %i.ct, 0
  br i1 %.not.i106, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i102
  %i.cu = icmp eq i32 %.01314.i105, -1
  br i1 %i.cu, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i104 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !12
  %i.cy = sext i32 %.01314.i105 to i64
  %i.cz = getelementptr inbounds [16 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !12
  %i.dc = load <2 x float>, ptr %i.cv, align 4, !tbaa !12 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.cz, align 4, !tbaa !12 ; 2 uses
  %i.de = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.df = fmul <2 x float> %i.cp, %i.de
  %i.dg = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.cq, <2 x float> %i.df)
  %i.di = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.db, i64 1
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.cr, <2 x float> %i.dh) ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = extractelement <2 x float> %i.dk, i64 1
  %i.dn = fcmp ogt float %i.dl, %i.dm
  br i1 %i.dn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.do = trunc nuw nsw i64 %indvars.iv.i104 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i102
  %.1.i107 = phi i32 [ %i.do, %bb.k ], [ %.01314.i105, %bb.j ], [ %.01314.i105, %.lr.ph.i102 ] ; 2 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i
  br i1 %exitcond.not.i109, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110, label %.lr.ph.i102, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110: ; preds = %bb.l, %bb.h
  %.013.lcssa.i101 = phi i32 [ -1, %bb.h ], [ %.1.i107, %bb.l ] ; 3 uses
  %i.dp = icmp eq i32 %.064229, %.013.lcssa.i
  %i.dq = icmp eq i32 %.013.lcssa.i101, %.013.lcssa.i
  %or.cond = and i1 %i.dp, %i.dq
  br i1 %or.cond, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110
  %.not = icmp eq i32 %.064229, -1
  %.not77 = icmp eq i32 %.064229, %.013.lcssa.i101
  %or.cond78 = or i1 %.not, %.not77
  br i1 %or.cond78, label %.thread194, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = add nsw i32 %.063230.int, -40
  %i.ds = sitofp i32 %i.dr to float               ; 3 uses
  %i.dt = fcmp ugt float %i.ds, %indvar.conv
  br i1 %i.dt, label %.thread194, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %i.a, label %.lr.ph.i137.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.du = fmul nnan float %i.ds, f0x3C8EFA35      ; 2 uses
  %i.dv = tail call noundef float @sinf(float noundef %i.du) #19 ; 0 uses
  %i.dw = tail call noundef float @cosf(float noundef %i.du) #19 ; 0 uses
  %i.dx = add nsw i32 %.063230.int, -35
  %i.dy = sitofp i32 %i.dx to float               ; 2 uses
  %i.dz = fcmp ugt float %i.dy, %indvar.conv
  br i1 %i.dz, label %.thread194, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.thread

.lr.ph.i137.us:                                   ; preds = %.lr.ph, %bb.u
  %.0227.us = phi float [ %i.fo, %bb.u ], [ %i.ds, %.lr.ph ] ; 2 uses
  %.062226.us = phi i32 [ %.1.i142.us, %bb.u ], [ %.064229, %.lr.ph ]
  %i.ea = fmul float %.0227.us, f0x3C8EFA35       ; 2 uses
  %i.eb = tail call noundef float @sinf(float noundef %i.ea) #19
  %i.ec = tail call noundef float @cosf(float noundef %i.ea) #19
  %i.ed = insertelement <3 x float> poison, float %i.eb, i64 0
  %i.ee = shufflevector <3 x float> %i.ed, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ef = fmul <3 x float> %i.at, %i.ee
  %i.eg = insertelement <3 x float> poison, float %i.ec, i64 0
  %i.eh = shufflevector <3 x float> %i.eg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ei = fmul <3 x float> %i.ba, %i.eh
  %i.ej = fadd <3 x float> %i.ef, %i.ei
  %i.ek = fmul <3 x float> %i.ej, splat (float 2.500000e-02)
  %i.el = fadd <3 x float> %i.e, %i.ek            ; 3 uses
  %i.em = shufflevector <3 x float> %i.el, <3 x float> poison, <2 x i32> zeroinitializer
  %i.en = shufflevector <3 x float> %i.el, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = shufflevector <3 x float> %i.el, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i137.us
  %indvars.iv.i139.us = phi i64 [ 0, %.lr.ph.i137.us ], [ %indvars.iv.next.i143.us, %bb.t ] ; 4 uses
  %.01314.i140.us = phi i32 [ -1, %.lr.ph.i137.us ], [ %.1.i142.us, %bb.t ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i139.us
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !41
  %.not.i141.us = icmp eq i32 %i.eq, 0
  br i1 %.not.i141.us, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.er = icmp eq i32 %.01314.i140.us, -1
  br i1 %i.er, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i139.us ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !12
  %i.ev = sext i32 %.01314.i140.us to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12
  %i.ez = load <2 x float>, ptr %i.es, align 4, !tbaa !12 ; 2 uses
  %i.fa = load <2 x float>, ptr %i.ew, align 4, !tbaa !12 ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <2 x i32> <i32 1, i32 3>
  %i.fc = fmul <2 x float> %i.eo, %i.fb
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.en, <2 x float> %i.fc)
  %i.ff = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.ey, i64 1
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.em, <2 x float> %i.fe) ; 2 uses
  %i.fi = extractelement <2 x float> %i.fh, i64 0
  %i.fj = extractelement <2 x float> %i.fh, i64 1
  %i.fk = fcmp ogt float %i.fi, %i.fj
  br i1 %i.fk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fl = trunc nuw nsw i64 %indvars.iv.i139.us to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.1.i142.us = phi i32 [ %i.fl, %bb.s ], [ %.01314.i140.us, %bb.r ], [ %.01314.i140.us, %bb.p ] ; 3 uses
  %indvars.iv.next.i143.us = add nuw nsw i64 %indvars.iv.i139.us, 1 ; 2 uses
  %exitcond.not.i144.us = icmp eq i64 %indvars.iv.next.i143.us, %wide.trip.count.i
  br i1 %exitcond.not.i144.us, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.us, label %bb.p, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.us: ; preds = %bb.t
  %i.fm = icmp eq i32 %.062226.us, %.013.lcssa.i
  %i.fn = icmp eq i32 %.1.i142.us, %.013.lcssa.i
  %or.cond79.us = and i1 %i.fm, %i.fn
  br i1 %or.cond79.us, label %.critedge.sink.split, label %bb.u

bb.u:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.us
  %i.fo = fadd float %.0227.us, 5.000000e+00      ; 2 uses
  %i.fp = fcmp ugt float %i.fo, %indvar.conv
  br i1 %i.fp, label %.thread194, label %.lr.ph.i137.us, !llvm.loop !100
end_hunk_0
