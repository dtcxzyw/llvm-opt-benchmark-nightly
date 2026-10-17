Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SynthTrace?download=true
inline.NumInlined: 1125
inline.NumDeleted: 407
begin_hunk_0_@_ZNK8facebook6hermes7tracing10SynthTrace20DeletePropertyRecord14toJSONInternalERN6hermes11JSONEmitterE:bb.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8facebook6hermes7tracing10SynthTrace12GlobalRecord14toJSONInternalERN6hermes11JSONEmitterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK8facebook6hermes7tracing10SynthTrace6Record14toJSONInternalERN6hermes11JSONEmitterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.51, i64 5)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  tail call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN8facebook6hermes7tracing10SynthTrace21releaseUnusedFromNameEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !34
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.131) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8, !tbaa !36
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !33
  %i.g = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %0, align 1, !tbaa !14
  store i8 %i.i, ptr %i.h, align 1, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %0, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !35
  %i.l = load ptr, ptr %1, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.n = load i64, ptr %i.k, align 8, !tbaa !35   ; 4 uses
  switch i64 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.p = load i32, ptr %i.o, align 1
  %i.q = icmp ne i32 %i.p, 1701736302
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

bb.f:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10: ; preds = %bb.e
  %.pre = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %bcmp.i9 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.80, i64 %i.n)
  %i.u = icmp eq i32 %bcmp.i9, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12: ; preds = %bb.e
  %.pre22 = load ptr, ptr %1, align 8, !tbaa !33  ; 5 uses
  %bcmp.i11 = call i32 @bcmp(ptr %.pre22, ptr nonnull @.str.81, i64 %i.n)
  %i.v = icmp eq i32 %bcmp.i11, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  %i.w = load i64, ptr %.pre22, align 1
  %i.x = xor i64 %i.w, 8605324900488802169
  %i.y = getelementptr i8, ptr %.pre22, i64 3
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = xor i64 %i.z, 8320788952088930158
  %i.ab = or i64 %i.x, %i.aa
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.83)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #28
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.af) #24
  br label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ah = phi ptr [ %.pre22, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12 ], [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10 ], [ %.pre22, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14 ] ; 2 uses
  %.05 = phi i32 [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10 ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14 ]
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aj = icmp samesign ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !14
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 %.05

bb.i:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.ag, %bb.h ]
  %i.am = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.b
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.i
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.g
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 800
  %.not7.i = icmp eq ptr %i.f, %i.e
  %or.cond = or i1 %i.j, %.not7.i
  br i1 %or.cond, label %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !41 ; 3 uses
  %.pre9.i = load ptr, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre9.i, %.pre.i
  br i1 %.not.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i, %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #24, !inline_history !3
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %.pre9.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i
  store ptr %.pre.i, ptr %i.d, align 8, !tbaa !42
  br label %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !44 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  tail call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.q)
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.q), !inline_history !70
  tail call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.e
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, %._crit_edge.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  %.pre9 = load ptr, ptr %i.c, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre9, %.pre
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #24, !inline_history !185
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %.pre9
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i
  store ptr %.pre, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.08 = phi ptr [ %i.b, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.04.08, align 8, !tbaa !44 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  tail call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.l)
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.l), !inline_history !186
  tail call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing10SynthTrace15flushAndDisableERKN6hermes2vm11GCExecTraceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %.not7.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i, label %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !41 ; 3 uses
  %.pre9.i = load ptr, ptr %i.e, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre9.i, %.pre.i
  br i1 %.not.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i, %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #24, !inline_history !3
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook6hermes7tracing10SynthTrace6RecordEEclEPS4_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %.pre9.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i
  store ptr %.pre.i, ptr %i.e, align 8, !tbaa !42
  br label %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !44 ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  tail call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.m)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.m), !inline_history !70
  tail call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit: ; preds = %bb.b, %._crit_edge.i, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @_ZN6hermes11JSONEmitter10closeArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %i.r)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.s)
  %i.t = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %.not.i2 = icmp eq ptr %i.v, %i.x
  br i1 %.not.i2, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit
  tail call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %i.t)
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %_ZN8facebook6hermes7tracing10SynthTrace12flushRecordsEv.exit, %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6hermes11JSONEmitterESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt14default_deleteIN6hermes11JSONEmitterEEclEPS1_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.z) #24
  br label %_ZNKSt14default_deleteIN6hermes11JSONEmitterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6hermes11JSONEmitterEEclEPS1_.exit.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 72) #25
end_hunk_0
