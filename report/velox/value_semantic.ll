Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/value_semantic?download=true
inline.NumInlined: 1622
inline.NumDeleted: 582
begin_hunk_0_@_ZNK5boost15program_options16ambiguous_option23substitute_placeholdersERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZNK5boost15program_options22error_with_option_name23substitute_placeholdersERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.bc

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 17 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !167
  %i.d = load ptr, ptr %1, align 8, !tbaa !170    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !171  ; 8 uses
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #32
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i64 %i.f, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !185

.noexc6.i:                                        ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #33 ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !170
  store i64 %i.f, ptr %i.c, align 8, !tbaa !172
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.c ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !172
  store i8 %i.m, ptr %i.l, align 1, !tbaa !172
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store i64 %i.f, ptr %i.n, align 8, !tbaa !171
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !236  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !236  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 24, i1 false)
  store ptr %i.t, ptr %i.u, align 8, !tbaa !232
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.t, ptr %i.v, align 8, !tbaa !233
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %6, ptr %4, align 8, !tbaa !366
  %i.x = icmp eq ptr %i.q, %i.s
  br i1 %i.x, label %.loopexit129.thread, label %.lr.ph.i.i

.loopexit129.thread:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.noexc.i28
  %.sroa.03.06.i.i = phi ptr [ %i.z, %.noexc.i28 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %i.y = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.06.i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i28 unwind label %bb.h ; 0 uses

.noexc.i28:                                       ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 32 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.s
  br i1 %i.aa, label %.loopexit129, label %.lr.ph.i.i, !llvm.loop !354

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #30
  br label %.body

.loopexit129:                                     ; preds = %.noexc.i28
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !232 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ac = icmp eq ptr %.pre, %i.t
  br i1 %i.ac, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit129, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ 0, %.loopexit129 ] ; 2 uses
  %.sroa.02.04.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.pre, %.loopexit129 ]
  %i.ad = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.04.i.i.i) #34 ; 2 uses
  %i.ae = add nuw nsw i64 %.05.i.i.i, 1           ; 3 uses
  %i.af = icmp eq ptr %i.ad, %i.t
  br i1 %i.af, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !355

_ZSt10__distanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = icmp samesign ugt i64 %.05.i.i.i, 288230376151711742
  br i1 %i.ag, label %bb.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i

bb.i:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #32
          to label %.noexc.i29 unwind label %.thread

.noexc.i29:                                       ; preds = %bb.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i
  %i.ah = shl nuw nsw i64 %i.ae, 5
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #33
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %.loopexit129.thread, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %.loopexit129
  %i.aj = phi ptr [ %.pre, %.loopexit129 ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ %i.t, %.loopexit129.thread ]
  %.0.lcssa.i811.i.i = phi i64 [ 0, %.loopexit129 ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ 0, %.loopexit129.thread ] ; 3 uses
  %.pr.i = phi ptr [ null, %.loopexit129 ], [ %i.ai, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ null, %.loopexit129.thread ] ; 11 uses
  store ptr %.pr.i, ptr %7, align 8, !tbaa !161
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %.0.lcssa.i811.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !164
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_ET0_T_SA_S9_(ptr %i.aj, ptr nonnull %i.t, ptr noundef %.pr.i)
          to label %bb.l unwind label %bb.j       ; 6 uses

.thread:                                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body30

bb.j:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body30, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.idx187 = shl nuw nsw i64 %.0.lcssa.i811.i.i, 5
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx187) #31
  br label %.body30

bb.l:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !160
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !171 ; 5 uses
  %i.ap = icmp sgt i64 %i.ao, 9223372036854775794
  br i1 %i.ap, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.l
  %i.aq = add nsw i64 %i.ao, 13                   ; 3 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !170   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.at = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.at)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.au = load i64, ptr %i.c, align 8, !tbaa !172
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i32 = icmp ugt i64 %i.aq, %i.av
  br i1 %.not.i.i.i32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.aw, ptr noundef nonnull align 1 dereferenceable(13) @.str.31, i64 13, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ao, i64 noundef 0, ptr noundef nonnull @.str.31, i64 noundef 13)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.n
  store i64 %i.aq, ptr %i.n, align 8, !tbaa !171
  %i.ax = load ptr, ptr %5, align 8, !tbaa !170
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  store i8 0, ptr %i.ay, align 1, !tbaa !172
  %i.az = ptrtoint ptr %i.am to i64
  %i.ba = ptrtoint ptr %.pr.i to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 32
  br i1 %i.bc, label %.lr.ph, label %bb.ah

.lr.ph:                                           ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %12 = ashr exact i64 %i.bb, 5
  %13 = add nsw i64 %12, -1
  br label %bb.s

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !171 ; 5 uses
  %i.bi = and i64 %i.bh, -4
  %i.bj = icmp eq i64 %i.bi, 9223372036854775804
  br i1 %i.bj, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i34: ; preds = %._crit_edge
  %i.bk = add nsw i64 %i.bh, 4                    ; 3 uses
  %i.bl = load ptr, ptr %5, align 8, !tbaa !170   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i34
  %i.bn = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i34
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !172
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40
  %i.bp = phi i64 [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40 ]
  %.not.i.i.i37 = icmp ugt i64 %i.bk, %i.bp
  br i1 %.not.i.i.i37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  store i32 543452769, ptr %i.bq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit43

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bh, i64 noundef 0, ptr noundef nonnull @.str.34, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit43 unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit43: ; preds = %bb.q, %bb.p
  store i64 %i.bk, ptr %i.n, align 8, !tbaa !171
  %i.br = load ptr, ptr %5, align 8, !tbaa !170
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bk
  store i8 0, ptr %i.bs, align 1, !tbaa !172
  br label %bb.ah

bb.r:                                             ; preds = %.invoke, %bb.ak, %bb.q, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.s:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.bu = phi i64 [ 0, %.lr.ph ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  %.0138 = phi i32 [ 0, %.lr.ph ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !170, !noalias !367
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !171, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !367
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.3") align 8 %9, ptr noundef nonnull @.str.32, i64 noundef 9, ptr noundef %i.bw, i64 noundef %i.by, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !367
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.bz = load i64, ptr %i.bd, align 8, !tbaa !171, !noalias !368 ; 5 uses
  %i.ca = icmp sgt i64 %i.bz, 9223372036854775804
  br i1 %i.ca, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i45

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #32
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.u
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i45: ; preds = %bb.t
  %i.cb = add nsw i64 %i.bz, 3                    ; 3 uses
  %i.cc = load ptr, ptr %9, align 8, !tbaa !170, !noalias !368 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.be
  br i1 %i.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i45
  %i.ce = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ce)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i45
  %i.cf = load i64, ptr %i.be, align 8, !tbaa !172, !noalias !368
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51
  %i.cg = phi i64 [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51 ]
  %.not.i.i.i48 = icmp ugt i64 %i.cb, %i.cg
  br i1 %.not.i.i.i48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ch, ptr noundef nonnull align 1 dereferenceable(3) @.str.33, i64 3, i1 false), !noalias !368
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.bz, i64 noundef 0, ptr noundef nonnull @.str.33, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.w, %bb.v
  store i64 %i.cb, ptr %i.bd, align 8, !tbaa !171, !noalias !368
  %i.ci = load ptr, ptr %9, align 8, !tbaa !170, !noalias !368
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cb
  store i8 0, ptr %i.cj, align 1, !tbaa !172, !noalias !368
  store ptr %i.bf, ptr %8, align 8, !tbaa !167, !alias.scope !368
  %i.ck = load ptr, ptr %9, align 8, !tbaa !170, !noalias !368 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, %i.be
  br i1 %i.cl, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cm = load i64, ptr %i.bd, align 8, !tbaa !171, !noalias !368 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.co, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ck, ptr %8, align 8, !tbaa !170, !alias.scope !368
  %i.cp = load i64, ptr %i.be, align 8, !tbaa !172, !noalias !368
  store i64 %i.cp, ptr %i.bf, align 8, !tbaa !172, !alias.scope !368
  %.pre.i = load i64, ptr %i.bd, align 8, !tbaa !171, !noalias !368
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %i.cq = phi ptr [ %i.bf, %bb.x ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.cr = phi i64 [ %i.cm, %bb.x ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 7 uses
  store i64 %i.cr, ptr %i.bg, align 8, !tbaa !171, !alias.scope !368
  store ptr %i.be, ptr %9, align 8, !tbaa !170, !noalias !368
  store i64 0, ptr %i.bd, align 8, !tbaa !171, !noalias !368
  store i8 0, ptr %i.be, align 8, !tbaa !172, !noalias !368
  %i.cs = load i64, ptr %i.n, align 8, !tbaa !171 ; 5 uses
  %i.ct = sub i64 9223372036854775807, %i.cs
  %i.cu = icmp ult i64 %i.ct, %i.cr
  br i1 %i.cu, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #32
          to label %.noexc54 unwind label %.loopexit.split-lp125.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.z
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.y
  %i.cv = add i64 %i.cs, %i.cr                    ; 3 uses
  %i.cw = load ptr, ptr %5, align 8, !tbaa !170   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.c
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cy = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.cy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cz = load i64, ptr %i.c, align 8, !tbaa !172
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.da = phi i64 [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.cv, %i.da
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not8.i.i.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cs ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.cr, 1
  br i1 %cond.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i8, ptr %i.cq, align 1, !tbaa !172
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !172
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.cq, i64 %i.cr, i1 false)
  br label %bb.af

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.cs, i64 noundef 0, ptr noundef %i.cq, i64 noundef %i.cr)
          to label %bb.af unwind label %.loopexit.split-lp125.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.ae
  store i64 %i.cv, ptr %i.n, align 8, !tbaa !171
  %i.dd = load ptr, ptr %5, align 8, !tbaa !170
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  store i8 0, ptr %i.de, align 1, !tbaa !172
  %i.df = load ptr, ptr %8, align 8, !tbaa !170   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bf
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.af
  %i.dh = load i64, ptr %i.bf, align 8, !tbaa !172
  %i.di = add i64 %i.dh, 1
end_hunk_0
