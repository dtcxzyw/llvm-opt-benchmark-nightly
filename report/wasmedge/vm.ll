Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/vm?download=true
inline.NumInlined: 28114
inline.NumDeleted: 15480
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8WasmEdge4Host33WasmEdgeStableDiffusionModuleMockC2Ev:bb.a
  %.not.i31 = icmp eq ptr %i.t, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock12ImageToImageESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i32

_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i32: ; preds = %bb.j
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(160) %i.t) #27, !inline_history !48
  br label %_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock12ImageToImageESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock12ImageToImageESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i32, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.x = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc36 unwind label %bb.v   ; 8 uses

.noexc36:                                         ; preds = %_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock12ImageToImageESt14default_deleteIS3_EED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.x, i8 0, i64 160, i1 false), !noalias !3182
  call void @_ZN8WasmEdge7Runtime16HostFunctionBaseC2Em(ptr noundef nonnull align 8 dereferenceable(160) %i.x, i64 noundef 0), !noalias !3182
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8WasmEdge7Runtime12HostFunctionINS_4Host27WasmEdgeStableDiffusionMock7ConvertEEE, i64 16), ptr %i.x, align 16, !tbaa !191, !noalias !3182
  invoke void @_ZN8WasmEdge7Runtime12HostFunctionINS_4Host27WasmEdgeStableDiffusionMock7ConvertEE18initializeFuncTypeEv(ptr noundef nonnull align 8 dereferenceable(160) %i.x)
          to label %bb.k unwind label %.body.i35, !noalias !3182

.body.i35:                                        ; preds = %.noexc36
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7Runtime16HostFunctionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.x) #27, !noalias !3182
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 160) #30, !noalias !3182
  br label %.body37

bb.k:                                             ; preds = %.noexc36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8WasmEdge4Host27WasmEdgeStableDiffusionMock7ConvertE, i64 16), ptr %i.x, align 16, !tbaa !191, !noalias !3182
  store ptr %i.x, ptr %5, align 8, !tbaa !870
  invoke void @_ZN8WasmEdge7Runtime8Instance14ModuleInstance11addHostFuncESt17basic_string_viewIcSt11char_traitsIcEEOSt10unique_ptrINS0_16HostFunctionBaseESt14default_deleteIS8_EE(ptr noundef nonnull align 8 dereferenceable(952) %0, i64 7, ptr nonnull @.str.336, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %5, align 8, !tbaa !769    ; 3 uses
  %.not.i39 = icmp eq ptr %i.z, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock7ConvertESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i40

_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i40: ; preds = %bb.l
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !191
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(160) %i.z) #27, !inline_history !48
  br label %_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock7ConvertESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock7ConvertESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i40, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.m:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !314 ; 2 uses
  %.not.i43 = icmp eq ptr %i.af, null
  br i1 %.not.i43, label %_ZNSt14_Function_baseD2Ev.exit44, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit44 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #29
  unreachable

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !769   ; 3 uses
  %.not.i45 = icmp eq ptr %i.al, null
  br i1 %.not.i45, label %.body, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i46

_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i46: ; preds = %bb.q
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !191
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(160) %i.al) #27, !inline_history !48
  br label %.body

.body:                                            ; preds = %bb.q, %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i46, %bb.p, %.body.i
  %.pn = phi { ptr, i32 } [ %i.g, %.body.i ], [ %i.aj, %bb.p ], [ %i.ak, %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i46 ], [ %i.ak, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.x

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock13CreateContextESt14default_deleteIS3_EED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.s:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !769   ; 3 uses
  %.not.i51 = icmp eq ptr %i.ar, null
  br i1 %.not.i51, label %.body21, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i52

_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i52: ; preds = %bb.s
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !191
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(160) %i.ar) #27, !inline_history !48
  br label %.body21

.body21:                                          ; preds = %bb.s, %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i52, %bb.r, %.body.i19
  %.pn9 = phi { ptr, i32 } [ %i.m, %.body.i19 ], [ %i.ap, %bb.r ], [ %i.aq, %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i52 ], [ %i.aq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.x

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock11TextToImageESt14default_deleteIS3_EED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body29

bb.u:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !769   ; 3 uses
  %.not.i57 = icmp eq ptr %i.ax, null
  br i1 %.not.i57, label %.body29, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i58

_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i58: ; preds = %bb.u
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(160) %i.ax) #27, !inline_history !48
  br label %.body29

.body29:                                          ; preds = %bb.u, %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i58, %bb.t, %.body.i27
  %.pn11 = phi { ptr, i32 } [ %i.s, %.body.i27 ], [ %i.av, %bb.t ], [ %i.aw, %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i58 ], [ %i.aw, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.x

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge4Host27WasmEdgeStableDiffusionMock12ImageToImageESt14default_deleteIS3_EED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body37

bb.w:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !769   ; 3 uses
  %.not.i63 = icmp eq ptr %i.bd, null
  br i1 %.not.i63, label %.body37, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i64

_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i64: ; preds = %bb.w
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !191
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(160) %i.bd) #27, !inline_history !48
  br label %.body37

.body37:                                          ; preds = %bb.w, %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i64, %bb.v, %.body.i35
  %.pn13 = phi { ptr, i32 } [ %i.y, %.body.i35 ], [ %i.bb, %bb.v ], [ %i.bc, %_ZNKSt14default_deleteIN8WasmEdge7Runtime16HostFunctionBaseEEclEPS2_.exit.i64 ], [ %i.bc, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.x

bb.x:                                             ; preds = %.body37, %.body29, %.body21, %.body
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %.body37 ], [ %.pn11, %.body29 ], [ %.pn9, %.body21 ], [ %.pn, %.body ]
  call void @_ZN8WasmEdge7Runtime8Instance14ModuleInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(952) dereferenceable(952) %0) #27
  br label %_ZNSt14_Function_baseD2Ev.exit44

_ZNSt14_Function_baseD2Ev.exit44:                 ; preds = %bb.n, %bb.m, %bb.x
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.x ], [ %i.ad, %bb.m ], [ %i.ad, %bb.n ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7Runtime8Instance14ModuleInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(952) dereferenceable(952) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1147, align 1           ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN8WasmEdge7Runtime8Instance14ModuleInstanceE, i64 16), ptr %0, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %.not90 = icmp eq ptr %i.e, %i.f
  br i1 %.not90, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !314
  %.not.i.i.not = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.086.091 = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !tbaa !189
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.086.091, i64 72
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.086.091, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.086.091, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3186
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3183

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.086.091) #32 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.a, align 8, !tbaa !348
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3187
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3184

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load ptr, ptr %i.h, align 8, !tbaa !314  ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef zeroext i1 %.pr(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %._crit_edge, %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !185
  invoke void @_ZNSt8_Rb_treeISt4pairIPN8WasmEdge7Runtime12StoreManagerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKSB_St8functionIFvRSC_PKNS2_8Instance14ModuleInstanceEEEESt10_Select1stISL_ESt4lessISB_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.u)
          to label %_ZNSt3mapISt4pairIPN8WasmEdge7Runtime12StoreManagerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt8functionIFvRKSB_PKNS2_8Instance14ModuleInstanceEEESt4lessISB_ESaIS0_ISD_SK_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

_ZNSt3mapISt4pairIPN8WasmEdge7Runtime12StoreManagerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt8functionIFvRKSB_PKNS2_8Instance14ModuleInstanceEEESt4lessISB_ESaIS0_ISD_SK_EEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !185
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance14GlobalInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.z)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapISt4pairIPN8WasmEdge7Runtime12StoreManagerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt8functionIFvRKSB_PKNS2_8Instance14ModuleInstanceEEESt4lessISB_ESaIS0_ISD_SK_EEED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt3mapISt4pairIPN8WasmEdge7Runtime12StoreManagerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt8functionIFvRKSB_PKNS2_8Instance14ModuleInstanceEEESt4lessISB_ESaIS0_ISD_SK_EEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !185
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance11TagInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef %i.ae)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance11TagInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance11TagInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !185
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance14MemoryInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.aj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14MemoryInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance11TagInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14MemoryInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance11TagInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !185
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance13TableInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef %i.ao)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance13TableInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14MemoryInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance13TableInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14MemoryInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !185
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef %i.at)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance13TableInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance13TableInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !985 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance12DataInstanceESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !986
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance12DataInstanceESaIS4_EED2Ev.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance12DataInstanceESaIS4_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEED2Ev.exit, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !987 ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance15ElementInstanceESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance12DataInstanceESaIS4_EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !988
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #30
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance15ElementInstanceESaIS4_EED2Ev.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance15ElementInstanceESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance12DataInstanceESaIS4_EED2Ev.exit, %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !752 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance15ElementInstanceESaIS4_EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !753
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #30
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EED2Ev.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance15ElementInstanceESaIS4_EED2Ev.exit, %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !989 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !990
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #30
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EED2Ev.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EED2Ev.exit, %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !756 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !757
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #30
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EED2Ev.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EED2Ev.exit, %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !760 ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance13TableInstanceESaIS4_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EED2Ev.exit
end_hunk_0
