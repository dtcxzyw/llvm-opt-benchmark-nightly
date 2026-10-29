Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_func?download=true
inline.NumInlined: 8130
inline.NumDeleted: 2430
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK4entt9meta_func6invokeINS_11meta_handleEJNS_8meta_anyERKNS_6entityEEEES3_OT_DpOT0_:bb.a
  store ptr null, ptr %i.bc, align 8, !tbaa !184
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit.i
  %i.be = phi ptr [ %i.bd, %bb.j ], [ null, %_ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !179
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !126
  store ptr null, ptr %i.bh, align 8, !tbaa !126
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !180
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !159
  store ptr null, ptr %i.bj, align 8, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 100
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_6entityEEEPKvNS_8internal11any_requestERKS1_S5_, ptr %i.bl, align 8, !tbaa !173
  store i32 741829181, ptr %i.bn, align 8, !tbaa !174
  store ptr null, ptr %i.bm, align 8, !tbaa !175
  store i8 2, ptr %i.bo, align 4, !tbaa !176
  %i.bp = load i32, ptr %4, align 4, !tbaa !189
  store i32 %i.bp, ptr %i.bj, align 8, !tbaa !189
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !178
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr null, ptr %i.br, align 8, !tbaa !179
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_6entityEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.bs, align 8, !tbaa !180
  invoke void %i.f(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %6)
          to label %.critedge unwind label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !159
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.bv, align 8, !tbaa !173
  store i32 1219850847, ptr %i.bx, align 8, !tbaa !174
  store ptr null, ptr %i.bw, align 8, !tbaa !175
  store i8 0, ptr %i.by, align 4, !tbaa !176
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bu, ptr %i.bz, align 8, !tbaa !178
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  br label %.critedge19

.critedge:                                        ; preds = %bb.k
  %i.cb = load ptr, ptr %i.bm, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %.critedge
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %i.bj)
          to label %_ZN4entt8meta_anyD2Ev.exit.i unwind label %bb.n, !inline_history !8

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit.i:                     ; preds = %bb.m, %.critedge
  %i.ce = load ptr, ptr %i.al, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt5arrayIN4entt8meta_anyELm2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4entt8meta_anyD2Ev.exit.i
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %_ZNSt5arrayIN4entt8meta_anyELm2EED2Ev.exit unwind label %bb.n, !inline_history !8

_ZNSt5arrayIN4entt8meta_anyELm2EED2Ev.exit:       ; preds = %_ZN4entt8meta_anyD2Ev.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i20, label %.critedge19, label %bb.p

bb.p:                                             ; preds = %_ZNSt5arrayIN4entt8meta_anyELm2EED2Ev.exit
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %.critedge19 unwind label %bb.q, !inline_history !8

bb.q:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #27
  unreachable

.critedge19:                                      ; preds = %bb.p, %_ZNSt5arrayIN4entt8meta_anyELm2EED2Ev.exit, %bb.l
  ret void

bb.r:                                             ; preds = %bb.k
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayIN4entt8meta_anyELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i22, label %_ZN4entt11meta_handleD2Ev.exit24, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN4entt11meta_handleD2Ev.exit24 unwind label %bb.t, !inline_history !8

bb.t:                                             ; preds = %bb.s
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #27
  unreachable

_ZN4entt11meta_handleD2Ev.exit24:                 ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %i.ci
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.c) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !208  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !211  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(29) %i.j)
          to label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i unwind label %bb.c, !inline_history !11

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !207
  br label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.a
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !212
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #28
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !193    ; 3 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN4entt8internal16registry_contextISaINS_6entityEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #28
  br label %_ZN4entt8internal16registry_contextISaINS_6entityEEED2Ev.exit

_ZN4entt8internal16registry_contextISaINS_6entityEEED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN24MetaFunc_Overloaded_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %6 = alloca %"class.entt::meta_factory", align 8 ; 11 uses
  %7 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %8 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.entt::meta_factory", align 8 ; 3 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.l = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !65 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #27
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.l, %bb.a ], [ %i.m, %bb.b ] ; 10 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #26 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.r = tail call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i32 noundef 388133425, i1 noundef zeroext true) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  %or.cond = select i1 %.not.i, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.d, label %_ZNK4entt9meta_type4funcEjb.exit.a

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %._ZNK4entt9meta_type4funcEjb.exit_crit_edge unwind label %bb.e ; 0 uses

._ZNK4entt9meta_type4funcEjb.exit_crit_edge:      ; preds = %bb.d
  %.pre = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  br label %_ZNK4entt9meta_type4funcEjb.exit.a

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

_ZNK4entt9meta_type4funcEjb.exit.a:               ; preds = %._ZNK4entt9meta_type4funcEjb.exit_crit_edge, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %36 = phi ptr [ %.pre, %._ZNK4entt9meta_type4funcEjb.exit_crit_edge ], [ %i.s, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i ]
  %37 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %38 = load ptr, ptr %37, align 8, !tbaa !121
  %.not.i.i93 = icmp eq ptr %38, null             ; 3 uses
  %.not.i.i.i.i.i97 = icmp eq ptr %36, null
  %or.cond467 = select i1 %.not.i.i93, i1 %.not.i.i.i.i.i97, i1 false
  br i1 %or.cond467, label %bb.f, label %_ZNK4entt9meta_func4nextEv.exit

bb.f:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit.a
  %i.w = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_func4nextEv.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #27
  unreachable

_ZNK4entt9meta_func4nextEv.exit:                  ; preds = %_ZNK4entt9meta_type4funcEjb.exit.a
  %39 = zext i1 %.not.i.i93 to i8
  store i8 %39, ptr %1, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !153
  br i1 %.not.i.i93, label %_ZNK4entt9meta_func4nextEv.exit.thread, label %40

40:                                               ; preds = %_ZNK4entt9meta_func4nextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %4, align 8, !tbaa !97
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 649, ptr noundef %i.aa)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  %i.ab = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !100
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ag = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i98, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !94  ; 4 uses
  %.not.i.i99 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i99, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !100
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.ew

bb.m:                                             ; preds = %40
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit105

bb.n:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.o:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.q
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !100
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.az = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.az, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(128) %i.az) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.ex

_ZNK4entt9meta_func4nextEv.exit.thread:           ; preds = %bb.f, %_ZNK4entt9meta_func4nextEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %41 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !65 ; 2 uses
  %.not.i.i111 = icmp eq ptr %41, null
  br i1 %.not.i.i111, label %bb.r, label %_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2Ev.exit

bb.r:                                             ; preds = %_ZNK4entt9meta_func4nextEv.exit.thread
  %i.bd = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27
  unreachable

_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2Ev.exit: ; preds = %_ZNK4entt9meta_func4nextEv.exit.thread, %bb.r
  %42 = phi ptr [ %41, %_ZNK4entt9meta_func4nextEv.exit.thread ], [ %i.bd, %bb.r ]
  call void @_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(56) %42) #26
  call void @_ZN4entt12meta_factoryIN8MetaFunc8functionEE4funcITnDaXadL_ZNS2_1fEiiEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 388133425, ptr noundef null) #26
  call void @_ZN4entt12meta_factoryIN8MetaFunc8functionEE4funcITnDaXadL_ZNKS2_1fEiEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 388133425, ptr noundef null) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !117, !noalias !823
  switch i32 %i.bh, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i112 [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.t:                                             ; preds = %_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !118, !noalias !823
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !214, !noalias !823
  %i.bm = or i32 %i.bl, 262144
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !214, !noalias !823
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i112

bb.u:                                             ; preds = %_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118, !noalias !823
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !120, !noalias !823 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !215, !noalias !823 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !217, !noalias !823 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !217, !noalias !823 ; 2 uses
  %i.bx = icmp ne ptr %i.bu, %i.bw
  call void @llvm.assume(i1 %i.bx)
  %i.by = load i32, ptr %i.bu, align 8, !tbaa !219, !noalias !823
  %.not.i.i16.i.i = icmp eq i32 %i.by, %i.bt
  br i1 %.not.i.i16.i.i, label %_ZN4entt8internal18basic_meta_factory21find_member_or_assertEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %.lr.ph.i.i.i.i
  %.sroa.010.015.i.i17.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %i.bu, %bb.u ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i17.i.i, i64 104 ; 4 uses
  %i.ca = icmp ne ptr %i.bz, %i.bw
  call void @llvm.assume(i1 %i.ca)
  %i.cb = load i32, ptr %i.bz, align 8, !tbaa !219, !noalias !823
  %.not.i.i.i.i = icmp eq i32 %i.cb, %i.bt
  br i1 %.not.i.i.i.i, label %_ZN4entt8internal18basic_meta_factory21find_member_or_assertEv.exit.i.i, label %.lr.ph.i.i.i.i

_ZN4entt8internal18basic_meta_factory21find_member_or_assertEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.u
  %.sroa.010.015.i.i.lcssa.i.i = phi ptr [ %i.bu, %bb.u ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i.lcssa.i.i, i64 16 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !220, !noalias !823
  %i.ce = or i32 %i.cd, 262144
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !220, !noalias !823
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i112

bb.v:                                             ; preds = %_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118, !noalias !823
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !120, !noalias !823 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !215, !noalias !823 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !121, !noalias !823 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !121, !noalias !823 ; 2 uses
  %i.cp = icmp ne ptr %i.cm, %i.co
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i32, ptr %i.cm, align 8, !tbaa !139, !noalias !823
  %.not.i.i410.i.i = icmp eq i32 %i.cq, %i.cl
  br i1 %.not.i.i410.i.i, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i.i.i, label %.lr.ph.i.i2.i.i

.lr.ph.i.i2.i.i:                                  ; preds = %bb.v, %.lr.ph.i.i2.i.i
  %.sroa.010.015.i.i311.i.i = phi ptr [ %i.cr, %.lr.ph.i.i2.i.i ], [ %i.cm, %bb.v ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i311.i.i, i64 88 ; 4 uses
  %i.cs = icmp ne ptr %i.cr, %i.co
  call void @llvm.assume(i1 %i.cs)
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !139, !noalias !823
  %.not.i.i4.i.i = icmp eq i32 %i.ct, %i.cl
  br i1 %.not.i.i4.i.i, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i.i.i, label %.lr.ph.i.i2.i.i

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i2.i.i, %bb.v
  %.sroa.010.015.i.i3.lcssa.i.i = phi ptr [ %i.cm, %bb.v ], [ %i.cr, %.lr.ph.i.i2.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !221, !noalias !823 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i3.lcssa.i.i, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !144, !noalias !823
  %.not5.i.i12.i.i = icmp eq ptr %i.cx, %i.cv
  br i1 %.not5.i.i12.i.i, label %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit.i.i, label %.lr.ph.i2.i.i.i

.lr.ph.i2.i.i.i:                                  ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i.i.i, %.lr.ph.i2.i.i.i
  %.07.i.i13.i.i = phi ptr [ %i.cz, %.lr.ph.i2.i.i.i ], [ %.sroa.010.015.i.i3.lcssa.i.i, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.07.i.i13.i.i, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !121, !noalias !823, !nonnull !93, !noundef !93 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !144, !noalias !823
  %.not5.i.i.i.i = icmp eq ptr %i.db, %i.cv
  br i1 %.not5.i.i.i.i, label %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit.i.i, label %.lr.ph.i2.i.i.i

_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit.i.i: ; preds = %.lr.ph.i2.i.i.i, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i.i.i
  %.07.i.i.lcssa.i.i = phi ptr [ %.sroa.010.015.i.i3.lcssa.i.i, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i.i.i ], [ %i.cz, %.lr.ph.i2.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.07.i.i.lcssa.i.i, i64 16 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !79, !noalias !823
  %i.de = or i32 %i.dd, 262144
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !79, !noalias !823
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i112

_ZNK4entt9meta_type10fetch_nodeEv.exit.i112:      ; preds = %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit.i.i, %_ZN4entt8internal18basic_meta_factory21find_member_or_assertEv.exit.i.i, %bb.t, %_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 3, ptr %i.a, align 4, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN4entt12meta_factoryIN8MetaFunc8functionEE6customIiJiEEES3_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.df = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i32 noundef 388133425, i1 noundef zeroext true) ; 2 uses
  %.not.i113 = icmp eq ptr %i.df, null
  %i.dg = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i117 = icmp eq ptr %i.dg, null
  %or.cond468 = select i1 %.not.i113, i1 %.not.i.i.i.i.i117, i1 false
  br i1 %or.cond468, label %bb.w, label %_ZNK4entt9meta_type4funcEjb.exit118

bb.w:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i112
  %i.dh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4funcEjb.exit118 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #27
  unreachable

_ZNK4entt9meta_type4funcEjb.exit118:              ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i112, %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !121
  %.not.i.i119 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i119, label %bb.y, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i147

bb.y:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit118
  %i.dm = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !65
  %.not.i.i.i.i.i123 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i123, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dn = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.ab unwind label %bb.aa     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #27
  unreachable

bb.ab:                                            ; preds = %bb.y, %bb.z
  store i8 0, ptr %10, align 8, !tbaa !91
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load ptr, ptr %13, align 8, !tbaa !97
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 659, ptr noundef %i.dr)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  %i.ds = load ptr, ptr %13, align 8, !tbaa !97   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.af
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !100
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dx = load ptr, ptr %11, align 8, !tbaa !99   ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !49
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(128) %i.dx) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.eb = load ptr, ptr %i.dq, align 8, !tbaa !94 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i131, label %_ZN7testing15AssertionResultD2Ev.exit135, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !97 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.ag
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !100
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit135

_ZN7testing15AssertionResultD2Ev.exit135:         ; preds = %_ZN7testing7MessageD2Ev.exit130, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ew

bb.ah:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.ai:                                            ; preds = %bb.ac
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.aj:                                            ; preds = %bb.ad
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn52 = phi { ptr, i32 } [ %i.ek, %bb.ak ], [ %i.ej, %bb.aj ] ; 2 uses
  %i.el = load ptr, ptr %13, align 8, !tbaa !97   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.al
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !100
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.ai
  %.pn52.pn = phi { ptr, i32 } [ %i.ei, %bb.ai ], [ %.pn52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn52, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.eq = load ptr, ptr %11, align 8, !tbaa !99   ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i139, label %_ZN7testing7MessageD2Ev.exit141, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit141

_ZN7testing7MessageD2Ev.exit141:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.ah
  %.pn52.pn.pn = phi { ptr, i32 } [ %i.eh, %bb.ah ], [ %.pn52.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn52.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ex

_ZNK4entt9meta_type10fetch_nodeEv.exit.i147:      ; preds = %_ZNK4entt9meta_type4funcEjb.exit118
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.eu = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i32 noundef 388133425, i1 noundef zeroext true) ; 2 uses
  %.not.i148 = icmp eq ptr %i.eu, null
  %i.ev = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8 ; 2 uses
  %.not.i.i.i.i.i152 = icmp eq ptr %i.ev, null
  %or.cond469 = select i1 %.not.i148, i1 %.not.i.i.i.i.i152, i1 false
  br i1 %or.cond469, label %bb.am, label %_ZNK4entt9meta_type4funcEjb.exit153

bb.am:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i147
  %i.ew = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %._ZNK4entt9meta_type4funcEjb.exit153_crit_edge unwind label %bb.an ; 0 uses

._ZNK4entt9meta_type4funcEjb.exit153_crit_edge:   ; preds = %bb.am
  %.pre485 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  br label %_ZNK4entt9meta_type4funcEjb.exit153

bb.an:                                            ; preds = %bb.am
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #27
  unreachable

_ZNK4entt9meta_type4funcEjb.exit153:              ; preds = %._ZNK4entt9meta_type4funcEjb.exit153_crit_edge, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i147
  %i.ez = phi ptr [ %.pre485, %._ZNK4entt9meta_type4funcEjb.exit153_crit_edge ], [ %i.ev, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i147 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !121 ; 2 uses
  %.not.i.i154 = icmp eq ptr %i.fb, null
  %.not.i.i.i.i.i158 = icmp eq ptr %i.ez, null
  %or.cond470 = select i1 %.not.i.i154, i1 %.not.i.i.i.i.i158, i1 false
  br i1 %or.cond470, label %bb.ao, label %_ZNK4entt9meta_func4nextEv.exit159

bb.ao:                                            ; preds = %_ZNK4entt9meta_type4funcEjb.exit153
  %i.fc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %._ZNK4entt9meta_func4nextEv.exit159_crit_edge unwind label %bb.ap ; 0 uses

._ZNK4entt9meta_func4nextEv.exit159_crit_edge:    ; preds = %bb.ao
  %.pre486 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  br label %_ZNK4entt9meta_func4nextEv.exit159

bb.ap:                                            ; preds = %bb.ao
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #27
  unreachable

_ZNK4entt9meta_func4nextEv.exit159:               ; preds = %._ZNK4entt9meta_func4nextEv.exit159_crit_edge, %_ZNK4entt9meta_type4funcEjb.exit153
  %43 = phi ptr [ %.pre486, %._ZNK4entt9meta_func4nextEv.exit159_crit_edge ], [ %i.ez, %_ZNK4entt9meta_type4funcEjb.exit153 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !121
  %.not.i.i160 = icmp eq ptr %i.fg, null          ; 3 uses
  %.not.i.i.i.i.i164.a = icmp eq ptr %43, null
  %or.cond471 = select i1 %.not.i.i160, i1 %.not.i.i.i.i.i164.a, i1 false
  br i1 %or.cond471, label %bb.aq, label %_ZNK4entt9meta_func4nextEv.exit165

bb.aq:                                            ; preds = %_ZNK4entt9meta_func4nextEv.exit159
  %i.fh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i188 unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #27
  unreachable

_ZNK4entt9meta_func4nextEv.exit165:               ; preds = %_ZNK4entt9meta_func4nextEv.exit159
  %44 = zext i1 %.not.i.i160 to i8
  store i8 %44, ptr %14, align 8, !tbaa !91
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr null, ptr %i.fk, align 8, !tbaa !153
  br i1 %.not.i.i160, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i188, label %45

45:                                               ; preds = %_ZNK4entt9meta_func4nextEv.exit165
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %45
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.fl = load ptr, ptr %17, align 8, !tbaa !97
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 660, ptr noundef %i.fl)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  %i.fm = load ptr, ptr %17, align 8, !tbaa !97   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.av
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !100
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.fr = load ptr, ptr %15, align 8, !tbaa !99   ; 3 uses
  %.not.i.i169 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i169, label %_ZN7testing7MessageD2Ev.exit171, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !49
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit171

_ZN7testing7MessageD2Ev.exit171:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.fv = load ptr, ptr %i.fk, align 8, !tbaa !94 ; 4 uses
  %.not.i.i172 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i172, label %_ZN7testing15AssertionResultD2Ev.exit176, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit171
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !97 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173: ; preds = %bb.aw
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !100
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i174

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i174: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit176

_ZN7testing15AssertionResultD2Ev.exit176:         ; preds = %_ZN7testing7MessageD2Ev.exit171, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ew

bb.ax:                                            ; preds = %45
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit182

bb.ay:                                            ; preds = %bb.as
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.az:                                            ; preds = %bb.at
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn56 = phi { ptr, i32 } [ %i.ge, %bb.ba ], [ %i.gd, %bb.az ] ; 2 uses
  %i.gf = load ptr, ptr %17, align 8, !tbaa !97   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.bb
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !100
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.ay
  %.pn56.pn = phi { ptr, i32 } [ %i.gc, %bb.ay ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.pn56, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.gk = load ptr, ptr %15, align 8, !tbaa !99   ; 3 uses
  %.not.i.i180 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i180, label %_ZN7testing7MessageD2Ev.exit182, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !49
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(128) %i.gk) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit182

_ZN7testing7MessageD2Ev.exit182:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %bb.ax
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.gb, %bb.ax ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %.pn56.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ex

_ZNK4entt9meta_type10fetch_nodeEv.exit.i188:      ; preds = %bb.aq, %_ZNK4entt9meta_func4nextEv.exit165
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.go = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i32 noundef 388133425, i1 noundef zeroext true) ; 2 uses
  %.not.i189 = icmp eq ptr %i.go, null
  %i.gp = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i193 = icmp eq ptr %i.gp, null
  %or.cond472 = select i1 %.not.i189, i1 %.not.i.i.i.i.i193, i1 false
  br i1 %or.cond472, label %bb.bc, label %_ZNK4entt9meta_type4funcEjb.exit194

bb.bc:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i188
  %i.gq = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4funcEjb.exit194 unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #27
  unreachable

_ZNK4entt9meta_type4funcEjb.exit194:              ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i188, %bb.bc
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !79
  %i.gv = lshr i32 %i.gu, 16
  %i.gw = trunc i32 %i.gv to i8                   ; 2 uses
  store i8 %i.gw, ptr %i.b, align 1, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 2, ptr %i.c, align 1, !tbaa !81
  %i.gx = icmp eq i8 %i.gw, 2
  br i1 %i.gx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK4entt9meta_type4funcEjb.exit194
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
  br label %_ZN7testing8internal8EqHelper7CompareIN4test11meta_traitsES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit

bb.bf:                                            ; preds = %_ZNK4entt9meta_type4funcEjb.exit194
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4test11meta_traitsES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br label %_ZN7testing8internal8EqHelper7CompareIN4test11meta_traitsES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit

_ZN7testing8internal8EqHelper7CompareIN4test11meta_traitsES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.gy = load i8, ptr %18, align 8, !tbaa !91, !range !92, !noundef !93
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %.critedge84, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4test11meta_traitsES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.bi, %bb.bh
  %i.hd = phi ptr [ %i.hc, %bb.bi ], [ @.str.24, %bb.bh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 662, ptr noundef %i.hd)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.he = load ptr, ptr %19, align 8, !tbaa !99   ; 3 uses
  %.not.i.i195 = icmp eq ptr %i.he, null
  br i1 %.not.i.i195, label %_ZN7testing7MessageD2Ev.exit197, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196: ; preds = %bb.bk
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !49
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit197

_ZN7testing7MessageD2Ev.exit197:                  ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.hi = load ptr, ptr %i.ha, align 8, !tbaa !94 ; 4 uses
  %.not.i.i198 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i198, label %_ZN7testing15AssertionResultD2Ev.exit202, label %bb.bl

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit197
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !97 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199: ; preds = %bb.bl
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !100
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit202

_ZN7testing15AssertionResultD2Ev.exit202:         ; preds = %_ZN7testing7MessageD2Ev.exit197, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ew

bb.bm:                                            ; preds = %bb.bg
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit205

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn60 = phi { ptr, i32 } [ %i.hq, %bb.bo ], [ %i.hp, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.hr = load ptr, ptr %19, align 8, !tbaa !99   ; 3 uses
  %.not.i.i203 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i203, label %_ZN7testing7MessageD2Ev.exit205, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204: ; preds = %bb.bp
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !49
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(128) %i.hr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit205

_ZN7testing7MessageD2Ev.exit205:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204, %bb.bp, %bb.bm
  %.pn60.pn = phi { ptr, i32 } [ %i.ho, %bb.bm ], [ %.pn60, %bb.bp ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ex

.critedge84:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIN4test11meta_traitsES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !94 ; 4 uses
  %.not.i.i206 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i206, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i211, label %bb.bq

bb.bq:                                            ; preds = %.critedge84
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !97 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i207: ; preds = %bb.bq
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !100
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i207
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef 32) #28
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i211

_ZNK4entt9meta_type10fetch_nodeEv.exit.i211:      ; preds = %.critedge84, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.ic = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i32 noundef 388133425, i1 noundef zeroext true) ; 2 uses
  %.not.i212 = icmp eq ptr %i.ic, null
  %i.id = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8 ; 2 uses
  %.not.i.i.i.i.i216 = icmp eq ptr %i.id, null
  %or.cond473 = select i1 %.not.i212, i1 %.not.i.i.i.i.i216, i1 false
  br i1 %or.cond473, label %bb.br, label %_ZNK4entt9meta_type4funcEjb.exit217

bb.br:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i211
  %i.ie = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %._ZNK4entt9meta_type4funcEjb.exit217_crit_edge unwind label %bb.bs ; 0 uses

._ZNK4entt9meta_type4funcEjb.exit217_crit_edge:   ; preds = %bb.br
  %.pre487 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  br label %_ZNK4entt9meta_type4funcEjb.exit217

bb.bs:                                            ; preds = %bb.br
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #27
  unreachable

_ZNK4entt9meta_type4funcEjb.exit217:              ; preds = %._ZNK4entt9meta_type4funcEjb.exit217_crit_edge, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i211
  %i.ih = phi ptr [ %.pre487, %._ZNK4entt9meta_type4funcEjb.exit217_crit_edge ], [ %i.id, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i211 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
end_hunk_0
begin_hunk_1_@_ZN29MetaFunc_OverloadedOrder_Test8TestBodyEv:bb.a
  store ptr %i.n, ptr %i.jv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  %i.jw = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !65 ; 2 uses
  %.not.i.i246 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i246, label %bb.da, label %_ZN4entt7resolveIiEENS_9meta_typeEv.exit249

bb.da:                                            ; preds = %bb.cz
  %i.jx = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt7resolveIiEENS_9meta_typeEv.exit249 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #27
  unreachable

_ZN4entt7resolveIiEENS_9meta_typeEv.exit249:      ; preds = %bb.cz, %bb.da
  %i.ka = phi ptr [ %i.jw, %bb.cz ], [ %i.jx, %bb.da ] ; 3 uses
  %i.kb = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ka) #26 ; 2 uses
  store ptr %i.kb, ptr %33, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr %i.ka, ptr %i.kc, align 8
  %i.kd = load ptr, ptr %i.jv, align 8, !tbaa !103, !noalias !884 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.ka
  br i1 %i.ke, label %bb.dc, label %_ZNK4entt9meta_typeeqERKS0_.exit.thread.i.i250

bb.dc:                                            ; preds = %_ZN4entt7resolveIiEENS_9meta_typeEv.exit249
  %i.kf = load ptr, ptr %32, align 8, !tbaa !104, !noalias !884 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251.thread

_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251.thread: ; preds = %bb.dc
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !169, !noalias !884
  br label %_ZNK4entt9meta_typeeqERKS0_.exit.i.i252

_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251:  ; preds = %bb.dc
  %i.kj = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.kd) #26, !noalias !884
  %.pre333 = load ptr, ptr %33, align 8, !tbaa !104, !noalias !884 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !169, !noalias !884 ; 2 uses
  %i.km = icmp eq ptr %.pre333, null
  br i1 %i.km, label %bb.dd, label %_ZNK4entt9meta_typeeqERKS0_.exit.i.i252

bb.dd:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251
  %i.kn = load ptr, ptr %i.kc, align 8, !tbaa !103, !noalias !884
  %i.ko = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.kn) #26, !noalias !884
  br label %_ZNK4entt9meta_typeeqERKS0_.exit.i.i252

_ZNK4entt9meta_typeeqERKS0_.exit.i.i252:          ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251.thread, %bb.dd, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251
  %i.kp = phi i32 [ %i.kl, %bb.dd ], [ %i.kl, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251 ], [ %i.ki, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251.thread ]
  %i.kq = phi ptr [ %i.ko, %bb.dd ], [ %.pre333, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251 ], [ %i.kb, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i.i251.thread ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !169, !noalias !884
  %i.kt = icmp eq i32 %i.kp, %i.ks
  br i1 %i.kt, label %bb.de, label %_ZNK4entt9meta_typeeqERKS0_.exit.thread.i.i250

bb.de:                                            ; preds = %_ZNK4entt9meta_typeeqERKS0_.exit.i.i252
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31)
  br label %_ZN7testing8internal8EqHelper7CompareIN4entt9meta_typeES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit253

_ZNK4entt9meta_typeeqERKS0_.exit.thread.i.i250:   ; preds = %_ZNK4entt9meta_typeeqERKS0_.exit.i.i252, %_ZN4entt7resolveIiEENS_9meta_typeEv.exit249
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt9meta_typeES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %33)
  br label %_ZN7testing8internal8EqHelper7CompareIN4entt9meta_typeES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit253

_ZN7testing8internal8EqHelper7CompareIN4entt9meta_typeES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit253: ; preds = %bb.de, %_ZNK4entt9meta_typeeqERKS0_.exit.thread.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.ku = load i8, ptr %31, align 8, !tbaa !91, !range !92, !noundef !93
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %.critedge98, label %bb.df

bb.df:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt9meta_typeES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit253
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dg unwind label %bb.dl

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  %i.kw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i254, label %_ZNK7testing15AssertionResult15failure_messageEv.exit255, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit255

_ZNK7testing15AssertionResult15failure_messageEv.exit255: ; preds = %bb.dh, %bb.dg
  %i.kz = phi ptr [ %i.ky, %bb.dh ], [ @.str.24, %bb.dg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 756, ptr noundef %i.kz)
          to label %bb.di unwind label %bb.dm

bb.di:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit255
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dj unwind label %bb.dn

bb.dj:                                            ; preds = %bb.di
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.la = load ptr, ptr %34, align 8, !tbaa !99   ; 3 uses
  %.not.i.i256 = icmp eq ptr %i.la, null
  br i1 %.not.i.i256, label %_ZN7testing7MessageD2Ev.exit258, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257: ; preds = %bb.dj
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !49
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(128) %i.la) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit258

_ZN7testing7MessageD2Ev.exit258:                  ; preds = %bb.dj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.le = load ptr, ptr %i.kw, align 8, !tbaa !94 ; 4 uses
  %.not.i.i259 = icmp eq ptr %i.le, null
  br i1 %.not.i.i259, label %_ZN7testing15AssertionResultD2Ev.exit263, label %bb.dk

bb.dk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit258
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !97 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260: ; preds = %bb.dk
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !100
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i261

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i261: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit263

_ZN7testing15AssertionResultD2Ev.exit263:         ; preds = %_ZN7testing7MessageD2Ev.exit258, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.ee

bb.dl:                                            ; preds = %bb.df
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit266

bb.dm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit255
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.di
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #26
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn77 = phi { ptr, i32 } [ %i.lm, %bb.dn ], [ %i.ll, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.ln = load ptr, ptr %34, align 8, !tbaa !99   ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i264, label %_ZN7testing7MessageD2Ev.exit266, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265: ; preds = %bb.do
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !49
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(128) %i.ln) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit266

_ZN7testing7MessageD2Ev.exit266:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265, %bb.do, %bb.dl
  %.pn77.pn = phi { ptr, i32 } [ %i.lk, %bb.dl ], [ %.pn77, %bb.do ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.ef

.critedge98:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt9meta_typeES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit253
  %i.lr = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !94 ; 4 uses
  %.not.i.i267 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i267, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.critedge98
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !97 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268: ; preds = %bb.dp
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !100
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 32) #28
  br label %bb.dq

bb.dq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269, %.critedge98
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.ly = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %40 = load ptr, ptr %i.ly, align 8, !tbaa !121
  %.not.i.i272 = icmp eq ptr %40, null            ; 3 uses
  %i.lz = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i276.a = icmp eq ptr %i.lz, null
  %or.cond = select i1 %.not.i.i272, i1 %.not.i.i.i.i.i276.a, i1 false
  br i1 %or.cond, label %bb.dr, label %_ZNK4entt9meta_func4nextEv.exit277

bb.dr:                                            ; preds = %bb.dq
  %41 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_func4nextEv.exit277.thread unwind label %bb.ds ; 0 uses

_ZNK4entt9meta_func4nextEv.exit277.thread:        ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit294

bb.ds:                                            ; preds = %bb.dr
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0
  call void @__clang_call_terminate(ptr %i.mb) #27
  unreachable

_ZNK4entt9meta_func4nextEv.exit277:               ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  %42 = zext i1 %.not.i.i272 to i8
  store i8 %42, ptr %36, align 8, !tbaa !91
  %i.mc = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store ptr null, ptr %i.mc, align 8, !tbaa !153
  br i1 %.not.i.i272, label %_ZN7testing15AssertionResultD2Ev.exit294, label %43

43:                                               ; preds = %_ZNK4entt9meta_func4nextEv.exit277
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %43
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.md = load ptr, ptr %39, align 8, !tbaa !97
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 760, ptr noundef %i.md)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.dw unwind label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #26
  %i.me = load ptr, ptr %39, align 8, !tbaa !97   ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %bb.dw
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !100
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.mj = load ptr, ptr %37, align 8, !tbaa !99   ; 3 uses
  %.not.i.i281 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i281, label %bb.ec, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !49
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(128) %i.mj) #26, !inline_history !0
  br label %bb.ec

bb.dx:                                            ; preds = %43
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit289

bb.dy:                                            ; preds = %bb.dt
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

bb.dz:                                            ; preds = %bb.du
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dv
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #26
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn80 = phi { ptr, i32 } [ %i.mq, %bb.ea ], [ %i.mp, %bb.dz ] ; 2 uses
  %i.mr = load ptr, ptr %39, align 8, !tbaa !97   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %bb.eb
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !100
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284, %bb.dy
  %.pn80.pn = phi { ptr, i32 } [ %i.mo, %bb.dy ], [ %.pn80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %.pn80, %bb.eb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.mw = load ptr, ptr %37, align 8, !tbaa !99   ; 3 uses
  %.not.i.i287 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i287, label %_ZN7testing7MessageD2Ev.exit289, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !49
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  call void %i.mz(ptr noundef nonnull align 8 dereferenceable(128) %i.mw) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit289

_ZN7testing7MessageD2Ev.exit289:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %bb.dx
  %.pn80.pn.pn = phi { ptr, i32 } [ %i.mn, %bb.dx ], [ %.pn80.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ], [ %.pn80.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.ef

bb.ec:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %.pr = load ptr, ptr %i.mc, align 8, !tbaa !94  ; 4 uses
  %.not.i.i290 = icmp eq ptr %.pr, null
  br i1 %.not.i.i290, label %_ZN7testing15AssertionResultD2Ev.exit294, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.na = load ptr, ptr %.pr, align 8, !tbaa !97  ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i291: ; preds = %bb.ed
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !100
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.ne) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i292

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i292: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i291
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit294

_ZN7testing15AssertionResultD2Ev.exit294:         ; preds = %_ZNK4entt9meta_func4nextEv.exit277.thread, %_ZNK4entt9meta_func4nextEv.exit277, %bb.ec, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.ee

bb.ee:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit263, %_ZN7testing15AssertionResultD2Ev.exit232, %_ZN7testing15AssertionResultD2Ev.exit212, %_ZN7testing15AssertionResultD2Ev.exit190, %_ZN7testing15AssertionResultD2Ev.exit166, %_ZN7testing15AssertionResultD2Ev.exit140, %_ZN7testing15AssertionResultD2Ev.exit120, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit294
  ret void

bb.ef:                                            ; preds = %_ZN7testing7MessageD2Ev.exit289, %_ZN7testing7MessageD2Ev.exit266, %_ZN7testing7MessageD2Ev.exit238, %_ZN7testing7MessageD2Ev.exit215, %_ZN7testing7MessageD2Ev.exit196, %_ZN7testing7MessageD2Ev.exit169, %_ZN7testing7MessageD2Ev.exit146, %_ZN7testing7MessageD2Ev.exit123, %_ZN7testing7MessageD2Ev.exit107
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn, %_ZN7testing7MessageD2Ev.exit289 ], [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit266 ], [ %.pn73.pn.pn, %_ZN7testing7MessageD2Ev.exit238 ], [ %.pn70.pn, %_ZN7testing7MessageD2Ev.exit215 ], [ %.pn66.pn.pn, %_ZN7testing7MessageD2Ev.exit196 ], [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit169 ], [ %.pn59.pn.pn, %_ZN7testing7MessageD2Ev.exit146 ], [ %.pn56.pn, %_ZN7testing7MessageD2Ev.exit123 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit107 ]
  resume { ptr, i32 } %.pn80.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN28MetaFunc_ReRegistration_Test8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"struct.MetaFunc::function", align 4 ; 10 uses
  %5 = alloca %"class.entt::meta_type", align 8   ; 17 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.entt::meta_any", align 8   ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.entt::meta_any", align 8   ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.entt::meta_any", align 8   ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %30 = alloca %"class.entt::meta_any", align 8   ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %35 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %36 = alloca %"class.entt::meta_factory", align 8 ; 3 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 12 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %50 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %55 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %60 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %61 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %62 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %63 = alloca %"class.entt::meta_factory", align 8 ; 3 uses
  %64 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %65 = alloca %"class.testing::Message", align 8 ; 7 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %67 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %71 = alloca %"class.testing::Message", align 8 ; 7 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.s = tail call noundef i64 @_ZN8MetaFunc15reset_and_checkEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  store i64 %i.s, ptr %i.a, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !127
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.99, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.u = load i8, ptr %1, align 8, !tbaa !91, !range !92, !noundef !93
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.y, %bb.f ], [ @.str.24, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 766, ptr noundef %i.z)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.aa = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit171

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ah = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i169 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i169, label %_ZN7testing7MessageD2Ev.exit171, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170: ; preds = %bb.l
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(128) %i.ah) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit171
end_hunk_1
