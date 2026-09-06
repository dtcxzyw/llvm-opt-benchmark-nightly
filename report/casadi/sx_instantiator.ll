Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_instantiator?download=true
inline.NumInlined: 12553
inline.NumDeleted: 2538
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN6casadi6MatrixINS_6SXElemEE10substituteERKSt6vectorIS2_SaIS2_EES7_S7_:bb.a
bb.br:                                            ; preds = %.critedge137
  %i.ou = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i8 1, ptr %i.e, align 1, !tbaa !186
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA11_KcbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ou, ptr noundef nonnull align 1 dereferenceable(11) @.str.240, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %.lr.ph.i.i unwind label %.loopexit.loopexit

.lr.ph.i.i:                                       ; preds = %bb.br
  %i.ov = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 5 uses
  store i32 0, ptr %i.ov, align 8, !tbaa !152
  %i.ow = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store ptr null, ptr %i.ow, align 8, !tbaa !153
  %i.ox = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.ov, ptr %i.ox, align 8, !tbaa !154
  %i.oy = getelementptr inbounds nuw i8, ptr %30, i64 32
  store ptr %i.ov, ptr %i.oy, align 8, !tbaa !155
  %i.oz = getelementptr inbounds nuw i8, ptr %30, i64 40
  store i64 0, ptr %i.oz, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %30, ptr %4, align 8, !tbaa !232
  %i.pa = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr nonnull %i.ov, ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i253 unwind label %bb.bs ; 0 uses

.noexc.i253:                                      ; preds = %.lr.ph.i.i
  %i.pb = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr nonnull %i.ov, ptr noundef nonnull align 8 dereferenceable(40) %i.ou, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i253.1 unwind label %bb.bs ; 0 uses

.noexc.i253.1:                                    ; preds = %.noexc.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  invoke void @_ZN6casadi8FunctionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_6MatrixINS_6SXElemEEESaISC_EESG_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SI_EEE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %30)
          to label %bb.bt unwind label %bb.bx

bb.bs:                                            ; preds = %.noexc.i253, %.lr.ph.i.i
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #30
  br label %.body

bb.bt:                                            ; preds = %.noexc.i253.1
  %i.pd = load ptr, ptr %i.ow, align 8, !tbaa !153
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.pd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.preheader unwind label %bb.bu

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.preheader: ; preds = %bb.bt
  %i.pe = getelementptr inbounds nuw i8, ptr %31, i64 72
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pe)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.pf = landingpad { ptr, i32 }
          catch ptr null
  %i.pg = extractvalue { ptr, i32 } %i.pf, 0
  call void @__clang_call_terminate(ptr %i.pg) #27
  unreachable

bb.bv:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.preheader
  %i.ph = landingpad { ptr, i32 }
          catch ptr null
  %i.pi = extractvalue { ptr, i32 } %i.ph, 0
  call void @__clang_call_terminate(ptr %i.pi) #27
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.preheader
  %i.pj = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !66 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %31, i64 56 ; 2 uses
  %i.pm = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pm, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !67
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %31, i64 32
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pp)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1 unwind label %bb.bv

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit
  %i.pq = load ptr, ptr %31, align 8, !tbaa !66   ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ps = icmp eq ptr %i.pq, %i.pr
  br i1 %i.ps, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1
  %i.pt = load i64, ptr %i.pr, align 8, !tbaa !67
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pu) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  %i.pv = load ptr, ptr %29, align 8, !tbaa !66   ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.or
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1
  %i.px = load i64, ptr %i.or, align 8, !tbaa !67
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  invoke void @_ZNK6casadi8FunctionclERKSt6vectorINS_6MatrixINS_6SXElemEEESaIS4_EE(ptr dead_on_unwind writable sret(%"class.std::vector.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.ca

.thread:                                          ; preds = %.critedge137
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %.loopexit

bb.bx:                                            ; preds = %.noexc.i253.1
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #30
  br label %.body

.body:                                            ; preds = %bb.bs, %bb.bx
  %.pn125 = phi { ptr, i32 } [ %i.qa, %bb.bx ], [ %i.pc, %bb.bs ]
  %i.qb = getelementptr inbounds nuw i8, ptr %31, i64 40
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.qb) #30
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.br
  %i.qc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %31) #30
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.body, %.thread
  %.pn125.pn.pn284 = phi { ptr, i32 } [ %i.pz, %.thread ], [ %.pn125, %.body ], [ %i.qc, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  %i.qd = load ptr, ptr %29, align 8, !tbaa !66   ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.or
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %.loopexit
  %i.qf = load i64, ptr %i.or, align 8, !tbaa !67
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.bz

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #30
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %.pn130 = phi { ptr, i32 } [ %i.qh, %bb.by ], [ %.pn125.pn.pn284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.cb

bb.ca:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, %bb.bw, %.critedge135
  ret void

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %bb.bp, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %.pn130.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn130, %bb.bz ], [ %.pn121, %bb.at ], [ %.pn107.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn270, %bb.bp ], [ %.pn107.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn107.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ]
  resume { ptr, i32 } %.pn130.pn.pn

bb.cc:                                            ; preds = %bb.be
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !125    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN6casadi6MatrixINS0_6SXElemEEEE8allocateEmPKv.exit.i.i.i, !prof !58

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN6casadi6MatrixINS0_6SXElemEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6casadi6MatrixINS0_6SXElemEEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6casadi6MatrixINS0_6SXElemEEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !125
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !124
  %i.m = load ptr, ptr %1, align 8, !tbaa !121    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixINS2_6SXElemEEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixINS2_6SXElemEEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !22

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #30 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #28
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixINS2_6SXElemEEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !123
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #31
  br label %_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

declare void @_ZNK6casadi8FunctionclERKSt6vectorINS_6MatrixINS_6SXElemEEESaIS4_EE(ptr dead_on_unwind writable sret(%"class.std::vector.36") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi6MatrixINS_6SXElemEE10substituteERKS2_S4_S4_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.36", align 8    ; 10 uses
  %5 = alloca %"class.std::vector.36", align 8    ; 13 uses
  %6 = alloca [1 x %"class.casadi::Matrix"], align 8 ; 10 uses
  %7 = alloca %"class.std::vector.36", align 8    ; 13 uses
  %8 = alloca [1 x %"class.casadi::Matrix"], align 8 ; 10 uses
  %9 = alloca %"class.std::vector.36", align 8    ; 13 uses
  %10 = alloca [1 x %"class.casadi::Matrix"], align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc unwind label %.body117.thread ; 5 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.a, ptr %5, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !124
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.b

_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.h unwind label %bb.ar

bb.b:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #30 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_rethrow() #28
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body117 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

.body117.thread:                                  ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body117:                                         ; preds = %bb.d
  %.pre = load ptr, ptr %5, align 8, !tbaa !125   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %.body117
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %.pre to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.p) #31
  br label %.body

bb.h:                                             ; preds = %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc124 unwind label %bb.n  ; 5 uses

.noexc124:                                        ; preds = %bb.h
  store ptr %i.q, ptr %7, align 8, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !124
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i122 unwind label %bb.i

_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i122: ; preds = %.noexc124
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.p unwind label %bb.as

bb.i:                                             ; preds = %.noexc124
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #30 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_(ptr noundef nonnull %i.q, ptr noundef nonnull %i.q)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_rethrow() #28
          to label %bb.m unwind label %bb.k
end_hunk_0
begin_hunk_1_@_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE6jtimesERKS3_S6_S6_bRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessISD_ESaISt4pairIKSD_SE_EEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %bb.cb
  %.9186 = phi i1 [ true, %bb.cb ], [ %.8185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ %.8185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gx, %bb.cb ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #30
  %i.ja = load ptr, ptr %39, align 8, !tbaa !66   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !67
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373, %bb.ca
  %.10187 = phi i1 [ true, %bb.ca ], [ %.9186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %.9186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gw, %bb.ca ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ] ; 4 uses
  %i.jf = load ptr, ptr %40, align 8, !tbaa !66   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !67
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  %i.jk = load ptr, ptr %41, align 8, !tbaa !66   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.thread: ; preds = %bb.bp
  %i.jn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.jo = load ptr, ptr %41, align 8, !tbaa !66   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %.sink.split935.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.thread
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !67
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #31
  br label %.sink.split935.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  %i.jt = load i64, ptr %i.jl, align 8, !tbaa !67
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.ju) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br i1 %.10187, label %bb.cl, label %bb.gd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br i1 %.10187, label %bb.cl, label %bb.gd

.sink.split935.a:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn676.ph = phi { ptr, i32 } [ %i.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379.thread ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381.thread ], [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split935.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn676 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn676.ph, %.sink.split935.a ]
  call void @__cxa_free_exception(ptr %i.gu) #30
  br label %bb.gd

bb.cm:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit277, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit278, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit280
  %i.jv = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit382 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit382: ; preds = %bb.cm
  %i.jw = icmp sgt i64 %i.jv, 0
  br i1 %i.jw, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit382
  %i.jx = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit383 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit383: ; preds = %bb.cn
  %i.jy = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit384 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit384: ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit383
  %i.jz = sdiv i64 %i.jx, %i.jy
  br label %bb.cr

bb.co:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit389, %bb.cw, %bb.cv, %bb.cu, %bb.cs, %bb.cr, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit386, %bb.cq, %bb.cp, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit383, %bb.cn, %bb.cm, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit391
  %i.ka = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.gd

bb.cp:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit343, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit341, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit340
  %i.kb = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit385 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit385: ; preds = %bb.cp
  %i.kc = icmp sgt i64 %i.kb, 0
  br i1 %i.kc, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit385
  %i.kd = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.gi)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit386 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit386: ; preds = %bb.cq
  %i.ke = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit387 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit387: ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit386
  %i.kf = sdiv i64 %i.kd, %i.ke
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit385, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit387, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit382, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit384
  %.0190 = phi i64 [ %i.jz, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit384 ], [ 1, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit382 ], [ %i.kf, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit387 ], [ 1, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit385 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kh = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit: ; preds = %bb.cr
  br i1 %i.kh, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.kj = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit388 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit388: ; preds = %bb.cs
  br i1 %i.kj, label %bb.ct, label %.invoke

bb.ct:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit388, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit
  br i1 %4, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.kl = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kk)
          to label %bb.cw unwind label %bb.co

bb.cv:                                            ; preds = %bb.ct
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.kn = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.km)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit389 unwind label %bb.co

bb.cw:                                            ; preds = %bb.cu
  %i.ko = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kk)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit391 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit389: ; preds = %bb.cv
  %i.kp = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.km)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit391 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit391: ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit389, %bb.cw
  %i.kq = phi i64 [ %i.kl, %bb.cw ], [ %i.kn, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit389 ]
  %.pn239 = phi i64 [ %i.ko, %bb.cw ], [ %i.kp, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit389 ]
  %i.kr = mul nsw i64 %.pn239, %.0190
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1Exx(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.kq, i64 noundef %i.kr)
          to label %bb.gc unwind label %bb.co

.invoke:                                          ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit388
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kt = select i1 %4, ptr %i.ki, ptr %i.ks
  %i.ku = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kt)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit393 unwind label %bb.cz

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit393: ; preds = %.invoke
  invoke void @_ZN6casadi17SparsityInterfaceINS_6MatrixINS_6SXElemEEEE9horzsplitERKS3_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.36") align 8 %52, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %i.ku)
          to label %_ZN6casadi9horzsplitERKNS_6MatrixINS_6SXElemEEEx.exit unwind label %bb.cz

_ZN6casadi9horzsplitERKNS_6MatrixINS_6SXElemEEEx.exit: ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit393
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #30
  %i.kv = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 6 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !123 ; 2 uses
  %i.kx = load ptr, ptr %52, align 8, !tbaa !125  ; 2 uses
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 2 uses
  %i.lb = sdiv exact i64 %i.la, 40                ; 2 uses
  %76 = icmp slt i64 %i.la, 0
  br i1 %76, label %bb.cx, label %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.cx:                                            ; preds = %_ZN6casadi9horzsplitERKNS_6MatrixINS_6SXElemEEEx.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.481) #28
          to label %.noexc unwind label %bb.da

.noexc:                                           ; preds = %bb.cx
  unreachable

_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %_ZN6casadi9horzsplitERKNS_6MatrixINS_6SXElemEEEx.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %53, i64 16
  br label %._crit_edge

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.le = mul nuw nsw i64 %i.lb, 24               ; 3 uses
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #29
          to label %bb.cy unwind label %bb.da     ; 4 uses

bb.cy:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.lf, ptr %53, align 8, !tbaa !166
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.lf, i64 %i.lb
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lf, i8 0, i64 %i.le, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.lf, i64 %i.le
  %.pre = load ptr, ptr %i.kv, align 8, !tbaa !123
  %.pre735 = load ptr, ptr %52, align 8, !tbaa !125 ; 2 uses
  %i.lh = icmp eq ptr %.pre, %.pre735
  %i.li = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 3 uses
  store ptr %i.lg, ptr %i.lj, align 8, !tbaa !368
  store ptr %scevgep.i.i.i.i.i, ptr %i.li, align 8, !tbaa !165
  br i1 %i.lh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cy
  %i.lk = getelementptr inbounds nuw i8, ptr %54, i64 40
  %i.ll = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.ln = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %54, i64 8
  br label %bb.db

._crit_edge:                                      ; preds = %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit, %.thread, %bb.cy
  %i.lp = phi ptr [ %i.ld, %.thread ], [ %i.lj, %bb.cy ], [ %i.lj, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ] ; 5 uses
  %i.lq = phi ptr [ %i.lc, %.thread ], [ %i.li, %bb.cy ], [ %i.li, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ] ; 5 uses
  br i1 %4, label %bb.dg, label %bb.em

bb.cz:                                            ; preds = %.invoke, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit393
  %i.lr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.gb

bb.da:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cx
  %i.ls = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ga

bb.db:                                            ; preds = %.lr.ph, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit
  %i.lt = phi ptr [ %.pre735, %.lr.ph ], [ %i.mj, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ]
  %.0191722 = phi i64 [ 0, %.lr.ph ], [ %i.mh, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #30
  %i.lu = getelementptr inbounds nuw [40 x i8], ptr %i.lt, i64 %.0191722
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %54, ptr noundef nonnull align 8 dereferenceable(40) %i.lu)
          to label %bb.dc unwind label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.lv = load ptr, ptr %53, align 8, !tbaa !166
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %.0191722
  invoke void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, ptr noundef nonnull %54, ptr noundef nonnull %i.lk)
          to label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %.loopexit.loopexit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.dc
  %i.lx = load ptr, ptr %i.ll, align 8, !tbaa !57 ; 3 uses
  %i.ly = load ptr, ptr %i.lm, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.lx, %i.ly
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.lz, %.lr.ph.i.i.i.i ], [ %i.lx, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #30
  %i.lz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i397 = icmp eq ptr %i.lz, %i.ly
  br i1 %.not.i.i.i.i397, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ll, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.ma = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.lx, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.mb = load ptr, ptr %i.ln, align 8, !tbaa !59
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.ma to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.me) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i: ; preds = %bb.dd, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lo)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit unwind label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  %i.mf = landingpad { ptr, i32 }
          catch ptr null
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  call void @__clang_call_terminate(ptr %i.mg) #27
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit:          ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  %i.mh = add nuw nsw i64 %.0191722, 1            ; 2 uses
  %i.mi = load ptr, ptr %i.kv, align 8, !tbaa !123
  %i.mj = load ptr, ptr %52, align 8, !tbaa !125  ; 2 uses
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = sdiv exact i64 %i.mm, 40
  %i.mo = icmp ult i64 %i.mh, %i.mn
  br i1 %i.mo, label %bb.db, label %._crit_edge, !llvm.loop !1775

bb.df:                                            ; preds = %bb.db
  %i.mp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.dc
  %i.mq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %54) #30
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.df
  %.pn234 = phi { ptr, i32 } [ %i.mp, %bb.df ], [ %i.mq, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  br label %bb.fz

bb.dg:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #30
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.dh unwind label %bb.ej

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  %i.mr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc601 unwind label %bb.dn ; 5 uses

.noexc601:                                        ; preds = %bb.dh
  store ptr %i.mr, ptr %56, align 8, !tbaa !125
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  store ptr %i.ms, ptr %i.mt, align 8, !tbaa !124
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.mr, ptr noundef nonnull align 8 dereferenceable(40) %57)
          to label %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.di

_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc601
  %i.mu = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  store ptr %i.ms, ptr %i.mu, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.dp unwind label %bb.ek

bb.di:                                            ; preds = %.noexc601
  %i.mv = landingpad { ptr, i32 }
          catch ptr null
  %i.mw = extractvalue { ptr, i32 } %i.mv, 0
  %i.mx = call ptr @__cxa_begin_catch(ptr %i.mw) #30 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_(ptr noundef nonnull %i.mr, ptr noundef nonnull %i.mr)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  invoke void @__cxa_rethrow() #28
          to label %bb.dm unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.my = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  invoke void @__cxa_end_catch()
          to label %.body602 unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #27
end_hunk_1
begin_hunk_2_@_ZN6casadi17SparsityInterfaceINS_6MatrixINS_6SXElemEEEE9horzsplitERKS3_x:bb.a
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.k ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !67
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %i.an = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread
  %i.au = load i64, ptr %i.as, align 8, !tbaa !67
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !67
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ax) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.5, label %bb.q, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.5, label %bb.q, label %bb.ab

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread
  %.pn.pn.pn.pn.pn.pn.pn57.ph = phi { ptr, i32 } [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn.pn.pn.pn.pn.pn.pn57 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn.pn.pn.pn.pn.pn.pn57.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @_ZN6casadi5rangeExxxx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.28") align 8 %13, i64 noundef 0, i64 noundef %i.az, i64 noundef %2, i64 noundef 9223372036854775807)
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !103 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !102
  %.not.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !84
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !103
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.t:                                             ; preds = %bb.r
  %i.bf = load ptr, ptr %13, align 8, !tbaa !101  ; 4 uses
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.u, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.483) #28
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc50 unwind label %bb.z   ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store i64 %i.az, ptr %i.br, align 8, !tbaa !84
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.v, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.v:                                             ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.v, %.noexc50
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bw) #31
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  store ptr %i.bq, ptr %13, align 8, !tbaa !101
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !103
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bx, ptr %i.bc, align 8, !tbaa !102
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

_ZNSt6vectorIxSaIxEE9push_backERKx.exit:          ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, %bb.s
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE9horzsplitERKS2_RKSt6vectorIxSaIxEE(ptr dead_on_unwind writable sret(%"class.std::vector.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %i.by = load ptr, ptr %13, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #31
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  ret void

bb.z:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i, %bb.u, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %13, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIxSaIxEED2Ev.exit53, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #31
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit53

_ZNSt6vectorIxSaIxEED2Ev.exit53:                  ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.q, %_ZNSt6vectorIxSaIxEED2Ev.exit53
  %.pn30 = phi { ptr, i32 } [ %i.cd, %_ZNSt6vectorIxSaIxEED2Ev.exit53 ], [ %.pn.pn.pn.pn.pn.pn.pn57, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ]
  resume { ptr, i32 } %.pn30

bb.ac:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %3 = udiv exact i64 %i.c, 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.f = load ptr, ptr %0, align 8, !tbaa !125    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.481) #28
  unreachable

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit: ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %3, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !123  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i ], [ %i.m, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i ] ; 2 uses
  tail call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #30
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.u = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !125
  br label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.ae = phi ptr [ %.pr, %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exitthread-pre-split ], [ %i.m, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit, %bb.f
  store ptr %i.l, ptr %0, align 8, !tbaa !125
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !123
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !124
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !123 ; 3 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.an, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN6casadi6MatrixINS0_6SXElemEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i64 %i.c, 0
  br i1 %i.ao, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.h
  %i.ap = udiv exact i64 %i.c, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.aq) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.av = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6casadi6SXElemESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 2 uses
  %i.ay = add nsw i64 %.012.i.i.i.i.i, -1
  %i.az = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !36

_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !123
  br label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit, %bb.h
  %i.ba = phi ptr [ %i.al, %bb.h ], [ %.pre, %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.f, %bb.h ], [ %i.ax, %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 3 uses
  %.not.i16 = icmp eq ptr %i.ba, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i16, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bc, %.lr.ph.i.i.i ] ; 2 uses
  tail call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #30
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bg = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.bc, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !59
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #27
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, %i.ba
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !123
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZSt9__advanceIPKN6casadi6MatrixINS0_6SXElemEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.g
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.an ; 2 uses
  %i.bq = icmp sgt i64 %i.an, 0
  br i1 %i.bq, label %.lr.ph.preheader.i.i.i.i.i18, label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit23

.lr.ph.preheader.i.i.i.i.i18:                     ; preds = %_ZSt9__advanceIPKN6casadi6MatrixINS0_6SXElemEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.br = udiv exact i64 %i.an, 40
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19, %.lr.ph.preheader.i.i.i.i.i18
  %.012.i.i.i.i.i20 = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i19 ], [ %i.br, %.lr.ph.preheader.i.i.i.i.i18 ] ; 2 uses
  %.0811.i.i.i.i.i21 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i19 ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i18 ] ; 3 uses
  %.0910.i.i.i.i.i22 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i19 ], [ %1, %.lr.ph.preheader.i.i.i.i.i18 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 8
end_hunk_2
