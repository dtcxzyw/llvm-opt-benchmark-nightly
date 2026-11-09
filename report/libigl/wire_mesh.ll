Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/wire_mesh?download=true
inline.NumInlined: 10643
inline.NumDeleted: 5829
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 91
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EEibRNS3_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EE:bb.a
  %.012.i.i.i.i.i196.ph = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i195.preheader ], [ %i.gt, %middle.block762 ]
  %.0911.i.i.i.i.i197.ph = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i195.preheader ], [ %i.gu, %middle.block762 ]
  br label %.lr.ph.i.i.i.i.i195

.lr.ph.i.i.i.i.i195:                              ; preds = %.lr.ph.i.i.i.i.i195.preheader893, %.lr.ph.i.i.i.i.i195
  %.012.i.i.i.i.i196 = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i195 ], [ %.012.i.i.i.i.i196.ph, %.lr.ph.i.i.i.i.i195.preheader893 ] ; 2 uses
  %.0911.i.i.i.i.i197 = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i195 ], [ %.0911.i.i.i.i.i197.ph, %.lr.ph.i.i.i.i.i195.preheader893 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.gz = load i64, ptr %.0911.i.i.i.i.i197, align 4, !alias.scope !332
  store i64 %i.gz, ptr %.012.i.i.i.i.i196, align 4, !alias.scope !331
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i197, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i196, i64 8 ; 2 uses
  %.not.i.i.i.i.i198 = icmp eq ptr %i.ha, %i.fr
  br i1 %.not.i.i.i.i.i198, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199, label %.lr.ph.i.i.i.i.i195, !llvm.loop !261

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199: ; preds = %.lr.ph.i.i.i.i.i195, %middle.block762, %.noexc204
  %.0.lcssa.i.i.i.i.i200 = phi ptr [ %i.gi, %.noexc204 ], [ %i.gt, %middle.block762 ], [ %i.hb, %.lr.ph.i.i.i.i.i195 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i200, i64 8
  %.not.i34.i.i201 = icmp eq ptr %i.fx, null
  br i1 %.not.i34.i.i201, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199
  %i.hd = load ptr, ptr %i.fs, align 8, !tbaa !324
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.he, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.hf) #27
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202: ; preds = %bb.t, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199
  store ptr %i.gi, ptr %i.fp, align 8, !tbaa !328
  store ptr %i.hc, ptr %i.fq, align 8, !tbaa !323
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.hg, ptr %i.fs, align 8, !tbaa !324
  %.pre585 = load ptr, ptr %1, align 8, !tbaa !49
  %.pre586 = load i64, ptr %i.l, align 8, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202
  %.pre587594 = phi i64 [ %.pre587595, %bb.r ], [ %.pre586, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202 ] ; 2 uses
  %i.hh = phi ptr [ %i.fk, %bb.r ], [ %.pre585, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202 ]
  %i.hi = getelementptr [4 x i8], ptr %i.hh, i64 %indvars.iv553 ; 2 uses
  %i.hj = getelementptr [4 x i8], ptr %i.hi, i64 %.pre587594
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !48
  %i.hl = sext i32 %i.hk to i64
  %i.hm = load ptr, ptr %0, align 8, !tbaa !29, !noalias !333 ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.hl ; 3 uses
  %i.ho = load i32, ptr %i.hi, align 4, !tbaa !48
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.hp ; 3 uses
  %i.hr = load i64, ptr %i.i, align 8, !tbaa !24  ; 3 uses
  %i.hs = load double, ptr %i.hn, align 8, !tbaa !19
  %i.ht = load double, ptr %i.hq, align 8, !tbaa !19
  %i.hu = fsub double %i.hs, %i.ht
  %.sroa.0376.0.vec.insert = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.hr
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !19
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hr
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !19
  %i.hz = fsub double %i.hw, %i.hy
  %.sroa.0376.8.vec.insert = insertelement <2 x double> %.sroa.0376.0.vec.insert, double %i.hz, i64 1 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.hr, 4 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.hn, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !19
  %i.ic = getelementptr inbounds i8, ptr %i.hq, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.id = load double, ptr %i.ic, align 8, !tbaa !19
  %i.ie = fsub double %i.ib, %i.id                ; 5 uses
  %i.if = fmul <2 x double> %.sroa.0376.8.vec.insert, %.sroa.0376.8.vec.insert ; 2 uses
  %shift = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.if, %shift
  %i.ig = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ih = fmul double %i.ie, %i.ie
  %i.ii = fadd double %i.ih, %i.ig                ; 2 uses
  %.scalar.i = call double @llvm.sqrt.f64(double %i.ii) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ij = fcmp ogt double %i.ii, 0.000000e+00
  br i1 %i.ij, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit, label %.thread

.thread:                                          ; preds = %bb.u
  store <2 x double> %.sroa.0376.8.vec.insert, ptr %16, align 16
  store double %i.ie, ptr %.sroa.8379.0..sroa_idx, align 16, !tbaa !55
  br label %bb.w

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit: ; preds = %bb.u
  %i.ik = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = fdiv <2 x double> %.sroa.0376.8.vec.insert, %i.il ; 5 uses
  store <2 x double> %i.im, ptr %16, align 16, !tbaa !55, !alias.scope !334
  %i.in = fdiv double %i.ie, %.scalar.i           ; 5 uses
  store double %i.in, ptr %.sroa.8379.0..sroa_idx, align 16, !tbaa !19, !alias.scope !334
  %.pre598 = fmul <2 x double> %i.im, %i.im       ; 2 uses
  %shift880 = shufflevector <2 x double> %.pre598, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop881 = fadd <2 x double> %.pre598, %shift880
  %.pre603 = extractelement <2 x double> %foldExtExtBinop881, i64 0
  %.pre605 = fmul double %i.in, %i.in
  %.pre607 = fadd double %.pre605, %.pre603
  %.pre607.fr = freeze double %.pre607            ; 2 uses
  %.pre609 = call double @llvm.sqrt.f64(double %.pre607.fr) ; 2 uses
  %i.io = fcmp ogt double %.pre607.fr, 0.000000e+00
  %i.ip = insertelement <2 x double> poison, double %.pre609, i64 0
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = fdiv <2 x double> %i.im, %i.iq
  %i.is = fdiv double %i.in, %.pre609
  br i1 %i.io, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit, %.thread
  %i.it = phi <2 x double> [ %.sroa.0376.8.vec.insert, %.thread ], [ %i.im, %bb.v ], [ %i.ir, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit ] ; 5 uses
  %i.iu = phi double [ %i.ie, %.thread ], [ %i.in, %bb.v ], [ %i.is, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit ] ; 4 uses
  %i.iv = fmul <2 x double> %i.it, zeroinitializer ; 2 uses
  %shift883 = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop884 = fadd <2 x double> %i.iv, %shift883
  %i.iw = extractelement <2 x double> %foldExtExtBinop884, i64 0
  %i.ix = fadd double %i.iu, %i.iw                ; 4 uses
  %i.iy = fcmp olt double %i.ix, f0xBFEFFFFFFFFFDCD1
  br i1 %i.iy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !335
  store double 1.000000e+00, ptr %i.bt, align 16, !tbaa !19, !noalias !336
  %i.iz = shufflevector <2 x double> %i.it, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.ja = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %i.iz, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x double> %i.ja, ptr %8, align 16, !tbaa !19, !noalias !335
  store double %i.iu, ptr %i.bu, align 8, !tbaa !19, !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !335
  store i32 0, ptr %i.bw, align 4, !tbaa !71, !noalias !335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.bv, i8 0, i64 11, i1 false), !noalias !335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 -1, i64 16, i1 false), !noalias !335
  store i64 0, ptr %i.by, align 8, !tbaa !72, !noalias !335
  store i8 0, ptr %i.bz, align 16, !tbaa !91, !noalias !335
  store i8 0, ptr %i.ca, align 1, !tbaa !337, !noalias !335
  %i.jb = invoke noundef nonnull align 16 dereferenceable(560) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(560) %9, ptr noundef nonnull align 16 dereferenceable(48) %8, i32 noundef 16)
          to label %.noexc207 unwind label %bb.z  ; 0 uses

.noexc207:                                        ; preds = %bb.x
  %i.jc = fcmp olt double %i.ix, -1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.jc, double -1.000000e+00, double %i.ix
  %i.jd = load <2 x double>, ptr %i.cb, align 16, !tbaa !55, !noalias !335
  %i.je = load double, ptr %i.cc, align 16, !tbaa !19, !noalias !335
  %i.jf = fadd nnan double %.sroa.speculated.i.i, 1.000000e+00
  %i.jg = fmul nnan double %i.jf, 5.000000e-01    ; 2 uses
  %i.jh = call double @sqrt(double noundef %i.jg) #23, !noalias !335
  %i.ji = fsub double 1.000000e+00, %i.jg
  %i.jj = call double @sqrt(double noundef %i.ji) #23, !noalias !335 ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jk = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x double> %i.jd, %i.jk
  %i.jm = fmul double %i.je, %i.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !335
  %.pre587.pre = load i64, ptr %i.l, align 8, !tbaa !27
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

bb.y:                                             ; preds = %bb.w
  %.sroa.061.0.vec.extract.i.i = extractelement <2 x double> %i.it, i64 0 ; 2 uses
  %i.jn = fmul double %i.iu, 0.000000e+00
  %i.jo = fsub double %.sroa.061.0.vec.extract.i.i, %i.jn
  %i.jp = fmul double %.sroa.061.0.vec.extract.i.i, -0.000000e+00
  %i.jq = insertelement <2 x double> %i.it, double %i.iu, i64 0
  %i.jr = fneg <2 x double> %i.it
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jt = insertelement <2 x double> %i.js, double %i.jp, i64 1
  %i.ju = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> zeroinitializer, <2 x double> %i.jt) ; 2 uses
  %.sroa.071.8.vec.insert.i.i = insertelement <2 x double> %i.ju, double %i.jo, i64 1
  %i.jv = fadd double %i.ix, 1.000000e+00
  %i.jw = fmul double %i.jv, 2.000000e+00
  %i.jx = call double @sqrt(double noundef %i.jw) #23, !noalias !335 ; 2 uses
  %i.jy = fdiv double 1.000000e+00, %i.jx         ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.jz = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x double> %.sroa.071.8.vec.insert.i.i, %i.jz
  %i.kb = extractelement <2 x double> %i.ju, i64 1
  %i.kc = fmul double %i.kb, %i.jy
  %i.kd = fmul double %i.jx, 5.000000e-01
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit: ; preds = %bb.y, %.noexc207
  %.pre587 = phi i64 [ %.pre587.pre, %.noexc207 ], [ %.pre587594, %bb.y ] ; 4 uses
  %.sink75.i.i = phi double [ %i.jh, %.noexc207 ], [ %i.kd, %bb.y ] ; 2 uses
  %.sink74.i.i = phi <2 x double> [ %i.jl, %.noexc207 ], [ %i.ka, %bb.y ] ; 3 uses
  %.sink.i.i = phi double [ %i.jm, %.noexc207 ], [ %i.kc, %bb.y ] ; 2 uses
  %i.ke = load i64, ptr %i.b, align 8, !tbaa !21  ; 6 uses
  %i.kf = icmp sgt i64 %i.ke, 0
  br i1 %i.kf, label %.lr.ph515, label %._crit_edge

.lr.ph515:                                        ; preds = %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit
  %i.kg = load ptr, ptr %14, align 8, !tbaa !22, !noalias !338
  %i.kh = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.ki = srem i64 %indvars.iv553, %i.kh
  %i.kj = load ptr, ptr %2, align 8, !tbaa !16
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ki ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ke, 4
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.sink75.i.i, i64 0
  %i.kl = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = fdiv double %.scalar.i, 3.000000e+00    ; 4 uses
  %i.kn = load ptr, ptr %1, align 8, !tbaa !49
  %i.ko = getelementptr [4 x i8], ptr %i.kn, i64 %indvars.iv553 ; 2 uses
  %i.kp = load ptr, ptr %0, align 8, !tbaa !29, !noalias !339 ; 3 uses
  %i.kq = ptrtoaddr ptr %i.kp to i64              ; 2 uses
  %i.kr = load i64, ptr %i.i, align 8, !tbaa !24  ; 10 uses
  %i.ks = shl nuw nsw i64 %indvars.iv553, 1       ; 2 uses
  %i.kt = load ptr, ptr %5, align 8, !tbaa !29, !noalias !340 ; 3 uses
  %i.ku = ptrtoaddr ptr %i.kt to i64              ; 2 uses
  %i.kv = load i64, ptr %i.cf, align 8, !tbaa !92, !noalias !340 ; 13 uses
  %i.kw = load i64, ptr %i.ag, align 8, !tbaa !24 ; 8 uses
  %i.kx = icmp sgt i64 %i.kv, 0
  %reass.mul.i = mul i64 %i.ke, %i.ks
  %i.ky = add i64 %i.kr, %reass.mul.i
  %i.kz = getelementptr [4 x i8], ptr %i.ko, i64 %.pre587
  %i.la = or disjoint i64 %i.ks, 1
  %reass.mul.i.1 = mul i64 %i.ke, %i.la
  %i.lb = add i64 %i.kr, %reass.mul.i.1
  %i.lc = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ld = insertelement <2 x double> %i.lc, double %.sink.i.i, i64 1 ; 2 uses
  %i.le = insertelement <2 x double> %i.lc, double %.sink.i.i, i64 0 ; 2 uses
  %i.lf = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lg = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %min.iters.check729 = icmp ult i64 %i.kv, 6
  %ident.check724 = icmp ne i64 %i.kw, 1
  %ident.check725 = icmp ne i64 %i.kr, 1
  %i.lh = or i1 %ident.check724, %ident.check725
  %n.vec733 = and i64 %i.kv, 9223372036854775804  ; 3 uses
  %cmp.n746 = icmp eq i64 %i.kv, %n.vec733
  %xtraiter900 = and i64 %i.kv, 1
  %lcmp.mod901.not = icmp eq i64 %xtraiter900, 0
  %min.iters.check = icmp ult i64 %i.kv, 6
  %ident.check = icmp ne i64 %i.kw, 1
  %ident.check717 = icmp ne i64 %i.kr, 1
  %i.li = or i1 %ident.check, %ident.check717
  %n.vec = and i64 %i.kv, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.kv, %n.vec
  %xtraiter905 = and i64 %i.kv, 1
  %lcmp.mod906.not = icmp eq i64 %xtraiter905, 0
  br label %bb.aa

._crit_edge:                                      ; preds = %.split513, %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.lj = icmp sgt i64 %.pre587, %indvars.iv.next554
  br i1 %i.lj, label %bb.m, label %._crit_edge518, !llvm.loop !276

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191, %.invoke
  %lpad.loopexit.split-lp896 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %.lr.ph515, %.split513
  %indvars.iv549 = phi i64 [ 0, %.lr.ph515 ], [ %indvars.iv.next550, %.split513 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv549 ; 3 uses
  %i.lm = load double, ptr %i.kk, align 8, !tbaa !19, !noalias !341 ; 3 uses
  %i.ln = load double, ptr %i.ll, align 8, !tbaa !19, !noalias !342
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.ke
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !19, !noalias !342
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !19, !noalias !342 ; 2 uses
  %i.ls = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lu = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.ln, i64 1
  %i.lw = fmul <2 x double> %i.lt, %i.lv          ; 4 uses
  %i.lx = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.ly = insertelement <2 x double> %i.lx, double %i.lr, i64 1
  %i.lz = fmul <2 x double> %i.lt, %i.ly          ; 3 uses
  %i.ma = shufflevector <2 x double> %i.lw, <2 x double> %i.lz, <2 x i32> <i32 1, i32 2>
  %i.mb = fneg <2 x double> %i.lz
  %i.mc = fmul <2 x double> %i.le, %i.mb
  %i.md = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.lw, <2 x double> %i.mc) ; 2 uses
  %i.me = fadd <2 x double> %i.md, %i.md          ; 5 uses
  %i.mf = shufflevector <2 x double> %i.lw, <2 x double> %i.me, <2 x i32> <i32 1, i32 2>
  %i.mg = fneg <2 x double> %i.mf
  %i.mh = fmul <2 x double> %i.lg, %i.mg
  %i.mi = shufflevector <2 x double> %i.lz, <2 x double> %i.me, <2 x i32> <i32 0, i32 3>
  %i.mj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.mi, <2 x double> %i.mh) ; 3 uses
  %foldExtExtBinop886 = fadd <2 x double> %i.mj, %i.mj ; 3 uses
  %i.mk = extractelement <2 x double> %foldExtExtBinop886, i64 0
  %i.ml = shufflevector <2 x double> %i.me, <2 x double> %foldExtExtBinop886, <2 x i32> <i32 1, i32 2>
  %i.mm = fneg <2 x double> %i.ml
  %i.mn = fmul <2 x double> %i.le, %i.mm
  %i.mo = shufflevector <2 x double> %foldExtExtBinop886, <2 x double> %i.me, <2 x i32> <i32 0, i32 2>
  %i.mp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.mo, <2 x double> %i.mn)
  %i.mq = fmul <2 x double> %i.kl, %i.me
  %i.mr = fadd <2 x double> %i.ma, %i.mq
  %i.ms = fadd <2 x double> %i.mr, %i.mp
  %i.mt = fmul double %.sink75.i.i, %i.mk
  %i.mu = extractelement <2 x double> %i.lw, i64 0
  %i.mv = fadd double %i.mu, %i.mt
  %i.mw = extractelement <2 x double> %i.mj, i64 1
  %i.mx = fadd double %i.mv, %i.mw
  store <2 x double> %i.ms, ptr %17, align 16, !tbaa !55
  store double %i.mx, ptr %i.ce, align 16, !tbaa !19
  br i1 %i.kx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %.split513

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader:   ; preds = %bb.aa
  %i.my = fcmp olt double %i.km, %i.lm
  %.sroa.speculated = select i1 %i.my, double %i.km, double %i.lm
  %i.mz = load i32, ptr %i.ko, align 4, !tbaa !48
  %i.na = sext i32 %i.mz to i64                   ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !48
  %i.nd = icmp sgt i32 %i.nc, 1
  %i.ne = uitofp i1 %i.nd to double
  %i.nf = fmul double %.sroa.speculated, %i.ne    ; 4 uses
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.na ; 4 uses
  %i.nh = add i64 %indvars.iv549, %i.ky
  %sext = shl i64 %i.nh, 32
  %i.ni = ashr exact i64 %sext, 29                ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %i.kt, i64 %i.ni ; 4 uses
  %brmerge = select i1 %min.iters.check729, i1 true, i1 %i.lh
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck730

vector.memcheck730:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader
  %i.nk = shl nsw i64 %i.na, 3
  %28 = add i64 %i.ni, %i.ku
  %i.nl = add i64 %i.nk, %i.kq
  %29 = sub i64 %i.nl, %28
  %diff.check731 = icmp ugt i64 %29, -32
  br i1 %diff.check731, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph732

vector.ph732:                                     ; preds = %vector.memcheck730
  %broadcast.splatinsert734 = insertelement <2 x double> poison, double %i.nf, i64 0
  %broadcast.splat735 = shufflevector <2 x double> %broadcast.splatinsert734, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body736

vector.body736:                                   ; preds = %vector.body736, %vector.ph732
  %index737 = phi i64 [ 0, %vector.ph732 ], [ %index.next744, %vector.body736 ] ; 5 uses
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.nj, i64 %index737 ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %index737 ; 2 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %index737 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %wide.load738 = load <2 x double>, ptr %i.no, align 8, !tbaa !19
  %wide.load739 = load <2 x double>, ptr %i.np, align 8, !tbaa !19
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %wide.load740 = load <2 x double>, ptr %i.nn, align 16, !tbaa !19
  %wide.load741 = load <2 x double>, ptr %i.nq, align 16, !tbaa !19
  %i.nr = fadd <2 x double> %wide.load738, %wide.load740
  %i.ns = fadd <2 x double> %wide.load739, %wide.load741
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %index737 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %wide.load742 = load <2 x double>, ptr %i.nt, align 16, !tbaa !19
  %wide.load743 = load <2 x double>, ptr %i.nu, align 16, !tbaa !19
  %i.nv = fmul <2 x double> %broadcast.splat735, %wide.load742
  %i.nw = fmul <2 x double> %broadcast.splat735, %wide.load743
  %i.nx = fadd <2 x double> %i.nr, %i.nv
  %i.ny = fadd <2 x double> %i.ns, %i.nw
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store <2 x double> %i.nx, ptr %i.nm, align 8, !tbaa !19
  store <2 x double> %i.ny, ptr %i.nz, align 8, !tbaa !19
  %index.next744 = add nuw i64 %index737, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next744, %n.vec733
  br i1 %i.oa, label %middle.block745, label %vector.body736, !llvm.loop !283

middle.block745:                                  ; preds = %vector.body736
  br i1 %cmp.n746, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS1_IdLi1ELi3ELi1ELi1ELi3EEEKNS0_IKS2_Li1ELin1ELb0EEEEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EESA_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader, %vector.memcheck730, %middle.block745
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck730 ], [ %n.vec733, %middle.block745 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader ] ; 7 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod901.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ob = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.kw
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.nj, i64 %i.ob
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %.05.i.i.i.i.i.i.i.i.i.i.ph
  %i.oe = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.kr
  %i.of = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.oe
  %i.og = load double, ptr %i.of, align 8, !tbaa !19
  %i.oh = load double, ptr %i.od, align 16, !tbaa !19
  %i.oi = fadd double %i.og, %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %.05.i.i.i.i.i.i.i.i.i.i.ph
  %i.ok = load double, ptr %i.oj, align 16, !tbaa !19
  %i.ol = fmul double %i.nf, %i.ok
  %i.om = fadd double %i.oi, %i.ol
  store double %i.om, ptr %i.oc, align 8, !tbaa !19
  %i.on = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.on, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.oo = icmp eq i64 %i.kv, %.neg
  br i1 %i.oo, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS1_IdLi1ELi3ELi1ELi1ELi3EEEKNS0_IKS2_Li1ELin1ELb0EEEEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EESA_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.split513:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %middle.block, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1 ; 2 uses
  %exitcond552.not = icmp eq i64 %indvars.iv.next550, %i.ke
  br i1 %exitcond552.not, label %._crit_edge, label %bb.aa, !llvm.loop !284

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.po, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.op = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.kw
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.nj, i64 %i.op
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.os = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.kr
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.os
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !19
  %i.ov = load double, ptr %i.or, align 8, !tbaa !19
  %i.ow = fadd double %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !19
  %i.oz = fmul double %i.nf, %i.oy
  %i.pa = fadd double %i.ow, %i.oz
  store double %i.pa, ptr %i.oq, align 8, !tbaa !19
  %i.pb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.pc = mul nsw i64 %i.pb, %i.kw
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.nj, i64 %i.pc
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.pb
  %i.pf = mul nsw i64 %i.pb, %i.kr
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.pf
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !19
  %i.pi = load double, ptr %i.pe, align 8, !tbaa !19
  %i.pj = fadd double %i.ph, %i.pi
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.pb
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !19
  %i.pm = fmul double %i.nf, %i.pl
  %i.pn = fadd double %i.pj, %i.pm
  store double %i.pn, ptr %i.pd, align 8, !tbaa !19
  %i.po = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.1903 = icmp eq i64 %i.po, %i.kv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.1903, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS1_IdLi1ELi3ELi1ELi1ELi3EEEKNS0_IKS2_Li1ELin1ELb0EEEEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EESA_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !285

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS1_IdLi1ELi3ELi1ELi1ELi3EEEKNS0_IKS2_Li1ELin1ELb0EEEEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EESA_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block745
  %i.pp = load double, ptr %i.kk, align 8, !tbaa !19 ; 2 uses
  %i.pq = fcmp olt double %i.km, %i.pp
  %.sroa.speculated.1 = select i1 %i.pq, double %i.km, double %i.pp
  %i.pr = load i32, ptr %i.kz, align 4, !tbaa !48
  %i.ps = sext i32 %i.pr to i64                   ; 3 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !48
  %i.pv = icmp sgt i32 %i.pu, 1
  %i.pw = uitofp i1 %i.pv to double
  %i.px = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.ps ; 4 uses
  %i.py = fneg double %i.pw
  %i.pz = fmul double %.sroa.speculated.1, %i.py  ; 4 uses
  %i.qa = add i64 %indvars.iv549, %i.lb
  %sext672 = shl i64 %i.qa, 32
  %i.qb = ashr exact i64 %sext672, 29             ; 2 uses
  %i.qc = getelementptr inbounds i8, ptr %i.kt, i64 %i.qb ; 4 uses
  %brmerge929 = select i1 %min.iters.check, i1 true, i1 %i.li
  br i1 %brmerge929, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS1_IdLi1ELi3ELi1ELi1ELi3EEEKNS0_IKS2_Li1ELin1ELb0EEEEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EESA_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit
  %i.qd = shl nsw i64 %i.ps, 3
  %30 = add i64 %i.qb, %i.ku
  %i.qe = add i64 %i.qd, %i.kq
  %31 = sub i64 %i.qe, %30
  %diff.check = icmp ugt i64 %31, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.pz, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %index ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %index ; 2 uses
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.px, i64 %index ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %wide.load = load <2 x double>, ptr %i.qh, align 8, !tbaa !19
  %wide.load718 = load <2 x double>, ptr %i.qi, align 8, !tbaa !19
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %wide.load719 = load <2 x double>, ptr %i.qg, align 16, !tbaa !19
  %wide.load720 = load <2 x double>, ptr %i.qj, align 16, !tbaa !19
  %i.qk = fadd <2 x double> %wide.load, %wide.load719
  %i.ql = fadd <2 x double> %wide.load718, %wide.load720
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %index ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %wide.load721 = load <2 x double>, ptr %i.qm, align 16, !tbaa !19
  %wide.load722 = load <2 x double>, ptr %i.qn, align 16, !tbaa !19
  %i.qo = fmul <2 x double> %broadcast.splat, %wide.load721
  %i.qp = fmul <2 x double> %broadcast.splat, %wide.load722
  %i.qq = fadd <2 x double> %i.qk, %i.qo
  %i.qr = fadd <2 x double> %i.ql, %i.qp
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store <2 x double> %i.qq, ptr %i.qf, align 8, !tbaa !19
  store <2 x double> %i.qr, ptr %i.qs, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qt = icmp eq i64 %index.next, %n.vec
  br i1 %i.qt, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.split513, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader:           ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS1_IdLi1ELi3ELi1ELi1ELi3EEEKNS0_IKS2_Li1ELin1ELb0EEEEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EESA_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.1.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS1_IdLi1ELi3ELi1ELi1ELi3EEEKNS0_IKS2_Li1ELin1ELb0EEEEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EESA_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ] ; 7 uses
  %.neg920 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, 1
  br i1 %lcmp.mod906.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader
  %i.qu = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %i.kw
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.qu
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph
  %i.qx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %i.kr
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.qx
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !19
  %i.ra = load double, ptr %i.qw, align 16, !tbaa !19
  %i.rb = fadd double %i.qz, %i.ra
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph
  %i.rd = load double, ptr %i.rc, align 16, !tbaa !19
  %i.re = fmul double %i.pz, %i.rd
  %i.rf = fadd double %i.rb, %i.re
  store double %i.rf, ptr %i.qv, align 8, !tbaa !19
  %i.rg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader ], [ %i.rg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol ]
  %i.rh = icmp eq i64 %i.kv, %.neg920
  br i1 %i.rh, label %.split513, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1
  %.05.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.sh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ], [ %.05.i.i.i.i.i.i.i.i.i.i.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit ] ; 6 uses
  %i.ri = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, %i.kw
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.ri
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %.05.i.i.i.i.i.i.i.i.i.i.1
  %i.rl = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, %i.kr
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.rl
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !19
  %i.ro = load double, ptr %i.rk, align 8, !tbaa !19
  %i.rp = fadd double %i.rn, %i.ro
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %.05.i.i.i.i.i.i.i.i.i.i.1
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !19
  %i.rs = fmul double %i.pz, %i.rr
  %i.rt = fadd double %i.rp, %i.rs
  store double %i.rt, ptr %i.rj, align 8, !tbaa !19
  %i.ru = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, 1 ; 4 uses
  %i.rv = mul nsw i64 %i.ru, %i.kw
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.rv
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.ru
  %i.ry = mul nsw i64 %i.ru, %i.kr
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.ry
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !19
  %i.sb = load double, ptr %i.rx, align 8, !tbaa !19
  %i.sc = fadd double %i.sa, %i.sb
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.ru
  %i.se = load double, ptr %i.sd, align 8, !tbaa !19
  %i.sf = fmul double %i.pz, %i.se
  %i.sg = fadd double %i.sc, %i.sf
  store double %i.sg, ptr %i.rw, align 8, !tbaa !19
  %i.sh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.1.1 = icmp eq i64 %i.sh, %i.kv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.1.1, label %.split513, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, !llvm.loop !287

.preheader502.loopexit:                           ; preds = %bb.ac
  %.pre588 = load i64, ptr %i.l, align 8, !tbaa !27
  br label %.preheader502

.preheader502:                                    ; preds = %.preheader502.loopexit, %._crit_edge518
  %i.si = phi i64 [ %.pre588, %.preheader502.loopexit ], [ %i.di, %._crit_edge518 ]
  %i.sj = icmp sgt i64 %i.si, 0
  br i1 %i.sj, label %.lr.ph534, label %._crit_edge535

.lr.ph534:                                        ; preds = %.preheader502
  %i.sk = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  br label %bb.ad

bb.ab:                                            ; preds = %.lr.ph526, %bb.ac
  %indvars.iv564 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next565, %bb.ac ] ; 3 uses
  %i.sl = phi i64 [ %i.dl, %.lr.ph526 ], [ %i.vi, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.sm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0416.0451498, i64 %indvars.iv564 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !323 ; 3 uses
  %i.sp = load ptr, ptr %i.sm, align 8, !tbaa !328 ; 4 uses
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = ashr exact i64 %i.ss, 3                 ; 3 uses
  %i.su = load i64, ptr %i.b, align 8, !tbaa !21  ; 14 uses
  %i.sv = mul i64 %i.st, %i.su                    ; 3 uses
  %i.sw = add nuw nsw i64 %i.sv, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.sx = icmp ult i64 %i.sv, 9223372036854775807
  call void @llvm.assume(i1 %i.sx)
  %i.sy = icmp samesign ugt i64 %i.sv, 4611686018427387902
  br i1 %i.sy, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.sz = shl nuw i64 %i.sw, 2
  %i.ta = call noalias ptr @malloc(i64 noundef %i.sz) #24 ; 5 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %.invoke.i, label %.sink.split.i.i.i.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.ab
  %i.tc = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.tc, align 8, !tbaa !11
  invoke void @__cxa_throw(ptr nonnull %i.tc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont.i unwind label %.body.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.sink.split.i.i.i.i:                              ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  store ptr %i.ta, ptr %21, align 8, !tbaa !94
  store i64 %i.sw, ptr %i.dn, align 8, !tbaa !95
  %i.td = trunc nuw nsw i64 %indvars.iv564 to i32 ; 2 uses
  store i32 %i.td, ptr %i.ta, align 4, !tbaa !48
  %i.te = icmp ne ptr %i.so, %i.sp
  %i.tf = icmp sgt i64 %i.su, 0
  %or.cond = and i1 %i.te, %i.tf
  br i1 %or.cond, label %.preheader503.preheader, label %._crit_edge523.split

.preheader503.preheader:                          ; preds = %.sink.split.i.i.i.i
  %i.tg = shl i64 %i.su, 2                        ; 2 uses
  %scevgep788 = getelementptr i8, ptr %i.ta, i64 4 ; 2 uses
  %i.th = mul i64 %i.tg, %i.st
  %scevgep789 = getelementptr i8, ptr %scevgep788, i64 %i.th
  %min.iters.check791 = icmp ult i64 %i.su, 8
  %bound0 = icmp ult ptr %scevgep788, %i.so
  %bound1 = icmp ult ptr %i.sp, %scevgep789
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.tg, 0
  %i.ti = or i1 %found.conflict, %stride.check
  %n.vec794 = and i64 %i.su, 9223372036854775800  ; 3 uses
  %broadcast.splatinsert795 = insertelement <4 x i64> poison, i64 %i.sl, i64 0
  %broadcast.splat796 = shufflevector <4 x i64> %broadcast.splatinsert795, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert797 = insertelement <4 x i64> poison, i64 %i.su, i64 0
  %broadcast.splat798 = shufflevector <4 x i64> %broadcast.splatinsert797, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n807 = icmp eq i64 %i.su, %n.vec794
  %xtraiter907 = and i64 %i.su, 1
  %lcmp.mod908.not = icmp eq i64 %xtraiter907, 0
  br label %.preheader503

.preheader503:                                    ; preds = %.preheader503.preheader, %._crit_edge521
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %._crit_edge521 ], [ 0, %.preheader503.preheader ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv560 ; 5 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 4 ; 4 uses
  %i.tl = mul nuw nsw i64 %indvars.iv560, %i.su
  %i.tm = getelementptr [4 x i8], ptr %i.ta, i64 %i.tl
  %i.tn = getelementptr i8, ptr %i.tm, i64 4      ; 4 uses
  %brmerge930 = or i1 %min.iters.check791, %i.ti
  br i1 %brmerge930, label %scalar.ph790.preheader, label %vector.ph793

vector.ph793:                                     ; preds = %.preheader503
  %i.to = load i32, ptr %i.tj, align 4, !tbaa !326, !alias.scope !343
  %i.tp = load i32, ptr %i.tk, align 4, !tbaa !327, !alias.scope !343
  %broadcast.splatinsert801 = insertelement <4 x i32> poison, i32 %i.tp, i64 0
  %broadcast.splat802 = shufflevector <4 x i32> %broadcast.splatinsert801, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tq = shl nsw i32 %i.to, 1
  %broadcast.splatinsert799 = insertelement <4 x i32> poison, i32 %i.tq, i64 0
  %broadcast.splat800 = shufflevector <4 x i32> %broadcast.splatinsert799, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tr = zext <4 x i32> %broadcast.splat800 to <4 x i64>
  %i.ts = zext <4 x i32> %broadcast.splat802 to <4 x i64>
  %i.tt = add nuw nsw <4 x i64> %i.ts, %i.tr
  %i.tu = mul <4 x i64> %i.tt, %broadcast.splat798
end_hunk_0
