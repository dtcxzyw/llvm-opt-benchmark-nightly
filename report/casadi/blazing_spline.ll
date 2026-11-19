Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/blazing_spline?download=true
inline.NumInlined: 2450
inline.NumDeleted: 866
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK6casadi21BlazingSplineFunction5mergeERKSt6vectorINS_2MXESaIS2_EERS4_S7_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.h, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.i, align 1, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i8 1, ptr %i.b, align 1, !tbaa !159
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA11_KcbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(11) @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %.thread

.lr.ph:                                           ; preds = %bb.a, %_ZN6casadi8FunctionaSERKS0_.exit
  %.041379 = phi i64 [ %i.m, %_ZN6casadi8FunctionaSERKS0_.exit ], [ 0, %bb.a ]
  %i.j = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 712
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN6casadi8FunctionaSERKS0_.exit unwind label %bb.c ; 0 uses

_ZN6casadi8FunctionaSERKS0_.exit:                 ; preds = %bb.b
  %i.m = add nuw nsw i64 %.041379, 1              ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !98
  %i.o = icmp slt i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge.i.i, !llvm.loop !382

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !181
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA7_KciTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 1 dereferenceable(7) @.str.43, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.lr.ph.i.i unwind label %.loopexit375.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.r, align 8, !tbaa !157
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.r, ptr %i.t, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.r, ptr %i.u, align 8, !tbaa !154
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %9, ptr %5, align 8, !tbaa !161
  %i.w = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i101 unwind label %bb.e ; 0 uses

.noexc.i101:                                      ; preds = %.lr.ph.i.i
  %i.x = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i101.1 unwind label %bb.e ; 0 uses

.noexc.i101.1:                                    ; preds = %.noexc.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  invoke void @_ZN6casadi8FunctionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listINS_2MXEERKSt6vectorISA_SaISA_EERKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SI_EEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.f unwind label %bb.m

bb.e:                                             ; preds = %.noexc.i101, %.lr.ph.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #26
  br label %.body

bb.f:                                             ; preds = %.noexc.i101.1
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.z)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.preheader unwind label %bb.g

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.preheader: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 72
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

bb.h:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.preheader
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !105
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #25
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1 unwind label %bb.h

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit
  %i.am = load ptr, ptr %10, align 8, !tbaa !104  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !105
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ar = load ptr, ptr %8, align 8, !tbaa !104   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.g
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1
  %i.at = load i64, ptr %i.g, align 8, !tbaa !105
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  store ptr %i.av, ptr %11, align 8, !tbaa !183
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 1, ptr %i.aw, align 8, !tbaa !184
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ay, align 8, !tbaa !393
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  store ptr %i.ba, ptr %12, align 8, !tbaa !183
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i64 1, ptr %i.bb, align 8, !tbaa !184
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bd, align 8, !tbaa !393
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(496) %14)
          to label %.noexc102 unwind label %bb.n

.noexc102:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 392 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 416
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 16
  invoke void @_ZN6casadi17SerializingStreamC1ERSo(ptr noundef nonnull align 8 dereferenceable(73) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %_ZN6casadi34BlazingSplineIncrementalSerializerC2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc102
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(496) %14) #26
  br label %.body103

_ZN6casadi34BlazingSplineIncrementalSerializerC2Ev.exit: ; preds = %.noexc102
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 14 uses
  store ptr %i.bj, ptr %15, align 8, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 16 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !106
  store i8 0, ptr %i.bj, align 8, !tbaa !105
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.bj, %_ZN6casadi34BlazingSplineIncrementalSerializerC2Ev.exit
  %.0 = phi i32 [ 0, %_ZN6casadi34BlazingSplineIncrementalSerializerC2Ev.exit ], [ %28, %bb.bj ] ; 2 uses
  %27 = zext nneg i32 %.0 to i64                  ; 2 uses
  %i.br = invoke noundef i64 @_ZNK6casadi8Function14n_instructionsEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp sgt i64 %i.br, %27
  br i1 %i.bs, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %13, align 8, !tbaa !185  ; 2 uses
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !185 ; 2 uses
  %.not387 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not387, label %._crit_edge391, label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %24, i64 16
  br label %bb.bm

.thread:                                          ; preds = %._crit_edge.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit375

bb.m:                                             ; preds = %.noexc.i101.1
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #26
  br label %.body

.body:                                            ; preds = %bb.e, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.m ], [ %i.y, %bb.e ]
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.cl) #26
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit375

.loopexit375.loopexit:                            ; preds = %bb.d
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #26
  br label %.loopexit375

.loopexit375:                                     ; preds = %.loopexit375.loopexit, %.body, %.thread
  %.pn.pn.pn353 = phi { ptr, i32 } [ %i.cj, %.thread ], [ %.pn, %.body ], [ %i.cm, %.loopexit375.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.cn = load ptr, ptr %8, align 8, !tbaa !104   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.g
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.loopexit375
  %i.cp = load i64, ptr %i.g, align 8, !tbaa !105
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %.loopexit375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ee

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNK6casadi8Function14instruction_MXEx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %27)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %bb.o
  %i.cs = invoke noundef zeroext i1 @_ZNK6casadi2MX7is_callEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.q unwind label %bb.ah

bb.q:                                             ; preds = %bb.p
  br i1 %i.cs, label %bb.r, label %bb.bj

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZNK6casadi2MX14which_functionEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZNK6casadi12SharedObject10class_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.t unwind label %bb.aj

bb.t:                                             ; preds = %bb.s
  %i.ct = load i64, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 21
  %.pre = load ptr, ptr %18, align 8, !tbaa !104  ; 4 uses
  br i1 %i.cu, label %bb.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.u:                                             ; preds = %bb.t
  %i.cv = load i128, ptr %.pre, align 1
  %i.cw = xor i128 %i.cv, 146824006073676790788617491384161627202
  %i.cx = getelementptr i8, ptr %.pre, i64 5
  %i.cy = load i128, ptr %i.cx, align 1
  %i.cz = xor i128 %i.cy, 146793563361885898594173584116725016430
  %i.da = or i128 %i.cw, %i.cz
  %i.db = icmp ne i128 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.u, %bb.t
  %i.de = phi i1 [ false, %bb.t ], [ %i.dd, %bb.u ]
  %i.df = icmp eq ptr %.pre, %i.bm
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dg = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.dg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dh = load i64, ptr %i.bm, align 8, !tbaa !105
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.di) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br i1 %i.de, label %bb.v, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.dj = invoke noundef ptr @_ZN6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  invoke void @_ZN6casadi34BlazingSplineIncrementalSerializer11generate_idB5cxx11ERKSt6vectorINS_2MXESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(496) %14, ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.dl = load ptr, ptr %15, align 8, !tbaa !104  ; 6 uses
  %i.dm = icmp eq ptr %i.dl, %i.bj
  %i.dn = load ptr, ptr %19, align 8, !tbaa !104  ; 5 uses
  %i.do = icmp eq ptr %i.dn, %i.bn                ; 2 uses
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.x
  br i1 %i.do, label %bb.y, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.x
  br i1 %i.do, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dp = load i64, ptr %i.bo, align 8, !tbaa !106 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  switch i64 %i.dp, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.dr = load i8, ptr %i.dn, align 1, !tbaa !105
  store i8 %i.dr, ptr %i.dl, align 1, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dn, i64 %i.dp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.ds = load i64, ptr %i.bo, align 8, !tbaa !106 ; 2 uses
  store i64 %i.ds, ptr %i.bk, align 8, !tbaa !106
  %i.dt = load ptr, ptr %15, align 8, !tbaa !104
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store i8 0, ptr %i.du, align 1, !tbaa !105
  %.pre.i = load ptr, ptr %19, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dn, ptr %15, align 8, !tbaa !104
  %i.dv = load <2 x i64>, ptr %i.bo, align 8, !tbaa !105
  store <2 x i64> %i.dv, ptr %i.bk, align 8, !tbaa !105
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dw = load i64, ptr %i.bj, align 8, !tbaa !105
  store ptr %i.dn, ptr %15, align 8, !tbaa !104
  %i.dx = load <2 x i64>, ptr %i.bo, align 8, !tbaa !105
  store <2 x i64> %i.dx, ptr %i.bk, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dl, ptr %19, align 8, !tbaa !104
  store i64 %i.dw, ptr %i.bn, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bn, ptr %19, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ab, %bb.ac
  %i.dy = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dl, %bb.ab ], [ %i.bn, %bb.ac ]
  store i64 0, ptr %i.bo, align 8, !tbaa !106
  store i8 0, ptr %i.dy, align 1, !tbaa !105
  %i.dz = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bn
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.eb = load i64, ptr %i.bn, align 8, !tbaa !105
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.ed = invoke noundef zeroext i1 @_ZNK6casadi8FunctioneqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  br i1 %i.ed, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.ee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN6casadi2MXESaISB_EEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit unwind label %bb.al ; 3 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit: ; preds = %bb.ae
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !150 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !151
  %.not.i115 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not.i115, label %.invoke, label %bb.af

bb.af:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit
  %i.ej = load ptr, ptr %16, align 8, !tbaa !152
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !152
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %.noexc116 unwind label %bb.al

.noexc116:                                        ; preds = %bb.af
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !150
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.el, ptr %i.ef, align 8, !tbaa !150
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit

bb.ag:                                            ; preds = %bb.o
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ah:                                            ; preds = %bb.p
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ai:                                            ; preds = %bb.r
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aj:                                            ; preds = %bb.s
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bh

bb.ak:                                            ; preds = %bb.w, %bb.v
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bh

bb.al:                                            ; preds = %.invoke, %bb.bg, %bb.at, %bb.as, %bb.af, %bb.ae, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.aq, %bb.ap, %bb.an, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.am:                                            ; preds = %bb.ad
  %i.es = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 712
  %i.eu = invoke noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.et)
          to label %bb.ao unwind label %bb.al

bb.ao:                                            ; preds = %bb.an
  br i1 %i.eu, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ev = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.aq unwind label %bb.al

bb.aq:                                            ; preds = %bb.ap
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 712
  %i.ex = invoke noundef zeroext i1 @_ZNK6casadi8FunctioneqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ar unwind label %bb.al

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ex, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ey = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN6casadi2MXESaISB_EEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit122 unwind label %bb.al ; 3 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit122: ; preds = %bb.as
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !150 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !151
  %.not.i123 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not.i123, label %.invoke, label %bb.at

bb.at:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit122
  %i.fd = load ptr, ptr %16, align 8, !tbaa !152
  store ptr %i.fd, ptr %i.fa, align 8, !tbaa !152
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fa)
          to label %.noexc124 unwind label %bb.al

.noexc124:                                        ; preds = %bb.at
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !150
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.ff, ptr %i.ez, align 8, !tbaa !150
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit

bb.au:                                            ; preds = %bb.ar, %bb.ao
  %i.fg = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.al

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 712
  %i.fi = invoke noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fh)
          to label %bb.aw unwind label %bb.al

bb.aw:                                            ; preds = %bb.av
  br i1 %i.fi, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fj = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ay unwind label %bb.al

bb.ay:                                            ; preds = %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 712
  %i.fl = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.az unwind label %bb.al

bb.az:                                            ; preds = %bb.ay
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 712
  %i.fn = invoke noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %bb.ba unwind label %bb.al

bb.ba:                                            ; preds = %bb.az
  br i1 %i.fn, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fo = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bc unwind label %bb.al

bb.bc:                                            ; preds = %bb.bb
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 712
  %i.fq = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
          to label %bb.bd unwind label %bb.al

bb.bd:                                            ; preds = %bb.bc
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 712
  %i.fs = invoke noundef zeroext i1 @_ZNK6casadi8FunctioneqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.be unwind label %bb.al

bb.be:                                            ; preds = %bb.bd
  br i1 %i.fs, label %bb.bf, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit

bb.bf:                                            ; preds = %bb.be
  %i.ft = load ptr, ptr %i.bp, align 8, !tbaa !150 ; 4 uses
  %i.fu = load ptr, ptr %i.bq, align 8, !tbaa !151
  %.not.i127 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i127, label %.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fv = load ptr, ptr %16, align 8, !tbaa !152
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !152
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ft)
          to label %.noexc128 unwind label %bb.al

.noexc128:                                        ; preds = %bb.bg
  %i.fw = load ptr, ptr %i.bp, align 8, !tbaa !150
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.fx, ptr %i.bp, align 8, !tbaa !150
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit

.invoke:                                          ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit, %bb.bf, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit122
  %i.fy = phi ptr [ %i.ey, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit122 ], [ %13, %bb.bf ], [ %i.ee, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit ]
  %i.fz = phi ptr [ %i.fa, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit122 ], [ %i.ft, %bb.bf ], [ %i.eg, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit ]
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr %i.fz, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit unwind label %bb.al

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit: ; preds = %.invoke, %.noexc128, %.noexc124, %.noexc116, %bb.aw, %bb.ba, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bj

bb.bh:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn89 = phi { ptr, i32 } [ %i.er, %bb.al ], [ %i.eq, %bb.ak ], [ %i.ep, %bb.aj ]
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ai
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %bb.bh ], [ %i.eo, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit, %bb.q
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %28 = add nuw nsw i32 %.0, 1
  br label %bb.j, !llvm.loop !383

bb.bk:                                            ; preds = %bb.bi, %bb.ah
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.bi ], [ %i.en, %bb.ah ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ag
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn, %bb.bk ], [ %i.em, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body280

._crit_edge391:                                   ; preds = %._crit_edge386, %bb.l
  %i.ga = load ptr, ptr %i.bc, align 8, !tbaa !186 ; 2 uses
  %.not357402 = icmp eq ptr %i.ga, null
  br i1 %.not357402, label %._crit_edge406, label %.lr.ph405

.lr.ph405:                                        ; preds = %._crit_edge391
  %i.gb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.cw

bb.bm:                                            ; preds = %.lr.ph390, %._crit_edge386
  %.sroa.0340.0388 = phi ptr [ %i.bt, %.lr.ph390 ], [ %i.kq, %._crit_edge386 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.gk = invoke noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0340.0388)
          to label %bb.bn unwind label %bb.bw     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !394
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !185, !noalias !394 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !150, !noalias !394
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.gm, i64 %i.gr
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -8
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr null, ptr %i.gm, ptr nonnull %i.gt)
          to label %_ZN6casadi11vector_initINS_2MXEEESt6vectorIT_SaIS3_EERKS5_.exit unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #26
  br label %.body131

_ZN6casadi11vector_initINS_2MXEEESt6vectorIT_SaIS3_EERKS5_.exit: ; preds = %bb.bn
  invoke void @_ZN6casadi34BlazingSplineIncrementalSerializer11generate_idB5cxx11ERKSt6vectorINS_2MXESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(496) %14, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.bp unwind label %bb.bx

bb.bp:                                            ; preds = %_ZN6casadi11vector_initINS_2MXEEESt6vectorIT_SaIS3_EERKS5_.exit
  %i.gv = load ptr, ptr %15, align 8, !tbaa !104  ; 6 uses
  %i.gw = icmp eq ptr %i.gv, %i.bj
  %i.gx = load ptr, ptr %20, align 8, !tbaa !104  ; 5 uses
  %i.gy = icmp eq ptr %i.gx, %i.bv                ; 2 uses
  br i1 %i.gw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i138: ; preds = %bb.bp
  br i1 %i.gy, label %bb.bq, label %.thread.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i133: ; preds = %bb.bp
  br i1 %i.gy, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i134

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i138
  %i.gz = load i64, ptr %i.bw, align 8, !tbaa !106 ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.ha)
  switch i64 %i.gz, label %bb.bs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i136
    i64 1, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !105
  store i8 %i.hb, ptr %i.gv, align 1, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i136

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gx, i64 %i.gz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i136: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.hc = load i64, ptr %i.bw, align 8, !tbaa !106 ; 2 uses
  store i64 %i.hc, ptr %i.bk, align 8, !tbaa !106
  %i.hd = load ptr, ptr %15, align 8, !tbaa !104
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  store i8 0, ptr %i.he, align 1, !tbaa !105
  %.pre.i137 = load ptr, ptr %20, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit140

.thread.i139:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i138
  store ptr %i.gx, ptr %15, align 8, !tbaa !104
  %i.hf = load <2 x i64>, ptr %i.bw, align 8, !tbaa !105
  store <2 x i64> %i.hf, ptr %i.bk, align 8, !tbaa !105
  br label %bb.bu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i134: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i133
  %i.hg = load i64, ptr %i.bj, align 8, !tbaa !105
  store ptr %i.gx, ptr %15, align 8, !tbaa !104
  %i.hh = load <2 x i64>, ptr %i.bw, align 8, !tbaa !105
  store <2 x i64> %i.hh, ptr %i.bk, align 8, !tbaa !105
  %.not.i135 = icmp eq ptr %i.gv, null
  br i1 %.not.i135, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i134
  store ptr %i.gv, ptr %20, align 8, !tbaa !104
  store i64 %i.hg, ptr %i.bv, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit140

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i134, %.thread.i139
  store ptr %i.bv, ptr %20, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i136, %bb.bt, %bb.bu
  %i.hi = phi ptr [ %.pre.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i136 ], [ %i.gv, %bb.bt ], [ %i.bv, %bb.bu ]
  store i64 0, ptr %i.bw, align 8, !tbaa !106
  store i8 0, ptr %i.hi, align 1, !tbaa !105
  %i.hj = load ptr, ptr %20, align 8, !tbaa !104  ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.bv
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit140
  %i.hl = load i64, ptr %i.bv, align 8, !tbaa !105
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.hn = load ptr, ptr %21, align 8, !tbaa !158  ; 3 uses
  %i.ho = load ptr, ptr %i.bx, align 8, !tbaa !150 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hn, %i.ho
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #26
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hp, %i.ho
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.hq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.hr = load ptr, ptr %i.by, align 8, !tbaa !151
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hu) #25
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.hv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN6casadi2MXESaISB_EEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit145: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !185 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !185 ; 2 uses
  %.not360380 = icmp eq ptr %i.hw, %i.hy
  br i1 %.not360380, label %._crit_edge, label %.lr.ph382

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit153, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6casadi2MXESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.hz = invoke noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0340.0388)
          to label %bb.cc unwind label %bb.cm     ; 2 uses

bb.bw:                                            ; preds = %bb.bm
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body131

bb.bx:                                            ; preds = %_ZN6casadi11vector_initINS_2MXEEESt6vectorIT_SaIS3_EERKS5_.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #26
  br label %.body131

.body131:                                         ; preds = %bb.bw, %bb.bo, %bb.bx
end_hunk_0
