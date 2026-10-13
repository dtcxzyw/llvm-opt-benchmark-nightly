Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/AABB?download=true
inline.NumInlined: 10877
inline.NumDeleted: 4724
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4rootEv:bb.a
  br i1 %i.c, label %bb.b, label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  ret ptr %.tr
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE6detachEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !84
  %.not22 = icmp eq ptr %i.d, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.l = icmp eq ptr %i.k, %i.b
  %.idx = select i1 %i.l, i64 0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  store ptr %i.i, ptr %i.m, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED1Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %i.b) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.i, %bb.f ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE13refit_lineageEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ba, %tailrecurse.backedge ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 40 ; 4 uses
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 48 ; 5 uses
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 56 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8     ; 2 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = load <2 x double>, ptr %i.b, align 8     ; 2 uses
  %.sroa.9.24.copyload = load double, ptr %.sroa.9.24..sroa_idx, align 8
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 64 ; 3 uses
  %.sroa.10.24.copyload = load double, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.e = load ptr, ptr %.tr, align 8, !tbaa !63   ; 5 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  %i.k = shufflevector <2 x double> %i.c, <2 x double> %i.d, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.a, align 8, !tbaa !49
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.9.24..sroa_idx, align 8, !tbaa !49
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load <2 x double>, ptr %i.a, align 8, !tbaa !47
  %i.n = load <2 x double>, ptr %i.l, align 1, !tbaa !47
  %i.o = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m, <2 x double> %i.n) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.o, ptr %i.a, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !49 ; 2 uses
  %i.r = fcmp olt double %i.q, f0x7FEFFFFFFFFFFFFF
  %i.s = select i1 %i.r, double %i.q, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  store double %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.u = load <2 x double>, ptr %i.b, align 8, !tbaa !47
  %i.v = load <2 x double>, ptr %i.t, align 8, !tbaa !47
  %i.w = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u, <2 x double> %i.v) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.w, ptr %i.b, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !49 ; 2 uses
  %i.z = fcmp ogt double %i.y, f0xFFEFFFFFFFFFFFFF
  %i.aa = select i1 %i.z, double %i.y, double f0xFFEFFFFFFFFFFFFF ; 2 uses
  store double %i.aa, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !49
  %i.ab = shufflevector <2 x double> %i.o, <2 x double> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = phi double [ %i.aa, %bb.c ], [ f0xFFEFFFFFFFFFFFFF, %bb.b ] ; 3 uses
  %i.ad = phi double [ %i.s, %bb.c ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ] ; 3 uses
  %i.ae = phi <4 x double> [ %i.ab, %bb.c ], [ <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, %bb.b ]
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ag = load <2 x double>, ptr %i.a, align 8, !tbaa !47
  %i.ah = load <2 x double>, ptr %i.af, align 1, !tbaa !47
  %i.ai = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag, <2 x double> %i.ah) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.ai, ptr %i.a, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = fcmp olt double %i.ak, %i.ad
  %i.am = select i1 %i.al, double %i.ak, double %i.ad ; 2 uses
  store double %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ao = load <2 x double>, ptr %i.b, align 8, !tbaa !47
  %i.ap = load <2 x double>, ptr %i.an, align 8, !tbaa !47
  %i.aq = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ao, <2 x double> %i.ap) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.aq, ptr %i.b, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.as = load double, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = fcmp olt double %i.ac, %i.as
  %i.au = select i1 %i.at, double %i.as, double %i.ac ; 2 uses
  store double %i.au, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !49
  %i.av = shufflevector <2 x double> %i.ai, <2 x double> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %tailrecurse
  %i.aw = phi double [ %i.au, %bb.e ], [ %i.ac, %bb.d ], [ %.sroa.10.24.copyload, %tailrecurse ]
  %i.ax = phi double [ %i.am, %bb.e ], [ %i.ad, %bb.d ], [ %.sroa.6.0.copyload, %tailrecurse ]
  %i.ay = phi <4 x double> [ %i.av, %bb.e ], [ %i.ae, %bb.d ], [ %i.k, %tailrecurse ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !84 ; 2 uses
  %.not4 = icmp eq ptr %i.ba, null
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = extractelement <4 x double> %i.ay, i64 0
  %i.bc = extractelement <2 x double> %i.c, i64 0
  %i.bd = fcmp ugt double %i.bb, %i.bc
  %i.be = extractelement <4 x double> %i.ay, i64 1
  %i.bf = fcmp ugt double %i.be, %.sroa.5.0.copyload
  %or.cond19 = select i1 %i.bd, i1 true, i1 %i.bf
  %i.bg = fcmp ugt double %i.ax, %.sroa.6.0.copyload
  %or.cond20 = select i1 %or.cond19, i1 true, i1 %i.bg
  %i.bh = extractelement <4 x double> %i.ay, i64 2
  %i.bi = extractelement <2 x double> %i.d, i64 0
  %i.bj = fcmp ugt double %i.bi, %i.bh
  %or.cond21 = select i1 %or.cond20, i1 true, i1 %i.bj
  br i1 %or.cond21, label %tailrecurse.backedge, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

tailrecurse.backedge:                             ; preds = %bb.g, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i
  br label %tailrecurse

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.g
  %i.bk = extractelement <4 x double> %i.ay, i64 3
  %i.bl = fcmp ugt double %.sroa.9.24.copyload, %i.bk
  %i.bm = fcmp ugt double %.sroa.10.24.copyload, %i.aw
  %or.cond = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond, label %tailrecurse.backedge, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE13gather_leavesEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i, label %.noexc15

_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

.noexc15:                                         ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 3                  ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !413
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !414
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.c, i1 false), !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.noexc15, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i
  %3 = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.d, %.noexc15 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.g, %.noexc15 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !415
  %i.i = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit unwind label %.thread ; 3 uses

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %1, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit, %bb.m
  %.sroa.26.078 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.26.2, %bb.m ] ; 6 uses
  %.sroa.13.077 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.13.1, %bb.m ] ; 2 uses
  %.sroa.0.076 = phi ptr [ %i.i, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.0.2, %bb.m ] ; 7 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.13.077, i64 -8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 7 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.m, label %bb.c, !llvm.loop !411

.thread:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit40

bb.c:                                             ; preds = %bb.b
  %.not.i18 = icmp eq ptr %i.k, %.sroa.26.078
  br i1 %.not.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !85
  store ptr %i.n, ptr %i.k, align 8, !tbaa !85
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit27

bb.e:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %.sroa.26.078 to i64
  %i.p = ptrtoint ptr %.sroa.0.076 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i20, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i21)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !85
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !85
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

bb.g:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %.sroa.0.076, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24: ; preds = %bb.g, %.noexc26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.076, i64 noundef %i.q) #26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit27

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit27: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24, %bb.d
  %.sroa.0.5 = phi ptr [ %i.y, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.0.076, %bb.d ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.ac, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.13.077, %bb.d ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.ad, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.26.078, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.not.i28 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit27
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !85 ; 2 uses
  store ptr %i.af, ptr %.sroa.13.3, align 8, !tbaa !85
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit37

bb.i:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit27
  %i.ag = ptrtoint ptr %.sroa.13.3 to i64
  %i.ah = ptrtoint ptr %.sroa.0.5 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29: ; preds = %bb.i
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i30, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %.noexc36 unwind label %.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !85
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !85
  %i.at = icmp sgt i64 %i.ai, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

bb.k:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.0.5, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34: ; preds = %bb.k, %.noexc36
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.ai) #26
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  %.pre = load ptr, ptr %i.ae, align 8
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit37

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit37: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34, %bb.h
  %i.av = phi ptr [ %.pre, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %i.af, %bb.h ]
  %.sroa.0.6 = phi ptr [ %i.aq, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.0.5, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.ar, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.13.3, %bb.h ]
  %.sroa.26.6 = phi ptr [ %i.au, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.26.5, %bb.h ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq ptr %i.av, null
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !64
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bc
  store ptr %i.l, ptr %i.bd, align 8, !tbaa !85
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit37, %bb.l, %bb.b
  %.sroa.0.2 = phi ptr [ %.sroa.0.076, %bb.b ], [ %.sroa.0.6, %bb.l ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.k, %bb.b ], [ %.sroa.13.4, %bb.l ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.078, %bb.b ], [ %.sroa.26.6, %bb.l ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.2, %.sroa.13.1
  br i1 %i.be, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit, label %bb.b

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.m
  %i.bf = ptrtoint ptr %.sroa.26.2 to i64
  %i.bg = ptrtoint ptr %.sroa.0.2 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bh) #26
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.076, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %.sroa.26.1.ph = phi ptr [ %.sroa.26.078, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.j, %bb.f
  %.sroa.0.1.ph68 = phi ptr [ %.sroa.0.5, %bb.j ], [ %.sroa.0.076, %bb.f ]
  %.sroa.26.1.ph69 = phi ptr [ %.sroa.13.3, %bb.j ], [ %.sroa.26.078, %bb.f ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0.1 = phi ptr [ %.sroa.0.1.ph, %.loopexit ], [ %.sroa.0.1.ph68, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.1.ph, %.loopexit ], [ %.sroa.26.1.ph69, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bi = ptrtoint ptr %.sroa.26.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0.1 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.bk) #26
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !413
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit40

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit40: ; preds = %.thread, %bb.n
  %4 = phi ptr [ %3, %.thread ], [ %.pre85, %bb.n ] ; 3 uses
  %.pn67 = phi { ptr, i32 } [ %i.m, %.thread ], [ %lpad.phi, %bb.n ]
  %.not.i.i.i41 = icmp eq ptr %4, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit42, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !414
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %4 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit42

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit42: ; preds = %bb.o, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit40
  resume { ptr, i32 } %.pn67
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE13gather_leavesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %.sroa.26.066 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.26.1, %bb.k ] ; 6 uses
  %.sroa.13.065 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.13.1, %bb.k ] ; 2 uses
  %.sroa.0.064 = phi ptr [ %i.a, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0.1, %bb.k ] ; 7 uses
  %.063 = phi i32 [ -1, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.1, %bb.k ] ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.13.065, i64 -8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b, !llvm.loop !416

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, %.sroa.26.066
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  store ptr %i.e, ptr %i.c, align 8, !tbaa !85
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.26.066 to i64
  %i.g = ptrtoint ptr %.sroa.0.064 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !85
  store ptr %i.r, ptr %i.q, align 8, !tbaa !85
  %i.s = icmp sgt i64 %i.h, 0
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

bb.f:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %.sroa.0.064, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %.noexc11
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.064, i64 noundef %i.h) #26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.5 = phi ptr [ %i.p, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.064, %bb.c ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.t, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.13.065, %bb.c ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.u, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.26.066, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not.i12 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85
  store ptr %i.w, ptr %.sroa.13.3, align 8, !tbaa !85
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit21

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %i.x = ptrtoint ptr %.sroa.13.3 to i64
  %i.y = ptrtoint ptr %.sroa.0.5 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i14 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i14, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i15 = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i15)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc20 unwind label %.loopexit ; 4 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !85
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !85
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

bb.j:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %.sroa.0.5, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18: ; preds = %bb.j, %.noexc20
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.z) #26
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit21

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit21: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18, %bb.g
  %.sroa.0.6 = phi ptr [ %i.ah, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.0.5, %bb.g ]
  %.pn = phi ptr [ %i.ai, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.13.3, %bb.g ]
  %.sroa.26.6 = phi ptr [ %i.al, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.26.5, %bb.g ]
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.an = load i32, ptr %i.am, align 4, !tbaa !86
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.063, i32 %i.an)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit21
  %.1 = phi i32 [ %.063, %bb.a ], [ %.sroa.speculated, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.064, %bb.a ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.c, %bb.a ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.066, %bb.a ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.0.1, %.sroa.13.1
  br i1 %i.ao, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit, label %bb.a

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.k
  %i.ap = ptrtoint ptr %.sroa.26.1 to i64
  %i.aq = ptrtoint ptr %.sroa.0.1 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ar) #26
  %i.as = add nsw i32 %.1, 1
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE13gather_leavesEi(ptr dead_on_unwind writable sret(%"class.std::vector.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, i32 noundef %i.as)
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.064, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %.sroa.26.2.ph = phi ptr [ %.sroa.26.066, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit24

.loopexit.split-lp:                               ; preds = %bb.i, %bb.e
  %.sroa.0.2.ph52 = phi ptr [ %.sroa.0.5, %bb.i ], [ %.sroa.0.064, %bb.e ]
  %.sroa.26.2.ph53 = phi ptr [ %.sroa.13.3, %bb.i ], [ %.sroa.26.066, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit24: ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.2 = phi ptr [ %.sroa.0.2.ph, %.loopexit ], [ %.sroa.0.2.ph52, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.2.ph, %.loopexit ], [ %.sroa.26.2.ph53, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = ptrtoint ptr %.sroa.26.2 to i64
  %i.au = ptrtoint ptr %.sroa.0.2 to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.av) #26
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE3padERKSt6vectorIPS4_SaIS6_EEdi(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse.i

end_hunk_0
begin_hunk_1_@_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE4rootEv:bb.a
  br i1 %i.c, label %bb.b, label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  ret ptr %.tr
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE6detachEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !112
  %.not22 = icmp eq ptr %i.d, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.l = icmp eq ptr %i.k, %i.b
  %.idx = select i1 %i.l, i64 0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  store ptr %i.i, ptr %i.m, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EED1Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %i.b) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.i, %bb.f ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE13refit_lineageEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ba, %tailrecurse.backedge ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 40 ; 4 uses
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 48 ; 5 uses
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 56 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8     ; 2 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = load <2 x double>, ptr %i.b, align 8     ; 2 uses
  %.sroa.9.24.copyload = load double, ptr %.sroa.9.24..sroa_idx, align 8
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 64 ; 3 uses
  %.sroa.10.24.copyload = load double, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.e = load ptr, ptr %.tr, align 8, !tbaa !110  ; 5 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  %i.k = shufflevector <2 x double> %i.c, <2 x double> %i.d, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.a, align 8, !tbaa !49
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.9.24..sroa_idx, align 8, !tbaa !49
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load <2 x double>, ptr %i.a, align 8, !tbaa !47
  %i.n = load <2 x double>, ptr %i.l, align 1, !tbaa !47
  %i.o = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m, <2 x double> %i.n) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.o, ptr %i.a, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !49 ; 2 uses
  %i.r = fcmp olt double %i.q, f0x7FEFFFFFFFFFFFFF
  %i.s = select i1 %i.r, double %i.q, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  store double %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.u = load <2 x double>, ptr %i.b, align 8, !tbaa !47
  %i.v = load <2 x double>, ptr %i.t, align 8, !tbaa !47
  %i.w = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u, <2 x double> %i.v) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.w, ptr %i.b, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !49 ; 2 uses
  %i.z = fcmp ogt double %i.y, f0xFFEFFFFFFFFFFFFF
  %i.aa = select i1 %i.z, double %i.y, double f0xFFEFFFFFFFFFFFFF ; 2 uses
  store double %i.aa, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !49
  %i.ab = shufflevector <2 x double> %i.o, <2 x double> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = phi double [ %i.aa, %bb.c ], [ f0xFFEFFFFFFFFFFFFF, %bb.b ] ; 3 uses
  %i.ad = phi double [ %i.s, %bb.c ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ] ; 3 uses
  %i.ae = phi <4 x double> [ %i.ab, %bb.c ], [ <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, %bb.b ]
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ag = load <2 x double>, ptr %i.a, align 8, !tbaa !47
  %i.ah = load <2 x double>, ptr %i.af, align 1, !tbaa !47
  %i.ai = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag, <2 x double> %i.ah) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.ai, ptr %i.a, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = fcmp olt double %i.ak, %i.ad
  %i.am = select i1 %i.al, double %i.ak, double %i.ad ; 2 uses
  store double %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ao = load <2 x double>, ptr %i.b, align 8, !tbaa !47
  %i.ap = load <2 x double>, ptr %i.an, align 8, !tbaa !47
  %i.aq = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ao, <2 x double> %i.ap) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.aq, ptr %i.b, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.as = load double, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = fcmp olt double %i.ac, %i.as
  %i.au = select i1 %i.at, double %i.as, double %i.ac ; 2 uses
  store double %i.au, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !49
  %i.av = shufflevector <2 x double> %i.ai, <2 x double> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %tailrecurse
  %i.aw = phi double [ %i.au, %bb.e ], [ %i.ac, %bb.d ], [ %.sroa.10.24.copyload, %tailrecurse ]
  %i.ax = phi double [ %i.am, %bb.e ], [ %i.ad, %bb.d ], [ %.sroa.6.0.copyload, %tailrecurse ]
  %i.ay = phi <4 x double> [ %i.av, %bb.e ], [ %i.ae, %bb.d ], [ %i.k, %tailrecurse ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !112 ; 2 uses
  %.not4 = icmp eq ptr %i.ba, null
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = extractelement <4 x double> %i.ay, i64 0
  %i.bc = extractelement <2 x double> %i.c, i64 0
  %i.bd = fcmp ugt double %i.bb, %i.bc
  %i.be = extractelement <4 x double> %i.ay, i64 1
  %i.bf = fcmp ugt double %i.be, %.sroa.5.0.copyload
  %or.cond19 = select i1 %i.bd, i1 true, i1 %i.bf
  %i.bg = fcmp ugt double %i.ax, %.sroa.6.0.copyload
  %or.cond20 = select i1 %or.cond19, i1 true, i1 %i.bg
  %i.bh = extractelement <4 x double> %i.ay, i64 2
  %i.bi = extractelement <2 x double> %i.d, i64 0
  %i.bj = fcmp ugt double %i.bi, %i.bh
  %or.cond21 = select i1 %or.cond20, i1 true, i1 %i.bj
  br i1 %or.cond21, label %tailrecurse.backedge, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

tailrecurse.backedge:                             ; preds = %bb.g, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i
  br label %tailrecurse

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.g
  %i.bk = extractelement <4 x double> %i.ay, i64 3
  %i.bl = fcmp ugt double %.sroa.9.24.copyload, %i.bk
  %i.bm = fcmp ugt double %.sroa.10.24.copyload, %i.aw
  %or.cond = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond, label %tailrecurse.backedge, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE13gather_leavesEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i, label %.noexc15

_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

.noexc15:                                         ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 3                  ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !428
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !429
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.c, i1 false), !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.noexc15, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i
  %3 = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.d, %.noexc15 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.g, %.noexc15 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !430
  %i.i = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit unwind label %.thread ; 3 uses

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %1, ptr %i.i, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit, %bb.m
  %.sroa.26.078 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.26.2, %bb.m ] ; 6 uses
  %.sroa.13.077 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.13.1, %bb.m ] ; 2 uses
  %.sroa.0.076 = phi ptr [ %i.i, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.0.2, %bb.m ] ; 7 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.13.077, i64 -8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 7 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.m, label %bb.c, !llvm.loop !426

.thread:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40

bb.c:                                             ; preds = %bb.b
  %.not.i18 = icmp eq ptr %i.k, %.sroa.26.078
  br i1 %.not.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !113
  store ptr %i.n, ptr %i.k, align 8, !tbaa !113
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27

bb.e:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %.sroa.26.078 to i64
  %i.p = ptrtoint ptr %.sroa.0.076 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i20, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i21)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !113
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !113
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

bb.g:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %.sroa.0.076, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24: ; preds = %bb.g, %.noexc26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.076, i64 noundef %i.q) #26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24, %bb.d
  %.sroa.0.5 = phi ptr [ %i.y, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.0.076, %bb.d ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.ac, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.13.077, %bb.d ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.ad, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.26.078, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.not.i28 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !113 ; 2 uses
  store ptr %i.af, ptr %.sroa.13.3, align 8, !tbaa !113
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37

bb.i:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27
  %i.ag = ptrtoint ptr %.sroa.13.3 to i64
  %i.ah = ptrtoint ptr %.sroa.0.5 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29: ; preds = %bb.i
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i30, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %.noexc36 unwind label %.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !113
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !113
  %i.at = icmp sgt i64 %i.ai, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

bb.k:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.0.5, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34: ; preds = %bb.k, %.noexc36
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.ai) #26
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  %.pre = load ptr, ptr %i.ae, align 8
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34, %bb.h
  %i.av = phi ptr [ %.pre, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %i.af, %bb.h ]
  %.sroa.0.6 = phi ptr [ %i.aq, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.0.5, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.ar, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.13.3, %bb.h ]
  %.sroa.26.6 = phi ptr [ %i.au, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.26.5, %bb.h ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq ptr %i.av, null
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !109
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bc
  store ptr %i.l, ptr %i.bd, align 8, !tbaa !113
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37, %bb.l, %bb.b
  %.sroa.0.2 = phi ptr [ %.sroa.0.076, %bb.b ], [ %.sroa.0.6, %bb.l ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.k, %bb.b ], [ %.sroa.13.4, %bb.l ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.078, %bb.b ], [ %.sroa.26.6, %bb.l ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.2, %.sroa.13.1
  br i1 %i.be, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit, label %bb.b

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.m
  %i.bf = ptrtoint ptr %.sroa.26.2 to i64
  %i.bg = ptrtoint ptr %.sroa.0.2 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bh) #26
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.076, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %.sroa.26.1.ph = phi ptr [ %.sroa.26.078, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.j, %bb.f
  %.sroa.0.1.ph68 = phi ptr [ %.sroa.0.5, %bb.j ], [ %.sroa.0.076, %bb.f ]
  %.sroa.26.1.ph69 = phi ptr [ %.sroa.13.3, %bb.j ], [ %.sroa.26.078, %bb.f ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0.1 = phi ptr [ %.sroa.0.1.ph, %.loopexit ], [ %.sroa.0.1.ph68, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.1.ph, %.loopexit ], [ %.sroa.26.1.ph69, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bi = ptrtoint ptr %.sroa.26.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0.1 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.bk) #26
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !428
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40: ; preds = %.thread, %bb.n
  %4 = phi ptr [ %3, %.thread ], [ %.pre85, %bb.n ] ; 3 uses
  %.pn67 = phi { ptr, i32 } [ %i.m, %.thread ], [ %lpad.phi, %bb.n ]
  %.not.i.i.i41 = icmp eq ptr %4, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit42, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !429
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %4 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit42

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit42: ; preds = %bb.o, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40
  resume { ptr, i32 } %.pn67
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE13gather_leavesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %.sroa.26.066 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.26.1, %bb.k ] ; 6 uses
  %.sroa.13.065 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.13.1, %bb.k ] ; 2 uses
  %.sroa.0.064 = phi ptr [ %i.a, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0.1, %bb.k ] ; 7 uses
  %.063 = phi i32 [ -1, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.1, %bb.k ] ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.13.065, i64 -8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b, !llvm.loop !431

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, %.sroa.26.066
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  store ptr %i.e, ptr %i.c, align 8, !tbaa !113
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.26.066 to i64
  %i.g = ptrtoint ptr %.sroa.0.064 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !113
  store ptr %i.r, ptr %i.q, align 8, !tbaa !113
  %i.s = icmp sgt i64 %i.h, 0
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

bb.f:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %.sroa.0.064, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %.noexc11
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.064, i64 noundef %i.h) #26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.5 = phi ptr [ %i.p, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.064, %bb.c ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.t, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.13.065, %bb.c ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.u, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.26.066, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not.i12 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113
  store ptr %i.w, ptr %.sroa.13.3, align 8, !tbaa !113
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %i.x = ptrtoint ptr %.sroa.13.3 to i64
  %i.y = ptrtoint ptr %.sroa.0.5 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i14 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i14, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i15 = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i15)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc20 unwind label %.loopexit ; 4 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !113
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !113
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

bb.j:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %.sroa.0.5, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18: ; preds = %bb.j, %.noexc20
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.z) #26
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18, %bb.g
  %.sroa.0.6 = phi ptr [ %i.ah, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.0.5, %bb.g ]
  %.pn = phi ptr [ %i.ai, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.13.3, %bb.g ]
  %.sroa.26.6 = phi ptr [ %i.al, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.26.5, %bb.g ]
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.an = load i32, ptr %i.am, align 4, !tbaa !86
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.063, i32 %i.an)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21
  %.1 = phi i32 [ %.063, %bb.a ], [ %.sroa.speculated, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.064, %bb.a ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.c, %bb.a ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.066, %bb.a ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.0.1, %.sroa.13.1
  br i1 %i.ao, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit, label %bb.a

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.k
  %i.ap = ptrtoint ptr %.sroa.26.1 to i64
  %i.aq = ptrtoint ptr %.sroa.0.1 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ar) #26
  %i.as = add nsw i32 %.1, 1
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE13gather_leavesEi(ptr dead_on_unwind writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, i32 noundef %i.as)
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.064, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %.sroa.26.2.ph = phi ptr [ %.sroa.26.066, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit24

.loopexit.split-lp:                               ; preds = %bb.i, %bb.e
  %.sroa.0.2.ph52 = phi ptr [ %.sroa.0.5, %bb.i ], [ %.sroa.0.064, %bb.e ]
  %.sroa.26.2.ph53 = phi ptr [ %.sroa.13.3, %bb.i ], [ %.sroa.26.066, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit24: ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.2 = phi ptr [ %.sroa.0.2.ph, %.loopexit ], [ %.sroa.0.2.ph52, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.2.ph, %.loopexit ], [ %.sroa.26.2.ph53, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = ptrtoint ptr %.sroa.26.2 to i64
  %i.au = ptrtoint ptr %.sroa.0.2 to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.av) #26
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE3padERKSt6vectorIPS4_SaIS6_EEdi(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse.i

end_hunk_1
begin_hunk_2_@_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE4rootEv:bb.a
  br i1 %i.c, label %bb.b, label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  ret ptr %.tr
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE6detachEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !125
  %.not22 = icmp eq ptr %i.d, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !123
  %i.l = icmp eq ptr %i.k, %i.b
  %.idx = select i1 %i.l, i64 0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  store ptr %i.i, ptr %i.m, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EED1Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %i.b) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.i, %bb.f ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE13refit_lineageEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ba, %tailrecurse.backedge ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 40 ; 4 uses
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 48 ; 5 uses
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 56 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8     ; 2 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = load <2 x double>, ptr %i.b, align 8     ; 2 uses
  %.sroa.9.24.copyload = load double, ptr %.sroa.9.24..sroa_idx, align 8
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 64 ; 3 uses
  %.sroa.10.24.copyload = load double, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.e = load ptr, ptr %.tr, align 8, !tbaa !123  ; 5 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  %i.k = shufflevector <2 x double> %i.c, <2 x double> %i.d, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.a, align 8, !tbaa !49
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.9.24..sroa_idx, align 8, !tbaa !49
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load <2 x double>, ptr %i.a, align 8, !tbaa !47
  %i.n = load <2 x double>, ptr %i.l, align 1, !tbaa !47
  %i.o = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m, <2 x double> %i.n) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.o, ptr %i.a, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !49 ; 2 uses
  %i.r = fcmp olt double %i.q, f0x7FEFFFFFFFFFFFFF
  %i.s = select i1 %i.r, double %i.q, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  store double %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.u = load <2 x double>, ptr %i.b, align 8, !tbaa !47
  %i.v = load <2 x double>, ptr %i.t, align 8, !tbaa !47
  %i.w = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u, <2 x double> %i.v) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.w, ptr %i.b, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !49 ; 2 uses
  %i.z = fcmp ogt double %i.y, f0xFFEFFFFFFFFFFFFF
  %i.aa = select i1 %i.z, double %i.y, double f0xFFEFFFFFFFFFFFFF ; 2 uses
  store double %i.aa, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !49
  %i.ab = shufflevector <2 x double> %i.o, <2 x double> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = phi double [ %i.aa, %bb.c ], [ f0xFFEFFFFFFFFFFFFF, %bb.b ] ; 3 uses
  %i.ad = phi double [ %i.s, %bb.c ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ] ; 3 uses
  %i.ae = phi <4 x double> [ %i.ab, %bb.c ], [ <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, %bb.b ]
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ag = load <2 x double>, ptr %i.a, align 8, !tbaa !47
  %i.ah = load <2 x double>, ptr %i.af, align 1, !tbaa !47
  %i.ai = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag, <2 x double> %i.ah) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.ai, ptr %i.a, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = fcmp olt double %i.ak, %i.ad
  %i.am = select i1 %i.al, double %i.ak, double %i.ad ; 2 uses
  store double %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ao = load <2 x double>, ptr %i.b, align 8, !tbaa !47
  %i.ap = load <2 x double>, ptr %i.an, align 8, !tbaa !47
  %i.aq = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ao, <2 x double> %i.ap) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.aq, ptr %i.b, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.as = load double, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = fcmp olt double %i.ac, %i.as
  %i.au = select i1 %i.at, double %i.as, double %i.ac ; 2 uses
  store double %i.au, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !49
  %i.av = shufflevector <2 x double> %i.ai, <2 x double> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %tailrecurse
  %i.aw = phi double [ %i.au, %bb.e ], [ %i.ac, %bb.d ], [ %.sroa.10.24.copyload, %tailrecurse ]
  %i.ax = phi double [ %i.am, %bb.e ], [ %i.ad, %bb.d ], [ %.sroa.6.0.copyload, %tailrecurse ]
  %i.ay = phi <4 x double> [ %i.av, %bb.e ], [ %i.ae, %bb.d ], [ %i.k, %tailrecurse ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !125 ; 2 uses
  %.not4 = icmp eq ptr %i.ba, null
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = extractelement <4 x double> %i.ay, i64 0
  %i.bc = extractelement <2 x double> %i.c, i64 0
  %i.bd = fcmp ugt double %i.bb, %i.bc
  %i.be = extractelement <4 x double> %i.ay, i64 1
  %i.bf = fcmp ugt double %i.be, %.sroa.5.0.copyload
  %or.cond19 = select i1 %i.bd, i1 true, i1 %i.bf
  %i.bg = fcmp ugt double %i.ax, %.sroa.6.0.copyload
  %or.cond20 = select i1 %or.cond19, i1 true, i1 %i.bg
  %i.bh = extractelement <4 x double> %i.ay, i64 2
  %i.bi = extractelement <2 x double> %i.d, i64 0
  %i.bj = fcmp ugt double %i.bi, %i.bh
  %or.cond21 = select i1 %or.cond20, i1 true, i1 %i.bj
  br i1 %or.cond21, label %tailrecurse.backedge, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

tailrecurse.backedge:                             ; preds = %bb.g, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i
  br label %tailrecurse

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.g
  %i.bk = extractelement <4 x double> %i.ay, i64 3
  %i.bl = fcmp ugt double %.sroa.9.24.copyload, %i.bk
  %i.bm = fcmp ugt double %.sroa.10.24.copyload, %i.aw
  %or.cond = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond, label %tailrecurse.backedge, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE13gather_leavesEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i, label %.noexc15

_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

.noexc15:                                         ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 3                  ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !443
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !444
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.c, i1 false), !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.noexc15, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i
  %3 = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.d, %.noexc15 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.g, %.noexc15 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !445
  %i.i = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit unwind label %.thread ; 3 uses

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %1, ptr %i.i, align 8, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit, %bb.m
  %.sroa.26.078 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.26.2, %bb.m ] ; 6 uses
  %.sroa.13.077 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.13.1, %bb.m ] ; 2 uses
  %.sroa.0.076 = phi ptr [ %i.i, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.0.2, %bb.m ] ; 7 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.13.077, i64 -8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !126  ; 7 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.m, label %bb.c, !llvm.loop !441

.thread:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40

bb.c:                                             ; preds = %bb.b
  %.not.i18 = icmp eq ptr %i.k, %.sroa.26.078
  br i1 %.not.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !126
  store ptr %i.n, ptr %i.k, align 8, !tbaa !126
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27

bb.e:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %.sroa.26.078 to i64
  %i.p = ptrtoint ptr %.sroa.0.076 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i20, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i21)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !126
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !126
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

bb.g:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %.sroa.0.076, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24: ; preds = %bb.g, %.noexc26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.076, i64 noundef %i.q) #26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24, %bb.d
  %.sroa.0.5 = phi ptr [ %i.y, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.0.076, %bb.d ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.ac, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.13.077, %bb.d ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.ad, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.26.078, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.not.i28 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !126 ; 2 uses
  store ptr %i.af, ptr %.sroa.13.3, align 8, !tbaa !126
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37

bb.i:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit27
  %i.ag = ptrtoint ptr %.sroa.13.3 to i64
  %i.ah = ptrtoint ptr %.sroa.0.5 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29: ; preds = %bb.i
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i30, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %.noexc36 unwind label %.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !126
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !126
  %i.at = icmp sgt i64 %i.ai, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

bb.k:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.0.5, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34: ; preds = %bb.k, %.noexc36
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.ai) #26
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  %.pre = load ptr, ptr %i.ae, align 8
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34, %bb.h
  %i.av = phi ptr [ %.pre, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %i.af, %bb.h ]
  %.sroa.0.6 = phi ptr [ %i.aq, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.0.5, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.ar, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.13.3, %bb.h ]
  %.sroa.26.6 = phi ptr [ %i.au, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.26.5, %bb.h ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq ptr %i.av, null
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !122
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bc
  store ptr %i.l, ptr %i.bd, align 8, !tbaa !126
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37, %bb.l, %bb.b
  %.sroa.0.2 = phi ptr [ %.sroa.0.076, %bb.b ], [ %.sroa.0.6, %bb.l ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.k, %bb.b ], [ %.sroa.13.4, %bb.l ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.078, %bb.b ], [ %.sroa.26.6, %bb.l ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.2, %.sroa.13.1
  br i1 %i.be, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit, label %bb.b

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.m
  %i.bf = ptrtoint ptr %.sroa.26.2 to i64
  %i.bg = ptrtoint ptr %.sroa.0.2 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bh) #26
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.076, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %.sroa.26.1.ph = phi ptr [ %.sroa.26.078, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.j, %bb.f
  %.sroa.0.1.ph68 = phi ptr [ %.sroa.0.5, %bb.j ], [ %.sroa.0.076, %bb.f ]
  %.sroa.26.1.ph69 = phi ptr [ %.sroa.13.3, %bb.j ], [ %.sroa.26.078, %bb.f ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0.1 = phi ptr [ %.sroa.0.1.ph, %.loopexit ], [ %.sroa.0.1.ph68, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.1.ph, %.loopexit ], [ %.sroa.26.1.ph69, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bi = ptrtoint ptr %.sroa.26.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0.1 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.bk) #26
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !443
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40: ; preds = %.thread, %bb.n
  %4 = phi ptr [ %3, %.thread ], [ %.pre85, %bb.n ] ; 3 uses
  %.pn67 = phi { ptr, i32 } [ %i.m, %.thread ], [ %lpad.phi, %bb.n ]
  %.not.i.i.i41 = icmp eq ptr %4, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit42, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !444
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %4 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit42

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit42: ; preds = %bb.o, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit40
  resume { ptr, i32 } %.pn67
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE13gather_leavesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %.sroa.26.066 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.26.1, %bb.k ] ; 6 uses
  %.sroa.13.065 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.13.1, %bb.k ] ; 2 uses
  %.sroa.0.064 = phi ptr [ %i.a, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0.1, %bb.k ] ; 7 uses
  %.063 = phi i32 [ -1, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.1, %bb.k ] ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.13.065, i64 -8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b, !llvm.loop !446

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, %.sroa.26.066
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  store ptr %i.e, ptr %i.c, align 8, !tbaa !126
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.26.066 to i64
  %i.g = ptrtoint ptr %.sroa.0.064 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !126
  store ptr %i.r, ptr %i.q, align 8, !tbaa !126
  %i.s = icmp sgt i64 %i.h, 0
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

bb.f:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %.sroa.0.064, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %.noexc11
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.064, i64 noundef %i.h) #26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.5 = phi ptr [ %i.p, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.064, %bb.c ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.t, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.13.065, %bb.c ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.u, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.26.066, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not.i12 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126
  store ptr %i.w, ptr %.sroa.13.3, align 8, !tbaa !126
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %i.x = ptrtoint ptr %.sroa.13.3 to i64
  %i.y = ptrtoint ptr %.sroa.0.5 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i14 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i14, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i15 = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i15)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc20 unwind label %.loopexit ; 4 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !126
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !126
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

bb.j:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %.sroa.0.5, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18: ; preds = %bb.j, %.noexc20
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.z) #26
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18, %bb.g
  %.sroa.0.6 = phi ptr [ %i.ah, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.0.5, %bb.g ]
  %.pn = phi ptr [ %i.ai, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.13.3, %bb.g ]
  %.sroa.26.6 = phi ptr [ %i.al, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.26.5, %bb.g ]
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.an = load i32, ptr %i.am, align 4, !tbaa !86
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.063, i32 %i.an)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21
  %.1 = phi i32 [ %.063, %bb.a ], [ %.sroa.speculated, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.064, %bb.a ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.c, %bb.a ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.066, %bb.a ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.0.1, %.sroa.13.1
  br i1 %i.ao, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit, label %bb.a

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.k
  %i.ap = ptrtoint ptr %.sroa.26.1 to i64
  %i.aq = ptrtoint ptr %.sroa.0.1 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ar) #26
  %i.as = add nsw i32 %.1, 1
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE13gather_leavesEi(ptr dead_on_unwind writable sret(%"class.std::vector.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, i32 noundef %i.as)
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.064, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %.sroa.26.2.ph = phi ptr [ %.sroa.26.066, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit24

.loopexit.split-lp:                               ; preds = %bb.i, %bb.e
  %.sroa.0.2.ph52 = phi ptr [ %.sroa.0.5, %bb.i ], [ %.sroa.0.064, %bb.e ]
  %.sroa.26.2.ph53 = phi ptr [ %.sroa.13.3, %bb.i ], [ %.sroa.26.066, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit24: ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.2 = phi ptr [ %.sroa.0.2.ph, %.loopexit ], [ %.sroa.0.2.ph52, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.2.ph, %.loopexit ], [ %.sroa.26.2.ph53, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = ptrtoint ptr %.sroa.26.2 to i64
  %i.au = ptrtoint ptr %.sroa.0.2 to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.av) #26
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE3padERKSt6vectorIPS4_SaIS6_EEdi(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse.i

end_hunk_2
begin_hunk_3_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE5clearEv:bb.a

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.e
  store ptr null, ptr %i.i, align 16, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7is_leafEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !141
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7is_rootEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !143
  %i.c = icmp eq ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4rootEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.b, %tailrecurse ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !143 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  ret ptr %.tr
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6detachEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !143 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 16, !tbaa !143
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !143 ; 4 uses
  %i.e = load ptr, ptr %i.b, align 16, !tbaa !141 ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.d, ptr %i.j, align 16, !tbaa !143
  %.not22 = icmp eq ptr %i.d, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 16, !tbaa !141
  %i.l = icmp eq ptr %i.k, %i.b
  %.idx = select i1 %i.l, i64 0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  store ptr %i.i, ptr %i.m, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED1Ev(ptr noundef nonnull align 16 dead_on_return(68) dereferenceable(68) %i.b) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.i, %bb.f ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE13refit_lineageEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ae, %tailrecurse.backedge ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 48 ; 5 uses
  %i.c = load <4 x double>, ptr %i.a, align 16    ; 5 uses
  %i.d = load ptr, ptr %.tr, align 16, !tbaa !141 ; 3 uses
  %i.e = icmp eq ptr %i.d, null                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.a, align 16, !tbaa !49
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.b, align 16, !tbaa !49
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load <2 x double>, ptr %i.a, align 16, !tbaa !47
  %i.l = load <2 x double>, ptr %i.j, align 16, !tbaa !47
  %i.m = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.k, <2 x double> %i.l) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.m, ptr %i.a, align 16, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = load <2 x double>, ptr %i.b, align 16, !tbaa !47
  %i.p = load <2 x double>, ptr %i.n, align 16, !tbaa !47
  %i.q = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o, <2 x double> %i.p) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.q, ptr %i.b, align 16, !tbaa !47
  %i.r = shufflevector <2 x double> %i.m, <2 x double> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi <4 x double> [ %i.r, %bb.c ], [ <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, %bb.b ]
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load <2 x double>, ptr %i.a, align 16, !tbaa !47
  %i.v = load <2 x double>, ptr %i.t, align 16, !tbaa !47
  %i.w = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u, <2 x double> %i.v) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.w, ptr %i.a, align 16, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.y = load <2 x double>, ptr %i.b, align 16, !tbaa !47
  %i.z = load <2 x double>, ptr %i.x, align 16, !tbaa !47
  %i.aa = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y, <2 x double> %i.z) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.aa, ptr %i.b, align 16, !tbaa !47
  %i.ab = shufflevector <2 x double> %i.w, <2 x double> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %tailrecurse
  %i.ac = phi <4 x double> [ %i.ab, %bb.e ], [ %i.s, %bb.d ], [ %i.c, %tailrecurse ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !143 ; 2 uses
  %.not4 = icmp eq ptr %i.ae, null
  br i1 %.not4, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = extractelement <4 x double> %i.ac, i64 0
  %i.ag = extractelement <4 x double> %i.c, i64 0
  %i.ah = fcmp ugt double %i.af, %i.ag
  %i.ai = extractelement <4 x double> %i.ac, i64 1
  %i.aj = extractelement <4 x double> %i.c, i64 1
  %i.ak = fcmp ugt double %i.ai, %i.aj
  %or.cond19 = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond19, label %tailrecurse.backedge, label %bb.h

tailrecurse.backedge:                             ; preds = %bb.g, %bb.h
  br label %tailrecurse

bb.h:                                             ; preds = %bb.g
  %i.al = extractelement <4 x double> %i.ac, i64 2
  %i.am = extractelement <4 x double> %i.c, i64 2
  %i.an = fcmp ugt double %i.am, %i.al
  %i.ao = extractelement <4 x double> %i.ac, i64 3
  %i.ap = extractelement <4 x double> %i.c, i64 3
  %i.aq = fcmp ugt double %i.ap, %i.ao
  %or.cond = select i1 %i.an, i1 true, i1 %i.aq
  br i1 %or.cond, label %tailrecurse.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE13gather_leavesEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.79") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i, label %.noexc15

_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

.noexc15:                                         ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 3                  ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !458
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !459
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.c, i1 false), !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.noexc15, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i
  %3 = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.d, %.noexc15 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.g, %.noexc15 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !460
  %i.i = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit unwind label %.thread ; 3 uses

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %1, ptr %i.i, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit, %bb.m
  %.sroa.26.078 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.26.2, %bb.m ] ; 6 uses
  %.sroa.13.077 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.13.1, %bb.m ] ; 2 uses
  %.sroa.0.076 = phi ptr [ %i.i, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.0.2, %bb.m ] ; 7 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.13.077, i64 -8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !145  ; 7 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.m, label %bb.c, !llvm.loop !456

.thread:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit40

bb.c:                                             ; preds = %bb.b
  %.not.i18 = icmp eq ptr %i.k, %.sroa.26.078
  br i1 %.not.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !145
  store ptr %i.n, ptr %i.k, align 8, !tbaa !145
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit27

bb.e:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %.sroa.26.078 to i64
  %i.p = ptrtoint ptr %.sroa.0.076 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i20, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i21)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !145
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !145
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

bb.g:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %.sroa.0.076, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24: ; preds = %bb.g, %.noexc26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.076, i64 noundef %i.q) #26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit27

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit27: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24, %bb.d
  %.sroa.0.5 = phi ptr [ %i.y, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.0.076, %bb.d ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.ac, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.13.077, %bb.d ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.ad, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.26.078, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.not.i28 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit27
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !145 ; 2 uses
  store ptr %i.af, ptr %.sroa.13.3, align 8, !tbaa !145
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit37

bb.i:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit27
  %i.ag = ptrtoint ptr %.sroa.13.3 to i64
  %i.ah = ptrtoint ptr %.sroa.0.5 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29: ; preds = %bb.i
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i30, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %.noexc36 unwind label %.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !145
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !145
  %i.at = icmp sgt i64 %i.ai, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

bb.k:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.0.5, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34: ; preds = %bb.k, %.noexc36
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.ai) #26
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  %.pre = load ptr, ptr %i.ae, align 8
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit37

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit37: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34, %bb.h
  %i.av = phi ptr [ %.pre, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %i.af, %bb.h ]
  %.sroa.0.6 = phi ptr [ %i.aq, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.0.5, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.ar, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.13.3, %bb.h ]
  %.sroa.26.6 = phi ptr [ %i.au, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.26.5, %bb.h ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.l, align 16, !tbaa !141
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq ptr %i.av, null
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.bb = load i32, ptr %i.ba, align 16, !tbaa !140
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bc
  store ptr %i.l, ptr %i.bd, align 8, !tbaa !145
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit37, %bb.l, %bb.b
  %.sroa.0.2 = phi ptr [ %.sroa.0.076, %bb.b ], [ %.sroa.0.6, %bb.l ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit37 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.k, %bb.b ], [ %.sroa.13.4, %bb.l ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.078, %bb.b ], [ %.sroa.26.6, %bb.l ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.2, %.sroa.13.1
  br i1 %i.be, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit, label %bb.b

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit: ; preds = %bb.m
  %i.bf = ptrtoint ptr %.sroa.26.2 to i64
  %i.bg = ptrtoint ptr %.sroa.0.2 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bh) #26
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.076, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %.sroa.26.1.ph = phi ptr [ %.sroa.26.078, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.j, %bb.f
  %.sroa.0.1.ph68 = phi ptr [ %.sroa.0.5, %bb.j ], [ %.sroa.0.076, %bb.f ]
  %.sroa.26.1.ph69 = phi ptr [ %.sroa.13.3, %bb.j ], [ %.sroa.26.078, %bb.f ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0.1 = phi ptr [ %.sroa.0.1.ph, %.loopexit ], [ %.sroa.0.1.ph68, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.1.ph, %.loopexit ], [ %.sroa.26.1.ph69, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bi = ptrtoint ptr %.sroa.26.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0.1 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.bk) #26
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !458
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit40

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit40: ; preds = %.thread, %bb.n
  %4 = phi ptr [ %3, %.thread ], [ %.pre85, %bb.n ] ; 3 uses
  %.pn67 = phi { ptr, i32 } [ %i.m, %.thread ], [ %lpad.phi, %bb.n ]
  %.not.i.i.i41 = icmp eq ptr %4, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit42, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !459
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %4 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit42

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit42: ; preds = %bb.o, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit40
  resume { ptr, i32 } %.pn67
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE13gather_leavesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.79") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %.sroa.26.066 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.26.1, %bb.k ] ; 6 uses
  %.sroa.13.065 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.13.1, %bb.k ] ; 2 uses
  %.sroa.0.064 = phi ptr [ %i.a, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0.1, %bb.k ] ; 7 uses
  %.063 = phi i32 [ -1, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.1, %bb.k ] ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.13.065, i64 -8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b, !llvm.loop !461

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, %.sroa.26.066
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  store ptr %i.e, ptr %i.c, align 8, !tbaa !145
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.26.066 to i64
  %i.g = ptrtoint ptr %.sroa.0.064 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !145
  store ptr %i.r, ptr %i.q, align 8, !tbaa !145
  %i.s = icmp sgt i64 %i.h, 0
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

bb.f:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %.sroa.0.064, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %.noexc11
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.064, i64 noundef %i.h) #26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.5 = phi ptr [ %i.p, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.064, %bb.c ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.t, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.13.065, %bb.c ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.u, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.26.066, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not.i12 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !145
  store ptr %i.w, ptr %.sroa.13.3, align 8, !tbaa !145
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit21

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit
  %i.x = ptrtoint ptr %.sroa.13.3 to i64
  %i.y = ptrtoint ptr %.sroa.0.5 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i14 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i14, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i15 = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i15)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc20 unwind label %.loopexit ; 4 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !145
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !145
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

bb.j:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %.sroa.0.5, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18: ; preds = %bb.j, %.noexc20
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.z) #26
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit21

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit21: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18, %bb.g
  %.sroa.0.6 = phi ptr [ %i.ah, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.0.5, %bb.g ]
  %.pn = phi ptr [ %i.ai, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.13.3, %bb.g ]
  %.sroa.26.6 = phi ptr [ %i.al, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.26.5, %bb.g ]
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.an = load i32, ptr %i.am, align 4, !tbaa !86
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.063, i32 %i.an)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit21
  %.1 = phi i32 [ %.063, %bb.a ], [ %.sroa.speculated, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.064, %bb.a ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit21 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.c, %bb.a ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.066, %bb.a ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.0.1, %.sroa.13.1
  br i1 %i.ao, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit, label %bb.a

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit: ; preds = %bb.k
  %i.ap = ptrtoint ptr %.sroa.26.1 to i64
  %i.aq = ptrtoint ptr %.sroa.0.1 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ar) #26
  %i.as = add nsw i32 %.1, 1
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE13gather_leavesEi(ptr dead_on_unwind writable sret(%"class.std::vector.79") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1, i32 noundef %i.as)
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.064, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %.sroa.26.2.ph = phi ptr [ %.sroa.26.066, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit24

.loopexit.split-lp:                               ; preds = %bb.i, %bb.e
  %.sroa.0.2.ph52 = phi ptr [ %.sroa.0.5, %bb.i ], [ %.sroa.0.064, %bb.e ]
  %.sroa.26.2.ph53 = phi ptr [ %.sroa.13.3, %bb.i ], [ %.sroa.26.066, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit24: ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.2 = phi ptr [ %.sroa.0.2.ph, %.loopexit ], [ %.sroa.0.2.ph52, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.2.ph, %.loopexit ], [ %.sroa.26.2.ph53, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = ptrtoint ptr %.sroa.26.2 to i64
  %i.au = ptrtoint ptr %.sroa.0.2 to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.av) #26
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE3padERKSt6vectorIPS4_SaIS6_EEdi(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse.i

end_hunk_3
begin_hunk_4_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE5clearEv:bb.a

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.e
  store ptr null, ptr %i.i, align 16, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7is_leafEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !152
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7is_rootEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !154
  %i.c = icmp eq ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE4rootEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.b, %tailrecurse ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !154 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  ret ptr %.tr
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6detachEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !154 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 16, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !154 ; 4 uses
  %i.e = load ptr, ptr %i.b, align 16, !tbaa !152 ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.d, ptr %i.j, align 16, !tbaa !154
  %.not22 = icmp eq ptr %i.d, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 16, !tbaa !152
  %i.l = icmp eq ptr %i.k, %i.b
  %.idx = select i1 %i.l, i64 0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  store ptr %i.i, ptr %i.m, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EED1Ev(ptr noundef nonnull align 16 dead_on_return(68) dereferenceable(68) %i.b) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.i, %bb.f ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE13refit_lineageEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ae, %tailrecurse.backedge ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 48 ; 5 uses
  %i.c = load <4 x double>, ptr %i.a, align 16    ; 5 uses
  %i.d = load ptr, ptr %.tr, align 16, !tbaa !152 ; 3 uses
  %i.e = icmp eq ptr %i.d, null                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.a, align 16, !tbaa !49
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.b, align 16, !tbaa !49
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load <2 x double>, ptr %i.a, align 16, !tbaa !47
  %i.l = load <2 x double>, ptr %i.j, align 16, !tbaa !47
  %i.m = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.k, <2 x double> %i.l) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.m, ptr %i.a, align 16, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = load <2 x double>, ptr %i.b, align 16, !tbaa !47
  %i.p = load <2 x double>, ptr %i.n, align 16, !tbaa !47
  %i.q = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o, <2 x double> %i.p) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.q, ptr %i.b, align 16, !tbaa !47
  %i.r = shufflevector <2 x double> %i.m, <2 x double> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi <4 x double> [ %i.r, %bb.c ], [ <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, %bb.b ]
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load <2 x double>, ptr %i.a, align 16, !tbaa !47
  %i.v = load <2 x double>, ptr %i.t, align 16, !tbaa !47
  %i.w = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u, <2 x double> %i.v) #29, !srcloc !88 ; 2 uses
  store <2 x double> %i.w, ptr %i.a, align 16, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.y = load <2 x double>, ptr %i.b, align 16, !tbaa !47
  %i.z = load <2 x double>, ptr %i.x, align 16, !tbaa !47
  %i.aa = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y, <2 x double> %i.z) #29, !srcloc !89 ; 2 uses
  store <2 x double> %i.aa, ptr %i.b, align 16, !tbaa !47
  %i.ab = shufflevector <2 x double> %i.w, <2 x double> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %tailrecurse
  %i.ac = phi <4 x double> [ %i.ab, %bb.e ], [ %i.s, %bb.d ], [ %i.c, %tailrecurse ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !154 ; 2 uses
  %.not4 = icmp eq ptr %i.ae, null
  br i1 %.not4, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = extractelement <4 x double> %i.ac, i64 0
  %i.ag = extractelement <4 x double> %i.c, i64 0
  %i.ah = fcmp ugt double %i.af, %i.ag
  %i.ai = extractelement <4 x double> %i.ac, i64 1
  %i.aj = extractelement <4 x double> %i.c, i64 1
  %i.ak = fcmp ugt double %i.ai, %i.aj
  %or.cond19 = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond19, label %tailrecurse.backedge, label %bb.h

tailrecurse.backedge:                             ; preds = %bb.g, %bb.h
  br label %tailrecurse

bb.h:                                             ; preds = %bb.g
  %i.al = extractelement <4 x double> %i.ac, i64 2
  %i.am = extractelement <4 x double> %i.c, i64 2
  %i.an = fcmp ugt double %i.am, %i.al
  %i.ao = extractelement <4 x double> %i.ac, i64 3
  %i.ap = extractelement <4 x double> %i.c, i64 3
  %i.aq = fcmp ugt double %i.ap, %i.ao
  %or.cond = select i1 %i.an, i1 true, i1 %i.aq
  br i1 %or.cond, label %tailrecurse.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE13gather_leavesEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.103") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i, label %.noexc15

_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

.noexc15:                                         ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 3                  ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !471
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !472
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.c, i1 false), !tbaa !155
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  br label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.noexc15, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i
  %3 = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.d, %.noexc15 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.g, %.noexc15 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !473
  %i.i = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit unwind label %.thread ; 3 uses

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %1, ptr %i.i, align 8, !tbaa !155
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit, %bb.m
  %.sroa.26.078 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.26.2, %bb.m ] ; 6 uses
  %.sroa.13.077 = phi ptr [ %i.j, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.13.1, %bb.m ] ; 2 uses
  %.sroa.0.076 = phi ptr [ %i.i, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit ], [ %.sroa.0.2, %bb.m ] ; 7 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.13.077, i64 -8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155  ; 7 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.m, label %bb.c, !llvm.loop !469

.thread:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit40

bb.c:                                             ; preds = %bb.b
  %.not.i18 = icmp eq ptr %i.k, %.sroa.26.078
  br i1 %.not.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !155
  store ptr %i.n, ptr %i.k, align 8, !tbaa !155
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit27

bb.e:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %.sroa.26.078 to i64
  %i.p = ptrtoint ptr %.sroa.0.076 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i20, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i21)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !155
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !155
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

bb.g:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %.sroa.0.076, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24: ; preds = %bb.g, %.noexc26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.076, i64 noundef %i.q) #26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit27

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit27: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24, %bb.d
  %.sroa.0.5 = phi ptr [ %i.y, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.0.076, %bb.d ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.ac, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.13.077, %bb.d ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.ad, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i24 ], [ %.sroa.26.078, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.not.i28 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit27
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !155 ; 2 uses
  store ptr %i.af, ptr %.sroa.13.3, align 8, !tbaa !155
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit37

bb.i:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit27
  %i.ag = ptrtoint ptr %.sroa.13.3 to i64
  %i.ah = ptrtoint ptr %.sroa.0.5 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29: ; preds = %bb.i
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i30, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %.noexc36 unwind label %.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !155
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !155
  %i.at = icmp sgt i64 %i.ai, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

bb.k:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.0.5, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34: ; preds = %bb.k, %.noexc36
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.ai) #26
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  %.pre = load ptr, ptr %i.ae, align 8
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit37

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit37: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34, %bb.h
  %i.av = phi ptr [ %.pre, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %i.af, %bb.h ]
  %.sroa.0.6 = phi ptr [ %i.aq, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.0.5, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.ar, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.13.3, %bb.h ]
  %.sroa.26.6 = phi ptr [ %i.au, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i34 ], [ %.sroa.26.5, %bb.h ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.l, align 16, !tbaa !152
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq ptr %i.av, null
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.bb = load i32, ptr %i.ba, align 16, !tbaa !151
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bc
  store ptr %i.l, ptr %i.bd, align 8, !tbaa !155
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit37, %bb.l, %bb.b
  %.sroa.0.2 = phi ptr [ %.sroa.0.076, %bb.b ], [ %.sroa.0.6, %bb.l ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit37 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.k, %bb.b ], [ %.sroa.13.4, %bb.l ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.078, %bb.b ], [ %.sroa.26.6, %bb.l ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit37 ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.2, %.sroa.13.1
  br i1 %i.be, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit, label %bb.b

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit: ; preds = %bb.m
  %i.bf = ptrtoint ptr %.sroa.26.2 to i64
  %i.bg = ptrtoint ptr %.sroa.0.2 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bh) #26
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.076, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %.sroa.26.1.ph = phi ptr [ %.sroa.26.078, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i19 ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i29 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.j, %bb.f
  %.sroa.0.1.ph68 = phi ptr [ %.sroa.0.5, %bb.j ], [ %.sroa.0.076, %bb.f ]
  %.sroa.26.1.ph69 = phi ptr [ %.sroa.13.3, %bb.j ], [ %.sroa.26.078, %bb.f ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0.1 = phi ptr [ %.sroa.0.1.ph, %.loopexit ], [ %.sroa.0.1.ph68, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.1.ph, %.loopexit ], [ %.sroa.26.1.ph69, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bi = ptrtoint ptr %.sroa.26.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0.1 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.bk) #26
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !471
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit40

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit40: ; preds = %.thread, %bb.n
  %4 = phi ptr [ %3, %.thread ], [ %.pre85, %bb.n ] ; 3 uses
  %.pn67 = phi { ptr, i32 } [ %i.m, %.thread ], [ %lpad.phi, %bb.n ]
  %.not.i.i.i41 = icmp eq ptr %4, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit42, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !472
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %4 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit42

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit42: ; preds = %bb.o, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit40
  resume { ptr, i32 } %.pn67
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE13gather_leavesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.103") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %.sroa.26.066 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.26.1, %bb.k ] ; 6 uses
  %.sroa.13.065 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.13.1, %bb.k ] ; 2 uses
  %.sroa.0.064 = phi ptr [ %i.a, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0.1, %bb.k ] ; 7 uses
  %.063 = phi i32 [ -1, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.1, %bb.k ] ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.13.065, i64 -8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b, !llvm.loop !474

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, %.sroa.26.066
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155
  store ptr %i.e, ptr %i.c, align 8, !tbaa !155
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.26.066 to i64
  %i.g = ptrtoint ptr %.sroa.0.064 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !155
  store ptr %i.r, ptr %i.q, align 8, !tbaa !155
  %i.s = icmp sgt i64 %i.h, 0
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

bb.f:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %.sroa.0.064, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %.noexc11
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.064, i64 noundef %i.h) #26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.5 = phi ptr [ %i.p, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.064, %bb.c ] ; 6 uses
  %.sroa.13.3 = phi ptr [ %i.t, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.13.065, %bb.c ] ; 6 uses
  %.sroa.26.5 = phi ptr [ %i.u, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.26.066, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not.i12 = icmp eq ptr %.sroa.13.3, %.sroa.26.5
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !155
  store ptr %i.w, ptr %.sroa.13.3, align 8, !tbaa !155
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit21

bb.h:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit
  %i.x = ptrtoint ptr %.sroa.13.3 to i64
  %i.y = ptrtoint ptr %.sroa.0.5 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i14 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i14, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i15 = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i15)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc20 unwind label %.loopexit ; 4 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !155
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !155
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

bb.j:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %.sroa.0.5, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18: ; preds = %bb.j, %.noexc20
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.z) #26
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit21

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit21: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18, %bb.g
  %.sroa.0.6 = phi ptr [ %i.ah, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.0.5, %bb.g ]
  %.pn = phi ptr [ %i.ai, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.13.3, %bb.g ]
  %.sroa.26.6 = phi ptr [ %i.al, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i18 ], [ %.sroa.26.5, %bb.g ]
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.an = load i32, ptr %i.am, align 4, !tbaa !86
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.063, i32 %i.an)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit21
  %.1 = phi i32 [ %.063, %bb.a ], [ %.sroa.speculated, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.064, %bb.a ], [ %.sroa.0.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit21 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.c, %bb.a ], [ %.sroa.13.4, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.066, %bb.a ], [ %.sroa.26.6, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit21 ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.0.1, %.sroa.13.1
  br i1 %i.ao, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit, label %bb.a

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit: ; preds = %bb.k
  %i.ap = ptrtoint ptr %.sroa.26.1 to i64
  %i.aq = ptrtoint ptr %.sroa.0.1 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ar) #26
  %i.as = add nsw i32 %.1, 1
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE13gather_leavesEi(ptr dead_on_unwind writable sret(%"class.std::vector.103") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1, i32 noundef %i.as)
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.064, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0.5, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %.sroa.26.2.ph = phi ptr [ %.sroa.26.066, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.13.3, %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i13 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit24

.loopexit.split-lp:                               ; preds = %bb.i, %bb.e
  %.sroa.0.2.ph52 = phi ptr [ %.sroa.0.5, %bb.i ], [ %.sroa.0.064, %bb.e ]
  %.sroa.26.2.ph53 = phi ptr [ %.sroa.13.3, %bb.i ], [ %.sroa.26.066, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit24

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit24: ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.2 = phi ptr [ %.sroa.0.2.ph, %.loopexit ], [ %.sroa.0.2.ph52, %.loopexit.split-lp ] ; 2 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.2.ph, %.loopexit ], [ %.sroa.26.2.ph53, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = ptrtoint ptr %.sroa.26.2 to i64
  %i.au = ptrtoint ptr %.sroa.0.2 to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.av) #26
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE3padERKSt6vectorIPS4_SaIS6_EEdi(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %tailrecurse.i

end_hunk_4
