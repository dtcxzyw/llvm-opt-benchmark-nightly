Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testDebuggerBreakpointManager?download=true
inline.NumInlined: 2052
inline.NumDeleted: 917
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3dap7Session4sendINS_21SetBreakpointsRequestEvEENS_6futureINS_15ResponseOrErrorINT_8ResponseEEEEERKS5_:bb.a
  store ptr %i.ao, ptr %7, align 8, !tbaa !53
  store i64 0, ptr %i.aw, align 8, !tbaa !54
  store i8 0, ptr %i.ao, align 8, !tbaa !56
  invoke void @_ZNK3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE9set_valueEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEEC2EONS_5ErrorE.exit
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !53 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.am
  br i1 %i.az, label %_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.ba = load i64, ptr %i.am, align 8, !tbaa !56
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEED2Ev.exit

_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZNSt6vectorIN3dap10BreakpointESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(56) %6) #25
  %i.bc = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %_ZN3dap5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEED2Ev.exit
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !56
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  br label %_ZN3dap5ErrorD2Ev.exit

_ZN3dap5ErrorD2Ev.exit:                           ; preds = %_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.x

bb.r:                                             ; preds = %bb.b, %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !34  ; 2 uses
  %.not.i15 = icmp eq ptr %i.bi, null
  br i1 %.not.i15, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = invoke noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.u      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #27
  unreachable

.body:                                            ; preds = %bb.t, %bb.s, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.bh, %bb.t ], [ %i.w, %bb.h ], [ %i.bh, %bb.s ]
  call void @_ZZN3dap7Session4sendINS_21SetBreakpointsRequestEvEENS_6futureINS_15ResponseOrErrorINT_8ResponseEEEEERKS5_ENUlPKvPKNS_5ErrorEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.af

bb.v:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3dap5ErrorD2Ev.exit19

bb.w:                                             ; preds = %_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEEC2EONS_5ErrorE.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #25
  %i.bo = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ao
  br i1 %i.bp, label %_ZN3dap5ErrorD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %bb.w
  %i.bq = load i64, ptr %i.ao, align 8, !tbaa !56
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #28
  br label %_ZN3dap5ErrorD2Ev.exit19

_ZN3dap5ErrorD2Ev.exit19:                         ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17, %bb.v
  %.pn8 = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ], [ %i.bn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.af

bb.x:                                             ; preds = %_ZN3dap5ErrorD2Ev.exit, %_ZZN3dap7Session4sendINS_21SetBreakpointsRequestEvEENS_6futureINS_15ResponseOrErrorINT_8ResponseEEEEERKS5_ENUlPKvPKNS_5ErrorEE_D2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !73  ; 3 uses
  %i.bt = load <2 x ptr>, ptr %3, align 16, !tbaa !32
  store <2 x ptr> %i.bt, ptr %0, align 8, !tbaa !32, !alias.scope !267
  %.not.i.i.i.i.i20 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i20, label %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56, !noalias !267
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit, label %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit.thread

_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit.thread: ; preds = %bb.y
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !77, !noalias !267
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !77, !noalias !267
  br label %bb.z

_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit: ; preds = %bb.y
  %i.by = atomicrmw volatile add ptr %i.bu, i32 1 acq_rel, align 4, !noalias !267 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i, label %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit.thread, %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit
  %.pr36 = phi ptr [ %i.bs, %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit.thread ], [ %.pr.pre, %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pr36, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bz, align 8, !tbaa !75
  %i.cd = getelementptr inbounds nuw i8, ptr %.pr36, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !76
  %i.ce = load ptr, ptr %.pr36, align 8, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %.pr36) #25, !inline_history !8
  %i.ch = load ptr, ptr %.pr36, align 8, !tbaa !38
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %.pr36) #25, !inline_history !8
  br label %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i21 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i21, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !77
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i = phi i32 [ %i.cc, %bb.ac ], [ %i.cm, %bb.ad ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.ae, label %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEED2Ev.exit, !prof !78

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr36) #25
  br label %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEED2Ev.exit

_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEED2Ev.exit: ; preds = %bb.x, %_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE10get_futureEv.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.af:                                            ; preds = %_ZN3dap5ErrorD2Ev.exit19, %.body, %bb.r
  %.pn10 = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %.pn8, %_ZN3dap5ErrorD2Ev.exit19 ], [ %.pn, %.body ]
  call void @_ZN3dap7promiseINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3dap6futureINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEE3getEv(ptr dead_on_unwind noalias writable sret(%"struct.dap::ResponseOrError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = load ptr, ptr %1, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #26
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !272
  %i.f = load ptr, ptr %1, align 8, !tbaa !188    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.i = load i8, ptr %i.h, align 8, !tbaa !185, !range !94, !noundef !95
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt18condition_variable4waitIZN3dap6futureINS1_15ResponseOrErrorINS1_22SetBreakpointsResponseEEEE3getEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.noexc
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !188    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load i8, ptr %i.l, align 8, !tbaa !185, !range !94, !noundef !95
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNSt18condition_variable4waitIZN3dap6futureINS1_15ResponseOrErrorINS1_22SetBreakpointsResponseEEEE3getEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, label %.lr.ph.i, !llvm.loop !268

_ZNSt18condition_variable4waitIZN3dap6futureINS1_15ResponseOrErrorINS1_22SetBreakpointsResponseEEEE3getEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit: ; preds = %.noexc, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.o = phi ptr [ %i.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %i.k, %.noexc ] ; 3 uses
  invoke void @_ZNSt6vectorIN3dap10BreakpointESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %.noexc2 unwind label %.loopexit.split-lp

.noexc2:                                          ; preds = %_ZNSt18condition_variable4waitIZN3dap6futureINS1_15ResponseOrErrorINS1_22SetBreakpointsResponseEEEE3getEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !50
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !53   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.u, ptr %i.a, align 8, !tbaa !55
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc2
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.w, ptr %i.p, align 8, !tbaa !53
  %i.x = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.x, ptr %i.r, align 8, !tbaa !56
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %.noexc2
  %i.y = phi ptr [ %i.w, %.noexc.i ], [ %i.r, %.noexc2 ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !56
  store i8 %i.z, ptr %i.y, align 1, !tbaa !56
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN3dap10BreakpointESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(56) %0) #25
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !54
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.af = load i8, ptr %i.d, align 8, !tbaa !272, !range !94, !noundef !95
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %2, align 8, !tbaa !271   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit.split-lp:                               ; preds = %.lr.ph.i, %_ZNSt18condition_variable4waitIZN3dap6futureINS1_15ResponseOrErrorINS1_22SetBreakpointsResponseEEEE3getEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aj = load i8, ptr %i.d, align 8, !tbaa !272, !range !94, !noundef !95
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit4

bb.i:                                             ; preds = %.body
  %i.al = load ptr, ptr %2, align 8, !tbaa !271   ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, null
  br i1 %.not.i.i3, label %_ZNSt11unique_lockISt5mutexED2Ev.exit4, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.al) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit4

_ZNSt11unique_lockISt5mutexED2Ev.exit4:           ; preds = %.body, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap6futureINS_15ResponseOrErrorINS_22SetBreakpointsResponseEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3dap6detail13promise_stateINS0_15ResponseOrErrorINS0_22SetBreakpointsResponseEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !76
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN3dap6detail13promise_stateINS0_15ResponseOrErrorINS0_22SetBreakpointsResponseEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !77
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3dap6detail13promise_stateINS0_15ResponseOrErrorINS0_22SetBreakpointsResponseEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !78

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN3dap6detail13promise_stateINS0_15ResponseOrErrorINS0_22SetBreakpointsResponseEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3dap6detail13promise_stateINS0_15ResponseOrErrorINS0_22SetBreakpointsResponseEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare noundef i64 @_ZNK10cmDebugger27cmDebuggerBreakpointManager18GetBreakpointCountEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap15ResponseOrErrorINS_22SetBreakpointsResponseEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN3dap5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !56
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZN3dap5ErrorD2Ev.exit

_ZN3dap5ErrorD2Ev.exit:                           ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt6vectorIN3dap10BreakpointESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3dap16SourceBreakpointESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3dap16SourceBreakpointEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN3dap16SourceBreakpointEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 160 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !56
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !56
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #28
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i.i

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !56
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #28
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6.i.i.i.i

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6.i.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN3dap16SourceBreakpointEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !56
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #28
  br label %_ZSt8_DestroyIN3dap16SourceBreakpointEEvPT_.exit.i.i

_ZSt8_DestroyIN3dap16SourceBreakpointEEvPT_.exit.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !10

_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3dap16SourceBreakpointEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.ac = phi ptr [ %.pr, %_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3dap16SourceBreakpointESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #28
  br label %_ZNSt12_Vector_baseIN3dap16SourceBreakpointESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN3dap16SourceBreakpointESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3dap16SourceBreakpointES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap21SetBreakpointsRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(370) dereferenceable(370) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3dap6SourceD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN3dap8optionalISt6vectorINS_7integerESaIS2_EEED2Ev.exit, label %bb.b

end_hunk_0
