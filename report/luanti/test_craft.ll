Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_craft?download=true
inline.NumInlined: 1566
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.t, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.ak, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit: ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !114
  store i32 %i.j, ptr %i.b, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !88
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.i:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit
  %.030.in36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03037 = load ptr, ptr %.030.in36, align 8, !tbaa !89 ; 2 uses
  %.not3238 = icmp eq ptr %.03037, null
  br i1 %.not3238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.s
  %.03040 = phi ptr [ %.030, %bb.s ], [ %.03037, %bb.i ] ; 4 uses
  %.03139 = phi ptr [ %i.r, %bb.s ], [ %i.b, %bb.i ] ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc unwind label %bb.q     ; 9 uses

.noexc:                                           ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.03040, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 96) #22
  invoke void @__cxa_rethrow() #25
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.aa = load i32, ptr %.03040, align 8, !tbaa !114
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.03139, ptr %i.ad, align 8, !tbaa !115
  %i.ae = getelementptr inbounds nuw i8, ptr %.03040, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %.not33 = icmp eq ptr %i.af, null
  br i1 %.not33, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !88
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph, %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.q, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.ai, %bb.q ], [ %i.x, %bb.k ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #25
          to label %bb.v unwind label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.n
  %.030.in = getelementptr inbounds nuw i8, ptr %.03040, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !89 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !367

bb.t:                                             ; preds = %bb.r, %.body
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

._crit_edge:                                      ; preds = %bb.s, %bb.i
  ret ptr %i.b

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #24
  unreachable

bb.v:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !32
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.e, ptr %i.a, align 8, !tbaa !67
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !23
  %i.h = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.h, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !24
  store i8 %i.j, ptr %i.i, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !33
  %i.m = load ptr, ptr %0, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !369  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i.i.i, label %.noexc4, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = icmp ugt i64 %i.v, 9223372036854775800
  br i1 %i.w, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i, !prof !106

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.x, %_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.y, ptr %i.o, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !369
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !93
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !370 ; 2 uses
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !370 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc4, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %.noexc4 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc4 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.ae, ptr %.09.i.i.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !368

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc4
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc4 ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !369
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i64, ptr %i.ai, align 8
  store i64 %i.aj, ptr %i.ah, align 8
  ret void

bb.e:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.an = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !373, !nonnull !82, !align !374
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26 ; 9 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %i.a)
  %i.d = load i32, ptr %1, align 8, !tbaa !114
  store i32 %i.d, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !88
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03037 = load ptr, ptr %.030.in36, align 8, !tbaa !89 ; 2 uses
  %.not3238 = icmp eq ptr %.03037, null
  br i1 %.not3238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03040 = phi ptr [ %.030, %bb.l ], [ %.03037, %bb.e ] ; 4 uses
  %.03139 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !373, !nonnull !82, !align !374
  %i.m = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03040, i64 32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(34) %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03040, align 8, !tbaa !114
  store i32 %i.o, ptr %i.m, align 8, !tbaa !114
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.m, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03139, ptr %i.r, align 8, !tbaa !115
  %i.s = getelementptr inbounds nuw i8, ptr %.03040, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88   ; 2 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !88
  br label %bb.l

bb.i:                                             ; preds = %.noexc, %.lr.ph, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #25
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03040, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !89 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !371

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
  tail call void @__clang_call_terminate(ptr %i.aa) #24
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !32
  %i.d = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !67
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !23
  %i.i = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.i, ptr %i.c, align 8, !tbaa !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !24
  store i8 %i.k, ptr %i.j, align 1, !tbaa !24
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #22
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !33
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i16, ptr %i.u, align 8, !tbaa !376
  store i16 %i.v, ptr %i.t, align 8, !tbaa !376
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.a, align 4
  store i64 %i.d, ptr %i.c, align 4
  %i.e = load i32, ptr %1, align 8, !tbaa !114
  store i32 %i.e, ptr %i.b, align 8, !tbaa !114
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !88
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !89 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.m, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %bb.f unwind label %bb.i       ; 8 uses

bb.f:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i64, ptr %i.n, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load i32, ptr %.03039, align 8, !tbaa !114
  store i32 %i.q, ptr %i.m, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.m, ptr %i.s, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03138, ptr %i.t, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88   ; 2 uses
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !88
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.l, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #25
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !89 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !377

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aa

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #24
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_test_craft.cpp() #17 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL15g_test_instance, i64 32), ptr getelementptr inbounds nuw (i8, ptr @_ZL15g_test_instance, i64 16), align 8, !tbaa !32
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15g_test_instance, i64 24), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15g_test_instance, i64 32), align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV9TestCraft, i64 16), ptr @_ZL15g_test_instance, align 8, !tbaa !17
  invoke void @_ZN11TestManager18registerTestModuleEP8TestBase(ptr noundef nonnull @_ZL15g_test_instance)
          to label %__cxx_global_var_init.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV8TestBase, i64 16), ptr @_ZL15g_test_instance, align 8, !tbaa !17
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15g_test_instance, i64 16), align 8, !tbaa !23 ; 2 uses
  %i.c = icmp eq ptr %i.b, getelementptr inbounds nuw (i8, ptr @_ZL15g_test_instance, i64 32)
  br i1 %i.c, label %_ZN8TestBaseD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL15g_test_instance, i64 32), align 8, !tbaa !24
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.e) #22
  br label %_ZN8TestBaseD2Ev.exit.i.i

_ZN8TestBaseD2Ev.exit.i.i:                        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  resume { ptr, i32 } %i.a

__cxx_global_var_init.exit:                       ; preds = %bb.a
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8TestBaseD2Ev, ptr nonnull @_ZL15g_test_instance, ptr nonnull @__dso_handle) #23 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"long", !12, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !12, i64 16}
!23 = !{!22, !19, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!"p1 _ZTS8IGameDef", !18, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTS9TestCraft", !18, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"any p2 pointer", !18, i64 0}
!30 = !{!"p2 _ZTS8IGameDef", !29, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!20, !19, i64 0}
!33 = !{!22, !21, i64 8}
!34 = !{!"float", !12, i64 0}
!35 = !{!"p1 _ZTS9ItemStack", !18, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI9ItemStackSaIS0_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !35, i64 8}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!36, !35, i64 16}
!41 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !29, i64 0}
!42 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!43 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !42, i64 0}
!44 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !34, i64 0, !21, i64 8}
!45 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !41, i64 0, !21, i64 8, !43, i64 16, !21, i64 24, !44, i64 32, !42, i64 48}
!46 = !{!45, !21, i64 24}
!47 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!48, !47, i64 8}
!50 = !{!48, !47, i64 0}
!51 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !22, i64 0, !13, i64 32}
!52 = !{!51, !13, i64 32}
!53 = !{!"short", !12, i64 0}
!54 = !{!"bool", !12, i64 0}
!55 = !{!"_ZTSSt22_Optional_payload_baseI13WearBarParamsE", !12, i64 0, !54, i64 56}
!56 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb1ELb0ELb0EE", !55, i64 0}
!57 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EE", !56, i64 0}
!58 = !{!"_ZTSSt14_Optional_baseI13WearBarParamsLb0ELb0EE", !57, i64 0}
!59 = !{!"_ZTSSt8optionalI13WearBarParamsE", !58, i64 0}
!60 = !{!47, !47, i64 0}
!61 = !{!48, !47, i64 16}
!62 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !18, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!63, !62, i64 0}
!65 = !{!63, !62, i64 8}
!66 = !{!63, !62, i64 16}
!67 = !{!21, !21, i64 0}
!68 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !41, i64 0, !21, i64 8, !43, i64 16, !21, i64 24, !44, i64 32, !42, i64 48}
!69 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !68, i64 0}
!70 = !{!"_ZTS14SimpleMetadata", !54, i64 8, !69, i64 16}
!71 = !{!"_ZTSSt22_Optional_payload_baseI16ToolCapabilitiesE", !12, i64 0, !54, i64 112}
!72 = !{!70, !54, i64 8}
!73 = !{!68, !41, i64 0}
!74 = !{!68, !21, i64 8}
!75 = !{!71, !54, i64 112}
!76 = !{!55, !54, i64 56}
!77 = !{!"p2 _ZTS8TestBase", !29, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIP8TestBaseSaIS1_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!78, !77, i64 16}
!80 = !{!78, !77, i64 0}
!81 = !{i8 0, i8 2}
!82 = !{}
!83 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!84 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!85 = !{!"_ZTSSt18_Rb_tree_node_base", !83, i64 0, !84, i64 8, !84, i64 16, !84, i64 24}
!86 = !{!"_ZTSSt15_Rb_tree_header", !85, i64 0, !21, i64 32}
!87 = !{!86, !84, i64 8}
!88 = !{!85, !84, i64 24}
!89 = !{!85, !84, i64 16}
!90 = !{!"p1 _ZTSSt4pairIifE", !18, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseISt4pairIifESaIS1_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!91, !90, i64 0}
!93 = !{!91, !90, i64 16}
!94 = !{!68, !42, i64 16}
!95 = !{!43, !42, i64 0}
!96 = !{!45, !21, i64 8}
end_hunk_0
begin_hunk_1_@bcmp
!168 = distinct !{!168, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!169 = distinct !{!169, !168, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!170 = distinct !{!170, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!171 = distinct !{!171, !170, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!172 = distinct !{!172, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!173 = distinct !{!173, !172, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!174 = distinct !{!174, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!175 = distinct !{!175, !174, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!176 = distinct !{!176, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!177 = distinct !{!177, !176, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!178 = distinct !{!178, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!179 = distinct !{!179, !178, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!180 = distinct !{!180, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!181 = distinct !{!181, !180, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!182 = distinct !{!182, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!183 = distinct !{!183, !182, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!184 = distinct !{!184, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!185 = distinct !{!185, !184, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!186 = distinct !{!186, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!187 = distinct !{!187, !186, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!188 = distinct !{!188, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!189 = distinct !{!189, !188, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!190 = distinct !{!190, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!191 = distinct !{!191, !190, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!192 = distinct !{!192, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!193 = distinct !{!193, !192, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!194 = distinct !{!194, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!195 = distinct !{!195, !194, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!196 = distinct !{!196, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!197 = distinct !{!197, !196, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!198 = distinct !{!198, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!199 = distinct !{!199, !198, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!200 = distinct !{!200, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!201 = distinct !{!201, !200, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!202 = distinct !{!202, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!203 = distinct !{!203, !202, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!204 = distinct !{!204, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!205 = distinct !{!205, !204, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!206 = distinct !{!206, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!207 = distinct !{!207, !206, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!208 = distinct !{!208, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!209 = distinct !{!209, !208, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!210 = distinct !{!210, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!211 = distinct !{!211, !210, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!212 = distinct !{!212, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!213 = distinct !{!213, !212, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!214 = distinct !{!214, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!215 = distinct !{!215, !214, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!216 = distinct !{!216, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!217 = distinct !{!217, !216, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!218 = distinct !{!218, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!219 = distinct !{!219, !218, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!220 = distinct !{!220, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!221 = distinct !{!221, !220, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!222 = distinct !{!222, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!223 = distinct !{!223, !222, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!224 = distinct !{!224, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!225 = distinct !{!225, !224, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!226 = distinct !{!226, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!227 = distinct !{!227, !226, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!228 = distinct !{!228, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!229 = distinct !{!229, !228, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!230 = distinct !{!230, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!231 = distinct !{!231, !230, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!232 = distinct !{!232, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!233 = distinct !{!233, !232, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!234 = distinct !{!234, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!235 = distinct !{!235, !234, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!236 = distinct !{!236, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!237 = distinct !{!237, !236, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!238 = distinct !{!238, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!239 = distinct !{!239, !238, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!240 = distinct !{!240, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!241 = distinct !{!241, !240, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!242 = distinct !{!242, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!243 = distinct !{!243, !242, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!244 = distinct !{!244, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!245 = distinct !{!245, !244, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!246 = distinct !{!246, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!247 = distinct !{!247, !246, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!248 = distinct !{!248, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!249 = distinct !{!249, !248, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!250 = distinct !{!250, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!251 = distinct !{!251, !250, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!252 = distinct !{!252, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!253 = distinct !{!253, !252, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!254 = distinct !{!254, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!255 = distinct !{!255, !254, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!256 = distinct !{!256, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!257 = distinct !{!257, !256, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!258 = distinct !{!258, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!259 = distinct !{!259, !258, !"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!260 = !{!146}
!261 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb1ELb0ELb0EE", !71, i64 0}
!262 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb0ELb0ELb0EE", !261, i64 0}
!263 = !{!"_ZTSSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EE", !262, i64 0}
!264 = !{!"_ZTSSt8optionalI16ToolCapabilitiesE", !263, i64 0}
!265 = !{!"_ZTS17ItemStackMetadata", !70, i64 0, !264, i64 72, !59, i64 192}
!266 = !{!"_ZTS9ItemStack", !22, i64 0, !53, i64 32, !53, i64 34, !265, i64 40}
!267 = !{!266, !53, i64 32}
!268 = !{!266, !53, i64 34}
!269 = !{!44, !34, i64 0}
!270 = !{!148}
!271 = !{!151}
!272 = !{!153}
!273 = !{!155}
!274 = !{!157}
!275 = !{!159}
!276 = !{!161}
!277 = !{!163}
!278 = !{!165}
!279 = !{!167}
!280 = !{!169}
!281 = !{!171}
!282 = !{!173}
!283 = !{!175}
!284 = !{!177}
!285 = !{!179}
!286 = !{!181}
!287 = !{!183}
!288 = !{!185}
!289 = !{!187}
!290 = !{!189}
!291 = !{!191}
!292 = !{!193}
!293 = !{!195}
!294 = !{!197}
!295 = !{!199}
!296 = !{!201}
!297 = !{!203}
!298 = !{!205}
!299 = !{!207}
!300 = !{!209}
!301 = !{!211}
!302 = !{!213}
!303 = !{!215}
!304 = !{!217}
!305 = !{!219}
!306 = !{!221}
!307 = !{!223}
!308 = !{!225}
!309 = !{!227}
!310 = !{!229}
!311 = !{!231}
!312 = !{!233}
!313 = !{!235}
!314 = !{!237}
!315 = !{!239}
!316 = !{!241}
!317 = !{!243}
!318 = !{!245}
!319 = !{!247}
!320 = !{!249}
!321 = !{!251}
!322 = !{!253}
!323 = !{!255}
!324 = !{!257}
!325 = !{!259}
!326 = !{!"_ZTS19TestFailedException", !22, i64 0, !22, i64 32, !13, i64 64}
!327 = !{!326, !13, i64 64}
!328 = !{!"branch_weights", i32 1, i32 1048575}
!329 = !{!78, !77, i64 8}
!330 = !{!"p1 _ZTS8TestBase", !18, i64 0}
!331 = !{!330, !330, i64 0}
!332 = distinct !{!332, !39}
!333 = distinct !{!333, !39}
!334 = distinct !{!334, !39}
!335 = distinct !{!335, !39}
!336 = !{!"_ZTSZN9TestCraft8runTestsEP8IGameDefE3$_0", !27, i64 0, !30, i64 8}
!337 = !{!336, !30, i64 8}
!338 = !{!"p1 _ZTSSt9type_info", !18, i64 0}
!339 = !{!338, !338, i64 0}
!340 = !{!18, !18, i64 0}
!341 = !{i64 0, i64 8, !28, i64 8, i64 8, !31}
!342 = !{!103, !101, i64 0}
!343 = !{!44, !21, i64 8}
!344 = distinct !{!344, !39}
!345 = !{!45, !42, i64 48}
!346 = distinct !{!346, !39}
!347 = distinct !{!347, !39}
!348 = !{!68, !21, i64 24}
!349 = !{!34, !34, i64 0}
!350 = !{i64 0, i64 4, !349, i64 8, i64 8, !67}
!351 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !18, i64 0}
!352 = !{!351, !351, i64 0}
!353 = !{!"p1 _ZTSSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE", !18, i64 0}
!354 = !{!353, !353, i64 0}
!355 = !{!"_ZTSSt4lessIfE"}
!356 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIfEE", !355, i64 0}
!357 = !{!"_ZTSNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !356, i64 0, !86, i64 8}
!358 = !{!"_ZTSSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE", !357, i64 0}
!359 = !{!"_ZTSSt3mapIfN5video6SColorESt4lessIfESaISt4pairIKfS1_EEE", !358, i64 0}
!360 = !{!"_ZTSN13WearBarParams9BlendModeE", !12, i64 0}
!361 = !{!"_ZTS13WearBarParams", !359, i64 0, !360, i64 48}
!362 = !{!361, !360, i64 48}
!363 = distinct !{!363, !39}
!364 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !18, i64 0}
!365 = !{!364, !364, i64 0}
!366 = !{!113, !113, i64 0}
!367 = distinct !{!367, !39}
!368 = distinct !{!368, !39}
!369 = !{!91, !90, i64 8}
!370 = !{!90, !90, i64 0}
!371 = distinct !{!371, !39}
!372 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeE", !113, i64 0}
!373 = !{!372, !113, i64 0}
!374 = !{i64 8}
!375 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE", !22, i64 0, !53, i64 32}
!376 = !{!375, !53, i64 32}
!377 = distinct !{!377, !39}
end_hunk_1
