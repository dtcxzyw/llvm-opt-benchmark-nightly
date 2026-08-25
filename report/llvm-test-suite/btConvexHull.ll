Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConvexHull?download=true
inline.NumInlined: 627
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE:bb.a
  %i.bc = call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.bc)
  %sqrt.i77 = call noundef float @llvm.sqrt.f32(float %i.bd)
  %i.be = fcmp ogt float %sqrt.i, %sqrt.i77
  br i1 %i.be, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !38
  %i.bf = load <2 x float>, ptr %i.ar, align 16, !tbaa !8 ; 4 uses
  %foldExtExtBinop183 = fmul <2 x float> %i.bf, %i.bf
  %i.bg = extractelement <2 x float> %foldExtExtBinop183, i64 1
  %i.bh = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bi = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bg)
  %i.bj = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !8 ; 3 uses
  %i.bk = call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bi)
  %sqrt.i.i78 = call noundef float @llvm.sqrt.f32(float %i.bk)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread, %bb.c
  %sqrt.i.i78.sink = phi float [ %sqrt.i.i78, %bb.c ], [ %sqrt.i, %_ZNK9btVector3eqERKS_.exit.thread ]
  %.sink177 = phi float [ %i.bj, %bb.c ], [ %i.aq, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bl = phi <2 x float> [ %i.bf, %bb.c ], [ %i.an, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bm = fdiv float 1.000000e+00, %sqrt.i.i78.sink ; 2 uses
  %i.bn = fmul float %.sink177, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bl, %i.bp
  store <2 x float> %i.bq, ptr %i.ar, align 16, !tbaa !8
  store float %i.bn, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !8
  %i.br = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 3 uses
  %i.bs = icmp eq i32 %i.br, %i.a
  %i.bt = icmp eq i32 %i.br, %i.g
  %or.cond = or i1 %i.bs, %i.bt
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bu = load <2 x float>, ptr %i.ar, align 16, !tbaa !8
  %i.bv = fneg <2 x float> %i.bu
  %i.bw = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !8
  %i.bx = fneg float %i.bw
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  store <2 x float> %i.bv, ptr %6, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.by, align 8
  %i.bz = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0162 = phi i32 [ %i.bz, %bb.e ], [ %i.br, %bb.d ] ; 7 uses
  %i.ca = icmp eq i32 %.0162, %i.a
  %i.cb = icmp eq i32 %.0162, %i.g
  %or.cond60 = or i1 %i.ca, %i.cb
  br i1 %or.cond60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = sext i32 %.0162 to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %1, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load <2 x float>, ptr %i.cd, align 4, !tbaa !8
  %i.cg = load <2 x float>, ptr %i.i, align 4, !tbaa !8
  %i.ch = fsub <2 x float> %i.cf, %i.cg           ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !8
  %i.ck = load float, ptr %i.s, align 4, !tbaa !8
  %i.cl = fsub float %i.cj, %i.ck                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  store <2 x float> %i.ch, ptr %i.ar, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !14
  %i.cm = extractelement <2 x float> %i.ch, i64 1
  %i.cn = load float, ptr %4, align 16, !tbaa !8  ; 2 uses
  %i.co = extractelement <2 x float> %i.ch, i64 0
  %i.cp = fneg float %i.cn
  %i.cq = fmul float %i.cm, %i.cp
  %i.cr = load <2 x float>, ptr %.sroa.4156.0..sroa_idx, align 4, !tbaa !8 ; 3 uses
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
  %foldExtExtBinop185 = fmul <2 x float> %i.cz, %i.cz
  %i.dc = extractelement <2 x float> %foldExtExtBinop185, i64 1
  %i.dd = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.dc)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.de)
  %sqrt.i.i94 = call noundef float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt.i.i94    ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.cz, %i.di
  %i.dk = fmul float %i.db, %i.dg
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dk, i64 0
  store <2 x float> %i.dj, ptr %i.aw, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !14
  %i.dl = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dm = icmp eq i32 %i.dl, %i.a
  %i.dn = icmp eq i32 %i.dl, %i.g
  %or.cond61 = or i1 %i.dm, %i.dn
  %i.do = icmp eq i32 %i.dl, %.0162
  %or.cond63 = or i1 %i.do, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dp = load <2 x float>, ptr %i.aw, align 16, !tbaa !8
  %i.dq = fneg <2 x float> %i.dp
  %i.dr = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !8
  %i.ds = fneg float %i.dr
  %.sroa.3.12.vec.insert.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  store <2 x float> %i.dq, ptr %7, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i97, ptr %i.dt, align 8
  %i.du = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.du, %bb.h ], [ %i.dl, %bb.g ] ; 6 uses
  %i.dv = icmp eq i32 %.0, %i.a
  %i.dw = icmp eq i32 %.0, %i.g
  %or.cond64 = or i1 %i.dv, %i.dw
  %i.dx = icmp eq i32 %.0, %.0162
  %or.cond66 = or i1 %i.dx, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dy = sext i32 %.0 to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dy ; 3 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !8
  %i.eb = load float, ptr %i.i, align 4, !tbaa !8 ; 3 uses
  %i.ec = fsub float %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !8
  %i.ef = load float, ptr %i.n, align 4, !tbaa !8 ; 3 uses
  %i.eg = fsub float %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !8
  %i.ej = load float, ptr %i.s, align 4, !tbaa !8 ; 3 uses
  %i.ek = fsub float %i.ei, %i.ej
  %i.el = load float, ptr %i.k, align 4, !tbaa !8
  %i.em = fsub float %i.el, %i.eb                 ; 2 uses
  %i.en = load float, ptr %i.p, align 4, !tbaa !8
  %i.eo = fsub float %i.en, %i.ef                 ; 2 uses
  %i.ep = load float, ptr %i.u, align 4, !tbaa !8
  %i.eq = fsub float %i.ep, %i.ej                 ; 2 uses
  %i.er = load float, ptr %i.cd, align 4, !tbaa !8
  %i.es = fsub float %i.er, %i.eb                 ; 2 uses
  %i.et = load float, ptr %i.ce, align 4, !tbaa !8
  %i.eu = fsub float %i.et, %i.ef                 ; 2 uses
  %i.ev = load float, ptr %i.ci, align 4, !tbaa !8
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
  %i.fj = fcmp olt float %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.j, %bb.k, %bb.i, %bb.a
  %.sroa.0159.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.a, %bb.k ], [ %i.a, %bb.j ]
  %.sroa.5160.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.g, %bb.k ], [ %i.g, %bb.j ]
  %.sroa.9161.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0, %bb.k ], [ %.0162, %bb.j ]
  %.sroa.14.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0162, %bb.k ], [ %.0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.sroa.5160.0.insert.ext = zext i32 %.sroa.5160.2 to i64
  %.sroa.5160.0.insert.shift = shl nuw i64 %.sroa.5160.0.insert.ext, 32
  %.sroa.0159.0.insert.ext = zext i32 %.sroa.0159.2 to i64
  %.sroa.0159.0.insert.insert = or disjoint i64 %.sroa.5160.0.insert.shift, %.sroa.0159.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0159.0.insert.insert, 0
  %.sroa.14.8.insert.ext = zext i32 %.sroa.14.2 to i64
  %.sroa.14.8.insert.shift = shl nuw i64 %.sroa.14.8.insert.ext, 32
  %.sroa.9161.8.insert.ext = zext i32 %.sroa.9161.2 to i64
  %.sroa.9161.8.insert.insert = or disjoint i64 %.sroa.14.8.insert.shift, %.sroa.9161.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9161.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 0                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 7 uses
  %i.f = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.g = fmul float %i.f, 0.000000e+00
  %i.h = load float, ptr %2, align 4              ; 7 uses
  %i.i = extractelement <2 x float> %i.e, i64 0   ; 4 uses
  %i.j = fmul float %i.i, -0.000000e+00           ; 2 uses
  %i.k = fmul float %i.h, -0.000000e+00
  %i.l = fadd float %i.j, %i.h                    ; 2 uses
  %i.m = fsub float %i.i, %i.g                    ; 2 uses
  %i.n = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.o = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = insertelement <2 x float> poison, float %i.m, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float 0.000000e+00, float %i.j) ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.l, i64 1 ; 2 uses
  %i.t = fneg float %i.i
  %i.u = insertelement <2 x float> %i.n, float %i.h, i64 1
  %i.v = fneg <2 x float> %i.u                    ; 3 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.w) ; 2 uses
  %i.y = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %i.k, i64 1
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> zeroinitializer, <2 x float> %i.z) ; 4 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = insertelement <2 x float> %i.p, float %i.x, i64 1 ; 2 uses
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.ab)
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.s, <2 x float> %i.ad)
  %i.af = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.ah = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ai = fcmp ogt float %i.ag, %i.ah             ; 3 uses
  %sqrt.i.sqrt.i8.i = select i1 %i.ai, float %i.ag, float %i.ah
  %i.aj = insertelement <2 x i1> poison, i1 %i.ai, i64 0
  %i.ak = shufflevector <2 x i1> %i.aj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x float> %i.aa, float %i.q, i64 1
  %i.am = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %i.am, float %i.l, i64 1
  %i.ao = select <2 x i1> %i.ak, <2 x float> %i.al, <2 x float> %i.an
  %..i = select i1 %i.ai, float %i.m, float %i.x
  %i.ap = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8.i ; 2 uses
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %i.ao, %i.ar           ; 6 uses
  %i.at = fmul float %..i, %i.ap                  ; 4 uses
  %i.au = extractelement <2 x float> %i.as, i64 1
  %i.av = fmul float %i.au, %i.t
  %i.aw = extractelement <2 x float> %i.as, i64 0
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.f, float %i.av) ; 2 uses
  %i.ay = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.az = insertelement <2 x float> %i.ay, float %i.at, i64 0
  %i.ba = fmul <2 x float> %i.az, %i.v
  %i.bb = shufflevector <2 x float> %i.as, <2 x float> %i.e, <2 x i32> <i32 1, i32 2>
  %i.bc = insertelement <2 x float> poison, float %i.h, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.at, i64 1
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bd, <2 x float> %i.ba) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread208
  br i1 %i.a, label %.lr.ph.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %5 = load float, ptr %2, align 4
  %6 = load float, ptr %i.d, align 4
  %7 = load float, ptr %4, align 4
  %8 = insertelement <2 x float> poison, float %7, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x float> poison, float %5, i64 0
  %i.bf = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x float> poison, float %6, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = icmp eq i32 %.01314.i, -1
  br i1 %i.bi, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !8
  %i.bm = sext i32 %.01314.i to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !8
  %i.bq = load <2 x float>, ptr %i.bj, align 4, !tbaa !8 ; 2 uses
  %i.br = load <2 x float>, ptr %i.bn, align 4, !tbaa !8 ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <2 x i32> <i32 1, i32 3>
  %i.bt = fmul <2 x float> %12, %i.bs
  %i.bu = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <2 x i32> <i32 0, i32 2>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bf, <2 x float> %i.bt)
  %i.bw = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bp, i64 1
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %9, <2 x float> %i.bv) ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = extractelement <2 x float> %i.by, i64 1
  %i.cb = fcmp ogt float %i.bz, %i.ca
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cc = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.cc, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
  %.013.lcssa.i = phi i32 [ -1, %bb.b ], [ %.1.i, %bb.g ] ; 7 uses
  %i.cd = sext i32 %.013.lcssa.i to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cd ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit
  %or.cond79198 = icmp eq i32 %.013.lcssa.i, -1
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %.thread193
  %.063221.int = phi i32 [ 0, %.preheader ], [ %.int, %.thread193 ] ; 5 uses
  %.064220 = phi i32 [ -1, %.preheader ], [ %.013.lcssa.i100, %.thread193 ] ; 4 uses
  %indvar.conv = uitofp nneg i32 %.063221.int to float ; 5 uses
  %i.ch = fmul nnan float %indvar.conv, f0x3C8EFA35 ; 2 uses
  %i.ci = tail call noundef float @sinf(float noundef %i.ch) #19, !tbaa !4 ; 2 uses
  %i.cj = tail call noundef float @cosf(float noundef %i.ch) #19, !tbaa !4 ; 2 uses
  %i.ck = fmul float %i.at, %i.ci
  %i.cl = fmul float %i.ax, %i.cj
  %i.cm = fadd float %i.ck, %i.cl
  %i.cn = fmul float %i.cm, 2.500000e-02
  %i.co = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.as, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.be, %i.cs
  %i.cu = fadd <2 x float> %i.cq, %i.ct
  %i.cv = fmul <2 x float> %i.cu, splat (float 2.500000e-02)
  %i.cw = fadd float %i.h, %i.cn
  %i.cx = fadd <2 x float> %i.e, %i.cv            ; 2 uses
  br i1 %i.a, label %.lr.ph.i101.preheader, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109

.lr.ph.i101.preheader:                            ; preds = %bb.h
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %bb.l
  %indvars.iv.i103 = phi i64 [ %indvars.iv.next.i107, %bb.l ], [ 0, %.lr.ph.i101.preheader ] ; 4 uses
  %.01314.i104 = phi i32 [ %.1.i106, %bb.l ], [ -1, %.lr.ph.i101.preheader ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i103
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %.not.i105 = icmp eq i32 %i.dd, 0
  br i1 %.not.i105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i101
  %i.de = icmp eq i32 %.01314.i104, -1
  br i1 %i.de, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i103 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8
  %i.di = sext i32 %.01314.i104 to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %0, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !8
  %i.dm = load <2 x float>, ptr %i.df, align 4, !tbaa !8 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dj, align 4, !tbaa !8 ; 2 uses
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dp = fmul <2 x float> %i.cy, %i.do
  %i.dq = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.da, <2 x float> %i.dp)
  %i.ds = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.dl, i64 1
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.db, <2 x float> %i.dr) ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = extractelement <2 x float> %i.du, i64 1
  %i.dx = fcmp ogt float %i.dv, %i.dw
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dy = trunc nuw nsw i64 %indvars.iv.i103 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i101
  %.1.i106 = phi i32 [ %i.dy, %bb.k ], [ %.01314.i104, %bb.j ], [ %.01314.i104, %.lr.ph.i101 ] ; 2 uses
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i
  br i1 %exitcond.not.i108, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109, label %.lr.ph.i101

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109: ; preds = %bb.l, %bb.h
  %.013.lcssa.i100 = phi i32 [ -1, %bb.h ], [ %.1.i106, %bb.l ] ; 3 uses
  %i.dz = icmp eq i32 %.064220, %.013.lcssa.i
  %i.ea = icmp eq i32 %.013.lcssa.i100, %.013.lcssa.i
  %or.cond = and i1 %i.dz, %i.ea
  br i1 %or.cond, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109
  %.not = icmp eq i32 %.064220, -1
  %.not77 = icmp eq i32 %.064220, %.013.lcssa.i100
  %or.cond78 = or i1 %.not, %.not77
  br i1 %or.cond78, label %.thread193, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = add nsw i32 %.063221.int, -40
  %i.ec = sitofp i32 %i.eb to float               ; 3 uses
  %i.ed = fcmp ugt float %i.ec, %indvar.conv
  br i1 %i.ed, label %.thread193, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %i.a, label %.lr.ph.i136.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.ee = fmul nnan float %i.ec, f0x3C8EFA35      ; 2 uses
  %i.ef = tail call noundef float @sinf(float noundef %i.ee) #19, !tbaa !4 ; 0 uses
  %i.eg = tail call noundef float @cosf(float noundef %i.ee) #19, !tbaa !4 ; 0 uses
  %i.eh = add nsw i32 %.063221.int, -35
  %i.ei = sitofp i32 %i.eh to float               ; 2 uses
  %i.ej = fcmp ugt float %i.ei, %indvar.conv
  br i1 %i.ej, label %.thread193, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread

.lr.ph.i136.us:                                   ; preds = %.lr.ph, %bb.u
  %.0218.us = phi float [ %i.ge, %bb.u ], [ %i.ec, %.lr.ph ] ; 2 uses
  %.062217.us = phi i32 [ %.1.i141.us, %bb.u ], [ %.064220, %.lr.ph ]
  %i.ek = fmul float %.0218.us, f0x3C8EFA35       ; 2 uses
  %i.el = tail call noundef float @sinf(float noundef %i.ek) #19, !tbaa !4 ; 2 uses
  %i.em = tail call noundef float @cosf(float noundef %i.ek) #19, !tbaa !4 ; 2 uses
  %i.en = fmul float %i.at, %i.el
  %i.eo = fmul float %i.ax, %i.em
  %i.ep = fadd float %i.en, %i.eo
  %i.eq = fmul float %i.ep, 2.500000e-02
  %i.er = insertelement <2 x float> poison, float %i.el, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %i.as, %i.es
  %i.eu = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.be, %i.ev
  %i.ex = fadd <2 x float> %i.et, %i.ew
  %i.ey = fmul <2 x float> %i.ex, splat (float 2.500000e-02)
  %i.ez = fadd float %i.h, %i.eq
  %i.fa = fadd <2 x float> %i.e, %i.ey            ; 2 uses
  %i.fb = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i136.us
  %indvars.iv.i138.us = phi i64 [ 0, %.lr.ph.i136.us ], [ %indvars.iv.next.i142.us, %bb.t ] ; 4 uses
  %.01314.i139.us = phi i32 [ -1, %.lr.ph.i136.us ], [ %.1.i141.us, %bb.t ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i138.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !4
  %.not.i140.us = icmp eq i32 %i.fg, 0
  br i1 %.not.i140.us, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fh = icmp eq i32 %.01314.i139.us, -1
  br i1 %i.fh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i138.us ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !8
  %i.fl = sext i32 %.01314.i139.us to i64
  %i.fm = getelementptr inbounds [16 x i8], ptr %0, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !8
  %i.fp = load <2 x float>, ptr %i.fi, align 4, !tbaa !8 ; 2 uses
  %i.fq = load <2 x float>, ptr %i.fm, align 4, !tbaa !8 ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.fs = fmul <2 x float> %i.fd, %i.fr
  %i.ft = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fc, <2 x float> %i.fs)
  %i.fv = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fo, i64 1
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fe, <2 x float> %i.fu) ; 2 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  %i.fz = extractelement <2 x float> %i.fx, i64 1
  %i.ga = fcmp ogt float %i.fy, %i.fz
  br i1 %i.ga, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gb = trunc nuw nsw i64 %indvars.iv.i138.us to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.1.i141.us = phi i32 [ %i.gb, %bb.s ], [ %.01314.i139.us, %bb.r ], [ %.01314.i139.us, %bb.p ] ; 3 uses
  %indvars.iv.next.i142.us = add nuw nsw i64 %indvars.iv.i138.us, 1 ; 2 uses
  %exitcond.not.i143.us = icmp eq i64 %indvars.iv.next.i142.us, %wide.trip.count.i
end_hunk_0
