Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ASELoader?download=true
inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp3ASE6ParserD2Ev:bb.a
  br label %_ZSt8_DestroyIPN6Assimp3ASE4MeshES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3ASE4MeshES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3ASE4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6Assimp3ASE5DummyESaIS2_EED2Ev.exit
  %i.am = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN6Assimp3ASE4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ai, %_ZNSt6vectorIN6Assimp3ASE5DummyESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i18 = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i18, label %_ZNSt6vectorIN6Assimp3ASE4MeshESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3ASE4MeshES2_EvT_S4_RSaIT0_E.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #23
  br label %_ZNSt6vectorIN6Assimp3ASE4MeshESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3ASE4MeshESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3ASE4MeshES2_EvT_S4_RSaIT0_E.exit.i, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  invoke void @_ZSt8_DestroyIPN6Assimp3ASE8MaterialEEvT_S4_(ptr noundef %i.at, ptr noundef %i.av)
          to label %_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.g, !inline_history !4

_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIN6Assimp3ASE4MeshESaIS2_EED2Ev.exit
  %i.aw = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #23, !inline_history !4
  br label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN6Assimp3ASE4MeshESaIS2_EED2Ev.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #26, !inline_history !4
  unreachable

_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(736) ptr @_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE12emplace_backIJRA16_KcEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.f, ptr %2, align 8
  %i.g = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %2, align 8
  %i.j = load i64, ptr %i.a, align 8
  store i64 %i.j, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %1, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 dereferenceable(16) %1, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(736) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE9constructIS2_JRA16_KcEEEvPT_DpOT0_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.f, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.q

_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE9constructIS2_JRA16_KcEEEvPT_DpOT0_.exit: ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3ASE8MaterialE, i64 16), ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.v, i8 0, i64 33, i1 false)
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.f
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE9constructIS2_JRA16_KcEEEvPT_DpOT0_.exit
  %i.y = load i64, ptr %i.f, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE9constructIS2_JRA16_KcEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 736 ; 2 uses
  store ptr %i.ab, ptr %i.b, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE17_M_realloc_insertIJRA16_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 1 dereferenceable(16) %1)
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ac = phi ptr [ %.pre, %bb.g ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -736
  ret ptr %i.ad
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %class.aiMatrix4x4t, align 4        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store float 1.000000e+00, ptr %4, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4
  call void @_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %class.aiMatrix4x4t, align 16       ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not178276 = icmp eq ptr %i.e, %i.g
  br i1 %.not178276, label %._crit_edge283, label %.lr.ph282

.lr.ph282:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.13.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.21.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.29.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br label %bb.b

._crit_edge283:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  %.sroa.20.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.20.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.12.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.sroa.0152.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0152.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 6 uses
  %i.n = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.o = ptrtoint ptr %.sroa.0152.0.lcssa to i64  ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1104
  store i32 %i.r, ptr %i.s, align 8
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.loopexit, label %bb.aw

bb.b:                                             ; preds = %.lr.ph282, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.0152.0280 = phi ptr [ null, %.lr.ph282 ], [ %.sroa.0152.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 12 uses
  %.sroa.12.0279 = phi ptr [ null, %.lr.ph282 ], [ %.sroa.12.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 10 uses
  %.sroa.0148.0278 = phi ptr [ %i.e, %.lr.ph282 ], [ %i.ho, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.sroa.20.0277 = phi ptr [ null, %.lr.ph282 ], [ %.sroa.20.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 8 uses
  %i.t = load ptr, ptr %.sroa.0148.0278, align 8  ; 17 uses
  %i.u = load i64, ptr %i.c, align 8              ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not75 = icmp eq i64 %i.d, %i.x
  br i1 %.not75, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #22
  %i.ab = icmp eq i64 %i.u, %i.aa
  br i1 %i.ab, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.ac = load ptr, ptr %3, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %i.ac, ptr nonnull %i.z, i64 %i.u)
  %.not179 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not179, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.b
  %.not76 = icmp eq i64 %i.x, 0
  br i1 %.not76, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  store i8 1, ptr %i.ad, align 8
  %i.ae = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25
          to label %bb.g unwind label %.loopexit182 ; 5 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ae)
          to label %bb.h unwind label %bb.z

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %.sroa.12.0279, %.sroa.20.0277
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ae, ptr %.sroa.12.0279, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.af = ptrtoint ptr %.sroa.12.0279 to i64
  %i.ag = ptrtoint ptr %.sroa.0152.0280 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.k, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #25
          to label %.noexc89 unwind label %.loopexit182 ; 4 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 3 uses
  store ptr %i.ae, ptr %i.aq, align 8
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.l, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc89
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %.sroa.0152.0280, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.l, %.noexc89
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0152.0280, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0280, i64 noundef %i.ah) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  %.pre = load ptr, ptr %i.aq, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.i
  %i.at = phi ptr [ %.pre, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ae, %bb.i ] ; 18 uses
  %.sroa.20.4 = phi ptr [ %i.as, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.20.0277, %bb.i ] ; 3 uses
  %.pn = phi ptr [ %i.aq, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.12.0279, %bb.i ]
  %.sroa.0152.4 = phi ptr [ %i.ap, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0152.0280, %bb.i ] ; 3 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %.not78 = icmp eq i64 %i.aw, 0
  br i1 %.not78, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit
  store ptr %i.h, ptr %5, align 8
  br label %bb.p

bb.n:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit
  %i.ax = load ptr, ptr %i.au, align 8            ; 2 uses
  store ptr %i.h, ptr %5, align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.39) #24
          to label %.noexc90 unwind label %.loopexit.split-lp184

.noexc90:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.thread, %bb.n
  %i.az = phi ptr [ @.str.11, %.thread ], [ %i.ax, %bb.n ] ; 3 uses
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.ba, ptr %i.b, align 8
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.p
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc91 unwind label %.loopexit183 ; 2 uses

.noexc91:                                         ; preds = %.noexc.i
  store ptr %i.bc, ptr %5, align 8
  %i.bd = load i64, ptr %i.b, align 8
  store i64 %i.bd, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc91, %bb.p
  %i.be = phi ptr [ %i.bc, %.noexc91 ], [ %i.h, %bb.p ] ; 2 uses
  switch i64 %i.ba, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bf = load i8, ptr %i.az, align 1
  store i8 %i.bf, ptr %i.be, align 1
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %i.az, i64 %i.ba, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.bg = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.bg, ptr %i.i, align 8
  %i.bh = load ptr, ptr %5, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bj = load i64, ptr %i.i, align 8             ; 4 uses
  %i.bk = icmp ugt i64 %i.bj, 1023
  br i1 %i.bk, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = trunc nuw nsw i64 %i.bj to i32
  store i32 %i.bl, ptr %i.at, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.bn = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 1 %i.bn, i64 %i.bj, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj
  store i8 0, ptr %i.bo, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.s, %bb.t
  %i.bp = load ptr, ptr %5, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.h
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.br = load i64, ptr %i.h, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 1096 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6Assimp11ASEImporter9AddMeshesEPKNS_3ASE8BaseNodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.at)
          to label %bb.au unwind label %bb.ab

bb.ag:                                            ; preds = %bb.ae
  %i.fd = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 8
  %i.ff = fcmp ord float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.ah, label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.fg = getelementptr inbounds nuw i8, ptr %i.at, i64 1104 ; 5 uses
  %i.fh = load i32, ptr %i.fg, align 8
  %.not81 = icmp eq i32 %i.fh, 0
  br i1 %.not81, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fi = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #25
          to label %bb.aj unwind label %bb.ab

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %i.at, i64 1112
  store ptr %i.fi, ptr %i.fj, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.fk = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25
          to label %bb.al unwind label %bb.aq     ; 9 uses

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.fk)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.fl = load ptr, ptr %i.au, align 8, !noalias !121
  %i.fm = load i64, ptr %i.av, align 8, !noalias !121 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !alias.scope !122
  store i64 0, ptr %i.m, align 8, !alias.scope !122
  store i8 0, ptr %i.l, align 8, !alias.scope !122
  %i.fn = add i64 %i.fm, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.fn)
          to label %bb.an unwind label %.loopexit188

bb.an:                                            ; preds = %bb.am
  %i.fo = load i64, ptr %i.m, align 8, !alias.scope !122
  %i.fp = sub i64 4611686018427387903, %i.fo
  %i.fq = icmp ult i64 %i.fp, %i.fm
  br i1 %i.fq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.an
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.fl, i64 noundef %i.fm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit188 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fs = load i64, ptr %i.m, align 8, !alias.scope !122
  %i.ft = add i64 %i.fs, -4611686018427387897
  %i.fu = icmp ult i64 %i.ft, 7
  br i1 %i.fu, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.cont.i.i unwind label %.loopexit.split-lp189

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.10, i64 noundef 7)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit188 ; 0 uses

.loopexit188:                                     ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp189:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp189, %.loopexit188
  %lpad.phi192 = phi { ptr, i32 } [ %lpad.loopexit190, %.loopexit188 ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp189 ]
  %i.fw = load ptr, ptr %8, align 8, !alias.scope !122 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.l
  br i1 %i.fx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ao
  %i.fy = load i64, ptr %i.l, align 8, !alias.scope !122
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #23
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ga = load i64, ptr %i.m, align 8             ; 5 uses
  %i.gb = icmp ugt i64 %i.ga, 1023
  %.pre356 = load ptr, ptr %8, align 8            ; 3 uses
  br i1 %i.gb, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107, label %bb.ap

bb.ap:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.gc = trunc nuw nsw i64 %i.ga to i32
  store i32 %i.gc, ptr %i.fk, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gd, ptr align 1 %.pre356, i64 %i.ga, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ga
  store i8 0, ptr %i.ge, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %bb.ap
  %i.gf = icmp eq ptr %.pre356, %i.l
  br i1 %i.gf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107
  %i.gg = icmp ult i64 %i.ga, 16
  call void @llvm.assume(i1 %i.gg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107
  %i.gh = load i64, ptr %i.l, align 8
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %.pre356, i64 noundef %i.gi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gj = load float, ptr %i.fd, align 8
  %i.gk = load float, ptr %i.bz, align 4
  %i.gl = fsub float %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fk, i64 1040
  store float %i.gl, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.go = load float, ptr %i.gn, align 4
  %i.gp = load float, ptr %i.ca, align 4
  %i.gq = fsub float %i.go, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fk, i64 1056
  store float %i.gq, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.gt = load float, ptr %i.gs, align 8
  %i.gu = load float, ptr %i.cb, align 4
  %i.gv = fsub float %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fk, i64 1072
  store float %i.gv, ptr %i.gw, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fk, i64 1096
  store ptr %i.at, ptr %i.gx, align 8
  %i.gy = load i32, ptr %i.fg, align 8
  %.not289 = icmp eq i32 %i.gy, 0
  br i1 %.not289, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.gz = getelementptr inbounds nuw i8, ptr %i.at, i64 1112
  br label %bb.as

._crit_edge:                                      ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.ha = getelementptr inbounds nuw i8, ptr %i.at, i64 1112
  %i.hb = load ptr, ptr %i.ha, align 8
  store ptr %i.fk, ptr %i.hb, align 8
  %i.hc = load i32, ptr %i.fg, align 8
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.fg, align 8
  %i.he = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.at unwind label %bb.aq

bb.aq:                                            ; preds = %bb.at, %._crit_edge, %bb.ak
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ar:                                            ; preds = %bb.al
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef 1144) #23
  br label %bb.av

.body:                                            ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.av

bb.as:                                            ; preds = %.lr.ph, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %i.hh = load ptr, ptr %i.gz, align 8            ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv
  %i.hj = load ptr, ptr %i.hi, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.next
  store ptr %i.hj, ptr %i.hk, align 8
  %i.hl = load i32, ptr %i.fg, align 8
  %i.hm = zext i32 %i.hl to i64
  %i.hn = icmp samesign ult i64 %indvars.iv.next, %i.hm
  br i1 %i.hn, label %bb.as, label %._crit_edge, !llvm.loop !118

bb.at:                                            ; preds = %._crit_edge
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA39_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.he, ptr noundef nonnull align 1 dereferenceable(39) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 1 dereferenceable(2) @.str.13)
          to label %bb.au unwind label %bb.aq

bb.au:                                            ; preds = %bb.at, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %bb.e, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.au
  %.sroa.20.1 = phi ptr [ %.sroa.20.4, %bb.au ], [ %.sroa.20.0277, %bb.e ], [ %.sroa.20.0277, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.20.0277, %bb.c ], [ %.sroa.20.0277, %bb.d ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.2, %bb.au ], [ %.sroa.12.0279, %bb.e ], [ %.sroa.12.0279, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.12.0279, %bb.c ], [ %.sroa.12.0279, %bb.d ] ; 2 uses
  %.sroa.0152.1 = phi ptr [ %.sroa.0152.4, %bb.au ], [ %.sroa.0152.0280, %bb.e ], [ %.sroa.0152.0280, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0152.0280, %bb.c ], [ %.sroa.0152.0280, %bb.d ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0148.0278, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.ho, %i.g
  br i1 %.not178, label %._crit_edge283, label %bb.b, !llvm.loop !119

bb.av:                                            ; preds = %bb.aq, %bb.ar, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.ab
  %.pn84 = phi { ptr, i32 } [ %i.eu, %bb.ab ], [ %i.hg, %bb.ar ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.hf, %bb.aq ], [ %lpad.phi192, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.az

bb.aw:                                            ; preds = %._crit_edge283
  %i.hp = add nsw i64 %i.q, 1                     ; 2 uses
  %i.hq = icmp ugt i64 %i.hp, 2305843009213693951
  %i.hr = shl i64 %i.hp, 3
  %i.hs = select i1 %i.hq, i64 -1, i64 %i.hr
  %i.ht = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hs) #25
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 2 uses
  store ptr %i.ht, ptr %i.hu, align 8
  %.not290 = icmp eq ptr %.sroa.12.0.lcssa, %.sroa.0152.0.lcssa
  br i1 %.not290, label %.loopexit, label %.lr.ph288

bb.ay:                                            ; preds = %bb.aw
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.lr.ph288:                                        ; preds = %bb.ax, %.lr.ph288
  %indvars.iv353 = phi i64 [ %indvars.iv.next354, %.lr.ph288 ], [ 0, %bb.ax ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0152.0.lcssa, i64 %indvars.iv353
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = load ptr, ptr %i.hu, align 8
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv353
  store ptr %i.hx, ptr %i.hz, align 8
  %indvars.iv.next354 = add i64 %indvars.iv353, 1 ; 2 uses
  %i.ia = and i64 %indvars.iv.next354, 4294967295
  %i.ib = icmp ugt i64 %i.q, %i.ia
  br i1 %i.ib, label %.lr.ph288, label %.loopexit.thread, !llvm.loop !120

.loopexit:                                        ; preds = %bb.ax, %._crit_edge283
  %.not.i.i.i = icmp eq ptr %.sroa.0152.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph288, %.loopexit
  %i.ic = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.id = sub i64 %i.ic, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0.lcssa, i64 noundef %i.id) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.az:                                            ; preds = %.loopexit182, %.loopexit.split-lp, %bb.av, %bb.aa, %bb.z, %bb.ay
  %.sroa.20.3 = phi ptr [ %.sroa.20.0.lcssa, %bb.ay ], [ %.sroa.20.0277, %bb.z ], [ %.sroa.20.4, %bb.aa ], [ %.sroa.20.4, %bb.av ], [ %.sroa.20.0277.lcssa, %.loopexit182 ], [ %.sroa.12.0279, %.loopexit.split-lp ]
  %.sroa.0152.3 = phi ptr [ %.sroa.0152.0.lcssa, %bb.ay ], [ %.sroa.0152.0280, %bb.z ], [ %.sroa.0152.4, %bb.aa ], [ %.sroa.0152.4, %bb.av ], [ %.sroa.0152.0280, %.loopexit182 ], [ %.sroa.0152.0280, %.loopexit.split-lp ] ; 3 uses
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.hv, %bb.ay ], [ %i.et, %bb.z ], [ %lpad.phi187, %bb.aa ], [ %.pn84, %bb.av ], [ %lpad.loopexit, %.loopexit182 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i111 = icmp eq ptr %.sroa.0152.3, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112, label %.thread169

.thread169:                                       ; preds = %bb.az
  %i.ie = ptrtoint ptr %.sroa.20.3 to i64
  %i.if = ptrtoint ptr %.sroa.0152.3 to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.3, i64 noundef %i.ig) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112:        ; preds = %bb.az, %.thread169
  resume { ptr, i32 } %.pn84.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter9AddMeshesEPKNS_3ASE8BaseNodeEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %.not79 = icmp eq i32 %i.d, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1120 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1120
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit64, label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.h = phi ptr [ %i.b, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %spec.select = select i1 %i.o, ptr null, ptr %i.p
  %i.q = icmp eq ptr %spec.select, %1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.e, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.e, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !123

bb.e:                                             ; preds = %._crit_edge
  %i.y = zext i32 %i.g to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %.not80 = icmp eq i32 %i.ae, 0
  br i1 %.not80, label %.loopexit64, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph78, %bb.i
  %i.aj = phi ptr [ %i.ac, %.lr.ph78 ], [ %i.dr, %bb.i ] ; 2 uses
  %indvars.iv83 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next84, %bb.i ] ; 3 uses
  %.04775 = phi i32 [ 0, %.lr.ph78 ], [ %.1, %bb.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv83
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8            ; 8 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %spec.select1 = select i1 %i.aq, ptr null, ptr %i.ar
  %i.as = icmp eq ptr %spec.select1, %1
  br i1 %i.as, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.ab, align 8
  %i.au = add i32 %.04775, 1
  %i.av = zext i32 %.04775 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = trunc nuw i64 %indvars.iv83 to i32
  store i32 %i.ax, ptr %i.aw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i64 64, i1 false)
  %i.az = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %3) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %.idx = mul nuw nsw i64 %i.be, 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  %.not5166 = icmp eq i32 %i.bd, 0
  br i1 %.not5166, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.g, %.lr.ph69
  %.04867 = phi ptr [ %i.ci, %.lr.ph69 ], [ %i.bb, %bb.g ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04867, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.04867, i64 8 ; 2 uses
  %i.bi = load float, ptr %.04867, align 4        ; 2 uses
  %i.bj = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bk = load float, ptr %i.bh, align 4          ; 2 uses
  %i.bl = load <8 x float>, ptr %3, align 4       ; 4 uses
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = shufflevector <8 x float> %i.bl, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <8 x float> %i.bl, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.br = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %i.bp)
  %i.bu = shufflevector <8 x float> %i.bl, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.bv = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bt)
  %i.by = shufflevector <8 x float> %i.bl, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.bz = fadd <2 x float> %i.bx, %i.by
  %i.ca = load float, ptr %i.af, align 4
  %i.cb = load float, ptr %i.ag, align 4
  %i.cc = fmul float %i.bj, %i.cb
  %i.cd = call float @llvm.fmuladd.f32(float %i.ca, float %i.bi, float %i.cc)
  %i.ce = load float, ptr %i.ah, align 4
  %i.cf = call float @llvm.fmuladd.f32(float %i.ce, float %i.bk, float %i.cd)
  %i.cg = load float, ptr %i.ai, align 4
  %i.ch = fadd float %i.cg, %i.cf
  store <2 x float> %i.bz, ptr %.04867, align 4
  store float %i.ch, ptr %i.bh, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.04867, i64 12 ; 2 uses
  %.not51 = icmp eq ptr %i.ci, %i.bf
  br i1 %.not51, label %._crit_edge70, label %.lr.ph69, !llvm.loop !124

._crit_edge70:                                    ; preds = %.lr.ph69, %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %.not52 = icmp eq ptr %i.ck, null
  br i1 %.not52, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge70
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  %i.cm = load float, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %i.cp = load float, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  %i.cr = load <2 x float>, ptr %i.ay, align 8
  %i.cs = load <2 x float>, ptr %i.cn, align 8
  %i.ct = load <2 x float>, ptr %i.cq, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.cv = load float, ptr %i.cu, align 8
  %i.cw = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %.idx81 = mul nuw nsw i64 %i.cx, 12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx81
  %.not5371 = icmp eq i32 %i.cw, 0
  br i1 %.not5371, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.h, %.lr.ph74
  %.14972 = phi ptr [ %i.dq, %.lr.ph74 ], [ %i.ck, %bb.h ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.14972, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.14972, i64 8 ; 2 uses
  %i.db = load float, ptr %.14972, align 4        ; 2 uses
  %i.dc = load float, ptr %i.cz, align 4          ; 2 uses
  %i.dd = load float, ptr %i.da, align 4          ; 2 uses
  %i.de = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.cs, %i.df
  %i.dh = insertelement <2 x float> poison, float %i.db, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.di, <2 x float> %i.dg)
  %i.dk = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.dl, <2 x float> %i.dj)
end_hunk_1
