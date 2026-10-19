Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-arch?download=true
inline.NumInlined: 654
inline.NumDeleted: 336
begin_hunk_0_@_ZNK6LLM_KVclB5cxx11E6llm_kv:bb.a
  %i.y = load i64, ptr %i.x, align 8, !tbaa !34
  %i.z = icmp eq i64 %i.y, 4611686018427387903
  br i1 %i.z, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.661, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !30  ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #24 ; 2 uses
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !34
  %i.ae = sub i64 4611686018427387903, %i.ad
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.666) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ab, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.am = add i64 %i.al, 1
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14, %_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE2atERS6_.exit
  ret void
}

declare void @_Z6formatB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11LLM_TN_IMPLC2E8llm_arch10llm_tensorPKcii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %5, ptr %i.d, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11LLM_TN_IMPL3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16LLM_TENSOR_NAMES, i64 16), align 8, !tbaa !16 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %i.a, align 4, !tbaa !27  ; 5 uses
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL16LLM_TENSOR_NAMES, i64 8), %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  %i.e = icmp slt i32 %i.d, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.e, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.e, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeI10llm_tensorSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNKSt8_Rb_treeI10llm_tensorSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL16LLM_TENSOR_NAMES, i64 8)
  br i1 %i.f, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeI10llm_tensorSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27
  %i.i = icmp slt i32 %.pre, %i.h
  br i1 %i.i, label %select.unfold, label %.lr.ph.i.i.i.i

select.unfold:                                    ; preds = %bb.b, %bb.a, %_ZNKSt8_Rb_treeI10llm_tensorSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.662, i32 noundef 1007, ptr noundef nonnull @.str.663, i32 noundef %.pre) #26
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL16LLM_TENSOR_NAMES, i64 8), %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = icmp slt i32 %i.k, %.pre                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.l, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapI10llm_tensorPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNKSt3mapI10llm_tensorPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL16LLM_TENSOR_NAMES, i64 8)
  br i1 %i.m, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapI10llm_tensorPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %i.p = icmp slt i32 %.pre, %i.o
  br i1 %i.p, label %.critedge.i, label %_ZNKSt3mapI10llm_tensorPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE2atERS6_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNKSt3mapI10llm_tensorPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.665) #26
  unreachable

_ZNKSt3mapI10llm_tensorPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE2atERS6_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40
  tail call void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.r, i32 noundef %i.t, i32 noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit7, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapI10llm_tensorPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE2atERS6_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !34
  %i.aa = icmp eq i64 %i.z, 4611686018427387903
  br i1 %i.aa, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.661, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !38  ; 2 uses
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #24 ; 2 uses
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !34
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.666) #26
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ac, i64 noundef %i.ad)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit7 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !36
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4, %_ZNKSt3mapI10llm_tensorPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE2atERS6_.exit
  ret void
}

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z12llm_arch_allv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 40), align 8, !tbaa !19 ; 4 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.667) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not41 = icmp eq i64 %i.a, 0
  br i1 %.not41, label %_ZNSt6vectorI8llm_archSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI8llm_archSaIS0_EE11_M_allocateEm.exit.i.a

_ZNSt12_Vector_baseI8llm_archSaIS0_EE11_M_allocateEm.exit.i.a: ; preds = %bb.b
  %1 = shl nuw nsw i64 %i.a, 2
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %1) #23 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %0, align 8, !tbaa !59
  store ptr %2, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !61
  br label %_ZNSt6vectorI8llm_archSaIS0_EE7reserveEm.exit

_ZNSt6vectorI8llm_archSaIS0_EE7reserveEm.exit:    ; preds = %_ZNSt12_Vector_baseI8llm_archSaIS0_EE11_M_allocateEm.exit.i.a, %bb.b
  %.promoted16 = phi ptr [ %2, %_ZNSt12_Vector_baseI8llm_archSaIS0_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.e, %_ZNSt12_Vector_baseI8llm_archSaIS0_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 24), align 8, !tbaa !17 ; 2 uses
  %.not20 = icmp eq ptr %i.f, getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 8)
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI8llm_archSaIS0_EE7reserveEm.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit, %_ZNSt6vectorI8llm_archSaIS0_EE7reserveEm.exit
  %.lcssa17 = phi ptr [ %.promoted16, %_ZNSt6vectorI8llm_archSaIS0_EE7reserveEm.exit ], [ %i.ae, %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorI8llm_archSaIS0_EE7reserveEm.exit ], [ %i.af, %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit ]
  store ptr %.lcssa, ptr %i.c, align 8
  store ptr %.lcssa17, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit
  %i.h = phi ptr [ %.promoted16, %.lr.ph ], [ %i.ad, %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit ] ; 5 uses
  %.sroa.011.021 = phi ptr [ %i.f, %.lr.ph ], [ %i.ag, %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.af, %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %i.j = phi ptr [ %.promoted16, %.lr.ph ], [ %i.ae, %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit ] ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.011.021, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  store i32 %i.l, ptr %i.h, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8, !tbaa !60
  br label %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775804
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorI8llm_archSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %i.c, align 8
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.668) #26
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.f
  unreachable

_ZNKSt6vectorI8llm_archSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.r = ashr exact i64 %i.p, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2305843009213693951)
  %i.v = select i1 %i.t, i64 2305843009213693951, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorI8llm_archSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  %i.z = load i32, ptr %i.k, align 4, !tbaa !22
  store i32 %i.z, ptr %i.y, align 4, !tbaa !22
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorI8llm_archSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.g:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.j, i64 %i.p, i1 false)
  br label %_ZNSt6vectorI8llm_archSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI8llm_archSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.g, %.noexc9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI8llm_archSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI8llm_archSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #27
  br label %_ZNSt6vectorI8llm_archSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI8llm_archSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorI8llm_archSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI8llm_archSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI8llm_archSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.d
  %i.ad = phi ptr [ %i.ab, %_ZNSt6vectorI8llm_archSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.m, %bb.d ]
  %i.ae = phi ptr [ %i.x, %_ZNSt6vectorI8llm_archSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.af = phi ptr [ %i.ac, %_ZNSt6vectorI8llm_archSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.ag = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.011.021) #22 ; 2 uses
  %.not = icmp eq ptr %i.ag, getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 8)
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorI8llm_archSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %i.c, align 8
  store ptr %i.j, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i10 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorI8llm_archSaIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = ptrtoint ptr %i.h to i64
  %i.ai = ptrtoint ptr %i.j to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aj) #27
  br label %_ZNSt6vectorI8llm_archSaIS0_EED2Ev.exit

_ZNSt6vectorI8llm_archSaIS0_EED2Ev.exit:          ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_Z13llm_arch_name8llm_arch(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 8), %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22
  %i.d = icmp slt i32 %i.c, %0                    ; 2 uses
  %.19.i.i.i = select i1 %i.d, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.d, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeI8llm_archSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeI8llm_archSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 8)
  br i1 %i.e, label %_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeI8llm_archSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  %i.h = icmp slt i32 %0, %i.g
  br i1 %i.h, label %_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  br label %_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %bb.b, %_ZNKSt8_Rb_treeI8llm_archSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %.0 = phi ptr [ %i.j, %_ZNKSt3mapI8llm_archPKcSt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ], [ @.str.664, %bb.a ], [ @.str.664, %_ZNKSt8_Rb_treeI8llm_archSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ @.str.664, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef i32 @_Z20llm_arch_from_stringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 24), align 8, !tbaa !17 ; 3 uses
  %.not16 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 8)
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34
  %.fr19 = freeze i64 %i.c                        ; 3 uses
  %i.d = icmp eq i64 %.fr19, 0
  %i.e = load ptr, ptr %0, align 8
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10.us
  %.sroa.07.017.us = phi ptr [ %i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10.us ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.017.us, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %char0 = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %char0, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10.us

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.07.017.us) #22 ; 2 uses
  %.not.us = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 8)
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10
  %.sroa.07.017 = phi ptr [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10 ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.07.017, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 2 uses
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #24
  %i.m = icmp eq i64 %.fr19, %i.l
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %.lr.ph.split
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.e, ptr nonnull %i.k, i64 %.fr19)
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10: ; preds = %.lr.ph.split, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.07.017) #22 ; 2 uses
  %.not = icmp eq ptr %i.o, getelementptr inbounds nuw (i8, ptr @_ZL14LLM_ARCH_NAMES, i64 8)
  br i1 %.not, label %.loopexit, label %.lr.ph.split

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.sroa.07.017.us, %.lr.ph.split.us ], [ %.sroa.07.017, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10.us, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %i.r = phi i32 [ %i.q, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread ], [ 148, %bb.a ], [ 148, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10.us ], [ 148, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread10 ]
  ret i32 %i.r
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(8) ptr @_Z19llm_tensor_info_for10llm_tensor(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16LLM_TENSOR_INFOS, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL16LLM_TENSOR_INFOS, i64 8), %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27
  %i.d = icmp slt i32 %i.c, %0                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.d, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.d, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapI10llm_tensor15llm_tensor_infoSt4lessIS0_ESaISt4pairIKS0_S1_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !63

_ZNKSt3mapI10llm_tensor15llm_tensor_infoSt4lessIS0_ESaISt4pairIKS0_S1_EEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.e = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL16LLM_TENSOR_INFOS, i64 8)
  br i1 %i.e, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapI10llm_tensor15llm_tensor_infoSt4lessIS0_ESaISt4pairIKS0_S1_EEE11lower_boundERS5_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = icmp slt i32 %0, %i.g
  br i1 %i.h, label %.critedge.i, label %_ZNKSt3mapI10llm_tensor15llm_tensor_infoSt4lessIS0_ESaISt4pairIKS0_S1_EEE2atERS5_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNKSt3mapI10llm_tensor15llm_tensor_infoSt4lessIS0_ESaISt4pairIKS0_S1_EEE11lower_boundERS5_.exit.i, %bb.a
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.665) #26
  unreachable

_ZNKSt3mapI10llm_tensor15llm_tensor_infoSt4lessIS0_ESaISt4pairIKS0_S1_EEE2atERS5_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  ret ptr %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z21llm_arch_is_recurrentRK8llm_arch(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %switch.tableidx = add i32 %i.a, -54            ; 2 uses
  %i.b = icmp ult i32 %switch.tableidx, 39
  %switch.cast = zext nneg i32 %switch.tableidx to i39
  %switch.downshift = lshr i39 -34359738365, %switch.cast
  %switch.masked = trunc i39 %switch.downshift to i1
  %.0 = select i1 %i.b, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z18llm_arch_is_hybridRK8llm_arch(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  switch i32 %i.a, label %bb.b [
    i32 56, label %bb.c
    i32 57, label %bb.c
    i32 39, label %bb.c
    i32 95, label %bb.c
    i32 117, label %bb.c
    i32 118, label %bb.c
    i32 84, label %bb.c
    i32 85, label %bb.c
    i32 29, label %bb.c
    i32 137, label %bb.c
    i32 103, label %bb.c
    i32 138, label %bb.c
    i32 32, label %bb.c
    i32 33, label %bb.c
    i32 34, label %bb.c
    i32 73, label %bb.c
    i32 147, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z21llm_arch_is_diffusionRK8llm_arch(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %switch.tableidx = add i32 %i.a, -119           ; 2 uses
  %i.b = icmp ult i32 %switch.tableidx, 10
  %switch.cast = trunc i32 %switch.tableidx to i10
  %switch.downshift = lshr i10 -499, %switch.cast
  %switch.masked = trunc i10 %switch.downshift to i1
  %.0 = select i1 %i.b, i1 %switch.masked, i1 false
  ret i1 %.0
}

end_hunk_0
