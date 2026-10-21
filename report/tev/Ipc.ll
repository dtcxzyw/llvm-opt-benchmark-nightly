Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Ipc?download=true
inline.NumInlined: 7176
inline.NumDeleted: 2939
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZNSt3__113packaged_taskIFvvEEclEv:bb.a
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1545 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1549
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr null, ptr %1, align 8, !tbaa !1550
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1550
  %.not = icmp eq ptr %i.h, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.not, label %bb.d, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.c, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  call void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #33
  unreachable

bb.d:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !416 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit unwind label %bb.e, !inline_history !1542

_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit: ; preds = %bb.d
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #32 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %2) #32
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.q

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef %0) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #32 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115future_categoryEv() #32
  invoke void @_ZNSt3__112future_errorC1ENS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 %0, ptr nonnull %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTINSt3__112future_errorE, ptr nonnull @_ZNSt3__112future_errorD1Ev) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.c
}

declare void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::exception_ptr") align 8) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare void @_ZNSt3__112future_errorC1ENS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(32), i32, ptr) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__112future_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115future_categoryEv() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr50 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr50)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.a unwind label %.body.from.44 ; 5 uses

.body.from.44:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr50) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1563
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !149, !noalias !1563
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1563
  store i32 2, ptr %i.g, align 8, !tbaa !151, !noalias !1563
  store ptr %i.f, ptr %i.d, align 8, !tbaa !154, !alias.scope !1564
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !155, !alias.scope !1564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1565
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr50)
          to label %bb.b unwind label %bb.d, !noalias !1565

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !156, !alias.scope !1565
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !159, !noalias !1565
  store ptr %i.j, ptr %i.i, align 8, !tbaa !159, !alias.scope !1565
  store ptr null, ptr %4, align 8, !tbaa !159, !noalias !1565
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !155, !noalias !1565 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !156, !noalias !1565
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !156, !alias.scope !1565
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1565 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1565
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1565
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !1567, !nonnull !190, !align !235 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !120
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit", %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr50)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #37
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.g
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !134 ; 7 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !141
  %i.ai = and i32 %i.ah, 8
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !142 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ak, %.from..lr.ph.i.i.i.i.i ], [ %i.bc, %.noexc2.i.i ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.as = load i8, ptr %i.an, align 8             ; 2 uses
  %i.at = trunc i8 %i.as to i1                    ; 2 uses
  %i.au = load ptr, ptr %i.ao, align 8
  %i.av = select i1 %i.at, ptr %i.au, ptr %i.ap
  %i.aw = load i64, ptr %i.aq, align 8
  %i.ax = lshr i8 %i.as, 1
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = select i1 %i.at, i64 %i.aw, i64 %i.ay
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !149
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr %i.av, i64 %i.az, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.g
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %lpad.loopexit.split-lp63, 0
  call void @__clang_call_terminate(ptr %i.bd) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.be = icmp slt i32 %i.ad, 2
  br i1 %i.be, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !156 ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  store ptr %i.bh, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

.lr.ph.split:                                     ; preds = %.lr.ph, %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit"
  %.020 = phi i64 [ %i.da, %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit" ], [ %2, %.lr.ph ] ; 7 uses
  %.val = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !120 ; 4 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.from..lr.ph.i, label %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit"

.from..lr.ph.i:                                   ; preds = %.lr.ph.split
  %.val17 = load ptr, ptr %i.u, align 8
  %i.bl = load ptr, ptr %.val17, align 8, !tbaa !93 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !122 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !122 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !124 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.bj to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bs = icmp eq i32 %i.bj, 1
  br i1 %i.bs, label %.from.42.epil.preheader, label %.from..lr.ph.i.new

.from..lr.ph.i.new:                               ; preds = %.from..lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.from.42

.from.42:                                         ; preds = %.from.42, %.from..lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.from..lr.ph.i.new ], [ %indvars.iv.next.i.1, %.from.42 ] ; 5 uses
  %niter = phi i64 [ 0, %.from..lr.ph.i.new ], [ %niter.next.1, %.from.42 ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !81
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !81
  %i.bx = mul i64 %i.bw, %.020
  %i.by = getelementptr [4 x i8], ptr %i.bl, i64 %i.bu
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !95
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !103
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.020
  store float %i.ca, ptr %i.cd, align 4, !tbaa !95
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !81
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !81
  %i.ci = mul i64 %i.ch, %.020
  %i.cj = getelementptr [4 x i8], ptr %i.bl, i64 %i.cf
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !95
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv.next.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !103
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.020
  store float %i.cl, ptr %i.co, align 4, !tbaa !95
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa", label %.from.42, !llvm.loop !1559

"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa": ; preds = %.from.42
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit", label %.from.42.epil.preheader

.from.42.epil.preheader:                          ; preds = %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa", %.from..lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.from..lr.ph.i ], [ %indvars.iv.next.i.1, %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa" ] ; 3 uses
  %lcmp.mod64 = trunc i32 %i.bj to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.epil.init
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.epil.init
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !81
  %i.ct = mul i64 %i.cs, %.020
  %i.cu = getelementptr [4 x i8], ptr %i.bl, i64 %i.cq
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !95
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv.i.epil.init
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !103
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.020
  store float %i.cw, ptr %i.cz, align 4, !tbaa !95
  br label %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit"

"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit": ; preds = %.from.42.epil.preheader, %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa", %.lr.ph.split
  %i.da = add nuw i64 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1560

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr51 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr51, align 8
  %i.db = load ptr, ptr %i.bh, align 8
  call void %i.db(ptr nonnull %i.bh)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = atomicrmw add ptr %i.dd, i64 -1 acq_rel, align 8
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.j, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !149
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(24) %i.dc) #32, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dc) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.i, %bb.j
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr50) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.44, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %i.c, %.body.from.44 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  resume { ptr, i32 } %.merged15
}

; Function Attrs: nounwind
declare void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !413
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]  ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !411
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -8
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #28

; Function Attrs: nounwind
declare void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.504", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN3tev17CompoundException12buildMessageENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr %1, i64 %2)
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %4, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = load i64, ptr %4, align 8
  %i.f = and i64 %i.e, -2
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.f) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev17CompoundExceptionE, i64 16), ptr %0, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.idx8 = shl nuw nsw i64 %2, 3                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.g, ptr %3, align 8, !tbaa !1572, !alias.scope !1573
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !437, !alias.scope !1573
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx8) #35
          to label %bb.d unwind label %.body      ; 6 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !412
  store ptr %i.l, ptr %i.i, align 8, !tbaa !411
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx8
  store ptr %i.m, ptr %i.j, align 8, !tbaa !413
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.026.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %1, %bb.d ] ; 2 uses
  %.02325.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.02325.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.026.i.i.i.i.i) #32
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02325.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1571

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.i, align 8, !tbaa !411
  br label %bb.e

.body:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.f:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i8, ptr %4, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = load i64, ptr %4, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.h

bb.h:                                             ; preds = %.body, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.t, %.body ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !412  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
end_hunk_0
