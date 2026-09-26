Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testCTestResourceSpec?download=true
inline.NumInlined: 677
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN19cmCTestResourceSpec8ResourceESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE7_M_copyILb0ENSJ_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESO_PSt18_Rb_tree_node_baseRT0_:bb.a

bb.j:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #18 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 88) #21
  invoke void @__cxa_rethrow() #19
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
  tail call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.aa = load i32, ptr %.03040, align 8, !tbaa !118
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !118
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.03139, ptr %i.ad, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %.03040, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 2 uses
  %.not33 = icmp eq ptr %i.af, null
  br i1 %.not33, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN19cmCTestResourceSpec8ResourceESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE7_M_copyILb0ENSJ_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESO_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !80
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph, %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.q, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.ai, %bb.q ], [ %i.x, %bb.k ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.0) #18 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN19cmCTestResourceSpec8ResourceESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #19
          to label %bb.v unwind label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.n
  %.030.in = getelementptr inbounds nuw i8, ptr %.03040, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !81 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !117

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
  tail call void @__clang_call_terminate(ptr %i.am) #22
  unreachable

bb.v:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Json5ValueEESt6vectorISE_SaISE_EEEEPSE_ET0_T_SN_SM_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.s, %bb.d ], [ %2, %bb.a ]  ; 9 uses
  %.sroa.08.013 = phi ptr [ %i.r, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !16
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.e, ptr %i.a, align 8, !tbaa !21
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !19
  %i.h = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.h, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !22
  store i8 %i.j, ptr %i.i, align 1, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %.014, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123
  store ptr %i.q, ptr %i.o, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #18 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Json5ValueEEEvT_SE_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #19
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN11cmJSONState5ErrorESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.s, %bb.d ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.08.013 = phi ptr [ %i.r, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i64, ptr %.sroa.08.013, align 8, !tbaa !125
  store i64 %i.b, ptr %.014, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !16
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.h, ptr %i.a, align 8, !tbaa !21
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !19
  %i.k = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.k, ptr %i.e, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %.lr.ph ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !22
  store i8 %i.m, ptr %i.l, align 1, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #18 ; 0 uses
  invoke void @_ZSt8_DestroyIPN11cmJSONState5ErrorEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #19
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_testCTestResourceSpec.cxx() #16 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [37 x %struct.ExpectedSpec], align 8 ; 530 uses
  %1 = alloca [2 x %"struct.std::pair"], align 8  ; 21 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::vector.17", align 8    ; 13 uses
  %4 = alloca [2 x %"class.cmCTestResourceSpec::Resource"], align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.17", align 8    ; 10 uses
  %7 = alloca %"struct.std::less", align 1        ; 4 uses
  %8 = alloca %"class.std::allocator.23", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !16
  store i32 1937076327, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.h, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !16
  store i8 50, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.k, align 1, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 4, ptr %i.l, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 6 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !16
  store i8 101, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 1, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 57
  store i8 0, ptr %i.p, align 1, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 1, ptr %i.q, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.r = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #20
          to label %_ZNSt12_Vector_baseIN19cmCTestResourceSpec8ResourceESaIS1_EE11_M_allocateEm.exit.i.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseIN19cmCTestResourceSpec8ResourceESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.r, ptr %3, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !28
  %i.v = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN19cmCTestResourceSpec8ResourceEPS1_ET0_T_S6_S5_(ptr noundef nonnull %4, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN19cmCTestResourceSpec8ResourceESaIS1_EE11_M_allocateEm.exit.i.i.i, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %.not.i.i5.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i5.i.i, label %.body.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #21
  br label %.body.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN19cmCTestResourceSpec8ResourceESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.ad, align 8, !tbaa !25
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN19cmCTestResourceSpec8ResourceESaIS9_EEEC2IS6_SB_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISF_SG_EEEbE4typeELb1EEERS6_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %._crit_edge.i.i233.i unwind label %bb.t

._crit_edge.i.i233.i:                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.af, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.ag, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.ah, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN19cmCTestResourceSpec8ResourceESaIS9_EEEC2IS6_SB_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISF_SG_EEEbE4typeELb1EEERS6_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %._crit_edge.i.i233.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN19cmCTestResourceSpec8ResourceESaIS8_EESt4lessIS5_ESaISt4pairIKS5_SA_EEEC2ESt16initializer_listISF_ERKSC_RKSG_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr nonnull %1, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %._crit_edge.i.i237.i unwind label %bb.v

._crit_edge.i.i237.i:                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_testCTestResourceSpec.cxx:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br i1 %.40.i, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %.loopexit513.i
  %i.aaq = load ptr, ptr %0, align 8, !tbaa !19   ; 2 uses
  %i.aar = icmp eq ptr %i.aaq, %i.a
  br i1 %i.aar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417.i: ; preds = %bb.x
  %i.aas = load i64, ptr %i.a, align 8, !tbaa !22
  %i.aat = add i64 %i.aas, 1
  call void @_ZdlPvm(ptr noundef %i.aaq, i64 noundef %i.aat) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417.i
  %.not.i = icmp eq ptr %0, %.3976.i
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419.i, %.preheader.i
  %i.aau = phi ptr [ %i.aav, %.preheader.i ], [ %.3976.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419.i ]
  %i.aav = getelementptr inbounds i8, ptr %i.aau, i64 -208 ; 3 uses
  call void @_ZN12ExpectedSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aav) #18
  %i.aaw = icmp eq ptr %i.aav, %0
  br i1 %i.aaw, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419.i, %.loopexit513.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i

__cxx_global_var_init.exit:                       ; preds = %_ZN19cmCTestResourceSpec8ResourceD2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.aax = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorI12ExpectedSpecSaIS0_EED2Ev, ptr nonnull @_ZL21expectedResourceSpecs, ptr nonnull @__dso_handle) #18 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !9, i64 16}
!19 = !{!18, !14, i64 0}
!20 = !{!18, !17, i64 8}
!21 = !{!17, !17, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!"p1 _ZTSN19cmCTestResourceSpec8ResourceE", !13, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN19cmCTestResourceSpec8ResourceESaIS1_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 8}
!26 = !{!24, !23, i64 0}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = !{!24, !23, i64 16}
!29 = !{!23, !23, i64 0}
!30 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!31 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!32 = !{!"_ZTSSt18_Rb_tree_node_base", !30, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!33 = !{!"_ZTSSt15_Rb_tree_header", !32, i64 0, !17, i64 32}
!34 = !{!33, !30, i64 0}
!35 = !{!33, !31, i64 8}
!36 = !{!33, !31, i64 16}
!37 = !{!33, !31, i64 24}
!38 = !{!33, !17, i64 32}
!39 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN19cmCTestResourceSpec8ResourceESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE", !13, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!31, !31, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"p1 _ZTS12ExpectedSpec", !13, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseI12ExpectedSpecSaIS0_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !43, i64 8}
!47 = !{!44, !43, i64 16}
!48 = !{!"bool", !9, i64 0}
!49 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!50 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !49, i64 0}
!51 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN19cmCTestResourceSpec8ResourceESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE13_Rb_tree_implISH_Lb1EEE", !50, i64 0, !33, i64 8}
!52 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN19cmCTestResourceSpec8ResourceESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE", !51, i64 0}
!53 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN19cmCTestResourceSpec8ResourceESaIS8_EESt4lessIS5_ESaISt4pairIKS5_SA_EEE", !52, i64 0}
!54 = !{!"_ZTSN19cmCTestResourceSpec6SocketE", !53, i64 0}
!55 = !{!"p1 _ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Json5ValueEE", !13, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Json5ValueEESaISC_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Json5ValueEESaISC_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Json5ValueEESaISC_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Json5ValueEESaISC_EE", !58, i64 0}
!60 = !{!"p1 _ZTSN11cmJSONState5ErrorE", !13, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN11cmJSONState5ErrorESaIS1_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseIN11cmJSONState5ErrorESaIS1_EE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN11cmJSONState5ErrorESaIS1_EE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIN11cmJSONState5ErrorESaIS1_EE", !63, i64 0}
!65 = !{!"_ZTS11cmJSONState", !59, i64 0, !64, i64 24, !18, i64 48, !48, i64 80, !18, i64 88}
!66 = !{!"_ZTS19cmCTestResourceSpec", !54, i64 0, !65, i64 48}
!67 = !{!"_ZTS12ExpectedSpec", !18, i64 0, !48, i64 32, !66, i64 40}
!68 = !{!67, !48, i64 32}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!65, !48, i64 80}
!72 = !{!"_ZTSN19cmCTestResourceSpec8ResourceE", !18, i64 0, !10, i64 32}
!73 = !{!72, !10, i64 32}
!74 = !{!61, !60, i64 0}
!75 = !{!61, !60, i64 8}
!76 = !{!61, !60, i64 16}
!77 = !{!56, !55, i64 0}
!78 = !{!56, !55, i64 8}
!79 = !{!56, !55, i64 16}
!80 = !{!32, !31, i64 24}
!81 = !{!32, !31, i64 16}
!82 = distinct !{!82, !42}
!83 = distinct !{null, null}
!84 = !{!43, !43, i64 0}
!85 = !{!14, !14, i64 0}
!86 = !{!"vtable pointer", !8, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!89 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!90 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!91 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !17, i64 8}
!92 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!93 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!94 = !{!"_ZTSSt6locale", !93, i64 0}
!95 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !88, i64 24, !89, i64 28, !89, i64 32, !90, i64 40, !91, i64 48, !9, i64 64, !10, i64 192, !92, i64 200, !94, i64 208}
!96 = !{!"p1 _ZTSSo", !13, i64 0}
!97 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!98 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!99 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!100 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!101 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !95, i64 0, !96, i64 216, !9, i64 224, !48, i64 225, !97, i64 232, !98, i64 240, !99, i64 248, !100, i64 256}
!102 = !{!101, !98, i64 240}
!103 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!104 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!105 = !{!"p1 int", !13, i64 0}
!106 = !{!"p1 short", !13, i64 0}
!107 = !{!"_ZTSSt5ctypeIcE", !103, i64 0, !104, i64 16, !48, i64 24, !105, i64 32, !105, i64 40, !106, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!108 = !{!107, !9, i64 56}
!109 = distinct !{!109, !42}
!110 = distinct !{!110, !42}
!111 = distinct !{!111, !42}
!112 = distinct !{!112, !42}
!113 = distinct !{!113, !42}
!114 = distinct !{!114, !42}
!115 = !{!55, !55, i64 0}
!116 = !{!60, !60, i64 0}
!117 = distinct !{!117, !42}
!118 = !{!32, !30, i64 0}
!119 = !{!32, !31, i64 8}
!120 = distinct !{!120, !42}
!121 = !{!"p1 _ZTSN4Json5ValueE", !13, i64 0}
!122 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Json5ValueEE", !18, i64 0, !121, i64 32}
!123 = !{!122, !121, i64 32}
!124 = distinct !{!124, !42}
!125 = !{!10, !10, i64 0}
end_hunk_1
