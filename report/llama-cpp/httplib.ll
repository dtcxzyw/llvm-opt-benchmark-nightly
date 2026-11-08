Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib10ThreadPool8shutdownEv:bb.a
  store i64 %i.z, ptr %i.k, align 8, !tbaa !2010
  store ptr %i.o, ptr %i.u, align 8, !tbaa !580
  store ptr %i.o, ptr %i.o, align 8, !tbaa !581
  store i64 0, ptr %i.y, align 8, !tbaa !2010
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

_ZNSt11unique_lockISt5mutexED2Ev.exit18:          ; preds = %bb.f, %_ZNSt7__cxx114listISt6threadSaIS1_EE5clearEv.exit.i.i
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  %.sroa.035.049 = load ptr, ptr %1, align 8, !tbaa !581 ; 2 uses
  %.not4450 = icmp eq ptr %.sroa.035.049, %1
  br i1 %.not4450, label %._crit_edge53, label %.lr.ph52

._crit_edge53:                                    ; preds = %bb.h, %_ZNSt11unique_lockISt5mutexED2Ev.exit18
  %i.ab = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i19, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit21, label %.invoke

.lr.ph52:                                         ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit18, %bb.h
  %.sroa.035.051 = phi ptr [ %.sroa.035.0, %bb.h ], [ %.sroa.035.049, %_ZNSt11unique_lockISt5mutexED2Ev.exit18 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.035.051, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.ac, align 8, !tbaa !196
  %.not45 = icmp eq i64 %.sroa.0.0.copyload.i22, 0
  br i1 %.not45, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph52
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g, %.lr.ph52
  %.sroa.035.0 = load ptr, ptr %.sroa.035.051, align 8, !tbaa !581 ; 2 uses
  %.not44 = icmp eq ptr %.sroa.035.0, %1
  br i1 %.not44, label %._crit_edge53, label %.lr.ph52

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit21:       ; preds = %._crit_edge53
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !588 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !588 ; 2 uses
  %.not9.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not9.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit27, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc25
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !584 ; 3 uses
  %.pre11.i = load ptr, ptr %i.af, align 8, !tbaa !585 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.pre11.i, %.pre.i
  br i1 %.not.i.i.i23, label %_ZNSt11unique_lockISt5mutexED2Ev.exit27, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.ah, %.pre11.i
  br i1 %.not.i.i.i.i.i24, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i, !llvm.loop !55

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i:      ; preds = %._crit_edge.i, %bb.i
  %.05.i.i.i.i.i = phi ptr [ %i.ah, %bb.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i.i.i, align 8, !tbaa !196
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i
  call void @_ZSt9terminatev() #49
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.i
  store ptr %.pre.i, ptr %i.af, align 8, !tbaa !585
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit27

.lr.ph.i:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit21, %.noexc25
  %.sroa.05.010.i = phi ptr [ %i.ai, %.noexc25 ], [ %i.ae, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit21 ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.05.010.i, align 8, !tbaa !196
  %.not8.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not8.i, label %.noexc25, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.010.i)
          to label %.noexc25 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

.noexc25:                                         ; preds = %bb.k, %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.ag
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZNSt11unique_lockISt5mutexED2Ev.exit27:          ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit21, %._crit_edge.i, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !581   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseISt6threadSaIS1_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit27, %_ZNSt6threadD2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.am, %_ZNSt6threadD2Ev.exit.i.i ], [ %i.ak, %_ZNSt11unique_lockISt5mutexED2Ev.exit27 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !196
  %.not.i.i.i28 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i28, label %_ZNSt6threadD2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  call void @_ZSt9terminatev() #49
  unreachable

_ZNSt6threadD2Ev.exit.i.i:                        ; preds = %.lr.ph.i.i
  %i.am = load ptr, ptr %.09.i.i, align 8, !tbaa !581 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #47
  %.not.i.i29 = icmp eq ptr %i.am, %1
  br i1 %.not.i.i29, label %_ZNSt7__cxx1110_List_baseISt6threadSaIS1_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !56

_ZNSt7__cxx1110_List_baseISt6threadSaIS1_EED2Ev.exit: ; preds = %_ZNSt6threadD2Ev.exit.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %.invoke
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt11unique_lockISt5mutexED2Ev.exit31:          ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt11unique_lockISt5mutexED2Ev.exit31
  %.pn13 = phi { ptr, i32 } [ %i.an, %_ZNSt11unique_lockISt5mutexED2Ev.exit31 ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1110_List_baseISt6threadSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn13
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib10ThreadPool16move_to_finishedENSt6thread2idE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.05.0.in = phi ptr [ %i.a, %bb.a ], [ %.sroa.05.0, %bb.c ]
  %.sroa.05.0 = load ptr, ptr %.sroa.05.0.in, align 8, !tbaa !581 ; 6 uses
  %.not = icmp eq ptr %.sroa.05.0, %i.a
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !196
  %i.c = icmp eq i64 %.sroa.0.0.copyload.i, %1
  br i1 %i.c, label %bb.d, label %bb.b, !llvm.loop !58

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !585  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !583
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.f, align 8, !tbaa !258
  %i.i = load i64, ptr %i.d, align 8, !tbaa !196
  store i64 %i.i, ptr %i.f, align 8, !tbaa !196
  store i64 0, ptr %i.d, align 8, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !585
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !590
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !590
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0) #23
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !196
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit
  tail call void @_ZSt9terminatev() #49
  unreachable

_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.0, i64 noundef 24) #47
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib10ThreadPool6workerEb(ptr noundef nonnull align 8 dereferenceable(240) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.50", align 16 ; 9 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %"class.std::function.50", align 16 ; 13 uses
  %5 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.a, ptr %5, align 8, !tbaa !2014
  store i8 0, ptr %i.b, align 8, !tbaa !2015
  %i.r = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.r) #48
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !2015
  %i.s = load i64, ptr %i.c, align 8, !tbaa !578
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.c, align 8, !tbaa !578
  br i1 %1, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.g, align 8, !tbaa !196
  %i.v = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #23
  %i.w = mul nsw i64 %i.u, 1000000000
  %i.x = add nsw i64 %i.w, %i.v                   ; 3 uses
  %i.y = sdiv i64 %i.x, 1000000000                ; 2 uses
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.y, -1000000000
  %i.z = add i64 %.neg.i.i.i.i.i.i, %i.x
  br label %bb.f

bb.f:                                             ; preds = %.noexc22, %bb.e
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !581 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %"_ZZN7httplib10ThreadPool6workerEbENK3$_0clEv.exit.i.i", label %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit"

"_ZZN7httplib10ThreadPool6workerEbENK3$_0clEv.exit.i.i": ; preds = %bb.f
  %i.ac = load i8, ptr %i.e, align 8, !tbaa !579, !range !197, !noundef !198
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit", label %bb.g

bb.g:                                             ; preds = %"_ZZN7httplib10ThreadPool6workerEbENK3$_0clEv.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %i.y, ptr %3, align 8, !tbaa !271
  store i64 %i.z, ptr %i.h, align 8, !tbaa !272
  %i.ae = load ptr, ptr %5, align 8, !tbaa !2014
  %i.af = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc22:                                         ; preds = %bb.g
  %i.ag = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #23
  %.not.i.i = icmp slt i64 %i.ag, %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.not.i.i, label %bb.f, label %bb.h, !llvm.loop !2011

bb.h:                                             ; preds = %.noexc22
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !581 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.f
  br i1 %i.ai, label %"_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1EEZN7httplib10ThreadPool6workerEbE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit", label %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit"

"_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1EEZN7httplib10ThreadPool6workerEbE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit": ; preds = %bb.h
  %i.aj = load i8, ptr %i.e, align 8, !tbaa !579, !range !197, !noundef !198
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit", label %bb.i

bb.i:                                             ; preds = %"_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1EEZN7httplib10ThreadPool6workerEbE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit"
  %i.al = load i64, ptr %i.c, align 8, !tbaa !578
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.c, align 8, !tbaa !578
  %i.an = tail call i64 @pthread_self() #50
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.05.0.in.i = phi ptr [ %i.i, %bb.i ], [ %.sroa.05.0.i, %bb.k ]
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.0.in.i, align 8, !tbaa !581 ; 6 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, %i.i
  br i1 %.not.i, label %_ZN7httplib10ThreadPool16move_to_finishedENSt6thread2idE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ao, align 8, !tbaa !196
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.an
  br i1 %i.ap, label %bb.l, label %bb.j, !llvm.loop !58

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 16 ; 4 uses
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !585 ; 5 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !583
  %.not.i.i.i23 = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i.i23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.ar, align 8, !tbaa !258
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !196
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !196
  store i64 0, ptr %i.aq, align 8, !tbaa !196
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.j, align 8, !tbaa !585
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i

bb.n:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i: ; preds = %bb.n, %bb.m
  %i.av = load i64, ptr %i.m, align 8, !tbaa !590
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %i.m, align 8, !tbaa !590
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i) #23
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !196
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i
  call void @_ZSt9terminatev() #49
  unreachable

_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.0.i, i64 noundef 24) #47
  br label %_ZN7httplib10ThreadPool16move_to_finishedENSt6thread2idE.exit

bb.p:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit34

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %.lr.ph, %bb.n
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ay = load i8, ptr %i.b, align 8, !tbaa !2015, !range !197, !noundef !198
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.ae, label %_ZNSt11unique_lockISt5mutexED2Ev.exit34

bb.q:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !581 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, %i.f
  br i1 %i.bb, label %"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i.preheader", label %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit"

"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i.preheader": ; preds = %bb.q
  %i.bc = load i8, ptr %i.e, align 8, !tbaa !579, !range !197, !noundef !198
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit", label %.lr.ph

"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i": ; preds = %.noexc25
  %i.be = load i8, ptr %i.e, align 8, !tbaa !579, !range !197, !noundef !198
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit", label %.lr.ph, !llvm.loop !2012

.lr.ph:                                           ; preds = %"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i.preheader", %"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i"
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(9) %5)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !581 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, %i.f
  br i1 %i.bh, label %"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i", label %".noexc25._ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit.loopexit118_crit_edge", !llvm.loop !2012

".noexc25._ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit.loopexit118_crit_edge": ; preds = %.noexc25
  br label %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit", !llvm.loop !2012

"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit": ; preds = %"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i", %bb.f, %"_ZZN7httplib10ThreadPool6workerEbENK3$_0clEv.exit.i.i", %"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i.preheader", %".noexc25._ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit.loopexit118_crit_edge", %bb.h, %"_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1EEZN7httplib10ThreadPool6workerEbE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit", %bb.q
  %i.bi = phi ptr [ %i.bg, %".noexc25._ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit.loopexit118_crit_edge" ], [ %i.ba, %bb.q ], [ %i.ah, %bb.h ], [ %i.ah, %"_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1EEZN7httplib10ThreadPool6workerEbE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit" ], [ %i.aa, %bb.f ], [ %i.ba, %"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i.preheader" ], [ %i.aa, %"_ZZN7httplib10ThreadPool6workerEbENK3$_0clEv.exit.i.i" ], [ %i.bg, %"_ZZN7httplib10ThreadPool6workerEbENK3$_1clEv.exit.i" ] ; 3 uses
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !578
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.c, align 8, !tbaa !578
  %i.bl = load i8, ptr %i.e, align 8, !tbaa !579, !range !197, !noundef !198
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = icmp eq ptr %i.bi, %i.f
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %_ZN7httplib10ThreadPool16move_to_finishedENSt6thread2idE.exit, label %bb.r

bb.r:                                             ; preds = %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.bp = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !189
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !263
  %.not.i.i.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 16, i1 false), !tbaa.struct !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.s, %bb.r
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !264
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %4, align 16, !tbaa !183
  %i.bs = load <2 x ptr>, ptr %i.o, align 16, !tbaa !189
  %i.bt = load ptr, ptr %i.o, align 16, !tbaa !189 ; 2 uses
  store <2 x ptr> %i.bs, ptr %i.n, align 16, !tbaa !189
  store <2 x ptr> %i.bp, ptr %i.o, align 16, !tbaa !189
  %.not.i.i26 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i26, label %_ZNSt8functionIFvvEEaSEOS1_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEaSEOS1_.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #49
  unreachable

_ZNSt8functionIFvvEEaSEOS1_.exit:                 ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !581 ; 4 uses
  %i.by = load i64, ptr %i.q, align 8, !tbaa !589
  %i.bz = add i64 %i.by, -1
  store i64 %i.bz, ptr %i.q, align 8, !tbaa !589
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !263 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i27, label %_ZNSt7__cxx114listISt8functionIFvvEESaIS3_EE9pop_frontEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.cd = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i32 noundef 3)
          to label %_ZNSt7__cxx114listISt8functionIFvvEESaIS3_EE9pop_frontEv.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #49
  unreachable

_ZNSt7__cxx114listISt8functionIFvvEESaIS3_EE9pop_frontEv.exit: ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 48) #47
  br label %_ZN7httplib10ThreadPool16move_to_finishedENSt6thread2idE.exit

_ZN7httplib10ThreadPool16move_to_finishedENSt6thread2idE.exit: ; preds = %bb.j, %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit", %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i, %_ZNSt7__cxx114listISt8functionIFvvEESaIS3_EE9pop_frontEv.exit
  %cond = phi i1 [ false, %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i ], [ true, %_ZNSt7__cxx114listISt8functionIFvvEESaIS3_EE9pop_frontEv.exit ], [ false, %"_ZNSt18condition_variable4waitIZN7httplib10ThreadPool6workerEbE3$_1EEvRSt11unique_lockISt5mutexET_.exit" ], [ false, %bb.j ] ; 2 uses
  %i.cg = load i8, ptr %i.b, align 8, !tbaa !2015, !range !197, !noundef !198
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.x, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.x:                                             ; preds = %_ZN7httplib10ThreadPool16move_to_finishedENSt6thread2idE.exit
  %i.ci = load ptr, ptr %5, align 8, !tbaa !2014  ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i28, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ci) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZN7httplib10ThreadPool16move_to_finishedENSt6thread2idE.exit, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %cond, label %bb.z, label %_ZNKSt8functionIFvvEEclEv.exit

bb.z:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.ck = load ptr, ptr %i.o, align 16, !tbaa !263
  %.not.i.i29 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i29, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt25__throw_bad_function_callv() #48
          to label %.noexc30 unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !274
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !8

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.ab, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.cm = load ptr, ptr %i.o, align 16, !tbaa !263 ; 2 uses
  %.not.i32 = icmp eq ptr %i.cm, null
  br i1 %.not.i32, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %i.cn = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %cond, label %bb.b, label %bb.ai

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cq = load ptr, ptr %5, align 8, !tbaa !2014  ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i33, label %_ZNSt11unique_lockISt5mutexED2Ev.exit34, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cq) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit34

_ZNSt11unique_lockISt5mutexED2Ev.exit34:          ; preds = %bb.af, %bb.ae, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp141, %bb.ae ], [ %lpad.loopexit.split-lp141, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit.split-lp46

.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.aa
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

.loopexit.split-lp46:                             ; preds = %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt11unique_lockISt5mutexED2Ev.exit34
  %.pn20 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt11unique_lockISt5mutexED2Ev.exit34 ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cs = load ptr, ptr %i.o, align 16, !tbaa !263 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i35, label %_ZNSt14_Function_baseD2Ev.exit36, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp46
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit36 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit36:                 ; preds = %.loopexit.split-lp46, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn20

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @OPENSSL_thread_stop()
  ret void
}

declare void @OPENSSL_thread_stop() local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7httplib6detail19calc_actual_timeoutEllllRlS1_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i64 %2, 1000
  %i.b = sdiv i64 %3, 1000
  %i.c = add nsw i64 %i.b, %i.a
  %i.d = sub nsw i64 %0, %1
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.c, i64 %i.d)
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated, i64 0) ; 2 uses
  %i.e = udiv i64 %spec.store.select, 1000
  store i64 %i.e, ptr %4, align 8, !tbaa !196
  %i.f = urem i64 %spec.store.select, 1000
  %i.g = mul nuw nsw i64 %i.f, 1000
  store i64 %i.g, ptr %5, align 8, !tbaa !196
  ret void
}

; Function Attrs: mustprogress memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_ZN7httplib6detail12SocketStreamC2EilllllNSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(112) initializes((0, 105)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 %7) unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !490
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7httplib6detail12SocketStreamE, i64 16), ptr %0, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.b, align 4, !tbaa !597
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.c, align 8, !tbaa !598
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.d, align 8, !tbaa !599
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %4, ptr %i.e, align 8, !tbaa !600
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %5, ptr %i.f, align 8, !tbaa !601
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %6, ptr %i.g, align 8, !tbaa !602
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %7, ptr %i.h, align 8, !tbaa !196
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #51 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !471
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4096 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.l, ptr %i.m, align 8, !tbaa !472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !473
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6detail12SocketStreamD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(105) dereferenceable(112) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !472
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #47
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN7httplib6Server15listen_internalEv:bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !712
  %i.dg = load ptr, ptr %i.am, align 8, !tbaa !263
  %.not.i.i5.i51 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i5.i51, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i50
  invoke void @_ZSt25__throw_bad_function_callv() #48
          to label %.noexc.i52 unwind label %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp

.noexc.i52:                                       ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i50
  %i.dh = load ptr, ptr %i.ao, align 8, !tbaa !713
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ao unwind label %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp, !inline_history !69

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.di = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #23 ; 0 uses
  br label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit56

.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.an, %bb.am
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  %i.dj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #23 ; 0 uses
  br label %.body54

_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit56: ; preds = %bb.ao, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.dk = call noundef i32 @shutdown(i32 noundef %i.bv, i32 noundef 2) #23 ; 0 uses
  %i.dl = invoke i32 @close(i32 noundef %i.bv)
          to label %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit56
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #49
  unreachable

bb.aq:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %i.ak, align 8, !tbaa !263 ; 2 uses
  %.not.i58 = icmp eq ptr %i.dp, null
  br i1 %.not.i58, label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i64, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i64 unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #49
  unreachable

bb.at:                                            ; preds = %bb.al
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp, %bb.at
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.dt, %bb.at ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i64

_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge: ; preds = %bb.t, %_ZNSt14_Function_baseD2Ev.exit47, %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit56, %bb.p, %bb.p, %bb.p, %bb.m
  %i.du = load atomic i32, ptr %i.i seq_cst, align 8
  %.not = icmp eq i32 %i.du, -1
  br i1 %.not, label %_ZN7httplib6detail12close_socketEi.exit57.thread, label %bb.g, !llvm.loop !2114

_ZN7httplib6detail12close_socketEi.exit57.thread: ; preds = %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge, %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.preheader, %_ZN7httplib6detail25is_accept_transient_errorEv.exit, %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit
  %.326 = phi i1 [ true, %_ZN7httplib6detail25is_accept_transient_errorEv.exit ], [ false, %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit ], [ true, %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.preheader ], [ true, %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge ] ; 2 uses
  %i.dv = load ptr, ptr %i.aa, align 8, !tbaa !200
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit unwind label %_ZNSt14_Function_baseD2Ev.exit59.thread

_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7httplib6detail12close_socketEi.exit57.thread
  %i.dy = load ptr, ptr %i.aa, align 8, !tbaa !200
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #23, !inline_history !2115
  %i.eb = xor i1 %.326, true
  %i.ec = zext i1 %i.eb to i8
  store atomic i8 %i.ec, ptr %i.f seq_cst, align 1
  %i.ed = load i8, ptr %i.p, align 8, !tbaa !365, !range !197, !noundef !198
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.au, label %_ZNKSt8functionIFvvEEclEv.exit.i

bb.au:                                            ; preds = %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !263
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt25__throw_bad_function_callv() #48
          to label %.noexc.i62 unwind label %bb.az

.noexc.i62:                                       ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.eg = load ptr, ptr %i.n, align 8, !tbaa !274
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %_ZNKSt8functionIFvvEEclEv.exit.i unwind label %bb.az, !inline_history !8

_ZNKSt8functionIFvvEEclEv.exit.i:                 ; preds = %bb.aw, %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !263 ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i61, label %_ZN7httplib6detail10scope_exitD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt8functionIFvvEEclEv.exit.i
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(33) %6, ptr noundef nonnull align 8 dereferenceable(33) %6, i32 noundef 3)
          to label %_ZN7httplib6detail10scope_exitD2Ev.exit unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #49
  unreachable

bb.az:                                            ; preds = %bb.aw, %bb.av
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #49
  unreachable

_ZN7httplib6detail10scope_exitD2Ev.exit:          ; preds = %_ZNKSt8functionIFvvEEclEv.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ba

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn32 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i63 = icmp eq ptr %i.aa, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit65, label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i64

_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i64: ; preds = %_ZNSt14_Function_baseD2Ev.exit59.thread, %.body54, %bb.aq, %bb.ar, %_ZNSt14_Function_baseD2Ev.exit59
  %.pn3278 = phi { ptr, i32 } [ %.pn32, %_ZNSt14_Function_baseD2Ev.exit59 ], [ %i.do, %bb.ar ], [ %i.do, %bb.aq ], [ %eh.lpad-body55, %.body54 ], [ %lpad.loopexit.split-lp115, %_ZNSt14_Function_baseD2Ev.exit59.thread ]
  %i.en = load ptr, ptr %i.aa, align 8, !tbaa !200
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #23, !inline_history !2115
  br label %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit65

_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit65: ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit59, %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i64
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn3278, %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i64 ], [ %i.bt, %bb.n ], [ %.pn32, %_ZNSt14_Function_baseD2Ev.exit59 ]
  call void @_ZN7httplib6detail10scope_exitD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn32.pn.pn

bb.ba:                                            ; preds = %_ZN7httplib6detail10scope_exitD2Ev.exit, %bb.c
  %.027 = phi i1 [ false, %bb.c ], [ %.326, %_ZN7httplib6detail10scope_exitD2Ev.exit ]
  ret i1 %.027
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6Server6listenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN7httplib6Server13bind_internalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit.thread, label %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit

_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 181
  store atomic i8 1, ptr %i.c seq_cst, align 1
  br label %bb.c

_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit: ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit
  %i.e = tail call noundef zeroext i1 @_ZN7httplib6Server15listen_internalEv(ptr noundef nonnull align 8 dereferenceable(1088) %0)
  br label %bb.c

bb.c:                                             ; preds = %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit.thread, %bb.b, %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit
  %i.f = phi i1 [ false, %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit ], [ %i.e, %bb.b ], [ false, %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit.thread ]
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZNK7httplib6Server10is_runningEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1088) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load atomic i8, ptr %i.a seq_cst, align 4, !range !197, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib6Server16wait_until_readyEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1088) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.b = load atomic i8, ptr %i.a seq_cst, align 4, !range !197, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.e = load atomic i8, ptr %2 seq_cst, align 1, !range !197, !noundef !198
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 0, ptr %1, align 8, !tbaa !271
  store i64 1000000, ptr %i.d, align 8, !tbaa !272
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__errno_location() #50
  %i.j = load i32, ptr %i.i, align 4, !tbaa !273
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.d, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, !llvm.loop !6

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.l = load atomic i8, ptr %i.a seq_cst, align 4, !range !197, !noundef !198
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.critedge, label %bb.b, !llvm.loop !2116

.critedge:                                        ; preds = %bb.b, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6Server4stopEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1088) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = atomicrmw xchg ptr %i.a, i32 -1 seq_cst, align 4 ; 3 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %_ZN7httplib6detail12close_socketEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @shutdown(i32 noundef %i.b, i32 noundef 2) #23 ; 0 uses
  %i.d = invoke i32 @close(i32 noundef %i.b)
          to label %_ZN7httplib6detail12close_socketEi.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #49
  unreachable

_ZN7httplib6detail12close_socketEi.exit:          ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 181
  store atomic i8 0, ptr %i.g seq_cst, align 1
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN7httplib6Server12decommissionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1088) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 181
  store atomic i8 1, ptr %i.a seq_cst, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7httplib6Server18parse_request_lineEPKcRNS_7RequestE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(776) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.145", align 8 ; 11 uses
  %4 = alloca %"class.std::function.138", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::function.138", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::function.145", align 8 ; 8 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #52 ; 2 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %_ZNSt14_Function_baseD2Ev.exit60, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 %i.d       ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -2       ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183
  %.not = icmp eq i8 %i.h, 13
  br i1 %.not, label %bb.c, label %_ZNSt14_Function_baseD2Ev.exit60

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !183
  %.not37 = icmp eq i8 %i.j, 10
  br i1 %.not37, label %_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i, label %_ZNSt14_Function_baseD2Ev.exit60

_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i:          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !196
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !389
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !712
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvPKcS1_EZNK7httplib6Server18parse_request_lineES1_RNS3_7RequestEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SC_", ptr %i.l, align 8, !tbaa !334
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !264
  store ptr @"_ZNSt17_Function_handlerIFvPKcS1_EZNK7httplib6Server18parse_request_lineES1_RNS3_7RequestEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.m, align 8, !tbaa !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  invoke void @_ZN7httplib6detail5splitEPKcS2_cmSt8functionIFvS2_S2_EE(ptr noundef nonnull %1, ptr noundef nonnull readnone %i.g, i8 noundef signext 32, i64 noundef -1, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !263  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.j unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49
  unreachable

bb.g:                                             ; preds = %_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !263  ; 2 uses
  %.not.i4.i = icmp eq ptr %i.s, null
  br i1 %.not.i4.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.i      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #49
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !263  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !196
  %.not38 = icmp eq i64 %i.aa, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %.not38, label %bb.o, label %_ZNSt14_Function_baseD2Ev.exit60

.body:                                            ; preds = %bb.g, %bb.h
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !263 ; 2 uses
  %.not.i41 = icmp eq ptr %i.ab, null
  br i1 %.not.i41, label %_ZNSt14_Function_baseD2Ev.exit42, label %bb.m

bb.m:                                             ; preds = %.body
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit42 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit42:                 ; preds = %.body, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt14_Function_baseD2Ev.exit62

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.af = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN7httplib6Server15builtin_methodsB5cxx11Ev() ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !237 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
