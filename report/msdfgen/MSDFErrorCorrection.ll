Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/MSDFErrorCorrection?download=true
inline.NumInlined: 699
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff:bb.a
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %i.b = and i32 %3, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %3, 2
  %.not33 = icmp eq i32 %i.c, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !50
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.l, %i.j             ; 3 uses
  %i.n = load <2 x double>, ptr %i.g, align 8, !tbaa !50
  %i.o = fadd <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  call void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, double %i.p, double %i.q)
  %i.r = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m)
  %i.s = fsub <2 x double> splat (double 1.000000e+00), %i.r ; 2 uses
  %shift = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.s, %shift ; 2 uses
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !73   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70   ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !30 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load float, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.aa = fpext float %i.z to double
  %i.ab = load <2 x float>, ptr %i.y, align 4, !tbaa !30 ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 4 uses
  %i.ad = fcmp olt float %i.ac, %i.x
  %i.ae = select i1 %i.ad, float %i.ac, float %i.x ; 2 uses
  %i.af = fcmp olt float %i.x, %i.ac
  %i.ag = select i1 %i.af, float %i.ac, float %i.x ; 2 uses
  %i.ah = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.ag
  %i.aj = select i1 %i.ai, float %i.ah, float %i.ag ; 2 uses
  %i.ak = fcmp olt float %i.ae, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ae ; 2 uses
  %i.am = fsub float %i.al, %i.x
  %i.an = fpext float %i.am to double
  %i.ao = call double @llvm.fmuladd.f64(double %i.t, double %i.an, double %i.aa)
  %i.ap = fptrunc double %i.ao to float           ; 3 uses
  %i.aq = load <2 x float>, ptr %i.i, align 4, !tbaa !30 ; 3 uses
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = insertelement <2 x float> poison, float %i.al, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fsub <2 x float> %i.at, %i.ab
  %i.av = fpext <2 x float> %i.au to <2 x double>
  %i.aw = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.av, <2 x double> %i.ar)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float> ; 3 uses
  %i.az = extractelement <2 x float> %i.aq, i64 0 ; 4 uses
  %i.ba = fcmp olt float %i.az, %i.z
  %i.bb = select i1 %i.ba, float %i.az, float %i.z ; 2 uses
  %i.bc = fcmp olt float %i.z, %i.az
  %i.bd = select i1 %i.bc, float %i.az, float %i.z ; 2 uses
  %i.be = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.bf = fcmp olt float %i.be, %i.bd
  %i.bg = select i1 %i.bf, float %i.be, float %i.bd ; 2 uses
  %i.bh = fcmp olt float %i.bb, %i.bg
  %i.bi = select i1 %i.bh, float %i.bg, float %i.bb
  %i.bj = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bk = fcmp ogt float %i.bj, %i.ap
  %i.bl = select i1 %i.bk, float %i.bj, float %i.ap
  %i.bm = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bl, i64 1 ; 2 uses
  %i.bo = fcmp ogt <2 x float> %i.bn, %i.ay
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.ay, <2 x float> %i.bn ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.br = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bs = fcmp olt float %i.bq, %i.br
  %i.bt = select i1 %i.bs, float %i.br, float %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bw = load <2 x double>, ptr %i.u, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.by = load <2 x double>, ptr %i.bx, align 8, !tbaa !50
  %i.bz = fmul <2 x double> %i.m, %i.by
  %i.ca = fadd <2 x double> %i.bw, %i.bz
  store <2 x double> %i.ca, ptr %4, align 16
  %i.cb = call noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.cc = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, double noundef %i.cb)
  %i.cd = fptrunc double %i.cc to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !67
  %i.ch = fsub float %i.bt, %i.cd
  %i.ci = call float @llvm.fabs.f32(float %i.ch)
  %i.cj = fpext float %i.ci to double
  %i.ck = fmul double %i.cg, %i.cj
  %i.cl = fsub float %i.bi, %i.cd
  %i.cm = call float @llvm.fabs.f32(float %i.cl)
  %i.cn = fpext float %i.cm to double
  %i.co = fcmp olt double %i.ck, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ %i.co, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double %2, double %3) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = insertelement <2 x double> poison, double %2, i64 0
  %i.c = insertelement <2 x double> %i.b, double %3, i64 1 ; 3 uses
  %i.d = fcmp ult <2 x double> %i.c, zeroinitializer
  %i.e = fcmp ogt double %2, 0.000000e+00
  %i.f = fcmp ogt double %3, 0.000000e+00
  %4 = uitofp i1 %i.e to double
  %i.g = load <2 x i32>, ptr %i.a, align 8, !tbaa !52 ; 3 uses
  %i.h = sitofp <2 x i32> %i.g to <2 x double>    ; 2 uses
  %i.i = fcmp ugt <2 x double> %i.c, %i.h
  %i.j = or <2 x i1> %i.d, %i.i
  %i.k = uitofp i1 %i.f to double
  %i.l = insertelement <2 x double> poison, double %4, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.k, i64 1
  %i.n = fmul nnan <2 x double> %i.m, %i.h
  %i.o = select <2 x i1> %i.j, <2 x double> %i.n, <2 x double> %i.c
  %i.p = fadd <2 x double> %i.o, splat (double -5.000000e-01) ; 3 uses
  %i.q = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.p)
  %i.r = fptosi <2 x double> %i.q to <2 x i32>    ; 3 uses
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.t = extractelement <2 x i32> %i.r, i64 0     ; 5 uses
  %i.u = add nsw i32 %i.t, 1
  %i.v = extractelement <2 x i32> %i.r, i64 1     ; 5 uses
  %i.w = add nsw i32 %i.v, 1
  %i.x = shufflevector <4 x i32> %i.s, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.y = sitofp <2 x i32> %i.x to <2 x double>    ; 2 uses
  %shift = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.p, %shift ; 2 uses
  %i.z = extractelement <2 x double> %foldExtExtBinop, i64 0
  %shift52 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fsub <2 x double> %shift52, %i.y ; 2 uses
  %i.aa = extractelement <2 x double> %foldExtExtBinop53, i64 0 ; 3 uses
  %i.ab = extractelement <2 x i32> %i.g, i64 0    ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 3 uses
  %.not.i = icmp sle i32 %i.ab, %i.t
  %i.ad = icmp slt <4 x i32> %i.s, <i32 -1, i32 -1, i32 0, i32 0> ; 4 uses
  %i.ae = extractelement <4 x i1> %i.ad, i64 3    ; 2 uses
  %or.cond.i37 = or i1 %i.ae, %.not.i
  %i.af = icmp sgt i32 %i.t, 0
  %i.ag = select i1 %i.af, i32 %i.ac, i32 0
  %i.ah = select i1 %or.cond.i37, i32 %i.ag, i32 %i.t
  %.not.i38 = icmp sle i32 %i.ac, %i.t
  %i.ai = extractelement <4 x i1> %i.ad, i64 1
  %or.cond.i39 = or i1 %i.ai, %.not.i38
  %i.aj = select i1 %i.ae, i32 0, i32 %i.ac
  %i.ak = select i1 %or.cond.i39, i32 %i.aj, i32 %i.u
  %i.al = extractelement <2 x i32> %i.g, i64 1    ; 2 uses
  %i.am = add nsw i32 %i.al, -1                   ; 3 uses
  %.not.i40 = icmp sle i32 %i.al, %i.v
  %i.an = extractelement <4 x i1> %i.ad, i64 2    ; 2 uses
  %or.cond.i41 = or i1 %i.an, %.not.i40
  %i.ao = icmp sgt i32 %i.v, 0
  %i.ap = select i1 %i.ao, i32 %i.am, i32 0
  %i.aq = select i1 %or.cond.i41, i32 %i.ap, i32 %i.v
  %.not.i42 = icmp sle i32 %i.am, %i.v
  %i.ar = extractelement <4 x i1> %i.ad, i64 0
  %or.cond.i43 = or i1 %i.ar, %.not.i42
  %i.as = select i1 %i.an, i32 0, i32 %i.am
  %i.at = select i1 %or.cond.i43, i32 %i.as, i32 %i.w
  %i.au = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !26 ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.aq
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = mul nsw i32 %i.ah, 3
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bb ; 3 uses
  %i.bd = mul nsw i32 %i.ak, 3
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.be ; 3 uses
  %i.bg = fsub double 1.000000e+00, %i.z
  %i.bh = mul nsw i32 %i.aw, %i.at
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bb ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.be ; 3 uses
  %i.bm = fsub double 1.000000e+00, %i.aa         ; 3 uses
  %i.bn = load float, ptr %i.bc, align 4, !tbaa !30
  %i.bo = load float, ptr %i.bf, align 4, !tbaa !30
  %i.bp = load float, ptr %i.bk, align 4, !tbaa !30
  %i.bq = load float, ptr %i.bl, align 4, !tbaa !30
  %i.br = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bp, i64 1
  %i.bt = fpext <2 x float> %i.bs to <2 x double>
  %i.bu = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bq, i64 1
  %i.bw = fpext <2 x float> %i.bv to <2 x double>
  %i.bx = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.by = fmul <2 x double> %i.bx, %i.bw
  %i.bz = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.bt, <2 x double> %i.by)
  %i.cc = fptrunc <2 x double> %i.cb to <2 x float> ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0
  %i.ce = fpext float %i.cd to double
  %i.cf = extractelement <2 x float> %i.cc, i64 1
  %i.cg = fpext float %i.cf to double
  %i.ch = fmul double %i.aa, %i.cg
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.ce, double %i.ch)
  %i.cj = fptrunc double %i.ci to float
  store float %i.cj, ptr %0, align 4, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !30
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !30
  %i.cs = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cp, i64 1
  %i.cu = fpext <2 x float> %i.ct to <2 x double>
  %i.cv = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cr, i64 1
  %i.cx = fpext <2 x float> %i.cw to <2 x double>
  %i.cy = fmul <2 x double> %i.bx, %i.cx
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cu, <2 x double> %i.cy)
  %i.da = fptrunc <2 x double> %i.cz to <2 x float>
  %i.db = fpext <2 x float> %i.da to <2 x double> ; 2 uses
  %shift55 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fmul <2 x double> %foldExtExtBinop53, %shift55
  %i.dc = extractelement <2 x double> %foldExtExtBinop56, i64 0
  %i.dd = extractelement <2 x double> %i.db, i64 0
  %i.de = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.dd, double %i.dc)
  %i.df = fptrunc double %i.de to float
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.df, ptr %i.dg, align 4, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !30
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !30
  %i.dp = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.dm, i64 1
  %i.dr = fpext <2 x float> %i.dq to <2 x double>
  %i.ds = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.do, i64 1
  %i.du = fpext <2 x float> %i.dt to <2 x double>
  %i.dv = fmul <2 x double> %i.bx, %i.du
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.dr, <2 x double> %i.dv)
  %i.dx = fptrunc <2 x double> %i.dw to <2 x float> ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = fpext float %i.dy to double
  %i.ea = extractelement <2 x float> %i.dx, i64 1
  %i.eb = fpext float %i.ea to double
  %i.ec = fmul double %i.aa, %i.eb
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.dz, double %i.ec)
  %i.ee = fptrunc double %i.ed to float
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ee, ptr %i.ef, align 4, !tbaa !30
  ret void
}

declare noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = load ptr, ptr %0, align 8, !tbaa !286, !nonnull !75, !align !119 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %.not35 = icmp eq ptr %i.c, %i.e
  br i1 %.not35, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  br label %.lr.ph38

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.h = tail call noundef double @_ZNK7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret double %i.h

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.loopexit
  %i.i = phi ptr [ %i.am, %.loopexit ], [ %i.b, %.lr.ph38.preheader ]
  %.037 = phi ptr [ %.2, %.loopexit ], [ %i.g, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.019.036 = phi ptr [ %i.al, %.loopexit ], [ %i.c, %.lr.ph38.preheader ] ; 6 uses
  %i.j = load ptr, ptr %.sroa.019.036, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph38
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.o = ptrtoint ptr %.sroa.019.036 to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.s)
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !121  ; 2 uses
  %i.v = load ptr, ptr %.sroa.019.036, align 8, !tbaa !122 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 8
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -16
  %spec.select = select i1 %i.z, ptr %i.aa, ptr %i.v
  %i.ab = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %spec.select)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = load ptr, ptr %.sroa.019.036, align 8, !tbaa !116 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff:bb.a
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %i.b = and i32 %3, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %3, 2
  %.not33 = icmp eq i32 %i.c, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !50
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.l, %i.j             ; 3 uses
  %i.n = load <2 x double>, ptr %i.g, align 8, !tbaa !50
  %i.o = fadd <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  call void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, double %i.p, double %i.q)
  %i.r = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m)
  %i.s = fsub <2 x double> splat (double 1.000000e+00), %i.r ; 2 uses
  %shift = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.s, %shift ; 2 uses
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !81   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !30 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.aa = fpext float %i.z to double
  %i.ab = load <2 x float>, ptr %i.y, align 4, !tbaa !30 ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 4 uses
  %i.ad = fcmp olt float %i.ac, %i.x
  %i.ae = select i1 %i.ad, float %i.ac, float %i.x ; 2 uses
  %i.af = fcmp olt float %i.x, %i.ac
  %i.ag = select i1 %i.af, float %i.ac, float %i.x ; 2 uses
  %i.ah = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.ag
  %i.aj = select i1 %i.ai, float %i.ah, float %i.ag ; 2 uses
  %i.ak = fcmp olt float %i.ae, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ae ; 2 uses
  %i.am = fsub float %i.al, %i.x
  %i.an = fpext float %i.am to double
  %i.ao = call double @llvm.fmuladd.f64(double %i.t, double %i.an, double %i.aa)
  %i.ap = fptrunc double %i.ao to float           ; 3 uses
  %i.aq = load <2 x float>, ptr %i.i, align 4, !tbaa !30 ; 3 uses
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = insertelement <2 x float> poison, float %i.al, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fsub <2 x float> %i.at, %i.ab
  %i.av = fpext <2 x float> %i.au to <2 x double>
  %i.aw = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.av, <2 x double> %i.ar)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float> ; 3 uses
  %i.az = extractelement <2 x float> %i.aq, i64 0 ; 4 uses
  %i.ba = fcmp olt float %i.az, %i.z
  %i.bb = select i1 %i.ba, float %i.az, float %i.z ; 2 uses
  %i.bc = fcmp olt float %i.z, %i.az
  %i.bd = select i1 %i.bc, float %i.az, float %i.z ; 2 uses
  %i.be = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.bf = fcmp olt float %i.be, %i.bd
  %i.bg = select i1 %i.bf, float %i.be, float %i.bd ; 2 uses
  %i.bh = fcmp olt float %i.bb, %i.bg
  %i.bi = select i1 %i.bh, float %i.bg, float %i.bb
  %i.bj = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bk = fcmp ogt float %i.bj, %i.ap
  %i.bl = select i1 %i.bk, float %i.bj, float %i.ap
  %i.bm = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bl, i64 1 ; 2 uses
  %i.bo = fcmp ogt <2 x float> %i.bn, %i.ay
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.ay, <2 x float> %i.bn ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.br = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bs = fcmp olt float %i.bq, %i.br
  %i.bt = select i1 %i.bs, float %i.br, float %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bw = load <2 x double>, ptr %i.u, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.by = load <2 x double>, ptr %i.bx, align 8, !tbaa !50
  %i.bz = fmul <2 x double> %i.m, %i.by
  %i.ca = fadd <2 x double> %i.bw, %i.bz
  store <2 x double> %i.ca, ptr %4, align 16
  %i.cb = call noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.cc = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, double noundef %i.cb)
  %i.cd = fptrunc double %i.cc to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !77
  %i.ch = fsub float %i.bt, %i.cd
  %i.ci = call float @llvm.fabs.f32(float %i.ch)
  %i.cj = fpext float %i.ci to double
  %i.ck = fmul double %i.cg, %i.cj
  %i.cl = fsub float %i.bi, %i.cd
  %i.cm = call float @llvm.fabs.f32(float %i.cl)
  %i.cn = fpext float %i.cm to double
  %i.co = fcmp olt double %i.ck, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ %i.co, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double %2, double %3) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = insertelement <2 x double> poison, double %2, i64 0
  %i.c = insertelement <2 x double> %i.b, double %3, i64 1 ; 3 uses
  %i.d = fcmp ult <2 x double> %i.c, zeroinitializer
  %i.e = fcmp ogt double %2, 0.000000e+00
  %i.f = fcmp ogt double %3, 0.000000e+00
  %4 = uitofp i1 %i.e to double
  %i.g = load <2 x i32>, ptr %i.a, align 8, !tbaa !52 ; 3 uses
  %i.h = sitofp <2 x i32> %i.g to <2 x double>    ; 2 uses
  %i.i = fcmp ugt <2 x double> %i.c, %i.h
  %i.j = or <2 x i1> %i.d, %i.i
  %i.k = uitofp i1 %i.f to double
  %i.l = insertelement <2 x double> poison, double %4, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.k, i64 1
  %i.n = fmul nnan <2 x double> %i.m, %i.h
  %i.o = select <2 x i1> %i.j, <2 x double> %i.n, <2 x double> %i.c
  %i.p = fadd <2 x double> %i.o, splat (double -5.000000e-01) ; 3 uses
  %i.q = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.p)
  %i.r = fptosi <2 x double> %i.q to <2 x i32>    ; 3 uses
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.t = extractelement <2 x i32> %i.r, i64 0     ; 5 uses
  %i.u = add nsw i32 %i.t, 1
  %i.v = extractelement <2 x i32> %i.r, i64 1     ; 5 uses
  %i.w = add nsw i32 %i.v, 1
  %i.x = shufflevector <4 x i32> %i.s, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.y = sitofp <2 x i32> %i.x to <2 x double>    ; 2 uses
  %shift = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.p, %shift ; 2 uses
  %i.z = extractelement <2 x double> %foldExtExtBinop, i64 0
  %shift52 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fsub <2 x double> %shift52, %i.y ; 3 uses
  %i.aa = extractelement <2 x double> %foldExtExtBinop53, i64 0 ; 3 uses
  %i.ab = extractelement <2 x i32> %i.g, i64 0    ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 3 uses
  %.not.i = icmp sle i32 %i.ab, %i.t
  %i.ad = icmp slt <4 x i32> %i.s, <i32 -1, i32 -1, i32 0, i32 0> ; 4 uses
  %i.ae = extractelement <4 x i1> %i.ad, i64 3    ; 2 uses
  %or.cond.i37 = or i1 %i.ae, %.not.i
  %i.af = icmp sgt i32 %i.t, 0
  %i.ag = select i1 %i.af, i32 %i.ac, i32 0
  %i.ah = select i1 %or.cond.i37, i32 %i.ag, i32 %i.t
  %.not.i38 = icmp sle i32 %i.ac, %i.t
  %i.ai = extractelement <4 x i1> %i.ad, i64 1
  %or.cond.i39 = or i1 %i.ai, %.not.i38
  %i.aj = select i1 %i.ae, i32 0, i32 %i.ac
  %i.ak = select i1 %or.cond.i39, i32 %i.aj, i32 %i.u
  %i.al = extractelement <2 x i32> %i.g, i64 1    ; 2 uses
  %i.am = add nsw i32 %i.al, -1                   ; 3 uses
  %.not.i40 = icmp sle i32 %i.al, %i.v
  %i.an = extractelement <4 x i1> %i.ad, i64 2    ; 2 uses
  %or.cond.i41 = or i1 %i.an, %.not.i40
  %i.ao = icmp sgt i32 %i.v, 0
  %i.ap = select i1 %i.ao, i32 %i.am, i32 0
  %i.aq = select i1 %or.cond.i41, i32 %i.ap, i32 %i.v
  %.not.i42 = icmp sle i32 %i.am, %i.v
  %i.ar = extractelement <4 x i1> %i.ad, i64 0
  %or.cond.i43 = or i1 %i.ar, %.not.i42
  %i.as = select i1 %i.an, i32 0, i32 %i.am
  %i.at = select i1 %or.cond.i43, i32 %i.as, i32 %i.w
  %i.au = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !37 ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.aq
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = shl nsw i32 %i.ah, 2
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bb ; 4 uses
  %i.bd = shl nsw i32 %i.ak, 2
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.be ; 4 uses
  %i.bg = fsub double 1.000000e+00, %i.z
  %i.bh = mul nsw i32 %i.aw, %i.at
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bb ; 4 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.be ; 4 uses
  %i.bm = fsub double 1.000000e+00, %i.aa         ; 4 uses
  %i.bn = load float, ptr %i.bc, align 4, !tbaa !30
  %i.bo = load float, ptr %i.bf, align 4, !tbaa !30
  %i.bp = load float, ptr %i.bk, align 4, !tbaa !30
  %i.bq = load float, ptr %i.bl, align 4, !tbaa !30
  %i.br = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bp, i64 1
  %i.bt = fpext <2 x float> %i.bs to <2 x double>
  %i.bu = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bq, i64 1
  %i.bw = fpext <2 x float> %i.bv to <2 x double>
  %i.bx = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.by = fmul <2 x double> %i.bx, %i.bw
  %i.bz = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.bt, <2 x double> %i.by)
  %i.cc = fptrunc <2 x double> %i.cb to <2 x float> ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0
  %i.ce = fpext float %i.cd to double
  %i.cf = extractelement <2 x float> %i.cc, i64 1
  %i.cg = fpext float %i.cf to double
  %i.ch = fmul double %i.aa, %i.cg
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.ce, double %i.ch)
  %i.cj = fptrunc double %i.ci to float
  store float %i.cj, ptr %0, align 4, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !30
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !30
  %i.cs = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cp, i64 1
  %i.cu = fpext <2 x float> %i.ct to <2 x double>
  %i.cv = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cr, i64 1
  %i.cx = fpext <2 x float> %i.cw to <2 x double>
  %i.cy = fmul <2 x double> %i.bx, %i.cx
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cu, <2 x double> %i.cy)
  %i.da = fptrunc <2 x double> %i.cz to <2 x float>
  %i.db = fpext <2 x float> %i.da to <2 x double> ; 2 uses
  %shift55 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fmul <2 x double> %foldExtExtBinop53, %shift55
  %i.dc = extractelement <2 x double> %foldExtExtBinop56, i64 0
  %i.dd = extractelement <2 x double> %i.db, i64 0
  %i.de = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.dd, double %i.dc)
  %i.df = fptrunc double %i.de to float
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.df, ptr %i.dg, align 4, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !30
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !30
  %i.dp = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.dm, i64 1
  %i.dr = fpext <2 x float> %i.dq to <2 x double>
  %i.ds = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.do, i64 1
  %i.du = fpext <2 x float> %i.dt to <2 x double>
  %i.dv = fmul <2 x double> %i.bx, %i.du
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.dr, <2 x double> %i.dv)
  %i.dx = fptrunc <2 x double> %i.dw to <2 x float> ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = fpext float %i.dy to double
  %i.ea = extractelement <2 x float> %i.dx, i64 1
  %i.eb = fpext float %i.ea to double
  %i.ec = fmul double %i.aa, %i.eb
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.dz, double %i.ec)
  %i.ee = fptrunc double %i.ed to float
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ee, ptr %i.ef, align 4, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !30
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !30
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.el = load float, ptr %i.ek, align 4, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.en = load float, ptr %i.em, align 4, !tbaa !30
  %i.eo = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.el, i64 1
  %i.eq = fpext <2 x float> %i.ep to <2 x double>
  %i.er = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.en, i64 1
  %i.et = fpext <2 x float> %i.es to <2 x double>
  %i.eu = fmul <2 x double> %i.bx, %i.et
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.eq, <2 x double> %i.eu)
  %i.ew = fptrunc <2 x double> %i.ev to <2 x float>
  %i.ex = fpext <2 x float> %i.ew to <2 x double> ; 2 uses
  %shift58 = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fmul <2 x double> %foldExtExtBinop53, %shift58
  %i.ey = extractelement <2 x double> %foldExtExtBinop59, i64 0
  %i.ez = extractelement <2 x double> %i.ex, i64 0
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.ez, double %i.ey)
  %i.fb = fptrunc double %i.fa to float
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.fb, ptr %i.fc, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7, float noundef %8, double noundef %9, double noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fsub float %8, %7
  %i.c = fadd float %6, %i.b
  %i.d = fpext float %i.c to double
  %i.e = fsub float %7, %6
  %i.f = fsub float %i.e, %6
  %i.g = fpext float %i.f to double
  %i.h = fpext float %6 to double
  %i.i = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %i.d, double noundef %i.g, double noundef %i.h) ; 2 uses
  %.not118 = icmp sgt i32 %i.i, 0
  br i1 %.not118, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = fcmp ogt float %1, 5.000000e-01
  %i.n = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = fcmp olt float %1, 5.000000e-01
  %i.p = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.o, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = fcmp olt float %2, %1
end_hunk_1
