Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/pseudonormal_test?download=true
inline.NumInlined: 3425
inline.NumDeleted: 1867
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN3igl17pseudonormal_testIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEES6_dS6_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERKNS7_IT4_EERKNS7_IT5_EEiRNS1_15PlainObjectBaseIT6_EERT7_RNS10_IT8_EE:bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  %i.hq = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !14
  %i.hs = sext i32 %i.hr to i64
  %i.ht = load ptr, ptr %0, align 8, !tbaa !15, !noalias !45 ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.hs ; 3 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !22
  store double %i.hv, ptr %16, align 8, !tbaa !22
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.au
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !22
  store double %i.hx, ptr %i.hl, align 8, !tbaa !22
  %i.hy = getelementptr inbounds i8, ptr %i.hu, i64 %.idx.i.i.i.i.i.i.i.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !22
  store double %i.hz, ptr %i.hm, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  %.idx202 = shl i64 %i.ar, 3
  %i.ia = getelementptr i8, ptr %i.as, i64 %.idx202
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !14
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.ic ; 3 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !22
  store double %i.ie, ptr %17, align 8, !tbaa !22
  %i.if = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.au
  %i.ig = load double, ptr %i.if, align 8, !tbaa !22
  store double %i.ig, ptr %i.hn, align 8, !tbaa !22
  %i.ih = getelementptr inbounds i8, ptr %i.id, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !22
  store double %i.ii, ptr %i.ho, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #6
  call void @_ZN3igl23project_to_line_segmentIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EERNSI_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.ij = load double, ptr %18, align 8, !tbaa !22
  %i.ik = call double @sqrt(double noundef %i.ij) #6
  %i.il = fcmp olt double %i.ik, f0x3D719799812DEA11
  br i1 %i.il, label %.thread205, label %.peel.next

._crit_edge.thread209:                            ; preds = %bb.f, %.peel.next
  %indvars.iv191.lcssa = phi i64 [ 1, %.peel.next ], [ 2, %bb.f ]
  %i.im = load i64, ptr %i.c, align 8, !tbaa !24
  %i.in = mul nsw i64 %i.im, %indvars.iv191.lcssa
  %i.io = load ptr, ptr %5, align 8, !tbaa !31
  %i.ip = getelementptr [4 x i8], ptr %i.io, i64 %i.in
  %i.iq = getelementptr [4 x i8], ptr %i.ip, i64 %i.a
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !14
  %i.is = sext i32 %i.ir to i64
  %i.it = load ptr, ptr %4, align 8, !tbaa !15, !noalias !42
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.is ; 3 uses
  %i.iv = load i64, ptr %i.hp, align 8, !tbaa !21 ; 2 uses
  %i.iw = load double, ptr %i.iu, align 8, !tbaa !22
  store double %i.iw, ptr %10, align 8, !tbaa !22
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.iv
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !22
  store double %i.iy, ptr %i.ay, align 8, !tbaa !22
  %.idx.i.i.i.i.i.i.i.i.i.i.i84 = shl nsw i64 %i.iv, 4
  %i.iz = getelementptr inbounds i8, ptr %i.iu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i84
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !22
  store double %i.ja, ptr %i.az, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  br label %.loopexit

bb.f:                                             ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  %i.jb = load ptr, ptr %1, align 8, !tbaa !9
  %i.jc = load i64, ptr %i.c, align 8, !tbaa !24
  %i.jd = getelementptr [4 x i8], ptr %i.jb, i64 %i.a ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !14
  %i.jf = sext i32 %i.je to i64
  %i.jg = load ptr, ptr %0, align 8, !tbaa !15, !noalias !45 ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.jf ; 3 uses
  %i.ji = load i64, ptr %i.i, align 8, !tbaa !21  ; 3 uses
  %i.jj = load double, ptr %i.jh, align 8, !tbaa !22
  store double %i.jj, ptr %16, align 8, !tbaa !22
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.ji
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !22
  store double %i.jl, ptr %i.hl, align 8, !tbaa !22
  %.idx.i.i.i.i.i.i.i.i.i.i82.1 = shl nsw i64 %i.ji, 4 ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jh, i64 %.idx.i.i.i.i.i.i.i.i.i.i82.1
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !22
  store double %i.jn, ptr %i.hm, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  %i.jo = getelementptr [4 x i8], ptr %i.jd, i64 %i.jc
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !14
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.jq ; 3 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !22
  store double %i.js, ptr %17, align 8, !tbaa !22
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.ji
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !22
  store double %i.ju, ptr %i.hn, align 8, !tbaa !22
  %i.jv = getelementptr inbounds i8, ptr %i.jr, i64 %.idx.i.i.i.i.i.i.i.i.i.i82.1
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !22
  store double %i.jw, ptr %i.ho, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #6
  call void @_ZN3igl23project_to_line_segmentIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EERNSI_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.jx = load double, ptr %18, align 8, !tbaa !22
  %i.jy = call double @sqrt(double noundef %i.jx) #6
  %i.jz = fcmp olt double %i.jy, f0x3D719799812DEA11
  br i1 %i.jz, label %._crit_edge.thread209, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.ka = load ptr, ptr %2, align 8, !tbaa !15, !noalias !48
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.a ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !21 ; 2 uses
  %i.ke = load double, ptr %i.kb, align 8, !tbaa !22
  store double %i.ke, ptr %10, align 8, !tbaa !22
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.kd
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !22
  store double %i.kg, ptr %i.ay, align 8, !tbaa !22
  %.idx.i.i.i.i.i.i.i.i.i.i.i85 = shl nsw i64 %i.kd, 4
  %i.kh = getelementptr inbounds i8, ptr %i.kb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i85
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !22
  store double %i.ki, ptr %i.az, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.thread209, %.preheader176, %.thread205, %.preheader174.2, %.preheader.2, %._crit_edge, %bb.e, %bb.c, %bb.d
  %i.kj = load <2 x double>, ptr %6, align 1, !tbaa !51
  %i.kk = load <2 x double>, ptr %8, align 8, !tbaa !51
  %i.kl = fsub <2 x double> %i.kj, %i.kk
  %i.km = load <2 x double>, ptr %10, align 8, !tbaa !51
  %i.kn = fmul <2 x double> %i.kl, %i.km          ; 2 uses
  %shift = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.kn, %shift
  %i.ko = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.kp = getelementptr i8, ptr %6, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !22
  %i.ks = load double, ptr %i.kq, align 8, !tbaa !22
  %i.kt = fsub double %i.kr, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !22
  %i.kw = fmul double %i.kt, %i.kv
  %i.kx = fadd double %i.ko, %i.kw
  %i.ky = fcmp oge double %i.kx, 0.000000e+00
  %i.kz = select i1 %i.ky, double 1.000000e+00, double -1.000000e+00
  store double %i.kz, ptr %9, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3igl23project_to_line_segmentIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EERNSI_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17pseudonormal_testIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELi2ELi0ELin1ELi2EEES3_S3_NS2_IdLi1ELi2ELi1ELi1ELi2EEES5_dS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERKNS6_IT3_EEiRNS1_15PlainObjectBaseIT4_EERT5_RNSR_IT6_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %5 to i64                       ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %i.b, i64 %i.a ; 3 uses
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !55, !noalias !57 ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !14
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60   ; 2 uses
  %i.p = load double, ptr %i.j, align 8, !tbaa !22 ; 2 uses
  %i.q = load double, ptr %i.m, align 8, !tbaa !22 ; 2 uses
  %i.r = fsub double %i.p, %i.q                   ; 2 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = getelementptr [8 x i8], ptr %i.j, i64 %i.o
  %i.u = load double, ptr %i.t, align 8, !tbaa !22 ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.m, i64 %i.o
  %i.w = load double, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %i.x = fsub double %i.u, %i.w                   ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fadd double %i.s, %i.y
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %i.z)
  %i.aa = load <2 x double>, ptr %6, align 16     ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.q, i64 1
  %i.ae = fsub <2 x double> %i.ab, %i.ad          ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.w, i64 1
  %i.aj = fsub <2 x double> %i.ag, %i.ai          ; 2 uses
  %i.ak = fmul <2 x double> %i.aj, %i.aj
  %i.al = fadd <2 x double> %i.af, %i.ak
  %i.am = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.al)
  %i.an = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv <2 x double> %i.am, %i.ao          ; 3 uses
  %i.aq = fcmp ole <2 x double> %i.ap, splat (double f0x3D719799812DEA11) ; 2 uses
  %shift = shufflevector <2 x i1> %i.aq, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.aq, %shift
  %cond = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %cond, label %.preheader.preheader, label %.loopexit.sink.split

.preheader.preheader:                             ; preds = %bb.a
  %i.ar = extractelement <2 x double> %i.ap, i64 0
  %i.as = fcmp ogt double %i.ar, f0x3D719799812DEA11
  br i1 %i.as, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.at = extractelement <2 x double> %i.ap, i64 1
  %i.au = fcmp ogt double %i.at, f0x3D719799812DEA11
  br i1 %i.au, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.1, %.preheader.preheader
  %.lcssa = phi i64 [ 0, %.preheader.preheader ], [ %i.d, %.preheader.1 ]
  %i.av = getelementptr [4 x i8], ptr %i.e, i64 %.lcssa
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %i.ax = sext i32 %i.aw to i64
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %3, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %.sink142 = phi i64 [ %i.ax, %bb.b ], [ %i.a, %bb.a ]
  %i.ay = load ptr, ptr %.sink, align 8, !tbaa !55, !noalias !61
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.sink142 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !60
  %i.bc = load double, ptr %i.az, align 8, !tbaa !22
  store double %i.bc, ptr %8, align 16, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.be = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  %i.bf = load double, ptr %i.be, align 8, !tbaa !22
  store double %i.bf, ptr %i.bd, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader.1
  %i.bg = load <2 x double>, ptr %4, align 16, !tbaa !51
  %i.bh = load <2 x double>, ptr %6, align 16, !tbaa !51
  %i.bi = fsub <2 x double> %i.bg, %i.bh
  %i.bj = load <2 x double>, ptr %8, align 16, !tbaa !51
  %i.bk = fmul <2 x double> %i.bi, %i.bj          ; 2 uses
  %shift144 = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop145 = fadd <2 x double> %i.bk, %shift144
  %i.bl = extractelement <2 x double> %foldExtExtBinop145, i64 0
  %i.bm = fcmp oge double %i.bl, 0.000000e+00
  %i.bn = select i1 %i.bm, double 1.000000e+00, double -1.000000e+00
  store double %i.bn, ptr %7, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17pseudonormal_testIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi2ELi0ELin1ELi2EEES5_NS2_IdLi1ELi2ELi1ELi1ELi2EEES6_dS6_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EEiRNS1_15PlainObjectBaseIT4_EERT5_RNSS_IT6_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %5 to i64                       ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %i.b, i64 %i.a ; 3 uses
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !65, !noalias !67 ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.h ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.e, align 4, !tbaa !14
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.m ; 5 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !70, !noalias !71 ; 4 uses
  %i.p = icmp eq i64 %i.o, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !74 ; 5 uses
  %.pre142 = load double, ptr %i.j, align 8, !tbaa !22 ; 2 uses
  %.pre143 = load double, ptr %i.n, align 8, !tbaa !22 ; 2 uses
  br i1 %i.p, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fsub double %.pre142, %.pre143           ; 2 uses
  %i.r = fmul double %i.q, %i.q                   ; 3 uses
  %i.s = icmp sgt i64 %i.o, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.t = add nsw i64 %i.o, -1                     ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i64 %i.o, 2
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.t, -2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.am, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.02223.i.i.i.i.i = phi double [ %i.r, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i ]
  %i.v = mul nsw i64 %.01724.i.i.i.i.i, %.pre     ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.v
  %i.z = load double, ptr %i.y, align 8, !tbaa !22
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = fadd double %.02223.i.i.i.i.i, %i.ab
  %i.ad = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.ae = mul nsw i64 %i.ad, %.pre                ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.j, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr [8 x i8], ptr %i.n, i64 %i.ae
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !22
  %i.aj = fsub double %i.ag, %i.ai                ; 2 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = fadd double %i.ac, %i.ak                ; 3 uses
  %i.am = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.an = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %.pre ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.j, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr [8 x i8], ptr %i.n, i64 %i.an
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  %i.as = fsub double %i.ap, %i.ar                ; 2 uses
  %i.at = fmul double %i.as, %i.as
  %i.au = fadd double %.02223.i.i.i.i.i.epil.init, %i.at
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit: ; preds = %.lr.ph.i.i.i.i.i.epil.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa, %bb.a, %bb.b
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.r, %bb.b ], [ %i.al, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %.0.i.i.i)
  %9 = load double, ptr %6, align 16, !tbaa !22
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = getelementptr [8 x i8], ptr %i.j, i64 %.pre
  %11 = load double, ptr %i.av, align 8, !tbaa !22
  %i.aw = load double, ptr %10, align 8, !tbaa !22
  %i.ax = getelementptr [8 x i8], ptr %i.n, i64 %.pre
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !22
  %12 = insertelement <2 x double> poison, double %9, i64 0
  %i.az = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = insertelement <2 x double> poison, double %.pre142, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %.pre143, i64 1
  %i.bc = fsub <2 x double> %i.az, %i.bb          ; 2 uses
  %i.bd = fmul <2 x double> %i.bc, %i.bc
  %13 = insertelement <2 x double> poison, double %i.aw, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x double> poison, double %11, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.ay, i64 1
  %i.bg = fsub <2 x double> %14, %i.bf            ; 2 uses
  %i.bh = fmul <2 x double> %i.bg, %i.bg
  %i.bi = fadd <2 x double> %i.bd, %i.bh
  %i.bj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bi)
  %i.bk = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x double> %i.bj, %i.bl          ; 3 uses
  %i.bn = fcmp ole <2 x double> %i.bm, splat (double f0x3D719799812DEA11) ; 2 uses
  %shift = shufflevector <2 x i1> %i.bn, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.bn, %shift
  %cond = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %cond, label %.preheader.preheader, label %.loopexit.sink.split

.preheader.preheader:                             ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit
  %i.bo = extractelement <2 x double> %i.bm, i64 0
  %i.bp = fcmp ogt double %i.bo, f0x3D719799812DEA11
  br i1 %i.bp, label %bb.c, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.bq = extractelement <2 x double> %i.bm, i64 1
  %i.br = fcmp ogt double %i.bq, f0x3D719799812DEA11
  br i1 %i.br, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader.1, %.preheader.preheader
  %.lcssa = phi i64 [ 0, %.preheader.preheader ], [ %i.d, %.preheader.1 ]
  %i.bs = getelementptr [4 x i8], ptr %i.e, i64 %.lcssa
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.bu = sext i32 %i.bt to i64
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit, %bb.c
  %.sink = phi ptr [ %3, %bb.c ], [ %2, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit ] ; 2 uses
  %.sink153 = phi i64 [ %i.bu, %bb.c ], [ %i.a, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit ]
  %i.bv = load ptr, ptr %.sink, align 8, !tbaa !55, !noalias !61
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %.sink153 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !60
  %i.bz = load double, ptr %i.bw, align 8, !tbaa !22
  store double %i.bz, ptr %8, align 16, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
  store double %i.cc, ptr %i.ca, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader.1
  %i.cd = load <2 x double>, ptr %4, align 16, !tbaa !51
  %i.ce = load <2 x double>, ptr %6, align 16, !tbaa !51
  %i.cf = fsub <2 x double> %i.cd, %i.ce
  %i.cg = load <2 x double>, ptr %8, align 16, !tbaa !51
  %i.ch = fmul <2 x double> %i.cf, %i.cg          ; 2 uses
  %shift156 = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop157 = fadd <2 x double> %i.ch, %shift156
  %i.ci = extractelement <2 x double> %foldExtExtBinop157, i64 0
  %i.cj = fcmp oge double %i.ci, 0.000000e+00
  %i.ck = select i1 %i.cj, double 1.000000e+00, double -1.000000e+00
  store double %i.ck, ptr %7, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17pseudonormal_testIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLin1ELin1ELi0ELin1ELin1EEES5_S5_NS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IfLi1ELi3ELi1ELi1ELi3EEES7_fS7_EEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERKNS8_IT5_EEiRNS1_15PlainObjectBaseIT6_EERT7_RNS11_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %7, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(12) %10) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.Eigen::Matrix.57", align 8 ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.206", align 4 ; 6 uses
  %13 = alloca %"class.Eigen::Matrix.206", align 4 ; 7 uses
  %14 = alloca %"class.Eigen::Matrix.206", align 4 ; 7 uses
  %15 = alloca %"class.Eigen::Matrix.206", align 4 ; 7 uses
  %16 = alloca %"class.Eigen::Matrix.206", align 4 ; 16 uses
  %17 = alloca %"class.Eigen::Matrix.206", align 4 ; 16 uses
  %18 = alloca %"class.Eigen::Matrix.57", align 8 ; 14 uses
  %19 = alloca %"class.Eigen::Matrix.57", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  %i.a = sext i32 %7 to i64                       ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !77
  %.idx.i.i.i = mul nsw i64 %i.a, 12              ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 %.idx.i.i.i ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !79, !noalias !82 ; 3 uses
  %.idx.i.i.i.i = mul nsw i64 %i.e, 12
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %.idx.i.i.i.i ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !85
  store float %i.h, ptr %13, align 4, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.j = getelementptr i8, ptr %i.g, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !85
  store float %i.k, ptr %i.i, align 4, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !85
  store float %i.n, ptr %i.l, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  %i.o = getelementptr i8, ptr %i.c, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = sext i32 %i.p to i64
  %.idx.i.i.i.i78 = mul nsw i64 %i.q, 12
  %i.r = getelementptr inbounds i8, ptr %i.f, i64 %.idx.i.i.i.i78 ; 3 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !85
  store float %i.s, ptr %14, align 4, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.u = getelementptr i8, ptr %i.r, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !85
  store float %i.v, ptr %i.t, align 4, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = getelementptr i8, ptr %i.r, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !85
  store float %i.y, ptr %i.w, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  %i.z = getelementptr i8, ptr %i.c, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = sext i32 %i.aa to i64
  %.idx.i.i.i.i80 = mul nsw i64 %i.ab, 12
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 %.idx.i.i.i.i80 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !85
  store float %i.ad, ptr %15, align 4, !tbaa !85
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.af = getelementptr i8, ptr %i.ac, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !85
  store float %i.ag, ptr %i.ae, align 4, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ai = getelementptr i8, ptr %i.ac, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !85
  store float %i.aj, ptr %i.ah, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.ak = load double, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.al = fcmp ogt double %i.ak, 1.000000e-04
  br i1 %i.al, label %bb.b, label %.preheader192

.preheader192:                                    ; preds = %bb.a
  %i.am = load ptr, ptr %1, align 8, !tbaa !77
  %i.an = getelementptr i8, ptr %i.am, i64 %.idx.i.i.i ; 5 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !79, !noalias !87 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.at = load <2 x float>, ptr %8, align 4, !tbaa !85 ; 3 uses
  %i.au = load float, ptr %i.ap, align 4, !tbaa !85 ; 3 uses
  %i.av = load i32, ptr %i.an, align 4, !tbaa !14
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %.idx.i.i.i.i85 = mul nsw i64 %i.aw, 12
  %i.ax = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i85 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !tbaa !85
  %i.az = fsub <2 x float> %i.at, %i.ay           ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.az           ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !85
  %i.bd = fsub float %i.au, %i.bc                 ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = extractelement <2 x float> %i.ba, i64 1
  %i.bg = fadd float %i.bf, %i.be
  %i.bh = extractelement <2 x float> %i.ba, i64 0
  %i.bi = fadd float %i.bh, %i.bg
  %i.bj = call noundef float @llvm.sqrt.f32(float %i.bi)
  %i.bk = fpext float %i.bj to double
  %i.bl = fcmp olt double %i.bk, f0x3D719799812DEA11
  br i1 %i.bl, label %.preheader191, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.bm = load float, ptr %12, align 4, !tbaa !85 ; 3 uses
  %i.bn = fcmp ole float %i.bm, f0x2B8CBCCC
  %i.bo = zext i1 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !85 ; 3 uses
  %i.br = fcmp ole float %i.bq, f0x2B8CBCCC
  %i.bs = zext i1 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !85 ; 3 uses
  %i.bv = fcmp ole float %i.bu, f0x2B8CBCCC
  %i.bw = zext i1 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bs, %i.bo
  %i.by = add nuw nsw i32 %i.bx, %i.bw
  switch i32 %i.by, label %bb.e [
    i32 2, label %.preheader.preheader
    i32 1, label %.preheader189.preheader
  ]

.preheader189.preheader:                          ; preds = %bb.b
  %i.bz = fpext float %i.bm to double
  %i.ca = fcmp ugt double %i.bz, f0x3D719799812DEA11
  br i1 %i.ca, label %.preheader189.1, label %bb.d

.preheader.preheader:                             ; preds = %bb.b
  %i.cb = fpext float %i.bm to double
  %i.cc = fcmp ogt double %i.cb, f0x3D719799812DEA11
  br i1 %i.cc, label %bb.c, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cd = fpext float %i.bq to double
  %i.ce = fcmp ogt double %i.cd, f0x3D719799812DEA11
  br i1 %i.ce, label %bb.c, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.cf = fpext float %i.bu to double
  %i.cg = fcmp ogt double %i.cf, f0x3D719799812DEA11
  br i1 %i.cg, label %bb.c, label %.loopexit
end_hunk_0
begin_hunk_1_@_ZN3igl17pseudonormal_testIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IfLin1ELin1ELi0ELin1ELin1EEES5_S5_NS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IfLi1ELi3ELi1ELi1ELi3EEES7_fS7_EEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERKNS8_IT5_EEiRNS1_15PlainObjectBaseIT6_EERT7_RNS11_IT8_EE:bb.a
  %i.je = sext i32 %i.jd to i64
  %i.jf = load ptr, ptr %4, align 8, !tbaa !90, !noalias !136
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.je ; 3 uses
  %i.jh = load i64, ptr %i.ib, align 8, !tbaa !95 ; 2 uses
  %i.ji = load float, ptr %i.jg, align 4, !tbaa !85
  store float %i.ji, ptr %10, align 4, !tbaa !85
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.jh
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !85
  store float %i.jk, ptr %i.ay, align 4, !tbaa !85
  %.idx.i.i.i.i.i.i.i.i.i.i.i84 = shl nsw i64 %i.jh, 3
  %i.jl = getelementptr inbounds i8, ptr %i.jg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i84
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !85
  store float %i.jm, ptr %i.az, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  br label %.loopexit

bb.f:                                             ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  %i.jn = load ptr, ptr %1, align 8, !tbaa !9
  %i.jo = load i64, ptr %i.c, align 8, !tbaa !24
  %i.jp = getelementptr [4 x i8], ptr %i.jn, i64 %i.a ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !14
  %i.jr = sext i32 %i.jq to i64
  %i.js = load ptr, ptr %0, align 8, !tbaa !115, !noalias !139 ; 2 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.jr ; 3 uses
  %i.ju = load i64, ptr %i.i, align 8, !tbaa !120 ; 3 uses
  %i.jv = load float, ptr %i.jt, align 4, !tbaa !85
  store float %i.jv, ptr %16, align 4, !tbaa !85
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ju
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !85
  store float %i.jx, ptr %i.hx, align 4, !tbaa !85
  %.idx.i.i.i.i.i.i.i.i.i.i82.1 = shl nsw i64 %i.ju, 3 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jt, i64 %.idx.i.i.i.i.i.i.i.i.i.i82.1
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !85
  store float %i.jz, ptr %i.hy, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  %i.ka = getelementptr [4 x i8], ptr %i.jp, i64 %i.jo
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !14
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.kc ; 3 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !85
  store float %i.ke, ptr %17, align 4, !tbaa !85
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.ju
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !85
  store float %i.kg, ptr %i.hz, align 4, !tbaa !85
  %i.kh = getelementptr inbounds i8, ptr %i.kd, i64 %.idx.i.i.i.i.i.i.i.i.i.i82.1
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !85
  store float %i.ki, ptr %i.ia, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #6
  call void @_ZN3igl23project_to_line_segmentIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EERNSI_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.kj = load double, ptr %18, align 8, !tbaa !22
  %i.kk = call double @sqrt(double noundef %i.kj) #6
  %i.kl = fcmp olt double %i.kk, f0x3D719799812DEA11
  br i1 %i.kl, label %._crit_edge.thread215, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.km = load ptr, ptr %2, align 8, !tbaa !90, !noalias !142
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.a ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !95 ; 2 uses
  %i.kq = load float, ptr %i.kn, align 4, !tbaa !85
  store float %i.kq, ptr %10, align 4, !tbaa !85
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.kp
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !85
  store float %i.ks, ptr %i.ay, align 4, !tbaa !85
  %.idx.i.i.i.i.i.i.i.i.i.i.i85 = shl nsw i64 %i.kp, 3
  %i.kt = getelementptr inbounds i8, ptr %i.kn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i85
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !85
  store float %i.ku, ptr %i.az, align 4, !tbaa !85
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.thread215, %.preheader182, %.thread211, %.preheader180.2, %.preheader.2, %._crit_edge, %bb.e, %bb.c, %bb.d
  %i.kv = load <2 x float>, ptr %6, align 4, !tbaa !85
  %i.kw = load <2 x float>, ptr %8, align 4, !tbaa !85
  %i.kx = fsub <2 x float> %i.kv, %i.kw
  %i.ky = load <2 x float>, ptr %10, align 4, !tbaa !85
  %i.kz = fmul <2 x float> %i.kx, %i.ky           ; 2 uses
  %i.la = getelementptr i8, ptr %6, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lc = load float, ptr %i.la, align 4, !tbaa !85
  %i.ld = load float, ptr %i.lb, align 4, !tbaa !85
  %i.le = fsub float %i.lc, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !85
  %i.lh = fmul float %i.le, %i.lg
  %i.li = extractelement <2 x float> %i.kz, i64 1
  %i.lj = fadd float %i.li, %i.lh
  %i.lk = extractelement <2 x float> %i.kz, i64 0
  %i.ll = fadd float %i.lk, %i.lj
  %i.lm = fcmp oge float %i.ll, 0.000000e+00
  %i.ln = select i1 %i.lm, float 1.000000e+00, float -1.000000e+00
  store float %i.ln, ptr %9, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17pseudonormal_testIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IdLi1ELi2ELi1ELi1ELi2EEES5_dS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERKNS6_IT3_EEiRNS1_15PlainObjectBaseIT4_EERT5_RNSR_IT6_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %5 to i64                       ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %i.b, i64 %i.a ; 3 uses
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !65, !noalias !145 ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.h ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.e, align 4, !tbaa !14
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.m ; 5 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !70, !noalias !148 ; 4 uses
  %i.p = icmp eq i64 %i.o, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !74 ; 5 uses
  %.pre146 = load double, ptr %i.j, align 8, !tbaa !22 ; 2 uses
  %.pre147 = load double, ptr %i.n, align 8, !tbaa !22 ; 2 uses
  br i1 %i.p, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fsub double %.pre146, %.pre147           ; 2 uses
  %i.r = fmul double %i.q, %i.q                   ; 3 uses
  %i.s = icmp sgt i64 %i.o, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.t = add nsw i64 %i.o, -1                     ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i64 %i.o, 2
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.t, -2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.am, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.02223.i.i.i.i.i = phi double [ %i.r, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i ]
  %i.v = mul nsw i64 %.01724.i.i.i.i.i, %.pre     ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.v
  %i.z = load double, ptr %i.y, align 8, !tbaa !22
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = fadd double %.02223.i.i.i.i.i, %i.ab
  %i.ad = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.ae = mul nsw i64 %i.ad, %.pre                ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.j, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr [8 x i8], ptr %i.n, i64 %i.ae
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !22
  %i.aj = fsub double %i.ag, %i.ai                ; 2 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = fadd double %i.ac, %i.ak                ; 3 uses
  %i.am = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod165 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod165)
  %i.an = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %.pre ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.j, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr [8 x i8], ptr %i.n, i64 %i.an
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  %i.as = fsub double %i.ap, %i.ar                ; 2 uses
  %i.at = fmul double %i.as, %i.as
  %i.au = fadd double %.02223.i.i.i.i.i.epil.init, %i.at
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit: ; preds = %.lr.ph.i.i.i.i.i.epil.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa, %bb.a, %bb.b
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.r, %bb.b ], [ %i.al, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %.0.i.i.i)
  %9 = load double, ptr %6, align 16, !tbaa !22
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = getelementptr [8 x i8], ptr %i.j, i64 %.pre
  %11 = load double, ptr %i.av, align 8, !tbaa !22
  %i.aw = load double, ptr %10, align 8, !tbaa !22
  %i.ax = getelementptr [8 x i8], ptr %i.n, i64 %.pre
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !22
  %12 = insertelement <2 x double> poison, double %9, i64 0
  %i.az = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = insertelement <2 x double> poison, double %.pre146, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %.pre147, i64 1
  %i.bc = fsub <2 x double> %i.az, %i.bb          ; 2 uses
  %i.bd = fmul <2 x double> %i.bc, %i.bc
  %13 = insertelement <2 x double> poison, double %i.aw, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x double> poison, double %11, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.ay, i64 1
  %i.bg = fsub <2 x double> %14, %i.bf            ; 2 uses
  %i.bh = fmul <2 x double> %i.bg, %i.bg
  %i.bi = fadd <2 x double> %i.bd, %i.bh
  %i.bj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bi)
  %i.bk = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x double> %i.bj, %i.bl          ; 3 uses
  %i.bn = fcmp ole <2 x double> %i.bm, splat (double f0x3D719799812DEA11) ; 2 uses
  %shift = shufflevector <2 x i1> %i.bn, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.bn, %shift
  %cond = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %cond, label %.preheader.preheader, label %.loopexit.sink.split

.preheader.preheader:                             ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit
  %i.bo = extractelement <2 x double> %i.bm, i64 0
  %i.bp = fcmp ogt double %i.bo, f0x3D719799812DEA11
  br i1 %i.bp, label %bb.c, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.bq = extractelement <2 x double> %i.bm, i64 1
  %i.br = fcmp ogt double %i.bq, f0x3D719799812DEA11
  br i1 %i.br, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader.1, %.preheader.preheader
  %.lcssa = phi i64 [ 0, %.preheader.preheader ], [ %i.d, %.preheader.1 ]
  %i.bs = getelementptr [4 x i8], ptr %i.e, i64 %.lcssa
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.bu = sext i32 %i.bt to i64
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit, %bb.c
  %.sink = phi ptr [ %3, %bb.c ], [ %2, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit ] ; 2 uses
  %.sink157 = phi i64 [ %i.bu, %bb.c ], [ %i.a, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit ]
  %i.bv = load ptr, ptr %.sink, align 8, !tbaa !65, !noalias !61
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %.sink157 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !74
  %i.bz = load double, ptr %i.bw, align 8, !tbaa !22
  store double %i.bz, ptr %8, align 16, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
  store double %i.cc, ptr %i.ca, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader.1
  %i.cd = load <2 x double>, ptr %4, align 16, !tbaa !51
  %i.ce = load <2 x double>, ptr %6, align 16, !tbaa !51
  %i.cf = fsub <2 x double> %i.cd, %i.ce
  %i.cg = load <2 x double>, ptr %8, align 16, !tbaa !51
  %i.ch = fmul <2 x double> %i.cf, %i.cg          ; 2 uses
  %shift160 = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop161 = fadd <2 x double> %i.ch, %shift160
  %i.ci = extractelement <2 x double> %foldExtExtBinop161, i64 0
  %i.cj = fcmp oge double %i.ci, 0.000000e+00
  %i.ck = select i1 %i.cj, double 1.000000e+00, double -1.000000e+00
  store double %i.ck, ptr %7, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17pseudonormal_testIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES5_S5_NS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEES7_dS7_EEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERKNS8_IT5_EEiRNS1_15PlainObjectBaseIT6_EERT7_RNS11_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.Eigen::Matrix.57", align 8 ; 4 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %14 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %15 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %16 = alloca %"class.Eigen::Matrix", align 16   ; 15 uses
  %17 = alloca %"class.Eigen::Matrix", align 16   ; 15 uses
  %18 = alloca %"class.Eigen::Matrix.57", align 8 ; 14 uses
  %19 = alloca %"class.Eigen::Matrix.57", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  %i.a = sext i32 %7 to i64                       ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !77
  %.idx.i.i.i = mul nsw i64 %i.a, 12              ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 %.idx.i.i.i ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !151, !noalias !153 ; 3 uses
  %.idx.i.i.i.i = mul nsw i64 %i.e, 24
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %.idx.i.i.i.i ; 2 uses
  %i.h = load <2 x double>, ptr %i.g, align 1, !tbaa !51
  store <2 x double> %i.h, ptr %13, align 16, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !22
  store double %i.k, ptr %i.i, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  %i.l = getelementptr i8, ptr %i.c, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = sext i32 %i.m to i64
  %.idx.i.i.i.i78 = mul nsw i64 %i.n, 24
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 %.idx.i.i.i.i78 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 1, !tbaa !51
  store <2 x double> %i.p, ptr %14, align 16, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !22
  store double %i.s, ptr %i.q, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  %i.t = getelementptr i8, ptr %i.c, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = sext i32 %i.u to i64
  %.idx.i.i.i.i80 = mul nsw i64 %i.v, 24
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 %.idx.i.i.i.i80 ; 2 uses
  %i.x = load <2 x double>, ptr %i.w, align 1, !tbaa !51
  store <2 x double> %i.x, ptr %15, align 16, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22
  store double %i.aa, ptr %i.y, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.ab = load double, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ac = fcmp ogt double %i.ab, 1.000000e-04
  br i1 %i.ac, label %bb.b, label %.preheader186

.preheader186:                                    ; preds = %bb.a
  %i.ad = load ptr, ptr %1, align 8, !tbaa !77
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i ; 5 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !151, !noalias !156 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ak = load <2 x double>, ptr %8, align 8, !tbaa !51 ; 3 uses
  %i.al = load double, ptr %i.ag, align 8, !tbaa !22 ; 3 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !14
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %.idx.i.i.i.i85 = mul nsw i64 %i.an, 24
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 %.idx.i.i.i.i85 ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ao, align 1, !tbaa !51
  %i.aq = fsub <2 x double> %i.ak, %i.ap          ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.aq          ; 2 uses
  %shift = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ar, %shift
  %i.as = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.at = getelementptr i8, ptr %i.ao, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !22
  %i.av = fsub double %i.al, %i.au                ; 2 uses
  %i.aw = fmul double %i.av, %i.av
  %i.ax = fadd double %i.as, %i.aw
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %i.ax)
  %i.ay = fcmp olt double %.scalar.i, f0x3D719799812DEA11
  br i1 %i.ay, label %.preheader185, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(24) %12)
  %i.az = load double, ptr %12, align 8, !tbaa !22 ; 3 uses
  %i.ba = fcmp ole double %i.az, f0x3D719799812DEA11
  %i.bb = zext i1 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !22 ; 3 uses
  %i.be = fcmp ole double %i.bd, f0x3D719799812DEA11
  %i.bf = zext i1 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !22 ; 3 uses
  %i.bi = fcmp ole double %i.bh, f0x3D719799812DEA11
  %i.bj = zext i1 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bf, %i.bb
  %i.bl = add nuw nsw i32 %i.bk, %i.bj
  switch i32 %i.bl, label %bb.e [
    i32 2, label %.preheader.preheader
    i32 1, label %.preheader183.preheader
  ]

.preheader183.preheader:                          ; preds = %bb.b
  %i.bm = fcmp ugt double %i.az, f0x3D719799812DEA11
  br i1 %i.bm, label %.preheader183.1, label %bb.d

.preheader.preheader:                             ; preds = %bb.b
  %i.bn = fcmp ogt double %i.az, f0x3D719799812DEA11
  br i1 %i.bn, label %bb.c, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.bo = fcmp ogt double %i.bd, f0x3D719799812DEA11
  br i1 %i.bo, label %bb.c, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.bp = fcmp ogt double %i.bh, f0x3D719799812DEA11
  br i1 %i.bp, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi i64 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ]
  %i.bq = load ptr, ptr %1, align 8, !tbaa !77
  %i.br = getelementptr i8, ptr %i.bq, i64 %.idx.i.i.i
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %.lcssa
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.bu = sext i32 %i.bt to i64
  %i.bv = load ptr, ptr %3, align 8, !tbaa !15, !noalias !159
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bu ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !21 ; 2 uses
  %i.bz = load double, ptr %i.bw, align 8, !tbaa !22
  store double %i.bz, ptr %10, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
end_hunk_1
