inline.NumInlined: 2875
inline.NumDeleted: 1096
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775744
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #26
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 144115188075855871)
  %i.m = select i1 %i.k, i64 144115188075855871, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.m, 6
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !220
  %i.u = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.w, ptr %i.a, align 8, !tbaa !267
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc26 unwind label %.body  ; 2 uses

.noexc26:                                         ; preds = %.noexc.i
  store ptr %i.y, ptr %3, align 8, !tbaa !7
  %i.z = load i64, ptr %i.a, align 8, !tbaa !267
  store i64 %i.z, ptr %i.t, align 8, !tbaa !222
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc26, %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit
  %i.aa = phi ptr [ %i.y, %.noexc26 ], [ %i.t, %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.noexc
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !222
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !222
  br label %.noexc

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !267 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !221
  %i.ae = load ptr, ptr %3, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull %3)
          to label %_ZNSt15__new_allocatorIN6duckdb5ValueEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ah) #27
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit

_ZNSt15__new_allocatorIN6duckdb5ValueEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit: ; preds = %.noexc
  %i.aj = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.t
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt15__new_allocatorIN6duckdb5ValueEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit
  call void @_ZdlPv(ptr noundef %i.aj) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28: ; preds = %_ZNSt15__new_allocatorIN6duckdb5ValueEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ] ; 3 uses
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i) #25
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i) #25
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !604

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ], [ %i.am, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i30 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i30, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i31
  %.012.i.i.i.i32 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i31 ], [ %i.an, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i33 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i31 ], [ %1, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i33) #25
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i33) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.ao, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i.i31, !llvm.loop !604

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36: ; preds = %.lr.ph.i.i.i.i31, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.an, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ap, %.lr.ph.i.i.i.i31 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #27
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !264
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !265
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.m
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !262
  ret void

.body:                                            ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = call ptr @__cxa_begin_catch(ptr %i.at) #25 ; 0 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.thread48

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %.body
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.s) #25
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit39

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit39
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aw = extractvalue { ptr, i32 } %i.ag, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #25 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.thread48

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.thread48: ; preds = %.body, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit
  call void @_ZdlPv(ptr noundef nonnull %i.r) #27
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit39

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit39: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.thread48, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.av

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #28
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit39
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare noundef zeroext i1 @_ZN6duckdb12BooleanValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !222, !noalias !605
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.d, align 1, !tbaa !222, !noalias !605 ; 2 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  %.not.i = icmp eq i8 %i.f, %4
  %or.cond249 = or i1 %.not.i, %i.h
  br i1 %or.cond249, label %bb.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0176.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.b ] ; 6 uses
  %.0176.i403 = ptrtoint ptr %.0176.i to i64      ; 3 uses
  br i1 %3, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  %i.i = sub i64 %6, %.0176.i403
  %scevgep = getelementptr i8, ptr %.0176.i, i64 %i.i
  br label %.split.us

.split.us:                                        ; preds = %bb.g, %.split.us.preheader
  %.1177.i311.us = phi ptr [ %.0176.i, %.split.us.preheader ], [ %i.q, %bb.g ] ; 3 uses
  %.0178.i310.us = phi i64 [ 0, %.split.us.preheader ], [ %i.p, %bb.g ] ; 2 uses
  %i.j = load i8, ptr %.1177.i311.us, align 1, !tbaa !222, !noalias !605 ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.f, label %.split313.us

bb.f:                                             ; preds = %.split.us
  %i.m = mul i64 %.0178.i310.us, 10
  %i.n = zext nneg i8 %i.j to i64
  %i.o = add i64 %i.m, -48
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1177.i311.us, i64 1 ; 3 uses
  %.not267.i.us = icmp eq ptr %i.q, %1
  br i1 %.not267.i.us, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.q, align 1, !tbaa !222, !noalias !605
  %i.s = icmp eq i8 %i.r, 95
  br i1 %i.s, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.split.us

.thread:                                          ; preds = %bb.l, %bb.f
  %.us-phi315 = phi i64 [ %i.p, %bb.f ], [ %i.ab, %bb.l ]
  %.us-phi316 = phi ptr [ %scevgep, %bb.f ], [ %.2.i, %bb.l ] ; 2 uses
  %i.t = ptrtoint ptr %.us-phi316 to i64          ; 2 uses
  %i.u = sub i64 %i.t, %.0176.i403
  br label %bb.y

.split:                                           ; preds = %bb.e, %bb.l
  %.1177.i311 = phi ptr [ %.2.i, %bb.l ], [ %.0176.i, %bb.e ] ; 4 uses
  %.0178.i310 = phi i64 [ %i.ab, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.v = load i8, ptr %.1177.i311, align 1, !tbaa !222, !noalias !605 ; 3 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.h, label %.split313.us

bb.h:                                             ; preds = %.split
  %i.y = mul i64 %.0178.i310, 10
  %i.z = zext nneg i8 %i.v to i64
  %i.aa = add i64 %i.y, -48
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1177.i311, i64 1 ; 4 uses
  %.not267.i = icmp eq ptr %i.ac, %1
  br i1 %.not267.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !222, !noalias !605
  %i.ae = icmp eq i8 %i.ad, 95
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1177.i311, i64 2 ; 3 uses
  %i.ag = icmp eq ptr %i.af, %1
  br i1 %i.ag, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !222, !noalias !605
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.2.i = phi ptr [ %i.af, %bb.k ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %.not252.i = icmp eq ptr %.2.i, %1
  br i1 %.not252.i, label %.thread, label %.split, !llvm.loop !608

.split313.us:                                     ; preds = %.split, %.split.us
  %i.ak = phi i8 [ %i.j, %.split.us ], [ %i.v, %.split ]
  %.us-phi = phi i64 [ %.0178.i310.us, %.split.us ], [ %.0178.i310, %.split ] ; 4 uses
  %.us-phi314 = phi ptr [ %.1177.i311.us, %.split.us ], [ %.1177.i311, %.split ] ; 5 uses
  %i.al = ptrtoint ptr %.us-phi314 to i64         ; 3 uses
  %i.am = sub i64 %i.al, %.0176.i403              ; 2 uses
  %i.an = icmp eq i8 %i.ak, %4
  br i1 %i.an, label %bb.m, label %bb.y

bb.m:                                             ; preds = %.split313.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 9 ; 4 uses
  %.not253.i = icmp ugt ptr %i.ap, %1
  br i1 %.not253.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i70 = load i64, ptr %i.ao, align 1, !noalias !605 ; 2 uses
  %i.aq = add i64 %.0.copyload.i70, 5063812098665367110
  %i.ar = add i64 %.0.copyload.i70, -3472328296227680304 ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, -9187201950435737472
  %.not.i67 = icmp eq i64 %i.at, 0
  br i1 %.not.i67, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = mul i64 %.us-phi, 100000000
  %i.av = mul i64 %i.ar, 10
  %i.aw = lshr i64 %i.ar, 8
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = and i64 %i.ax, 1095216660735
  %i.az = mul i64 %i.ay, 4294967296000100
  %i.ba = lshr i64 %i.ax, 16
  %i.bb = and i64 %i.ba, 1095216660735
  %i.bc = mul i64 %i.bb, 42949672960001
  %i.bd = add i64 %i.bc, %i.az
  %i.be = lshr i64 %i.bd, 32
  %i.bf = add i64 %i.be, %i.au                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 17 ; 2 uses
  %.not254.i = icmp ugt ptr %i.bg, %1
  br i1 %.not254.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i71 = load i64, ptr %i.ap, align 1, !noalias !605 ; 2 uses
  %i.bh = add i64 %.0.copyload.i71, 5063812098665367110
  %i.bi = add i64 %.0.copyload.i71, -3472328296227680304 ; 3 uses
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, -9187201950435737472
  %.not.i68 = icmp eq i64 %i.bk, 0
  br i1 %.not.i68, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = mul i64 %i.bf, 100000000
  %i.bm = mul i64 %i.bi, 10
  %i.bn = lshr i64 %i.bi, 8
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = and i64 %i.bo, 1095216660735
  %i.bq = mul i64 %i.bp, 4294967296000100
  %i.br = lshr i64 %i.bo, 16
  %i.bs = and i64 %i.br, 1095216660735
  %i.bt = mul i64 %i.bs, 42949672960001
  %i.bu = add i64 %i.bt, %i.bq
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = add i64 %i.bv, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.1179.i = phi i64 [ %i.bw, %bb.q ], [ %i.bf, %bb.p ], [ %i.bf, %bb.o ], [ %.us-phi, %bb.n ], [ %.us-phi, %bb.m ] ; 3 uses
  %.3.i = phi ptr [ %i.bg, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 6 uses
  %.3.i407 = ptrtoint ptr %.3.i to i64
  br i1 %3, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.r
  %.not255.i317.us = icmp eq ptr %.3.i, %1
  br i1 %.not255.i317.us, label %.outer._crit_edge, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.outer.us
  %i.bx = sub i64 %6, %.3.i407
  %scevgep408 = getelementptr i8, ptr %.3.i, i64 %i.bx
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.t, %.lr.ph.us.preheader
  %.4.i319.us = phi ptr [ %.3.i, %.lr.ph.us.preheader ], [ %i.cb, %bb.t ] ; 3 uses
  %.2180.i318.us = phi i64 [ %.1179.i, %.lr.ph.us.preheader ], [ %i.ce, %bb.t ] ; 2 uses
  %i.by = load i8, ptr %.4.i319.us, align 1, !tbaa !222, !noalias !605
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 10
  br i1 %i.ca, label %bb.s, label %.outer._crit_edge

bb.s:                                             ; preds = %.lr.ph.us
  %i.cb = getelementptr inbounds nuw i8, ptr %.4.i319.us, i64 1 ; 3 uses
  %i.cc = mul i64 %.2180.i318.us, 10
  %i.cd = zext nneg i8 %i.bz to i64
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %.not256.i.us = icmp eq ptr %i.cb, %1
  br i1 %.not256.i.us, label %.outer._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !222, !noalias !605
  %i.cg = icmp eq i8 %i.cf, 95
  br i1 %i.cg, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.lr.ph.us

.outer:                                           ; preds = %bb.r, %bb.x
  %.0221.i.ph = phi i64 [ %i.cs, %bb.x ], [ 0, %bb.r ] ; 4 uses
  %.2180.i.ph = phi i64 [ %i.cn, %bb.x ], [ %.1179.i, %bb.r ] ; 2 uses
  %.4.i.ph = phi ptr [ %i.cq, %bb.x ], [ %.3.i, %bb.r ] ; 5 uses
  %.not255.i317 = icmp eq ptr %.4.i.ph, %1
  br i1 %.not255.i317, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.v
  %.4.i319 = phi ptr [ %i.ck, %bb.v ], [ %.4.i.ph, %.outer ] ; 4 uses
  %.2180.i318 = phi i64 [ %i.cn, %bb.v ], [ %.2180.i.ph, %.outer ] ; 2 uses
  %i.ch = load i8, ptr %.4.i319, align 1, !tbaa !222, !noalias !605
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %bb.u, label %.outer._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.4.i319, i64 1 ; 3 uses
  %i.cl = mul i64 %.2180.i318, 10
  %i.cm = zext nneg i8 %i.ci to i64
  %i.cn = add i64 %i.cl, %i.cm                    ; 3 uses
  %.not256.i = icmp eq ptr %i.ck, %1
  br i1 %.not256.i, label %.outer._crit_edge.loopexit487.split.loop.exit527, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !222, !noalias !605
  %i.cp = icmp eq i8 %i.co, 95
  br i1 %i.cp, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.i319, i64 2 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw nsw i64 %.0221.i.ph, 1
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !222, !noalias !605
  %i.cu = add i8 %i.ct, -48
  %i.cv = icmp ult i8 %i.cu, 10
  br i1 %i.cv, label %.outer, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, !llvm.loop !609

.outer._crit_edge.loopexit487.split.loop.exit527: ; preds = %bb.u
  %.4.i.ph405.le = ptrtoint ptr %.4.i.ph to i64
  %scevgep404.le = getelementptr i8, ptr %.4.i.ph, i64 %6
  %i.cw = sub i64 0, %.4.i.ph405.le
  %scevgep406.le = getelementptr i8, ptr %scevgep404.le, i64 %i.cw
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.lr.ph, %bb.s, %.lr.ph.us, %.outer._crit_edge.loopexit487.split.loop.exit527, %.outer.us
  %.0221.i.ph.lcssa = phi i64 [ %.0221.i.ph, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.0221.i.ph, %.lr.ph ], [ 0, %.outer.us ], [ 0, %bb.s ], [ 0, %.lr.ph.us ], [ %.0221.i.ph, %.outer ]
  %.2180.i.lcssa = phi i64 [ %i.cn, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.2180.i318, %.lr.ph ], [ %.1179.i, %.outer.us ], [ %i.ce, %bb.s ], [ %.2180.i318.us, %.lr.ph.us ], [ %.2180.i.ph, %.outer ]
  %.4.i.lcssa = phi ptr [ %scevgep406.le, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.4.i319, %.lr.ph ], [ %.3.i, %.outer.us ], [ %scevgep408, %bb.s ], [ %.4.i319.us, %.lr.ph.us ], [ %.4.i.ph, %.outer ] ; 2 uses
  %i.cx = ptrtoint ptr %i.ao to i64
  %i.cy = ptrtoint ptr %.4.i.lcssa to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = add nsw i64 %i.cz, %.0221.i.ph.lcssa    ; 2 uses
  %i.db = sub nsw i64 %i.am, %i.da
  br label %bb.y

bb.y:                                             ; preds = %.thread, %.outer._crit_edge, %.split313.us
  %i.dc = phi i64 [ %i.al, %.outer._crit_edge ], [ %i.al, %.split313.us ], [ %i.t, %.thread ]
  %.1211.i = phi i64 [ %i.da, %.outer._crit_edge ], [ 0, %.split313.us ], [ 0, %.thread ] ; 3 uses
  %.1201.i = phi i64 [ %i.db, %.outer._crit_edge ], [ %i.am, %.split313.us ], [ %i.u, %.thread ] ; 3 uses
  %.4182.i = phi i64 [ %.2180.i.lcssa, %.outer._crit_edge ], [ %.us-phi, %.split313.us ], [ %.us-phi315, %.thread ] ; 3 uses
  %.8.i = phi ptr [ %.4.i.lcssa, %.outer._crit_edge ], [ %.us-phi314, %.split313.us ], [ %.us-phi316, %.thread ] ; 7 uses
  %i.dd = icmp eq i64 %.1201.i, 0
  br i1 %i.dd, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = and i32 %5, 1
  %.not257.i = icmp eq i32 %i.de, 0
  %.not258.i = icmp eq ptr %.8.i, %1
  %or.cond.i = or i1 %.not257.i, %.not258.i
  br i1 %or.cond.i, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load i8, ptr %.8.i, align 1, !tbaa !222, !noalias !605
  switch i8 %i.df, label %bb.am [
    i8 101, label %bb.ab
    i8 69, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not260.i = icmp eq ptr %i.dg, %1
  br i1 %.not260.i, label %.critedge271.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !222, !noalias !605 ; 2 uses
  %i.di = icmp eq i8 %i.dh, 45
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  br label %.critedge271.i

bb.ae:                                            ; preds = %bb.ac
  %i.dk = icmp eq i8 %i.dh, 43
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  %spec.select.i = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  br label %.critedge271.i

.critedge271.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0199.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.9.i = phi ptr [ %i.dj, %bb.ad ], [ %i.dg, %bb.ab ], [ %spec.select.i, %bb.ae ] ; 3 uses
  %i.dm = icmp eq ptr %.9.i, %1
  br i1 %i.dm, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.critedge271.i
  %i.dn = load i8, ptr %.9.i, align 1, !tbaa !222, !noalias !605
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %.lr.ph342, label %bb.al

.lr.ph342:                                        ; preds = %bb.af, %.backedge
  %.10.i341 = phi ptr [ %.10.i.be, %.backedge ], [ %.9.i, %bb.af ] ; 4 uses
  %.0204.i340 = phi i64 [ %.1205.i, %.backedge ], [ 0, %bb.af ] ; 4 uses
  %i.dq = load i8, ptr %.10.i341, align 1, !tbaa !222, !noalias !605
  %i.dr = add i8 %i.dq, -48                       ; 2 uses
  %i.ds = icmp ult i8 %i.dr, 10
  br i1 %i.ds, label %bb.ag, label %.thread140

bb.ag:                                            ; preds = %.lr.ph342
  %i.dt = icmp slt i64 %.0204.i340, 65536
  %i.du = mul nsw i64 %.0204.i340, 10
  %i.dv = zext nneg i8 %i.dr to i64
  %i.dw = add nsw i64 %i.du, %i.dv
  %.1205.i = select i1 %i.dt, i64 %i.dw, i64 %.0204.i340 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.10.i341, i64 1 ; 4 uses
  %.not262.i = icmp eq ptr %i.dx, %1
  br i1 %.not262.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !222, !noalias !605
  %i.dz = icmp eq i8 %i.dy, 95
  br i1 %i.dz, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.10.i341, i64 2 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !222, !noalias !605
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %.backedge, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

.backedge:                                        ; preds = %bb.ag, %bb.ah, %bb.ak
  %.10.i.be = phi ptr [ %i.ea, %bb.ak ], [ %i.dx, %bb.ah ], [ %i.dx, %bb.ag ] ; 3 uses
  %.not261.i = icmp eq ptr %.10.i.be, %1
  br i1 %.not261.i, label %.thread140, label %.lr.ph342, !llvm.loop !610

.thread140:                                       ; preds = %.lr.ph342, %.backedge
  %.0204.i.lcssa.ph = phi i64 [ %.0204.i340, %.lr.ph342 ], [ %.1205.i, %.backedge ] ; 2 uses
  %.10.i.lcssa.ph = phi ptr [ %.10.i341, %.lr.ph342 ], [ %.10.i.be, %.backedge ]
  %i.ef = sub nsw i64 0, %.0204.i.lcssa.ph
  %spec.select272.i = select i1 %.0199.i, i64 %i.ef, i64 %.0204.i.lcssa.ph ; 2 uses
  %i.eg = add nsw i64 %spec.select272.i, %.1211.i
  br label %bb.an

bb.al:                                            ; preds = %.critedge271.i, %bb.af
  %i.eh = and i32 %5, 4
  %.not263.i.not = icmp eq i32 %i.eh, 0
  br i1 %.not263.i.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.aa, %bb.z
  %i.ei = and i32 %5, 5
  %or.cond273.i.not.not = icmp eq i32 %i.ei, 1
  br i1 %or.cond273.i.not.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.an:                                            ; preds = %.thread140, %bb.am, %bb.al
  %.4214.i = phi i64 [ %.1211.i, %bb.al ], [ %.1211.i, %bb.am ], [ %i.eg, %.thread140 ] ; 5 uses
  %.5209.i = phi i64 [ 0, %bb.al ], [ 0, %bb.am ], [ %spec.select272.i, %.thread140 ] ; 2 uses
  %.15.i = phi ptr [ %.8.i, %bb.al ], [ %.8.i, %bb.am ], [ %.10.i.lcssa.ph, %.thread140 ] ; 3 uses
  %i.ej = icmp sgt i64 %.1201.i, 19
  br i1 %i.ej, label %.preheader287, label %bb.ba

.preheader287:                                    ; preds = %bb.an, %.critedge8.i
  %.0191.i349 = phi ptr [ %i.eo, %.critedge8.i ], [ %.0176.i, %bb.an ] ; 2 uses
  %.2202.i348 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1201.i, %bb.an ] ; 2 uses
  %i.ek = load i8, ptr %.0191.i349, align 1, !tbaa !222, !noalias !605 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 48                    ; 2 uses
  %i.em = icmp eq i8 %i.ek, %4
  %or.cond274.i = or i1 %i.el, %i.em
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader287
  %i.en = sext i1 %i.el to i64
  %spec.select275.i = add nsw i64 %.2202.i348, %i.en ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0191.i349, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.eo, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader287, !llvm.loop !611

.critedge.i:                                      ; preds = %.preheader287, %.critedge8.i
  %.2202.i.lcssa = phi i64 [ %.2202.i348, %.preheader287 ], [ %spec.select275.i, %.critedge8.i ]
  %i.ep = icmp sgt i64 %.2202.i.lcssa, 19
  br i1 %i.ep, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %.critedge.i, %bb.at
  %.16.i351 = phi ptr [ %.17.i, %bb.at ], [ %.0176.i, %.critedge.i ] ; 4 uses
  %.5183.i350 = phi i64 [ %i.ew, %bb.at ], [ 0, %.critedge.i ] ; 2 uses
  %i.eq = load i8, ptr %.16.i351, align 1, !tbaa !222, !noalias !605 ; 2 uses
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %bb.ao, label %.thread146

bb.ao:                                            ; preds = %.preheader
  %i.et = mul nuw i64 %.5183.i350, 10
  %i.eu = zext nneg i8 %i.eq to i64
  %i.ev = add i64 %i.et, -48
  %i.ew = add i64 %i.ev, %i.eu                    ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.16.i351, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.ex, %1
  br i1 %.not266.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !222, !noalias !605
  %i.ez = icmp eq i8 %i.ey, 95
  br i1 %i.ez, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i351, i64 2 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, %1
  br i1 %i.fb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !222, !noalias !605
  %i.fd = add i8 %i.fc, -48
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %bb.at, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ao
  %.17.i = phi ptr [ %i.fa, %bb.as ], [ %i.ex, %bb.ap ], [ %i.ex, %bb.ao ] ; 4 uses
  %i.ff = icmp ult i64 %i.ew, 1000000000000000000
  %i.fg = icmp ne ptr %.17.i, %1
  %i.fh = and i1 %i.ff, %i.fg
  br i1 %i.fh, label %.preheader, label %bb.au, !llvm.loop !612

bb.au:                                            ; preds = %bb.at
  %i.fi = icmp ugt i64 %i.ew, 999999999999999999
  br i1 %i.fi, label %.thread453.thread, label %.thread146

.thread453.thread:                                ; preds = %bb.au
  %i.fj = ptrtoint ptr %.17.i to i64
  %i.fk = add i64 %.5209.i, %i.dc
  %i.fl = sub i64 %i.fk, %i.fj
  br label %bb.bg

.thread146:                                       ; preds = %.preheader, %bb.au
  %.5183.i300 = phi i64 [ %i.ew, %bb.au ], [ %.5183.i350, %.preheader ] ; 2 uses
  %.16.i297 = phi ptr [ %.17.i, %bb.au ], [ %.16.i351, %.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.16.i297, i64 1 ; 4 uses
  %.not534 = icmp eq ptr %i.fm, %1
  br i1 %.not534, label %._crit_edge356, label %.lr.ph355
end_hunk_0
begin_hunk_1_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.ln = icmp ult i64 %.pn276, 2
  %i.lo = add nsw i64 %.sroa.093.0.ph462479, 4
  %i.lp = icmp ult i64 %i.lo, 28
  %or.cond261.not279 = and i1 %i.lp, %i.ln
  %i.lq = and i64 %i.kx, 3
  %i.lr = icmp eq i64 %i.lq, 1
  %or.cond263 = select i1 %or.cond261.not279, i1 %i.lr, i1 false
  %i.ls = shl i64 %i.kx, %i.kw
  %i.lt = icmp eq i64 %i.ls, %spec.select.i75.pn
  %or.cond265 = select i1 %or.cond263, i1 %i.lt, i1 false
  %i.lu = and i64 %i.kx, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond265, i64 %i.lu, i64 %i.kx ; 2 uses
  %i.lv = and i64 %.sroa.0103.0, 1
  %i.lw = add nuw nsw i64 %i.lv, %.sroa.0103.0    ; 2 uses
  %i.lx = lshr i64 %i.lw, 1
  %.not27.i = icmp samesign ugt i64 %i.lw, 18014398509481983 ; 2 uses
  %i.ly = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.lc, %i.ly      ; 2 uses
  %i.lz = and i64 %i.lx, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not280 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select269 = select i1 %.not280, i64 0, i64 %i.lz
  %spec.select270 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bm, %bb.bl, %bb.bo
  %.sroa.0103.2 = phi i64 [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lk, %bb.bo ], [ %spec.select269, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bm ], [ 0, %bb.bl ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lm, %bb.bo ], [ %spec.select270, %bb.bp ], [ 0, %bb.bn ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2467, %.sroa.0103.2
  %i.ma = icmp ne i32 %.sroa.19117.1469, %.sroa.19.1
  %i.mb = icmp slt i32 %.sroa.19117.1469, 0
  %i.mc = or i1 %i.mb, %i.ma
  %or.cond266 = select i1 %.not.i87, i1 true, i1 %i.mc
  br i1 %or.cond266, label %.thread245, label %bb.br

.thread245:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  %i.md = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %.thread245
  %.fca.0.extract = extractvalue { i64, i32 } %i.md, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.md, 1
  br label %bb.br

bb.br:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, %bb.bj, %bb.bk, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.bq
  %.sroa.690.1 = phi i32 [ %.fca.1.extract, %bb.bq ], [ %.sroa.19117.1469, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iz, %bb.bj ], [ %spec.select268, %bb.bk ]
  %.sroa.088.0 = phi i64 [ %.fca.0.extract, %bb.bq ], [ %.sroa.0111.2467, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.ix, %bb.bj ], [ %spec.select267, %bb.bk ]
  %i.me = zext i32 %.sroa.690.1 to i64
  %i.mf = shl i64 %i.me, 52
  %i.mg = or i64 %i.mf, %.sroa.088.0              ; 2 uses
  %i.mh = or i64 %i.mg, -9223372036854775808
  %spec.select = select i1 %i.c, i64 %i.mh, i64 %i.mg
  store i64 %spec.select, ptr %2, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.br, %bb.bf, %bb.be, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.br ], [ %i.gm, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bf ], [ %.15.i, %bb.be ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.br ], [ %i.gn, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bf ], [ 0, %bb.be ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bt:                                            ; preds = %.thread245
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  tail call void @__clang_call_terminate(ptr %i.mj) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !222
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !222 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !222   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !222   ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !614
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !222
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !222 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !222 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 41
  br i1 %i.ao, label %.lr.ph._crit_edge, label %.lr.ph76, !llvm.loop !616

bb.f:                                             ; preds = %.lr.ph.i43.preheader
  %i.ap = icmp samesign ugt i64 %i.e, 7
  br i1 %i.ap, label %.lr.ph.i48, label %bb.g

.lr.ph.i48:                                       ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.ar = load <4 x i8>, ptr %i.aq, align 1, !tbaa !222
  %i.as = xor <4 x i8> %i.ar, <i8 73, i8 78, i8 73, i8 84>
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !222
  %i.av = xor i8 %i.au, 89
  %i.aw = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.as)
  %op.rdx = or i8 %i.aw, %i.av
  %i.ax = and i8 %op.rdx, -33
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i48, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i48, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i48 ]
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.sink
  %i.ba = select i1 %i.b, double -inf, double +inf
  store double %i.ba, ptr %2, align 8, !tbaa !614
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i43.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.0.3 = phi ptr [ %0, %.lr.ph.i43.preheader ], [ %i.az, %bb.h ], [ %i.z, %bb.b ], [ %i.z, %bb.c ], [ %i.ag, %.lr.ph._crit_edge ], [ %0, %bb.a ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.6.0 = phi i32 [ 22, %.lr.ph.i43.preheader ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = ptrtoint ptr %1 to i64                     ; 2 uses
  %3 = alloca %"struct.duckdb_fast_float::decimal", align 4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %i.c = load i8, ptr %0, align 1, !tbaa !222, !noalias !617
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 4, !tbaa !620, !alias.scope !617
  %spec.select.i.idx = zext i1 %i.d to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i.idx ; 3 uses
  %.not.i9 = icmp eq ptr %spec.select.i, %1
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = ptrtoint ptr %0 to i64
  %i.g = sub i64 %2, %4
  %scevgep = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.1.i10 = phi ptr [ %i.j, %bb.b ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.1.i10, align 1, !tbaa !222, !noalias !617
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i10, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !622

.critedge.i:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.1.i.lcssa = phi ptr [ %spec.select.i, %bb.a ], [ %.1.i10, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %.1.i.lcssa60 = ptrtoint ptr %.1.i.lcssa to i64
  %.not99.i15 = icmp eq ptr %.1.i.lcssa, %1
  br i1 %.not99.i15, label %.critedge106.i.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph17, %bb.f
  %.2.i16 = phi ptr [ %.1.i.lcssa, %.lr.ph17 ], [ %i.s, %bb.f ] ; 4 uses
  %.promoted26 = phi i32 [ 0, %.lr.ph17 ], [ %i.r, %bb.f ] ; 9 uses
  %i.l = load i8, ptr %.2.i16, align 1, !tbaa !222, !noalias !617 ; 2 uses
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %.promoted26, 768
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.promoted26 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  store i8 %i.m, ptr %i.q, align 1, !tbaa !222, !alias.scope !617
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = add i32 %.promoted26, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 3 uses
  %.not99.i = icmp eq ptr %i.s, %1
  br i1 %.not99.i, label %.critedge106.i.loopexit, label %bb.c, !llvm.loop !623

.critedge2.i:                                     ; preds = %bb.c
  store i32 %.promoted26, ptr %3, align 4
  %i.t = icmp eq i8 %i.l, 46
  br i1 %i.t, label %bb.g, label %.critedge106.i

bb.g:                                             ; preds = %.critedge2.i
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 4 uses
  %i.v = icmp ne i32 %.promoted26, 0
  %.not100.i20 = icmp eq ptr %i.u, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not100.i20
  br i1 %or.cond, label %.critedge4.i, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %bb.g
  %i.w = sub i64 %2, %.1.i.lcssa60
  %scevgep61 = getelementptr i8, ptr %.1.i.lcssa, i64 %i.w
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.h
  %.3.i21 = phi ptr [ %i.z, %bb.h ], [ %i.u, %.lr.ph22.preheader ] ; 3 uses
  %i.x = load i8, ptr %.3.i21, align 1, !tbaa !222, !noalias !617
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph22
  %i.z = getelementptr inbounds nuw i8, ptr %.3.i21, i64 1 ; 2 uses
  %.not100.i = icmp eq ptr %i.z, %1
  br i1 %.not100.i, label %.critedge4.i, label %.lr.ph22, !llvm.loop !624

.critedge4.i:                                     ; preds = %bb.h, %.lr.ph22, %bb.g
  %.4.i = phi ptr [ %i.u, %bb.g ], [ %.3.i21, %.lr.ph22 ], [ %scevgep61, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.4.i, i64 8 ; 2 uses
  %i.ab = icmp ule ptr %i.aa, %1
  %i.ac = add i32 %.promoted26, 8                 ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 768
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph29, label %.thread

.lr.ph29:                                         ; preds = %.critedge4.i
  %i.af = zext nneg i32 %i.ac to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph29, %bb.j
  %indvars.iv = phi i64 [ %i.af, %.lr.ph29 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ag = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.ao, %bb.j ] ; 3 uses
  %.5.i28 = phi ptr [ %.4.i, %.lr.ph29 ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ah = phi i32 [ %.promoted26, %.lr.ph29 ], [ %i.as, %bb.j ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.5.i28, align 1, !noalias !617 ; 2 uses
  %i.ai = add i64 %.0.copyload.i.i, 5063812098665367110
  %i.aj = add i64 %.0.copyload.i.i, -3472328296227680304 ; 2 uses
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = and i64 %i.ak, -9187201950435737472
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.am
  store i64 %i.aj, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ap = icmp ule ptr %i.ao, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aq = icmp samesign ult i64 %indvars.iv, 760
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.ar, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %.critedge4.i
  %.lcssa27 = phi i32 [ %.promoted26, %.critedge4.i ], [ %i.ah, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.critedge4.i ], [ %.5.i28, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  store i32 %.lcssa27, ptr %3, align 4
  %.not101.i37 = icmp eq ptr %.5.i.lcssa, %1
  br i1 %.not101.i37, label %.critedge6.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %.thread, %bb.m
  %.8.i38 = phi ptr [ %i.bb, %bb.m ], [ %.5.i.lcssa, %.thread ] ; 3 uses
  %i.at = phi i32 [ %i.ba, %bb.m ], [ %.lcssa27, %.thread ] ; 4 uses
  %i.au = load i8, ptr %.8.i38, align 1, !tbaa !222, !noalias !617
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %i.aw = icmp ult i8 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.critedge6.i

bb.k:                                             ; preds = %.lr.ph39
  %i.ax = icmp ult i32 %i.at, 768
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ay
  store i8 %i.av, ptr %i.az, align 1, !tbaa !222, !alias.scope !617
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = add i32 %i.at, 1                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.i38, i64 1 ; 3 uses
  %.not101.i = icmp eq ptr %i.bb, %1
  br i1 %.not101.i, label %.critedge6.i, label %.lr.ph39, !llvm.loop !625

.critedge6.i:                                     ; preds = %bb.m, %.lr.ph39, %.thread
  %.lcssa36 = phi i32 [ %.lcssa27, %.thread ], [ %i.at, %.lr.ph39 ], [ %i.ba, %bb.m ] ; 2 uses
  %.8.i.lcssa = phi ptr [ %.5.i.lcssa, %.thread ], [ %.8.i38, %.lr.ph39 ], [ %i.bb, %bb.m ] ; 2 uses
  store i32 %.lcssa36, ptr %3, align 4
  %i.bc = ptrtoint ptr %i.u to i64
  %i.bd = ptrtoint ptr %.8.i.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !626, !alias.scope !617
  br label %.critedge106.i

.critedge106.i.loopexit:                          ; preds = %bb.f, %.critedge.i
  %.lcssa13 = phi i32 [ 0, %.critedge.i ], [ %i.r, %bb.f ] ; 2 uses
  %.2.i.lcssa = phi ptr [ %.1.i.lcssa, %.critedge.i ], [ %i.s, %bb.f ]
  store i32 %.lcssa13, ptr %3, align 4
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %.critedge106.i.loopexit, %.critedge6.i, %.critedge2.i
  %i.bg = phi i32 [ %i.bf, %.critedge6.i ], [ 0, %.critedge2.i ], [ 0, %.critedge106.i.loopexit ] ; 2 uses
  %i.bh = phi i32 [ %.lcssa36, %.critedge6.i ], [ %.promoted26, %.critedge2.i ], [ %.lcssa13, %.critedge106.i.loopexit ] ; 3 uses
  %.9.i = phi ptr [ %.8.i.lcssa, %.critedge6.i ], [ %.2.i16, %.critedge2.i ], [ %.2.i.lcssa, %.critedge106.i.loopexit ] ; 6 uses
  %.not102.i = icmp eq i32 %i.bh, 0
  br i1 %.not102.i, label %.thread6, label %.preheader

.preheader:                                       ; preds = %.critedge106.i, %.critedge8.i
  %.9.pn.i = phi ptr [ %.087.i, %.critedge8.i ], [ %.9.i, %.critedge106.i ]
  %.085.i = phi i32 [ %spec.select107.i, %.critedge8.i ], [ 0, %.critedge106.i ] ; 2 uses
  %.087.i = getelementptr inbounds i8, ptr %.9.pn.i, i64 -1 ; 2 uses
  %i.bi = load i8, ptr %.087.i, align 1, !tbaa !222, !noalias !617 ; 2 uses
  switch i8 %i.bi, label %bb.n [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.bj = icmp eq i8 %i.bi, 48
  %i.bk = zext i1 %i.bj to i32
  %spec.select107.i = add nuw nsw i32 %.085.i, %i.bk
  br label %.preheader, !llvm.loop !627

bb.n:                                             ; preds = %.preheader
  %i.bl = add nsw i32 %i.bg, %i.bh                ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !626, !alias.scope !617
  %i.bm = sub i32 %i.bh, %.085.i                  ; 3 uses
  store i32 %i.bm, ptr %3, align 4, !tbaa !628, !alias.scope !617
  %i.bn = icmp ugt i32 %i.bm, 768
  br i1 %i.bn, label %bb.o, label %.thread6

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.b, align 1, !tbaa !629, !alias.scope !617
  store i32 768, ptr %3, align 4, !tbaa !628, !alias.scope !617
  br label %.thread6

.thread6:                                         ; preds = %.critedge106.i, %bb.o, %bb.n
  %i.bo = phi i32 [ 0, %.critedge106.i ], [ 768, %bb.o ], [ %i.bm, %bb.n ] ; 3 uses
  %i.bp = phi i32 [ %i.bg, %.critedge106.i ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ]
  %.not103.i = icmp eq ptr %.9.i, %1
  br i1 %.not103.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread6
  %i.bq = load i8, ptr %.9.i, align 1, !tbaa !222, !noalias !617
  switch i8 %i.bq, label %bb.v [
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 4 uses
  %.not104.i = icmp eq ptr %i.br, %1
  br i1 %.not104.i, label %.critedge109.i, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_1
