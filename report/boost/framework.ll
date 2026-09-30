Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/framework?download=true
inline.NumInlined: 4258
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost9unit_test9framework13clear_contextEi:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.cl = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit21

bb.ap:                                            ; preds = %bb.an
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit21: ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN5boost9unit_test9framework5state13context_frameESt6vectorIS6_SaIS6_EEEENS4_13frame_with_idEET_SD_SD_T0_.exit, %bb.am, %bb.ao
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 168), align 8, !tbaa !288
  %.not = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.cn
  br i1 %.not, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit21
  %i.co = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.ar, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit23, !prof !35

bb.ar:                                            ; preds = %bb.aq
  %i.cq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i22 = icmp eq i32 %i.cq, 0
  br i1 %.not.i22, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit23, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cr = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit23

bb.au:                                            ; preds = %bb.as
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit23: ; preds = %bb.aq, %bb.ar, %bb.at
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 160), align 8, !tbaa !288 ; 2 uses
  %i.cu = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw
  %i.cy = tail call ptr @_ZNSt6vectorIN5boost9unit_test9framework5state13context_frameESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 160), ptr %i.cx) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit21, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN5boost9unit_test9framework11get_contextEv() local_unnamed_addr #10 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5boost9unit_test9framework17context_generator8is_emptyEv(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  resume { ptr, i32 } %i.e

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 160), align 8, !tbaa !288
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 168), align 8, !tbaa !288
  %i.h = icmp eq ptr %i.f, %i.g
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost9unit_test9framework17context_generator4nextEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::unit_test::basic_cstring") align 8 captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !505
  %i.b = zext i32 %i.a to i64
  %i.c = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.s, %bb.j ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 168), align 8, !tbaa !285
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 160), align 8, !tbaa !287
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit
  %i.o = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i1 = icmp eq i32 %i.q, 0
  br i1 %.not.i1, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2: ; preds = %bb.f, %bb.g, %bb.i
  %i.t = load i32, ptr %1, align 4, !tbaa !505    ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %1, align 4, !tbaa !505
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 160), align 8, !tbaa !287
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !46
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %0, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.ad, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare void @_ZN5boost9unit_test19master_test_suite_tC1Ev(ptr noundef nonnull align 8 dereferenceable(400)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN5boost9unit_test9framework4impl29master_test_suite_name_setterC2ENS0_13basic_cstringIKcEE(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef align 8 captures(none) dead_on_return %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(400) ptr @_ZN5boost9unit_test9framework17master_test_suiteEv() ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !45     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 9 uses
  %2 = ptrtoaddr ptr %i.d to i64                  ; 2 uses
  %.not11.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not11.i.i, label %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i, label %.lr.ph.i.preheader.preheader.i.i

.lr.ph.i.preheader.preheader.i.i:                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.b to i64
  %i.f = sub i64 %2, %i.e
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.f
  br label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i, %.lr.ph.i.preheader.preheader.i.i
  %.012.i.i = phi ptr [ %i.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i ], [ %i.b, %.lr.ph.i.preheader.preheader.i.i ] ; 3 uses
  %i.g = load i8, ptr %.012.i.i, align 1, !tbaa !60
  %i.h = icmp eq i8 %i.g, 34
  br i1 %i.h, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i, label %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i

_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i, label %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i, label %.lr.ph.i.preheader.i.i, !llvm.loop !506

_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i: ; preds = %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i, %.lr.ph.i.preheader.i.i, %bb.a
  %.010.i.i = phi ptr [ %i.b, %bb.a ], [ %scevgep.i.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i ], [ %.012.i.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.not.i5.i.not.i = icmp ugt ptr %i.d, %.010.i.i ; 2 uses
  %spec.store.select.i.i.i = select i1 %.not.i5.i.not.i, ptr %.010.i.i, ptr %i.d ; 4 uses
  store ptr %spec.store.select.i.i.i, ptr %1, align 8
  br i1 %.not.i5.i.not.i, label %.lr.ph.i.preheader.preheader.i3.i, label %_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit

.lr.ph.i.preheader.preheader.i3.i:                ; preds = %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i
  %3 = ptrtoaddr ptr %.010.i.i to i64
  %reass.sub.i = sub i64 %3, %2
  %4 = getelementptr i8, ptr %i.d, i64 %reass.sub.i
  %scevgep.i4.i = getelementptr i8, ptr %4, i64 1
  br label %.lr.ph.i.preheader.i3.i

.lr.ph.i.preheader.i3.i:                          ; preds = %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i, %.lr.ph.i.preheader.preheader.i3.i
  %.0.i.i = phi ptr [ %i.j, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i ], [ %i.d, %.lr.ph.i.preheader.preheader.i3.i ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !60
  %.not8.i.i.a = icmp eq i8 %i.k, 34
  br i1 %.not8.i.i.a, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i

_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i: ; preds = %.lr.ph.i.preheader.i3.i
  %.not8.i.i = icmp eq ptr %i.j, %spec.store.select.i.i.i
  br i1 %.not8.i.i, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i, label %.lr.ph.i.preheader.i3.i, !llvm.loop !507

_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i: ; preds = %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i, %.lr.ph.i.preheader.i3.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.preheader.i3.i ], [ %scevgep.i4.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i ] ; 6 uses
  store ptr %.013.i.i, ptr %i.c, align 8, !tbaa !46
  %.not.i9.i.i = icmp ugt ptr %.013.i.i, %spec.store.select.i.i.i
  br i1 %.not.i9.i.i, label %_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i
  store ptr %.013.i.i, ptr %1, align 8, !tbaa !45
  br label %_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit

_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit: ; preds = %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i, %bb.b
  %i.l = phi ptr [ %i.d, %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i ], [ %.013.i.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i ], [ %.013.i.i, %bb.b ]
  %i.m = phi ptr [ %i.d, %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i ], [ %spec.store.select.i.i.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i ], [ %.013.i.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef 0, i64 noundef %i.s, ptr noundef %i.m, i64 noundef %i.q) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(384) ptr @_ZN5boost9unit_test9framework23current_auto_test_suiteEPNS0_10test_suiteEb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit

common.resume:                                    ; preds = %bb.ai, %bb.z, %bb.t, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.m, %bb.j ], [ %i.ao, %bb.t ], [ %i.av, %bb.z ], [ %i.bw, %bb.ai ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 8), align 8, !tbaa !508
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 16), align 8, !tbaa !508
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.f, label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit
  %i.i = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i1 = icmp eq i32 %i.k, 0
  br i1 %.not.i1, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2: ; preds = %bb.f, %bb.g, %bb.i
  %i.n = tail call noundef nonnull align 8 dereferenceable(400) ptr @_ZN5boost9unit_test9framework17master_test_suiteEv() ; 2 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 16), align 8, !tbaa !509 ; 4 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 24), align 8, !tbaa !289
  %.not.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2
  store ptr %i.n, ptr %i.o, align 8, !tbaa !511
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 16), align 8, !tbaa !509
  br label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit2
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 8), align 8, !tbaa !290 ; 4 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.m, label %_ZNKSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #25
  unreachable

_ZNKSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #27 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %i.n, ptr %i.ad, align 8, !tbaa !511
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.n, label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 24), align 8, !tbaa !289
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ai) #26
  br label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 8), align 8, !tbaa !290
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 16), align 8, !tbaa !509
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 24), align 8, !tbaa !289
  br label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.k, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit
  br i1 %1, label %bb.u, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE9push_backEOS3_.exit
  %i.ak = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.q, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit4, !prof !35

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i3 = icmp eq i32 %i.am, 0
  br i1 %.not.i3, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit4, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit4

bb.t:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit4: ; preds = %bb.p, %bb.q, %bb.s
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 16), align 8, !tbaa !509
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store ptr %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 16), align 8, !tbaa !509
  br label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE9push_backERKS3_.exit

bb.u:                                             ; preds = %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE9push_backEOS3_.exit
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZNSt6vectorIPN5boost9unit_test10test_suiteESaIS3_EE9push_backERKS3_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.w, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit6, !prof !35

bb.w:                                             ; preds = %bb.v
  %i.at = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i5 = icmp eq i32 %i.at, 0
  br i1 %.not.i5, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit6, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.au = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit6

bb.z:                                             ; preds = %bb.x
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit6: ; preds = %bb.v, %bb.w, %bb.y
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 16), align 8, !tbaa !509 ; 4 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 24), align 8, !tbaa !289
  %.not.i7 = icmp eq ptr %i.aw, %i.ax
end_hunk_0
