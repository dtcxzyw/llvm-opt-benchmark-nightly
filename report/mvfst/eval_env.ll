Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/eval_env?download=true
inline.NumInlined: 721
inline.NumDeleted: 331
begin_hunk_0_@_ZN10BindingEnv18LookupWithFallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK10EvalStringP3Env:bb.a
  store ptr %i.z, ptr %0, align 8, !tbaa !27
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !28
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !23
  %i.af = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.af, ptr %i.z, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ag = phi ptr [ %i.ae, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  switch i64 %i.ac, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !29
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = load ptr, ptr %0, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.k

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread
  tail call void @_ZNK10EvalString8EvaluateB5cxx11EP3Env(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4)
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 3 uses
  %.not7 = icmp eq ptr %i.an, null
  br i1 %.not7, label %._crit_edge.i.i8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %2) #17, !call_target !44
  br label %bb.k

._crit_edge.i.i8:                                 ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !19
  store i8 0, ptr %i.ar, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i8, %bb.j, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK10EvalString8EvaluateB5cxx11EP3Env(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !19
  store i8 0, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %1, align 8, !tbaa !1384   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1384
  %.not9 = icmp eq ptr %i.c, %i.e
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.04.010 = phi ptr [ %i.c, %.lr.ph ], [ %i.ac, %bb.g ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1386
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !19
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %.sroa.04.010, align 8, !tbaa !23
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.p, i64 noundef %i.l) #17 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.r = load ptr, ptr %2, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.010) #17, !call_target !1389
  %i.u = load i64, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.v = load i64, ptr %i.b, align 8, !tbaa !19
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit3

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit3: ; preds = %bb.e
  %i.y = load ptr, ptr %3, align 8, !tbaa !23
  %i.z = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.y, i64 noundef %i.u) #17 ; 0 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit3
  call void @_ZdlPv(ptr noundef %i.aa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !1384
  %.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1393
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10EvalString7AddTextE11StringPiece(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::pair.21", align 8     ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1384
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1384 ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -40
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1386
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %1, i64 noundef %2) #17 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %.not.not.i = icmp eq i64 %2, 0
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !27, !alias.scope !1394
  br i1 %.not.not.i, label %_ZNK11StringPiece8AsStringB5cxx11Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !1394
  store i64 %2, ptr %i.a, align 8, !tbaa !28, !noalias !1394
  %i.q = icmp ugt i64 %2, 15
  br i1 %i.q, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.h
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !23, !alias.scope !1394
  %i.s = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !1394
  store i64 %i.s, ptr %i.o, align 8, !tbaa !29, !alias.scope !1394
  br label %bb.j

._crit_edge.i.i.i:                                ; preds = %bb.h
  %cond.i = icmp eq i64 %2, 1
  br i1 %cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.t, ptr %i.o, align 8, !tbaa !29, !alias.scope !1394
  br label %_ZNK11StringPiece8AsStringB5cxx11Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %i.u = phi ptr [ %i.r, %._crit_edge.i.i.thread.i ], [ %i.o, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %1, i64 %2, i1 false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !1394
  %.pre4 = load ptr, ptr %4, align 8, !tbaa !23, !alias.scope !1394
  br label %_ZNK11StringPiece8AsStringB5cxx11Ev.exit

_ZNK11StringPiece8AsStringB5cxx11Ev.exit.thread:  ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !19, !alias.scope !1394
  store i8 0, ptr %i.o, align 8, !tbaa !29, !alias.scope !1394
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !27, !alias.scope !1397
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.k

_ZNK11StringPiece8AsStringB5cxx11Ev.exit:         ; preds = %bb.i, %bb.j
  %i.y = phi ptr [ %.pre4, %bb.j ], [ %i.o, %bb.i ]
  %i.z = phi i64 [ %.pre, %bb.j ], [ 1, %bb.i ]   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !19, !alias.scope !1394
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store i8 0, ptr %i.ab, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !1394
  %.pre5 = load ptr, ptr %4, align 8, !tbaa !23, !noalias !1400 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !27, !alias.scope !1400
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ae = icmp eq ptr %.pre5, %i.ad
  br i1 %i.ae, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %_ZNK11StringPiece8AsStringB5cxx11Ev.exit.thread, %_ZNK11StringPiece8AsStringB5cxx11Ev.exit
  %i.af = phi ptr [ %i.x, %_ZNK11StringPiece8AsStringB5cxx11Ev.exit.thread ], [ %i.ad, %_ZNK11StringPiece8AsStringB5cxx11Ev.exit ] ; 2 uses
  %i.ag = phi ptr [ %i.w, %_ZNK11StringPiece8AsStringB5cxx11Ev.exit.thread ], [ %i.ac, %_ZNK11StringPiece8AsStringB5cxx11Ev.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !19, !noalias !1400 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK11StringPiece8AsStringB5cxx11Ev.exit
  store ptr %.pre5, ptr %3, align 8, !tbaa !23, !alias.scope !1400
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !29, !noalias !1400
  store i64 %i.al, ptr %i.ac, align 8, !tbaa !29, !alias.scope !1400
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19, !noalias !1400
  br label %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit

_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = phi ptr [ %i.af, %bb.k ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 3 uses
  %i.an = phi ptr [ %i.ag, %bb.k ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 6 uses
  %i.ao = phi i64 [ %i.ai, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !19, !alias.scope !1400
  store ptr %i.am, ptr %4, align 8, !tbaa !23, !noalias !1400
  store i64 0, ptr %i.ap, align 8, !tbaa !19, !noalias !1400
  store i8 0, ptr %i.am, align 1, !tbaa !29, !noalias !1400
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !1386, !alias.scope !1400
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1402 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1404
  %.not.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE9push_backEOS9_.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !27
  %i.aw = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.an
  br i1 %i.ax, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ay = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.az, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE9push_backEOS9_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !23
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !29
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !29
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE9push_backEOS9_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE9push_backEOS9_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ao, ptr %i.bb, align 8, !tbaa !19
  store ptr %i.an, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %i.aq, align 8, !tbaa !19
  store i8 0, ptr %i.an, align 1, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bd = load i32, ptr %i.ar, align 8, !tbaa !1386
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !1386
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !1402
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !1402
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE9push_backEOS9_.exit: ; preds = %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %.pre6 = load ptr, ptr %3, align 8, !tbaa !23   ; 2 uses
  %i.bg = icmp eq ptr %.pre6, %i.an
  br i1 %i.bg, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE9push_backEOS9_.exit
  call void @_ZdlPv(ptr noundef %.pre6) #19
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE9push_backEOS9_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EE9push_backEOS9_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.bh = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.am
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10EvalString10AddSpecialE11StringPiece(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree readonly captures(address_is_null) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::pair.21", align 8     ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %.not.not.i = icmp eq i64 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  br i1 %.not.not.i, label %_ZNK11StringPiece8AsStringB5cxx11Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !27, !alias.scope !1405
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !1405
  store i64 %2, ptr %i.a, align 8, !tbaa !28, !noalias !1405
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.d
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !23, !alias.scope !1405
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !1405
  store i64 %i.f, ptr %i.b, align 8, !tbaa !29, !alias.scope !1405
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %bb.d
  %cond.i = icmp eq i64 %2, 1
  br i1 %cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
end_hunk_0
