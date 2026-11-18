Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvar_neuralnetworkcompute?download=true
inline.NumInlined: 1423
inline.NumDeleted: 629
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt8functionIFddEESA_EESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E:bb.a
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i:           ; preds = %bb.b, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i1.i.i.i.i, label %_ZNSt4pairISt8functionIFddEES2_ED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i32 noundef 3)
          to label %_ZNSt4pairISt8functionIFddEES2_ED2Ev.exit.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

_ZNSt4pairISt8functionIFddEES2_ED2Ev.exit.i.i.i:  ; preds = %bb.d, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt8functionIFddEESA_EESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt4pairISt8functionIFddEES2_ED2Ev.exit.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !29
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt8functionIFddEESA_EESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt8functionIFddEESA_EESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %_ZNSt4pairISt8functionIFddEES2_ED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 128) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt8functionIFddEESA_EESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN15neuralnetworkCV10denseLayerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt8functionIFddEESD_(ptr noundef nonnull align 8 dereferenceable(128) initializes((16, 48)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFddEEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !37
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !37
  br label %_ZNSt8functionIFddEEC2ERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable

common.resume:                                    ; preds = %bb.q, %.body, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %.pn, %.body ], [ %.pn, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFddEEC2ERKS1_.exit:                ; preds = %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.not.i8 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.not.i8, label %_ZNSt8functionIFddEEC2ERKS1_.exit11, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFddEEC2ERKS1_.exit
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = load <2 x ptr>, ptr %i.n, align 8, !tbaa !37
  store <2 x ptr> %i.q, ptr %i.m, align 8, !tbaa !37
  br label %_ZNSt8functionIFddEEC2ERKS1_.exit11

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.s, null
  br i1 %.not.i.i9, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %.body unwind label %bb.k      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

_ZNSt8functionIFddEEC2ERKS1_.exit11:              ; preds = %bb.h, %_ZNSt8functionIFddEEC2ERKS1_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  invoke void @_ZN15neuralnetworkCV10denseLayer12readFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZNSt8functionIFddEEC2ERKS1_.exit11
  ret void

bb.m:                                             ; preds = %_ZNSt8functionIFddEEC2ERKS1_.exit11
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #30
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %.body, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %.body unwind label %bb.p      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #28
  unreachable

.body:                                            ; preds = %bb.o, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.x, %bb.o ], [ %i.r, %bb.j ], [ %i.x, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %.not.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i12, label %common.resume, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %common.resume unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN15neuralnetworkCV10denseLayer12readFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.68", align 8    ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.37", align 8    ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::vector.68", align 8   ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #29
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !53
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit:     ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %.not.i.i91 = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i91, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit
  store ptr %i.o, ptr %i.p, align 8, !tbaa !54
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !38
  store i8 0, ptr %i.r, align 8, !tbaa !29
  %i.t = invoke noundef ptr @_ZN12colvarmodule4mainEv()
          to label %._crit_edge.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.u = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 864 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @.str.7, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.y, align 4, !tbaa !29
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN14colvarproxy_io12input_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(224) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 %4, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.k       ; 7 uses

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.w
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.z, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i301 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i301, label %._crit_edge304.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 17
  br label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.as = phi ptr [ %i.aj, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph ], [ %i.hc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !126
  %.not.i1.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 67
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.as)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93:                                         ; preds = %bb.e
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !104
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.as, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !97

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc93, %bb.d
  %.0.i.i.i = phi i8 [ %i.aw, %bb.d ], [ %i.ba, %.noexc93 ]
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %.0.i.i.i)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !104
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !127
  %i.bi = and i32 %i.bh, 5
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.g, label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.z, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !127
  %i.bp = and i32 %i.bo, 5
  %.not244 = icmp eq i32 %i.bp, 0
  br i1 %.not244, label %._crit_edge.i.i102, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %bb.cj unwind label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.w
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.k
  %i.bu = load i64, ptr %i.w, align 8, !tbaa !29
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread: ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.036 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.l
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !29
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.036, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.036, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
end_hunk_0
begin_hunk_1_@_ZN15neuralnetworkCV10denseLayer12readFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp sgt i64 %i.dp, 8
  br i1 %i.dq, label %bb.u, label %bb.v, !prof !62

bb.u:                                             ; preds = %.noexc114
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dh, ptr align 8 %i.dl, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i

bb.v:                                             ; preds = %.noexc114
  %i.dr = icmp eq i64 %i.dp, 8
  br i1 %i.dr, label %bb.w, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ds = load double, ptr %i.dl, align 8, !tbaa !36
  store double %i.ds, ptr %i.dh, align 8, !tbaa !36
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i:              ; preds = %bb.w, %bb.v, %bb.u
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 %i.dp
  store ptr %i.dt, ptr %i.di, align 8, !tbaa !54
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %i.dv, ptr %i.e, align 8, !tbaa !53
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit

bb.x:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.x
  %.pre333 = load ptr, ptr %8, align 8, !tbaa !48
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit

bb.y:                                             ; preds = %._crit_edge.i.i102
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ak
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.y
  %i.dz = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.au

.loopexit.split-lp254.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit130

bb.z:                                             ; preds = %.lr.ph, %bb.ah
  %i.eb = phi i32 [ %.pre, %.lr.ph ], [ %i.er, %bb.ah ] ; 3 uses
  %i.ec = phi ptr [ %i.cw, %.lr.ph ], [ %i.ew, %bb.ah ]
  %.035300 = phi i64 [ 0, %.lr.ph ], [ %i.eu, %bb.ah ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %.035300
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.cx, align 4, !tbaa !128
  %i.ef = call noundef double @strtod(ptr noundef %i.ee, ptr noundef nonnull %i.b)
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.eh = icmp eq ptr %i.eg, %i.ee
  br i1 %i.eh, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.15) #33
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %.critedge.i.i, %bb.aa
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = load i32, ptr %i.cx, align 4, !tbaa !128
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ad, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.eb, ptr %i.cx, align 4, !tbaa !128
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.el = extractvalue { ptr, i32 } %i.ei, 0
  %i.em = call ptr @__cxa_begin_catch(ptr %i.el) #30 ; 0 uses
  %i.en = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.eo = load ptr, ptr %6, align 8, !tbaa !58
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %.035300
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread

bb.ae:                                            ; preds = %bb.z
  %i.eq = load i32, ptr %i.cx, align 4, !tbaa !128 ; 2 uses
  switch i32 %i.eq, label %bb.ah [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.ag
  ]

.critedge.i.i:                                    ; preds = %bb.ae
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.15) #33
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %.critedge.i.i
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store i32 %i.eb, ptr %i.cx, align 4, !tbaa !128
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag
  %i.er = phi i32 [ %i.eq, %bb.ae ], [ %i.eb, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.es = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.035300
  store double %i.ef, ptr %i.et, align 8, !tbaa !36
  %i.eu = add nuw i64 %.035300, 1                 ; 2 uses
  %i.ev = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ew = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 5
  %i.fb = icmp ult i64 %i.eu, %i.fa
  br i1 %i.fb, label %bb.z, label %._crit_edge, !llvm.loop !98

bb.ai:                                            ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.11)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.thread

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.en, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %bb.cj unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread: ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.am:                                            ; preds = %bb.aj
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.031 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.an
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !29
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.am
  %.pn80 = phi { ptr, i32 } [ %i.fd, %bb.am ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.fe, %bb.an ] ; 4 uses
  %.132 = phi i1 [ true, %bb.am ], [ %.031, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.031, %bb.an ] ; 2 uses
  %i.fk = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !29
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  %i.fp = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.thread: ; preds = %bb.ai
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.thread
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !29
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.fy = load i64, ptr %i.fq, align 8, !tbaa !29
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fz) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %.132, label %bb.ao, label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %.132, label %bb.ao, label %bb.ap

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread
  %.pn80.pn.pn213.ph = phi { ptr, i32 } [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %.pn80.pn.pn213 = phi { ptr, i32 } [ %.pn80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn80.pn.pn213.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.en) #30
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %.pn80.pn.pn212 = phi { ptr, i32 } [ %.pn80.pn.pn213, %bb.ao ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit.split-lp258 unwind label %bb.ci

_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i
  %i.ga = phi ptr [ %.pre333, %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.dl, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i ] ; 3 uses
  %.not.i.i.i128 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit
  %i.gb = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.ge) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.pre334 = load ptr, ptr %6, align 8, !tbaa !58
  %.pre335 = load ptr, ptr %i.am, align 8, !tbaa !57
  br label %bb.as

.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp480 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp258

.loopexit.split-lp258:                            ; preds = %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn212, %bb.ap ], [ %lpad.loopexit.split-lp480, %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.gf = load ptr, ptr %8, align 8, !tbaa !48    ; 3 uses
  %.not.i.i.i129 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIdSaIdEED2Ev.exit130, label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp258
  %i.gg = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gj) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit130

_ZNSt6vectorIdSaIdEED2Ev.exit130:                 ; preds = %.loopexit.split-lp254.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar, %.loopexit.split-lp258
  %.pn80.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn, %bb.ar ], [ %.pn80.pn.pn.pn, %.loopexit.split-lp258 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp254.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.au

bb.as:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.gk = phi ptr [ %.pre335, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ] ; 2 uses
  %i.gl = phi ptr [ %.pre334, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.gl, %i.gk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.as, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gl, %bb.as ] ; 3 uses
  %i.gm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !28 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !29
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i131 = icmp eq ptr %i.gr, %i.gk
  br i1 %.not.i.i.i131, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.as
  %i.gs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gl, %bb.as ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gt = load ptr, ptr %i.aq, align 8, !tbaa !63
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gx = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.gy = getelementptr i8, ptr %i.gx, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %i.z, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 240
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i, label %._crit_edge304.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, !llvm.loop !99

bb.au:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %.pn80.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit130 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.av:                                            ; preds = %bb.f
  %i.hd = invoke noundef i32 @_ZN14colvarproxy_io18close_input_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %._crit_edge.i.i132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.i.i132:                               ; preds = %bb.av
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.he, ptr %12, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.he, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, i64 11, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 11, ptr %i.hf, align 8, !tbaa !38
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 27
  store i8 0, ptr %i.hg, align 1, !tbaa !29
  %i.hh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN14colvarproxy_io12input_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(224) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 %12, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.be     ; 7 uses

bb.aw:                                            ; preds = %._crit_edge.i.i132
  %i.hi = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.he
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.aw
  %i.hk = load i64, ptr %i.he, align 8, !tbaa !29
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  %i.hm = load ptr, ptr %i.hh, align 8, !tbaa !104
  %i.hn = getelementptr i8, ptr %i.hm, i64 -24
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds i8, ptr %i.hh, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 240
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i139303 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i139303, label %._crit_edge304.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140.lr.ph

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140.lr.ph: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %15, i64 17
  br label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140

._crit_edge304.invoke:                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt16__throw_bad_castv() #33
          to label %._crit_edge304.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge304.cont:                              ; preds = %._crit_edge304.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit195
  %i.hy = phi ptr [ %i.hr, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140.lr.ph ], [ %i.mu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit195 ] ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !126
  %.not.i1.i.i141 = icmp eq i8 %i.ia, 0
  br i1 %.not.i1.i.i141, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 67
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i142

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hy)
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %bb.ay
  %i.id = load ptr, ptr %i.hy, align 8, !tbaa !104
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = invoke noundef signext i8 %i.if(ptr noundef nonnull align 8 dereferenceable(570) %i.hy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !97

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i142: ; preds = %.noexc145, %bb.ax
  %.0.i.i.i143 = phi i8 [ %i.ic, %bb.ax ], [ %i.ig, %.noexc145 ]
  %i.ih = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %.0.i.i.i143)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.az:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i142
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !104
  %i.ij = getelementptr i8, ptr %i.ii, i64 -24
  %i.ik = load i64, ptr %i.ij, align 8
end_hunk_1
begin_hunk_2_@_ZN15neuralnetworkCV10denseLayer12readFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %.critedge.i.i163, %bb.bj
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = load i32, ptr %i.jq, align 4, !tbaa !128
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.bm, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i164

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !128
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i164

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i164: ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.jy = extractvalue { ptr, i32 } %i.jv, 0
  %i.jz = call ptr @__cxa_begin_catch(ptr %i.jy) #30 ; 0 uses
  %i.ka = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.kb = load ptr, ptr %14, align 8, !tbaa !58
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %i.kb)
          to label %bb.bx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.thread

bb.bn:                                            ; preds = %bb.bi
  %i.kc = load i32, ptr %i.jq, align 4, !tbaa !128
  switch i32 %i.kc, label %bb.bq [
    i32 34, label %.critedge.i.i163
    i32 0, label %bb.bp
  ]

.critedge.i.i163:                                 ; preds = %bb.bn
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.15) #33
          to label %bb.bo unwind label %bb.bl

bb.bo:                                            ; preds = %.critedge.i.i163
  unreachable

bb.bp:                                            ; preds = %bb.bn
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !128
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bn, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.kd = load ptr, ptr %i.p, align 8, !tbaa !54  ; 4 uses
  %i.ke = load ptr, ptr %i.hv, align 8, !tbaa !49
  %.not.i168 = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i168, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store double %i.js, ptr %i.kd, align 8, !tbaa !36
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %i.kf, ptr %i.p, align 8, !tbaa !54
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.bs:                                            ; preds = %bb.bq
  %i.kg = load ptr, ptr %i.n, align 8, !tbaa !48  ; 4 uses
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = ptrtoint ptr %i.kg to i64               ; 2 uses
  %i.kj = sub i64 %i.kh, %i.ki                    ; 5 uses
  %i.kk = icmp eq i64 %i.kj, 9223372036854775800
  br i1 %i.kk, label %bb.bt, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #33
          to label %.noexc170 unwind label %.loopexit.split-lp246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bs
  %i.kl = ashr exact i64 %i.kj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.kl, i64 1)
  %i.km = add nsw i64 %.sroa.speculated.i.i.i, %i.kl ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.kl
  %i.ko = call i64 @llvm.umin.i64(i64 %i.km, i64 1152921504606846975)
  %i.kp = select i1 %i.kn, i64 1152921504606846975, i64 %i.ko ; 3 uses
  %.not.i.i.i169 = icmp ne i64 %i.kp, 0
  call void @llvm.assume(i1 %.not.i.i.i169)
  %i.kq = shl nuw nsw i64 %i.kp, 3
  %i.kr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #31
          to label %.noexc171 unwind label %.loopexit.split-lp246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc171:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %i.kj ; 2 uses
  store double %i.js, ptr %i.ks, align 8, !tbaa !36
  %i.kt = icmp sgt i64 %i.kj, 0
  br i1 %i.kt, label %bb.bu, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.bu:                                            ; preds = %.noexc171
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kr, ptr align 8 %i.kg, i64 %i.kj, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.bu, %.noexc171
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %.not.i17.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.kv = load ptr, ptr %i.hv, align 8, !tbaa !49
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = sub i64 %i.kw, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kx) #29
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.bv, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.kr, ptr %i.n, align 8, !tbaa !48
  store ptr %i.ku, ptr %i.p, align 8, !tbaa !54
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kp
  store ptr %i.ky, ptr %i.hv, align 8, !tbaa !49
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.bw:                                            ; preds = %._crit_edge.i.i156
  %i.kz = landingpad { ptr, i32 }
          cleanup
  %i.la = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.hs
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.bw
  %i.lc = load i64, ptr %i.hs, align 8, !tbaa !29
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.loopexit.split-lp246

bb.bx:                                            ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i164
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.11)
          to label %bb.by unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.thread

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_throw(ptr nonnull %i.ka, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %bb.cj unwind label %bb.cc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.thread: ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i164
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split433

bb.cb:                                            ; preds = %bb.by
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.0 = phi i1 [ false, %bb.ca ], [ true, %bb.bz ] ; 2 uses
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lh = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.cc
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !29
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.cb
  %.pn67 = phi { ptr, i32 } [ %i.lf, %bb.cb ], [ %i.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.lg, %bb.cc ] ; 4 uses
  %.1 = phi i1 [ true, %bb.cb ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.0, %bb.cc ] ; 2 uses
  %i.lm = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !29
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  %i.lr = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.thread: ; preds = %bb.bx
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %.sink.split433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.thread
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !29
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lz) #29
  br label %.sink.split433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.ma = load i64, ptr %i.ls, align 8, !tbaa !29
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.mb) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br i1 %.1, label %bb.cd, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br i1 %.1, label %bb.cd, label %bb.ce

.sink.split433:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.thread
  %.pn67.pn.pn229.ph = phi { ptr, i32 } [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.thread ], [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.thread ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.pn67.pn.pn229 = phi { ptr, i32 } [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn67.pn.pn229.ph, %.sink.split433 ]
  call void @__cxa_free_exception(ptr %i.ka) #30
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.pn67.pn.pn228 = phi { ptr, i32 } [ %.pn67.pn.pn229, %bb.cd ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit.split-lp246 unwind label %bb.ci

.loopexit.split-lp246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %bb.bt
  %lpad.loopexit.split-lp465 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp246

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %bb.br, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.mc = load ptr, ptr %14, align 8, !tbaa !58   ; 3 uses
  %i.md = load ptr, ptr %i.hu, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i184 = icmp eq ptr %i.mc, %i.md
  br i1 %.not4.i.i.i184, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i192, label %.lr.ph.i.i.i185

.lr.ph.i.i.i185:                                  ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i188
  %.05.i.i.i186 = phi ptr [ %i.mj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i188 ], [ %i.mc, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.me = load ptr, ptr %.05.i.i.i186, align 8, !tbaa !28 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.05.i.i.i186, i64 16 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i187: ; preds = %.lr.ph.i.i.i185
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !29
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i188

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i188: ; preds = %.lr.ph.i.i.i185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i187
  %i.mj = getelementptr inbounds nuw i8, ptr %.05.i.i.i186, i64 32 ; 2 uses
  %.not.i.i.i189 = icmp eq ptr %i.mj, %i.md
  br i1 %.not.i.i.i189, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i190, label %.lr.ph.i.i.i185, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i190: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i188
  %.pr.i191 = load ptr, ptr %14, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i192

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i192: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i190, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.mk = phi ptr [ %.pr.i191, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i190 ], [ %i.mc, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %.not.i.i1.i193 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i1.i193, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit195, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i192
  %i.ml = load ptr, ptr %i.hw, align 8, !tbaa !63
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mk to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.mo) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit195

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit195: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i192, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.mp = load ptr, ptr %i.hh, align 8, !tbaa !104
  %i.mq = getelementptr i8, ptr %i.mp, i64 -24
  %i.mr = load i64, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds i8, ptr %i.hh, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 240
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i139, label %._crit_edge304.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140, !llvm.loop !100

.loopexit.split-lp246:                            ; preds = %.loopexit.split-lp246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %.pn71.pn = phi { ptr, i32 } [ %i.kz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %.pn67.pn.pn228, %bb.ce ], [ %lpad.loopexit.split-lp465, %.loopexit.split-lp246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.cg:                                            ; preds = %bb.az
  %i.mv = invoke noundef i32 @_ZN14colvarproxy_io18close_input_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ch:                                            ; preds = %bb.cg
  %i.mw = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !54
  %i.mz = load ptr, ptr %i.mw, align 8, !tbaa !48
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 3
  store i64 %i.nd, ptr %0, align 8, !tbaa !72
  %i.ne = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = ptrtoint ptr %i.mw to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = sdiv exact i64 %i.nh, 24
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ni, ptr %i.nj, align 8, !tbaa !73
  %i.nk = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.r
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.ch
  %i.nm = load i64, ptr %i.r, align 8, !tbaa !29
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.nn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.be, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.au, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.bg, %.loopexit.split-lp246
  %.pn87.pn.pn = phi { ptr, i32 } [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %.pn87209, %bb.m ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn80.pn.pn.pn.pn.pn, %bb.au ], [ %i.br, %bb.k ], [ %.pn71.pn, %.loopexit.split-lp246 ], [ %.pn74225, %bb.bg ], [ %i.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %i.ix, %bb.be ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %lpad.loopexit.split-lp475, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.no = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.r
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.nq = load i64, ptr %i.r, align 8, !tbaa !29
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn87.pn.pn

bb.ci:                                            ; preds = %bb.ce, %bb.ap
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #28
  unreachable

bb.cj:                                            ; preds = %bb.ca, %bb.bd, %bb.al, %bb.j
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !48 ; 3 uses
end_hunk_2
