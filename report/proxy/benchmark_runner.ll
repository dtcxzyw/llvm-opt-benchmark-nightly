Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_runner?download=true
inline.NumInlined: 817
inline.NumDeleted: 439
begin_hunk_0_@_ZN9benchmark13BenchmarkNameC2ERKS0_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ej = load i64, ptr %i.cf, align 8, !tbaa !19
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.ac ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.el = load ptr, ptr %i.bo, align 8, !tbaa !18 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.bq
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.en = load i64, ptr %i.bq, align 8, !tbaa !19
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ab ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ] ; 2 uses
  %i.ep = load ptr, ptr %i.az, align 8, !tbaa !18 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bb
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.er = load i64, ptr %i.bb, align 8, !tbaa !19
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.aa ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ] ; 2 uses
  %i.et = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.am
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.ev = load i64, ptr %i.am, align 8, !tbaa !19
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.z
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.z ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 2 uses
  %i.ex = load ptr, ptr %i.v, align 8, !tbaa !18  ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.x
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.ez = load i64, ptr %i.x, align 8, !tbaa !19
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.y
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.y ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  %i.fb = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.i
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.fd = load i64, ptr %i.i, align 8, !tbaa !19
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !270, !nonnull !48, !align !74
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25 ; 9 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.d = load i32, ptr %1, align 8, !tbaa !160
  store i32 %i.d, ptr %i.c, align 8, !tbaa !160
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !158
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !150
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03037 = load ptr, ptr %.030.in36, align 8, !tbaa !151 ; 2 uses
  %.not3238 = icmp eq ptr %.03037, null
  br i1 %.not3238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03040 = phi ptr [ %.030, %bb.l ], [ %.03037, %bb.e ] ; 4 uses
  %.03139 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !270, !nonnull !48, !align !74
  %i.m = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03040, i64 32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03040, align 8, !tbaa !160
  store i32 %i.o, ptr %i.m, align 8, !tbaa !160
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.m, ptr %i.q, align 8, !tbaa !151
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03139, ptr %i.r, align 8, !tbaa !158
  %i.s = getelementptr inbounds nuw i8, ptr %.03040, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !150  ; 2 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !150
  br label %bb.l

bb.i:                                             ; preds = %.noexc, %.lr.ph, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #26
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03040, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !151 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !268

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.c

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq ptr %0, %1
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit
  %.013 = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit ], [ %2, %bb.a ] ; 2 uses
  %.0912 = phi ptr [ %i.x, %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit ], [ %0, %bb.a ] ; 11 uses
  tail call void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(592) %.013, ptr noundef nonnull align 8 dereferenceable(592) %.0912) #23
  %i.a = getelementptr inbounds nuw i8, ptr %.0912, i64 496
  %i.b = getelementptr inbounds nuw i8, ptr %.0912, i64 512
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101, !alias.scope !275, !noalias !276
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0912, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18, !alias.scope !275, !noalias !276 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0912, i64 376 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19, !alias.scope !275, !noalias !276
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0912, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18, !alias.scope !275, !noalias !276 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0912, i64 336 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !19, !alias.scope !275, !noalias !276
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0912, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18, !alias.scope !275, !noalias !276 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0912, i64 296 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !19, !alias.scope !275, !noalias !276
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit

_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(592) %.0912) #23
  %i.x = getelementptr inbounds nuw i8, ptr %.0912, i64 592 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013, i64 592 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !274

._crit_edge:                                      ; preds = %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit ]
  ret ptr %.0.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !96
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.c, align 8, !tbaa !18
  %i.m = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.m, ptr %i.e, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.o, ptr %i.p, align 8, !tbaa !17
  store ptr %i.g, ptr %i.d, align 8, !tbaa !18
  store i64 0, ptr %i.n, align 8, !tbaa !17
  store i8 0, ptr %i.g, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.s = load i32, ptr %i.r, align 8, !tbaa !161
  store i32 %i.s, ptr %i.q, align 8, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !96
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.w, ptr %i.t, align 8, !tbaa !18
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !19
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !17
  store ptr %i.x, ptr %i.u, align 8, !tbaa !18
  store i64 0, ptr %i.ae, align 8, !tbaa !17
  store i8 0, ptr %i.x, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !144
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !96
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !18
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !19
  store i64 %i.au, ptr %i.am, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !17
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !18
  store i64 0, ptr %i.av, align 8, !tbaa !17
  store i8 0, ptr %i.ao, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.ay, ptr noundef nonnull align 8 dereferenceable(98) %i.az, i64 98, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !100
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !101
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.bj = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !152
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !152
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ba, ptr %i.bk, align 8, !tbaa !158
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !120
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !120
  store ptr null, ptr %i.bb, align 8, !tbaa !101
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !102
  store ptr %i.bd, ptr %i.bi, align 8, !tbaa !103
  store i64 0, ptr %i.bl, align 8, !tbaa !120
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr null, ptr %i.bo, align 8, !tbaa !101
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.ba, ptr %i.bp, align 8, !tbaa !102
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %i.ba, ptr %i.bq, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.br, align 8, !tbaa !120
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit: ; preds = %bb.e, %bb.f
  %.sink.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.be, %bb.e ]
  store i32 %.sink.i.i.i.i, ptr %i.ba, align 8, !tbaa !100
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !96
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  %i.i = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.i, ptr %i.a, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !17
  store ptr %i.c, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %i.j, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@llvm.umax.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !148}
!1 = distinct !{!1, !148}
!2 = distinct !{!2, !148}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !8, i64 16}
!17 = !{!16, !15, i64 8}
!18 = !{!16, !13, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!"p1 _ZTSSo", !12, i64 0}
!23 = !{!"_ZTSN9benchmark8internal7LogTypeE", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"p1 _ZTSN9benchmark8internal17BenchmarkInstanceE", !12, i64 0}
!26 = !{!"p1 _ZTSN9benchmark17BenchmarkReporter3RunE", !12, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE", !29, i64 0}
!31 = !{!"bool", !8, i64 0}
!32 = !{!"_ZTSN9benchmark8internal10RunResultsE", !30, i64 0, !30, i64 24, !31, i64 48, !31, i64 49}
!33 = !{!"p1 _ZTSN9benchmark17BenchmarkReporter19PerFamilyRunReportsE", !12, i64 0}
!34 = !{!"_ZTSN9benchmark8internal13BenchTimeTypeUt_E", !8, i64 0}
!35 = !{!"_ZTSN9benchmark8internal13BenchTimeTypeE", !34, i64 0, !8, i64 8}
!36 = !{!"double", !8, i64 0}
!37 = !{!"p1 _ZTSN9benchmark16ThreadRunnerBaseE", !12, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN9benchmark16ThreadRunnerBaseELb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJPN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_ELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EE", !42, i64 0}
!44 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !12, i64 0}
!45 = !{!"_ZTSN9benchmark8internal15BenchmarkRunnerE", !32, i64 0, !25, i64 56, !33, i64 64, !35, i64 72, !36, i64 88, !36, i64 96, !31, i64 104, !9, i64 108, !31, i64 112, !9, i64 116, !43, i64 120, !15, i64 128, !44, i64 136}
!46 = !{!45, !33, i64 64}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!45, !25, i64 56}
!50 = !{!"_ZTSN9benchmark13BenchmarkNameE", !16, i64 0, !16, i64 32, !16, i64 64, !16, i64 96, !16, i64 128, !16, i64 160, !16, i64 192, !16, i64 224}
!51 = !{!"p1 _ZTSN9benchmark9BenchmarkE", !12, i64 0}
!52 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !8, i64 0}
!53 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !12, i64 0}
!54 = !{!"_ZTSN9benchmark8TimeUnitE", !8, i64 0}
!55 = !{!"_ZTSN9benchmark4BigOE", !8, i64 0}
!56 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!57 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !56, i64 0}
!58 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!59 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!60 = !{!"_ZTSSt18_Rb_tree_node_base", !58, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!61 = !{!"_ZTSSt15_Rb_tree_header", !60, i64 0, !15, i64 32}
!62 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !57, i64 0, !61, i64 8}
!63 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !62, i64 0}
!64 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !63, i64 0}
!65 = !{!"p1 _ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !12, i64 0}
!66 = !{!"_ZTSSt14_Function_base", !8, i64 0, !12, i64 16}
!67 = !{!"_ZTSSt8functionIFvRKN9benchmark5StateEEE", !66, i64 0, !12, i64 24}
!68 = !{!"_ZTSN9benchmark8internal17BenchmarkInstanceE", !50, i64 0, !51, i64 256, !9, i64 264, !9, i64 268, !52, i64 272, !53, i64 280, !54, i64 288, !31, i64 292, !31, i64 293, !31, i64 294, !55, i64 296, !12, i64 304, !64, i64 312, !65, i64 360, !9, i64 368, !36, i64 376, !36, i64 384, !15, i64 392, !9, i64 400, !67, i64 408, !67, i64 440}
!69 = !{!36, !36, i64 0}
!70 = !{!45, !31, i64 104}
!71 = !{!45, !9, i64 108}
!72 = !{!45, !31, i64 112}
!73 = !{!45, !9, i64 116}
!74 = !{i64 8}
!75 = !{!68, !9, i64 400}
!76 = !{!66, !12, i64 16}
!77 = !{!"vtable pointer", !7, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p1 _ZTSSt6thread", !12, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!"_ZTSNSt6thread2idE", !15, i64 0}
!83 = !{!82, !15, i64 0}
!84 = !{!80, !79, i64 16}
!85 = !{!80, !79, i64 8}
!86 = !{!45, !15, i64 128}
!87 = !{!45, !44, i64 136}
!88 = !{!37, !37, i64 0}
!89 = !{!27, !26, i64 0}
!90 = !{!27, !26, i64 8}
!91 = !{!27, !26, i64 16}
!92 = !{!15, !15, i64 0}
!93 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !12, i64 0}
!94 = !{!"_ZTSSt10_Head_baseILm0EPN9benchmark8internal13ThreadManagerELb0EE", !93, i64 0}
!95 = !{!94, !93, i64 0}
!96 = !{!14, !13, i64 0}
!97 = !{!"_ZTSN9benchmark8internal7SkippedE", !8, i64 0}
!98 = !{!"_ZTSN9benchmark8internal13ThreadManager6ResultE", !15, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !15, i64 32, !16, i64 40, !16, i64 72, !97, i64 104, !64, i64 112}
!99 = !{!98, !97, i64 104}
!100 = !{!61, !58, i64 0}
!101 = !{!61, !59, i64 8}
!102 = !{!61, !59, i64 16}
!103 = !{!61, !59, i64 24}
!104 = !{!"_ZTSSt12__mutex_base", !8, i64 0}
!105 = !{!"_ZTSSt5mutex", !104, i64 0}
!106 = !{!"_ZTSN9benchmark5MutexE", !105, i64 0}
!107 = !{!"_ZTSSt9__condvar", !8, i64 0}
!108 = !{!"_ZTSSt18condition_variable", !107, i64 0}
!109 = !{!"_ZTSN9benchmark7BarrierE", !106, i64 0, !108, i64 40, !9, i64 88, !9, i64 92, !9, i64 96}
!110 = !{!109, !9, i64 88}
!111 = !{!109, !9, i64 92}
!112 = !{!109, !9, i64 96}
!113 = !{!93, !93, i64 0}
!114 = !{!"p1 _ZTSN9benchmark8internal15BenchmarkRunnerE", !12, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"p1 _ZTSSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE", !12, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"_ZTSSt8functionIFviEE", !66, i64 0, !12, i64 24}
!119 = !{!118, !12, i64 24}
!120 = !{!61, !15, i64 32}
!121 = !{!"_ZTSN9benchmark8internal15BenchmarkRunner16IterationResultsE", !98, i64 0, !15, i64 160, !36, i64 168}
!122 = !{!121, !15, i64 160}
!123 = !{!121, !36, i64 168}
!124 = !{!68, !31, i64 294}
!125 = !{!121, !97, i64 104}
!126 = !{!121, !36, i64 8}
!127 = !{!"p1 _ZTSN9benchmark13MemoryManagerE", !12, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"_ZTSN9benchmark13MemoryManager6ResultE", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!130 = !{!129, !15, i64 16}
!131 = !{!129, !15, i64 24}
!132 = !{!"p1 long", !12, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!134 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !12, i64 0}
!135 = !{!98, !15, i64 0}
!136 = !{!98, !36, i64 16}
!137 = !{!98, !15, i64 32}
!138 = !{!133, !132, i64 0}
!139 = !{!133, !132, i64 16}
!140 = !{!134, !134, i64 0}
!141 = !{!"_ZTSN9benchmark17BenchmarkReporter3Run7RunTypeE", !8, i64 0}
!142 = !{!"_ZTSN9benchmark13StatisticUnitE", !8, i64 0}
!143 = !{!"_ZTSN9benchmark17BenchmarkReporter3RunE", !50, i64 0, !15, i64 256, !15, i64 264, !141, i64 272, !16, i64 280, !142, i64 312, !16, i64 320, !97, i64 352, !16, i64 360, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !54, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !31, i64 456, !55, i64 460, !12, i64 464, !15, i64 472, !65, i64 480, !31, i64 488, !31, i64 489, !64, i64 496, !129, i64 544, !36, i64 584}
!144 = !{!143, !97, i64 352}
!145 = !{!143, !15, i64 392}
!146 = !{!143, !54, i64 424}
!147 = !{!143, !15, i64 400}
!148 = !{!"llvm.loop.mustprogress"}
!149 = !{!12, !12, i64 0}
!150 = !{!60, !59, i64 24}
!151 = !{!60, !59, i64 16}
!152 = !{!59, !59, i64 0}
!153 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !12, i64 0}
!154 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeE", !59, i64 0, !59, i64 8, !153, i64 16}
!155 = !{!154, !59, i64 0}
!156 = !{!154, !59, i64 8}
!157 = !{!153, !153, i64 0}
!158 = !{!60, !59, i64 8}
!159 = !{!154, !153, i64 16}
!160 = !{!60, !58, i64 0}
!161 = !{!143, !142, i64 312}
!162 = !{!13, !13, i64 0}
!163 = distinct !{!163, i1 false, !"_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi"}
!164 = distinct !{!164, !163, !"_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi: argument 0"}
!165 = distinct !{!165, i1 false, !"_ZNKSt8functionIFSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS2_EEiEEclEi"}
!166 = distinct !{!166, !165, !"_ZNKSt8functionIFSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS2_EEiEEclEi: argument 0"}
!167 = distinct !{null}
!168 = distinct !{!168, i1 false, !"_ZSt11make_uniqueIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultEJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!169 = distinct !{!169, !168, !"_ZSt11make_uniqueIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultEJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!170 = distinct !{null, null}
!171 = !{!25, !25, i64 0}
!172 = !{!31, !31, i64 0}
!173 = !{!45, !36, i64 88}
!174 = !{!68, !36, i64 376}
!175 = !{!35, !34, i64 0}
!176 = !{!68, !36, i64 384}
!177 = !{!45, !36, i64 96}
!178 = !{!68, !9, i64 368}
!179 = !{!68, !15, i64 392}
!180 = !{!45, !34, i64 72}
!181 = !{!68, !51, i64 256}
!182 = !{!164}
!183 = !{!166, !164}
!184 = !{!"_ZTSSt8functionIFSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS2_EEiEE", !66, i64 0, !12, i64 24}
!185 = !{!184, !12, i64 24}
!186 = !{!169, !164}
!187 = !{!38, !37, i64 0}
!188 = !{!45, !31, i64 48}
!189 = !{!45, !31, i64 49}
!190 = !{!68, !52, i64 272}
!191 = !{!121, !15, i64 0}
!192 = !{!121, !36, i64 16}
!193 = !{!68, !31, i64 293}
!194 = !{!129, !15, i64 32}
!195 = !{!68, !31, i64 292}
!196 = !{!"_ZTSN9benchmark8internal11ThreadTimerE", !31, i64 0, !31, i64 1, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!197 = !{!196, !31, i64 0}
!198 = !{!196, !31, i64 1}
!199 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !133, i64 0}
!200 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !199, i64 0}
!201 = !{!"_ZTSSt6vectorIlSaIlEE", !200, i64 0}
!202 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !12, i64 0}
!203 = !{!"_ZTSN9benchmark5StateE", !15, i64 0, !15, i64 8, !15, i64 16, !31, i64 24, !31, i64 25, !97, i64 28, !201, i64 32, !15, i64 56, !64, i64 64, !16, i64 112, !9, i64 144, !9, i64 148, !202, i64 152, !93, i64 160, !44, i64 168, !134, i64 176}
!204 = !{!203, !97, i64 28}
!205 = !{!203, !31, i64 24}
!206 = !{!203, !15, i64 16}
!207 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!208 = !{!203, !15, i64 0}
!209 = !{!203, !15, i64 8}
!210 = !{!196, !36, i64 32}
!211 = !{!196, !36, i64 24}
!212 = !{!98, !36, i64 8}
!213 = !{!196, !36, i64 40}
!214 = !{!98, !36, i64 24}
!215 = !{!203, !15, i64 56}
!216 = distinct !{!216, i1 false, !"_ZN9benchmark8internal12_GLOBAL__N_115CreateRunReportERKNS0_17BenchmarkInstanceERKNS0_13ThreadManager6ResultElRKNS_13MemoryManager6ResultEdll"}
!217 = distinct !{!217, !216, !"_ZN9benchmark8internal12_GLOBAL__N_115CreateRunReportERKNS0_17BenchmarkInstanceERKNS0_13ThreadManager6ResultElRKNS_13MemoryManager6ResultEdll: argument 0"}
!218 = !{!217}
!219 = !{!68, !9, i64 264}
!220 = !{!143, !15, i64 256}
!221 = !{!68, !9, i64 268}
!222 = !{!143, !15, i64 264}
!223 = !{!68, !54, i64 288}
!224 = !{!143, !15, i64 408}
!225 = !{!143, !15, i64 416}
!226 = !{!143, !36, i64 432}
!227 = !{!143, !31, i64 456}
!228 = !{!143, !36, i64 440}
!229 = !{!143, !15, i64 472}
!230 = !{!68, !55, i64 296}
!231 = !{!143, !55, i64 460}
!232 = !{!68, !12, i64 304}
!233 = !{!143, !12, i64 464}
!234 = !{!68, !65, i64 360}
!235 = !{!143, !65, i64 480}
!236 = !{!143, !36, i64 584}
!237 = !{!"_ZTSN9benchmark17BenchmarkReporter19PerFamilyRunReportsE", !9, i64 0, !9, i64 4, !30, i64 8}
!238 = !{!237, !9, i64 4}
!239 = !{!26, !26, i64 0}
!240 = !{ptr @_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultD2Ev}
!241 = distinct !{null}
!242 = distinct !{!242, !148}
!243 = !{!79, !79, i64 0}
!244 = distinct !{null, null}
!245 = !{!"_ZTSSt10_Head_baseILm1EiLb0EE", !9, i64 0}
!246 = !{!245, !9, i64 0}
!247 = !{!"p1 _ZTSNSt6thread6_StateE", !12, i64 0}
!248 = !{!247, !247, i64 0}
!249 = !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEED2Ev}
!250 = distinct !{null, null, null, null, null}
!251 = distinct !{!251, !148}
!252 = distinct !{!252, !148}
!253 = distinct !{!253, !148}
!254 = !{!"_ZTSN9benchmark7Counter5FlagsE", !8, i64 0}
!255 = !{!254, !254, i64 0}
!256 = !{!"_ZTSN9benchmark7Counter4OneKE", !8, i64 0}
!257 = !{!256, !256, i64 0}
!258 = !{i64 0, i64 8, !69, i64 8, i64 4, !255, i64 12, i64 4, !257}
!259 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!260 = !{!143, !141, i64 272}
!261 = distinct !{!261, !148}
!262 = !{!"_ZTSZN9benchmark8internal15BenchmarkRunner13DoNIterationsEvE3$_0", !114, i64 0, !116, i64 8}
!263 = !{!262, !114, i64 0}
!264 = !{!262, !116, i64 8}
!265 = !{!"p1 _ZTSSt9type_info", !12, i64 0}
!266 = !{!265, !265, i64 0}
!267 = !{i64 0, i64 8, !115, i64 8, i64 8, !117}
!268 = distinct !{!268, !148}
!269 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_Alloc_nodeE", !153, i64 0}
!270 = !{!269, !153, i64 0}
!271 = distinct !{!271, i1 false, !"_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_"}
!272 = distinct !{!272, !271, !"_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!273 = distinct !{!273, !271, !"_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!274 = distinct !{!274, !148}
!275 = !{!272}
!276 = !{!273}
end_hunk_1
