Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofConstraint?download=true
inline.NumInlined: 495
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyS3_:bb.a
  %i.bl = fmul float %i.bk, %i.bh                 ; 3 uses
  %i.bm = load float, ptr %i.ae, align 4, !tbaa !13
  %i.bn = fmul float %i.bm, %i.bh                 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 372
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 380
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 388
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 396
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 404
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 408
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !13
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bj, float %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 412
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.bn, float %i.bz)
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 680
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !13
  %i.cg = fmul float %i.cc, %i.cf
  %i.ch = load <2 x float>, ptr %i.bo, align 4, !tbaa !13 ; 2 uses
  %i.ci = load <2 x float>, ptr %i.br, align 4, !tbaa !13 ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ch, <2 x float> %i.ci, <2 x i32> <i32 1, i32 3>
  %i.ck = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %i.cj, %i.cl
  %i.cn = shufflevector <2 x float> %i.ch, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.co = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.cp, <2 x float> %i.cm)
  %i.cr = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.bt, i64 1
  %i.ct = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cu, <2 x float> %i.cq)
  %i.cw = load <2 x float>, ptr %i.cd, align 4, !tbaa !13
  %i.cx = fmul <2 x float> %i.cv, %i.cw
  %i.cy = load <2 x float>, ptr %i.s, align 4, !tbaa !13
  %i.cz = fadd <2 x float> %i.cx, %i.cy
  store <2 x float> %i.cz, ptr %i.s, align 4, !tbaa !13
  %i.da = load float, ptr %.sroa.558.0..sroa_idx, align 4, !tbaa !13
  %i.db = fadd float %i.cg, %i.da
  store float %i.db, ptr %.sroa.558.0..sroa_idx, align 4, !tbaa !13
  %i.dc = fneg float %i.bj                        ; 2 uses
  %i.dd = fneg float %i.bl                        ; 2 uses
  %i.de = fneg float %i.bn                        ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 372
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 380
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 388
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 396
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 404
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 408
  %i.do = load float, ptr %i.dn, align 4, !tbaa !13
  %i.dp = fmul float %i.do, %i.dd
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dc, float %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 412
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !13
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.de, float %i.dq)
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 672
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 680
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !13
  %i.dx = fmul float %i.dt, %i.dw
  %i.dy = load <2 x float>, ptr %i.df, align 4, !tbaa !13 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.di, align 4, !tbaa !13 ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 1, i32 3>
  %i.eb = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.ea, %i.ec
  %i.ee = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.ef = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.eg, <2 x float> %i.ed)
  %i.ei = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.dk, i64 1
  %i.ek = insertelement <2 x float> poison, float %i.de, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.el, <2 x float> %i.eh)
  %i.en = load <2 x float>, ptr %i.du, align 4, !tbaa !13
  %i.eo = fmul <2 x float> %i.em, %i.en
  %i.ep = load <2 x float>, ptr %i.t, align 4, !tbaa !13
  %i.eq = fadd <2 x float> %i.eo, %i.ep
  store <2 x float> %i.eq, ptr %i.t, align 4, !tbaa !13
  %i.er = load float, ptr %.sroa.555.0..sroa_idx, align 4, !tbaa !13
  %i.es = fadd float %i.dx, %i.er
  store float %i.es, ptr %.sroa.555.0..sroa_idx, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d, %bb.a
  %.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.bh, %bb.h ], [ 0.000000e+00, %bb.d ]
  ret float %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN25btTranslationalLimitMotor14testLimitValueEif(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(188) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 6 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !tbaa !13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.a
  %i.f = load float, ptr %i.e, align 4, !tbaa !13 ; 3 uses
  %i.g = fcmp ogt float %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.a
  store i32 0, ptr %i.i, align 4, !tbaa !55
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt float %2, %i.c
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.a
  store i32 2, ptr %i.l, align 4, !tbaa !55
  %i.m = fsub float %2, %i.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = fcmp ogt float %2, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.a ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.p, align 4, !tbaa !55
  %i.q = fsub float %2, %i.f
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.p, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.sink = phi float [ 0.000000e+00, %bb.g ], [ %i.q, %bb.f ], [ %i.m, %bb.d ], [ 0.000000e+00, %bb.b ]
  %.0 = phi i32 [ 0, %bb.g ], [ 1, %bb.f ], [ 2, %bb.d ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.a
  store float %.sink, ptr %i.s, align 4, !tbaa !13
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyRK9btVector3S1_S4_iS4_S4_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(188) %0, float noundef %1, float noundef %2, ptr noundef nonnull align 8 dereferenceable(744) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(744) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, i32 noundef %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %9) local_unnamed_addr #3 align 2 {
bb.a:
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 6 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load <2 x float>, ptr %9, align 4, !tbaa !13 ; 2 uses
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !13
  %i.d = fsub <2 x float> %i.b, %i.c              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.h = load float, ptr %i.g, align 8, !tbaa !13
  %i.i = fsub float %i.f, %i.h                    ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.i, i64 0
  store <2 x float> %i.d, ptr %10, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.l = load <2 x float>, ptr %i.k, align 8, !tbaa !13
  %i.m = fsub <2 x float> %i.b, %i.l              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.o = load float, ptr %i.n, align 8, !tbaa !13
  %i.p = fsub float %i.f, %i.o                    ; 3 uses
  %.sroa.3.12.vec.insert.i49 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  store <2 x float> %i.m, ptr %11, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i49, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 420
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 436
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 444
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  %i.v = load float, ptr %i.r, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 420
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 436
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 440
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 444
  %i.ab = load <2 x float>, ptr %i.s, align 4, !tbaa !13
  %i.ac = load <2 x float>, ptr %i.z, align 8, !tbaa !13 ; 3 uses
  %14 = load <4 x float>, ptr %i.aa, align 4
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ad = shufflevector <2 x float> %i.d, <2 x float> %i.m, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %i.ae = insertelement <4 x float> %i.ad, float %i.i, i64 0
  %i.af = fneg <4 x float> %i.ae
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %i.ah = insertelement <4 x float> %i.ag, float %i.u, i64 2 ; 2 uses
  %i.ai = fmul <4 x float> %i.ah, %i.af
  %i.aj = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.ah, <4 x float> %i.aj, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.al = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.am = insertelement <4 x float> %i.al, float %i.i, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.p, i64 3
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.an, <4 x float> %i.ai)
  %i.ap = load float, ptr %i.y, align 4, !tbaa !13 ; 2 uses
  %i.aq = load float, ptr %i.x, align 4, !tbaa !13
  %16 = load <4 x float>, ptr %i.w, align 8
  %i.ar = insertelement <4 x float> poison, float %i.v, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %i.aq, i64 3
  %i.at = shufflevector <4 x float> %16, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = fadd <4 x float> %i.at, %i.ao           ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 424
  %i.aw = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ax = insertelement <2 x float> %i.aw, float %i.p, i64 0
  %i.ay = fneg <2 x float> %i.ax
  %i.az = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ba = insertelement <2 x float> %i.az, float %i.ap, i64 0
  %i.bb = fmul <2 x float> %i.ba, %i.ay
  %i.bc = insertelement <2 x float> %15, float %i.ap, i64 1
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.m, <2 x float> %i.bb)
  %i.be = load <2 x float>, ptr %i.av, align 8, !tbaa !13
  %i.bf = fadd <2 x float> %i.be, %i.bd           ; 2 uses
  %shift = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.au, %shift
  %i.bg = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.bh = extractelement <4 x float> %i.au, i64 0
  %i.bi = extractelement <2 x float> %i.bf, i64 0
  %i.bj = fsub float %i.bh, %i.bi
  %i.bk = extractelement <4 x float> %i.au, i64 1
  %i.bl = extractelement <2 x float> %i.bf, i64 1
  %i.bm = fsub float %i.bk, %i.bl
  %i.bn = load float, ptr %8, align 4, !tbaa !13  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !13 ; 2 uses
  %i.bq = fmul float %i.bj, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bg, float %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !13 ; 2 uses
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bm, float %i.br)
  %i.bv = load float, ptr %4, align 4, !tbaa !13
  %i.bw = load float, ptr %6, align 4, !tbaa !13
  %i.bx = fsub float %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ca = load <2 x float>, ptr %i.by, align 4, !tbaa !13
  %i.cb = load <2 x float>, ptr %i.bz, align 4, !tbaa !13
  %i.cc = fsub <2 x float> %i.ca, %i.cb           ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0
  %i.ce = fmul float %i.bp, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bn, float %i.ce)
  %i.cg = extractelement <2 x float> %i.cc, i64 1
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.bt, float %i.cf)
  %i.ci = fneg float %i.ch                        ; 5 uses
  %i.cj = sext i32 %7 to i64                      ; 3 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !13 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cj
  %i.co = load float, ptr %i.cn, align 4, !tbaa !13 ; 3 uses
  %i.cp = fcmp olt float %i.cl, %i.co
  br i1 %i.cp, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.cq = fcmp olt float %i.co, %i.ci
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cr = fsub float %i.ci, %i.co
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.cs = fcmp ogt float %i.cl, %i.ci
  br i1 %i.cs, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ct = fsub float %i.ci, %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.a
  %.041 = phi float [ %i.cr, %bb.c ], [ %i.ct, %bb.e ], [ %i.ci, %bb.a ]
  %.040 = phi float [ 0.000000e+00, %bb.c ], [ f0xDD5E0B6B, %bb.e ], [ f0xDD5E0B6B, %bb.a ]
  %.0 = phi float [ f0x5D5E0B6B, %bb.c ], [ 0.000000e+00, %bb.e ], [ f0x5D5E0B6B, %bb.a ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !56
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !15
  %i.cy = fmul float %.041, %i.cx
  %i.cz = fdiv float %i.cy, %1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.db = load float, ptr %i.da, align 4, !tbaa !57
  %i.dc = fneg float %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.bu, float %i.cz)
  %i.de = fmul float %i.cv, %i.dd
  %i.df = fmul float %2, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !13 ; 2 uses
  %i.dj = fadd float %i.di, %i.df                 ; 3 uses
  %i.dk = fcmp ogt float %i.dj, %.0
  %i.dl = fcmp olt float %i.dj, %.040
  %i.dm = or i1 %i.dk, %i.dl
  %i.dn = select i1 %i.dm, float 0.000000e+00, float %i.dj ; 2 uses
  store float %i.dn, ptr %i.dh, align 4, !tbaa !13
  %i.do = fsub float %i.dn, %i.di                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.dp = load <2 x float>, ptr %8, align 4, !tbaa !13
  %i.dq = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dp, %i.dr
  %i.dt = load float, ptr %i.bs, align 4, !tbaa !13
  %i.du = fmul float %i.dt, %i.do
  %.sroa.3.12.vec.insert.i69 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.du, i64 0
  store <2 x float> %i.ds, ptr %12, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i69, ptr %i.dv, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %3, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.dw = load <2 x float>, ptr %12, align 8, !tbaa !13
  %i.dx = fneg <2 x float> %i.dw
  %i.dy = load float, ptr %i.dv, align 8, !tbaa !13
  %i.dz = fneg float %i.dy
  %.sroa.3.12.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dz, i64 0
  store <2 x float> %i.dx, ptr %13, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %i.ea, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %5, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.042 = phi float [ %i.do, %bb.f ], [ 0.000000e+00, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  ret float %.042
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.b = load float, ptr %i.a, align 4, !tbaa !58 ; 3 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = load float, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %i.j = fmul float %i.g, %i.i
  %i.k = fmul float %i.b, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !13
  %i.n = load <2 x float>, ptr %i.d, align 8, !tbaa !13 ; 3 uses
  %i.o = fmul <2 x float> %i.m, %i.n
  %i.p = insertelement <2 x float> poison, float %i.b, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.q, %i.o
  %i.s = load <2 x float>, ptr %i.l, align 4, !tbaa !13
  %i.t = fadd <2 x float> %i.r, %i.s
  store <2 x float> %i.t, ptr %i.l, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = fadd float %i.k, %i.v
  store float %i.w, ptr %i.u, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.y = load float, ptr %1, align 4, !tbaa !13
  %i.z = extractelement <2 x float> %i.n, i64 0
  %i.aa = fmul float %i.z, %i.y                   ; 2 uses
  %i.ab = load float, ptr %i.e, align 4, !tbaa !13
  %i.ac = extractelement <2 x float> %i.n, i64 1
  %i.ad = fmul float %i.ab, %i.ac                 ; 2 uses
  %i.ae = load float, ptr %i.f, align 4, !tbaa !13
  %i.af = fmul float %i.ae, %i.i                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !13 ; 2 uses
  %i.ak = fneg float %i.ad
  %i.al = fmul float %i.aj, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %i.al) ; 2 uses
  %i.an = load float, ptr %2, align 4, !tbaa !13  ; 2 uses
  %i.ao = fneg float %i.af
  %i.ap = fmul float %i.an, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aa, float %i.ap) ; 2 uses
  %i.ar = fneg float %i.aa
  %i.as = fmul float %i.ah, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ad, float %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 380
  %3 = load <4 x float>, ptr %i.av, align 4
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !13
  %i.bd = fmul float %i.aq, %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.am, float %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !13
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.at, float %i.be)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !13
  %i.bk = fmul float %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.au, align 4, !tbaa !13 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.aw, align 4, !tbaa !13 ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.bp = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bo, %i.bq
  %i.bs = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bt = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.br)
  %i.bw = insertelement <2 x float> %4, float %i.ay, i64 1
  %i.bx = insertelement <2 x float> poison, float %i.at, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.by, <2 x float> %i.bv)
  %i.ca = load <2 x float>, ptr %i.x, align 8, !tbaa !13
  %i.cb = fmul <2 x float> %i.bz, %i.ca
  %i.cc = load <2 x float>, ptr %i.bl, align 4, !tbaa !13
  %i.cd = fadd <2 x float> %i.cb, %i.cc
  store <2 x float> %i.cd, ptr %i.bl, align 4, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !13
  %i.cg = fadd float %i.bk, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint18calculateAngleInfoEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1333) initializes((1216, 1228), (1232, 1280)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.e = load float, ptr %i.d, align 8, !tbaa !13, !noalias !71 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.g = load float, ptr %i.f, align 8, !tbaa !13, !noalias !71 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.j = load float, ptr %i.i, align 8, !tbaa !13, !noalias !71 ; 7 uses
  %i.k = insertelement <2 x float> poison, float %i.g, i64 0 ; 2 uses
  %i.l = insertelement <2 x float> %i.k, float %i.e, i64 1
  %i.m = fneg <2 x float> %i.l                    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.r = load float, ptr %i.q, align 8, !tbaa !13, !noalias !74
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.t = load float, ptr %i.s, align 8, !tbaa !13, !noalias !74
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.v = load float, ptr %i.u, align 8, !tbaa !13, !noalias !74
  %i.w = load <2 x float>, ptr %i.c, align 8, !tbaa !13, !noalias !71 ; 3 uses
  %i.x = load float, ptr %i.h, align 4, !tbaa !13, !noalias !71 ; 2 uses
  %i.y = fneg <2 x float> %i.w                    ; 2 uses
  %i.z = fneg float %i.x
  %i.aa = fmul float %i.g, %i.z
  %i.ab = load <2 x float>, ptr %i.b, align 8, !tbaa !13, !noalias !71 ; 5 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.e, float %i.aa) ; 2 uses
  %i.ae = load <2 x float>, ptr %i.a, align 8, !tbaa !13, !noalias !71 ; 6 uses
  %i.af = fneg float %i.ac
  %i.ag = fmul float %i.j, %i.af
  %i.ah = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.g, float %i.ag)
  %i.aj = shufflevector <2 x float> %i.m, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %i.ak = fmul <2 x float> %i.ab, %i.aj
  %i.al = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.am = insertelement <2 x float> %i.al, float %i.g, i64 0
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.w, <2 x float> %i.ak) ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %i.ap = fmul float %i.ah, %i.ao
  %i.aq = extractelement <2 x float> %i.ae, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ad, float %i.ap)
  %i.as = extractelement <2 x float> %i.an, i64 1
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.as, float %i.ar)
  %i.au = fdiv float 1.000000e+00, %i.at          ; 4 uses
  %i.av = fmul float %i.ad, %i.au                 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ae, %i.m
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.x, float %i.aw)
  %i.ay = fmul float %i.ax, %i.au                 ; 2 uses
  %i.az = fmul float %i.ai, %i.au                 ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bc = fmul <2 x float> %i.an, %i.bb           ; 3 uses
  %i.bd = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.be = insertelement <2 x float> %i.bd, float %i.j, i64 0 ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.y
  %i.bg = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x float> %i.bg, float %i.e, i64 0
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = fmul <2 x float> %i.bi, %i.bb           ; 3 uses
  %i.bk = shufflevector <2 x float> %i.k, <2 x float> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.bl = fneg <2 x float> %i.bk
  %i.bm = fmul <2 x float> %i.ae, %i.bl
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.ab, <2 x float> %i.bm)
  %i.bo = fmul <2 x float> %i.bn, %i.bb           ; 3 uses
  %i.bp = load <2 x float>, ptr %i.o, align 8, !tbaa !13, !noalias !74 ; 5 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 4 uses
  %i.br = fmul float %i.bq, %i.ay
  %i.bs = load <2 x float>, ptr %i.n, align 8, !tbaa !13, !noalias !74 ; 5 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 3 uses
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.av, float %i.br)
  %i.bv = load <2 x float>, ptr %i.p, align 8, !tbaa !13, !noalias !74 ; 5 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0 ; 3 uses
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.az, float %i.bu)
  %i.by = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bz = fmul float %i.ay, %i.by
  %i.ca = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.av, float %i.bz)
  %i.cc = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.az, float %i.cb) ; 2 uses
  %i.ce = fmul <2 x float> %i.bj, %i.bp
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bc, <2 x float> %i.ce)
  %i.cg = extractelement <2 x float> %i.bj, i64 0
  %i.ch = fmul float %i.cg, %i.by
  %i.ci = extractelement <2 x float> %i.bc, i64 0
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ci, float %i.ch)
  %i.ck = extractelement <2 x float> %i.bo, i64 0
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.ck, float %i.cj) ; 2 uses
  %i.cm = extractelement <2 x float> %i.bj, i64 1 ; 2 uses
  %i.cn = fmul float %i.bq, %i.cm
  %i.co = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.co, float %i.cn)
  %i.cq = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.cq, float %i.cp) ; 4 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bo, <2 x float> %i.cf)
  %i.ct = fmul float %i.cm, %i.t
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.r, float %i.co, float %i.ct)
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.cq, float %i.cu)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %i.cx = fcmp olt float %i.cr, 1.000000e+00
  br i1 %i.cx, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.cy = fcmp ogt float %i.cr, -1.000000e+00
  br i1 %i.cy, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cz = fneg <2 x float> %i.cs                  ; 2 uses
  %i.da = extractelement <2 x float> %i.cz, i64 1
  %i.db = tail call noundef float @atan2f(float noundef %i.da, float noundef %i.cv) #22
  store float %i.db, ptr %i.cw, align 8, !tbaa !13
  %i.dc = fcmp ogt float %i.cr, 1.000000e+00
  %.1.i.i = select i1 %i.dc, float 1.000000e+00, float %i.cr
  %i.dd = tail call noundef float @asinf(float noundef %.1.i.i) #22
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store float %i.dd, ptr %i.de, align 4, !tbaa !13
  %i.df = extractelement <2 x float> %i.cz, i64 0
  %i.dg = tail call noundef float @atan2f(float noundef %i.df, float noundef %i.bx) #22
  br label %_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit

bb.d:                                             ; preds = %bb.b
  %i.dh = tail call noundef float @atan2f(float noundef %i.cd, float noundef %i.cl) #22
  %i.di = fneg float %i.dh
  store float %i.di, ptr %i.cw, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store float f0xBFC90FDB, ptr %i.dj, align 4, !tbaa !13
  br label %_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit

bb.e:                                             ; preds = %bb.a
  %i.dk = tail call noundef float @atan2f(float noundef %i.cd, float noundef %i.cl) #22
  store float %i.dk, ptr %i.cw, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store float f0x3FC90FDB, ptr %i.dl, align 4, !tbaa !13
  br label %_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit

_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sink.i = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ %i.dg, %bb.c ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store float %.sink.i, ptr %i.dm, align 8, !tbaa !13
  %i.dn = fneg float %i.bq
  %i.do = shufflevector <2 x float> %i.bv, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dp = fneg <2 x float> %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.dt = fneg float %i.j
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.j, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.g, i64 1
  %i.dx = fmul <2 x float> %i.dw, %i.dp
  %i.dy = fmul float %i.e, %i.dn
  %i.dz = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.j, i64 1 ; 2 uses
  %i.eb = shufflevector <2 x float> %i.bs, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.eb, <2 x float> %i.dx) ; 7 uses
  %i.ed = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ec, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.ed, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !12
  %i.ee = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.ef = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.eg = fmul float %i.ef, %i.dt
  %i.eh = fneg <2 x float> %i.ec
  %i.ei = fmul <2 x float> %i.do, %i.eh
  %i.ej = shufflevector <2 x float> %i.bv, <2 x float> %i.bp, <2 x i32> <i32 2, i32 0>
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.g, float %i.bw, float %i.dy) ; 5 uses
  %i.el = insertelement <2 x float> %i.ee, float %i.ek, i64 1 ; 2 uses
  %i.em = fmul <2 x float> %i.el, %i.m
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ea, <2 x float> %i.em) ; 4 uses
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.g, float %i.eg) ; 4 uses
  %.sroa.3.12.vec.insert.i17 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eo, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i17, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.el, <2 x float> %i.ei) ; 3 uses
  %i.eq = fneg float %i.ek
end_hunk_0
begin_hunk_1_@_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi:bb.a
  %i.ab = fcmp ogt float %i.z, f0x40490FDB
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = fadd float %i.z, f0xC0C90FDB
  store float %i.ac, ptr %i.aa, align 4, !tbaa !23
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = fcmp olt float %i.z, f0xC0490FDB
  br i1 %i.ad, label %bb.l, label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = fadd float %i.z, f0x40C90FDB
  store float %i.ae, ptr %i.aa, align 4, !tbaa !23
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.m:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 4, !tbaa !22
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

_ZN22btRotationalLimitMotor14testLimitValueEf.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m
  %i.af = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ false, %bb.m ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ah = load i8, ptr %i.ag, align 8, !range !50
  %i.ai = icmp ne i8 %i.ah, 0
  %or.cond.not.i = select i1 %i.af, i1 true, i1 %i.ai
  ret i1 %or.cond.not.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = fcmp ult float %1, %2
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %0, %1
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = fsub float %1, %0
  %i.d = tail call noundef float @fmodf(float noundef %i.c, float noundef f0x40C90FDB) #22 ; 5 uses
  %i.e = fcmp olt float %i.d, f0xC0490FDB
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fadd float %i.d, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ogt float %i.d, f0x40490FDB
  br i1 %i.g, label %bb.f, label %_Z16btNormalizeAnglef.exit

bb.f:                                             ; preds = %bb.e
  %i.h = fadd float %i.d, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit

_Z16btNormalizeAnglef.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi float [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.d, %bb.e ]
  %i.i = tail call noundef float @llvm.fabs.f32(float %.0.i)
  %i.j = fsub float %2, %0
  %i.k = tail call noundef float @fmodf(float noundef %i.j, float noundef f0x40C90FDB) #22 ; 5 uses
  %i.l = fcmp olt float %i.k, f0xC0490FDB
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.m = fadd float %i.k, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit29

bb.h:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.n = fcmp ogt float %i.k, f0x40490FDB
  br i1 %i.n, label %bb.i, label %_Z16btNormalizeAnglef.exit29

bb.i:                                             ; preds = %bb.h
  %i.o = fadd float %i.k, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit29

_Z16btNormalizeAnglef.exit29:                     ; preds = %bb.g, %bb.h, %bb.i
  %.0.i28 = phi float [ %i.m, %bb.g ], [ %i.o, %bb.i ], [ %i.k, %bb.h ]
  %i.p = tail call noundef float @llvm.fabs.f32(float %.0.i28)
  %i.q = fcmp olt float %i.i, %i.p
  %i.r = fadd float %0, f0x40C90FDB
  %i.s = select i1 %i.q, float %0, float %i.r
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.t = fcmp ogt float %0, %2
  br i1 %i.t, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.u = fsub float %0, %2
  %i.v = tail call noundef float @fmodf(float noundef %i.u, float noundef f0x40C90FDB) #22 ; 5 uses
  %i.w = fcmp olt float %i.v, f0xC0490FDB
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = fadd float %i.v, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit31

bb.m:                                             ; preds = %bb.k
  %i.y = fcmp ogt float %i.v, f0x40490FDB
  br i1 %i.y, label %bb.n, label %_Z16btNormalizeAnglef.exit31

bb.n:                                             ; preds = %bb.m
  %i.z = fadd float %i.v, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit31

_Z16btNormalizeAnglef.exit31:                     ; preds = %bb.l, %bb.m, %bb.n
  %.0.i30 = phi float [ %i.x, %bb.l ], [ %i.z, %bb.n ], [ %i.v, %bb.m ]
  %i.aa = tail call noundef float @llvm.fabs.f32(float %.0.i30)
  %i.ab = fsub float %0, %1
  %i.ac = tail call noundef float @fmodf(float noundef %i.ab, float noundef f0x40C90FDB) #22 ; 5 uses
  %i.ad = fcmp olt float %i.ac, f0xC0490FDB
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ae = fadd float %i.ac, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit33

bb.p:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.af = fcmp ogt float %i.ac, f0x40490FDB
  br i1 %i.af, label %bb.q, label %_Z16btNormalizeAnglef.exit33

bb.q:                                             ; preds = %bb.p
  %i.ag = fadd float %i.ac, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit33

_Z16btNormalizeAnglef.exit33:                     ; preds = %bb.o, %bb.p, %bb.q
  %.0.i32 = phi float [ %i.ae, %bb.o ], [ %i.ag, %bb.q ], [ %i.ac, %bb.p ]
  %i.ah = tail call noundef float @llvm.fabs.f32(float %.0.i32)
  %i.ai = fcmp olt float %i.ah, %i.aa
  %i.aj = fadd float %0, f0xC0C90FDB
  %i.ak = select i1 %i.ai, float %i.aj, float %0
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.a, %_Z16btNormalizeAnglef.exit33, %_Z16btNormalizeAnglef.exit29
  %.0 = phi float [ %0, %bb.a ], [ %i.s, %_Z16btNormalizeAnglef.exit29 ], [ %i.ak, %_Z16btNormalizeAnglef.exit33 ], [ %0, %bb.j ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btGeneric6DofConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1333) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 6 uses
  %2 = alloca %class.btVector3, align 4           ; 6 uses
  %3 = alloca %class.btVector3, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1332
  %i.b = load i8, ptr %i.a, align 4, !tbaa !37, !range !50, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 952
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38, !nonnull !39, !align !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %i.n)
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(1333) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1324 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ab = load float, ptr %i.s, align 8, !tbaa !13
  %i.ac = load float, ptr %i.h, align 8, !tbaa !13
  %i.ad = fcmp ult float %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i8, ptr %i.t, align 4, !tbaa !26, !range !50, !noundef !39
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i = load <2 x float>, ptr %i.x, align 8
  %i.ag = load float, ptr %i.y, align 8, !tbaa !13
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ag, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i18 = load <2 x float>, ptr %i.u, align 8
  %i.ah = load float, ptr %i.v, align 8, !tbaa !13
  %.sroa.0.4.vec.insert.i19 = insertelement <2 x float> %.sroa.0.0.vec.insert.i18, float %i.ah, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.in = phi ptr [ %i.w, %bb.e ], [ %i.z, %bb.d ]
  %storemerge40 = phi <2 x float> [ %.sroa.0.4.vec.insert.i19, %bb.e ], [ %.sroa.0.4.vec.insert.i, %bb.d ]
  %.sink = load float, ptr %.sink.in, align 4, !tbaa !13
  %.sroa.3.12.vec.insert.i20 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  store <2 x float> %storemerge40, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i20, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = fcmp ult float %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i8, ptr %i.t, align 4, !tbaa !26, !range !50, !noundef !39
  %i.ao = trunc nuw i8 %i.an to i1                ; 3 uses
  %. = select i1 %i.ao, i64 1092, i64 1156
  %.67 = select i1 %i.ao, i64 1108, i64 1172
  %.68 = select i1 %i.ao, i64 1124, i64 1188
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.67
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.68
  %4 = load <1 x float>, ptr %i.ap, align 4
  %.sroa.0.0.vec.insert.i.1 = shufflevector <1 x float> %4, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.as = load float, ptr %i.aq, align 4, !tbaa !13
  %.sroa.0.4.vec.insert.i.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.1, float %i.as, i64 1
  %i.at = load float, ptr %i.ar, align 4, !tbaa !13
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.1, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 284
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.aw = load float, ptr %i.av, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !13
  %i.az = fcmp ult float %i.aw, %i.ay
  br i1 %i.az, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.t, align 4, !tbaa !26, !range !50, !noundef !39
  %i.bb = trunc nuw i8 %i.ba to i1                ; 3 uses
  %.69 = select i1 %i.bb, i64 1096, i64 1160
  %.70 = select i1 %i.bb, i64 1112, i64 1176
  %.71 = select i1 %i.bb, i64 1128, i64 1192
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.69
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.70
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.71
  %5 = load <1 x float>, ptr %i.bc, align 8
  %.sroa.0.0.vec.insert.i.2 = shufflevector <1 x float> %5, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bf = load float, ptr %i.bd, align 8, !tbaa !13
  %.sroa.0.4.vec.insert.i.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.2, float %i.bf, i64 1
  %i.bg = load float, ptr %i.be, align 8, !tbaa !13
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bg, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 368
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 452
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.x ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !13
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %indvars.iv ; 10 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !49
  %i.bs = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bn, float noundef %i.bp, float noundef %i.br) ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  store float %i.bs, ptr %i.bt, align 8, !tbaa !109
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !48 ; 3 uses
  %i.bv = load float, ptr %i.bq, align 8, !tbaa !49 ; 3 uses
  %i.bw = fcmp ogt float %i.bu, %i.bv
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 0, ptr %i.bx, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.m:                                             ; preds = %bb.k
  %i.by = fcmp olt float %i.bs, %i.bu
  br i1 %i.by, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 1, ptr %i.bz, align 4, !tbaa !22
  %i.ca = fsub float %i.bs, %i.bu                 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 3 uses
  store float %i.ca, ptr %i.cb, align 4, !tbaa !23
  %i.cc = fcmp ogt float %i.ca, f0x40490FDB
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = fadd float %i.ca, f0xC0C90FDB
  store float %i.cd, ptr %i.cb, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ce = fcmp olt float %i.ca, f0xC0490FDB
  br i1 %i.ce, label %bb.q, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cf = fadd float %i.ca, f0x40C90FDB
  store float %i.cf, ptr %i.cb, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.r:                                             ; preds = %bb.m
  %i.cg = fcmp ogt float %i.bs, %i.bv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 2 uses
  br i1 %i.cg, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %i.ch, align 4, !tbaa !22
  %i.ci = fsub float %i.bs, %i.bv                 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 3 uses
  store float %i.ci, ptr %i.cj, align 4, !tbaa !23
  %i.ck = fcmp ogt float %i.ci, f0x40490FDB
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = fadd float %i.ci, f0xC0C90FDB
  store float %i.cl, ptr %i.cj, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = fcmp olt float %i.ci, f0xC0490FDB
  br i1 %i.cm, label %bb.v, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cn = fadd float %i.ci, f0x40C90FDB
  store float %i.cn, ptr %i.cj, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.w:                                             ; preds = %bb.r
  store i32 0, ptr %i.ch, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.l, %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.cp = load i8, ptr %i.co, align 8, !range !50
  %.not = icmp eq i8 %i.cp, 0
  br i1 %.not, label %bb.x, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %bb.v, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.cq, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12 ; 2 uses
  %i.cr = getelementptr inbounds nuw [84 x i8], ptr %i.bl, i64 %indvars.iv ; 10 uses
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !38, !nonnull !39, !align !40 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cz = load float, ptr %i.cw, align 8, !tbaa !13, !noalias !110
  %i.da = load float, ptr %i.cx, align 8, !tbaa !13, !noalias !110
  %i.db = load float, ptr %i.cy, align 8, !tbaa !13, !noalias !110
  %i.dc = load ptr, ptr %i.l, align 8, !tbaa !41, !nonnull !39, !align !40 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dj = load float, ptr %i.dg, align 8, !tbaa !13, !noalias !113
  %i.dk = load float, ptr %i.dh, align 8, !tbaa !13, !noalias !113
  %i.dl = load float, ptr %i.di, align 8, !tbaa !13, !noalias !113
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 504
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 504
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ds = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.dt = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.du = extractelement <2 x float> %.sroa.2.0.copyload.i, i64 0 ; 2 uses
  %i.dv = load <2 x float>, ptr %i.ct, align 8, !tbaa !13, !noalias !110
  %i.dw = load <2 x float>, ptr %i.cu, align 8, !tbaa !13, !noalias !110
  %i.dx = load <2 x float>, ptr %i.cv, align 8, !tbaa !13, !noalias !110
  %i.dy = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x float> %i.dw, %i.dy
  %i.ea = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.ea, <2 x float> %i.dz)
  %i.ec = shufflevector <2 x float> %.sroa.2.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.ec, <2 x float> %i.eb) ; 4 uses
  %i.ee = fmul float %i.da, %i.dt
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.ds, float %i.ee)
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.du, float %i.ef) ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eg, i64 0
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.eh = fneg float %i.ds                        ; 2 uses
  %i.ei = fneg float %i.dt                        ; 2 uses
  %i.ej = fneg float %i.du                        ; 2 uses
  %i.ek = load <2 x float>, ptr %i.dd, align 8, !tbaa !13, !noalias !113
  %i.el = load <2 x float>, ptr %i.de, align 8, !tbaa !13, !noalias !113
  %i.em = load <2 x float>, ptr %i.df, align 8, !tbaa !13, !noalias !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.cr, i8 0, i64 16, i1 false)
  store <2 x float> %i.ed, ptr %i.do, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !tbaa !12
  %i.en = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.el, %i.eo
  %i.eq = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.er, <2 x float> %i.ep)
  %i.et = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.eu, <2 x float> %i.es) ; 4 uses
  %i.ew = fmul float %i.dk, %i.ei
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.eh, float %i.ew)
  %i.ey = tail call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.ej, float %i.ex) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ey, i64 0
  store <2 x float> %i.ev, ptr %i.dp, align 4
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.i, ptr %.sroa.44.0..sroa_idx.i.i, align 4, !tbaa !12
  %i.ez = extractelement <2 x float> %i.ed, i64 0
  %i.fa = load <2 x float>, ptr %i.dm, align 8, !tbaa !13
  %i.fb = fmul <2 x float> %i.ed, %i.fa           ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cs, i64 512
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !13
  %i.fe = fmul float %i.eg, %i.fd                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fe, i64 0
  store <2 x float> %i.fb, ptr %i.dq, align 4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !tbaa !12
  %i.ff = extractelement <2 x float> %i.ev, i64 0
  %i.fg = load <2 x float>, ptr %i.dn, align 8, !tbaa !13
  %i.fh = fmul <2 x float> %i.ev, %i.fg           ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dc, i64 512
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !13
  %i.fk = fmul float %i.ey, %i.fj                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fk, i64 0
  store <2 x float> %i.fh, ptr %i.dr, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !12
  %foldExtExtBinop = fmul <2 x float> %i.ed, %i.fb
  %i.fl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fm = extractelement <2 x float> %i.fb, i64 0
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.ez, float %i.fl)
end_hunk_1
begin_hunk_2_@_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_:bb.a
  %i.z = add nsw i32 %i.y, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.1 = phi i32 [ %i.z, %bb.h ], [ %2, %bb.a ]    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1012
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.af = load i8, ptr %i.ae, align 8, !range !50
  %i.ag = icmp ne i8 %i.af, 0
  %or.cond.not.i.1 = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.not.i.1, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %.sroa.2.0.copyload.i.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.1, align 8, !tbaa !12
  store <2 x float> %.sroa.0.0.copyload.i.1, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i.1, ptr %i.b, align 8
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  %i.aj = and i32 %i.ai, 4096
  %.not.1 = icmp eq i32 %i.aj, 0
  br i1 %.not.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 984
  store float %i.al, ptr %i.am, align 8, !tbaa !124
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = and i32 %i.ai, 8192
  %.not30.1 = icmp eq i32 %i.an, 0
  br i1 %.not30.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 992
  store float %i.ap, ptr %i.aq, align 8, !tbaa !125
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = and i32 %i.ai, 16384
  %.not31.1 = icmp eq i32 %i.ar, 0
  br i1 %.not31.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = load float, ptr %i.e, align 4, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 988
  store float %i.as, ptr %i.at, align 4, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.au = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull %i.aa, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1, i32 noundef 0)
  %i.av = add nsw i32 %i.au, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.1.1 = phi i32 [ %i.av, %bb.p ], [ %.1, %bb.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !22
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bb = load i8, ptr %i.ba, align 8, !range !50
  %i.bc = icmp ne i8 %i.bb, 0
  %or.cond.not.i.2 = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond.not.i.2, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %.sroa.0.0.copyload.i.2 = load <2 x float>, ptr %i.bd, align 8
  %.sroa.2.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.sroa.2.0.copyload.i.2 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.2, align 8, !tbaa !12
  store <2 x float> %.sroa.0.0.copyload.i.2, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i.2, ptr %i.b, align 8
  %i.be = load i32, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  %i.bf = and i32 %i.be, 32768
  %.not.2 = icmp eq i32 %i.bf, 0
  br i1 %.not.2, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store float %i.bh, ptr %i.bi, align 8, !tbaa !124
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = and i32 %i.be, 65536
  %.not30.2 = icmp eq i32 %i.bj, 0
  br i1 %.not30.2, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store float %i.bl, ptr %i.bm, align 8, !tbaa !125
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = and i32 %i.be, 131072
  %.not31.2 = icmp eq i32 %i.bn, 0
  br i1 %.not31.2, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = load float, ptr %i.e, align 4, !tbaa !126
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store float %i.bo, ptr %i.bp, align 4, !tbaa !52
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull %i.aw, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1, i32 noundef 0)
  %i.br = add nsw i32 %i.bq, %.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.1.2 = phi i32 [ %i.br, %bb.x ], [ %.1.1, %bb.q ]
  ret i32 %.1.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %8) local_unnamed_addr #3 align 2 {
.peel.begin:
  %9 = alloca %class.btRotationalLimitMotor, align 4 ; 22 uses
  %10 = alloca %class.btVector3, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 60
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1325 ; 3 uses
  %i.y = load i32, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %.pre = load i8, ptr %i.o, align 4, !tbaa !18, !range !50 ; 2 uses
  %i.aa = icmp eq i8 %.pre, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %.peel.next, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 864
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !20
  store i32 %i.y, ptr %i.k, align 4, !tbaa !22
  %i.al = load float, ptr %i.ak, align 8, !tbaa !13
  store float %i.al, ptr %i.p, align 4, !tbaa !109
  %i.am = load float, ptr %i.aj, align 8, !tbaa !13
  store float %i.am, ptr %i.l, align 4, !tbaa !23
  store i8 %.pre, ptr %i.m, align 4, !tbaa !24
  %i.an = load float, ptr %i.ai, align 8, !tbaa !13
  store float %i.an, ptr %i.e, align 4, !tbaa !49
  %i.ao = load <2 x float>, ptr %i.q, align 8, !tbaa !13
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ap, ptr %i.j, align 4, !tbaa !13
  %i.aq = load float, ptr %i.ah, align 8, !tbaa !13
  store float %i.aq, ptr %9, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !127
  %i.ar = load float, ptr %i.ag, align 8, !tbaa !13
  store float %i.ar, ptr %i.c, align 4, !tbaa !128
  %i.as = load float, ptr %i.af, align 8, !tbaa !13
  store float %i.as, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %.sroa.0.0.vec.insert.i.peel = load <2 x float>, ptr %i.ae, align 8
  %i.at = load float, ptr %i.ad, align 8, !tbaa !13
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.at, i64 1
  %i.au = load float, ptr %i.ac, align 8, !tbaa !13
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.peel, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel, ptr %i.r, align 8
  %i.av = load i32, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.aw = and i32 %i.av, 1
  %.not.peel = icmp eq i32 %i.aw, 0
  br i1 %.not.peel, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !121
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.in.peel = phi ptr [ %i.ax, %bb.b ], [ %i.ab, %bb.a ]
  %i.ay = load float, ptr %.in.peel, align 4, !tbaa !13
  store float %i.ay, ptr %i.f, align 4, !tbaa !124
  %i.az = and i32 %i.av, 2
  %.not48.peel = icmp eq i32 %i.az, 0
  br i1 %.not48.peel, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !121
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.in49.peel = phi ptr [ %i.ba, %bb.d ], [ %i.u, %bb.c ]
  %i.bb = load float, ptr %.in49.peel, align 4, !tbaa !13
  store float %i.bb, ptr %i.h, align 4, !tbaa !125
  %i.bc = and i32 %i.av, 4
  %.not50.peel = icmp eq i32 %i.bc, 0
  %.in51.peel = select i1 %.not50.peel, ptr %i.w, ptr %i.v
  %i.bd = load float, ptr %.in51.peel, align 4, !tbaa !13
  store float %i.bd, ptr %i.g, align 4, !tbaa !52
  %i.be = load i8, ptr %i.x, align 1, !tbaa !35, !range !50, !noundef !39
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1012
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %.not52.peel = icmp eq i32 %i.bh, 0
  br i1 %.not52.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !22
  %.not53.peel = icmp eq i32 %i.bj, 0
  %spec.select.peel = zext i1 %.not53.peel to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0.peel.sink = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ %spec.select.peel, %bb.g ]
  %i.bk = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull %9, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef 0, i32 noundef %.0.peel.sink)
  %.1.peel = add nsw i32 %i.bk, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.peel.next

.peel.next:                                       ; preds = %bb.h, %.peel.begin
  %.04758.ph = phi i32 [ %.1.peel, %bb.h ], [ %2, %.peel.begin ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !55 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 813
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18, !range !50 ; 2 uses
  br i1 %i.bn, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.peel.next
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.i
  %i.br = phi i8 [ 1, %bb.i ], [ %i.bp, %.peel.next ]
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !20
  store i32 %i.bm, ptr %i.k, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !13
  store float %i.bt, ptr %i.p, align 4, !tbaa !109
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !13
  store float %i.bv, ptr %i.l, align 4, !tbaa !23
  store i8 %i.br, ptr %i.m, align 4, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !13
  store float %i.bx, ptr %i.e, align 4, !tbaa !49
  %i.by = load <2 x float>, ptr %i.q, align 8, !tbaa !13
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bz, ptr %i.j, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13
  store float %i.cb, ptr %9, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !127
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !13
  store float %i.cd, ptr %i.c, align 4, !tbaa !128
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !13
  store float %i.cf, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.cj = load float, ptr %i.cg, align 4, !tbaa !13
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.ck = load float, ptr %i.ch, align 4, !tbaa !13
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ck, i64 1
  %i.cl = load float, ptr %i.ci, align 4, !tbaa !13
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.r, align 8
  %i.cm = load i32, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.cn = and i32 %i.cm, 8
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 768
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cp = load ptr, ptr %i.t, align 8, !tbaa !121
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.in = phi ptr [ %i.co, %bb.j ], [ %i.cp, %bb.k ]
  %i.cq = load float, ptr %.in, align 4, !tbaa !13
  store float %i.cq, ptr %i.f, align 4, !tbaa !124
  %i.cr = and i32 %i.cm, 16
  %.not48 = icmp eq i32 %i.cr, 0
  br i1 %.not48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 800
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.t, align 8, !tbaa !121
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.in49 = phi ptr [ %i.cs, %bb.m ], [ %i.ct, %bb.n ]
  %i.cu = load float, ptr %.in49, align 4, !tbaa !13
  store float %i.cu, ptr %i.h, align 4, !tbaa !125
  %i.cv = and i32 %i.cm, 32
  %.not50 = icmp eq i32 %i.cv, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.in51 = select i1 %.not50, ptr %i.w, ptr %i.cw
  %i.cx = load float, ptr %.in51, align 4, !tbaa !13
  store float %i.cx, ptr %i.g, align 4, !tbaa !52
  %i.cy = load i8, ptr %i.x, align 1, !tbaa !35, !range !50, !noundef !39
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.db = load i32, ptr %i.da, align 4, !tbaa !22
  %.not52 = icmp eq i32 %i.db, 0
  br i1 %.not52, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !22
  %.not53 = icmp eq i32 %i.dd, 0
  %spec.select = zext i1 %.not53 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.sink = phi i32 [ %spec.select, %bb.q ], [ 1, %bb.p ], [ 0, %bb.o ]
  %i.de = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull %9, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.04758.ph, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef 0, i32 noundef %.sink)
  %.1 = add nsw i32 %i.de, %.04758.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit

_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit: ; preds = %bb.i, %bb.r
  %.2 = phi i32 [ %.1, %bb.r ], [ %.04758.ph, %bb.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !55 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !18, !range !50 ; 2 uses
  br i1 %i.dh, label %bb.s, label %._crit_edge.1

bb.s:                                             ; preds = %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.1, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.s, %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.dl = phi i8 [ 1, %bb.s ], [ %i.dj, %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit ]
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !20
  store i32 %i.dg, ptr %i.k, align 4, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !13
  store float %i.dn, ptr %i.p, align 4, !tbaa !109
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.dp = load float, ptr %i.do, align 8, !tbaa !13
  store float %i.dp, ptr %i.l, align 4, !tbaa !23
  store i8 %i.dl, ptr %i.m, align 4, !tbaa !24
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 728
end_hunk_2
begin_hunk_3_@_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1012
  store i32 1, ptr %i.aw, align 4, !tbaa !22
  %i.ax = fsub float %i.ai, %i.ak                 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 3 uses
  store float %i.ax, ptr %i.ay, align 4, !tbaa !23
  %i.az = fcmp ogt float %i.ax, f0x40490FDB
  br i1 %i.az, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = fcmp olt float %i.ax, f0xC0490FDB
  br i1 %i.ba, label %bb.w, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.w:                                             ; preds = %bb.v
  %i.bb = fadd float %i.ax, f0x40C90FDB
  store float %i.bb, ptr %i.ay, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.x:                                             ; preds = %bb.u
  %i.bc = fadd float %i.ax, f0xC0C90FDB
  store float %i.bc, ptr %i.ay, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.y:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1012
  store i32 0, ptr %i.bd, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.bf = load float, ptr %i.be, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !49
  %i.bk = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bf, float noundef %i.bh, float noundef %i.bj) ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store float %i.bk, ptr %i.bl, align 8, !tbaa !109
  %i.bm = load float, ptr %i.bg, align 4, !tbaa !48 ; 3 uses
  %i.bn = load float, ptr %i.bi, align 8, !tbaa !49 ; 3 uses
  %i.bo = fcmp ogt float %i.bm, %i.bn
  br i1 %i.bo, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.bp = fcmp olt float %i.bk, %i.bm
  br i1 %i.bp, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = fcmp ogt float %i.bk, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1076 ; 2 uses
  br i1 %i.bq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.br, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ac:                                            ; preds = %bb.aa
  store i32 2, ptr %i.br, align 4, !tbaa !22
  %i.bs = fsub float %i.bk, %i.bn                 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 3 uses
  store float %i.bs, ptr %i.bt, align 4, !tbaa !23
  %i.bu = fcmp ogt float %i.bs, f0x40490FDB
  br i1 %i.bu, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = fcmp olt float %i.bs, f0xC0490FDB
  br i1 %i.bv, label %bb.ae, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ae:                                            ; preds = %bb.ad
  %i.bw = fadd float %i.bs, f0x40C90FDB
  store float %i.bw, ptr %i.bt, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.af:                                            ; preds = %bb.ac
  %i.bx = fadd float %i.bs, f0xC0C90FDB
  store float %i.bx, ptr %i.bt, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ag:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store i32 1, ptr %i.by, align 4, !tbaa !22
  %i.bz = fsub float %i.bk, %i.bm                 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 3 uses
  store float %i.bz, ptr %i.ca, align 4, !tbaa !23
  %i.cb = fcmp ogt float %i.bz, f0x40490FDB
  br i1 %i.cb, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = fcmp olt float %i.bz, f0xC0490FDB
  br i1 %i.cc, label %bb.ai, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ai:                                            ; preds = %bb.ah
  %i.cd = fadd float %i.bz, f0x40C90FDB
  store float %i.cd, ptr %i.ca, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.aj:                                            ; preds = %bb.ag
  %i.ce = fadd float %i.bz, f0xC0C90FDB
  store float %i.ce, ptr %i.ca, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ak:                                            ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store i32 0, ptr %i.cf, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1325
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !35, !range !50, !noundef !39
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2
  %i.cj = tail call noundef i32 @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  %i.ck = tail call noundef i32 @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, i32 noundef %i.cj, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2
  %i.cl = tail call noundef i32 @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  %i.cm = tail call noundef i32 @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, i32 noundef %i.cl, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !24, !range !50, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22   ; 2 uses
  %i.f = icmp ne i32 %i.e, 0                      ; 2 uses
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %.thread370

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !129
  %i.i = mul i32 %i.h, %9                         ; 3 uses
  %.not189 = icmp eq i32 %11, 0                   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.in = select i1 %.not189, ptr %i.k, ptr %i.j
  %i.l = load ptr, ptr %.in, align 8, !tbaa !130  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.in190 = select i1 %.not189, ptr %i.n, ptr %i.m
  %i.o = load ptr, ptr %.in190, align 8, !tbaa !130 ; 3 uses
  %i.p = load float, ptr %10, align 4, !tbaa !13
  %i.q = sext i32 %i.i to i64                     ; 22 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.q
  store float %i.p, ptr %i.r, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 5 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !13
  %i.u = add nsw i32 %i.i, 1
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.v
  store float %i.t, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !13
  %i.z = add nsw i32 %i.i, 2
  %i.aa = sext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa
  store float %i.y, ptr %i.ab, align 4, !tbaa !13
  %i.ac = load float, ptr %10, align 4, !tbaa !13
  %i.ad = fneg float %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  store float %i.ad, ptr %i.ae, align 4, !tbaa !13
  %i.af = load float, ptr %i.s, align 4, !tbaa !13
  %i.ag = fneg float %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.v
  store float %i.ag, ptr %i.ah, align 4, !tbaa !13
  %i.ai = load float, ptr %i.x, align 4, !tbaa !13
  %i.aj = fneg float %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aa
  store float %i.aj, ptr %i.ak, align 4, !tbaa !13
  br i1 %.not189, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1325
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35, !range !50, !noundef !39
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1204 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ao, align 8, !tbaa !13 ; 3 uses
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !13 ; 3 uses
  %i.as = load float, ptr %i.s, align 4, !tbaa !13 ; 3 uses
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = load float, ptr %i.au, align 4, !tbaa !13
  %i.aw = load float, ptr %10, align 4, !tbaa !13 ; 3 uses
  %i.ax = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %13 = load <4 x float>, ptr %i.ba, align 8
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !13
  %i.bd = load <2 x float>, ptr %i.at, align 4, !tbaa !13 ; 2 uses
  %i.be = load <2 x float>, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.az, align 4, !tbaa !13 ; 2 uses
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bi = fsub <2 x float> %i.bg, %i.bh           ; 3 uses
  %i.bj = shufflevector <2 x float> %i.be, <2 x float> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.bk = shufflevector <2 x float> %i.bf, <2 x float> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bl = fsub <2 x float> %i.bj, %i.bk           ; 3 uses
  %15 = shufflevector <2 x float> %14, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.av, i64 1
  %i.bo = fsub <2 x float> %15, %i.bn             ; 4 uses
  %i.bp = insertelement <2 x float> poison, float %i.as, i64 0 ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %i.bl
  %i.bs = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bt, <2 x float> %i.br)
  %i.bv = insertelement <2 x float> poison, float %i.ax, i64 0 ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bw, <2 x float> %i.bu) ; 3 uses
  %i.by = fmul <2 x float> %i.bt, %i.bx           ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !109
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !23
  %i.cd = fsub float %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.cf = fneg float %i.aw
  %i.cg = insertelement <2 x float> %i.bp, float %i.ax, i64 1 ; 4 uses
  %i.ch = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fmul <2 x float> %i.cg, %i.ch           ; 3 uses
  %i.cj = shufflevector <2 x float> %i.bl, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.ck = fsub <2 x float> %i.cj, %i.ci
  %i.cl = shufflevector <2 x float> %i.bo, <2 x float> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.cm = shufflevector <2 x float> %i.by, <2 x float> %i.ci, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cn = fsub <2 x float> %i.cl, %i.cm
  %i.co = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cg, %i.co           ; 3 uses
  %i.cq = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = fmul <2 x float> %i.cg, %i.cr
  %i.ct = insertelement <2 x float> %i.bv, float %i.aw, i64 1 ; 3 uses
  %i.cu = fmul <2 x float> %i.ct, %i.cr
  %i.cv = fadd <2 x float> %i.cp, %i.cs
  %i.cw = shufflevector <2 x float> %i.cp, <2 x float> %i.by, <2 x i32> <i32 1, i32 2>
  %i.cx = fadd <2 x float> %i.cw, %i.cu
  %i.cy = fsub <2 x float> %i.cv, %i.ci           ; 2 uses
  %i.cz = fsub <2 x float> %i.cx, %i.cm           ; 2 uses
  %i.da = fneg <2 x float> %i.cg                  ; 2 uses
  %i.db = shufflevector <2 x float> %i.bl, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.dc = fsub <2 x float> %i.db, %i.cp
  %foldExtExtBinop = fsub <2 x float> %i.bi, %i.by
  %i.dd = load <2 x float>, ptr %i.ce, align 8, !tbaa !13 ; 4 uses
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.df = fmul <2 x float> %i.de, %i.cy
  %i.dg = fmul <2 x float> %i.de, %i.cz
  %i.dh = fsub <2 x float> %i.ck, %i.df           ; 2 uses
  %i.di = fsub <2 x float> %i.cn, %i.dg           ; 2 uses
  %i.dj = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = fmul <2 x float> %i.dj, %i.cy
  %shift = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop427 = fmul <2 x float> %i.dd, %shift
  %i.dl = fadd <2 x float> %i.dc, %i.dk           ; 3 uses
  %foldExtExtBinop429 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop427 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> %foldExtExtBinop429, <2 x i32> <i32 1, i32 2>
  %i.dn = fmul <2 x float> %i.dm, %i.da
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.ct, <2 x float> %i.dn) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.dq = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dp, %i.dr
  %i.dt = shufflevector <2 x float> %foldExtExtBinop429, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.bq, <2 x float> %i.ds) ; 3 uses
  %i.dv = insertelement <2 x float> %i.du, float 0.000000e+00, i64 1
  %i.dw = fmul <2 x float> %i.di, %i.da
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.ct, <2 x float> %i.dw) ; 2 uses
  %i.dy = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.du, <2 x i32> <i32 3, i32 1>
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !89, !range !50, !noundef !39
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = icmp eq i32 %12, 0
  %or.cond3.not = and i1 %i.ec, %i.eb
  br i1 %or.cond3.not, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.ed = fmul <2 x float> %i.dj, %i.do
  %i.ee = fmul <2 x float> %i.dd, %i.du           ; 2 uses
  %i.ef = insertelement <2 x float> %i.ee, float 0.000000e+00, i64 1
  %i.eg = fmul <2 x float> %i.de, %i.dx
  %i.eh = shufflevector <2 x float> %i.ee, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  %.sroa.8.0 = phi <2 x float> [ %i.ef, %bb.e ], [ %i.dv, %bb.d ]
  %.sroa.0385.0 = phi <2 x float> [ %i.ed, %bb.e ], [ %i.do, %bb.d ]
  %.sroa.9.0 = phi <2 x float> [ %i.eh, %bb.e ], [ %i.dy, %bb.d ]
  %.sroa.0.0 = phi <2 x float> [ %i.eg, %bb.e ], [ %i.dx, %bb.d ]
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.ej = shl nsw i64 %i.q, 2
  %scevgep = getelementptr i8, ptr %i.ei, i64 %i.ej ; 2 uses
  store <2 x float> %.sroa.0385.0, ptr %scevgep, align 4, !tbaa !13
  %.sroa.8.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.8.0.vec.extract = extractelement <2 x float> %.sroa.8.0, i64 0
  store float %.sroa.8.0.vec.extract, ptr %.sroa.8.0.scevgep.sroa_idx, align 4, !tbaa !13
  %i.ek = load ptr, ptr %i.m, align 8, !tbaa !132 ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.q
  %i.em = fneg <2 x float> %.sroa.0.0
  store <2 x float> %i.em, ptr %i.el, align 4, !tbaa !13
  %.sroa.9.8.vec.extract384 = extractelement <2 x float> %.sroa.9.0, i64 0
  %i.en = fneg float %.sroa.9.8.vec.extract384
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.q
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  store float %i.en, ptr %i.ep, align 4, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.er = load float, ptr %i.eq, align 4, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.et = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.eu = load float, ptr %10, align 4, !tbaa !13 ; 2 uses
  %i.ev = fneg float %i.eu
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !131 ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.q
  %i.ey = load <2 x float>, ptr %i.es, align 4, !tbaa !13 ; 2 uses
  %i.ez = fsub <2 x float> %i.ar, %i.ey           ; 2 uses
  %i.fa = shufflevector <2 x float> %i.ar, <2 x float> %i.aq, <2 x i32> <i32 1, i32 2>
  %i.fb = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fc = insertelement <2 x float> %i.fb, float %i.er, i64 1
  %i.fd = fsub <2 x float> %i.fa, %i.fc           ; 2 uses
  %i.fe = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.et, i64 1
  %i.fg = fneg <2 x float> %i.ff
  %i.fh = fmul <2 x float> %i.fd, %i.fg
  %i.fi = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.eu, i64 1
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fj, <2 x float> %i.fh)
  %i.fl = extractelement <2 x float> %i.ez, i64 0
  %i.fm = fmul float %i.fl, %i.ev
  %i.fn = extractelement <2 x float> %i.fd, i64 1
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.as, float %i.fm)
  store <2 x float> %i.fk, ptr %i.ex, align 4, !tbaa !13
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.aa
  store float %i.fo, ptr %i.fp, align 4, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fr = load float, ptr %i.ao, align 8, !tbaa !13
  %i.fs = load float, ptr %i.fq, align 4, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.fu = load float, ptr %10, align 4, !tbaa !13 ; 2 uses
  %i.fv = fneg float %i.fu
  %i.fw = load ptr, ptr %i.m, align 8, !tbaa !132 ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.q
  %i.fy = load <2 x float>, ptr %i.ap, align 4, !tbaa !13 ; 2 uses
  %i.fz = load <2 x float>, ptr %i.ft, align 4, !tbaa !13 ; 2 uses
  %i.ga = fsub <2 x float> %i.fy, %i.fz           ; 2 uses
  %i.gb = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gc = insertelement <2 x float> %i.gb, float %i.fr, i64 1
  %i.gd = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ge = insertelement <2 x float> %i.gd, float %i.fs, i64 1
  %i.gf = fsub <2 x float> %i.gc, %i.ge           ; 2 uses
  %i.gg = load <2 x float>, ptr %i.s, align 4, !tbaa !13 ; 3 uses
  %i.gh = fneg <2 x float> %i.gg
  %i.gi = fmul <2 x float> %i.gf, %i.gh
  %i.gj = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gk = insertelement <2 x float> %i.gj, float %i.fu, i64 1
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gk, <2 x float> %i.gi)
  %i.gm = extractelement <2 x float> %i.ga, i64 0
  %i.gn = fmul float %i.gm, %i.fv
  %i.go = extractelement <2 x float> %i.gf, i64 1
  %i.gp = extractelement <2 x float> %i.gg, i64 0
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.go, float %i.gp, float %i.gn)
  %i.gr = fneg <2 x float> %i.gl
  %i.gs = fneg float %i.gq
  store <2 x float> %i.gr, ptr %i.fx, align 4, !tbaa !13
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.aa
  store float %i.gs, ptr %i.gt, align 4, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.f, %bb.b
  br i1 %i.f, label %bb.h, label %.thread367

bb.h:                                             ; preds = %bb.g
  %i.gu = load float, ptr %1, align 4, !tbaa !48
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !49
  %i.gx = fcmp une float %i.gu, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !133 ; 4 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.q
  store float 0.000000e+00, ptr %i.ha, align 4, !tbaa !13
  %brmerge.not = and i1 %i.gx, %i.c
  br i1 %brmerge.not, label %bb.i, label %.critedge

.thread367:                                       ; preds = %bb.g
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !133
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.q
  store float 0.000000e+00, ptr %i.hd, align 4, !tbaa !13
  br i1 %i.c, label %bb.j, label %.thread370

bb.i:                                             ; preds = %bb.h
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hf = load float, ptr %i.he, align 4, !tbaa !124
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !121
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.q
  store float %i.hf, ptr %i.hi, align 4, !tbaa !13
  br label %.critedge

bb.j:                                             ; preds = %.thread367
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 28
end_hunk_3
