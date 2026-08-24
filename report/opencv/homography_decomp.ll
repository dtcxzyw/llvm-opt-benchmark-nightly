Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_decomp?download=true
inline.NumInlined: 716
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv23HomographyDecomposition21HomographyDecompZhang9decomposeERSt6vectorINS0_13_CameraMotionESaIS3_EE:bb.a

bb.bp:                                            ; preds = %bb.bo
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !70 ; 9 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !73
  %.not.i160 = icmp eq ptr %i.qm, %i.qo
  br i1 %.not.i160, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.qm, ptr noundef nonnull align 8 dereferenceable(120) %15, i64 72, i1 false), !tbaa.struct !51
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 72
  %i.qq = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !11
  store double %i.qr, ptr %i.qp, align 8, !tbaa !11
  %i.qs = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !11
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qm, i64 80
  store double %i.qt, ptr %i.qu, align 8, !tbaa !11
  %i.qv = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !11
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qm, i64 88
  store double %i.qw, ptr %i.qx, align 8, !tbaa !11
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qm, i64 96
  %i.qz = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !11
  store double %i.ra, ptr %i.qy, align 8, !tbaa !11
  %i.rb = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !11
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qm, i64 104
  store double %i.rc, ptr %i.rd, align 8, !tbaa !11
  %i.re = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.rf = load double, ptr %i.re, align 8, !tbaa !11
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qm, i64 112
  store double %i.rf, ptr %i.rg, align 8, !tbaa !11
  %i.rh = load ptr, ptr %i.ql, align 8, !tbaa !70
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 120
  store ptr %i.ri, ptr %i.ql, align 8, !tbaa !70
  br label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit162

bb.br:                                            ; preds = %bb.bp
  invoke void @_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.qm, ptr noundef nonnull align 8 dereferenceable(120) %15)
          to label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit162 unwind label %bb.ap

_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit162: ; preds = %bb.bq, %bb.br, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.bs:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.f
  %.pn112.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.n, %bb.f ], [ %.pn110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %bb.g ], [ %i.kd, %bb.ap ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn112.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !74
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !36
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !67
  %i.g = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.g, ptr %i.b, align 8, !tbaa !13
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.i, ptr %i.h, align 1, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !75
  %i.l = load ptr, ptr %0, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZN2cv23HomographyDecomposition21HomographyDecompInria15oppositeOfMinorERKNS_4MatxIdLi3ELi3EEEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = icmp eq i32 %3, 2
  %i.d = select i1 %i.c, i32 1, i32 2             ; 2 uses
  %i.e = icmp eq i32 %2, 0
  %i.f = icmp eq i32 %2, 2
  %i.g = select i1 %i.e, i32 3, i32 0             ; 2 uses
  %i.h = add nuw nsw i32 %i.d, %i.g
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !11
  %i.l = select i1 %i.f, i32 3, i32 6             ; 2 uses
  %i.m = add nuw nsw i32 %i.l, %i.b
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !11
  %i.q = add nuw nsw i32 %i.g, %i.b
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !11
  %i.u = add nuw nsw i32 %i.d, %i.l
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = fneg double %i.x
  %i.z = fmul double %i.t, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.k, double %i.p, double %i.z)
  ret double %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv23HomographyDecomposition21HomographyDecompInria20findRmatFrom_tstar_nERKNS_3VecIdLi3EEES5_dRNS_4MatxIdLi3ELi3EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 72)) %4) local_unnamed_addr #9 align 2 {
bb.a:
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.541.0.copyload = load double, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !13
  %.sroa.036.0.copyload = load double, ptr %2, align 8 ; 2 uses
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = fdiv double 2.000000e+00, %3             ; 2 uses
  %i.c = fmul double %i.b, %.sroa.541.0.copyload
  %i.d = load <2 x double>, ptr %1, align 8
  %i.e = insertelement <2 x double> poison, double %i.b, i64 0
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x double> %i.f, %i.d             ; 3 uses
  %i.h = insertelement <2 x double> poison, double %.sroa.036.0.copyload, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.i, <2 x double> zeroinitializer) ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = fsub double 1.000000e+00, %i.k           ; 2 uses
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = fsub double 0.000000e+00, %i.m           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load double, ptr %i.p, align 8, !tbaa !11, !noalias !76 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load double, ptr %i.r, align 8, !tbaa !11, !noalias !76 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !11, !noalias !76 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.1026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.v = load <2 x double>, ptr %.sroa.437.0..sroa_idx, align 8 ; 3 uses
  %i.w = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.v, <2 x double> zeroinitializer)
  %i.y = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.v, <2 x double> zeroinitializer)
  %i.aa = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.v, <2 x double> zeroinitializer)
  %i.ad = fsub <2 x double> zeroinitializer, %i.x ; 3 uses
  %i.ae = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.z ; 3 uses
  %i.af = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.ac ; 3 uses
  %i.ag = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = insertelement <2 x double> %i.ag, double %i.l, i64 0 ; 2 uses
  %i.ai = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aj = insertelement <2 x double> %i.ai, double %i.n, i64 0 ; 2 uses
  %i.ak = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = extractelement <2 x double> %i.ae, i64 1
  %i.am = extractelement <2 x double> %i.af, i64 1
  %i.an = load <4 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !76 ; 7 uses
  %i.ao = load <2 x double>, ptr %i.o, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.ap = shufflevector <4 x double> %i.an, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.aq = shufflevector <4 x double> %i.an, <4 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ah, <2 x double> zeroinitializer)
  %i.as = shufflevector <4 x double> %i.an, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.aj, <2 x double> %i.ar)
  %i.au = shufflevector <4 x double> %i.an, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.av = insertelement <2 x double> %i.ag, double %i.l, i64 1
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.av, <2 x double> zeroinitializer)
  %i.ax = shufflevector <2 x double> %i.ao, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ay = shufflevector <4 x double> %i.an, <4 x double> %i.ax, <2 x i32> <i32 1, i32 4>
  %i.az = insertelement <2 x double> %i.ai, double %i.n, i64 1
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.aw)
  %i.bb = shufflevector <4 x double> %i.an, <4 x double> %i.ax, <2 x i32> <i32 2, i32 5>
  %i.bc = shufflevector <4 x double> %i.an, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.ad, <2 x double> zeroinitializer)
  %i.be = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.ae, <2 x double> %i.bd)
  %i.bg = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.af, <2 x double> %i.bf) ; 4 uses
  %i.bi = insertelement <2 x double> poison, double %i.q, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.ah, <2 x double> zeroinitializer)
  %i.bl = insertelement <2 x double> poison, double %i.s, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.aj, <2 x double> %i.bk)
  %i.bo = insertelement <2 x double> poison, double %i.u, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = insertelement <2 x double> %i.aa, double %i.q, i64 1
  %i.br = insertelement <2 x double> %i.ad, double %.sroa.036.0.copyload, i64 0
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.br, <2 x double> zeroinitializer) ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %i.bu = fsub double 0.000000e+00, %i.bt         ; 2 uses
  %i.bv = insertelement <2 x double> %i.ak, double %i.bu, i64 0 ; 2 uses
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.bv, <2 x double> %i.at) ; 4 uses
  %i.bx = insertelement <2 x double> %i.ak, double %i.bu, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bx, <2 x double> %i.ba) ; 5 uses
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bv, <2 x double> %i.bn) ; 6 uses
  %i.ca = extractelement <2 x double> %i.bs, i64 1
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.s, double %i.al, double %i.ca)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.u, double %i.am, double %i.cb) ; 3 uses
  store <2 x double> %i.bw, ptr %4, align 8
  %i.cd = extractelement <2 x double> %i.by, i64 0
  store <2 x double> %i.by, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x double> %i.bh, ptr %.sroa.7.0..sroa_idx, align 8
  %5 = extractelement <2 x double> %i.bz, i64 0
  store double %5, ptr %.sroa.9.0..sroa_idx, align 8
  %6 = extractelement <2 x double> %i.bz, i64 1
  store double %6, ptr %.sroa.1026.0..sroa_idx, align 8
  store double %i.cc, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !13
  %i.ce = fneg <2 x double> %i.bh                 ; 2 uses
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x double> %i.bz, %i.cf
  %i.ch = shufflevector <2 x double> %i.by, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.ci = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cj, <2 x double> %i.cg) ; 2 uses
  %i.cl = shufflevector <2 x double> %i.bw, <2 x double> %i.bz, <2 x i32> <i32 1, i32 2>
  %i.cm = shufflevector <2 x double> %i.ck, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.cn = fneg <2 x double> %i.cm
  %i.co = fmul <2 x double> %i.cl, %i.cn
  %i.cp = shufflevector <2 x double> %i.bw, <2 x double> %i.by, <2 x i32> <i32 0, i32 3>
  %i.cq = shufflevector <2 x double> %i.ck, <2 x double> %i.bz, <2 x i32> <i32 1, i32 3>
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cq, <2 x double> %i.co) ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0
  %i.ct = extractelement <2 x double> %i.cr, i64 1
  %i.cu = tail call noundef double @llvm.fmuladd.f64(double %i.cd, double %i.ct, double %i.cs)
  %i.cv = fcmp olt double %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cw = fneg <2 x double> %i.bw
  store <2 x double> %i.cw, ptr %4, align 8, !tbaa !11
  %i.cx = fneg <2 x double> %i.by
  store <2 x double> %i.cx, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  store <2 x double> %i.ce, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !11
  %i.cy = fneg <2 x double> %i.bz
  store <2 x double> %i.cy, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !11
  %i.cz = fneg double %i.cc
  store double %i.cz, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23HomographyDecomposition21HomographyDecompInria9decomposeERSt6vectorINS0_13_CameraMotionESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0144 = alloca double, align 8            ; 4 uses
  %.sroa.9 = alloca double, align 8               ; 4 uses
  %.sroa.15 = alloca double, align 8              ; 4 uses
  %2 = alloca %"struct.cv::HomographyDecomposition::_CameraMotion", align 8 ; 5 uses
  %3 = alloca %"class.cv::Vec", align 8           ; 7 uses
  %4 = alloca %"class.cv::Vec", align 8           ; 7 uses
  %5 = alloca %"class.cv::Vec", align 8           ; 6 uses
  %6 = alloca %"class.cv::Vec", align 8           ; 6 uses
  %7 = alloca %"class.cv::Matx", align 8          ; 10 uses
  %8 = alloca %"class.cv::Matx", align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0144)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !11, !noalias !79 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !11, !noalias !79 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load double, ptr %i.h, align 8, !tbaa !11, !noalias !79 ; 3 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double 0.000000e+00)
  %i.k = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.j)
  %i.l = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.k)
  %i.m = load <2 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !79 ; 5 uses
  %i.n = load <2 x double>, ptr %i.b, align 8, !tbaa !11, !noalias !79 ; 5 uses
  %i.o = load <2 x double>, ptr %i.c, align 8, !tbaa !11, !noalias !79 ; 5 uses
  %i.p = extractelement <2 x double> %i.m, i64 0
  %i.q = extractelement <2 x double> %i.m, i64 1
  %i.r = tail call double @llvm.fmuladd.f64(double %i.p, double %i.q, double 0.000000e+00)
  %i.s = extractelement <2 x double> %i.n, i64 0
  %i.t = extractelement <2 x double> %i.n, i64 1
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double %i.t, double %i.r)
  %i.v = extractelement <2 x double> %i.o, i64 0
  %i.w = extractelement <2 x double> %i.o, i64 1
  %i.x = tail call double @llvm.fmuladd.f64(double %i.v, double %i.w, double %i.u) ; 10 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.m, <2 x double> zeroinitializer)
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.n, <2 x double> %i.y)
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.o, <2 x double> %i.z)
  %i.ab = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.ac, <2 x double> zeroinitializer)
  %i.ae = insertelement <2 x double> poison, double %i.g, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.af, <2 x double> %i.ad)
  %i.ah = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.ai, <2 x double> %i.ag) ; 6 uses
  %i.ak = fadd <2 x double> %i.aa, splat (double -1.000000e+00) ; 6 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0 ; 5 uses
  store double %i.al, ptr %.sroa.0144, align 8, !tbaa !11
  %i.am = extractelement <2 x double> %i.ak, i64 1 ; 6 uses
  store double %i.am, ptr %.sroa.9, align 8, !tbaa !11
  %i.an = fadd double %i.l, -1.000000e+00         ; 5 uses
  store double %i.an, ptr %.sroa.15, align 8, !tbaa !11
  %i.ao = tail call noundef double @llvm.fabs.f64(double %i.al) ; 3 uses
  %i.ap = fcmp one double %i.al, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ap, double %i.ao, double 0.000000e+00 ; 2 uses
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.x) ; 4 uses
  %i.ar = fcmp olt double %.sroa.speculated.i.i, %i.aq
  %.sroa.speculated.1.i.i = select i1 %i.ar, double %i.aq, double %.sroa.speculated.i.i ; 2 uses
  %i.as = extractelement <2 x double> %i.aj, i64 0 ; 2 uses
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as) ; 4 uses
  %i.au = fcmp olt double %.sroa.speculated.1.i.i, %i.at
  %.sroa.speculated.2.i.i = select i1 %i.au, double %i.at, double %.sroa.speculated.1.i.i ; 2 uses
  %i.av = fcmp olt double %.sroa.speculated.2.i.i, %i.aq
  %.sroa.speculated.3.i.i = select i1 %i.av, double %i.aq, double %.sroa.speculated.2.i.i ; 2 uses
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.am) ; 4 uses
  %i.ax = fcmp olt double %.sroa.speculated.3.i.i, %i.aw
  %.sroa.speculated.4.i.i = select i1 %i.ax, double %i.aw, double %.sroa.speculated.3.i.i ; 2 uses
  %i.ay = extractelement <2 x double> %i.aj, i64 1 ; 5 uses
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ay) ; 4 uses
  %i.ba = fcmp olt double %.sroa.speculated.4.i.i, %i.az
  %.sroa.speculated.5.i.i = select i1 %i.ba, double %i.az, double %.sroa.speculated.4.i.i ; 2 uses
  %i.bb = fcmp olt double %.sroa.speculated.5.i.i, %i.at
  %.sroa.speculated.6.i.i = select i1 %i.bb, double %i.at, double %.sroa.speculated.5.i.i ; 2 uses
  %i.bc = fcmp olt double %.sroa.speculated.6.i.i, %i.az
  %.sroa.speculated.7.i.i = select i1 %i.bc, double %i.az, double %.sroa.speculated.6.i.i ; 2 uses
  %i.bd = tail call noundef double @llvm.fabs.f64(double %i.an) ; 4 uses
  %i.be = fcmp olt double %.sroa.speculated.7.i.i, %i.bd
  %.sroa.speculated.8.i.i = select i1 %i.be, double %i.bd, double %.sroa.speculated.7.i.i
  %i.bf = fcmp olt double %.sroa.speculated.8.i.i, 1.000000e-03
  br i1 %i.bf, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i8 0, i64 48, i1 false)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i8 0, i64 48, i1 false)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 120
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !70
  br label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bi, ptr noundef nonnull align 8 dereferenceable(120) %2)
  br label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.bo = fneg double %i.an                       ; 2 uses
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %i.ak, %i.bq
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.aj, <2 x double> %i.br) ; 2 uses
  %i.bt = fneg double %i.am
  %i.bu = fmul double %i.al, %i.bt
  %i.bv = tail call noundef double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.bu) ; 2 uses
  %i.bw = extractelement <2 x double> %i.bs, i64 1 ; 2 uses
  %i.bx = tail call double @sqrt(double noundef %i.bw) #22 ; 3 uses
  %i.by = extractelement <2 x double> %i.bs, i64 0 ; 2 uses
  %i.bz = tail call double @sqrt(double noundef %i.by) #22 ; 2 uses
  %i.ca = tail call double @sqrt(double noundef %i.bv) #22 ; 4 uses
  %i.cb = fmul double %i.x, %i.bo
  %i.cc = tail call noundef double @llvm.fmuladd.f64(double %i.ay, double %i.as, double %i.cb)
  %i.cd = fneg double %i.ay
  %i.ce = insertelement <2 x double> %i.ak, double %i.x, i64 1
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = insertelement <2 x double> %i.ak, double %i.x, i64 0
  %i.cj = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cj, <2 x double> %i.ch) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = fcmp oge double %i.cl, 0.000000e+00
  %i.cn = extractelement <2 x double> %i.ck, i64 1
  %i.co = fcmp oge double %i.cn, 0.000000e+00
  %i.cp = fcmp oge double %i.cc, 0.000000e+00
  %i.cq = fcmp olt double %i.ao, %i.aw
  br i1 %i.cq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cr = fcmp olt double %i.aw, %i.bd
  br i1 %i.cr, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.cs = fcmp olt double %i.ao, %i.bd
  br i1 %i.cs, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = fadd double %i.x, %i.ca
  %i.cu = fsub double %i.x, %i.ca
  %i.cv = select i1 %i.cm, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %i.cw = fneg double %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.cv, i64 0
end_hunk_0
