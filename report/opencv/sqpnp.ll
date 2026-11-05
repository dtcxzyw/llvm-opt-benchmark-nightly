Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sqpnp?download=true
inline.NumInlined: 1194
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN2cv5sqpnp10PoseSolver18orthogonalityErrorERKNS_4MatxIdLi9ELi1EEE:bb.a
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.ae, <2 x double> %i.ac) ; 3 uses
  %i.ag = fadd <2 x double> %i.v, splat (double -1.000000e+00) ; 2 uses
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ai = shufflevector <8 x double> %i.g, <8 x double> %i.ah, <2 x i32> <i32 4, i32 9>
  %i.aj = insertelement <2 x double> %i.af, double %i.h, i64 0
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  %i.al = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.am = insertelement <2 x double> %i.al, double %i.j, i64 0
  %i.an = shufflevector <8 x double> %i.g, <8 x double> %i.ah, <2 x i32> <i32 6, i32 8>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.ak) ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.i, double %i.f, double %i.ap) ; 2 uses
  %i.ar = extractelement <2 x double> %i.ao, i64 1
  %i.as = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.ar)
  %i.at = insertelement <2 x double> poison, double %i.o, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = fadd <2 x double> %i.au, <double -1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.aw = insertelement <2 x double> %i.av, double 2.000000e+00, i64 1
  %i.ax = fmul <2 x double> %i.av, %i.aw
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ag, <2 x double> %i.ax)
  %i.az = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ay)
  ret double %i.az
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZN2cv5sqpnp10PoseSolver6det3x3ERKNS_4MatxIdLi9ELi1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load double, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <1 x double>, ptr %i.a, align 8
  %i.h = load <2 x double>, ptr %0, align 8, !tbaa !43 ; 4 uses
  %i.i = load <1 x double>, ptr %i.d, align 8
  %i.j = load <2 x double>, ptr %i.f, align 8, !tbaa !43 ; 3 uses
  %i.k = load <2 x double>, ptr %i.e, align 8, !tbaa !43 ; 4 uses
  %i.l = shufflevector <1 x double> %i.g, <1 x double> poison, <2 x i32> zeroinitializer
  %i.m = shufflevector <2 x double> %i.h, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.n = fmul <2 x double> %i.l, %i.m
  %i.o = shufflevector <1 x double> %i.i, <1 x double> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x double> %i.h, <2 x double> %i.k, <2 x i32> <i32 1, i32 3>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = shufflevector <2 x double> %i.k, <2 x double> %i.h, <2 x i32> <i32 0, i32 2>
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.u = insertelement <2 x double> %i.t, double %i.c, i64 0 ; 2 uses
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.u, <2 x double> %i.s)
  %i.w = shufflevector <2 x double> %i.j, <2 x double> %i.u, <2 x i32> <i32 1, i32 2>
  %i.x = fmul <2 x double> %i.w, %i.j
  %i.y = shufflevector <2 x double> %i.k, <2 x double> %i.h, <2 x i32> <i32 1, i32 3>
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.y, <2 x double> %i.v) ; 2 uses
  %shift = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.z, %shift
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.aa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5sqpnp10PoseSolver13checkSolutionERNS1_11SQPSolutionERKNS_11_InputArrayERd(ptr noundef nonnull align 8 dereferenceable(3492) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.cv::Matx_MatMulOp", align 1 ; 3 uses
  %5 = alloca %"class.cv::Matx.0", align 8        ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !43
  %i.d = load double, ptr %i.a, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.h = load double, ptr %i.g, align 8, !tbaa !43
  %i.i = fmul double %i.f, %i.h
  %i.j = tail call double @llvm.fmuladd.f64(double %i.c, double %i.d, double %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.n = load double, ptr %i.m, align 8, !tbaa !43
  %i.o = tail call double @llvm.fmuladd.f64(double %i.l, double %i.n, double %i.j)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load double, ptr %i.p, align 8, !tbaa !43
  %i.r = fadd double %i.o, %i.q
  %i.s = fcmp ogt double %i.r, 0.000000e+00
  br i1 %i.s, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_ZNK2cv5sqpnp10PoseSolver22positiveMajorityDepthsERKNS1_11SQPSolutionERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(3492) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.t, label %.critedge, label %bb.j

.critedge:                                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN2cv4MatxIdLi9ELi1EEC2ILi9EEERKNS0_IdLi9EXT_EEERKNS0_IdXT_ELi1EEENS_13Matx_MatMulOpE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = load double, ptr %5, align 8, !tbaa !43
  %i.v = load double, ptr %1, align 8, !tbaa !43  ; 2 uses
  %i.w = call double @llvm.fmuladd.f64(double %i.u, double %i.v, double 0.000000e+00)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !43 ; 2 uses
  %i.ab = call double @llvm.fmuladd.f64(double %i.y, double %i.aa, double %i.w)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %i.ag = call double @llvm.fmuladd.f64(double %i.ad, double %i.af, double %i.ab)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %i.al = call double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ag)
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.an, double %i.ap, double %i.al)
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load double, ptr %i.at, align 8, !tbaa !43 ; 2 uses
  %i.av = call double @llvm.fmuladd.f64(double %i.as, double %i.au, double %i.aq)
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !43
  %i.ay = load double, ptr %i.b, align 8, !tbaa !43 ; 2 uses
  %i.az = call double @llvm.fmuladd.f64(double %i.ax, double %i.ay, double %i.av)
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !43
  %i.bc = load double, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %i.bd = call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double %i.az)
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bf = load double, ptr %i.be, align 8, !tbaa !43
  %i.bg = load double, ptr %i.k, align 8, !tbaa !43 ; 2 uses
  %i.bh = call noundef double @llvm.fmuladd.f64(double %i.bf, double %i.bg, double %i.bd) ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  store double %i.bh, ptr %i.bi, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bj = load double, ptr %3, align 8, !tbaa !43 ; 2 uses
  %i.bk = fsub double %i.bj, %i.bh
  %i.bl = call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ogt double %i.bl, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bm, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !34 ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph, label %.critedge32

.lr.ph:                                           ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %wide.trip.count = zext nneg i32 %i.bo to i64
  br label %bb.f

bb.c:                                             ; preds = %.critedge
  %i.br = fcmp ogt double %i.bj, %i.bh
  br i1 %i.br, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  store double %i.bh, ptr %3, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bs, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !55
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3488
  store i32 1, ptr %i.bt, align 8, !tbaa !34
  br label %bb.j

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge32, label %bb.f, !llvm.loop !130

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [104 x i8], ptr %i.bq, i64 %indvars.iv ; 11 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !43, !noalias !135
  %i.bw = fsub double %i.bv, %i.v                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !43, !noalias !135
  %i.bz = fsub double %i.by, %i.aa                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !43, !noalias !135
  %i.cc = fsub double %i.cb, %i.af                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !43, !noalias !135
  %i.cf = fsub double %i.ce, %i.ak                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !43, !noalias !135
  %i.ci = fsub double %i.ch, %i.ap                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !43, !noalias !135
  %i.cl = fsub double %i.ck, %i.au                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !43, !noalias !135
  %i.co = fsub double %i.cn, %i.ay                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !43, !noalias !135
  %i.cr = fsub double %i.cq, %i.bc                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !43, !noalias !135
  %i.cu = fsub double %i.ct, %i.bg                ; 2 uses
  %6 = fmul double %i.bw, %i.bw
  %i.cv = call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double %6)
  %i.cw = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.cv)
  %i.cx = call double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %i.cw)
  %i.cy = call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.cx)
  %i.cz = call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double %i.cy)
  %i.da = call double @llvm.fmuladd.f64(double %i.co, double %i.co, double %i.cz)
  %i.db = call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %i.da)
  %i.dc = call noundef double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double %i.db)
  %i.dd = fcmp olt double %i.dc, 1.000000e-10
  br i1 %i.dd, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.de = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.df = load double, ptr %i.de, align 8, !tbaa !134
  %i.dg = fcmp ogt double %i.df, %i.bh
  br i1 %i.dg, label %.sink.split, label %bb.h

.critedge32:                                      ; preds = %bb.e, %.preheader
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.di = add nsw i32 %i.bo, 1
  store i32 %i.di, ptr %i.bn, align 8, !tbaa !34
  %i.dj = sext i32 %i.bo to i64
  %i.dk = getelementptr inbounds [104 x i8], ptr %i.dh, i64 %i.dj
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %.critedge32
  %.lcssa.sink = phi ptr [ %i.dk, %.critedge32 ], [ %i.bu, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.lcssa.sink, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.dl = load double, ptr %3, align 8, !tbaa !43
  %i.dm = load double, ptr %i.bi, align 8, !tbaa !134 ; 2 uses
  %i.dn = fcmp ogt double %i.dl, %i.dm
  br i1 %i.dn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.dm, ptr %3, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5sqpnp10PoseSolver25nearestRotationMatrixFOAMERKNS_4MatxIdLi9ELi1EEERS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load <2 x double>, ptr %i.d, align 8, !tbaa !43 ; 14 uses
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.g = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x double>, ptr %i.a, align 8, !tbaa !43 ; 8 uses
  %i.l = extractelement <2 x double> %i.k, i64 0  ; 3 uses
  %i.m = load <4 x double>, ptr %0, align 8, !tbaa !43 ; 12 uses
  %i.n = extractelement <4 x double> %i.m, i64 0  ; 4 uses
  %i.o = load double, ptr %i.i, align 8, !tbaa !43 ; 10 uses
  %i.p = load double, ptr %i.h, align 8, !tbaa !43 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load <2 x double>, ptr %i.c, align 8, !tbaa !43 ; 14 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = extractelement <2 x double> %i.r, i64 0  ; 2 uses
  %i.u = shufflevector <2 x double> %i.r, <2 x double> %i.e, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.v = fneg <2 x double> %i.u                   ; 4 uses
  %i.w = fneg double %i.o
  %i.x = insertelement <2 x double> %i.k, double %i.o, i64 1
  %i.y = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.z = fmul <2 x double> %i.x, %i.y
  %i.aa = insertelement <2 x double> %i.y, double %i.p, i64 1
  %i.ab = fmul <2 x double> %i.aa, %i.r
  %i.ac = shufflevector <2 x double> %i.v, <2 x double> %i.r, <2 x i32> <i32 1, i32 2>
  %i.ad = fmul <2 x double> %i.ab, %i.ac
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.f, <2 x double> %i.ad)
  %i.af = insertelement <2 x double> %i.y, double %i.p, i64 0
  %i.ag = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ah = insertelement <2 x double> %i.ag, double %i.w, i64 0
  %i.ai = fmul <2 x double> %i.af, %i.ah          ; 3 uses
  %i.aj = shufflevector <2 x double> %i.e, <2 x double> %i.k, <2 x i32> <i32 1, i32 2>
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.aj, <2 x double> %i.ae)
  %i.al = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ak) ; 4 uses
  %i.am = tail call double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp olt double %i.am, 1.000000e-04
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv5sqpnp10PoseSolver24nearestRotationMatrixSVDERKNS_4MatxIdLi9ELi1EEERS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ao = shufflevector <2 x double> %i.k, <2 x double> %i.e, <2 x i32> <i32 0, i32 3>
  %i.ap = fneg <2 x double> %i.ao                 ; 2 uses
  %i.aq = extractelement <4 x double> %i.m, i64 2 ; 3 uses
  %i.ar = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = insertelement <2 x double> %i.ar, double %i.p, i64 0
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %i.au = fmul <2 x double> %i.as, %i.at
  %i.av = shufflevector <2 x double> %i.k, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.aw = shufflevector <4 x double> %i.m, <4 x double> %i.av, <2 x i32> <i32 2, i32 4>
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.e, <2 x double> %i.au) ; 4 uses
  %i.ay = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %i.az = insertelement <2 x double> %i.ay, double %i.o, i64 1
  %i.ba = fmul <2 x double> %i.az, %i.ap
  %i.bb = insertelement <2 x double> %i.r, double %i.p, i64 0
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.ar, <2 x double> %i.ba) ; 4 uses
  %i.bd = extractelement <2 x double> %i.ai, i64 1
  %i.be = extractelement <2 x double> %i.e, i64 1 ; 2 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.n, double %i.be, double %i.bd) ; 3 uses
  %i.bg = fneg double %i.t
  %i.bh = fmul double %i.n, %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.o, double %i.bh) ; 3 uses
  %i.bj = shufflevector <4 x double> %i.av, <4 x double> %i.m, <2 x i32> <i32 0, i32 4>
  %i.bk = fmul <2 x double> %i.bj, %i.v
  %i.bl = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.p, i64 1
  %i.bn = shufflevector <2 x double> %i.e, <2 x double> %i.r, <2 x i32> <i32 0, i32 3>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bn, <2 x double> %i.bk) ; 2 uses
  %i.bp = extractelement <2 x double> %i.ai, i64 0
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.n, double %i.l, double %i.bp) ; 3 uses
  %i.br = shufflevector <4 x double> %i.m, <4 x double> %i.av, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.bs = fmul <2 x double> %i.br, %i.br
  %i.bt = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bt, <2 x double> %i.bs)
  %i.bv = shufflevector <4 x double> %i.m, <4 x double> %i.av, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bv, <2 x double> %i.bu) ; 5 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  %i.by = extractelement <2 x double> %i.bw, i64 1 ; 3 uses
  %i.bz = fadd double %i.bx, %i.by
  %foldExtExtBinop = fmul <2 x double> %i.e, %i.e
  %i.ca = shufflevector <2 x double> %i.r, <2 x double> %i.ax, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cb = insertelement <2 x double> %foldExtExtBinop, double -0.000000e+00, i64 1
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.ca, <2 x double> %i.cb)
  %i.cd = shufflevector <2 x double> %i.e, <2 x double> %i.ax, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.cd, <2 x double> %i.cc) ; 3 uses
  %i.cf = extractelement <2 x double> %i.ce, i64 0 ; 2 uses
  %i.cg = fadd double %i.bz, %i.cf                ; 3 uses
  %i.ch = fmul double %i.bf, %i.bf
  %i.ci = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bc, <2 x double> %i.cj) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 1
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.cl)
  %i.cn = extractelement <2 x double> %i.ck, i64 0
  %i.co = fadd double %i.cn, %i.cm
  %i.cp = extractelement <2 x double> %i.bo, i64 1 ; 3 uses
  %i.cq = fmul double %i.cp, %i.cp
  %i.cr = extractelement <2 x double> %i.bo, i64 0 ; 3 uses
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %i.cq)
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.cs)
  %i.cu = fadd double %i.ct, %i.co
  %i.cv = fadd double %i.cg, 3.000000e+00
  %i.cw = fmul double %i.cv, 5.000000e-01         ; 3 uses
  %i.cx = fcmp olt double %i.al, 0.000000e+00
  %i.cy = fneg double %i.cw
  %.0261 = select i1 %i.cx, double %i.cy, double %i.cw ; 2 uses
  %i.cz = fcmp ueq double %i.cw, 0.000000e+00
  %.pre = fneg double %i.cg                       ; 2 uses
  br i1 %i.cz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.da = fneg double %i.al                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0264 = phi i32 [ 15, %.lr.ph ], [ %i.dl, %bb.d ] ; 2 uses
  %.1263 = phi double [ %.0261, %.lr.ph ], [ %i.dk, %bb.d ] ; 7 uses
  %i.db = tail call double @llvm.fmuladd.f64(double %.1263, double %.1263, double %.pre) ; 3 uses
  %i.dc = fmul double %.1263, 8.000000e+00
  %i.dd = fmul double %i.dc, %i.da
  %i.de = tail call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %i.dd)
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cu, double -4.000000e+00, double %i.de)
  %i.dg = fmul double %i.db, 5.000000e-01
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dg, double %.1263, double %i.da)
  %i.di = fmul double %i.dh, 8.000000e+00
  %i.dj = fdiv double %i.df, %i.di
  %i.dk = fsub double %.1263, %i.dj               ; 3 uses
  %i.dl = add nsw i32 %.0264, -1
  %i.dm = fsub double %i.dk, %.1263
  %i.dn = tail call double @llvm.fabs.f64(double %i.dm)
  %i.do = tail call double @llvm.fabs.f64(double %.1263)
  %i.dp = fmul double %i.do, f0x3D719799812DEA11
  %i.dq = fcmp ogt double %i.dn, %i.dp
  %i.dr = icmp samesign ugt i32 %.0264, 1
  %i.ds = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.d, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.1.lcssa = phi double [ %.0261, %bb.c ], [ %i.dk, %bb.d ] ; 12 uses
  %i.dt = fmul double %i.l, %i.p
  %i.du = tail call double @llvm.fmuladd.f64(double %i.n, double %i.o, double %i.dt)
  %i.dv = fmul double %i.g, %i.p
  %i.dw = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.dv, i64 1
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.r, <2 x double> %i.dx) ; 4 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0 ; 2 uses
  %foldExtExtBinop266 = fmul <2 x double> %i.k, %i.e
  %i.ea = extractelement <2 x double> %foldExtExtBinop266, i64 0
  %i.eb = fmul double %i.l, %i.by
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.p, double %i.eb)
  %i.ed = fmul double %i.t, %i.by
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.o, double %i.s, double %i.ea)
  %i.ef = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <4 x double> %i.ef, <4 x double> %i.m, <2 x i32> <i32 0, i32 6>
  %i.eh = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = insertelement <2 x double> %i.dy, double %i.ee, i64 0
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eh, <2 x double> %i.ei) ; 7 uses
  %i.ek = extractelement <2 x double> %i.ej, i64 1 ; 2 uses
  %i.el = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  %i.em = tail call double @llvm.fmuladd.f64(double %i.el, double %i.g, double %i.ec)
  %i.en = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.aq, double %i.ed)
  %i.eo = fmul double %i.o, %i.el
  %i.ep = shufflevector <2 x double> %i.f, <2 x double> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.eq = insertelement <2 x double> poison, double %i.en, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.eo, i64 1
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.ep, <2 x double> %i.er) ; 2 uses
  %foldExtExtBinop268 = fmul <2 x double> %i.k, %i.ej
  %i.et = extractelement <2 x double> %foldExtExtBinop268, i64 0
  %foldExtExtBinop270 = fmul <2 x double> %i.r, %i.ej
  %i.eu = extractelement <2 x double> %foldExtExtBinop270, i64 0
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.aq, double %i.eu)
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.be, double %i.ev)
  %i.ex = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %.1.lcssa, double %.pre)
  %i.ey = fmul double %i.al, -2.000000e+00
  %i.ez = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %i.ex, double %i.ey)
  %i.fa = fdiv double 1.000000e+00, %i.ez         ; 7 uses
  %i.fb = extractelement <2 x double> %i.ax, i64 1
  %i.fc = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fd = insertelement <2 x double> %i.fc, double %i.o, i64 0
  %i.fe = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = fmul <2 x double> %i.fd, %i.fe
  %i.fg = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.fi = insertelement <2 x double> %i.fh, double %i.p, i64 1
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fi, <2 x double> %i.ff)
  %i.fk = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.u, <2 x double> %i.fj)
  %i.fm = fneg <2 x double> %i.fl                 ; 2 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 0
  %i.fo = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %i.fb, double %i.fn)
  %i.fp = fmul double %i.fo, 2.000000e+00
  %i.fq = shufflevector <2 x double> %i.bc, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fr = shufflevector <4 x double> %i.m, <4 x double> %i.fq, <2 x i32> <i32 0, i32 5>
  %i.fs = insertelement <2 x double> %i.fm, double %i.fp, i64 0
  %i.ft = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.fa, i64 0 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fw = shufflevector <2 x double> %i.bw, <2 x double> %i.r, <2 x i32> <i32 1, i32 2>
  %i.fx = insertelement <2 x double> %i.fe, double %i.o, i64 0
  %i.fy = fmul <2 x double> %i.fw, %i.fx
  %i.fz = shufflevector <2 x double> %i.dy, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.y, <2 x double> %i.fy)
  %i.gb = shufflevector <2 x double> %i.r, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.gb, <2 x double> %i.ga)
  %i.gd = fneg <2 x double> %i.gc                 ; 2 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 1
  %i.gf = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %i.cr, double %i.ge)
  %i.gg = fmul double %i.gf, 2.000000e+00
  %i.gh = extractelement <2 x double> %i.ax, i64 0
  %i.gi = extractelement <2 x double> %i.gd, i64 0
  %i.gj = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %i.gh, double %i.gi)
  %i.gk = fmul double %i.gj, 2.000000e+00
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gm = fneg double %i.em
  %i.gn = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gm, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gq = extractelement <2 x double> %i.es, i64 0
  %i.gr = fneg double %i.gq
  %i.gs = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %i.cp, double %i.gr)
  %i.gt = fmul double %i.gs, 2.000000e+00
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gv = extractelement <2 x double> %i.bc, i64 0
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.p, double %i.et)
  %i.gy = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ha = insertelement <2 x double> %i.gz, double %i.gx, i64 1
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.u, <2 x double> %i.ha)
  %i.hc = fneg <2 x double> %i.hb                 ; 2 uses
  %i.hd = extractelement <2 x double> %i.hc, i64 0
  %i.he = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %i.gv, double %i.hd)
  %i.hf = fmul double %i.he, 2.000000e+00
  %i.hg = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %.1.lcssa, double %i.cg) ; 7 uses
  %i.hh = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %.1.lcssa, i64 1 ; 3 uses
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.fr, <2 x double> %i.fs)
  %i.hk = fmul <2 x double> %i.hj, %i.ft          ; 2 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 0
  store double %i.hl, ptr %1, align 8, !tbaa !43
  %i.hm = load double, ptr %i.h, align 8, !tbaa !43
  %i.hn = extractelement <2 x double> %i.hk, i64 1
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hm, double %i.hn)
  %i.hp = fmul double %i.fa, %i.ho
  store double %i.hp, ptr %i.fu, align 8, !tbaa !43
  %i.hq = load double, ptr %i.j, align 8, !tbaa !43
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hq, double %i.gg)
  %i.hs = fmul double %i.fa, %i.hr
  store double %i.hs, ptr %i.fv, align 8, !tbaa !43
  %i.ht = load double, ptr %i.i, align 8, !tbaa !43
  %i.hu = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.bf, i64 1
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hv, <2 x double> %i.go)
  %i.hx = fmul <2 x double> %i.ft, %i.hw          ; 2 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 0
  store double %i.hy, ptr %i.gl, align 8, !tbaa !43
  %i.hz = load double, ptr %i.a, align 8, !tbaa !43
  %i.ia = extractelement <2 x double> %i.hx, i64 1
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hz, double %i.ia)
  %i.ic = fmul double %i.fa, %i.ib
  store double %i.ic, ptr %i.gp, align 8, !tbaa !43
  %i.id = load double, ptr %i.c, align 8, !tbaa !43
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.id, double %i.gt)
  %i.if = fmul double %i.fa, %i.ie
  store double %i.if, ptr %i.gu, align 8, !tbaa !43
  %i.ig = load double, ptr %i.q, align 8, !tbaa !43
  %i.ih = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.bi, i64 1
  %i.ij = insertelement <2 x double> %i.hc, double %i.hf, i64 0
  %i.ik = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.ii, <2 x double> %i.ij)
  %i.il = fmul <2 x double> %i.ft, %i.ik          ; 2 uses
  %i.im = extractelement <2 x double> %i.il, i64 0
  store double %i.im, ptr %i.gw, align 8, !tbaa !43
  %i.in = load double, ptr %i.d, align 8, !tbaa !43
  %i.io = extractelement <2 x double> %i.il, i64 1
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.in, double %i.io)
  %i.iq = fmul double %i.fa, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.iq, ptr %i.ir, align 8, !tbaa !43
  %i.is = load double, ptr %i.b, align 8, !tbaa !43
  %i.it = fneg double %i.ew
  %i.iu = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %i.bq, double %i.it)
  %i.iv = fmul double %i.iu, 2.000000e+00
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.is, double %i.iv)
  %i.ix = fmul double %i.fa, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.ix, ptr %i.iy, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5sqpnp10PoseSolver6runSQPERKNS_4MatxIdLi9ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::sqpnp::PoseSolver::SQPSolution") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3492) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.cv::Matx.0", align 16       ; 14 uses
  %4 = alloca %"class.cv::Matx.0", align 16       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.promoted11 = load double, ptr %i.b, align 16
  %i.m = load <2 x double>, ptr %3, align 16      ; 2 uses
  %i.n = load <3 x double>, ptr %i.d, align 8
  %i.o = load <2 x double>, ptr %i.h, align 16    ; 2 uses
  %.promoted17 = load double, ptr %i.k, align 16
  %i.p = insertelement <2 x double> poison, double %.promoted17, i64 0
  %i.q = insertelement <2 x double> %i.p, double %.promoted11, i64 1
  %i.r = shufflevector <2 x double> %i.m, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = shufflevector <2 x double> %i.o, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.069 = phi i32 [ 0, %bb.a ], [ %i.x, %bb.b ]   ; 2 uses
  %i.t = phi <3 x double> [ %i.n, %bb.a ], [ %i.ao, %bb.b ]
  %i.u = phi <2 x double> [ %i.q, %bb.a ], [ %i.al, %bb.b ]
  %i.v = phi <2 x double> [ %i.r, %bb.a ], [ %i.ah, %bb.b ]
  %i.w = phi <2 x double> [ %i.s, %bb.a ], [ %i.af, %bb.b ]
  %i.x = add nuw nsw i32 %.069, 1
  call void @_ZN2cv5sqpnp10PoseSolver14solveSQPSystemERKNS_4MatxIdLi9ELi1EEERS3_(ptr noundef nonnull align 8 dereferenceable(3492) %1, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
  %i.y = load double, ptr %i.c, align 16, !tbaa !43 ; 3 uses
  %i.z = load double, ptr %i.l, align 16, !tbaa !43 ; 3 uses
  %i.aa = load <2 x double>, ptr %4, align 16, !tbaa !43 ; 4 uses
  %i.ab = load double, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.ac = load <2 x double>, ptr %i.i, align 16, !tbaa !43 ; 3 uses
  %i.ad = load double, ptr %i.j, align 8, !tbaa !43 ; 2 uses
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.af = fadd <2 x double> %i.w, %i.ae           ; 5 uses
  %i.ag = shufflevector <2 x double> %i.aa, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.ah = fadd <2 x double> %i.v, %i.ag           ; 5 uses
  %i.ai = shufflevector <2 x double> %i.af, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2> ; 2 uses
  store <2 x double> %i.ai, ptr %3, align 16, !tbaa !43
  %i.aj = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.y, i64 1
  %i.al = fadd <2 x double> %i.u, %i.ak           ; 5 uses
  %i.am = load <3 x double>, ptr %i.e, align 8, !tbaa !43 ; 3 uses
  %i.an = load double, ptr %i.g, align 16, !tbaa !43 ; 2 uses
  %i.ao = fadd <3 x double> %i.t, %i.am           ; 6 uses
  %i.ap = shufflevector <2 x double> %i.al, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.aq = shufflevector <3 x double> %i.ap, <3 x double> %i.ao, <2 x i32> <i32 1, i32 3> ; 2 uses
  store <2 x double> %i.aq, ptr %i.b, align 16, !tbaa !43
  %i.ar = shufflevector <3 x double> %i.ao, <3 x double> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  store <2 x double> %i.ar, ptr %i.f, align 16, !tbaa !43
  %i.as = shufflevector <2 x double> %i.af, <2 x double> %i.ah, <2 x i32> <i32 0, i32 3> ; 2 uses
  store <2 x double> %i.as, ptr %i.h, align 16, !tbaa !43
  %i.at = extractelement <2 x double> %i.al, i64 0 ; 2 uses
  store double %i.at, ptr %i.k, align 16, !tbaa !43
  %foldExtExtBinop = fmul <2 x double> %i.aa, %i.aa
  %5 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %5)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.au)
  %i.aw = extractelement <3 x double> %i.am, i64 0 ; 2 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %i.av)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.ax)
  %i.az = extractelement <3 x double> %i.am, i64 2 ; 2 uses
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.ay)
  %i.bb = extractelement <2 x double> %i.ac, i64 0 ; 2 uses
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bb, double %i.ba)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.bc)
  %i.be = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.bd)
  %i.bf = fcmp ogt double %i.be, 1.000000e-10
  %i.bg = icmp samesign ult i32 %.069, 14
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !137

.critedge:                                        ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  %i.bh = shufflevector <3 x double> %i.ao, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = fmul <2 x double> %i.bh, %i.bi
  %i.bk = shufflevector <3 x double> %i.ao, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bl = fmul <2 x double> %i.bk, %i.ah
  %i.bm = shufflevector <3 x double> %i.ao, <3 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.al, %i.bm
  %i.bo = fmul <2 x double> %i.bl, %i.af
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.al, <2 x double> %i.bo)
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.ah, <2 x double> %i.bq) ; 2 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fsub <2 x double> %shift, %i.br
  %i.bs = extractelement <2 x double> %foldExtExtBinop.a, i64 0 ; 3 uses
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.bu = fneg double %i.at
  %i.bv = fneg <2 x double> %i.ai
  store <2 x double> %i.bv, ptr %3, align 16
  %i.bw = fneg <2 x double> %i.aq
  store <2 x double> %i.bw, ptr %i.b, align 16
  %i.bx = fneg <2 x double> %i.ar
  store <2 x double> %i.bx, ptr %i.f, align 16
  %i.by = fneg <2 x double> %i.as
  store <2 x double> %i.by, ptr %i.h, align 16
  store double %i.bu, ptr %i.k, align 16, !tbaa !32
  %i.bz = fneg double %i.bs
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.0 = phi double [ %i.bz, %bb.c ], [ %i.bs, %.critedge ]
  %i.ca = fcmp ogt double %.0, 1.001000e+00
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN2cv5sqpnp10PoseSolver25nearestRotationMatrixFOAMERKNS_4MatxIdLi9ELi1EEERS3_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5sqpnp10PoseSolver14solveSQPSystemERKNS_4MatxIdLi9ELi1EEERS3_(ptr noundef nonnull align 8 dereferenceable(3492) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 72)) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"struct.cv::Matx_MatMulOp", align 1 ; 3 uses
  %6 = alloca %"class.cv::Matx.5", align 16       ; 32 uses
  %7 = alloca %"class.cv::Matx.8", align 8        ; 18 uses
  %8 = alloca %"class.cv::Matx.9", align 16       ; 18 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.cv::Matx.1", align 8        ; 28 uses
  %10 = alloca %"class.cv::Matx.1", align 8       ; 30 uses
  %11 = alloca %"class.cv::Matx.4", align 16      ; 9 uses
  %12 = alloca %"class.cv::Matx.4", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !43 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %6, i8 0, i64 216, i1 false), !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %7, i8 0, i64 432, i1 false), !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.j, i8 0, i64 280, i1 false), !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double 1.000000e-01, ptr %i.a, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 280
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 288
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 352
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 384
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 392
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 400
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 408
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 416
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 424
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ak = load <4 x double>, ptr %1, align 8, !tbaa !43 ; 5 uses
  %i.al = load double, ptr %i.c, align 8, !tbaa !43 ; 2 uses
  %i.am = load <1 x double>, ptr %i.b, align 8
  %i.an = load <2 x double>, ptr %i.d, align 8, !tbaa !43 ; 3 uses
  %i.ao = load double, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aq = shufflevector <4 x double> %i.ak, <4 x double> %i.ap, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.aq
  %i.as = shufflevector <4 x double> %i.ak, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.as, <2 x double> %i.ar)
  %i.au = shufflevector <4 x double> %i.ak, <4 x double> %i.ap, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.au, <2 x double> %i.at)
  %i.aw = extractelement <2 x double> %i.an, i64 0
  %i.ax = load <2 x double>, ptr %i.f, align 8, !tbaa !43 ; 3 uses
  %i.ay = load double, ptr %i.g, align 8, !tbaa !43 ; 3 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = extractelement <2 x double> %i.ax, i64 0 ; 3 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.az)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.bb)
  %i.bd = fsub double 1.000000e+00, %i.bc
  %i.be = shufflevector <1 x double> %i.am, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bf = shufflevector <2 x double> %i.an, <2 x double> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.bg = fmul <2 x double> %i.be, %i.bf
  %i.bh = shufflevector <4 x double> %i.ak, <4 x double> poison, <2 x i32> zeroinitializer
  %i.bi = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bj = insertelement <2 x double> %i.bi, double %i.al, i64 0
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bj, <2 x double> %i.bg)
  %i.bl = shufflevector <4 x double> %i.ak, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bm = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.i, i64 1
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bn, <2 x double> %i.bk) ; 2 uses
  %i.bp = fmul double %i.aw, %i.ay
  call void @_ZN2cv5sqpnp10PoseSolver22computeRowAndNullspaceERKNS_4MatxIdLi9ELi1EEERNS2_IdLi9ELi6EEERNS2_IdLi9ELi3EEERNS2_IdLi6ELi6EEERKd(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(432) %7, ptr noundef nonnull align 8 dereferenceable(216) %6, ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bq = fsub <2 x double> splat (double 1.000000e+00), %i.av
  %i.br = extractelement <2 x double> %i.bo, i64 1
  %i.bs = fneg double %i.br
  %i.bt = load <2 x double>, ptr %8, align 16
  %i.bu = load double, ptr %i.k, align 8, !tbaa !43
  %i.bv = load double, ptr %i.l, align 16, !tbaa !43
  %i.bw = load double, ptr %i.m, align 16, !tbaa !43
  %i.bx = fneg double %i.bw
  %i.by = load <2 x double>, ptr %i.n, align 8
  %i.bz = load double, ptr %i.o, align 8, !tbaa !43
  %i.ca = load double, ptr %i.p, align 8, !tbaa !43
  %i.cb = load double, ptr %i.q, align 16, !tbaa !43
  %i.cc = fneg double %i.cb
  %i.cd = load double, ptr %i.r, align 8, !tbaa !43
  %i.ce = fneg double %i.cd
  %i.cf = load double, ptr %i.s, align 16, !tbaa !43
  %i.cg = load double, ptr %i.t, align 16, !tbaa !43
  %i.ch = fneg double %i.cg
  %i.ci = load double, ptr %i.u, align 16, !tbaa !43
  %i.cj = fneg double %i.ci
  %i.ck = load <2 x double>, ptr %i.v, align 8, !tbaa !43
  %i.cl = fneg <2 x double> %i.ck                 ; 2 uses
  %i.cm = load double, ptr %i.w, align 8, !tbaa !43
  %i.cn = load double, ptr %i.ae, align 8, !tbaa !43
  %i.co = load double, ptr %i.af, align 8, !tbaa !43
  %i.cp = load double, ptr %i.ag, align 8, !tbaa !43
  %i.cq = load double, ptr %i.ah, align 8, !tbaa !43
  %i.cr = load double, ptr %i.ai, align 8, !tbaa !43
  %i.cs = load double, ptr %i.aj, align 8, !tbaa !43
  %i.ct = load <8 x double>, ptr %7, align 8, !tbaa !43 ; 6 uses
  %i.cu = shufflevector <8 x double> %i.ct, <8 x double> poison, <2 x i32> <i32 0, i32 6>
  %i.cv = shufflevector <8 x double> %i.ct, <8 x double> poison, <2 x i32> <i32 1, i32 7>
  %i.cw = load <4 x double>, ptr %i.x, align 8, !tbaa !43
  %i.cx = shufflevector <4 x double> %i.cw, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.cy = shufflevector <8 x double> %i.ct, <8 x double> %i.cx, <2 x i32> <i32 2, i32 8>
  %i.cz = shufflevector <8 x double> %i.ct, <8 x double> %i.cx, <2 x i32> <i32 3, i32 9>
  %i.da = shufflevector <8 x double> %i.ct, <8 x double> %i.cx, <2 x i32> <i32 4, i32 10>
  %i.db = shufflevector <8 x double> %i.ct, <8 x double> %i.cx, <2 x i32> <i32 5, i32 11>
  %i.dc = load <8 x double>, ptr %i.y, align 8, !tbaa !43 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN2cv5sqpnp10PoseSolver22computeRowAndNullspaceERKNS_4MatxIdLi9ELi1EEERNS2_IdLi9ELi6EEERNS2_IdLi9ELi3EEERNS2_IdLi6ELi6EEERKd:vector.ph
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 13 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !43 ; 2 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %i.au)
  %sqrt649 = tail call double @llvm.sqrt.f64(double %i.ax) ; 2 uses
  %i.ay = fdiv double 1.000000e+00, %sqrt649      ; 3 uses
  %i.az = fmul double %i.aq, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 6 uses
  store double %i.az, ptr %i.ba, align 8, !tbaa !43
  %i.bb = load double, ptr %i.ar, align 8, !tbaa !43
  %i.bc = fmul double %i.bb, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 6 uses
  store double %i.bc, ptr %i.bd, align 8, !tbaa !43
  %i.be = load double, ptr %i.av, align 8, !tbaa !43
  %i.bf = fmul double %i.be, %i.ay
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 6 uses
  store double %i.bf, ptr %i.bg, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bi = fmul double %sqrt649, 2.000000e+00
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store double %i.bi, ptr %i.bj, align 8, !tbaa !43
  %i.bk = load double, ptr %2, align 8, !tbaa !43 ; 3 uses
  %i.bl = load double, ptr %i.p, align 8, !tbaa !43 ; 3 uses
  %i.bm = load <2 x double>, ptr %i.aa, align 8
  %i.bn = load double, ptr %i.s, align 8, !tbaa !43 ; 3 uses
  %i.bo = load double, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.bp = load double, ptr %i.ai, align 8, !tbaa !43 ; 2 uses
  %i.bq = load <2 x double>, ptr %i.u, align 8, !tbaa !43 ; 3 uses
  %i.br = load <2 x double>, ptr %1, align 8, !tbaa !43 ; 2 uses
  %i.bs = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <2 x i32> <i32 1, i32 3>
  %i.bt = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bp, i64 1
  %i.bv = fmul <2 x double> %i.bs, %i.bu
  %i.bw = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <2 x i32> <i32 0, i32 2>
  %i.bx = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bo, i64 1
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.by, <2 x double> %i.bv)
  %i.ca = load double, ptr %i.g, align 8, !tbaa !43
  %i.cb = load double, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %i.cc = insertelement <2 x double> %i.bm, double %i.ca, i64 1
  %i.cd = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.cb, i64 1
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.ce, <2 x double> %i.bz) ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = fneg double %i.cg                       ; 3 uses
  %i.ci = extractelement <2 x double> %i.bq, i64 0
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.bk, double %i.ci) ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store double %i.cj, ptr %i.ck, align 8, !tbaa !43
  %i.cl = load double, ptr %i.w, align 8, !tbaa !43
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.bl, double %i.cl) ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 7 uses
  store double %i.cm, ptr %i.cn, align 8, !tbaa !43
  %i.co = load double, ptr %i.aa, align 8, !tbaa !43
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.bn, double %i.co) ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 7 uses
  store double %i.cp, ptr %i.cq, align 8, !tbaa !43
  %i.cr = load double, ptr %1, align 8, !tbaa !43
  %i.cs = extractelement <2 x double> %i.cf, i64 1
  %i.ct = fneg double %i.cs                       ; 3 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.bo, double %i.cr) ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 7 uses
  store double %i.cu, ptr %i.cv, align 8, !tbaa !43
  %i.cw = load double, ptr %i.c, align 8, !tbaa !43
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.bp, double %i.cw) ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 7 uses
  store double %i.cx, ptr %i.cy, align 8, !tbaa !43
  %i.cz = load double, ptr %i.g, align 8, !tbaa !43
  %i.da = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cb, double %i.cz) ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 6 uses
  %i.dc = fmul double %i.cm, %i.cm
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cj, double %i.dc)
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.dd)
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double %i.de)
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.df)
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.da, double %i.da, double %i.dg)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.dh)
  %i.di = fdiv double 1.000000e+00, %sqrt         ; 6 uses
  %i.dj = fmul double %i.cj, %i.di
  store double %i.dj, ptr %i.ck, align 8, !tbaa !43
  %i.dk = fmul double %i.cm, %i.di
  store double %i.dk, ptr %i.cn, align 8, !tbaa !43
  %i.dl = fmul double %i.cp, %i.di
  store double %i.dl, ptr %i.cq, align 8, !tbaa !43
  %i.dm = fmul double %i.cu, %i.di
  store double %i.dm, ptr %i.cv, align 8, !tbaa !43
  %i.dn = fmul double %i.cx, %i.di
  store double %i.dn, ptr %i.cy, align 8, !tbaa !43
  %i.do = fmul double %i.da, %i.di
  store double %i.do, ptr %i.db, align 8, !tbaa !43
  %i.dp = load double, ptr %i.u, align 8, !tbaa !43
  %i.dq = load double, ptr %i.w, align 8, !tbaa !43
  %i.dr = fmul double %i.bl, %i.dq
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.bk, double %i.dr)
  %i.dt = load double, ptr %i.aa, align 8, !tbaa !43
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.bn, double %i.ds)
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 144
  store double %i.du, ptr %i.dv, align 8, !tbaa !43
  %i.dw = load double, ptr %1, align 8, !tbaa !43
  %i.dx = load double, ptr %i.af, align 8, !tbaa !43
  %i.dy = load double, ptr %i.c, align 8, !tbaa !43
  %i.dz = load double, ptr %i.ai, align 8, !tbaa !43
  %i.ea = fmul double %i.dy, %i.dz
  %i.eb = load double, ptr %i.g, align 8, !tbaa !43
  %i.ec = load double, ptr %i.al, align 8, !tbaa !43
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dx, double %i.ea)
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ec, double %i.ee)
  %i.eg = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ef, i64 0
  store <2 x double> %i.eg, ptr %i.ed, align 8, !tbaa !43
  %i.eh = load double, ptr %i.u, align 8, !tbaa !43
  %i.ei = load double, ptr %i.ck, align 8, !tbaa !43
  %i.ej = load double, ptr %i.w, align 8, !tbaa !43
  %i.ek = load double, ptr %i.cn, align 8, !tbaa !43
  %i.el = fmul double %i.ej, %i.ek
  %i.em = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double %i.el)
  %i.en = load double, ptr %i.aa, align 8, !tbaa !43
  %i.eo = load double, ptr %i.cq, align 8, !tbaa !43
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.en, double %i.eo, double %i.em)
  %i.eq = load double, ptr %1, align 8, !tbaa !43
  %i.er = load double, ptr %i.cv, align 8, !tbaa !43
  %i.es = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.er, double %i.ep)
  %i.et = load double, ptr %i.c, align 8, !tbaa !43
  %i.eu = load double, ptr %i.cy, align 8, !tbaa !43
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.et, double %i.eu, double %i.es)
  %i.ew = load double, ptr %i.g, align 8, !tbaa !43
  %i.ex = load double, ptr %i.db, align 8, !tbaa !43
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.ex, double %i.ev)
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 168
  store double %i.ey, ptr %i.ez, align 8, !tbaa !43
  %i.fa = load double, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.fb = load double, ptr %i.ar, align 8, !tbaa !43 ; 2 uses
  %i.fc = load double, ptr %i.ai, align 8, !tbaa !43 ; 2 uses
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = load double, ptr %i.av, align 8, !tbaa !43 ; 2 uses
  %i.ff = load double, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %i.fg = load double, ptr %i.u, align 8, !tbaa !43
  %i.fh = load double, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %i.fi = load double, ptr %i.w, align 8, !tbaa !43
  %i.fj = load double, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = load double, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %i.fm = load double, ptr %i.cv, align 8, !tbaa !43 ; 2 uses
  %i.fn = load double, ptr %i.cy, align 8, !tbaa !43 ; 2 uses
  %i.fo = load double, ptr %i.ap, align 8, !tbaa !43
  %i.fp = load <2 x double>, ptr %i.aa, align 8, !tbaa !43
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fa, double %i.fd)
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.ff, double %i.fq)
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fh, double %i.fk)
  %i.ft = fmul double %i.fb, %i.fn
  %i.fu = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fm, i64 1
  %i.fw = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.ft, i64 1
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fv, <2 x double> %i.fx) ; 2 uses
  %i.fz = load double, ptr %i.db, align 8, !tbaa !43 ; 2 uses
  %i.ga = extractelement <2 x double> %i.fy, i64 1
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fz, double %i.ga)
  %i.gc = fneg double %i.gb                       ; 6 uses
  %i.gd = load double, ptr %i.ck, align 8, !tbaa !43
  %i.ge = fmul double %i.gd, %i.gc                ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store double %i.ge, ptr %i.gf, align 8, !tbaa !43
  %i.gg = load double, ptr %i.cn, align 8, !tbaa !43
  %i.gh = fmul double %i.gg, %i.gc                ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  store double %i.gh, ptr %i.gi, align 8, !tbaa !43
  %i.gj = load double, ptr %i.cq, align 8, !tbaa !43
  %i.gk = fmul double %i.gj, %i.gc                ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  store double %i.gk, ptr %i.gl, align 8, !tbaa !43
  %i.gm = load double, ptr %i.ap, align 8, !tbaa !43
  %i.gn = fneg double %i.fr                       ; 3 uses
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.fa, double %i.gm)
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.fm, double %i.go) ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 4 uses
  store double %i.gp, ptr %i.gq, align 8, !tbaa !43
  %i.gr = load double, ptr %i.ar, align 8, !tbaa !43
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.fc, double %i.gr)
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.fn, double %i.gs) ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  store double %i.gt, ptr %i.gu, align 8, !tbaa !43
  %i.gv = load double, ptr %i.av, align 8, !tbaa !43
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.ff, double %i.gv)
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.fz, double %i.gw) ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  store double %i.gx, ptr %i.gy, align 8, !tbaa !43
  %i.gz = load double, ptr %i.u, align 8, !tbaa !43
  %i.ha = extractelement <2 x double> %i.fy, i64 0
  %i.hb = fneg double %i.ha                       ; 3 uses
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.hb, double %i.fh, double %i.gz) ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 5 uses
  store double %i.hc, ptr %i.hd, align 8, !tbaa !43
  %i.he = load double, ptr %i.w, align 8, !tbaa !43
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.hb, double %i.fj, double %i.he) ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 5 uses
  store double %i.hf, ptr %i.hg, align 8, !tbaa !43
  %i.hh = load double, ptr %i.aa, align 8, !tbaa !43
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hb, double %i.fl, double %i.hh) ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 4 uses
  %10 = fmul double %i.ge, %i.ge
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.gh, double %10)
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gk, double %i.hk)
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gp, double %i.hl)
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.gt, double %i.hm)
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gx, double %i.hn)
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.hc, double %i.hc, double %i.ho)
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.hf, double %i.hp)
  %i.hr = tail call noundef double @llvm.fmuladd.f64(double %i.hi, double %i.hi, double %i.hq)
  %i.hs = tail call noundef double @sqrt(double noundef %i.hr) #16
  %i.ht = fdiv double 1.000000e+00, %i.hs         ; 9 uses
  %i.hu = fmul double %i.ht, %i.ge
  store double %i.hu, ptr %i.gf, align 8, !tbaa !43
  %i.hv = fmul double %i.ht, %i.gh
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double %i.hv, ptr %i.hw, align 8, !tbaa !43
  %i.hx = fmul double %i.ht, %i.gk
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 128
  store double %i.hx, ptr %i.hy, align 8, !tbaa !43
  %i.hz = fmul double %i.ht, %i.gp
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 176
  store double %i.hz, ptr %i.ib, align 8, !tbaa !43
  %i.ic = fmul double %i.ht, %i.gt
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 224
  store double %i.ic, ptr %i.ie, align 8, !tbaa !43
  %i.if = fmul double %i.ht, %i.gx
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 272
  store double %i.if, ptr %i.ih, align 8, !tbaa !43
  %i.ii = fmul double %i.ht, %i.hc
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 320
  store double %i.ii, ptr %i.ik, align 8, !tbaa !43
  %i.il = fmul double %i.ht, %i.hf
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 368
  store double %i.il, ptr %i.in, align 8, !tbaa !43
  %i.io = fmul double %i.ht, %i.hi
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 416
  store double %i.io, ptr %i.iq, align 8, !tbaa !43
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 192
  store double 0.000000e+00, ptr %i.ir, align 8, !tbaa !43
  %i.is = load double, ptr %i.ap, align 8, !tbaa !43
  %i.it = load double, ptr %i.af, align 8, !tbaa !43
  %i.iu = load double, ptr %i.ar, align 8, !tbaa !43
  %i.iv = load double, ptr %i.ai, align 8, !tbaa !43
  %i.iw = fmul double %i.iu, %i.iv
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.is, double %i.it, double %i.iw)
  %i.iy = load double, ptr %i.av, align 8, !tbaa !43
  %i.iz = load double, ptr %i.al, align 8, !tbaa !43
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.iy, double %i.iz, double %i.ix)
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 200
  store double %i.ja, ptr %i.jb, align 8, !tbaa !43
  %i.jc = load double, ptr %i.u, align 8, !tbaa !43
  %i.jd = load double, ptr %i.ba, align 8, !tbaa !43
  %i.je = load double, ptr %i.w, align 8, !tbaa !43
  %i.jf = load double, ptr %i.bd, align 8, !tbaa !43
  %i.jg = fmul double %i.je, %i.jf
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jd, double %i.jg)
  %i.ji = load double, ptr %i.aa, align 8, !tbaa !43
  %i.jj = load double, ptr %i.bg, align 8, !tbaa !43
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.ji, double %i.jj, double %i.jh)
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 208
  store double %i.jk, ptr %i.jl, align 8, !tbaa !43
  %i.jm = load double, ptr %i.ap, align 8, !tbaa !43
  %i.jn = load double, ptr %i.cv, align 8, !tbaa !43
  %i.jo = load double, ptr %i.ar, align 8, !tbaa !43
  %i.jp = load double, ptr %i.cy, align 8, !tbaa !43
  %i.jq = fmul double %i.jo, %i.jp
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.jm, double %i.jn, double %i.jq)
  %i.js = load double, ptr %i.av, align 8, !tbaa !43
  %i.jt = load double, ptr %i.db, align 8, !tbaa !43
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.js, double %i.jt, double %i.jr)
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 216
  store double %i.ju, ptr %i.jv, align 8, !tbaa !43
  %i.jw = load double, ptr %i.ap, align 8, !tbaa !43
  %i.jx = load double, ptr %i.gq, align 8, !tbaa !43
  %i.jy = load double, ptr %i.ar, align 8, !tbaa !43
  %i.jz = load double, ptr %i.gu, align 8, !tbaa !43
  %i.ka = fmul double %i.jy, %i.jz
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.jx, double %i.ka)
  %i.kc = load double, ptr %i.av, align 8, !tbaa !43
  %i.kd = load double, ptr %i.gy, align 8, !tbaa !43
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.kd, double %i.kb)
  %i.kf = load double, ptr %i.u, align 8, !tbaa !43
  %i.kg = load double, ptr %i.hd, align 8, !tbaa !43
  %i.kh = tail call double @llvm.fmuladd.f64(double %i.kf, double %i.kg, double %i.ke)
  %i.ki = load double, ptr %i.w, align 8, !tbaa !43
  %i.kj = load double, ptr %i.hg, align 8, !tbaa !43
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.ki, double %i.kj, double %i.kh)
  %i.kl = load double, ptr %i.aa, align 8, !tbaa !43
  %i.km = load double, ptr %i.hj, align 8, !tbaa !43
  %i.kn = tail call double @llvm.fmuladd.f64(double %i.kl, double %i.km, double %i.kk)
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 224
  store double %i.kn, ptr %i.ko, align 8, !tbaa !43
  %i.kp = load double, ptr %i.ap, align 8, !tbaa !43 ; 4 uses
  %i.kq = load double, ptr %2, align 8, !tbaa !43 ; 3 uses
  %i.kr = load double, ptr %i.ar, align 8, !tbaa !43 ; 3 uses
  %i.ks = load double, ptr %i.p, align 8, !tbaa !43 ; 3 uses
  %11 = fmul double %i.kr, %i.ks
  %12 = tail call double @llvm.fmuladd.f64(double %i.kp, double %i.kq, double %11)
  %i.kt = load double, ptr %i.av, align 8, !tbaa !43 ; 3 uses
  %i.ku = load double, ptr %i.s, align 8, !tbaa !43 ; 3 uses
  %13 = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.ku, double %12)
  %i.kv = load double, ptr %1, align 8, !tbaa !43 ; 2 uses
  %i.kw = load double, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %14 = load double, ptr %i.c, align 8, !tbaa !43 ; 2 uses
  %15 = load double, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %16 = fmul double %14, %15
  %17 = tail call double @llvm.fmuladd.f64(double %i.kv, double %i.kw, double %16)
  %i.kx = load double, ptr %i.g, align 8, !tbaa !43 ; 2 uses
  %i.ky = load double, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %18 = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.ky, double %17)
  %i.kz = load double, ptr %i.ck, align 8, !tbaa !43 ; 2 uses
  %i.la = load double, ptr %i.cn, align 8, !tbaa !43 ; 2 uses
  %19 = fmul double %i.kr, %i.la
  %20 = tail call double @llvm.fmuladd.f64(double %i.kp, double %i.kz, double %19)
  %21 = load double, ptr %i.cq, align 8, !tbaa !43 ; 2 uses
  %22 = tail call double @llvm.fmuladd.f64(double %i.kt, double %21, double %20) ; 3 uses
  %23 = load double, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  %24 = load double, ptr %i.hg, align 8, !tbaa !43 ; 2 uses
  %25 = fmul double %14, %24
  %26 = tail call double @llvm.fmuladd.f64(double %i.kv, double %23, double %25)
  %i.lb = load double, ptr %i.hj, align 8, !tbaa !43 ; 2 uses
  %27 = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.lb, double %26)
  %i.lc = load double, ptr %i.gf, align 8, !tbaa !43 ; 2 uses
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.kp, double %i.lc, double %27)
  %i.le = load double, ptr %i.gi, align 8, !tbaa !43 ; 2 uses
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.le, double %i.ld)
  %i.lg = load double, ptr %i.gl, align 8, !tbaa !43 ; 2 uses
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.lg, double %i.lf)
  %i.li = fneg double %13                         ; 3 uses
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.li, double %i.kq, double %i.kp)
  %i.lk = fneg double %22                         ; 3 uses
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.kz, double %i.lj)
  %i.lm = fneg double %i.lh                       ; 8 uses
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lc, double %i.ll) ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store double %i.ln, ptr %i.lo, align 8, !tbaa !43
  %i.lp = load double, ptr %i.ar, align 8, !tbaa !43
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.li, double %i.ks, double %i.lp)
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.la, double %i.lq)
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.le, double %i.lr) ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  store double %i.ls, ptr %i.lt, align 8, !tbaa !43
  %i.lu = load double, ptr %i.av, align 8, !tbaa !43
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.li, double %i.ku, double %i.lu)
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.lk, double %21, double %i.lv)
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lg, double %i.lw) ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  store double %i.lx, ptr %i.ly, align 8, !tbaa !43
  %i.lz = load double, ptr %i.gq, align 8, !tbaa !43
  %i.ma = load double, ptr %i.cv, align 8, !tbaa !43
  %i.mb = fneg double %i.ma
  %i.mc = fmul double %22, %i.mb
  %i.md = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lz, double %i.mc) ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  store double %i.md, ptr %i.me, align 8, !tbaa !43
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.mg = load <2 x double>, ptr %i.cy, align 8, !tbaa !43 ; 2 uses
  %i.mh = load <2 x double>, ptr %i.db, align 8, !tbaa !43 ; 2 uses
  %i.mi = shufflevector <2 x double> %i.mg, <2 x double> %i.mh, <2 x i32> <i32 0, i32 2>
  %i.mj = fneg <2 x double> %i.mi
  %28 = insertelement <2 x double> poison, double %22, i64 0
  %i.mk = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = fmul <2 x double> %i.mk, %i.mj
  %i.mm = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mo = shufflevector <2 x double> %i.mg, <2 x double> %i.mh, <2 x i32> <i32 1, i32 3>
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.mo, <2 x double> %i.ml) ; 2 uses
  %i.mq = extractelement <2 x double> %i.mp, i64 0 ; 4 uses
  store double %i.mq, ptr %i.mf, align 8, !tbaa !43
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.ms = extractelement <2 x double> %i.mp, i64 1 ; 4 uses
  store double %i.ms, ptr %i.mr, align 8, !tbaa !43
  %i.mt = load double, ptr %1, align 8, !tbaa !43
  %i.mu = fneg double %18                         ; 3 uses
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.kw, double %i.mt)
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.lm, double %23, double %i.mv) ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  store double %i.mw, ptr %i.mx, align 8, !tbaa !43
  %i.my = load double, ptr %i.c, align 8, !tbaa !43
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.mu, double %15, double %i.my)
  %i.na = tail call double @llvm.fmuladd.f64(double %i.lm, double %24, double %i.mz) ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store double %i.na, ptr %i.nb, align 8, !tbaa !43
  %i.nc = load double, ptr %i.g, align 8, !tbaa !43
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.ky, double %i.nc)
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lb, double %i.nd) ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 424 ; 2 uses
  %29 = fmul double %i.ln, %i.ln
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.ls, double %i.ls, double %29)
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.lx, double %i.lx, double %i.ng)
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.md, double %i.md, double %i.nh)
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.mq, double %i.mq, double %i.ni)
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.ms, double %i.ms, double %i.nj)
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.mw, double %i.mw, double %i.nk)
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.na, double %i.na, double %i.nl)
  %i.nn = tail call noundef double @llvm.fmuladd.f64(double %i.ne, double %i.ne, double %i.nm)
  %i.no = tail call noundef double @sqrt(double noundef %i.nn) #16
  %i.np = fdiv double 1.000000e+00, %i.no         ; 9 uses
  %i.nq = fmul double %i.np, %i.ln
  store double %i.nq, ptr %i.lo, align 8, !tbaa !43
  %i.nr = fmul double %i.np, %i.ls
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 88
  store double %i.nr, ptr %i.ns, align 8, !tbaa !43
  %i.nt = fmul double %i.np, %i.lx
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 136
  store double %i.nt, ptr %i.nu, align 8, !tbaa !43
  %i.nv = fmul double %i.np, %i.md
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 184
  store double %i.nv, ptr %i.nw, align 8, !tbaa !43
  %i.nx = fmul double %i.np, %i.mq
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 232
  store double %i.nx, ptr %i.ny, align 8, !tbaa !43
  %i.nz = fmul double %i.np, %i.ms
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 280
  store double %i.nz, ptr %i.oa, align 8, !tbaa !43
  %i.ob = fmul double %i.np, %i.mw
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 328
  store double %i.ob, ptr %i.oc, align 8, !tbaa !43
  %i.od = fmul double %i.np, %i.na
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 376
  store double %i.od, ptr %i.oe, align 8, !tbaa !43
  %i.of = fmul double %i.np, %i.ne
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 424
  store double %i.of, ptr %i.og, align 8, !tbaa !43
  %i.oh = load double, ptr %i.ap, align 8, !tbaa !43
  %i.oi = load double, ptr %i.ar, align 8, !tbaa !43
  %i.oj = fmul double %i.ks, %i.oi
  %i.ok = load double, ptr %i.av, align 8, !tbaa !43
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.om = tail call double @llvm.fmuladd.f64(double %i.oh, double %i.kq, double %i.oj)
  %i.on = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.ku, double %i.om)
  %i.oo = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.on, i64 0
  store <2 x double> %i.oo, ptr %i.ol, align 8, !tbaa !43
  %i.op = load double, ptr %1, align 8, !tbaa !43
  %i.oq = load double, ptr %i.ba, align 8, !tbaa !43
  %i.or = load double, ptr %i.c, align 8, !tbaa !43
  %i.os = load double, ptr %i.bd, align 8, !tbaa !43
  %i.ot = fmul double %i.or, %i.os
  %i.ou = tail call double @llvm.fmuladd.f64(double %i.op, double %i.oq, double %i.ot)
  %i.ov = load double, ptr %i.g, align 8, !tbaa !43
  %i.ow = load double, ptr %i.bg, align 8, !tbaa !43
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.ov, double %i.ow, double %i.ou)
  %i.oy = getelementptr inbounds nuw i8, ptr %4, i64 256
  store double %i.ox, ptr %i.oy, align 8, !tbaa !43
  %i.oz = load double, ptr %i.ap, align 8, !tbaa !43
  %i.pa = load double, ptr %i.ck, align 8, !tbaa !43
  %i.pb = load double, ptr %i.ar, align 8, !tbaa !43
  %i.pc = load double, ptr %i.cn, align 8, !tbaa !43
  %i.pd = fmul double %i.pb, %i.pc
  %i.pe = tail call double @llvm.fmuladd.f64(double %i.oz, double %i.pa, double %i.pd)
  %i.pf = load double, ptr %i.av, align 8, !tbaa !43
  %i.pg = load double, ptr %i.cq, align 8, !tbaa !43
  %i.ph = tail call double @llvm.fmuladd.f64(double %i.pf, double %i.pg, double %i.pe)
  %i.pi = getelementptr inbounds nuw i8, ptr %4, i64 264
  store double %i.ph, ptr %i.pi, align 8, !tbaa !43
  %i.pj = load double, ptr %i.ap, align 8, !tbaa !43
  %i.pk = load double, ptr %i.gf, align 8, !tbaa !43
  %i.pl = load double, ptr %i.ar, align 8, !tbaa !43
  %i.pm = load double, ptr %i.gi, align 8, !tbaa !43
  %i.pn = fmul double %i.pl, %i.pm
  %i.po = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.pk, double %i.pn)
  %i.pp = load double, ptr %i.av, align 8, !tbaa !43
  %i.pq = load double, ptr %i.gl, align 8, !tbaa !43
  %i.pr = tail call double @llvm.fmuladd.f64(double %i.pp, double %i.pq, double %i.po)
  %i.ps = load double, ptr %1, align 8, !tbaa !43
  %i.pt = load double, ptr %i.hd, align 8, !tbaa !43
  %i.pu = tail call double @llvm.fmuladd.f64(double %i.ps, double %i.pt, double %i.pr)
  %i.pv = load double, ptr %i.c, align 8, !tbaa !43
  %i.pw = load double, ptr %i.hg, align 8, !tbaa !43
  %i.px = tail call double @llvm.fmuladd.f64(double %i.pv, double %i.pw, double %i.pu)
  %i.py = load double, ptr %i.g, align 8, !tbaa !43
  %i.pz = load double, ptr %i.hj, align 8, !tbaa !43
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.py, double %i.pz, double %i.px)
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 272
  store double %i.qa, ptr %i.qb, align 8, !tbaa !43
  %i.qc = load double, ptr %i.ap, align 8, !tbaa !43
  %i.qd = load double, ptr %i.lo, align 8, !tbaa !43
  %i.qe = load double, ptr %i.ar, align 8, !tbaa !43
  %i.qf = load double, ptr %i.lt, align 8, !tbaa !43
  %i.qg = fmul double %i.qe, %i.qf
  %i.qh = tail call double @llvm.fmuladd.f64(double %i.qc, double %i.qd, double %i.qg)
  %i.qi = load double, ptr %i.av, align 8, !tbaa !43
  %i.qj = load double, ptr %i.ly, align 8, !tbaa !43
  %i.qk = tail call double @llvm.fmuladd.f64(double %i.qi, double %i.qj, double %i.qh)
  %i.ql = load double, ptr %1, align 8, !tbaa !43
  %i.qm = load double, ptr %i.mx, align 8, !tbaa !43
  %i.qn = tail call double @llvm.fmuladd.f64(double %i.ql, double %i.qm, double %i.qk)
  %i.qo = load double, ptr %i.c, align 8, !tbaa !43
  %i.qp = load double, ptr %i.nb, align 8, !tbaa !43
  %i.qq = tail call double @llvm.fmuladd.f64(double %i.qo, double %i.qp, double %i.qn)
  %i.qr = load double, ptr %i.g, align 8, !tbaa !43
  %i.qs = load double, ptr %i.nf, align 8, !tbaa !43
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.qs, double %i.qq)
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 280
  store double %i.qt, ptr %i.qu, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.qv = load double, ptr %2, align 8, !tbaa !43
  store double %i.qv, ptr %9, align 8, !tbaa !43
  %i.qw = load double, ptr %i.p, align 8, !tbaa !43
  %i.qx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.qw, ptr %i.qx, align 8, !tbaa !43
  %i.qy = load double, ptr %i.s, align 8, !tbaa !43
  %i.qz = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.qy, ptr %i.qz, align 8, !tbaa !43
  %i.ra = load double, ptr %i.ia, align 8, !tbaa !43
  %i.rb = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double %i.ra, ptr %i.rb, align 8, !tbaa !43
  %i.rc = load double, ptr %i.id, align 8, !tbaa !43
  %i.rd = getelementptr inbounds nuw i8, ptr %9, i64 32
  store double %i.rc, ptr %i.rd, align 8, !tbaa !43
  %i.re = load double, ptr %i.ig, align 8, !tbaa !43
  %i.rf = getelementptr inbounds nuw i8, ptr %9, i64 40
  store double %i.re, ptr %i.rf, align 8, !tbaa !43
  %i.rg = load double, ptr %i.ij, align 8, !tbaa !43
  %i.rh = getelementptr inbounds nuw i8, ptr %9, i64 48
  store double %i.rg, ptr %i.rh, align 8, !tbaa !43
  %i.ri = load double, ptr %i.im, align 8, !tbaa !43
  %i.rj = getelementptr inbounds nuw i8, ptr %9, i64 56
  store double %i.ri, ptr %i.rj, align 8, !tbaa !43
  %i.rk = load double, ptr %i.ip, align 8, !tbaa !43
  %i.rl = getelementptr inbounds nuw i8, ptr %9, i64 64
  store double %i.rk, ptr %i.rl, align 8, !tbaa !43
  %i.rm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !43
  %i.ro = getelementptr inbounds nuw i8, ptr %9, i64 72
  store double %i.rn, ptr %i.ro, align 8, !tbaa !43
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !43
  %i.rr = getelementptr inbounds nuw i8, ptr %9, i64 80
  store double %i.rq, ptr %i.rr, align 8, !tbaa !43
  %i.rs = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !43
  %i.ru = getelementptr inbounds nuw i8, ptr %9, i64 88
  store double %i.rt, ptr %i.ru, align 8, !tbaa !43
  %i.rv = load double, ptr %i.af, align 8, !tbaa !43
  %i.rw = getelementptr inbounds nuw i8, ptr %9, i64 96
  store double %i.rv, ptr %i.rw, align 8, !tbaa !43
  %i.rx = load double, ptr %i.ai, align 8, !tbaa !43
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 104
  store double %i.rx, ptr %i.ry, align 8, !tbaa !43
  %i.rz = load double, ptr %i.al, align 8, !tbaa !43
  %i.sa = getelementptr inbounds nuw i8, ptr %9, i64 112
  store double %i.rz, ptr %i.sa, align 8, !tbaa !43
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !43
  %i.sd = getelementptr inbounds nuw i8, ptr %9, i64 120
  store double %i.sc, ptr %i.sd, align 8, !tbaa !43
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.sf = load double, ptr %i.se, align 8, !tbaa !43
  %i.sg = getelementptr inbounds nuw i8, ptr %9, i64 128
  store double %i.sf, ptr %i.sg, align 8, !tbaa !43
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.si = load double, ptr %i.sh, align 8, !tbaa !43
  %i.sj = getelementptr inbounds nuw i8, ptr %9, i64 136
  store double %i.si, ptr %i.sj, align 8, !tbaa !43
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !43
  %i.sm = getelementptr inbounds nuw i8, ptr %9, i64 144
  store double %i.sl, ptr %i.sm, align 8, !tbaa !43
  %i.sn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.so = load double, ptr %i.sn, align 8, !tbaa !43
  %i.sp = getelementptr inbounds nuw i8, ptr %9, i64 152
  store double %i.so, ptr %i.sp, align 8, !tbaa !43
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !43
  %i.ss = getelementptr inbounds nuw i8, ptr %9, i64 160
  store double %i.sr, ptr %i.ss, align 8, !tbaa !43
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.su = load double, ptr %i.st, align 8, !tbaa !43
  %i.sv = getelementptr inbounds nuw i8, ptr %9, i64 168
  store double %i.su, ptr %i.sv, align 8, !tbaa !43
  %i.sw = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !43
  %i.sy = getelementptr inbounds nuw i8, ptr %9, i64 176
  store double %i.sx, ptr %i.sy, align 8, !tbaa !43
  %i.sz = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !43
  %i.tb = getelementptr inbounds nuw i8, ptr %9, i64 184
  store double %i.ta, ptr %i.tb, align 8, !tbaa !43
  %i.tc = load double, ptr %i.ba, align 8, !tbaa !43
  %i.td = getelementptr inbounds nuw i8, ptr %9, i64 192
  store double %i.tc, ptr %i.td, align 8, !tbaa !43
  %i.te = load double, ptr %i.bd, align 8, !tbaa !43
  %i.tf = getelementptr inbounds nuw i8, ptr %9, i64 200
  store double %i.te, ptr %i.tf, align 8, !tbaa !43
  %i.tg = load double, ptr %i.bg, align 8, !tbaa !43
  %i.th = getelementptr inbounds nuw i8, ptr %9, i64 208
  store double %i.tg, ptr %i.th, align 8, !tbaa !43
  %i.ti = load double, ptr %i.ck, align 8, !tbaa !43
  %i.tj = getelementptr inbounds nuw i8, ptr %9, i64 216
  store double %i.ti, ptr %i.tj, align 8, !tbaa !43
  %i.tk = load double, ptr %i.cn, align 8, !tbaa !43
  %i.tl = getelementptr inbounds nuw i8, ptr %9, i64 224
  store double %i.tk, ptr %i.tl, align 8, !tbaa !43
  %i.tm = load double, ptr %i.cq, align 8, !tbaa !43
  %i.tn = getelementptr inbounds nuw i8, ptr %9, i64 232
  store double %i.tm, ptr %i.tn, align 8, !tbaa !43
  %i.to = load double, ptr %i.cv, align 8, !tbaa !43
  %i.tp = getelementptr inbounds nuw i8, ptr %9, i64 240
  store double %i.to, ptr %i.tp, align 8, !tbaa !43
  %i.tq = load double, ptr %i.cy, align 8, !tbaa !43
  %i.tr = getelementptr inbounds nuw i8, ptr %9, i64 248
  store double %i.tq, ptr %i.tr, align 8, !tbaa !43
  %i.ts = load double, ptr %i.db, align 8, !tbaa !43
  %i.tt = getelementptr inbounds nuw i8, ptr %9, i64 256
  store double %i.ts, ptr %i.tt, align 8, !tbaa !43
  %i.tu = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !43
  %i.tw = getelementptr inbounds nuw i8, ptr %9, i64 264
  store double %i.tv, ptr %i.tw, align 8, !tbaa !43
  %i.tx = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !43
  %i.tz = getelementptr inbounds nuw i8, ptr %9, i64 272
  store double %i.ty, ptr %i.tz, align 8, !tbaa !43
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !43
  %i.uc = getelementptr inbounds nuw i8, ptr %9, i64 280
  store double %i.ub, ptr %i.uc, align 8, !tbaa !43
  %i.ud = load double, ptr %i.gf, align 8, !tbaa !43
  %i.ue = getelementptr inbounds nuw i8, ptr %9, i64 288
  store double %i.ud, ptr %i.ue, align 8, !tbaa !43
  %i.uf = load double, ptr %i.gi, align 8, !tbaa !43
  %i.ug = getelementptr inbounds nuw i8, ptr %9, i64 296
  store double %i.uf, ptr %i.ug, align 8, !tbaa !43
  %i.uh = load double, ptr %i.gl, align 8, !tbaa !43
  %i.ui = getelementptr inbounds nuw i8, ptr %9, i64 304
  store double %i.uh, ptr %i.ui, align 8, !tbaa !43
  %i.uj = load double, ptr %i.gq, align 8, !tbaa !43
  %i.uk = getelementptr inbounds nuw i8, ptr %9, i64 312
end_hunk_1
begin_hunk_2_@_ZN2cv5sqpnp10PoseSolver22computeRowAndNullspaceERKNS_4MatxIdLi9ELi1EEERNS2_IdLi9ELi6EEERNS2_IdLi9ELi3EEERNS2_IdLi6ELi6EEERKd:vector.ph
  %i.xk = fsub <2 x double> zeroinitializer, %wide.load728.8
  %i.xl = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.xm = getelementptr inbounds nuw i8, ptr %7, i64 272
  store <2 x double> %i.xj, ptr %i.xl, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.xk, ptr %i.xm, align 16, !tbaa !43, !alias.scope !167
  %i.xn = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.xo = getelementptr inbounds nuw i8, ptr %8, i64 304
  %wide.load727.9 = load <2 x double>, ptr %i.xn, align 16, !tbaa !43, !noalias !167
  %wide.load728.9 = load <2 x double>, ptr %i.xo, align 16, !tbaa !43, !noalias !167
  %i.xp = fsub <2 x double> zeroinitializer, %wide.load727.9
  %i.xq = fsub <2 x double> zeroinitializer, %wide.load728.9
  %i.xr = getelementptr inbounds nuw i8, ptr %7, i64 288
  %i.xs = getelementptr inbounds nuw i8, ptr %7, i64 304
  store <2 x double> %i.xp, ptr %i.xr, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.xq, ptr %i.xs, align 16, !tbaa !43, !alias.scope !167
  %i.xt = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.xu = getelementptr inbounds nuw i8, ptr %8, i64 336
  %wide.load727.10 = load <2 x double>, ptr %i.xt, align 16, !tbaa !43, !noalias !167
  %wide.load728.10 = load <2 x double>, ptr %i.xu, align 16, !tbaa !43, !noalias !167
  %i.xv = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %wide.load727.10
  %i.xw = fsub <2 x double> zeroinitializer, %wide.load728.10
  %i.xx = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.xy = getelementptr inbounds nuw i8, ptr %7, i64 336
  store <2 x double> %i.xv, ptr %i.xx, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.xw, ptr %i.xy, align 16, !tbaa !43, !alias.scope !167
  %i.xz = getelementptr inbounds nuw i8, ptr %8, i64 352
  %i.ya = getelementptr inbounds nuw i8, ptr %8, i64 368
  %wide.load727.11 = load <2 x double>, ptr %i.xz, align 16, !tbaa !43, !noalias !167
  %wide.load728.11 = load <2 x double>, ptr %i.ya, align 16, !tbaa !43, !noalias !167
  %i.yb = fsub <2 x double> zeroinitializer, %wide.load727.11
  %i.yc = fsub <2 x double> zeroinitializer, %wide.load728.11
  %i.yd = getelementptr inbounds nuw i8, ptr %7, i64 352
  %i.ye = getelementptr inbounds nuw i8, ptr %7, i64 368
  store <2 x double> %i.yb, ptr %i.yd, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.yc, ptr %i.ye, align 16, !tbaa !43, !alias.scope !167
  %i.yf = getelementptr inbounds nuw i8, ptr %8, i64 384
  %i.yg = getelementptr inbounds nuw i8, ptr %8, i64 400
  %wide.load727.12 = load <2 x double>, ptr %i.yf, align 16, !tbaa !43, !noalias !167
  %wide.load728.12 = load <2 x double>, ptr %i.yg, align 16, !tbaa !43, !noalias !167
  %i.yh = fsub <2 x double> zeroinitializer, %wide.load727.12
  %i.yi = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %wide.load728.12
  %i.yj = getelementptr inbounds nuw i8, ptr %7, i64 384
  %i.yk = getelementptr inbounds nuw i8, ptr %7, i64 400
  store <2 x double> %i.yh, ptr %i.yj, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.yi, ptr %i.yk, align 16, !tbaa !43, !alias.scope !167
  %i.yl = getelementptr inbounds nuw i8, ptr %8, i64 416
  %i.ym = getelementptr inbounds nuw i8, ptr %8, i64 432
  %wide.load727.13 = load <2 x double>, ptr %i.yl, align 16, !tbaa !43, !noalias !167
  %wide.load728.13 = load <2 x double>, ptr %i.ym, align 16, !tbaa !43, !noalias !167
  %i.yn = fsub <2 x double> zeroinitializer, %wide.load727.13
  %i.yo = fsub <2 x double> zeroinitializer, %wide.load728.13
  %i.yp = getelementptr inbounds nuw i8, ptr %7, i64 416
  %i.yq = getelementptr inbounds nuw i8, ptr %7, i64 432
  store <2 x double> %i.yn, ptr %i.yp, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.yo, ptr %i.yq, align 16, !tbaa !43, !alias.scope !167
  %i.yr = getelementptr inbounds nuw i8, ptr %8, i64 448
  %i.ys = getelementptr inbounds nuw i8, ptr %8, i64 464
  %wide.load727.14 = load <2 x double>, ptr %i.yr, align 16, !tbaa !43, !noalias !167
  %wide.load728.14 = load <2 x double>, ptr %i.ys, align 16, !tbaa !43, !noalias !167
  %i.yt = fsub <2 x double> zeroinitializer, %wide.load727.14
  %i.yu = fsub <2 x double> zeroinitializer, %wide.load728.14
  %i.yv = getelementptr inbounds nuw i8, ptr %7, i64 448
  %i.yw = getelementptr inbounds nuw i8, ptr %7, i64 464
  store <2 x double> %i.yt, ptr %i.yv, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.yu, ptr %i.yw, align 16, !tbaa !43, !alias.scope !167
  %i.yx = getelementptr inbounds nuw i8, ptr %8, i64 480
  %i.yy = getelementptr inbounds nuw i8, ptr %8, i64 496
  %wide.load727.15 = load <2 x double>, ptr %i.yx, align 16, !tbaa !43, !noalias !167
  %wide.load728.15 = load <2 x double>, ptr %i.yy, align 16, !tbaa !43, !noalias !167
  %i.yz = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %wide.load727.15
  %i.za = fsub <2 x double> zeroinitializer, %wide.load728.15
  %i.zb = getelementptr inbounds nuw i8, ptr %7, i64 480
  %i.zc = getelementptr inbounds nuw i8, ptr %7, i64 496
  store <2 x double> %i.yz, ptr %i.zb, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.za, ptr %i.zc, align 16, !tbaa !43, !alias.scope !167
  %i.zd = getelementptr inbounds nuw i8, ptr %8, i64 512
  %i.ze = getelementptr inbounds nuw i8, ptr %8, i64 528
  %wide.load727.16 = load <2 x double>, ptr %i.zd, align 16, !tbaa !43, !noalias !167
  %wide.load728.16 = load <2 x double>, ptr %i.ze, align 16, !tbaa !43, !noalias !167
  %i.zf = fsub <2 x double> zeroinitializer, %wide.load727.16
  %i.zg = fsub <2 x double> zeroinitializer, %wide.load728.16
  %i.zh = getelementptr inbounds nuw i8, ptr %7, i64 512
  %i.zi = getelementptr inbounds nuw i8, ptr %7, i64 528
  store <2 x double> %i.zf, ptr %i.zh, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.zg, ptr %i.zi, align 16, !tbaa !43, !alias.scope !167
  %i.zj = getelementptr inbounds nuw i8, ptr %8, i64 544
  %i.zk = getelementptr inbounds nuw i8, ptr %8, i64 560
  %wide.load727.17 = load <2 x double>, ptr %i.zj, align 16, !tbaa !43, !noalias !167
  %wide.load728.17 = load <2 x double>, ptr %i.zk, align 16, !tbaa !43, !noalias !167
  %i.zl = fsub <2 x double> zeroinitializer, %wide.load727.17
  %i.zm = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %wide.load728.17
  %i.zn = getelementptr inbounds nuw i8, ptr %7, i64 544
  %i.zo = getelementptr inbounds nuw i8, ptr %7, i64 560
  store <2 x double> %i.zl, ptr %i.zn, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.zm, ptr %i.zo, align 16, !tbaa !43, !alias.scope !167
  %i.zp = getelementptr inbounds nuw i8, ptr %8, i64 576
  %i.zq = getelementptr inbounds nuw i8, ptr %8, i64 592
  %wide.load727.18 = load <2 x double>, ptr %i.zp, align 16, !tbaa !43, !noalias !167
  %wide.load728.18 = load <2 x double>, ptr %i.zq, align 16, !tbaa !43, !noalias !167
  %i.zr = fsub <2 x double> zeroinitializer, %wide.load727.18
  %i.zs = fsub <2 x double> zeroinitializer, %wide.load728.18
  %i.zt = getelementptr inbounds nuw i8, ptr %7, i64 576
  %i.zu = getelementptr inbounds nuw i8, ptr %7, i64 592
  store <2 x double> %i.zr, ptr %i.zt, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.zs, ptr %i.zu, align 16, !tbaa !43, !alias.scope !167
  %i.zv = getelementptr inbounds nuw i8, ptr %8, i64 608
  %i.zw = getelementptr inbounds nuw i8, ptr %8, i64 624
  %wide.load727.19 = load <2 x double>, ptr %i.zv, align 16, !tbaa !43, !noalias !167
  %wide.load728.19 = load <2 x double>, ptr %i.zw, align 16, !tbaa !43, !noalias !167
  %i.zx = fsub <2 x double> zeroinitializer, %wide.load727.19
  %i.zy = fsub <2 x double> zeroinitializer, %wide.load728.19
  %i.zz = getelementptr inbounds nuw i8, ptr %7, i64 608
  %i.aaa = getelementptr inbounds nuw i8, ptr %7, i64 624
  store <2 x double> %i.zx, ptr %i.zz, align 16, !tbaa !43, !alias.scope !167
  store <2 x double> %i.zy, ptr %i.aaa, align 16, !tbaa !43, !alias.scope !167
  %i.aab = getelementptr inbounds nuw i8, ptr %8, i64 640
  %i.aac = load double, ptr %i.aab, align 16, !tbaa !43, !noalias !167
  %i.aad = fsub double 1.000000e+00, %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %7, i64 640
  store double %i.aad, ptr %i.aae, align 16, !tbaa !43, !alias.scope !167
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.aaf = load double, ptr %5, align 8, !tbaa !43
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %i.aag = zext nneg i32 %.1483 to i64            ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.aag ; 9 uses
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aaj = getelementptr i8, ptr %i.aah, i64 72
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aal = getelementptr i8, ptr %i.aah, i64 144
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aan = getelementptr i8, ptr %i.aah, i64 216
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aap = getelementptr i8, ptr %i.aah, i64 288
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aar = getelementptr i8, ptr %i.aah, i64 360
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aat = getelementptr i8, ptr %i.aah, i64 432
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aav = getelementptr i8, ptr %i.aah, i64 504
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aax = getelementptr i8, ptr %i.aah, i64 576
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !43, !noalias !168 ; 3 uses
  %i.aaz = fdiv double 1.000000e+00, %.1475       ; 9 uses
  %i.aba = fmul double %i.aaz, %i.aai             ; 5 uses
  store double %i.aba, ptr %3, align 8, !tbaa !43
  %i.abb = fmul double %i.aaz, %i.aak             ; 5 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.abb, ptr %i.abc, align 8, !tbaa !43
  %i.abd = fmul double %i.aaz, %i.aam             ; 5 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %3, i64 48
  store double %i.abd, ptr %i.abe, align 8, !tbaa !43
  %i.abf = fmul double %i.aaz, %i.aao             ; 5 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %3, i64 72
  store double %i.abf, ptr %i.abg, align 8, !tbaa !43
  %i.abh = fmul double %i.aaz, %i.aaq             ; 5 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %3, i64 96
  store double %i.abh, ptr %i.abi, align 8, !tbaa !43
  %i.abj = fmul double %i.aaz, %i.aas             ; 5 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %3, i64 120
  store double %i.abj, ptr %i.abk, align 8, !tbaa !43
  %i.abl = fmul double %i.aaz, %i.aau             ; 5 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %3, i64 144
  store double %i.abl, ptr %i.abm, align 8, !tbaa !43
  %i.abn = fmul double %i.aaz, %i.aaw             ; 5 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %3, i64 168
  store double %i.abn, ptr %i.abo, align 8, !tbaa !43
  %i.abp = fmul double %i.aaz, %i.aay             ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %3, i64 192
  store double %i.abp, ptr %i.abq, align 8, !tbaa !43
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aag
  store double -1.000000e+00, ptr %i.abr, align 8, !tbaa !43
  %i.abs = load double, ptr %5, align 8, !tbaa !43
  br label %bb.d

bb.b:                                             ; preds = %vector.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.0474655 = phi double [ f0x0010000000000000, %vector.ph ], [ %.1475, %bb.b ] ; 2 uses
  %.0482654 = phi i32 [ 0, %vector.ph ], [ %.1483, %bb.b ]
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv ; 9 uses
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.abv = getelementptr i8, ptr %i.abt, i64 72
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.abx = getelementptr i8, ptr %i.abt, i64 144
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.abz = getelementptr i8, ptr %i.abt, i64 216
  %i.aca = load double, ptr %i.abz, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.acb = getelementptr i8, ptr %i.abt, i64 288
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.acd = getelementptr i8, ptr %i.abt, i64 360
  %i.ace = load double, ptr %i.acd, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.acf = getelementptr i8, ptr %i.abt, i64 432
  %i.acg = load double, ptr %i.acf, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.ach = getelementptr i8, ptr %i.abt, i64 504
  %i.aci = load double, ptr %i.ach, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.acj = getelementptr i8, ptr %i.abt, i64 576
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %30 = fmul double %i.abu, %i.abu
  %i.acl = call double @llvm.fmuladd.f64(double %i.abw, double %i.abw, double %30)
  %i.acm = call double @llvm.fmuladd.f64(double %i.aby, double %i.aby, double %i.acl)
  %i.acn = call double @llvm.fmuladd.f64(double %i.aca, double %i.aca, double %i.acm)
  %i.aco = call double @llvm.fmuladd.f64(double %i.acc, double %i.acc, double %i.acn)
  %i.acp = call double @llvm.fmuladd.f64(double %i.ace, double %i.ace, double %i.aco)
  %i.acq = call double @llvm.fmuladd.f64(double %i.acg, double %i.acg, double %i.acp)
  %i.acr = call double @llvm.fmuladd.f64(double %i.aci, double %i.aci, double %i.acq)
  %i.acs = call noundef double @llvm.fmuladd.f64(double %i.ack, double %i.ack, double %i.acr)
  %i.act = call noundef double @sqrt(double noundef %i.acs) #16 ; 4 uses
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store double %i.act, ptr %i.acu, align 8, !tbaa !43
  %i.acv = fcmp oge double %i.act, %i.aaf
  %i.acw = fcmp olt double %.0474655, %i.act
  %or.cond = select i1 %i.acv, i1 %i.acw, i1 false ; 2 uses
  %i.acx = trunc nuw nsw i64 %indvars.iv to i32
  %.1483 = select i1 %or.cond, i32 %i.acx, i32 %.0482654 ; 2 uses
  %.1475 = select i1 %or.cond, double %i.act, double %.0474655 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !156

bb.c:                                             ; preds = %bb.f
  %i.acy = sext i32 %.2481 to i64                 ; 2 uses
  %i.acz = getelementptr inbounds [8 x i8], ptr %7, i64 %i.acy ; 9 uses
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.adb = getelementptr i8, ptr %i.acz, i64 72
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.add = getelementptr i8, ptr %i.acz, i64 144
  %i.ade = load double, ptr %i.add, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.adf = getelementptr i8, ptr %i.acz, i64 216
  %i.adg = load double, ptr %i.adf, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.adh = getelementptr i8, ptr %i.acz, i64 288
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.adj = getelementptr i8, ptr %i.acz, i64 360
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.adl = getelementptr i8, ptr %i.acz, i64 432
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.adn = getelementptr i8, ptr %i.acz, i64 504
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.adp = getelementptr i8, ptr %i.acz, i64 576
  %i.adq = load double, ptr %i.adp, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.adr = call double @llvm.fmuladd.f64(double %i.ada, double %i.aba, double 0.000000e+00)
  %i.ads = call double @llvm.fmuladd.f64(double %i.adc, double %i.abb, double %i.adr)
  %i.adt = call double @llvm.fmuladd.f64(double %i.ade, double %i.abd, double %i.ads)
  %i.adu = call double @llvm.fmuladd.f64(double %i.adg, double %i.abf, double %i.adt)
  %i.adv = call double @llvm.fmuladd.f64(double %i.adi, double %i.abh, double %i.adu)
  %i.adw = call double @llvm.fmuladd.f64(double %i.adk, double %i.abj, double %i.adv)
  %i.adx = call double @llvm.fmuladd.f64(double %i.adm, double %i.abl, double %i.adw)
  %i.ady = call double @llvm.fmuladd.f64(double %i.ado, double %i.abn, double %i.adx)
  %i.adz = call noundef double @llvm.fmuladd.f64(double %i.adq, double %i.abp, double %i.ady) ; 9 uses
  %i.aea = fmul double %i.aba, %i.adz
  %i.aeb = fmul double %i.abb, %i.adz
  %i.aec = fmul double %i.abd, %i.adz
  %i.aed = fmul double %i.abf, %i.adz
  %i.aee = fmul double %i.abh, %i.adz
  %i.aef = fmul double %i.abj, %i.adz
  %i.aeg = fmul double %i.abl, %i.adz
  %i.aeh = fmul double %i.abn, %i.adz
  %i.aei = fmul double %i.abp, %i.adz
  %i.aej = fsub double %i.ada, %i.aea             ; 3 uses
  %i.aek = fsub double %i.adc, %i.aeb             ; 3 uses
  %i.ael = fsub double %i.ade, %i.aec             ; 3 uses
  %i.aem = fsub double %i.adg, %i.aed             ; 3 uses
  %i.aen = fsub double %i.adi, %i.aee             ; 3 uses
  %i.aeo = fsub double %i.adk, %i.aef             ; 3 uses
  %i.aep = fsub double %i.adm, %i.aeg             ; 3 uses
  %i.aeq = fsub double %i.ado, %i.aeh             ; 3 uses
  %i.aer = fsub double %i.adq, %i.aei             ; 3 uses
  %31 = fmul double %i.aej, %i.aej
  %i.aes = call double @llvm.fmuladd.f64(double %i.aek, double %i.aek, double %31)
  %i.aet = call double @llvm.fmuladd.f64(double %i.ael, double %i.ael, double %i.aes)
  %i.aeu = call double @llvm.fmuladd.f64(double %i.aem, double %i.aem, double %i.aet)
  %i.aev = call double @llvm.fmuladd.f64(double %i.aen, double %i.aen, double %i.aeu)
  %i.aew = call double @llvm.fmuladd.f64(double %i.aeo, double %i.aeo, double %i.aev)
  %i.aex = call double @llvm.fmuladd.f64(double %i.aep, double %i.aep, double %i.aew)
  %i.aey = call double @llvm.fmuladd.f64(double %i.aeq, double %i.aeq, double %i.aex)
  %i.aez = call noundef double @llvm.fmuladd.f64(double %i.aer, double %i.aer, double %i.aey)
  %i.afa = call noundef double @sqrt(double noundef %i.aez) #16
  %i.afb = fdiv double 1.000000e+00, %i.afa       ; 9 uses
  %i.afc = fmul double %i.afb, %i.aej             ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.afc, ptr %i.afd, align 8, !tbaa !43
  %i.afe = fmul double %i.afb, %i.aek             ; 3 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %i.afe, ptr %i.aff, align 8, !tbaa !43
  %i.afg = fmul double %i.afb, %i.ael             ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %3, i64 56
  store double %i.afg, ptr %i.afh, align 8, !tbaa !43
  %i.afi = fmul double %i.afb, %i.aem             ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double %i.afi, ptr %i.afj, align 8, !tbaa !43
  %i.afk = fmul double %i.afb, %i.aen             ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %3, i64 104
  store double %i.afk, ptr %i.afl, align 8, !tbaa !43
  %i.afm = fmul double %i.afb, %i.aeo             ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %3, i64 128
  store double %i.afm, ptr %i.afn, align 8, !tbaa !43
  %i.afo = fmul double %i.afb, %i.aep             ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %3, i64 152
  store double %i.afo, ptr %i.afp, align 8, !tbaa !43
  %i.afq = fmul double %i.afb, %i.aeq             ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %3, i64 176
  store double %i.afq, ptr %i.afr, align 8, !tbaa !43
  %i.afs = fmul double %i.afb, %i.aer             ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %3, i64 200
  store double %i.afs, ptr %i.aft, align 8, !tbaa !43
  %i.afu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.acy
  store double -1.000000e+00, ptr %i.afu, align 8, !tbaa !43
  %i.afv = load double, ptr %5, align 8, !tbaa !43
  %i.afw = insertelement <2 x double> poison, double %i.aay, i64 0
  %i.afx = insertelement <2 x double> %i.afw, double %i.adq, i64 1
  %i.afy = insertelement <2 x double> poison, double %i.aaw, i64 0
  %i.afz = insertelement <2 x double> %i.afy, double %i.ado, i64 1
  %i.aga = insertelement <2 x double> poison, double %i.aau, i64 0
  %i.agb = insertelement <2 x double> %i.aga, double %i.adm, i64 1
  %i.agc = insertelement <2 x double> poison, double %i.aas, i64 0
  %i.agd = insertelement <2 x double> %i.agc, double %i.adk, i64 1
  %i.age = insertelement <2 x double> poison, double %i.aaq, i64 0
  %i.agf = insertelement <2 x double> %i.age, double %i.adi, i64 1
  %i.agg = insertelement <2 x double> poison, double %i.aao, i64 0
  %i.agh = insertelement <2 x double> %i.agg, double %i.adg, i64 1
  %i.agi = insertelement <2 x double> poison, double %i.aam, i64 0
  %i.agj = insertelement <2 x double> %i.agi, double %i.ade, i64 1
  %i.agk = insertelement <2 x double> poison, double %i.aak, i64 0
  %i.agl = insertelement <2 x double> %i.agk, double %i.adc, i64 1
  %i.agm = insertelement <2 x double> poison, double %i.aai, i64 0
  %i.agn = insertelement <2 x double> %i.agm, double %i.ada, i64 1
  br label %bb.h

bb.d:                                             ; preds = %bb.a, %bb.f
  %indvars.iv673 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next674, %bb.f ] ; 4 uses
  %.0471659 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.2473, %bb.f ] ; 3 uses
  %.0479658 = phi i32 [ 0, %bb.a ], [ %.2481, %bb.f ] ; 2 uses
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv673
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !43 ; 2 uses
  %i.agq = fcmp ult double %i.agp, %i.abs
  br i1 %i.agq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv673 ; 9 uses
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !43, !noalias !171
  %i.agt = getelementptr i8, ptr %i.agr, i64 72
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !43, !noalias !171
  %i.agv = getelementptr i8, ptr %i.agr, i64 144
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !43, !noalias !171
  %i.agx = getelementptr i8, ptr %i.agr, i64 216
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !43, !noalias !171
  %i.agz = getelementptr i8, ptr %i.agr, i64 288
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !43, !noalias !171
  %i.ahb = getelementptr i8, ptr %i.agr, i64 360
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !43, !noalias !171
  %i.ahd = getelementptr i8, ptr %i.agr, i64 432
  %i.ahe = load double, ptr %i.ahd, align 8, !tbaa !43, !noalias !171
  %i.ahf = getelementptr i8, ptr %i.agr, i64 504
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !43, !noalias !171
  %i.ahh = getelementptr i8, ptr %i.agr, i64 576
  %i.ahi = load double, ptr %i.ahh, align 8, !tbaa !43, !noalias !171
  %i.ahj = call double @llvm.fmuladd.f64(double %i.ags, double %i.aai, double 0.000000e+00)
  %i.ahk = call double @llvm.fmuladd.f64(double %i.agu, double %i.aak, double %i.ahj)
  %i.ahl = call double @llvm.fmuladd.f64(double %i.agw, double %i.aam, double %i.ahk)
  %i.ahm = call double @llvm.fmuladd.f64(double %i.agy, double %i.aao, double %i.ahl)
  %i.ahn = call double @llvm.fmuladd.f64(double %i.aha, double %i.aaq, double %i.ahm)
  %i.aho = call double @llvm.fmuladd.f64(double %i.ahc, double %i.aas, double %i.ahn)
  %i.ahp = call double @llvm.fmuladd.f64(double %i.ahe, double %i.aau, double %i.aho)
  %i.ahq = call double @llvm.fmuladd.f64(double %i.ahg, double %i.aaw, double %i.ahp)
  %i.ahr = call noundef double @llvm.fmuladd.f64(double %i.ahi, double %i.aay, double %i.ahq)
  %i.ahs = fdiv double %i.ahr, %i.agp
  %i.aht = call double @llvm.fabs.f64(double %i.ahs) ; 2 uses
  %i.ahu = fcmp ugt double %i.aht, %.0471659      ; 2 uses
  %i.ahv = trunc nuw nsw i64 %indvars.iv673 to i32
  %.1480 = select i1 %i.ahu, i32 %.0479658, i32 %i.ahv
  %.1472 = select i1 %i.ahu, double %.0471659, double %i.aht
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2481 = phi i32 [ %.1480, %bb.e ], [ %.0479658, %bb.d ] ; 2 uses
  %.2473 = phi double [ %.1472, %bb.e ], [ %.0471659, %bb.d ]
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next674, 9
  br i1 %exitcond676.not, label %bb.c, label %bb.d, !llvm.loop !161

bb.g:                                             ; preds = %bb.j
  %i.ahw = sext i32 %.2478 to i64
  %i.ahx = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ahw ; 9 uses
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.ahz = getelementptr i8, ptr %i.ahx, i64 72
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.aib = getelementptr i8, ptr %i.ahx, i64 144
  %i.aic = load double, ptr %i.aib, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.aid = getelementptr i8, ptr %i.ahx, i64 216
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.aif = getelementptr i8, ptr %i.ahx, i64 288
  %i.aig = load double, ptr %i.aif, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.aih = getelementptr i8, ptr %i.ahx, i64 360
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.aij = getelementptr i8, ptr %i.ahx, i64 432
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.ail = getelementptr i8, ptr %i.ahx, i64 504
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.ain = getelementptr i8, ptr %i.ahx, i64 576
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !43, !noalias !172 ; 2 uses
  %i.aip = insertelement <2 x double> poison, double %i.ahy, i64 0
  %i.aiq = shufflevector <2 x double> %i.aip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.air = insertelement <2 x double> poison, double %i.afc, i64 0
  %i.ais = insertelement <2 x double> %i.air, double %i.aba, i64 1
  %i.ait = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiq, <2 x double> %i.ais, <2 x double> zeroinitializer)
  %i.aiu = insertelement <2 x double> poison, double %i.aia, i64 0
  %i.aiv = shufflevector <2 x double> %i.aiu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiw = insertelement <2 x double> poison, double %i.afe, i64 0
  %i.aix = insertelement <2 x double> %i.aiw, double %i.abb, i64 1
  %i.aiy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiv, <2 x double> %i.aix, <2 x double> %i.ait)
  %i.aiz = insertelement <2 x double> poison, double %i.aic, i64 0
  %i.aja = shufflevector <2 x double> %i.aiz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajb = insertelement <2 x double> poison, double %i.afg, i64 0
  %i.ajc = insertelement <2 x double> %i.ajb, double %i.abd, i64 1
  %i.ajd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aja, <2 x double> %i.ajc, <2 x double> %i.aiy)
  %i.aje = insertelement <2 x double> poison, double %i.aie, i64 0
  %i.ajf = shufflevector <2 x double> %i.aje, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajg = insertelement <2 x double> poison, double %i.afi, i64 0
  %i.ajh = insertelement <2 x double> %i.ajg, double %i.abf, i64 1
  %i.aji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajf, <2 x double> %i.ajh, <2 x double> %i.ajd)
  %i.ajj = insertelement <2 x double> poison, double %i.aig, i64 0
  %i.ajk = shufflevector <2 x double> %i.ajj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajl = insertelement <2 x double> poison, double %i.afk, i64 0
  %i.ajm = insertelement <2 x double> %i.ajl, double %i.abh, i64 1
  %i.ajn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajk, <2 x double> %i.ajm, <2 x double> %i.aji)
  %i.ajo = insertelement <2 x double> poison, double %i.aii, i64 0
  %i.ajp = shufflevector <2 x double> %i.ajo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajq = insertelement <2 x double> poison, double %i.afm, i64 0
  %i.ajr = insertelement <2 x double> %i.ajq, double %i.abj, i64 1
  %i.ajs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajp, <2 x double> %i.ajr, <2 x double> %i.ajn)
  %i.ajt = insertelement <2 x double> poison, double %i.aik, i64 0
  %i.aju = shufflevector <2 x double> %i.ajt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajv = insertelement <2 x double> poison, double %i.afo, i64 0
  %i.ajw = insertelement <2 x double> %i.ajv, double %i.abl, i64 1
  %i.ajx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aju, <2 x double> %i.ajw, <2 x double> %i.ajs)
  %i.ajy = insertelement <2 x double> poison, double %i.aim, i64 0
  %i.ajz = shufflevector <2 x double> %i.ajy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aka = insertelement <2 x double> poison, double %i.afq, i64 0
  %i.akb = insertelement <2 x double> %i.aka, double %i.abn, i64 1
  %i.akc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajz, <2 x double> %i.akb, <2 x double> %i.ajx)
  %i.akd = insertelement <2 x double> poison, double %i.aio, i64 0
  %i.ake = shufflevector <2 x double> %i.akd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akf = insertelement <2 x double> poison, double %i.afs, i64 0
  %i.akg = insertelement <2 x double> %i.akf, double %i.abp, i64 1 ; 2 uses
  %i.akh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ake, <2 x double> %i.akg, <2 x double> %i.akc) ; 3 uses
  %i.aki = extractelement <2 x double> %i.akh, i64 0 ; 8 uses
  %i.akj = fmul double %i.afc, %i.aki
  %i.akk = fmul double %i.afe, %i.aki
  %i.akl = fmul double %i.afg, %i.aki
  %i.akm = fmul double %i.afi, %i.aki
  %i.akn = fmul double %i.afk, %i.aki
  %i.ako = fmul double %i.afm, %i.aki
  %i.akp = fmul double %i.afo, %i.aki
  %i.akq = fmul double %i.afq, %i.aki
  %i.akr = fsub double %i.ahy, %i.akj
  %i.aks = fsub double %i.aia, %i.akk
  %i.akt = fsub double %i.aic, %i.akl
  %i.aku = fsub double %i.aie, %i.akm
  %i.akv = fsub double %i.aig, %i.akn
  %i.akw = fsub double %i.aii, %i.ako
  %i.akx = fsub double %i.aik, %i.akp
  %i.aky = fsub double %i.aim, %i.akq
  %i.akz = fmul <2 x double> %i.akg, %i.akh       ; 2 uses
  %i.ala = extractelement <2 x double> %i.akz, i64 0
  %i.alb = fsub double %i.aio, %i.ala
  %i.alc = extractelement <2 x double> %i.akh, i64 1 ; 8 uses
  %i.ald = fmul double %i.aba, %i.alc
  %i.ale = fmul double %i.abb, %i.alc
  %i.alf = fmul double %i.abd, %i.alc
  %i.alg = fmul double %i.abf, %i.alc
  %i.alh = fmul double %i.abh, %i.alc
  %i.ali = fmul double %i.abj, %i.alc
  %i.alj = fmul double %i.abl, %i.alc
  %i.alk = fmul double %i.abn, %i.alc
  %i.all = fsub double %i.akr, %i.ald             ; 3 uses
  %i.alm = fsub double %i.aks, %i.ale             ; 3 uses
  %i.aln = fsub double %i.akt, %i.alf             ; 3 uses
  %i.alo = fsub double %i.aku, %i.alg             ; 3 uses
  %i.alp = fsub double %i.akv, %i.alh             ; 3 uses
  %i.alq = fsub double %i.akw, %i.ali             ; 3 uses
  %i.alr = fsub double %i.akx, %i.alj             ; 3 uses
  %i.als = fsub double %i.aky, %i.alk             ; 3 uses
  %i.alt = extractelement <2 x double> %i.akz, i64 1
  %i.alu = fsub double %i.alb, %i.alt             ; 3 uses
  %32 = fmul double %i.all, %i.all
  %i.alv = call double @llvm.fmuladd.f64(double %i.alm, double %i.alm, double %32)
  %i.alw = call double @llvm.fmuladd.f64(double %i.aln, double %i.aln, double %i.alv)
  %i.alx = call double @llvm.fmuladd.f64(double %i.alo, double %i.alo, double %i.alw)
  %i.aly = call double @llvm.fmuladd.f64(double %i.alp, double %i.alp, double %i.alx)
  %i.alz = call double @llvm.fmuladd.f64(double %i.alq, double %i.alq, double %i.aly)
  %i.ama = call double @llvm.fmuladd.f64(double %i.alr, double %i.alr, double %i.alz)
  %i.amb = call double @llvm.fmuladd.f64(double %i.als, double %i.als, double %i.ama)
  %i.amc = call noundef double @llvm.fmuladd.f64(double %i.alu, double %i.alu, double %i.amb)
  %i.amd = call noundef double @sqrt(double noundef %i.amc) #16
  %i.ame = fdiv double 1.000000e+00, %i.amd       ; 9 uses
  %i.amf = fmul double %i.ame, %i.all
  %i.amg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.amf, ptr %i.amg, align 8, !tbaa !43
  %i.amh = fmul double %i.ame, %i.alm
  %i.ami = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %i.amh, ptr %i.ami, align 8, !tbaa !43
  %i.amj = fmul double %i.ame, %i.aln
  %i.amk = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.amj, ptr %i.amk, align 8, !tbaa !43
  %i.aml = fmul double %i.ame, %i.alo
  %i.amm = getelementptr inbounds nuw i8, ptr %3, i64 88
  store double %i.aml, ptr %i.amm, align 8, !tbaa !43
  %i.amn = fmul double %i.ame, %i.alp
  %i.amo = getelementptr inbounds nuw i8, ptr %3, i64 112
  store double %i.amn, ptr %i.amo, align 8, !tbaa !43
  %i.amp = fmul double %i.ame, %i.alq
  %i.amq = getelementptr inbounds nuw i8, ptr %3, i64 136
  store double %i.amp, ptr %i.amq, align 8, !tbaa !43
  %i.amr = fmul double %i.ame, %i.alr
  %i.ams = getelementptr inbounds nuw i8, ptr %3, i64 160
  store double %i.amr, ptr %i.ams, align 8, !tbaa !43
  %i.amt = fmul double %i.ame, %i.als
  %i.amu = getelementptr inbounds nuw i8, ptr %3, i64 184
  store double %i.amt, ptr %i.amu, align 8, !tbaa !43
  %i.amv = fmul double %i.ame, %i.alu
  %i.amw = getelementptr inbounds nuw i8, ptr %3, i64 208
  store double %i.amv, ptr %i.amw, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void

bb.h:                                             ; preds = %bb.c, %bb.j
  %indvars.iv681 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next682, %bb.j ] ; 4 uses
  %.0470663 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.c ], [ %.2, %bb.j ] ; 3 uses
  %.0476662 = phi i32 [ 0, %bb.c ], [ %.2478, %bb.j ] ; 2 uses
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv681
  %i.amy = load double, ptr %i.amx, align 8, !tbaa !43 ; 2 uses
  %i.amz = fcmp ult double %i.amy, %i.afv
  br i1 %i.amz, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ana = fdiv double 1.000000e+00, %i.amy
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv681 ; 9 uses
  %i.anc = load double, ptr %i.anb, align 8, !tbaa !43, !noalias !173
  %i.and = getelementptr i8, ptr %i.anb, i64 72
  %i.ane = load double, ptr %i.and, align 8, !tbaa !43, !noalias !173
  %i.anf = getelementptr i8, ptr %i.anb, i64 144
  %i.ang = load double, ptr %i.anf, align 8, !tbaa !43, !noalias !173
  %i.anh = getelementptr i8, ptr %i.anb, i64 216
  %i.ani = load double, ptr %i.anh, align 8, !tbaa !43, !noalias !173
  %i.anj = getelementptr i8, ptr %i.anb, i64 288
  %i.ank = load double, ptr %i.anj, align 8, !tbaa !43, !noalias !173
  %i.anl = getelementptr i8, ptr %i.anb, i64 360
  %i.anm = load double, ptr %i.anl, align 8, !tbaa !43, !noalias !173
  %i.ann = getelementptr i8, ptr %i.anb, i64 432
  %i.ano = load double, ptr %i.ann, align 8, !tbaa !43, !noalias !173
  %i.anp = getelementptr i8, ptr %i.anb, i64 504
  %i.anq = load double, ptr %i.anp, align 8, !tbaa !43, !noalias !173
  %i.anr = getelementptr i8, ptr %i.anb, i64 576
  %i.ans = load double, ptr %i.anr, align 8, !tbaa !43, !noalias !173
  %i.ant = insertelement <2 x double> poison, double %i.anc, i64 0
  %i.anu = shufflevector <2 x double> %i.ant, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anu, <2 x double> %i.agn, <2 x double> zeroinitializer)
  %i.anw = insertelement <2 x double> poison, double %i.ane, i64 0
  %i.anx = shufflevector <2 x double> %i.anw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.any = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anx, <2 x double> %i.agl, <2 x double> %i.anv)
  %i.anz = insertelement <2 x double> poison, double %i.ang, i64 0
  %i.aoa = shufflevector <2 x double> %i.anz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aoa, <2 x double> %i.agj, <2 x double> %i.any)
  %i.aoc = insertelement <2 x double> poison, double %i.ani, i64 0
  %i.aod = shufflevector <2 x double> %i.aoc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aod, <2 x double> %i.agh, <2 x double> %i.aob)
  %i.aof = insertelement <2 x double> poison, double %i.ank, i64 0
  %i.aog = shufflevector <2 x double> %i.aof, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aog, <2 x double> %i.agf, <2 x double> %i.aoe)
  %i.aoi = insertelement <2 x double> poison, double %i.anm, i64 0
  %i.aoj = shufflevector <2 x double> %i.aoi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aoj, <2 x double> %i.agd, <2 x double> %i.aoh)
  %i.aol = insertelement <2 x double> poison, double %i.ano, i64 0
  %i.aom = shufflevector <2 x double> %i.aol, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aon = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aom, <2 x double> %i.agb, <2 x double> %i.aok)
  %i.aoo = insertelement <2 x double> poison, double %i.anq, i64 0
  %i.aop = shufflevector <2 x double> %i.aoo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aop, <2 x double> %i.afz, <2 x double> %i.aon)
  %i.aor = insertelement <2 x double> poison, double %i.ans, i64 0
  %i.aos = shufflevector <2 x double> %i.aor, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aos, <2 x double> %i.afx, <2 x double> %i.aoq)
  %i.aou = insertelement <2 x double> poison, double %i.ana, i64 0
  %i.aov = shufflevector <2 x double> %i.aou, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aow = fmul <2 x double> %i.aov, %i.aot
  %i.aox = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aow)
  %i.aoy = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.aox) ; 2 uses
  %i.aoz = fcmp ugt double %i.aoy, %.0470663      ; 2 uses
  %i.apa = trunc nuw nsw i64 %indvars.iv681 to i32
  %.1477 = select i1 %i.aoz, i32 %.0476662, i32 %i.apa
  %.1 = select i1 %i.aoz, double %.0470663, double %i.aoy
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.2478 = phi i32 [ %.1477, %bb.i ], [ %.0476662, %bb.h ] ; 2 uses
  %.2 = phi double [ %.1, %bb.i ], [ %.0470663, %bb.h ]
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %exitcond684.not = icmp eq i64 %indvars.iv.next682, 9
  br i1 %exitcond684.not, label %bb.g, label %bb.h, !llvm.loop !166
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5sqpnp10PoseSolver24nearestRotationMatrixSVDERKNS_4MatxIdLi9ELi1EEERS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %4 = alloca %"class.cv::Mat", align 16          ; 12 uses
  %5 = alloca %"class.cv::Matx.4", align 8        ; 5 uses
  %6 = alloca %"class.cv::SVD", align 8           ; 12 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::Matx.4", align 8       ; 8 uses
  %11 = alloca %"class.cv::Matx.4", align 8       ; 5 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833530, ptr %7, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !19
  store i64 12884901891, ptr %i.a, align 8, !tbaa !37
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(624) %6) #16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 416 ; 5 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.d) #16
  %i.e = invoke noundef nonnull align 8 dereferenceable(624) ptr @_ZN2cv3SVDclERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(624) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 4)
          to label %bb.b unwind label %.body      ; 0 uses

.body:                                            ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !36
  store i32 16842752, ptr %8, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.i, align 8, !tbaa !19
  %i.j = invoke noundef double @_ZN2cv11determinantERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !36
  store i32 16842752, ptr %9, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.d, ptr %i.m, align 8, !tbaa !19
  %i.n = invoke noundef double @_ZN2cv11determinantERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false), !tbaa !43, !alias.scope !180
  store double 1.000000e+00, ptr %10, align 8, !tbaa !43, !alias.scope !180
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !43, !alias.scope !180
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 64
end_hunk_2
