Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/statistics?download=true
inline.NumInlined: 961
inline.NumDeleted: 393
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !78
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03037 = load ptr, ptr %.030.in36, align 8, !tbaa !79 ; 2 uses
  %.not3238 = icmp eq ptr %.03037, null
  br i1 %.not3238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03040 = phi ptr [ %.030, %bb.l ], [ %.03037, %bb.e ] ; 4 uses
  %.03139 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !135, !nonnull !136, !align !137
  %i.m = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03040, i64 32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03040, align 8, !tbaa !138
  store i32 %i.o, ptr %i.m, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.m, ptr %i.q, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03139, ptr %i.r, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %.03040, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !78
  br label %bb.l

bb.i:                                             ; preds = %.noexc, %.lr.ph, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #27 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03040, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !79 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !133

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

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !61
  %i.d = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !62
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !59
  %i.i = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.i, ptr %i.c, align 8, !tbaa !63
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !63
  store i8 %i.k, ptr %i.j, align 1, !tbaa !63
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 80) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !58
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !57
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq ptr %0, %1
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit
  %.013 = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit ], [ %2, %bb.a ] ; 2 uses
  %.0912 = phi ptr [ %i.x, %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit ], [ %0, %bb.a ] ; 11 uses
  tail call void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(592) %.013, ptr noundef nonnull align 8 dereferenceable(592) %.0912) #27
  %i.a = getelementptr inbounds nuw i8, ptr %.0912, i64 496
  %i.b = getelementptr inbounds nuw i8, ptr %.0912, i64 512
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49, !alias.scope !147, !noalias !149
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59, !alias.scope !147, !noalias !149 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0912, i64 376 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !63, !alias.scope !147, !noalias !149
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0912, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59, !alias.scope !147, !noalias !149 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0912, i64 336 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !63, !alias.scope !147, !noalias !149
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0912, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59, !alias.scope !147, !noalias !149 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0912, i64 296 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !63, !alias.scope !147, !noalias !149
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit

_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(592) %.0912) #27
  %i.x = getelementptr inbounds nuw i8, ptr %.0912, i64 592 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013, i64 592 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !142

._crit_edge:                                      ; preds = %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit ]
  ret ptr %.0.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !61
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.j = load i64, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.c, align 8, !tbaa !59
  %i.m = load i64, ptr %i.g, align 8, !tbaa !63
  store i64 %i.m, ptr %i.e, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.o, ptr %i.p, align 8, !tbaa !58
  store ptr %i.g, ptr %i.d, align 8, !tbaa !59
  store i64 0, ptr %i.n, align 8, !tbaa !58
  store i8 0, ptr %i.g, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.s = load i32, ptr %i.r, align 8, !tbaa !64
  store i32 %i.s, ptr %i.q, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !61
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !58  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.w, ptr %i.t, align 8, !tbaa !59
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !63
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !58
  store ptr %i.x, ptr %i.u, align 8, !tbaa !59
  store i64 0, ptr %i.ae, align 8, !tbaa !58
  store i8 0, ptr %i.x, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !47
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !61
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !59
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !63
  store i64 %i.au, ptr %i.am, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !58
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !59
  store i64 0, ptr %i.av, align 8, !tbaa !58
  store i8 0, ptr %i.ao, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.ay, ptr noundef nonnull align 8 dereferenceable(98) %i.az, i64 98, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.bj = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !60
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ba, ptr %i.bk, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !52
  store ptr null, ptr %i.bb, align 8, !tbaa !49
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !50
  store ptr %i.bd, ptr %i.bi, align 8, !tbaa !51
  store i64 0, ptr %i.bl, align 8, !tbaa !52
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr null, ptr %i.bo, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.ba, ptr %i.bp, align 8, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %i.ba, ptr %i.bq, align 8, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.br, align 8, !tbaa !52
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit: ; preds = %bb.e, %bb.f
  %.sink.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.be, %bb.e ]
  store i32 %.sink.i.i.i.i, ptr %i.ba, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !61
  %i.b = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !59
  %i.i = load i64, ptr %i.c, align 8, !tbaa !63
end_hunk_0
begin_hunk_1_@_ZN9benchmark13BenchmarkNameC2EOS0_:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.de, ptr %i.df, align 8, !tbaa !58
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !59
  store i64 0, ptr %i.dd, align 8, !tbaa !58
  store i8 0, ptr %i.cw, align 8, !tbaa !63
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = distinct !{!4, !18}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 double", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"double", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!20 = !{!19, !14, i64 8}
!21 = !{!19, !14, i64 0}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!"p1 _ZTSN9benchmark17BenchmarkReporter3RunE", !13, i64 0}
!24 = !{!"p1 omnipotent char", !13, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!"long", !9, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !9, i64 16}
!28 = !{!"_ZTSN9benchmark13BenchmarkNameE", !27, i64 0, !27, i64 32, !27, i64 64, !27, i64 96, !27, i64 128, !27, i64 160, !27, i64 192, !27, i64 224}
!29 = !{!"_ZTSN9benchmark17BenchmarkReporter3Run7RunTypeE", !9, i64 0}
!30 = !{!"_ZTSN9benchmark13StatisticUnitE", !9, i64 0}
!31 = !{!"_ZTSN9benchmark8internal7SkippedE", !9, i64 0}
!32 = !{!"_ZTSN9benchmark8TimeUnitE", !9, i64 0}
!33 = !{!"bool", !9, i64 0}
!34 = !{!"_ZTSN9benchmark4BigOE", !9, i64 0}
!35 = !{!"p1 _ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !13, i64 0}
!36 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!37 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !36, i64 0}
!38 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!39 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!40 = !{!"_ZTSSt18_Rb_tree_node_base", !38, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!41 = !{!"_ZTSSt15_Rb_tree_header", !40, i64 0, !26, i64 32}
!42 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !37, i64 0, !41, i64 8}
!43 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !42, i64 0}
!44 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !43, i64 0}
!45 = !{!"_ZTSN9benchmark13MemoryManager6ResultE", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32}
!46 = !{!"_ZTSN9benchmark17BenchmarkReporter3RunE", !28, i64 0, !26, i64 256, !26, i64 264, !29, i64 272, !27, i64 280, !30, i64 312, !27, i64 320, !31, i64 352, !27, i64 360, !26, i64 392, !26, i64 400, !26, i64 408, !26, i64 416, !32, i64 424, !16, i64 432, !16, i64 440, !16, i64 448, !33, i64 456, !34, i64 460, !13, i64 464, !26, i64 472, !35, i64 480, !33, i64 488, !33, i64 489, !44, i64 496, !45, i64 544, !16, i64 584}
!47 = !{!46, !31, i64 352}
!48 = !{!41, !38, i64 0}
!49 = !{!41, !39, i64 8}
!50 = !{!41, !39, i64 16}
!51 = !{!41, !39, i64 24}
!52 = !{!41, !26, i64 32}
!53 = !{!"_ZTSN9benchmark7Counter5FlagsE", !9, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"_ZTSN9benchmark7Counter4OneKE", !9, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{i64 0, i64 8, !17, i64 8, i64 4, !54, i64 12, i64 4, !56}
!58 = !{!27, !26, i64 8}
!59 = !{!27, !24, i64 0}
!60 = !{!39, !39, i64 0}
!61 = !{!25, !24, i64 0}
!62 = !{!26, !26, i64 0}
!63 = !{!9, !9, i64 0}
!64 = !{!46, !30, i64 312}
!65 = !{!"_ZTSNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!66 = !{!65, !23, i64 8}
!67 = !{!65, !23, i64 16}
!68 = !{!"_ZTSN9benchmark7CounterE", !16, i64 0, !53, i64 8, !55, i64 12}
!69 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !13, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEEE", !13, i64 0}
!74 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !71, i64 0, !73, i64 8}
!75 = !{!74, !73, i64 8}
!76 = !{!68, !55, i64 12}
!77 = !{!65, !23, i64 0}
!78 = !{!40, !39, i64 24}
!79 = !{!40, !39, i64 16}
!80 = !{!40, !39, i64 8}
!81 = distinct !{!81, !84}
!82 = distinct !{!82, !18}
!83 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !18}
!88 = !{!23, !23, i64 0}
!89 = !{!19, !14, i64 16}
!90 = !{!46, !26, i64 392}
!91 = !{!"branch_weights", i32 1, i32 1048575}
!92 = !{!"p1 _ZTSSo", !13, i64 0}
!93 = !{!"_ZTSN9benchmark8internal7LogTypeE", !92, i64 0}
!94 = !{!93, !92, i64 0}
!95 = !{!46, !35, i64 480}
!96 = !{!"p1 _ZTSN9benchmark8internal10StatisticsE", !13, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!46, !29, i64 272}
!99 = !{!46, !26, i64 400}
!100 = !{!46, !32, i64 424}
!101 = !{!45, !26, i64 16}
!102 = !{!45, !26, i64 24}
!103 = !{!46, !26, i64 416}
!104 = !{!46, !26, i64 408}
!105 = !{!"_ZTSN9benchmark8internal10StatisticsE", !27, i64 0, !13, i64 32, !30, i64 40}
!106 = !{!105, !30, i64 40}
!107 = !{!105, !13, i64 32}
!108 = !{!46, !16, i64 432}
!109 = !{!46, !16, i64 440}
!110 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !19, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !110, i64 0}
!112 = !{!"_ZTSSt6vectorIdSaIdEE", !111, i64 0}
!113 = !{!"_ZTSZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEE11CounterStat", !68, i64 0, !112, i64 16}
!114 = !{!113, !53, i64 8}
!115 = !{!113, !55, i64 12}
!116 = distinct !{!116, !18}
!117 = distinct !{!117, !18}
!118 = distinct !{!118, !18}
!119 = distinct !{!119, !18}
!120 = distinct !{!120, !18}
!121 = distinct !{!121, !18}
!122 = distinct !{!122, !18}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !18}
!125 = distinct !{!125, !18}
!126 = distinct !{!126, !18}
!127 = distinct !{!127, !18}
!128 = !{!68, !16, i64 0}
!129 = !{!68, !53, i64 8}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !18}
!133 = distinct !{!133, !18}
!134 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_Alloc_nodeE", !71, i64 0}
!135 = !{!134, !71, i64 0}
!136 = !{}
!137 = !{i64 8}
!138 = !{!40, !38, i64 0}
!142 = distinct !{!142, !18}
!145 = distinct !{!145, i1 false, !"_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_"}
!146 = distinct !{!146, !145, !"_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!147 = !{!146}
!148 = distinct !{!148, !145, !"_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!149 = !{!148}
end_hunk_1
