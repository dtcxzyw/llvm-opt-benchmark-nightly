Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/planarize_quad_mesh?download=true
inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToIS2_NS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_RT0_:bb.a
  br i1 %i.dj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.0.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.0104, %bb.l ] ; 3 uses
  %.0104 = add nsw i64 %.0.in103, -1              ; 7 uses
  %i.ej = load i64, ptr %i.dk, align 8, !tbaa !822 ; 2 uses
  %i.ek = add i64 %i.ej, %.0104                   ; 7 uses
  %i.el = sub i64 3, %i.ek                        ; 4 uses
  %i.em = load i8, ptr %i.dl, align 8, !tbaa !819, !range !238, !noundef !60
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ek
  %.idx.i.i.i.i69 = mul nsw i64 %i.ek, 24
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.eq = add nsw i64 %i.ej, %.0.in103            ; 5 uses
  %i.er = sub nsw i64 3, %i.eq                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nsw i64 %.0104, 24      ; 2 uses
  br i1 %i.en, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %i.ep, ptr %7, align 8, !tbaa !839, !alias.scope !874
  store i64 %i.el, ptr %i.dy, align 8, !tbaa !844, !alias.scope !874
  store i64 %i.el, ptr %i.dz, align 8, !tbaa !844, !alias.scope !874
  store ptr %1, ptr %i.ea, align 8, !tbaa !537, !alias.scope !874
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !844, !alias.scope !874
  store i64 %i.ek, ptr %i.ec, align 8, !tbaa !844, !alias.scope !874
  store i64 3, ptr %i.ed, align 8, !tbaa !845, !alias.scope !874
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.es = load ptr, ptr %0, align 8, !tbaa !838, !noalias !883, !nonnull !60, !align !221 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.eq
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %.idx.i.i.i.i.i70
  store ptr %i.eu, ptr %8, align 8, !tbaa !855, !alias.scope !883
  store i64 %i.er, ptr %i.ee, align 8, !tbaa !844, !alias.scope !883
  store ptr %i.es, ptr %i.ef, align 8, !tbaa !537, !alias.scope !883
  store i64 %i.eq, ptr %i.eg, align 8, !tbaa !844, !alias.scope !883
  store i64 %.0104, ptr %i.eh, align 8, !tbaa !844, !alias.scope !883
  store i64 3, ptr %i.ei, align 8, !tbaa !858, !alias.scope !883
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !860, !nonnull !60, !align !861
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.ep, ptr %9, align 8, !tbaa !839, !alias.scope !884
  store i64 %i.el, ptr %i.dm, align 8, !tbaa !844, !alias.scope !884
  store i64 %i.el, ptr %i.dn, align 8, !tbaa !844, !alias.scope !884
  store ptr %1, ptr %i.do, align 8, !tbaa !537, !alias.scope !884
  store i64 %i.ek, ptr %i.dp, align 8, !tbaa !844, !alias.scope !884
  store i64 %i.ek, ptr %i.dq, align 8, !tbaa !844, !alias.scope !884
  store i64 3, ptr %i.dr, align 8, !tbaa !845, !alias.scope !884
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.ex = load ptr, ptr %0, align 8, !tbaa !838, !noalias !893, !nonnull !60, !align !221 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.eq
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %.idx.i.i.i.i.i70
  store ptr %i.ez, ptr %10, align 8, !tbaa !855, !alias.scope !893
  store i64 %i.er, ptr %i.ds, align 8, !tbaa !844, !alias.scope !893
  store ptr %i.ex, ptr %i.dt, align 8, !tbaa !537, !alias.scope !893
  store i64 %i.eq, ptr %i.du, align 8, !tbaa !844, !alias.scope !893
  store i64 %.0104, ptr %i.dv, align 8, !tbaa !844, !alias.scope !893
  store i64 3, ptr %i.dw, align 8, !tbaa !858, !alias.scope !893
  %i.fa = load ptr, ptr %i.dx, align 8, !tbaa !860, !nonnull !60, !align !861
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fc = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.fc, label %bb.i, label %.loopexit, !llvm.loop !894

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(320) ptr @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21computeFromHessenbergINS_8internal40HessenbergDecompositionMatrixHReturnTypeIS2_EES2_EERS3_RKT_RKT0_b(ptr noundef nonnull align 16 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %4 = alloca %"class.Eigen::Matrix.431", align 8 ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !895, !nonnull !60, !align !861 ; 5 uses
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !81 ; 2 uses
  store <2 x double> %i.c, ptr %0, align 16, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load <2 x double>, ptr %i.e, align 16, !tbaa !81
  store <2 x double> %i.f, ptr %i.d, align 16, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load <2 x double>, ptr %i.h, align 16, !tbaa !81 ; 2 uses
  store <2 x double> %i.i, ptr %i.g, align 16, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load <2 x double>, ptr %i.k, align 16, !tbaa !81 ; 2 uses
  store <2 x double> %i.l, ptr %i.j, align 16, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load double, ptr %i.n, align 16, !tbaa !43 ; 2 uses
  store double %i.o, ptr %i.m, align 16, !tbaa !43
  store double 0.000000e+00, ptr %i.d, align 16, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load <2 x double>, ptr %2, align 8, !tbaa !81
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !81
  store <2 x double> %i.v, ptr %i.t, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !81
  store <2 x double> %i.y, ptr %i.w, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load <2 x double>, ptr %i.aa, align 8, !tbaa !81
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !43
  store double %i.ae, ptr %i.ac, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !560 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %spec.select67 = select i1 %i.ah, i64 120, i64 %i.ag ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load <2 x double>, ptr %i.ai, align 8, !tbaa !81
  %i.ak = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l) ; 2 uses
  %i.al = insertelement <2 x double> %i.i, double %i.o, i64 0
  %i.am = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.al)
  %i.an = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.c) ; 2 uses
  %shift = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.an, %shift
  %i.ao = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj) ; 2 uses
  %i.ap = shufflevector <2 x double> %i.ak, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.aq = shufflevector <2 x double> %i.ak, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.ar = fadd <2 x double> %i.ap, %i.aq
  %i.as = fadd <2 x double> %i.ar, %i.am          ; 2 uses
  %shift87 = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop88 = fadd <2 x double> %foldExtExtBinop, %shift87
  %foldExtExtBinop90 = fadd <2 x double> %i.as, %foldExtExtBinop88
  %i.at = extractelement <2 x double> %foldExtExtBinop90, i64 0 ; 2 uses
  %i.au = fmul double %i.at, f0x3970000000000000  ; 2 uses
  %i.av = fcmp olt double %i.au, f0x0010000000000000
  %.sroa.speculated = select i1 %i.av, double f0x0010000000000000, double %i.au ; 2 uses
  %i.aw = fcmp une double %i.at, 0.000000e+00
  br i1 %i.aw, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.s
  %.049 = phi i64 [ %.251, %bb.s ], [ 2, %.preheader ] ; 22 uses
  %.046 = phi i64 [ %.248, %bb.s ], [ 0, %.preheader ] ; 2 uses
  %.044 = phi i64 [ %.2, %bb.s ], [ 0, %.preheader ] ; 4 uses
  %i.ax = icmp sgt i64 %.049, 0
  br i1 %i.ax, label %.lr.ph, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ay = icmp sgt i64 %.014.i83, 1
  br i1 %i.ay, label %.lr.ph, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.014.i83 = phi i64 [ %i.az, %bb.f ], [ %.049, %bb.e ] ; 6 uses
  %i.az = add nsw i64 %.014.i83, -1               ; 4 uses
  %i.ba = getelementptr [8 x i8], ptr %0, i64 %i.az
  %.idx.i.i = mul i64 %i.az, 24                   ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.idx.i.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !43
  %i.bd = call noundef double @llvm.fabs.f64(double %i.bc)
  %i.be = getelementptr [8 x i8], ptr %0, i64 %.014.i83 ; 2 uses
  %.idx.i15.i = mul i64 %.014.i83, 24
  %i.bf = getelementptr i8, ptr %i.be, i64 %.idx.i15.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !43
  %i.bh = call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fadd double %i.bd, %i.bh
  %i.bj = fmul double %i.bi, f0x3CB0000000000000  ; 2 uses
  %i.bk = fcmp olt double %i.bj, %.sroa.speculated
  %.sroa.speculated.i = select i1 %i.bk, double %.sroa.speculated, double %i.bj
  %i.bl = getelementptr i8, ptr %i.be, i64 %.idx.i.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !43
  %i.bn = call noundef double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ugt double %i.bn, %.sroa.speculated.i
  br i1 %i.bo, label %bb.f, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit: ; preds = %.lr.ph, %bb.f, %bb.e
  %.014.i.lcssa = phi i64 [ %.049, %bb.e ], [ %.014.i83, %.lr.ph ], [ %i.az, %bb.f ]
  %.014.lcssa.i = phi i64 [ 0, %bb.e ], [ %.014.i83, %.lr.ph ], [ 0, %bb.f ] ; 5 uses
  %i.bp = icmp eq i64 %.014.lcssa.i, %.049
  br i1 %i.bp, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit
  %i.bq = getelementptr [8 x i8], ptr %0, i64 %.049
  %.idx.i = mul i64 %.049, 24
  %i.br = getelementptr i8, ptr %i.bq, i64 %.idx.i ; 3 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !43
  %i.bt = load double, ptr %i.a, align 8, !tbaa !43
  %i.bu = fadd double %i.bs, %i.bt
  store double %i.bu, ptr %i.br, align 8, !tbaa !43
  %.not80 = icmp eq i64 %.049, 0
  br i1 %.not80, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr i8, ptr %i.br, i64 -24
  store double 0.000000e+00, ptr %i.bv, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = add nsw i64 %.049, -1
  br label %bb.s

bb.j:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit
  %i.bx = add nsw i64 %.049, -1                   ; 3 uses
  %i.by = icmp eq i64 %.014.lcssa.i, %i.bx
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15splitOffTwoRowsElbRKd(ptr noundef nonnull align 16 dereferenceable(320) %0, i64 noundef %.049, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bz = add nsw i64 %.049, -2
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ca = getelementptr [8 x i8], ptr %0, i64 %.049 ; 2 uses
  %.idx.i.i60 = mul i64 %.049, 24                 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 %.idx.i.i60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !43 ; 11 uses
  %i.cd = getelementptr [8 x i8], ptr %0, i64 %i.bx ; 2 uses
  %.idx.i62.i = mul i64 %i.bx, 24                 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i62.i
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !43 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.ca, i64 %.idx.i62.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !43 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cd, i64 %.idx.i.i60 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !43
  %i.ck = fmul double %i.ch, %i.cj                ; 4 uses
  switch i64 %.046, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit [
    i64 10, label %bb.m
    i64 30, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.cl = load double, ptr %i.a, align 8, !tbaa !43
  %i.cm = fadd double %i.cc, %i.cl
  store double %i.cm, ptr %i.a, align 8, !tbaa !43
  %.not69.i = icmp slt i64 %.049, 0
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.cn = add nuw i64 %.049, 1                    ; 2 uses
  %xtraiter95 = and i64 %i.cn, 3                  ; 3 uses
  %i.co = icmp ult i64 %.049, 3
  br i1 %i.co, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter99 = and i64 %i.cn, -4
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod97.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.05870.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dv, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod98.a = icmp ne i64 %xtraiter95, 0
  call void @llvm.assume(i1 %lcmp.mod98.a)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.05870.i.epil = phi i64 [ %i.ct, %.lr.ph.i.epil ], [ %.05870.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter96 = phi i64 [ %epil.iter96.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cp = getelementptr [8 x i8], ptr %0, i64 %.05870.i.epil
  %.idx.i67.i.epil = mul i64 %.05870.i.epil, 24
  %i.cq = getelementptr i8, ptr %i.cp, i64 %.idx.i67.i.epil ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = fsub double %i.cr, %i.cc
  store double %i.cs, ptr %i.cq, align 8, !tbaa !43
  %i.ct = add nuw i64 %.05870.i.epil, 1
  %epil.iter96.next = add i64 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i64 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !898

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.m
  %i.cu = call noundef double @llvm.fabs.f64(double %i.ch)
  %i.cv = getelementptr i8, ptr %i.ci, i64 -48
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !43
  %i.cx = call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fadd double %i.cu, %i.cx                ; 3 uses
  %i.cz = fmul double %i.cy, 7.500000e-01         ; 2 uses
  %i.da = fmul double %i.cy, -4.375000e-01
  %i.db = fmul double %i.cy, %i.da
  br label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05870.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dv, %.lr.ph.i ] ; 6 uses
  %niter100 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter100.next.3, %.lr.ph.i ]
  %i.dc = getelementptr [8 x i8], ptr %0, i64 %.05870.i
  %.idx.i67.i = mul i64 %.05870.i, 24
  %i.dd = getelementptr i8, ptr %i.dc, i64 %.idx.i67.i ; 2 uses
  %i.de = load double, ptr %i.dd, align 16, !tbaa !43
  %i.df = fsub double %i.de, %i.cc
  store double %i.df, ptr %i.dd, align 16, !tbaa !43
  %i.dg = or disjoint i64 %.05870.i, 1            ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %0, i64 %i.dg
  %.idx.i67.i.1 = mul i64 %i.dg, 24
  %i.di = getelementptr i8, ptr %i.dh, i64 %.idx.i67.i.1 ; 2 uses
  %i.dj = load double, ptr %i.di, align 16, !tbaa !43
  %i.dk = fsub double %i.dj, %i.cc
  store double %i.dk, ptr %i.di, align 16, !tbaa !43
  %i.dl = or disjoint i64 %.05870.i, 2            ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %0, i64 %i.dl
  %.idx.i67.i.2 = mul i64 %i.dl, 24
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.idx.i67.i.2 ; 2 uses
  %i.do = load double, ptr %i.dn, align 16, !tbaa !43
  %i.dp = fsub double %i.do, %i.cc
  store double %i.dp, ptr %i.dn, align 16, !tbaa !43
  %i.dq = or disjoint i64 %.05870.i, 3            ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %0, i64 %i.dq
  %.idx.i67.i.3 = mul i64 %i.dq, 24
  %i.ds = getelementptr i8, ptr %i.dr, i64 %.idx.i67.i.3 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 16, !tbaa !43
  %i.du = fsub double %i.dt, %i.cc
  store double %i.du, ptr %i.ds, align 16, !tbaa !43
  %i.dv = add nuw i64 %.05870.i, 4                ; 2 uses
  %niter100.next.3 = add i64 %niter100, 4         ; 2 uses
  %niter100.ncmp.3 = icmp eq i64 %niter100.next.3, %unroll_iter99
  br i1 %niter100.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !899

bb.n:                                             ; preds = %bb.l
  %i.dw = fsub double %i.cf, %i.cc
  %i.dx = fmul double %i.dw, 5.000000e-01         ; 3 uses
  %i.dy = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.ck) ; 2 uses
  %i.dz = fcmp ogt double %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.o, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit

bb.o:                                             ; preds = %bb.n
  %i.ea = call double @sqrt(double noundef %i.dy) #27 ; 2 uses
  %i.eb = fcmp olt double %i.cf, %i.cc
  %i.ec = fneg double %i.ea
  %.057.i = select i1 %i.eb, double %i.ec, double %i.ea
  %i.ed = fadd double %i.dx, %.057.i
  %i.ee = fdiv double %i.ck, %i.ed
  %i.ef = fsub double %i.cc, %i.ee                ; 6 uses
  %i.eg = load double, ptr %i.a, align 8, !tbaa !43
  %i.eh = fadd double %i.eg, %i.ef
  store double %i.eh, ptr %i.a, align 8, !tbaa !43
  %.not6171.i = icmp slt i64 %.049, 0
  br i1 %.not6171.i, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %bb.o
  %i.ei = add nuw i64 %.049, 1                    ; 2 uses
  %xtraiter = and i64 %i.ei, 3                    ; 3 uses
  %i.ej = icmp ult i64 %.049, 3
  br i1 %i.ej, label %.lr.ph74.i.epil.preheader, label %.lr.ph74.i.preheader.new

.lr.ph74.i.preheader.new:                         ; preds = %.lr.ph74.i.preheader
  %unroll_iter = and i64 %i.ei, -4
  br label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.i.preheader.new
  %.072.i = phi i64 [ 0, %.lr.ph74.i.preheader.new ], [ %i.fd, %.lr.ph74.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph74.i.preheader.new ], [ %niter.next.3, %.lr.ph74.i ]
  %i.ek = getelementptr [8 x i8], ptr %0, i64 %.072.i
  %.idx.i68.i = mul i64 %.072.i, 24
  %i.el = getelementptr i8, ptr %i.ek, i64 %.idx.i68.i ; 2 uses
  %i.em = load double, ptr %i.el, align 16, !tbaa !43
  %i.en = fsub double %i.em, %i.ef
  store double %i.en, ptr %i.el, align 16, !tbaa !43
  %i.eo = or disjoint i64 %.072.i, 1              ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %0, i64 %i.eo
  %.idx.i68.i.1 = mul i64 %i.eo, 24
  %i.eq = getelementptr i8, ptr %i.ep, i64 %.idx.i68.i.1 ; 2 uses
  %i.er = load double, ptr %i.eq, align 16, !tbaa !43
  %i.es = fsub double %i.er, %i.ef
  store double %i.es, ptr %i.eq, align 16, !tbaa !43
  %i.et = or disjoint i64 %.072.i, 2              ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %0, i64 %i.et
  %.idx.i68.i.2 = mul i64 %i.et, 24
  %i.ev = getelementptr i8, ptr %i.eu, i64 %.idx.i68.i.2 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 16, !tbaa !43
  %i.ex = fsub double %i.ew, %i.ef
  store double %i.ex, ptr %i.ev, align 16, !tbaa !43
  %i.ey = or disjoint i64 %.072.i, 3              ; 2 uses
  %i.ez = getelementptr [8 x i8], ptr %0, i64 %i.ey
  %.idx.i68.i.3 = mul i64 %i.ey, 24
  %i.fa = getelementptr i8, ptr %i.ez, i64 %.idx.i68.i.3 ; 2 uses
  %i.fb = load double, ptr %i.fa, align 16, !tbaa !43
  %i.fc = fsub double %i.fb, %i.ef
  store double %i.fc, ptr %i.fa, align 16, !tbaa !43
  %i.fd = add nuw i64 %.072.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa, label %.lr.ph74.i, !llvm.loop !900

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph74.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit, label %.lr.ph74.i.epil.preheader

.lr.ph74.i.epil.preheader:                        ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa, %.lr.ph74.i.preheader
  %.072.i.epil.init = phi i64 [ 0, %.lr.ph74.i.preheader ], [ %i.fd, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph74.i.epil

.lr.ph74.i.epil:                                  ; preds = %.lr.ph74.i.epil, %.lr.ph74.i.epil.preheader
  %.072.i.epil = phi i64 [ %i.fi, %.lr.ph74.i.epil ], [ %.072.i.epil.init, %.lr.ph74.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph74.i.epil ], [ 0, %.lr.ph74.i.epil.preheader ]
  %i.fe = getelementptr [8 x i8], ptr %0, i64 %.072.i.epil
  %.idx.i68.i.epil = mul i64 %.072.i.epil, 24
  %i.ff = getelementptr i8, ptr %i.fe, i64 %.idx.i68.i.epil ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !43
  %i.fh = fsub double %i.fg, %i.ef
  store double %i.fh, ptr %i.ff, align 8, !tbaa !43
  %i.fi = add nuw i64 %.072.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit, label %.lr.ph74.i.epil, !llvm.loop !901

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit: ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa, %.lr.ph74.i.epil, %._crit_edge.i, %bb.o, %bb.l, %bb.n
  %.sroa.11.0 = phi double [ %i.ck, %bb.l ], [ %i.ck, %bb.n ], [ %i.db, %._crit_edge.i ], [ f0x3FEED916872B020C, %bb.o ], [ f0x3FEED916872B020C, %.lr.ph74.i.epil ], [ f0x3FEED916872B020C, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa ]
  %.sroa.7.1 = phi double [ %i.cf, %bb.l ], [ %i.cf, %bb.n ], [ %i.cz, %._crit_edge.i ], [ f0x3FEED916872B020C, %bb.o ], [ f0x3FEED916872B020C, %.lr.ph74.i.epil ], [ f0x3FEED916872B020C, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa ]
  %.sroa.0.1 = phi double [ %i.cc, %bb.l ], [ %i.cc, %bb.n ], [ %i.cz, %._crit_edge.i ], [ f0x3FEED916872B020C, %bb.o ], [ f0x3FEED916872B020C, %.lr.ph74.i.epil ], [ f0x3FEED916872B020C, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa ]
  %i.fj = add nsw i64 %.046, 1
  %i.fk = add nsw i64 %.044, 1
  %.not = icmp slt i64 %.044, %spec.select67      ; 2 uses
  br i1 %.not, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit
  %i.fl = add nsw i64 %.049, -2                   ; 3 uses
  %.not55.i = icmp slt i64 %i.fl, %.014.lcssa.i
  br i1 %.not55.i, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %bb.p
  %i.fm = fneg double %.sroa.11.0
  %smax = call i64 @llvm.smax.i64(i64 %.014.i.lcssa, i64 0)
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %bb.q
  %storemerge56.i = phi i64 [ %i.gk, %bb.q ], [ %i.fl, %.lr.ph.i61.preheader ] ; 6 uses
  %i.fn = getelementptr [8 x i8], ptr %0, i64 %storemerge56.i ; 4 uses
  %.idx.i.i62 = mul i64 %storemerge56.i, 24       ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 %.idx.i.i62
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !43 ; 4 uses
  %i.fq = fsub double %.sroa.0.1, %i.fp           ; 2 uses
  %i.fr = fsub double %.sroa.7.1, %i.fp           ; 2 uses
  %i.fs = call double @llvm.fmuladd.f64(double %i.fq, double %i.fr, double %i.fm)
  %i.ft = add nsw i64 %storemerge56.i, 1          ; 2 uses
  %i.fu = getelementptr [8 x i8], ptr %0, i64 %i.ft ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 %.idx.i.i62
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !43
  %i.fx = fdiv double %i.fs, %i.fw
  %.idx.i48.i = mul i64 %i.ft, 24                 ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fn, i64 %.idx.i48.i
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !43
  %i.ga = fadd double %i.fz, %i.fx                ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fu, i64 %.idx.i48.i
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !43 ; 2 uses
  %i.gd = fsub double %i.gc, %i.fp
  %i.ge = fsub double %i.gd, %i.fq
  %i.gf = fsub double %i.ge, %i.fr                ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fn, i64 16
  %i.gh = getelementptr i8, ptr %i.gg, i64 %.idx.i48.i
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !43 ; 2 uses
  %i.gj = icmp eq i64 %storemerge56.i, %.014.lcssa.i
  br i1 %i.gj, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i61
  %i.gk = add nsw i64 %storemerge56.i, -1         ; 3 uses
  %.idx.i51.i = mul i64 %i.gk, 24                 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fn, i64 %.idx.i51.i
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !43
  %i.gn = call noundef double @llvm.fabs.f64(double %i.gf)
  %i.go = call noundef double @llvm.fabs.f64(double %i.gi)
  %i.gp = fadd double %i.go, %i.gn
  %i.gq = fmul double %i.gp, %i.gm
  %i.gr = getelementptr [8 x i8], ptr %0, i64 %i.gk
  %i.gs = getelementptr i8, ptr %i.gr, i64 %.idx.i51.i
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !43
  %i.gu = call noundef double @llvm.fabs.f64(double %i.gt)
  %i.gv = call noundef double @llvm.fabs.f64(double %i.fp)
  %i.gw = fadd double %i.gv, %i.gu
  %i.gx = call noundef double @llvm.fabs.f64(double %i.gc)
  %i.gy = fadd double %i.gx, %i.gw
  %i.gz = fmul double %i.ga, %i.gy
  %i.ha = call noundef double @llvm.fabs.f64(double %i.gq)
  %i.hb = fmul double %i.gz, f0x3CB0000000000000
  %i.hc = fcmp olt double %i.ha, %i.hb
  br i1 %i.hc, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit, label %.lr.ph.i61

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit: ; preds = %bb.q, %.lr.ph.i61
  %storemerge.lcssa.i.ph = phi i64 [ %storemerge56.i, %bb.q ], [ %smax, %.lr.ph.i61 ]
  store double %i.ga, ptr %4, align 8, !tbaa !43
  store double %i.gf, ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i, align 8, !tbaa !43
  store double %i.gi, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i, align 8, !tbaa !43
  br label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit: ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit, %bb.p
  %storemerge.lcssa.i = phi i64 [ %i.fl, %bb.p ], [ %storemerge.lcssa.i.ph, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit ]
  call void @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE20performFrancisQRStepElllbRKNS1_IdLi3ELi1ELi0ELi3ELi1EEEPd(ptr noundef nonnull align 16 dereferenceable(320) %0, i64 noundef %.014.lcssa.i, i64 noundef %storemerge.lcssa.i, i64 noundef %.049, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.p)
  br label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i, %bb.k
  %.251 = phi i64 [ %.049, %bb.r ], [ %i.bw, %bb.i ], [ %i.bz, %bb.k ] ; 2 uses
  %.248 = phi i64 [ %i.fj, %bb.r ], [ 0, %bb.i ], [ 0, %bb.k ]
  %.2 = phi i64 [ %i.fk, %bb.r ], [ %.044, %bb.i ], [ %.044, %bb.k ] ; 2 uses
  %.1 = phi i1 [ %.not, %bb.r ], [ true, %bb.i ], [ true, %bb.k ]
  %.old1 = icmp sgt i64 %.251, -1
  %or.cond57 = select i1 %.1, i1 %.old1, i1 false
  br i1 %or.cond57, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.d
  %.3 = phi i64 [ 0, %bb.d ], [ %.2, %bb.s ]
  %.not56 = icmp sgt i64 %.3, %spec.select67
  %spec.select = select i1 %.not56, i32 2, i32 0
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %spec.select, ptr %i.hd, align 16, !tbaa !804
  %i.he = zext i1 %3 to i8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 1, ptr %i.hf, align 4, !tbaa !553
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 %i.he, ptr %i.hg, align 1, !tbaa !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen23HessenbergDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8_computeERS2_RNS1_IdLi2ELi1ELi0ELi2ELi1EEERNS1_IdLi1ELi3ELi1ELi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::VectorBlock.872", align 8 ; 12 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 12 uses
  %4 = alloca %"class.Eigen::VectorBlock.836", align 8 ; 18 uses
  %5 = alloca %"class.Eigen::Block.850", align 8  ; 14 uses
  %6 = alloca %"class.Eigen::VectorBlock.836", align 8 ; 16 uses
  %7 = alloca %"class.Eigen::Block.861", align 8  ; 13 uses
  %8 = alloca %"class.Eigen::VectorBlock.836", align 8 ; 16 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !902, !alias.scope !904
  store i64 2, ptr %i.d, align 8, !tbaa !844, !alias.scope !904
  store ptr %0, ptr %i.e, align 8
  store ptr %0, ptr %.sroa.547.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.648.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 3, ptr %.sroa.850.0..sroa_idx, align 8
  store i64 1, ptr %i.f, align 8, !tbaa !844, !alias.scope !904
  store i64 3, ptr %i.g, align 8, !tbaa !907, !alias.scope !904
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %3, align 8, !tbaa !917
  store i64 1, ptr %i.h, align 8, !tbaa !844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  store i64 1, ptr %i.j, align 8, !tbaa !844
  store i64 3, ptr %i.k, align 8, !tbaa !919
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load double, ptr %i.a, align 8, !tbaa !43
  store double %i.ag, ptr %i.ae, align 8, !tbaa !43
  %i.ah = load double, ptr %i.b, align 8, !tbaa !43
  store double %i.ah, ptr %1, align 16, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %5, align 8, !tbaa !839, !alias.scope !924
  store i64 2, ptr %i.l, align 8, !tbaa !844, !alias.scope !924
  store i64 2, ptr %i.m, align 8, !tbaa !844, !alias.scope !924
  store ptr %0, ptr %i.n, align 8, !tbaa !537, !alias.scope !924
  store i64 1, ptr %i.o, align 8, !tbaa !844, !alias.scope !924
  store i64 1, ptr %i.p, align 8, !tbaa !844, !alias.scope !924
  store i64 3, ptr %i.q, align 8, !tbaa !845, !alias.scope !924
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %6, align 8, !tbaa !902, !alias.scope !927
  store i64 1, ptr %i.r, align 8, !tbaa !844, !alias.scope !927
  store ptr %0, ptr %i.s, align 8
  store ptr %0, ptr %.sroa.536.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.637.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 3, ptr %.sroa.839.0..sroa_idx, align 8
  store i64 2, ptr %i.t, align 8, !tbaa !844, !alias.scope !927
  store i64 3, ptr %i.u, align 8, !tbaa !907, !alias.scope !927
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !930, !alias.scope !932
  store i64 2, ptr %i.v, align 8, !tbaa !844, !alias.scope !932
  store ptr %0, ptr %i.w, align 8, !tbaa !537, !alias.scope !932
  store i64 0, ptr %i.x, align 8, !tbaa !844, !alias.scope !932
  store i64 1, ptr %i.y, align 8, !tbaa !844, !alias.scope !932
  store i64 3, ptr %i.z, align 8, !tbaa !935, !alias.scope !932
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %i.aj, ptr %8, align 8, !tbaa !902, !alias.scope !938
  store i64 1, ptr %i.aa, align 8, !tbaa !844, !alias.scope !938
  store ptr %0, ptr %i.ab, align 8
  store ptr %0, ptr %.sroa.533.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 2, ptr %i.ac, align 8, !tbaa !844, !alias.scope !938
  store i64 3, ptr %i.ad, align 8, !tbaa !907, !alias.scope !938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.al = load double, ptr %i.b, align 8, !tbaa !43
  store double %i.al, ptr %i.c, align 8, !tbaa !43
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE26applyHouseholderOnTheRightINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !902, !alias.scope !904
  store i64 1, ptr %i.d, align 8, !tbaa !844, !alias.scope !904
  store ptr %i.ak, ptr %i.e, align 8
  store ptr %0, ptr %.sroa.547.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.648.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.749.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.850.0..sroa_idx, align 8
  store i64 2, ptr %i.f, align 8, !tbaa !844, !alias.scope !904
  store i64 3, ptr %i.g, align 8, !tbaa !907, !alias.scope !904
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.an, ptr %3, align 8, !tbaa !917
  store i64 0, ptr %i.h, align 8, !tbaa !844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  store i64 1, ptr %i.j, align 8, !tbaa !844
  store i64 3, ptr %i.k, align 8, !tbaa !919
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ao = load double, ptr %i.a, align 8, !tbaa !43
  store double %i.ao, ptr %i.am, align 8, !tbaa !43
  %i.ap = load double, ptr %i.b, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ap, ptr %i.aq, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %5, align 8, !tbaa !839, !alias.scope !924
  store i64 1, ptr %i.l, align 8, !tbaa !844, !alias.scope !924
  store i64 1, ptr %i.m, align 8, !tbaa !844, !alias.scope !924
  store ptr %0, ptr %i.n, align 8, !tbaa !537, !alias.scope !924
  store i64 2, ptr %i.o, align 8, !tbaa !844, !alias.scope !924
  store i64 2, ptr %i.p, align 8, !tbaa !844, !alias.scope !924
  store i64 3, ptr %i.q, align 8, !tbaa !845, !alias.scope !924
end_hunk_0
