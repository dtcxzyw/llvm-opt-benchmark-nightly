Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/scheduler?download=true
inline.NumInlined: 1709
inline.NumDeleted: 729
begin_hunk_0_@_ZN30Scheduler_Functionalities_Test8TestBodyEv:bb.a

bb.ff:                                            ; preds = %bb.fd
  %i.qi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i.i325 = icmp eq i8 %i.qi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i325, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.qj = add nsw i32 %i.qa, -1
  store i32 %i.qj, ptr %i.px, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i326

bb.fh:                                            ; preds = %bb.ff
  %i.qk = atomicrmw volatile add ptr %i.px, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i326

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i326: ; preds = %bb.fh, %bb.fg
  %.0.i.i.i.i.i.i.i.i.i.i.i327 = phi i32 [ %i.qa, %bb.fg ], [ %i.qk, %bb.fh ]
  %i.ql = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i327, 1
  br i1 %i.ql, label %bb.fi, label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i328, !prof !81

bb.fi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i326
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pw) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i328

_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i328: ; preds = %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i326, %bb.fe, %.lr.ph.i.i.i.i.i322
  %i.qm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i323, i64 16 ; 2 uses
  %.not.i.i.i.i.i329 = icmp eq ptr %i.qm, %i.pu
  br i1 %.not.i.i.i.i.i329, label %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i322, !llvm.loop !1

_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i328
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !82
  br label %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i330

_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i330: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.fc
  %i.qn = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.pt, %bb.fc ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.qn, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit, label %bb.fj

bb.fj:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i330
  %i.qo = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qn to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef %i.qr) #26
  br label %_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit

_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit:       ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i330, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.qs = load ptr, ptr %2, align 8, !tbaa !82    ; 3 uses
  %i.qt = load ptr, ptr %i.j, align 8, !tbaa !78  ; 2 uses
  %.not4.i.i.i.i.i331 = icmp eq ptr %i.qs, %i.qt
  br i1 %.not4.i.i.i.i.i331, label %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i342, label %.lr.ph.i.i.i.i.i332

.lr.ph.i.i.i.i.i332:                              ; preds = %_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i338
  %.05.i.i.i.i.i333 = phi ptr [ %i.rl, %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i338 ], [ %i.qs, %_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i333, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i334 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i334, label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i338, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i.i.i332
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 4 uses
  %i.qx = load atomic i64, ptr %i.qw acquire, align 8 ; 2 uses
  %i.qy = icmp eq i64 %i.qx, 4294967297
  %i.qz = trunc i64 %i.qx to i32                  ; 2 uses
  br i1 %i.qy, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.qw, align 8, !tbaa !61
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qv, i64 12
  store i32 0, ptr %i.ra, align 4, !tbaa !62
  %i.rb = load ptr, ptr %i.qv, align 8, !tbaa !24
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8
  call void %i.rd(ptr noundef nonnull align 8 dereferenceable(16) %i.qv) #25, !inline_history !2
  %i.re = load ptr, ptr %i.qv, align 8, !tbaa !24
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8
  call void %i.rg(ptr noundef nonnull align 8 dereferenceable(16) %i.qv) #25, !inline_history !2
  br label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i338

bb.fm:                                            ; preds = %bb.fk
  %i.rh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i.i335 = icmp eq i8 %i.rh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i335, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ri = add nsw i32 %i.qz, -1
  store i32 %i.ri, ptr %i.qw, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i336

bb.fo:                                            ; preds = %bb.fm
  %i.rj = atomicrmw volatile add ptr %i.qw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i336

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i336: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i.i.i.i.i.i.i.i337 = phi i32 [ %i.qz, %bb.fn ], [ %i.rj, %bb.fo ]
  %i.rk = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i337, 1
  br i1 %i.rk, label %bb.fp, label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i338, !prof !81

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i336
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qv) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i338

_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i338: ; preds = %bb.fp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i336, %bb.fl, %.lr.ph.i.i.i.i.i332
  %i.rl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i333, i64 16 ; 2 uses
  %.not.i.i.i.i.i339 = icmp eq ptr %i.rl, %i.qt
  br i1 %.not.i.i.i.i.i339, label %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i340, label %.lr.ph.i.i.i.i.i332, !llvm.loop !1

_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i340: ; preds = %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i.i338
  %.pr.i.i.i341 = load ptr, ptr %2, align 8, !tbaa !82
  br label %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i342

_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i342: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i340, %_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit
  %i.rm = phi ptr [ %.pr.i.i.i341, %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i340 ], [ %i.qs, %_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.i343 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i1.i.i.i343, label %_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit344, label %bb.fq

bb.fq:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i342
  %i.rn = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rm to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rq) #26
  br label %_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit344

_ZN4entt15basic_schedulerIjSaIvEED2Ev.exit344:    ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i342, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %bb.an, %_ZN7testing7MessageD2Ev.exit316, %bb.ep, %_ZN7testing7MessageD2Ev.exit277, %bb.di, %_ZN7testing7MessageD2Ev.exit233, %_ZN7testing7MessageD2Ev.exit211, %_ZN7testing7MessageD2Ev.exit186, %bb.bf, %_ZN7testing7MessageD2Ev.exit141, %bb.o
  %.pn96.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn, %_ZN7testing7MessageD2Ev.exit316 ], [ %.pn92.pn.pn, %bb.ep ], [ %.pn88.pn.pn, %_ZN7testing7MessageD2Ev.exit277 ], [ %.pn84.pn.pn, %bb.di ], [ %.pn80.pn.pn, %_ZN7testing7MessageD2Ev.exit233 ], [ %.pn76.pn.pn, %_ZN7testing7MessageD2Ev.exit211 ], [ %i.ds, %bb.an ], [ %.pn72.pn.pn, %_ZN7testing7MessageD2Ev.exit186 ], [ %.pn68.pn.pn, %bb.bf ], [ %.pn.pn.pn, %bb.o ], [ %.pn64.pn.pn, %_ZN7testing7MessageD2Ev.exit141 ], [ %i.eb, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN4entt15basic_schedulerIjSaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN4entt15basic_schedulerIjSaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn96.pn.pn.pn
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !56
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #26
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt15basic_schedulerIjSaIvEE6updateEjPv(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %.not26 = icmp eq ptr %i.b, %i.c
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit
  %.027 = phi i64 [ %i.h, %_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit ], [ %i.g, %.lr.ph.preheader ]
  %i.h = add i64 %.027, -1                        ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 4 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !93    ; 2 uses
  %switch.i = icmp ult i8 %i.m, 2
  br i1 %switch.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.l, align 8, !tbaa !93
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(41) %i.k, i32 noundef %1, ptr noundef %2), !inline_history !126
  %.pr.i = load i8, ptr %i.l, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = phi i8 [ %i.m, %.lr.ph ], [ %.pr.i, %bb.b ]
  %switch.tableidx = add i8 %i.p, -3              ; 3 uses
  %i.q = icmp ult i8 %switch.tableidx, 3
  br i1 %i.q, label %switch.lookup, label %_ZN4entt13basic_processIjSaIvEE4tickEjPv.exit

switch.lookup:                                    ; preds = %bb.c
  %i.r = shl nuw nsw i8 %switch.tableidx, 3
  %i.s = shl nuw nsw i8 %switch.tableidx, 3
  %switch.shiftamt = zext nneg i8 %i.s to i24
  %switch.downshift = lshr i24 460550, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.u = zext nneg i8 %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(41) %i.k), !inline_history !126
  store i8 %switch.masked, ptr %i.l, align 8, !tbaa !93
  br label %_ZN4entt13basic_processIjSaIvEE4tickEjPv.exit

_ZN4entt13basic_processIjSaIvEE4tickEjPv.exit:    ; preds = %bb.c, %switch.lookup
  %i.y = load ptr, ptr %0, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.h ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !85  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !93  ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 6
  br i1 %i.ad, label %bb.d, label %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.d:                                             ; preds = %_ZN4entt13basic_processIjSaIvEE4tickEjPv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !85, !noalias !132 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69, !noalias !132 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZN4entt13basic_processIjSaIvEE4peekEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56, !noalias !132
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !75, !noalias !132
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !75, !noalias !132
  br label %_ZN4entt13basic_processIjSaIvEE4peekEv.exit

bb.g:                                             ; preds = %bb.e
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4, !noalias !132 ; 0 uses
  br label %_ZN4entt13basic_processIjSaIvEE4peekEv.exit

_ZN4entt13basic_processIjSaIvEE4peekEv.exit:      ; preds = %bb.d, %bb.f, %bb.g
  store ptr %i.af, ptr %i.z, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 8 uses
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !69
  %.not.i.i.i.i13 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i13, label %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4entt13basic_processIjSaIvEE4peekEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ap, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !62
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #25, !inline_history !129
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #25, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i14 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.m, label %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #25
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %.pr = load ptr, ptr %i.z, align 8, !tbaa !85
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, %_ZN4entt13basic_processIjSaIvEE4peekEv.exit
  %i.be = phi ptr [ %.pr, %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split ], [ %i.af, %_ZN4entt13basic_processIjSaIvEE4peekEv.exit ] ; 2 uses
  %.not25 = icmp eq ptr %i.be, null
  br i1 %.not25, label %bb.n, label %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit._ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread_crit_edge

_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit._ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread_crit_edge: ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit._ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread_crit_edge, %_ZN4entt13basic_processIjSaIvEE4tickEjPv.exit
  %i.bf = phi i8 [ %.pre, %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit._ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread_crit_edge ], [ %i.ac, %_ZN4entt13basic_processIjSaIvEE4tickEjPv.exit ]
  %i.bg = icmp eq i8 %i.bf, 7
  br i1 %i.bg, label %bb.n, label %_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 8 uses
  store <2 x ptr> %i.bk, ptr %i.z, align 8, !tbaa !80
  %.not.i.i.i.i15 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i15, label %_ZNSt10shared_ptrIN4entt13basic_processIjSaIvEEEEaSEOS4_.exit19, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bm, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !62
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !129
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !129
  br label %_ZNSt10shared_ptrIN4entt13basic_processIjSaIvEEEEaSEOS4_.exit19

bb.q:                                             ; preds = %bb.o
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i16 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i16, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i17

bb.s:                                             ; preds = %bb.q
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i17: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i18 = phi i32 [ %i.bp, %bb.r ], [ %i.bz, %bb.s ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i18, 1
  br i1 %i.ca, label %bb.t, label %_ZNSt10shared_ptrIN4entt13basic_processIjSaIvEEEEaSEOS4_.exit19, !prof !81

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i17
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZNSt10shared_ptrIN4entt13basic_processIjSaIvEEEEaSEOS4_.exit19

_ZNSt10shared_ptrIN4entt13basic_processIjSaIvEEEEaSEOS4_.exit19: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i17, %bb.t
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !78
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN4entt13basic_processIjSaIvEEEEaSEOS4_.exit19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cf, align 8, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !62
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #25, !inline_history !130
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #25, !inline_history !130
  br label %_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit

bb.w:                                             ; preds = %bb.u
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i21 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i.i21, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

bb.y:                                             ; preds = %bb.w
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i23 = phi i32 [ %i.ci, %bb.x ], [ %i.cs, %bb.y ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i23, 1
  br i1 %i.ct, label %bb.z, label %_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit, !prof !81

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #25
  br label %_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorISt10shared_ptrIN4entt13basic_processIjSaIvEEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22, %bb.v, %_ZNSt10shared_ptrIN4entt13basic_processIjSaIvEEEEaSEOS4_.exit19, %_ZNSt12__shared_ptrIN4entt13basic_processIjSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt15basic_schedulerIjSaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !62
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !133
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !133
  br label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i, !prof !81

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN4entt13basic_processIjSaIvEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !82
  br label %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt10shared_ptrINS_13basic_processIjSaIvEEEESaIS7_EELm0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !79
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt10shared_ptrINS_13basic_processIjSaIvEEEESaIS7_EELm0EED2Ev.exit

_ZN4entt8internal23compressed_pair_elementISt6vectorISt10shared_ptrINS_13basic_processIjSaIvEEEESaIS7_EELm0EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4entt13basic_processIjSaIvEEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN19Scheduler_Swap_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::basic_scheduler", align 16 ; 17 uses
  %2 = alloca %"class.entt::basic_scheduler", align 16 ; 16 uses
  %i.a = alloca i32, align 4                      ; 13 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
end_hunk_0
