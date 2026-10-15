Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/utilities?download=true
inline.NumInlined: 1369
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z17util_getExpPauliYd:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.w
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.e
  %i.ae = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !91
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #31
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %bb.h
  %i.aq = load ptr, ptr %3, align 8, !tbaa !90    ; 3 uses
  %.not.i.i.i32.1 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i32.1, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit.1, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit.1

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit.1:    ; preds = %bb.i, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.j:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #32
  br label %.body29

.body29:                                          ; preds = %.thread, %bb.c, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.j ], [ %i.o, %.thread ], [ %i.t, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit36, label %bb.k

bb.k:                                             ; preds = %.body29
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !91
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #31
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit36

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit36:    ; preds = %.body29, %bb.k
  %i.be = load ptr, ptr %3, align 8, !tbaa !90    ; 3 uses
  %.not.i.i.i34.1 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i34.1, label %.body.thread, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit36
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !91
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #31
  br label %.body.thread

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit39:    ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #31
  br label %.body.thread

.body.thread:                                     ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit36, %bb.l, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit39
  %.pn.pn.pn51 = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit36 ], [ %i.bk, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit39 ], [ %.pn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn.pn51
}

; Function Attrs: mustprogress uwtable
define void @_Z17util_getExpPauliZd(ptr dead_on_unwind noalias writable sret(%struct.DiagMatr1) align 8 %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.23", align 8    ; 6 uses
  %i.a = fmul double %1, -5.000000e-01            ; 2 uses
  %i.b = tail call noundef { double, double } @cexp(double noundef 0.000000e+00, double noundef %i.a) #32 ; 2 uses
  %i.c = fneg double %i.a
  %i.d = tail call noundef { double, double } @cexp(double noundef -0.000000e+00, double noundef %i.c) #32 ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 6 uses
  %i.f = extractvalue { double, double } %i.d, 1
  %i.g = extractvalue { double, double } %i.d, 0
  %i.h = extractvalue { double, double } %i.b, 1
  %i.i = extractvalue { double, double } %i.b, 0
  store ptr %i.e, ptr %2, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !91
  store double %i.i, ptr %i.e, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.h, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store double %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store double %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !94
  invoke void @_Z12getDiagMatr1St6vectorISt7complexIdESaIS1_EE(ptr dead_on_unwind writable sret(%struct.DiagMatr1) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !90     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #31
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !90     ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i6, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #31
  br label %.body

.body:                                            ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.r
}

; Function Attrs: nounwind
declare { double, double } @cexp(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_Z31util_getOneQubitDephasingFactord(double noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %0, double -2.000000e+00, double 1.000000e+00)
  ret double %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_Z29util_getTwoQubitDephasingTermd(double noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = fmul double %0, -4.000000e+00
  %i.b = fdiv double %i.a, 3.000000e+00
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z35util_getOneQubitDepolarisingFactorsd(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.util_Scalars) align 8 captures(none) initializes((0, 32)) %0, double noundef %1) local_unnamed_addr #22 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x double> %i.b, <double 2.000000e+00, double 4.000000e+00>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = fdiv <2 x double> %i.c, splat (double 3.000000e+00) ; 2 uses
  %2 = extractelement <2 x double> %i.e, i64 0
  store double %2, ptr %i.d, align 8, !tbaa !106
  %3 = fsub <2 x double> splat (double 1.000000e+00), %i.e ; 2 uses
  %i.f = extractelement <2 x double> %3, i64 0
  store double %i.f, ptr %0, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = extractelement <2 x double> %3, i64 1
  store double %i.h, ptr %i.g, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z35util_getTwoQubitDepolarisingFactorsd(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.util_Scalars) align 8 captures(none) initializes((0, 32)) %0, double noundef %1) local_unnamed_addr #22 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x double> %i.b, <double 4.000000e+00, double 1.600000e+01> ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0
  %i.e = fdiv double %i.d, 5.000000e+00
  %i.f = fsub double 1.000000e+00, %i.e
  store double %i.f, ptr %0, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = fdiv <2 x double> %i.c, <double 1.500000e+01, double -1.500000e+01>
  store <2 x double> %i.h, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z35util_getOneQubitPauliChannelFactorsdddd(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.util_Scalars) align 8 captures(none) initializes((0, 32)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #22 {
bb.a:
  %i.a = fadd double %1, %4
  store double %i.a, ptr %0, align 8, !tbaa !107
  %i.b = fadd double %2, %3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.b, ptr %i.c, align 8, !tbaa !106
  %i.d = fsub double %1, %4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.d, ptr %i.e, align 8, !tbaa !108
  %i.f = fsub double %2, %3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.f, ptr %i.g, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @_Z30util_getOneQubitDampingFactorsd(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.util_Scalars) align 8 captures(none) initializes((0, 32)) %0, double noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = fsub double 1.000000e+00, %1             ; 2 uses
  %i.b = tail call double @sqrt(double noundef %i.a) #32
  store double %i.b, ptr %0, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.a, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_Z34util_getMaxProbOfOneQubitDephasingv() local_unnamed_addr #14 {
bb.a:
  ret double 5.000000e-01
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_Z34util_getMaxProbOfTwoQubitDephasingv() local_unnamed_addr #14 {
bb.a:
  ret double 7.500000e-01
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_Z37util_getMaxProbOfOneQubitDepolarisingv() local_unnamed_addr #14 {
bb.a:
  ret double 7.500000e-01
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_Z37util_getMaxProbOfTwoQubitDepolarisingv() local_unnamed_addr #14 {
bb.a:
  ret double 9.375000e-01
}

; Function Attrs: mustprogress uwtable
define void @_Z14util_getVectorPii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !239
  br label %_Z9getVectorIiESt6vectorIT_SaIS1_EEPS1_i.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !239
  %.idx.i = shl nsw i64 %i.b, 2                   ; 6 uses
  %i.c = icmp ugt i64 %.idx.i, 9223372036854775804
  br i1 %i.c, label %.noexc.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29, !noalias !239
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !37, !alias.scope !239
  br label %bb.f

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #30, !noalias !239 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !36, !alias.scope !239
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37, !alias.scope !239
  %i.i = icmp samesign ugt i64 %.idx.i, 4
  br i1 %i.i, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %1, i64 %.idx.i, i1 false), !noalias !239
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %i.j = load i32, ptr %1, align 4, !tbaa !33, !noalias !239
  store i32 %i.j, ptr %i.f, align 4, !tbaa !33, !noalias !239
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i.i.i
  %i.k = phi ptr [ %i.g, %bb.d ], [ %i.d, %.thread.i.i.i ], [ %i.g, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35, !alias.scope !239
  br label %_Z9getVectorIiESt6vectorIT_SaIS1_EEPS1_i.exit

_Z9getVectorIiESt6vectorIT_SaIS1_EEPS1_i.exit:    ; preds = %bb.b, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define void @_Z14util_getVectorPdi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.7") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !242
  br label %_Z9getVectorIdESt6vectorIT_SaIS1_EEPS1_i.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !242
  %.idx.i = shl nsw i64 %i.b, 3                   ; 6 uses
  %i.c = icmp ugt i64 %.idx.i, 9223372036854775800
  br i1 %i.c, label %.noexc.i.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29, !noalias !242
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !111, !alias.scope !242
  br label %bb.f

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #30, !noalias !242 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !112, !alias.scope !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !111, !alias.scope !242
  %i.i = icmp samesign ugt i64 %.idx.i, 8
  br i1 %i.i, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %1, i64 %.idx.i, i1 false), !noalias !242
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i.i
  %i.j = load double, ptr %1, align 8, !tbaa !57, !noalias !242
  store double %i.j, ptr %i.f, align 8, !tbaa !57, !noalias !242
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i.i.i
  %i.k = phi ptr [ %i.g, %bb.d ], [ %i.d, %.thread.i.i.i ], [ %i.g, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !113, !alias.scope !242
  br label %_Z9getVectorIdESt6vectorIT_SaIS1_EEPS1_i.exit

_Z9getVectorIdESt6vectorIT_SaIS1_EEPS1_i.exit:    ; preds = %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z14util_getVectorPSt7complexIdEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.23") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !245
  br label %_Z9getVectorISt7complexIdEESt6vectorIT_SaIS3_EEPS3_i.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  store i64 0, ptr %0, align 8, !alias.scope !245
  %.idx.i = shl nsw i64 %i.b, 4                   ; 5 uses
  %i.c = icmp ugt i64 %.idx.i, 9223372036854775792
  br i1 %i.c, label %.noexc.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29, !noalias !245
  unreachable

_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt7complexIdESaIS1_EE11_M_allocateEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZNSt12_Vector_baseISt7complexIdESaIS1_EE11_M_allocateEm.exit.thread.i.i.i: ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i
  br label %bb.d

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #30, !noalias !245 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !90, !alias.scope !245
  %i.f = getelementptr i8, ptr %i.e, i64 %.idx.i  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %1, i64 %.idx.i, i1 false), !noalias !245
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %_ZNSt12_Vector_baseISt7complexIdESaIS1_EE11_M_allocateEm.exit.thread.i.i.i
  %.sink.i = phi ptr [ %i.d, %_ZNSt12_Vector_baseISt7complexIdESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt7complexIdESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink.i, ptr %i.g, align 8, !tbaa !91, !alias.scope !245
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !94, !alias.scope !245
  br label %_Z9getVectorISt7complexIdEESt6vectorIT_SaIS3_EEPS3_i.exit
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE17_M_default_appendEm:bb.a
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorISt7complexIdESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_utilities.cpp() #26 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr @_Z21globalStructFieldPtrsB5cxx11, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 8), align 8, !tbaa !103
  store ptr @_Z21globalStructFieldPtrsB5cxx11, ptr @_Z21globalStructFieldPtrsB5cxx11, align 8, !tbaa !97
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !104
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1110_List_baseIPiSaIS1_EED2Ev, ptr nonnull @_Z21globalStructFieldPtrsB5cxx11, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !41}
!5 = distinct !{!5, !41}
!6 = distinct !{!6, !41}
!7 = distinct !{!7, !41}
!8 = distinct !{!8, !41}
!9 = distinct !{!9, !41}
!10 = distinct !{!10, !41}
!11 = distinct !{!11, !41}
!12 = distinct !{null}
!13 = !{i32 7, !"openmp", i32 51}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"long long", !18, i64 0}
!23 = !{!"any pointer", !18, i64 0}
!24 = !{!"p1 _ZTSSt7complexIdE", !23, i64 0}
!25 = !{!"_ZTS5Qureg", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96}
!26 = !{!25, !22, i64 56}
!27 = !{!25, !19, i64 24}
!28 = !{!25, !19, i64 28}
!29 = !{!25, !22, i64 64}
!30 = !{!"p1 int", !23, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!22, !22, i64 0}
!33 = !{!19, !19, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!35 = !{!34, !30, i64 8}
!36 = !{!34, !30, i64 0}
!37 = !{!34, !30, i64 16}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!25, !19, i64 12}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!45 = !{!25, !22, i64 48}
!46 = !{!25, !19, i64 8}
!47 = !{!"_ZTS17FullStateDiagMatr", !19, i64 0, !22, i64 8, !19, i64 16, !19, i64 20, !19, i64 24, !22, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !24, i64 80, !24, i64 88}
!48 = !{!47, !19, i64 24}
!49 = !{!47, !22, i64 32}
!50 = !{!24, !24, i64 0}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!18, !18, i64 0}
!53 = !{!"p1 long long", !23, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 double", !23, i64 0}
!56 = !{!"double", !18, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{i64 0, i64 4, !33, i64 8, i64 8, !32, i64 16, i64 64, !52}
!59 = !{!"_ZTS9CompMatr1", !19, i64 0, !22, i64 8, !18, i64 16}
!60 = !{!59, !22, i64 8}
!61 = !{i64 0, i64 4, !33, i64 8, i64 8, !32, i64 16, i64 256, !52}
!62 = !{!"_ZTS9CompMatr2", !19, i64 0, !22, i64 8, !18, i64 16}
!63 = !{!62, !22, i64 8}
!64 = !{!"_ZTS9DiagMatr1", !19, i64 0, !22, i64 8, !18, i64 16}
!65 = !{!64, !22, i64 8}
!66 = !{!"_ZTS9DiagMatr2", !19, i64 0, !22, i64 8, !18, i64 16}
!67 = !{!66, !22, i64 8}
!68 = !{!"any p2 pointer", !23, i64 0}
!69 = !{!"p2 _ZTSSt7complexIdE", !68, i64 0}
!70 = !{!"_ZTS8CompMatr", !19, i64 0, !22, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !69, i64 40, !24, i64 48, !24, i64 56}
!71 = !{!70, !69, i64 40}
!72 = !{!70, !22, i64 8}
!73 = !{!"_ZTS8DiagMatr", !19, i64 0, !22, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !24, i64 56, !24, i64 64}
!74 = !{!73, !24, i64 56}
!75 = !{!73, !22, i64 8}
!76 = !{i64 0, i64 16, !52}
!77 = !{!"branch_weights", i32 1, i32 1048575}
!78 = !{!47, !24, i64 80}
!79 = !{!69, !69, i64 0}
!80 = !{!"p1 _ZTSSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE", !23, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!81, !80, i64 8}
!83 = !{!81, !80, i64 0}
!84 = !{!81, !80, i64 16}
!85 = !{!"p1 _ZTSSt6vectorISt7complexIdESaIS1_EE", !23, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 0}
!88 = !{!86, !85, i64 8}
!89 = !{!"_ZTSNSt12_Vector_baseISt7complexIdESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!90 = !{!89, !24, i64 0}
!91 = !{!89, !24, i64 16}
!92 = !{!86, !85, i64 16}
!93 = !{!85, !85, i64 0}
!94 = !{!89, !24, i64 8}
!95 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !23, i64 0}
!96 = !{!"_ZTSNSt8__detail15_List_node_baseE", !95, i64 0, !95, i64 8}
!97 = !{!96, !95, i64 0}
!98 = !{!"long", !18, i64 0}
!99 = !{!"_ZTSNSt8__detail17_List_node_headerE", !96, i64 0, !98, i64 16}
!100 = !{!"_ZTSNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implE", !99, i64 0}
!101 = !{!"_ZTSNSt7__cxx1110_List_baseIPiSaIS1_EEE", !100, i64 0}
!102 = !{!101, !98, i64 16}
!103 = !{!96, !95, i64 8}
!104 = !{!99, !98, i64 16}
!105 = !{!"_ZTS12util_Scalars", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!106 = !{!105, !56, i64 8}
!107 = !{!105, !56, i64 0}
!108 = !{!105, !56, i64 16}
!109 = !{!105, !56, i64 24}
!110 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!111 = !{!110, !55, i64 16}
!112 = !{!110, !55, i64 0}
!113 = !{!110, !55, i64 8}
!114 = !{!"_ZTSSt14_Function_base", !18, i64 0, !23, i64 16}
!115 = !{!114, !23, i64 16}
!116 = !{!23, !23, i64 0}
!117 = !{!"_ZTSSt8functionIFvvEE", !114, i64 0, !23, i64 24}
!118 = !{!117, !23, i64 24}
!119 = !{!"_ZTSNSt12_Vector_baseIPSt7complexIdESaIS2_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!120 = !{!119, !69, i64 8}
!121 = !{!119, !69, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!123 = !{!122, !30, i64 8}
!124 = !{!122, !30, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseI8PauliStrSaIS0_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!126 = !{!125, !23, i64 8}
!127 = !{!125, !23, i64 0}
!128 = distinct !{!128, !41, !42, !43}
!129 = distinct !{!129, !41, !43, !42}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !41}
!135 = distinct !{!135, !41}
!136 = distinct !{!136, !41}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41}
!139 = distinct !{!139, !41}
!140 = distinct !{!140, i1 false, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!141 = distinct !{!141, !140, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!142 = !{!141}
!143 = distinct !{!143, !41, !42, !43}
!144 = distinct !{!144, !41, !43, !42}
!145 = distinct !{!145, i1 false, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!146 = distinct !{!146, !145, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!147 = distinct !{!147, i1 false, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!148 = distinct !{!148, !147, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!149 = !{!146}
!150 = !{!148}
!151 = distinct !{!151, !51}
!152 = !{!55, !55, i64 0}
!153 = distinct !{!153, !51}
!154 = distinct !{!154, !51}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !41}
!157 = distinct !{!157, !51}
!158 = distinct !{!158, !41}
!159 = distinct !{!159, !41}
!160 = distinct !{!160, !51}
!161 = !{i64 0, i64 4, !33, i64 8, i64 8, !32, i64 16, i64 32, !52}
!162 = distinct !{!162, !51}
!163 = distinct !{!163, !51}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !41}
!166 = distinct !{!166, !51}
!167 = distinct !{!167, !41}
!168 = distinct !{!168, !41}
!169 = distinct !{!169, !41}
!170 = distinct !{!170, !41}
!171 = distinct !{!171, !41}
!172 = distinct !{!172, !41}
!173 = distinct !{!173, !41}
!174 = distinct !{!174, !41}
!175 = distinct !{!175, !41}
!176 = distinct !{!176, !41}
!177 = distinct !{!177, !41}
!178 = distinct !{!178, !41}
!179 = distinct !{!179, !41}
!180 = !{!70, !30, i64 16}
!181 = !{!73, !30, i64 16}
!182 = !{!47, !30, i64 40}
!183 = distinct !{!183, !41}
!184 = distinct !{!184, !41}
!185 = distinct !{!185, !41}
!186 = distinct !{!186, !41}
!187 = distinct !{!187, !41}
!188 = distinct !{!188, !41}
!189 = !{!70, !30, i64 24}
!190 = !{!73, !30, i64 24}
!191 = !{!47, !30, i64 48}
!192 = !{!73, !30, i64 32}
!193 = !{!47, !30, i64 56}
!194 = !{!73, !30, i64 40}
!195 = !{!47, !30, i64 64}
!196 = !{!"_ZTS11PauliStrSum", !22, i64 0, !23, i64 8, !24, i64 16, !30, i64 24}
!197 = !{!196, !30, i64 24}
!198 = !{!196, !24, i64 16}
!199 = !{!196, !22, i64 0}
!200 = distinct !{!200, !41}
!201 = distinct !{!201, !41}
!202 = distinct !{!202, !41}
!203 = distinct !{!203, !41}
!204 = distinct !{!204, !41, !42, !43}
!205 = distinct !{!205, !41, !43, !42}
!206 = !{!"any p3 pointer", !68, i64 0}
!207 = !{!"p3 _ZTSSt7complexIdE", !206, i64 0}
!208 = !{!"_ZTS7SuperOp", !19, i64 0, !22, i64 8, !69, i64 16, !24, i64 24, !24, i64 32, !30, i64 40}
!209 = !{!"_ZTS8KrausMap", !19, i64 0, !19, i64 4, !22, i64 8, !207, i64 16, !208, i64 24, !30, i64 72}
!210 = !{!209, !30, i64 72}
!211 = !{!209, !22, i64 8}
!212 = !{!80, !80, i64 0}
!213 = distinct !{!213, !51}
!214 = distinct !{!214, !41}
!215 = distinct !{!215, !41}
!216 = distinct !{!216, !41}
!217 = distinct !{!217, !41}
!218 = distinct !{!218, !41}
!219 = distinct !{!219, !41}
!220 = distinct !{!220, !41}
!221 = distinct !{!221, !41}
!222 = distinct !{!222, !41}
!223 = distinct !{!223, !51}
!224 = distinct !{!224, !41}
!225 = distinct !{!225, !41}
!226 = distinct !{!226, !41}
!227 = distinct !{!227, !41}
!228 = distinct !{!228, !41}
!229 = distinct !{!229, !41}
!230 = distinct !{!230, !41}
!231 = distinct !{!231, !41}
!232 = !{!"_ZTS21util_VectorIndexRange", !22, i64 0, !22, i64 8, !22, i64 16}
!233 = !{!232, !22, i64 16}
!234 = !{!232, !22, i64 0}
!235 = !{!232, !22, i64 8}
!236 = distinct !{!236, !41}
!237 = distinct !{!237, i1 false, !"_Z9getVectorIiESt6vectorIT_SaIS1_EEPS1_i"}
!238 = distinct !{!238, !237, !"_Z9getVectorIiESt6vectorIT_SaIS1_EEPS1_i: argument 0"}
!239 = !{!238}
!240 = distinct !{!240, i1 false, !"_Z9getVectorIdESt6vectorIT_SaIS1_EEPS1_i"}
!241 = distinct !{!241, !240, !"_Z9getVectorIdESt6vectorIT_SaIS1_EEPS1_i: argument 0"}
!242 = !{!241}
!243 = distinct !{!243, i1 false, !"_Z9getVectorISt7complexIdEESt6vectorIT_SaIS3_EEPS3_i"}
!244 = distinct !{!244, !243, !"_Z9getVectorISt7complexIdEESt6vectorIT_SaIS3_EEPS3_i: argument 0"}
!245 = !{!244}
!246 = distinct !{!246, i1 false, !"_Z9getVectorI5QuregESt6vectorIT_SaIS2_EEPS2_i"}
!247 = distinct !{!247, !246, !"_Z9getVectorI5QuregESt6vectorIT_SaIS2_EEPS2_i: argument 0"}
!248 = !{!247}
!249 = !{!"_ZTSNSt12_Vector_baseI5QuregSaIS0_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!250 = !{!249, !23, i64 16}
!251 = !{!249, !23, i64 0}
!252 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!253 = !{i64 0, i64 4, !33, i64 4, i64 4, !33, i64 8, i64 4, !33, i64 12, i64 4, !33, i64 16, i64 4, !33, i64 20, i64 4, !33, i64 24, i64 4, !33, i64 28, i64 4, !33, i64 32, i64 8, !32, i64 40, i64 8, !32, i64 48, i64 8, !32, i64 56, i64 8, !32, i64 64, i64 8, !32, i64 72, i64 8, !50, i64 80, i64 8, !50, i64 88, i64 8, !50, i64 96, i64 8, !50}
!254 = !{!249, !23, i64 8}
!255 = distinct !{!255, i1 false, !"_ZSt19__relocate_object_aISt7complexIdES1_SaIS1_EEvPT_PT0_RT1_"}
!256 = distinct !{!256, !255, !"_ZSt19__relocate_object_aISt7complexIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!257 = distinct !{!257, !255, !"_ZSt19__relocate_object_aISt7complexIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!258 = distinct !{!258, !41}
!259 = !{!257, !256}
!260 = !{!119, !69, i64 16}
!261 = !{!122, !30, i64 16}
!262 = distinct !{!262, !51}
!263 = distinct !{!263, !41}
!264 = distinct !{!264, !51}
!265 = !{!125, !23, i64 16}
!266 = !{i64 0, i64 8, !32, i64 8, i64 8, !32}
!267 = distinct !{!267, !41}
!268 = distinct !{!268, i1 false, !"_ZSt19__relocate_object_aISt6vectorISt7complexIdESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!269 = distinct !{!269, !268, !"_ZSt19__relocate_object_aISt6vectorISt7complexIdESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!270 = distinct !{!270, !268, !"_ZSt19__relocate_object_aISt6vectorISt7complexIdESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!271 = distinct !{!271, !41}
!272 = !{!269}
!273 = !{!270}
end_hunk_1
