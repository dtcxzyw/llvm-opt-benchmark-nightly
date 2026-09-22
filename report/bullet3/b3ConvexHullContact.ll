Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZL11TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf:bb.a
  %i.ef = fcmp uge float %i.ed, %i.cj
  %or.cond.not = select i1 %i.ee, i1 %i.ef, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30
  %i.eg = fsub float %i.ck, %i.ec                 ; 2 uses
  %i.eh = fsub float %i.ed, %i.cj                 ; 2 uses
  %i.ei = fcmp olt float %i.eg, %i.eh
  %i.ej = select i1 %i.ei, float %i.eg, float %i.eh
  store float %i.ej, ptr %5, align 4, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30, %bb.f
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [80 x i8], ptr %1, i64 %i.a ; 7 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.515.0.copyload = load float, ptr %.sroa.515.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load <2 x float>, ptr %i.b, align 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 9 uses
  %i.e = fneg float %.sroa.7.0.copyload           ; 2 uses
  %i.f = load <2 x float>, ptr %i.c, align 16     ; 3 uses
  %.sroa.59.0.copyload = load float, ptr %.sroa.59.0..sroa_idx, align 4 ; 9 uses
  %i.g = load <3 x float>, ptr %5, align 16, !tbaa !37 ; 5 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.i = load float, ptr %5, align 16, !tbaa !37
  %i.j = extractelement <2 x float> %i.f, i64 0   ; 10 uses
  %i.k = fneg float %i.j                          ; 2 uses
  %i.l = fneg float %.sroa.59.0.copyload          ; 2 uses
  %i.m = shufflevector <2 x float> %i.f, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.n = shufflevector <3 x float> %i.g, <3 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.o = insertelement <4 x float> poison, float %i.e, i64 0
  %i.p = insertelement <4 x float> %i.o, float %i.k, i64 1
  %i.q = insertelement <4 x float> %i.p, float %i.l, i64 2
  %i.r = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.s = shufflevector <4 x float> %i.q, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.t = fmul <4 x float> %i.n, %i.s
  %i.u = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.v = insertelement <2 x float> %i.u, float %.sroa.9.0.copyload, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.h, <4 x float> %i.t) ; 4 uses
  %i.y = extractelement <4 x float> %i.x, i64 2
  %i.z = extractelement <3 x float> %i.g, i64 1
  %i.aa = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.z, float %i.y) ; 3 uses
  %i.ab = extractelement <4 x float> %i.x, i64 0
  %i.ac = extractelement <3 x float> %i.g, i64 2  ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.j, float %i.ac, float %i.ab) ; 3 uses
  %i.ae = extractelement <4 x float> %i.x, i64 1
  %i.af = tail call float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.i, float %i.ae) ; 3 uses
  %i.ag = extractelement <4 x float> %i.x, i64 3
  %i.ah = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.ac, float %i.ag) ; 3 uses
  %i.ai = fmul float %.sroa.9.0.copyload, %i.aa
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.j, float %i.ai)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.7.0.copyload, float %i.aj)
  %i.al = tail call float @llvm.fmuladd.f32(float %i.af, float %i.l, float %i.ak)
  %i.am = fmul float %.sroa.9.0.copyload, %i.ad
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.59.0.copyload, float %i.am)
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.af, float %i.j, float %i.an)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.e, float %i.ao)
  %i.aq = fmul float %.sroa.9.0.copyload, %i.af
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.7.0.copyload, float %i.aq)
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aa, float %.sroa.59.0.copyload, float %i.ar)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.k, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.av = load i32, ptr %i.au, align 16, !tbaa !33
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %3, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [96 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 76
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i, label %_Z23b3LocalGetSupportVertexRK9b3Vector3PK22b3ConvexPolyhedronDataPS0_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bg = load i32, ptr %i.bf, align 16, !tbaa !46 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bh
  %wide.trip.count.i.i = zext nneg i32 %i.bd to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 3 uses
  %.019.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %bb.b ]
  %.01417.i.i = phi float [ f0xFF7FFFFF, %.lr.ph.i.i ], [ %.115.i.i, %bb.b ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i.i ; 3 uses
  %i.bk = load float, ptr %i.bj, align 16, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !37
  %i.bn = fmul float %i.ap, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.al, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !37
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.at, float %i.bo) ; 2 uses
  %i.bs = fcmp ogt float %i.br, %.01417.i.i       ; 2 uses
  %.115.i.i = select i1 %i.bs, float %i.br, float %.01417.i.i
  %i.bt = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.1.i.i = select i1 %i.bs, i32 %i.bt, i32 %.019.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_Z8b3MaxDotRK9b3Vector3PS0_iPf.exit.i, label %bb.b, !llvm.loop !487

_Z8b3MaxDotRK9b3Vector3PS0_iPf.exit.i:            ; preds = %bb.b
  %i.bu = tail call i32 @llvm.smax.i32(i32 %.1.i.i, i32 0)
  %i.bv = add nsw i32 %i.bu, %i.bg
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bw ; 2 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %i.bx, align 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !37
  %i.by = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.07.0.copyload.i, 0
  %i.bz = insertvalue { <2 x float>, <2 x float> } %i.by, <2 x float> %.sroa.3.0.copyload.i, 1
  br label %_Z23b3LocalGetSupportVertexRK9b3Vector3PK22b3ConvexPolyhedronDataPS0_.exit

_Z23b3LocalGetSupportVertexRK9b3Vector3PK22b3ConvexPolyhedronDataPS0_.exit: ; preds = %bb.a, %_Z8b3MaxDotRK9b3Vector3PS0_iPf.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, <2 x float> } [ %i.bz, %_Z8b3MaxDotRK9b3Vector3PS0_iPf.exit.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.ca = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 0 ; 4 uses
  %i.cb = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 1 ; 2 uses
  %i.cc = fmul float %.sroa.59.0.copyload, %.sroa.59.0.copyload
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.cc)
  %i.ce = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %.sroa.7.0.copyload, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.copyload, float %.sroa.9.0.copyload, float %i.ce)
  %i.cg = fdiv float 2.000000e+00, %i.cf          ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.ca, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.ca, i64 1
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.cb, i64 0
  %i.ch = fmul float %i.j, %i.cg                  ; 2 uses
  %i.ci = fmul float %.sroa.59.0.copyload, %i.cg  ; 3 uses
  %i.cj = fmul float %.sroa.9.0.copyload, %i.ch   ; 2 uses
  %i.ck = fmul float %.sroa.9.0.copyload, %i.ci   ; 2 uses
  %i.cl = fmul float %i.j, %i.ch                  ; 2 uses
  %i.cm = fmul float %i.j, %i.ci                  ; 2 uses
  %i.cn = fmul float %.sroa.7.0.copyload, %i.cg   ; 4 uses
  %i.co = fmul float %.sroa.59.0.copyload, %i.ci  ; 2 uses
  %i.cp = fmul float %.sroa.59.0.copyload, %i.cn  ; 2 uses
  %i.cq = fmul float %i.j, %i.cn                  ; 2 uses
  %i.cr = fmul float %.sroa.7.0.copyload, %i.cn   ; 2 uses
  %i.cs = fadd float %i.co, %i.cr
  %i.ct = fsub float 1.000000e+00, %i.cs
  %i.cu = fadd float %i.cl, %i.cr
  %i.cv = fmul float %.sroa.9.0.copyload, %i.cn   ; 2 uses
  %i.cw = fadd float %i.cm, %i.cv
  %i.cx = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cm, i64 0
  %i.cy = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cu, i64 1
  %i.da = fsub <2 x float> %i.cx, %i.cz
  %i.db = fsub float %i.cp, %i.cj
  %i.dc = fadd float %i.cq, %i.ck
  %i.dd = fsub float %i.cq, %i.ck
  %i.de = fadd float %i.cp, %i.cj
  %i.df = fadd float %i.cl, %i.co
  %i.dg = fsub float 1.000000e+00, %i.df
  %i.dh = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x float> %i.da, %i.dh
  %i.dj = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.cw, i64 1
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dl, <2 x float> %i.di)
  %i.dn = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.db, i64 1
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dp, <2 x float> %i.dm)
  %i.dr = fmul float %i.de, %.sroa.0.4.vec.extract
  %i.ds = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %i.dd, float %i.dr)
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float %i.dg, float %i.ds)
  %i.du = fadd <2 x float> %i.d, %i.dq
  %i.dv = fadd float %.sroa.515.0.copyload, %i.dt
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  store <2 x float> %i.du, ptr %6, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_Z22b3MprVec3PointTriDist2PK9b3Vector3S1_S1_S1_PS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !37 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !37
  %i.l = load <2 x float>, ptr %2, align 16, !tbaa !37 ; 2 uses
  %i.m = load float, ptr %i.b, align 4, !tbaa !37 ; 3 uses
  %i.n = load float, ptr %1, align 16, !tbaa !37  ; 2 uses
  %i.o = load float, ptr %i.e, align 8, !tbaa !37 ; 2 uses
  %i.p = load <2 x float>, ptr %3, align 16, !tbaa !37 ; 4 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> %i.l, <2 x i32> <i32 0, i32 2>
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fsub <2 x float> %i.q, %i.s              ; 3 uses
  %i.u = shufflevector <2 x float> %i.p, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.v = insertelement <2 x float> poison, float %i.m, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fsub <2 x float> %i.u, %i.w              ; 3 uses
  %5 = insertelement <2 x float> poison, float %i.h, i64 0
  %6 = insertelement <2 x float> %5, float %i.d, i64 1
  %7 = insertelement <2 x float> poison, float %i.o, i64 0 ; 2 uses
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fsub <2 x float> %6, %8                    ; 3 uses
  %i.y = load <2 x float>, ptr %0, align 16, !tbaa !37 ; 2 uses
  %i.z = shufflevector <2 x float> %i.r, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.aa = insertelement <2 x float> %i.y, float %i.n, i64 1
  %i.ab = fsub <2 x float> %i.z, %i.aa            ; 5 uses
  %i.ac = insertelement <2 x float> %i.p, float %i.m, i64 0
  %i.ad = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = insertelement <2 x float> %i.ad, float %i.m, i64 1
  %i.af = fsub <2 x float> %i.ac, %i.ae           ; 6 uses
  %i.ag = insertelement <2 x float> %7, float %i.h, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.o, i64 1
  %i.aj = fsub <2 x float> %i.ag, %i.ai           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.af, %i.af
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak)
  %i.an = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %i.ap = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %i.ap, %i.af
  %i.ar = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ab, <2 x float> %i.aq)
  %i.at = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.au = fmul <2 x float> %i.at, %i.x
  %i.av = fmul <2 x float> %i.at, %i.af
  %i.aw = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.aj, <2 x float> %i.as) ; 4 uses
  %i.ay = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.t, <2 x float> %i.au)
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ab, <2 x float> %i.av)
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %9, <2 x float> %i.az) ; 4 uses
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.aj, <2 x float> %i.ba) ; 2 uses
  %i.bd = fneg <2 x float> %i.bc
  %i.be = shufflevector <2 x float> %i.ax, <2 x float> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.bf = fmul <2 x float> %i.be, %i.bd
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.bb, <2 x float> %i.bf) ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0
  %i.bi = extractelement <2 x float> %i.bg, i64 1
  %i.bj = fdiv float %i.bh, %i.bi                 ; 12 uses
  %i.bk = fneg float %i.bj
  %i.bl = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bm = fneg float %i.bl
  %i.bn = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bn, float %i.bm)
  %i.bp = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.bq = fdiv float %i.bo, %i.bp                 ; 12 uses
  %i.br = tail call noundef float @llvm.fabs.f32(float %i.bj) ; 3 uses
  %i.bs = fcmp olt float %i.br, f0x34000000
  %i.bt = fcmp ogt float %i.bj, 0.000000e+00
  %or.cond = or i1 %i.bt, %i.bs
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.bu = fadd float %i.bj, -1.000000e+00
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu) ; 2 uses
  %i.bw = fcmp olt float %i.bv, f0x34000000
  br i1 %i.bw, label %_Z7b3MprEqff.exit.thread, label %_Z7b3MprEqff.exit

_Z7b3MprEqff.exit:                                ; preds = %bb.b
  %i.bx = fcmp uge float %i.br, 1.000000e+00
  %i.by = fmul float %i.br, f0x34000000
  %i.bz = fcmp olt float %i.bv, %i.by
  %.0.shrunk.i = and i1 %i.bx, %i.bz
  %i.ca = fcmp olt float %i.bj, 1.000000e+00
  %or.cond3 = or i1 %i.ca, %.0.shrunk.i
  br i1 %or.cond3, label %_Z7b3MprEqff.exit.thread, label %bb.f

_Z7b3MprEqff.exit.thread:                         ; preds = %bb.b, %_Z7b3MprEqff.exit
  %i.cb = tail call noundef float @llvm.fabs.f32(float %i.bq) ; 3 uses
  %i.cc = fcmp olt float %i.cb, f0x34000000
  %i.cd = fcmp ogt float %i.bq, 0.000000e+00
  %or.cond5 = or i1 %i.cd, %i.cc
  br i1 %or.cond5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_Z7b3MprEqff.exit.thread
  %i.ce = fadd float %i.bq, -1.000000e+00
  %i.cf = tail call noundef float @llvm.fabs.f32(float %i.ce) ; 2 uses
  %i.cg = fcmp olt float %i.cf, f0x34000000
  br i1 %i.cg, label %_Z7b3MprEqff.exit105.thread, label %_Z7b3MprEqff.exit105

_Z7b3MprEqff.exit105:                             ; preds = %bb.c
  %i.ch = fcmp uge float %i.cb, 1.000000e+00
  %i.ci = fmul float %i.cb, f0x34000000
  %i.cj = fcmp olt float %i.cf, %i.ci
  %.0.shrunk.i103 = and i1 %i.ch, %i.cj
  %i.ck = fcmp olt float %i.bq, 1.000000e+00
  %or.cond7 = or i1 %i.ck, %.0.shrunk.i103
  br i1 %or.cond7, label %_Z7b3MprEqff.exit105.thread, label %bb.f

_Z7b3MprEqff.exit105.thread:                      ; preds = %bb.c, %_Z7b3MprEqff.exit105
  %i.cl = fadd float %i.bj, %i.bq                 ; 3 uses
  %i.cm = fadd float %i.cl, -1.000000e+00
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cm) ; 2 uses
  %i.co = fcmp olt float %i.cn, f0x34000000
  br i1 %i.co, label %_Z7b3MprEqff.exit108.thread, label %_Z7b3MprEqff.exit108

_Z7b3MprEqff.exit108:                             ; preds = %_Z7b3MprEqff.exit105.thread
  %i.cp = tail call noundef float @llvm.fabs.f32(float %i.cl) ; 2 uses
  %i.cq = fcmp uge float %i.cp, 1.000000e+00
  %i.cr = fmul float %i.cp, f0x34000000
  %i.cs = fcmp olt float %i.cn, %i.cr
  %.0.shrunk.i106 = and i1 %i.cq, %i.cs
  %i.ct = fcmp olt float %i.cl, 1.000000e+00
  %or.cond94 = or i1 %i.ct, %.0.shrunk.i106
  br i1 %or.cond94, label %_Z7b3MprEqff.exit108.thread, label %bb.f

_Z7b3MprEqff.exit108.thread:                      ; preds = %_Z7b3MprEqff.exit105.thread, %_Z7b3MprEqff.exit108
  %.not93 = icmp eq ptr %4, null
  br i1 %.not93, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_Z7b3MprEqff.exit108.thread
  %i.cu = extractelement <2 x float> %i.t, i64 1
  %i.cv = fmul float %i.cu, %i.bj
  %i.cw = extractelement <2 x float> %i.x, i64 1
  %i.cx = fmul float %i.cw, %i.bj
  %11 = extractelement <2 x float> %9, i64 1
  %i.cy = fmul float %11, %i.bj
  %i.cz = extractelement <2 x float> %i.ab, i64 1
  %i.da = fmul float %i.cz, %i.bq
  %i.db = extractelement <2 x float> %i.af, i64 1
  %i.dc = fmul float %i.db, %i.bq
  %i.dd = extractelement <2 x float> %i.aj, i64 1
  %i.de = fmul float %i.dd, %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !40
  %i.df = load float, ptr %4, align 16, !tbaa !37
  %i.dg = fadd float %i.cv, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !37
  %i.dj = fadd float %i.cx, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !37
  %i.dm = fadd float %i.cy, %i.dl
  %i.dn = fadd float %i.da, %i.dg                 ; 2 uses
  store float %i.dn, ptr %4, align 16, !tbaa !37
  %i.do = fadd float %i.dc, %i.dj                 ; 2 uses
  store float %i.do, ptr %i.dh, align 4, !tbaa !37
  %i.dp = fadd float %i.de, %i.dm                 ; 2 uses
  store float %i.dp, ptr %i.dk, align 8, !tbaa !37
  %i.dq = load float, ptr %0, align 16, !tbaa !37
  %i.dr = fsub float %i.dn, %i.dq                 ; 2 uses
  %i.ds = load float, ptr %i.i, align 4, !tbaa !37
  %i.dt = fsub float %i.do, %i.ds                 ; 2 uses
  %i.du = load float, ptr %i.j, align 8, !tbaa !37
  %i.dv = fsub float %i.dp, %i.du                 ; 2 uses
  %i.dw = fmul float %i.dt, %i.dt
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.dw)
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.dx)
  br label %bb.v

bb.e:                                             ; preds = %_Z7b3MprEqff.exit108.thread
  %i.dz = fmul float %i.bj, %i.bj
  %i.ea = extractelement <2 x float> %i.bb, i64 1
  %i.eb = fmul float %i.ea, %i.dz
  %i.ec = fmul float %i.bq, %i.bq
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.bp, float %i.eb)
  %i.ee = fmul float %i.bj, 2.000000e+00          ; 2 uses
  %i.ef = fmul float %i.ee, %i.bq
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.bn, float %i.ed)
  %i.eh = extractelement <2 x float> %i.bc, i64 0
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.eh, float %i.eg)
  %i.ej = fmul float %i.bq, 2.000000e+00
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.bl, float %i.ei)
  %i.el = fadd float %i.ao, %i.ek
  br label %bb.v

bb.f:                                             ; preds = %_Z7b3MprEqff.exit108, %_Z7b3MprEqff.exit105, %_Z7b3MprEqff.exit.thread, %_Z7b3MprEqff.exit, %bb.a
  %i.em = tail call noundef float @_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4) ; 2 uses
  %i.en = load float, ptr %3, align 16, !tbaa !37 ; 5 uses
  %i.eo = load float, ptr %1, align 16, !tbaa !37 ; 4 uses
  %i.ep = fsub float %i.en, %i.eo                 ; 4 uses
  %i.eq = load float, ptr %i.f, align 4, !tbaa !37 ; 5 uses
  %i.er = load float, ptr %i.b, align 4, !tbaa !37 ; 4 uses
  %i.es = fsub float %i.eq, %i.er                 ; 4 uses
  %i.et = load float, ptr %i.g, align 8, !tbaa !37 ; 4 uses
  %i.eu = load float, ptr %i.e, align 8, !tbaa !37 ; 3 uses
  %i.ev = fsub float %i.et, %i.eu                 ; 4 uses
  %i.ew = load float, ptr %0, align 16, !tbaa !37 ; 5 uses
  %i.ex = fsub float %i.eo, %i.ew                 ; 3 uses
  %i.ey = load float, ptr %i.i, align 4, !tbaa !37 ; 5 uses
  %i.ez = fsub float %i.er, %i.ey                 ; 3 uses
  %i.fa = load float, ptr %i.j, align 8, !tbaa !37 ; 5 uses
  %i.fb = fsub float %i.eu, %i.fa                 ; 3 uses
  %i.fc = fmul float %i.es, %i.ez
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ep, float %i.fc)
  %i.fe = tail call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.ev, float %i.fd)
  %i.ff = fneg float %i.fe
  %i.fg = fmul float %i.es, %i.es
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.fg)
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.fh)
  %i.fj = fdiv float %i.ff, %i.fi                 ; 7 uses
  %i.fk = fcmp olt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fl = tail call noundef float @llvm.fabs.f32(float %i.fj) ; 3 uses
  %i.fm = fcmp uge float %i.fl, f0x34000000
  br i1 %i.fm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fn = fmul float %i.ez, %i.ez
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.fn)
  %i.fp = tail call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fo)
  %.sroa.16.0.copyload = load <2 x float>, ptr %i.e, align 8, !tbaa !37
  br label %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit

bb.i:                                             ; preds = %bb.g
  %i.fq = fcmp ogt float %i.fj, 1.000000e+00
  br i1 %i.fq, label %_Z7b3MprEqff.exit.thread82.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fr = fadd float %i.fj, -1.000000e+00
  %i.fs = tail call noundef float @llvm.fabs.f32(float %i.fr) ; 2 uses
  %i.ft = fcmp olt float %i.fs, f0x34000000
  br i1 %i.ft, label %_Z7b3MprEqff.exit.thread82.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fu = fcmp olt float %i.fl, 1.000000e+00
  %i.fv = fmul float %i.fl, f0x34000000
  %i.fw = fcmp uge float %i.fs, %i.fv
  %or.cond.i = or i1 %i.fu, %i.fw
  br i1 %or.cond.i, label %_Z7b3MprEqff.exit.thread.i, label %_Z7b3MprEqff.exit.thread82.i

_Z7b3MprEqff.exit.thread82.i:                     ; preds = %bb.k, %bb.j, %bb.i
  %i.fx = fsub float %i.en, %i.ew                 ; 2 uses
  %i.fy = fsub float %i.eq, %i.ey                 ; 2 uses
  %i.fz = fsub float %i.et, %i.fa                 ; 2 uses
  %i.ga = fmul float %i.fy, %i.fy
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fx, float %i.ga)
  %i.gc = tail call noundef float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %i.gb)
  %.sroa.16.0.copyload133 = load <2 x float>, ptr %i.g, align 8 ; 2 uses
  %i.gd = extractelement <2 x float> %.sroa.16.0.copyload133, i64 0
  br label %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit

_Z7b3MprEqff.exit.thread.i:                       ; preds = %bb.k
  %i.ge = fmul float %i.ep, %i.fj
  %i.gf = fmul float %i.es, %i.fj
  %i.gg = fmul float %i.ev, %i.fj
  %i.gh = fadd float %i.eo, %i.ge                 ; 2 uses
  %i.gi = fadd float %i.er, %i.gf                 ; 2 uses
  %i.gj = fadd float %i.eu, %i.gg                 ; 2 uses
  %.sroa.16.8.vec.insert143 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gj, i64 0
  %i.gk = fsub float %i.gh, %i.ew                 ; 2 uses
  %i.gl = fsub float %i.gi, %i.ey                 ; 2 uses
  %i.gm = fsub float %i.gj, %i.fa                 ; 2 uses
  %i.gn = fmul float %i.gl, %i.gl
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gn)
  %i.gp = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.gm, float %i.go)
  br label %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit

_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit: ; preds = %bb.h, %_Z7b3MprEqff.exit.thread82.i, %_Z7b3MprEqff.exit.thread.i
  %i.gq = phi float [ %i.et, %bb.h ], [ %i.gd, %_Z7b3MprEqff.exit.thread82.i ], [ %i.et, %_Z7b3MprEqff.exit.thread.i ] ; 2 uses
  %.sroa.16.0 = phi <2 x float> [ %.sroa.16.0.copyload, %bb.h ], [ %.sroa.16.0.copyload133, %_Z7b3MprEqff.exit.thread82.i ], [ %.sroa.16.8.vec.insert143, %_Z7b3MprEqff.exit.thread.i ]
  %.sroa.12.0 = phi float [ %i.er, %bb.h ], [ %i.eq, %_Z7b3MprEqff.exit.thread82.i ], [ %i.gi, %_Z7b3MprEqff.exit.thread.i ]
  %.sroa.0.0 = phi float [ %i.eo, %bb.h ], [ %i.en, %_Z7b3MprEqff.exit.thread82.i ], [ %i.gh, %_Z7b3MprEqff.exit.thread.i ]
  %.0.i109 = phi float [ %i.fp, %bb.h ], [ %i.gc, %_Z7b3MprEqff.exit.thread82.i ], [ %i.gp, %_Z7b3MprEqff.exit.thread.i ] ; 3 uses
  %i.gr = fcmp olt float %.0.i109, %i.em
  br i1 %i.gr, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit
  %.not91 = icmp eq ptr %4, null
  br i1 %.not91, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store float %.sroa.0.0, ptr %4, align 16
  %.sroa.12.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %.sroa.12.0, ptr %.sroa.12.0..sroa_idx124, align 4
  %.sroa.16.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.16.0, ptr %.sroa.16.0..sroa_idx134, align 8, !tbaa !37
  %.pre = load float, ptr %3, align 16, !tbaa !37
  %.pre245 = load float, ptr %i.f, align 4, !tbaa !37
  %.pre246 = load float, ptr %i.g, align 8, !tbaa !37
  %.pre247 = load float, ptr %0, align 16, !tbaa !37
  %.pre248 = load float, ptr %i.i, align 4, !tbaa !37
  %.pre249 = load float, ptr %i.j, align 8, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit
  %i.gs = phi float [ %.pre249, %bb.m ], [ %i.fa, %bb.l ], [ %i.fa, %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit ] ; 3 uses
  %i.gt = phi float [ %.pre248, %bb.m ], [ %i.ey, %bb.l ], [ %i.ey, %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit ] ; 3 uses
  %i.gu = phi float [ %.pre247, %bb.m ], [ %i.ew, %bb.l ], [ %i.ew, %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit ] ; 3 uses
  %i.gv = phi float [ %.pre246, %bb.m ], [ %i.gq, %bb.l ], [ %i.gq, %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit ] ; 2 uses
  %i.gw = phi float [ %.pre245, %bb.m ], [ %i.eq, %bb.l ], [ %i.eq, %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit ] ; 3 uses
  %i.gx = phi float [ %.pre, %bb.m ], [ %i.en, %bb.l ], [ %i.en, %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit ] ; 3 uses
  %.0 = phi float [ %.0.i109, %bb.m ], [ %.0.i109, %bb.l ], [ %i.em, %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit ] ; 2 uses
  %i.gy = load float, ptr %2, align 16, !tbaa !37 ; 4 uses
  %i.gz = fsub float %i.gx, %i.gy                 ; 4 uses
  %i.ha = load float, ptr %i.a, align 4, !tbaa !37 ; 4 uses
  %i.hb = fsub float %i.gw, %i.ha                 ; 4 uses
  %i.hc = load float, ptr %i.c, align 8, !tbaa !37 ; 3 uses
  %i.hd = fsub float %i.gv, %i.hc                 ; 4 uses
  %i.he = fsub float %i.gy, %i.gu                 ; 3 uses
  %i.hf = fsub float %i.ha, %i.gt                 ; 3 uses
  %i.hg = fsub float %i.hc, %i.gs                 ; 3 uses
  %i.hh = fmul float %i.hb, %i.hf
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.he, float %i.gz, float %i.hh)
  %i.hj = tail call noundef float @llvm.fmuladd.f32(float %i.hg, float %i.hd, float %i.hi)
  %i.hk = fneg float %i.hj
  %i.hl = fmul float %i.hb, %i.hb
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.gz, float %i.hl)
  %i.hn = tail call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.hd, float %i.hm)
  %i.ho = fdiv float %i.hk, %i.hn                 ; 7 uses
  %i.hp = fcmp olt float %i.ho, 0.000000e+00
  br i1 %i.hp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hq = tail call noundef float @llvm.fabs.f32(float %i.ho) ; 3 uses
  %i.hr = fcmp uge float %i.hq, f0x34000000
  br i1 %i.hr, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hs = fmul float %i.hf, %i.hf
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.he, float %i.he, float %i.hs)
  %i.hu = tail call noundef float @llvm.fmuladd.f32(float %i.hg, float %i.hg, float %i.ht)
  %.sroa.16.0.copyload137 = load <2 x float>, ptr %i.c, align 8, !tbaa !37
  br label %_Z27_b3MprVec3PointSegmentDist2PK9b3Vector3S1_S1_PS_.exit116

bb.q:                                             ; preds = %bb.o
end_hunk_0
