Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/wasifunc?download=true
inline.NumInlined: 4648
inline.NumDeleted: 1754
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8WasmEdge4Host14WasiPollOneoffILNS0_4WASI11TriggerTypeE1EE4bodyERKNS_7Runtime12CallingFrameEjjjj:bb.a
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i.i
  store ptr %i.dq, ptr %i.cf, align 8, !tbaa !109
  store ptr %i.dt, ptr %i.cg, align 8, !tbaa !108
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.du, ptr %i.ci, align 8, !tbaa !120
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.y
  %i.dv = phi ptr [ %i.dr, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.di, %bb.y ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i8 1, ptr %i.dw, align 8, !tbaa !111
  store i64 %i.cw, ptr %i.dv, align 8, !tbaa !100
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i16 28, ptr %i.dx, align 8, !tbaa !101
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 10
  store i8 %i.cy, ptr %i.dy, align 2, !tbaa !103
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dz = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.dz) #25
  unreachable

_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit: ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.061157, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !22 ; 4 uses
  switch i8 %i.cy, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.ae:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  %switch.i77 = icmp ugt i32 %i.eb, 3
  br i1 %switch.i77, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  call void @_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i64 noundef %i.cw, i16 noundef zeroext 28, i8 noundef zeroext %i.cy) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %.061157, i64 40
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !22 ; 2 uses
  %i.ee = icmp ugt i16 %i.ed, 1
  br i1 %i.ee, label %.thread146, label %bb.ag

.thread146:                                       ; preds = %bb.af
  call void @_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i64 noundef %i.cw, i16 noundef zeroext 28, i8 noundef zeroext %i.cy) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %.061157, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %.061157, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !22
  call void @_ZN8WasmEdge4Host4WASI6Poller5clockE16__wasi_clockid_tmm22__wasi_subclockflags_tm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i64 noundef %i.eg, i64 noundef %i.ei, i16 noundef zeroext %i.ed, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ah:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  call void @_ZN8WasmEdge4Host4WASI8EVPoller4readEiNS1_11TriggerTypeEm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i32 noundef 1, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

bb.ai:                                            ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  call void @_ZN8WasmEdge4Host4WASI8EVPoller5writeEiNS1_11TriggerTypeEm(ptr noundef nonnull align 8 dereferenceable(216) %i.cd, i32 noundef %i.eb, i32 noundef 1, i64 noundef %i.cw) #23
  br label %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread

default.unreachable:                              ; preds = %_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit
  unreachable

_ZN8WasmEdge4Host4WASI6Poller5errorEm14__wasi_errno_t18__wasi_eventtype_t.exit.thread: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.thread146, %.thread, %bb.ag, %bb.ai, %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %.061157, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ej, %i.ce
  br i1 %.not, label %._crit_edge160, label %bb.w

.loopexit185:                                     ; preds = %bb.v, %._crit_edge160
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge160 ], [ %.1.i73, %bb.v ]
  store i32 %.0.lcssa.i, ptr %i.au, align 4, !tbaa !104
  call void @_ZN8WasmEdge4Host4WASI6Poller5resetEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cd) #23
  %i.ek = load ptr, ptr %i.ay, align 8, !tbaa !291, !nonnull !86, !align !87
  call void @_ZN8WasmEdge4Host4WASI7Environ13releasePollerEONS1_8EVPollerE(ptr noundef nonnull align 8 dereferenceable(344) %i.ek, ptr noundef nonnull align 8 dereferenceable(216) %i.cd) #23
  %.pre164 = load i8, ptr %7, align 8, !tbaa !89, !range !90
  %i.el = trunc nuw i8 %.pre164 to i1
  br i1 %i.el, label %bb.aj, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit

bb.aj:                                            ; preds = %.loopexit185
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN8WasmEdge4Host4WASI6PollerD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.em) #23
  br label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit: ; preds = %.loopexit185, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.en, align 4, !tbaa !22
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit.thread, %bb.m, %bb.q, %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI8EVPollerE14__wasi_errno_tLb0ELb1EED2Ev.exit, %bb.o, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host11WasiArgsGet4bodyERKNS_7Runtime12CallingFrameEjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %3, 3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !299
  switch i32 %i.e, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.d
    i32 35, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.f, !noalias !299

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43, !noalias !299
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !44, !noalias !299 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread40, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread40: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !299 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25, !noalias !299
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !46, !noalias !299 ; 4 uses
  %i.n = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !299 ; 0 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !302, !nonnull !86, !align !87 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !193  ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !194  ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 5                   ; 3 uses
  %i.z = icmp ugt i64 %i.y, 2305843009213693951
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.h
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aa = ashr exact i64 %i.x, 3                  ; 2 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27
          to label %.noexc8.i unwind label %bb.j  ; 9 uses

.noexc8.i:                                        ; preds = %bb.i
  store i32 0, ptr %i.ab, align 4, !tbaa !104
  %i.ac = getelementptr i8, ptr %i.ab, i64 4      ; 3 uses
  %i.ad = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.preheader.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc8.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ad, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc8.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.ac, %.noexc8.i ], [ %i.af, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.08.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.ab, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.03.07.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.u, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.sroa.03.07.i.i, i64 8
  %.val.i.i = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ah = trunc i64 %.val.i.i to i32
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %.sroa.0.08.i.i, align 4, !tbaa !104
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4
  %.not.i.i19 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i19, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i: ; preds = %.lr.ph.i.i
  %.not5.i.i = icmp eq ptr %i.ab, %.0.i.i.i.i.i.ph.i
  br i1 %.not5.i.i, label %.loopexit.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i
  %5 = ptrtoaddr ptr %.0.i.i.i.i.i.ph.i to i64
  %6 = ptrtoaddr ptr %i.ab to i64
  %i.al = add i64 %5, -4
  %i.am = sub i64 %i.al, %6                       ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 28
  br i1 %min.iters.check, label %.lr.ph.i9.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i9.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %i.ab, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.ar = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !104
  %wide.load74 = load <4 x i32>, ptr %i.as, align 4, !tbaa !104
  %i.at = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.au = add <4 x i32> %wide.load74, %vec.phi73  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.loopexit.i.loopexit, label %.lr.ph.i9.i.preheader104

.lr.ph.i9.i.preheader104:                         ; preds = %.lr.ph.i9.i.preheader, %middle.block
  %.07.i.i.ph = phi i32 [ 0, %.lr.ph.i9.i.preheader ], [ %i.aw, %middle.block ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i9.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader104, %.lr.ph.i9.i
  %.07.i.i = phi i32 [ %i.ay, %.lr.ph.i9.i ], [ %.07.i.i.ph, %.lr.ph.i9.i.preheader104 ]
  %.sroa.02.06.i.i = phi ptr [ %i.az, %.lr.ph.i9.i ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i9.i.preheader104 ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.02.06.i.i, align 4, !tbaa !104
  %i.ay = add i32 %i.ax, %.07.i.i                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.az, %.0.i.i.i.i.i.ph.i
  br i1 %.not.i10.i, label %.loopexit.i.loopexit, label %.lr.ph.i9.i, !llvm.loop !295

.loopexit.i.loopexit:                             ; preds = %.lr.ph.i9.i, %middle.block
  %.lcssa = phi i32 [ %i.aw, %middle.block ], [ %i.ay, %.lr.ph.i9.i ]
  %i.ba = zext i32 %.lcssa to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i
  %.0.lcssa.i.ph.i = phi i64 [ 0, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i ], [ %i.ba, %.loopexit.i.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aa) #24
  br label %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i, %.loopexit.i
  %.0.lcssa.i27.i = phi i64 [ %.0.lcssa.i.ph.i, %.loopexit.i ], [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %i.bd = zext i32 %3 to i64                      ; 2 uses
  %i.be = and i64 %i.y, 4294967295                ; 4 uses
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !49
  %i.bi = shl i64 %i.bh, 16                       ; 3 uses
  %i.bj = add nuw nsw i64 %i.bf, %i.bd
  %i.bk = icmp ugt i64 %i.bj, %i.bi
  br i1 %i.bk, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIjEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %bb.k

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIjEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit
  %.not48 = icmp eq i64 %i.be, 0
  br i1 %.not48, label %.thread, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.k:                                             ; preds = %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd ; 3 uses
  %i.bo = zext i32 %4 to i64                      ; 2 uses
  %i.bp = add nuw nsw i64 %.0.lcssa.i27.i, %i.bo
  %i.bq = icmp ule i64 %i.bp, %i.bi               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo
  %.sroa.0.0.i23 = select i1 %i.bq, ptr %i.br, ptr null ; 2 uses
  %.not4950 = icmp eq i64 %.0.lcssa.i27.i, 0
  %.not49 = or i1 %.not4950, %i.bq
  br i1 %.not49, label %bb.l, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

.thread:                                          ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIjEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %i.bs = zext i32 %4 to i64                      ; 2 uses
  %i.bt = add nuw nsw i64 %.0.lcssa.i27.i, %i.bs
  %i.bu = icmp samesign ule i64 %i.bt, %i.bi      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bs
  %.sroa.0.0.i2362 = select i1 %i.bu, ptr %i.bv, ptr null
  %.not495063 = icmp eq i64 %.0.lcssa.i27.i, 0
  %.not4964 = or i1 %.not495063, %i.bu
  br i1 %.not4964, label %.thread67, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp eq i64 %i.be, 0
  br i1 %i.bw, label %.thread67, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %4, ptr %i.bn, align 4, !tbaa !104
  br label %.thread67

.thread67:                                        ; preds = %.thread, %bb.m, %bb.l
  %.sroa.0.0.i466571 = phi ptr [ %i.bn, %bb.l ], [ %i.bn, %bb.m ], [ null, %.thread ]
  %.sroa.0.0.i236670 = phi ptr [ %.sroa.0.0.i23, %bb.l ], [ %.sroa.0.0.i23, %bb.m ], [ %.sroa.0.0.i2362, %.thread ]
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !302, !nonnull !86, !align !87 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !197 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !197 ; 2 uses
  %.not28.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not28.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread67, %bb.o
  %.sroa.7.032.i = phi i64 [ %i.dj, %bb.o ], [ %i.be, %.thread67 ] ; 2 uses
  %.sroa.014.031.i = phi ptr [ %i.dl, %bb.o ], [ %i.bz, %.thread67 ] ; 3 uses
  %.sroa.017.030.i = phi ptr [ %i.dd, %bb.o ], [ %.sroa.0.0.i236670, %.thread67 ] ; 8 uses
  %.sroa.020.029.i = phi ptr [ %i.dk, %bb.o ], [ %.sroa.0.0.i466571, %.thread67 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.014.031.i, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !21 ; 8 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjPhET1_T_T0_SC_.exit.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i
  %.sroa.017.030.i75 = ptrtoaddr ptr %.sroa.017.030.i to i64
  %i.cg = load ptr, ptr %.sroa.014.031.i, align 8, !tbaa !23 ; 6 uses
  %i.ch = and i64 %i.cd, 4294967295               ; 8 uses
  %min.iters.check77 = icmp samesign ult i64 %i.ch, 4
  %i.ci = ptrtoaddr ptr %i.cg to i64
  %i.cj = sub i64 %i.ci, %.sroa.017.030.i75
  %diff.check = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check77, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp samesign ult i64 %i.ch, 32
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph79

vector.ph79:                                      ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.cd, 28
  %n.vec80 = and i64 %i.cd, 4294967264            ; 5 uses
  %i.cl = and i64 %i.cd, 31
  %i.cm = getelementptr i8, ptr %.sroa.017.030.i, i64 %n.vec80
  %i.cn = getelementptr i8, ptr %i.cg, i64 %n.vec80
  br label %vector.body81

vector.body81:                                    ; preds = %vector.ph79, %vector.body81
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 3 uses
  %next.gep83 = getelementptr i8, ptr %.sroa.017.030.i, i64 %index82 ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.cg, i64 %index82 ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load85 = load <16 x i8>, ptr %next.gep84, align 1, !tbaa !22
  %wide.load86 = load <16 x i8>, ptr %i.co, align 1, !tbaa !22
  %i.cp = getelementptr i8, ptr %next.gep83, i64 16
  store <16 x i8> %wide.load85, ptr %next.gep83, align 1, !tbaa !22
  store <16 x i8> %wide.load86, ptr %i.cp, align 1, !tbaa !22
  %index.next87 = add nuw i64 %index82, 32        ; 2 uses
  %i.cq = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.cq, label %middle.block88, label %vector.body81, !llvm.loop !296

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.ch, %n.vec80
  br i1 %cmp.n89, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjPhET1_T_T0_SC_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block88
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !198

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec80, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.cd, 4294967292            ; 4 uses
  %i.cr = and i64 %i.cd, 3
  %i.cs = getelementptr i8, ptr %.sroa.017.030.i, i64 %n.vec93
  %i.ct = getelementptr i8, ptr %i.cg, i64 %n.vec93
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %next.gep95 = getelementptr i8, ptr %.sroa.017.030.i, i64 %index94
  %next.gep96 = getelementptr i8, ptr %i.cg, i64 %index94
  %wide.load97 = load <4 x i8>, ptr %next.gep96, align 1, !tbaa !22
  store <4 x i8> %wide.load97, ptr %next.gep95, align 1, !tbaa !22
  %index.next98 = add nuw i64 %index94, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !297

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.ch, %n.vec93
  br i1 %cmp.n99, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjPhET1_T_T0_SC_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge4Host16WasiArgsSizesGet4bodyERKNS_7Runtime12CallingFrameEjj:bb.a
  %i.b = and i32 %i.a, 3
  %or.cond = icmp eq i32 %i.b, 0
  br i1 %or.cond, label %bb.b, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #23, !noalias !305
  switch i32 %i.f, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.d
    i32 35, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.f, !noalias !305

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43, !noalias !305
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !44, !noalias !305 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread25, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread25: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.k = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #23, !noalias !305 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25, !noalias !305
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !46, !noalias !305 ; 3 uses
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #23, !noalias !305 ; 0 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.q = zext i32 %3 to i64                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49
  %i.t = shl i64 %i.s, 16                         ; 2 uses
  %.not28 = icmp ule i64 %i.t, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q
  %i.x = icmp eq ptr %i.v, null
  %i.y = select i1 %.not28, i1 true, i1 %i.x
  br i1 %i.y, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = zext i32 %4 to i64                       ; 2 uses
  %.not29.not = icmp ugt i64 %i.t, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z ; 2 uses
  br i1 %.not29.not, label %bb.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !308, !nonnull !86, !align !87 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !193 ; 3 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !194 ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 5
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %i.w, align 4, !tbaa !104
  store i32 0, ptr %i.aa, align 4, !tbaa !104
  %.not16.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not16.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %i.ar, ptr %i.aa, align 4, !tbaa !104
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.sroa.010.017.i = phi ptr [ %i.as, %.lr.ph.i ], [ %i.ag, %bb.i ] ; 2 uses
  %i.am = phi i32 [ %i.ar, %.lr.ph.i ], [ 0, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %i.am, 1
  %i.ar = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 32 ; 2 uses
  %.not.i17 = icmp eq ptr %i.as, %i.af
  br i1 %.not.i17, label %._crit_edge.i, label %.lr.ph.i

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.i, %._crit_edge.i, %bb.h, %bb.g, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread25, %bb.b, %bb.a
  %.sink = phi i32 [ 0, %bb.i ], [ 21, %bb.g ], [ 21, %bb.h ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit ], [ 4, %bb.a ], [ 21, %bb.b ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread25 ], [ 0, %._crit_edge.i ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.at, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host14WasiEnvironGet4bodyERKNS_7Runtime12CallingFrameEjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %3, 3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !316
  switch i32 %i.e, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.d
    i32 35, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.f, !noalias !316

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43, !noalias !316
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !44, !noalias !316 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread40, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread40: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !316 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25, !noalias !316
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !46, !noalias !316 ; 4 uses
  %i.n = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !316 ; 0 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !319, !nonnull !86, !align !87 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !193  ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !194  ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 5                   ; 3 uses
  %i.z = icmp ugt i64 %i.y, 2305843009213693951
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.h
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aa = ashr exact i64 %i.x, 3                  ; 2 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27
          to label %.noexc8.i unwind label %bb.j  ; 9 uses

.noexc8.i:                                        ; preds = %bb.i
  store i32 0, ptr %i.ab, align 4, !tbaa !104
  %i.ac = getelementptr i8, ptr %i.ab, i64 4      ; 3 uses
  %i.ad = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.preheader.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc8.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ad, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc8.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.ac, %.noexc8.i ], [ %i.af, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.08.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.ab, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.03.07.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.u, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.sroa.03.07.i.i, i64 8
  %.val.i.i = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ah = trunc i64 %.val.i.i to i32
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %.sroa.0.08.i.i, align 4, !tbaa !104
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4
  %.not.i.i19 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i19, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i: ; preds = %.lr.ph.i.i
  %.not5.i.i = icmp eq ptr %i.ab, %.0.i.i.i.i.i.ph.i
  br i1 %.not5.i.i, label %.loopexit.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i
  %5 = ptrtoaddr ptr %.0.i.i.i.i.i.ph.i to i64
  %6 = ptrtoaddr ptr %i.ab to i64
  %i.al = add i64 %5, -4
  %i.am = sub i64 %i.al, %6                       ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 28
  br i1 %min.iters.check, label %.lr.ph.i9.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i9.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %i.ab, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.ar = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !104
  %wide.load74 = load <4 x i32>, ptr %i.as, align 4, !tbaa !104
  %i.at = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.au = add <4 x i32> %wide.load74, %vec.phi73  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.loopexit.i.loopexit, label %.lr.ph.i9.i.preheader104

.lr.ph.i9.i.preheader104:                         ; preds = %.lr.ph.i9.i.preheader, %middle.block
  %.07.i.i.ph = phi i32 [ 0, %.lr.ph.i9.i.preheader ], [ %i.aw, %middle.block ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i9.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader104, %.lr.ph.i9.i
  %.07.i.i = phi i32 [ %i.ay, %.lr.ph.i9.i ], [ %.07.i.i.ph, %.lr.ph.i9.i.preheader104 ]
  %.sroa.02.06.i.i = phi ptr [ %i.az, %.lr.ph.i9.i ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i9.i.preheader104 ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.02.06.i.i, align 4, !tbaa !104
  %i.ay = add i32 %i.ax, %.07.i.i                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.az, %.0.i.i.i.i.i.ph.i
  br i1 %.not.i10.i, label %.loopexit.i.loopexit, label %.lr.ph.i9.i, !llvm.loop !312

.loopexit.i.loopexit:                             ; preds = %.lr.ph.i9.i, %middle.block
  %.lcssa = phi i32 [ %i.aw, %middle.block ], [ %i.ay, %.lr.ph.i9.i ]
  %i.ba = zext i32 %.lcssa to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i
  %.0.lcssa.i.ph.i = phi i64 [ 0, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPjSA_IjSaIjEEEEZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISC_EEjRKT_EUlSO_E_ET0_SM_SM_SQ_T1_.exit.i ], [ %i.ba, %.loopexit.i.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aa) #24
  br label %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i, %.loopexit.i
  %.0.lcssa.i27.i = phi i64 [ %.0.lcssa.i.ph.i, %.loopexit.i ], [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %i.bd = zext i32 %3 to i64                      ; 2 uses
  %i.be = and i64 %i.y, 4294967295                ; 4 uses
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !49
  %i.bi = shl i64 %i.bh, 16                       ; 3 uses
  %i.bj = add nuw nsw i64 %i.bf, %i.bd
  %i.bk = icmp ugt i64 %i.bj, %i.bi
  br i1 %i.bk, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIjEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %bb.k

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIjEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit
  %.not48 = icmp eq i64 %i.be, 0
  br i1 %.not48, label %.thread, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.k:                                             ; preds = %_ZN8WasmEdge4Host12_GLOBAL__N_119calculateBufferSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEjRKT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd ; 3 uses
  %i.bo = zext i32 %4 to i64                      ; 2 uses
  %i.bp = add nuw nsw i64 %.0.lcssa.i27.i, %i.bo
  %i.bq = icmp ule i64 %i.bp, %i.bi               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo
  %.sroa.0.0.i23 = select i1 %i.bq, ptr %i.br, ptr null ; 2 uses
  %.not4950 = icmp eq i64 %.0.lcssa.i27.i, 0
  %.not49 = or i1 %.not4950, %i.bq
  br i1 %.not49, label %bb.l, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

.thread:                                          ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanIjEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %i.bs = zext i32 %4 to i64                      ; 2 uses
  %i.bt = add nuw nsw i64 %.0.lcssa.i27.i, %i.bs
  %i.bu = icmp samesign ule i64 %i.bt, %i.bi      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bs
  %.sroa.0.0.i2362 = select i1 %i.bu, ptr %i.bv, ptr null
  %.not495063 = icmp eq i64 %.0.lcssa.i27.i, 0
  %.not4964 = or i1 %.not495063, %i.bu
  br i1 %.not4964, label %.thread67, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp eq i64 %i.be, 0
  br i1 %i.bw, label %.thread67, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %4, ptr %i.bn, align 4, !tbaa !104
  br label %.thread67

.thread67:                                        ; preds = %.thread, %bb.m, %bb.l
  %.sroa.0.0.i466571 = phi ptr [ %i.bn, %bb.l ], [ %i.bn, %bb.m ], [ null, %.thread ]
  %.sroa.0.0.i236670 = phi ptr [ %.sroa.0.0.i23, %bb.l ], [ %.sroa.0.0.i23, %bb.m ], [ %.sroa.0.0.i2362, %.thread ]
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !319, !nonnull !86, !align !87 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !197 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !197 ; 2 uses
  %.not28.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not28.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread67, %bb.o
  %.sroa.7.032.i = phi i64 [ %i.dj, %bb.o ], [ %i.be, %.thread67 ] ; 2 uses
  %.sroa.014.031.i = phi ptr [ %i.dl, %bb.o ], [ %i.bz, %.thread67 ] ; 3 uses
  %.sroa.017.030.i = phi ptr [ %i.dd, %bb.o ], [ %.sroa.0.0.i236670, %.thread67 ] ; 8 uses
  %.sroa.020.029.i = phi ptr [ %i.dk, %bb.o ], [ %.sroa.0.0.i466571, %.thread67 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.014.031.i, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !21 ; 8 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjPhET1_T_T0_SC_.exit.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i
  %.sroa.017.030.i75 = ptrtoaddr ptr %.sroa.017.030.i to i64
  %i.cg = load ptr, ptr %.sroa.014.031.i, align 8, !tbaa !23 ; 6 uses
  %i.ch = and i64 %i.cd, 4294967295               ; 8 uses
  %min.iters.check77 = icmp samesign ult i64 %i.ch, 4
  %i.ci = ptrtoaddr ptr %i.cg to i64
  %i.cj = sub i64 %i.ci, %.sroa.017.030.i75
  %diff.check = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check77, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp samesign ult i64 %i.ch, 32
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph79

vector.ph79:                                      ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.cd, 28
  %n.vec80 = and i64 %i.cd, 4294967264            ; 5 uses
  %i.cl = and i64 %i.cd, 31
  %i.cm = getelementptr i8, ptr %.sroa.017.030.i, i64 %n.vec80
  %i.cn = getelementptr i8, ptr %i.cg, i64 %n.vec80
  br label %vector.body81

vector.body81:                                    ; preds = %vector.ph79, %vector.body81
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 3 uses
  %next.gep83 = getelementptr i8, ptr %.sroa.017.030.i, i64 %index82 ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.cg, i64 %index82 ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load85 = load <16 x i8>, ptr %next.gep84, align 1, !tbaa !22
  %wide.load86 = load <16 x i8>, ptr %i.co, align 1, !tbaa !22
  %i.cp = getelementptr i8, ptr %next.gep83, i64 16
  store <16 x i8> %wide.load85, ptr %next.gep83, align 1, !tbaa !22
  store <16 x i8> %wide.load86, ptr %i.cp, align 1, !tbaa !22
  %index.next87 = add nuw i64 %index82, 32        ; 2 uses
  %i.cq = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.cq, label %middle.block88, label %vector.body81, !llvm.loop !313

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.ch, %n.vec80
  br i1 %cmp.n89, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjPhET1_T_T0_SC_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block88
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !198

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec80, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.cd, 4294967292            ; 4 uses
  %i.cr = and i64 %i.cd, 3
  %i.cs = getelementptr i8, ptr %.sroa.017.030.i, i64 %n.vec93
  %i.ct = getelementptr i8, ptr %i.cg, i64 %n.vec93
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %next.gep95 = getelementptr i8, ptr %.sroa.017.030.i, i64 %index94
  %next.gep96 = getelementptr i8, ptr %i.cg, i64 %index94
  %wide.load97 = load <4 x i8>, ptr %next.gep96, align 1, !tbaa !22
  store <4 x i8> %wide.load97, ptr %next.gep95, align 1, !tbaa !22
  %index.next98 = add nuw i64 %index94, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !314

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.ch, %n.vec93
  br i1 %cmp.n99, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjPhET1_T_T0_SC_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader
end_hunk_1
