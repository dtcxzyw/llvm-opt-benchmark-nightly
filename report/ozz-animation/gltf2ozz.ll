Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/gltf2ozz?download=true
inline.NumInlined: 15962
inline.NumDeleted: 4531
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8tinygltf5ValueC2ERKS0_:bb.a
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !75
  store i8 %i.l, ptr %i.k, align 1, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !398  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !129
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !152  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !153  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %.noexc12, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !470

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #44
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #45
          to label %.noexc12 unwind label %bb.l

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.z, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !431
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !432 ; 3 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !432
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !446

bb.e:                                             ; preds = %.noexc12
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %.noexc12
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !75
  store i8 %i.al, ptr %i.aa, align 1, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !152
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZNSt6vectorIN8tinygltf5ValueESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !386
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !352
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !387
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !127
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !352 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc13
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store ptr %i.aw, ptr %2, align 8, !tbaa !389
  %i.ax = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8tinygltf5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull %i.av, ptr noundef nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc15 unwind label %.body, !inline_history !3411 ; 3 uses

.noexc15:                                         ; preds = %bb.i, %.noexc15
  %.0.i.i2.i = phi ptr [ %i.az, %.noexc15 ], [ %i.ax, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i2.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !390 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i3.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8tinygltf5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc15, !llvm.loop !2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8tinygltf5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc15
  store ptr %.0.i.i2.i, ptr %i.ar, align 8, !tbaa !353
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8tinygltf5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i.i = phi ptr [ %i.ax, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8tinygltf5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.bb, %bb.j ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !391 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i14, label %bb.k, label %bb.j, !llvm.loop !3

bb.k:                                             ; preds = %bb.j
  store ptr %.0.i.i.i, ptr %i.as, align 8, !tbaa !353
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !127
  store i64 %i.bd, ptr %i.at, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !353
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

.body:                                            ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #41
  br label %bb.n

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.k, %.noexc13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !397, !range !135, !noundef !136
  store i8 %i.bh, ptr %i.bf, align 8, !tbaa !397
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.be, %.body ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !153 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !431
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #42
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.o, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %.pn, %bb.n ], [ %.pn, %bb.o ]
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !89  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.d
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.br = load i64, ptr %i.d, align 8, !tbaa !75
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8tinygltf5ValueESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !393    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775752
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8tinygltf5ValueEE8allocateEmPKv.exit.i.i.i, !prof !470

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #44
  unreachable

_ZNSt15__new_allocatorIN8tinygltf5ValueEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8tinygltf5ValueEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8tinygltf5ValueEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !393
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !392
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !596
  %i.m = load ptr, ptr %1, align 8, !tbaa !597    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !597  ; 2 uses
  %.not18 = icmp eq ptr %i.m, %i.n
  br i1 %.not18, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8tinygltf5ValueESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZSt10_ConstructIN8tinygltf5ValueEJRKS1_EEvPT_DpOT0_.exit.i
  %.0.i20 = phi ptr [ %i.p, %_ZSt10_ConstructIN8tinygltf5ValueEJRKS1_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.014.019 = phi ptr [ %i.o, %_ZSt10_ConstructIN8tinygltf5ValueEJRKS1_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8tinygltf5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(145) %.0.i20, ptr noundef nonnull align 8 dereferenceable(145) %.sroa.014.019)
          to label %_ZSt10_ConstructIN8tinygltf5ValueEJRKS1_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !3412

_ZSt10_ConstructIN8tinygltf5ValueEJRKS1_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 152 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i20, i64 152 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8tinygltf5ValueESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph, !llvm.loop !3413

bb.d:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #41, !inline_history !3414 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8tinygltf5ValueEEvT_S3_(ptr noundef %i.i, ptr noundef nonnull %.0.i20)
          to label %bb.e unwind label %bb.f, !inline_history !3414

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #44
          to label %bb.h unwind label %bb.f, !inline_history !3414

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g, !inline_history !3414

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #40, !inline_history !3414
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8tinygltf5ValueESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8tinygltf5ValueEJRKS1_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.i.lcssa = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8tinygltf5ValueEJRKS1_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.i.lcssa, ptr %i.j, align 8, !tbaa !392
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !393    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !596
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #42
  br label %_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !393    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !392  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i2, label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i3 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZSt8_DestroyIN8tinygltf5ValueEEvPT_(ptr noundef %.0.i.i3), !inline_history !3415
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !35

_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !596
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #42
  br label %_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN8tinygltf5ValueEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i3 = icmp eq ptr %0, %1
  br i1 %.not.i3, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8tinygltf5ValueEEEvT_S5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i4 = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %0, %bb.a ] ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i4, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i4, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !352
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8tinygltf5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b, !inline_history !3416

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #40, !inline_history !3416
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i4, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !393  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i4, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !392  ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i2.i, label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %.lr.ph.i
  %.0.i.i3.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit ] ; 2 uses
  tail call void @_ZSt8_DestroyIN8tinygltf5ValueEEvPT_(ptr noundef %.0.i.i3.i) #39, !inline_history !3417
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !35

_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.k = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.g, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i4, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !596
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #42, !inline_history !3418
  br label %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i4, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i4, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !431
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #42
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev.exit, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i4, i64 16
end_hunk_0
begin_hunk_1_@_ZN12GltfImporter6ImportEPN3ozz9animation7offline11RawSkeletonERKNS2_11OzzImporter8NodeTypeE:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i99 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i99, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100

bb.m:                                             ; preds = %_ZN3ozz3log6LoggerlsIA19_cEERSoRKT_.exit
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc104 unwind label %bb.q

.noexc104:                                        ; preds = %bb.m
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100: ; preds = %_ZN3ozz3log6LoggerlsIA19_cEERSoRKT_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !491
  %.not.i1.i.i101 = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i101, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 67
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
          to label %.noexc105 unwind label %bb.q

.noexc105:                                        ; preds = %bb.o
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !421
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef signext i8 %i.bv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102 unwind label %bb.q, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102: ; preds = %.noexc105, %bb.n
  %.0.i.i.i103 = phi i8 [ %i.bs, %bb.n ], [ %i.bw, %.noexc105 ]
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i8 noundef signext %.0.i.i.i103)
          to label %.noexc107 unwind label %bb.q

.noexc107:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %_ZNSolsEPFRSoS_E.exit62 unwind label %bb.q ; 0 uses

_ZNSolsEPFRSoS_E.exit62:                          ; preds = %.noexc107
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.bt

bb.p:                                             ; preds = %.noexc96, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i91, %.noexc94, %bb.k, %bb.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.h, %bb.g, %_ZN3ozz3log6LoggerlsIA31_cEERSoRKT_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.bu

bb.q:                                             ; preds = %.noexc107, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i102, %.noexc105, %bb.o, %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.bu

bb.r:                                             ; preds = %_ZNSolsEPFRSoS_E.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZNK12GltfImporter16GetSkinsForSceneERKN8tinygltf5SceneE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.351") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull align 8 dereferenceable(344) %i.ac)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %7, align 8, !tbaa !547   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !547 ; 2 uses
  %i.ce = icmp eq ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  invoke void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %8)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %8, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.255, i64 noundef 84)
          to label %_ZN3ozz3log6LoggerlsIA85_cEERSoRKT_.exit unwind label %bb.aa ; 0 uses

_ZN3ozz3log6LoggerlsIA85_cEERSoRKT_.exit:         ; preds = %bb.u
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !421
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 240
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i110 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i110, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111

bb.v:                                             ; preds = %_ZN3ozz3log6LoggerlsIA85_cEERSoRKT_.exit
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc115 unwind label %bb.aa

.noexc115:                                        ; preds = %bb.v
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111: ; preds = %_ZN3ozz3log6LoggerlsIA85_cEERSoRKT_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !491
  %.not.i1.i.i112 = icmp eq i8 %i.co, 0
  br i1 %.not.i1.i.i112, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 67
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cm)
          to label %.noexc116 unwind label %bb.aa

.noexc116:                                        ; preds = %bb.x
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !421
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef signext i8 %i.ct(ptr noundef nonnull align 8 dereferenceable(570) %i.cm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113 unwind label %bb.aa, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113: ; preds = %.noexc116, %bb.w
  %.0.i.i.i114 = phi i8 [ %i.cq, %bb.w ], [ %i.cu, %.noexc116 ]
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i8 noundef signext %.0.i.i.i114)
          to label %.noexc118 unwind label %bb.aa

.noexc118:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNSolsEPFRSoS_E.exit63 unwind label %bb.aa ; 0 uses

_ZNSolsEPFRSoS_E.exit63:                          ; preds = %.noexc118
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.cx = load ptr, ptr %i.bc, align 8, !tbaa !517 ; 2 uses
  %i.cy = load ptr, ptr %i.be, align 8, !tbaa !517 ; 2 uses
  %.not152155 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not152155, label %.loopexit153, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSolsEPFRSoS_E.exit63
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ac

bb.y:                                             ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.z:                                             ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc118, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i113, %.noexc116, %bb.x, %bb.v, %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn47 = phi { ptr, i32 } [ %i.dd, %bb.aa ], [ %i.dc, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.br

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit
  %.sroa.0147.0156 = phi ptr [ %i.cx, %.lr.ph ], [ %i.di, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit ] ; 3 uses
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !617 ; 4 uses
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !618
  %.not.i = icmp eq ptr %i.de, %i.df
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load i32, ptr %.sroa.0147.0156, align 4, !tbaa !385
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !385
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store ptr %i.dh, ptr %i.cz, align 8, !tbaa !617
  br label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.de, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0147.0156)
          to label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit unwind label %bb.af

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit: ; preds = %bb.ad, %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0147.0156, i64 4 ; 2 uses
  %.not152 = icmp eq ptr %i.di, %i.cy
  br i1 %.not152, label %.loopexit153, label %bb.ac

bb.af:                                            ; preds = %bb.ae
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ag:                                            ; preds = %bb.s
  %i.dk = ptrtoint ptr %i.cd to i64
  %i.dl = ptrtoint ptr %i.cb to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ugt i64 %i.dm, 328
  br i1 %i.dn, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  invoke void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %9)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.do = load ptr, ptr %9, align 8, !tbaa !614, !nonnull !136, !align !563 ; 4 uses
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.256, i64 noundef 82)
          to label %_ZN3ozz3log6LoggerlsIA83_cEERSoRKT_.exit unwind label %bb.an ; 0 uses

_ZN3ozz3log6LoggerlsIA83_cEERSoRKT_.exit:         ; preds = %bb.ai
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !421
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 240
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !486 ; 6 uses
  %.not.i.i.i121 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i121, label %bb.aj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122

bb.aj:                                            ; preds = %_ZN3ozz3log6LoggerlsIA83_cEERSoRKT_.exit
  invoke void @_ZSt16__throw_bad_castv() #44
          to label %.noexc126 unwind label %bb.an

.noexc126:                                        ; preds = %bb.aj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122: ; preds = %_ZN3ozz3log6LoggerlsIA83_cEERSoRKT_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !491
  %.not.i1.i.i123 = icmp eq i8 %i.dx, 0
  br i1 %.not.i1.i.i123, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 67
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !75
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dv)
          to label %.noexc127 unwind label %bb.an

.noexc127:                                        ; preds = %bb.al
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !421
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef signext i8 %i.ec(ptr noundef nonnull align 8 dereferenceable(570) %i.dv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124 unwind label %bb.an, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124: ; preds = %.noexc127, %bb.ak
  %.0.i.i.i125 = phi i8 [ %i.dz, %bb.ak ], [ %i.ed, %.noexc127 ]
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.do, i8 noundef signext %.0.i.i.i125)
          to label %.noexc129 unwind label %bb.an

.noexc129:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %_ZNSolsEPFRSoS_E.exit66 unwind label %bb.an ; 0 uses

_ZNSolsEPFRSoS_E.exit66:                          ; preds = %.noexc129
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.ap

bb.am:                                            ; preds = %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %.noexc129, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i124, %.noexc127, %bb.al, %bb.aj, %bb.ai
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %9) #41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.an ], [ %i.eg, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.br

bb.ap:                                            ; preds = %_ZNSolsEPFRSoS_E.exit66, %bb.ag
  invoke void @_ZN12GltfImporter24FindSkinRootJointIndicesERKSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS2_EEERS0_IiNS4_IiEEE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.loopexit153 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.av, %.noexc67, %bb.ar, %.critedge, %bb.ap
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit153:                                     ; preds = %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit, %_ZNSolsEPFRSoS_E.exit63, %bb.ap
  %i.ej = load ptr, ptr %6, align 8, !tbaa !517   ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !517 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ej, %i.el
  br i1 %.not.i.i, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS3_EES8_.exit, label %bb.ar

bb.ar:                                            ; preds = %.loopexit153
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 2
  %i.eq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ep, i1 true)
  %i.er = shl nuw nsw i64 %i.eq, 1
  %i.es = xor i64 %i.er, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.ej, ptr %i.el, i64 noundef %i.es)
          to label %.noexc67 unwind label %bb.aq

.noexc67:                                         ; preds = %bb.ar
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.ej, ptr %i.el)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEEvT_S9_.exit unwind label %bb.aq

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEEvT_S9_.exit: ; preds = %.noexc67
  %.pre = load ptr, ptr %6, align 8, !tbaa !517   ; 8 uses
  %.pre161 = load ptr, ptr %i.ek, align 8, !tbaa !517 ; 8 uses
  %i.et = icmp eq ptr %.pre, %.pre161
  br i1 %i.et, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS3_EES8_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEEvT_S9_.exit, %bb.as
  %.sroa.09.0.i.i.i = phi ptr [ %i.eu, %bb.as ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEEvT_S9_.exit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eu, %.pre161
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS3_EES8_.exit, label %bb.as

bb.as:                                            ; preds = %.preheader.i.i.i
  %i.ev = load i32, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !385 ; 2 uses
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !385
  %i.ex = icmp eq i32 %i.ev, %i.ew
  br i1 %i.ex, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !3836

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i: ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.ey, %.pre161
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEET_S9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i, %bb.au
  %i.ez = phi i32 [ %i.fb, %bb.au ], [ %i.ev, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ]
  %i.fa = phi ptr [ %i.fe, %bb.au ], [ %i.ey, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.au ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ] ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !385 ; 3 uses
  %i.fc = icmp eq i32 %i.ez, %i.fb
  br i1 %i.fc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !385
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.fd, %bb.at ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.fe, %.pre161
  br i1 %.not.i.i69, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEET_S9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3837

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEET_S9_S9_.exit: ; preds = %bb.au, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.au ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.ff, %.pre161
  br i1 %.not.i.i70, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS3_EES8_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEET_S9_S9_.exit
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %.pre to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %.pre, i64 %i.fi ; 2 uses
  store ptr %i.fj, ptr %i.ek, align 8, !tbaa !617
  br label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS3_EES8_.exit

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS3_EES8_.exit: ; preds = %.preheader.i.i.i, %.loopexit153, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEEvT_S9_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEES8_ET0_T_SA_S9_.exit.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEET_S9_S9_.exit
  %i.fk = phi ptr [ %i.ej, %.loopexit153 ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEEvT_S9_.exit ], [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEES8_ET0_T_SA_S9_.exit.i.i ], [ %.pre, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEET_S9_S9_.exit ], [ %.pre, %.preheader.i.i.i ]
  %i.fl = phi ptr [ %i.ej, %.loopexit153 ], [ %.pre161, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEEvT_S9_.exit ], [ %i.fj, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEES8_ET0_T_SA_S9_.exit.i.i ], [ %.pre161, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3ozz12StdAllocatorIiEEEEEET_S9_S9_.exit ], [ %.pre161, %.preheader.i.i.i ]
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 2                 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !621 ; 3 uses
  %i.fs = load ptr, ptr %1, align 8, !tbaa !622   ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = sdiv exact i64 %i.fv, 96                ; 3 uses
  %i.fx = icmp ugt i64 %i.fp, %i.fw
  br i1 %i.fx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS3_EES8_.exit
  %i.fy = sub nuw nsw i64 %i.fp, %i.fw
  invoke void @_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fy)
          to label %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit unwind label %bb.aq

bb.aw:                                            ; preds = %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS3_EES8_.exit
  %i.fz = icmp ult i64 %i.fp, %i.fw
  br i1 %i.fz, label %bb.ax, label %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ga = getelementptr inbounds nuw [96 x i8], ptr %i.fs, i64 %i.fp ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.fr, %i.ga
  br i1 %.not.i.i72, label %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ax, %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_ZNK12GltfImporter16GetSkinsForSceneERKN8tinygltf5SceneE:bb.a

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.lr.ph63
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.c, %.lr.ph63 ] ; 4 uses
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.bg = icmp eq ptr %.019.lcssa29.i.i, %i.bf
  br i1 %i.bg, label %select.unfold.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i
  %i.bh = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #43
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !385
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bi = phi i32 [ %.pre.i, %bb.j ], [ %i.bd, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.j ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.bj = icmp slt i32 %i.bi, %i.bb
  br i1 %i.bj, label %select.unfold.i, label %bb.p

select.unfold.i:                                  ; preds = %bb.k, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.k ] ; 3 uses
  %i.bk = icmp eq ptr %.sroa.4.0.i.ph.i, %i.c
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %select.unfold.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !385
  %i.bn = icmp slt i32 %i.bb, %i.bm
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %select.unfold.i
  %i.bo = phi i1 [ %i.bn, %bb.l ], [ true, %select.unfold.i ]
  %i.bp = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.n unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !421
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i64 noundef 40, i64 noundef 8)
          to label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE10_M_insert_IRKiNS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i unwind label %bb.o ; 2 uses

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #40
  unreachable

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE10_M_insert_IRKiNS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i: ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i32 %i.bb, ptr %i.bw, align 4, !tbaa !385
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bo, ptr noundef %i.bt, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #41
  %i.bx = load i64, ptr %i.g, align 8, !tbaa !127
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.g, align 8, !tbaa !127
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE10_M_insert_IRKiNS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.041.062, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.bz, %i.ax
  br i1 %.not50, label %._crit_edge, label %.lr.ph63

._crit_edge65:                                    ; preds = %._crit_edge, %bb.a, %.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !547 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !547 ; 2 uses
  %.not5166 = icmp eq ptr %i.cb, %i.cd
  br i1 %.not5166, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %._crit_edge65
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.s

._crit_edge70:                                    ; preds = %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit, %._crit_edge65
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !352
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.cg)
          to label %_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %._crit_edge70
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #40
  unreachable

_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEED2Ev.exit: ; preds = %._crit_edge70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !352
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.cj)
          to label %_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEED2Ev.exit28 unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEED2Ev.exit
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #40
  unreachable

_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEED2Ev.exit28: ; preds = %_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.s:                                             ; preds = %.lr.ph69, %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit
  %.sroa.034.067 = phi ptr [ %i.cb, %.lr.ph69 ], [ %i.de, %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.034.067, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !517 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.034.067, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !517
  %i.cq = icmp eq ptr %i.cn, %i.cp
  br i1 %i.cq, label %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !352 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %bb.t
  %i.cs = load i32, ptr %i.cn, align 4, !tbaa !385 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i29
  %.012.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i29 ], [ %.1.i.i.i, %bb.u ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i29 ], [ %.19.i.i.i, %bb.u ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !385
  %i.cv = icmp slt i32 %i.cu, %i.cs               ; 3 uses
  %.19.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !353 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %bb.u, !llvm.loop !3877

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %bb.u
  %i.cw = icmp eq ptr %.19.i.i.i, %i.h
  br i1 %i.cw, label %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit, label %_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEE4findERKi.exit

_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEE4findERKi.exit: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cx = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !385
  %i.cy = icmp slt i32 %i.cs, %i.cx
  br i1 %i.cy, label %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEE4findERKi.exit
  %i.cz = load ptr, ptr %i.ce, align 8, !tbaa !626 ; 3 uses
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !671
  %.not.i = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN8tinygltf4SkinC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(328) %i.cz, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.034.067)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.w
  %i.db = load ptr, ptr %i.ce, align 8, !tbaa !626
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 328
  store ptr %i.dc, ptr %i.ce, align 8, !tbaa !626
  br label %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit

bb.x:                                             ; preds = %bb.v
  invoke void @_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cz, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.034.067)
          to label %_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #41
  br label %bb.z

_ZNSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS1_EEE9push_backERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiEN3ozz12StdAllocatorIiEEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.t, %bb.s, %.noexc, %bb.x, %_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEE4findERKi.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.034.067, i64 328 ; 2 uses
  %.not51 = icmp eq ptr %i.de, %i.cd
  br i1 %.not51, label %._crit_edge70, label %bb.s

bb.z:                                             ; preds = %bb.y, %bb.i, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.v, %bb.b ], [ %i.ba, %bb.i ], [ %i.dd, %bb.y ]
  call void @_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZNSt3setIiSt4lessIiEN3ozz12StdAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12GltfImporter24FindSkinRootJointIndicesERKSt6vectorIN8tinygltf4SkinEN3ozz12StdAllocatorIS2_EEERS0_IiNS4_IiEEE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.347", align 8   ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !318  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !319  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 488                 ; 2 uses
  %4 = icmp slt i64 %i.h, 0
  br i1 %4, label %bb.b, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #44
  unreachable

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit.thread, label %bb.c

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit.thread: ; preds = %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %._crit_edge46

bb.c:                                             ; preds = %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE17_S_check_init_lenEmRKS2_.exit.i
  %i.j = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.i, 2                  ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !421
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.k, i64 noundef 4)
          to label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit unwind label %bb.e ; 11 uses

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #40
  unreachable

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit: ; preds = %bb.d
  store ptr %i.o, ptr %3, align 8, !tbaa !623
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !618
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 -1, i64 %i.k, i1 false), !tbaa !385
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.k
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !318
  %.pre54 = load ptr, ptr %i.b, align 8, !tbaa !319 ; 4 uses
  %.pre55 = ptrtoint ptr %.pre to i64
  %.pre56 = ptrtoint ptr %.pre54 to i64
  %.pre58 = sub i64 %.pre55, %.pre56
  %.pre60 = sdiv exact i64 %.pre58, 488           ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %scevgep, ptr %i.t, align 8, !tbaa !617
  %i.u = trunc i64 %.pre60 to i32
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit
  %wide.trip.count = and i64 %.pre60, 2147483647
  %xtraiter = and i64 %.pre60, 1
  %i.w = icmp eq i64 %wide.trip.count, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph45.new

.lr.ph45.new:                                     ; preds = %.lr.ph45
  %unroll_iter = and i64 %.pre60, 2147483646
  br label %bb.f

._crit_edge46.loopexit.unr-lcssa:                 ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge46, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge46.loopexit.unr-lcssa, %.lr.ph45
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next.1, %._crit_edge46.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i64 %.pre60 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.x = getelementptr inbounds nuw [488 x i8], ptr %.pre54, i64 %indvars.iv.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !517  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !517 ; 2 uses
  %.not4042.epil = icmp eq ptr %i.z, %i.ab
  br i1 %.not4042.epil, label %._crit_edge46, label %.lr.ph.preheader.epil

.lr.ph.preheader.epil:                            ; preds = %.epil.preheader
  %i.ac = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.preheader.epil
  %.sroa.035.043.epil = phi ptr [ %i.ag, %.lr.ph.epil ], [ %i.z, %.lr.ph.preheader.epil ] ; 2 uses
  %i.ad = load i32, ptr %.sroa.035.043.epil, align 4, !tbaa !385
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ae
  store i32 %i.ac, ptr %i.af, align 4, !tbaa !385
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.035.043.epil, i64 4 ; 2 uses
  %.not40.epil = icmp eq ptr %i.ag, %i.ab
  br i1 %.not40.epil, label %._crit_edge46, label %.lr.ph.epil

._crit_edge46:                                    ; preds = %._crit_edge46.loopexit.unr-lcssa, %.lr.ph.epil, %.epil.preheader, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit.thread, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit
  %i.ah = phi ptr [ null, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit.thread ], [ %i.o, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEEC2EmRKiRKS2_.exit ], [ %i.o, %.epil.preheader ], [ %i.o, %.lr.ph.epil ], [ %i.o, %._crit_edge46.loopexit.unr-lcssa ] ; 4 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !547   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !547 ; 2 uses
  %.not3947 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not3947, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %._crit_edge46
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.1, %.lr.ph45.new
  %indvars.iv = phi i64 [ 0, %.lr.ph45.new ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph45.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.an = getelementptr inbounds nuw [488 x i8], ptr %.pre54, i64 %indvars.iv ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !517 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !517 ; 2 uses
  %.not4042 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4042, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [488 x i8], ptr %.pre54, i64 %indvars.iv.next ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !517 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !517 ; 2 uses
  %.not4042.1 = icmp eq ptr %i.av, %i.ax
  br i1 %.not4042.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.ay = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.sroa.035.043.1 = phi ptr [ %i.bc, %.lr.ph.1 ], [ %i.av, %.lr.ph.preheader.1 ] ; 2 uses
  %i.az = load i32, ptr %.sroa.035.043.1, align 4, !tbaa !385
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ba
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !385
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.035.043.1, i64 4 ; 2 uses
  %.not40.1 = icmp eq ptr %i.bc, %i.ax
  br i1 %.not40.1, label %._crit_edge.1, label %.lr.ph.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge46.loopexit.unr-lcssa, label %bb.f, !llvm.loop !3881

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.035.043 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ap, %.lr.ph.preheader ] ; 2 uses
  %i.bd = load i32, ptr %.sroa.035.043, align 4, !tbaa !385
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.be
  store i32 %i.as, ptr %i.bf, align 4, !tbaa !385
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.035.043, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.bg, %i.ar
  br i1 %.not40, label %._crit_edge, label %.lr.ph

._crit_edge51:                                    ; preds = %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit, %._crit_edge46
  %.not.i.i.i27 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge51
  %i.bh = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !421
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.ah)
          to label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #40
  unreachable

_ZNSt6vectorIiN3ozz12StdAllocatorIiEEED2Ev.exit:  ; preds = %._crit_edge51, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.j:                                             ; preds = %.lr.ph50, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit
  %.sroa.031.048 = phi ptr [ %i.ai, %.lr.ph50 ], [ %i.ci, %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.031.048, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !517 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.031.048, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !517
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %_ZNSt6vectorIiN3ozz12StdAllocatorIiEEE9push_backERKi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.031.048, i64 36 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !379 ; 2 uses
  %.not = icmp eq i32 %i.bt, -1
  br i1 %.not, label %bb.p, label %bb.l
end_hunk_2
begin_hunk_3_@_ZN8nlohmann16json_abi_v3_11_36detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA52_KcPS9_EEET_DpOT0_:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(52) %1) #41 ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !129
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(52) %1, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !432    ; 2 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #41 ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !129
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %.invoke, label %_ZN8nlohmann16json_abi_v3_11_36detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i

.invoke:                                          ; preds = %.noexc6, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #44
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8nlohmann16json_abi_v3_11_36detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i: ; preds = %.noexc6
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %_ZN8nlohmann16json_abi_v3_11_36detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA52_KcJPS9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.invoke, %_ZN8nlohmann16json_abi_v3_11_36detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.a, align 8, !tbaa !75
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.r

_ZN8nlohmann16json_abi_v3_11_36detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA52_KcJPS9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_11_36detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE22_M_emplace_hint_uniqueIJS5_SG_EEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, nlohmann::json_abi_v3_11_3::basic_json<>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, nlohmann::json_abi_v3_11_3::basic_json<>>>, std::less<void>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store ptr %0, ptr %4, align 8, !tbaa !574
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #45 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !396
  %i.d = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !89
  %i.k = load i64, ptr %i.e, align 8, !tbaa !75
  store i64 %i.k, ptr %i.c, align 8, !tbaa !75
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.l, ptr %i.o, align 8, !tbaa !129
  store ptr %i.e, ptr %2, align 8, !tbaa !89
  store i64 0, ptr %i.n, align 8, !tbaa !129
  store i8 0, ptr %i.e, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !576
  store i8 0, ptr %3, align 8, !tbaa !436
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !75
  store ptr %i.a, ptr %i.m, align 8, !tbaa !612
  %i.r = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1        ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.v
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.o, align 8, !tbaa !129  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !129  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.w) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.ad = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #41 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.ae = sub i64 %i.w, %i.y
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i
  %i.ag = phi i1 [ %i.af, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.a, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #41
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !127
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !127
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.am = load i8, ptr %i.p, align 8, !tbaa !81
  invoke void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef zeroext %i.am) #39
          to label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i unwind label %bb.i, !inline_history !8

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #40, !inline_history !8
  unreachable

_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i: ; preds = %bb.h
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !89  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i7: ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !75
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #42, !inline_history !9
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #42, !inline_history !10
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.a, %.thread ], [ %i.s, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIPKNS1_6detail8json_refISD_EEEEvT_SM_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nlohmann::json_abi_v3_11_3::basic_json", align 8 ; 5 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 3 uses
  %4 = icmp slt i64 %i.c, 0
  br i1 %4, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #44
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !587
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !579
  br label %_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_11_36detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #45 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !587
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !579
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %.016.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755, !noalias !5160 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.01215.i.i.i.i, i64 16, i1 false), !tbaa.struct !576
  store i8 0, ptr %.01215.i.i.i.i, align 8, !tbaa !436, !noalias !5160
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !75, !noalias !5160
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !576
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.o = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_11_36detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5159

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #41 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #44
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.t

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #40
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_11_36detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.p, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.w, align 8, !tbaa !580
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(none) }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { cold noreturn }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #32 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #34 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #35 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #39 = { "function-inline-cost-multiplier"="2" }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind }
attributes #42 = { builtin nounwind }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { noreturn }
attributes #45 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #46 = { cold }
attributes #47 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!63, !64, !65, !66}
!llvm.ident = !{!67}
!llvm.errno.tbaa = !{!72}

!0 = distinct !{!0, !130}
!1 = distinct !{!1, !130}
!2 = distinct !{!2, !130}
!3 = distinct !{!3, !130}
!4 = distinct !{null}
!5 = distinct !{!5, !130}
!6 = distinct !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, null}
!7 = distinct !{!7, !130}
!8 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!13 = distinct !{!13, !130}
!14 = distinct !{!14, !130}
!15 = distinct !{!15, !130}
!16 = distinct !{!16, !130}
!17 = distinct !{!17, !130}
!18 = distinct !{!18, !130}
!19 = distinct !{!19, !130}
!20 = distinct !{!20, !130}
!21 = distinct !{!21, !130}
!22 = distinct !{!22, !130}
!23 = distinct !{!23, !130}
!24 = distinct !{!24, !130}
!25 = distinct !{!25, !130}
!26 = distinct !{!26, !130}
!27 = distinct !{!27, !130}
end_hunk_3
