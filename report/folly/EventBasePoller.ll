Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/EventBasePoller?download=true
inline.NumInlined: 1064
inline.NumDeleted: 632
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly6detail15EventBasePoller3getEv:bb.a
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN5folly6detail15EventBasePollerESt14default_deleteIS2_EED2Ev, ptr nonnull @_ZZN5folly6detail15EventBasePoller3getEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail15EventBasePoller3getEvE8instance) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN5folly6detail15EventBasePoller3getEvE8instance, align 8, !tbaa !36
  ret ptr %i.e

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly6detail15EventBasePoller3getEvE8instance) #25
  resume { ptr, i32 } %i.f
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5folly6detail15EventBasePoller3getEvENK3$_0clEv"() unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::unique_ptr.65", align 8 ; 6 uses
  %1 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %2 = alloca %"class.folly::Baton", align 4      ; 7 uses
  %3 = alloca %"class.folly::WaitOptions", align 8 ; 5 uses
  %4 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %5 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = load ptr, ptr @_ZN3fLS37FLAGS_folly_event_base_poller_backendB5cxx11E, align 8, !tbaa !38, !nonnull !40, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %i.e = icmp eq i64 %i.d, 5
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.noexc5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.g = load i32, ptr %i.f, align 1
  %i.h = xor i32 %i.g, 1819242597
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = xor i32 %i.k, 108
  %i.m = or i32 %i.h, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.noexc5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.q = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #35, !noalias !42 ; 38 uses
  %i.r = load i8, ptr @_ZN3fLB48FLAGS_folly_event_base_poller_epoll_rearm_inlineE, align 1, !tbaa !45, !range !47, !noalias !42, !noundef !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 2147483647, ptr %i.s, align 8, !tbaa !26, !noalias !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !29, !noalias !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !noalias !42
  store i64 9223372036854775807, ptr %i.v, align 8, !noalias !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 0, ptr %i.x, align 8, !tbaa !31, !noalias !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 9223372036854775807, ptr %i.y, align 8, !noalias !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i64 -9223372036854775808, ptr %i.z, align 8, !noalias !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i32 0, ptr %i.aa, align 8, !tbaa !48, !noalias !42
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly6detail12_GLOBAL__N_119EventBasePollerImplE, i64 16), ptr %i.q, align 8, !tbaa !32, !noalias !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store i8 %i.r, ptr %i.ab, align 8, !tbaa !50, !noalias !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false), !noalias !42
  %i.ae = tail call i32 @eventfd(i32 noundef 0, i32 noundef 526336) #25, !noalias !42 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store ptr null, ptr %i.af, align 8, !tbaa !91, !noalias !42
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventE, i64 16), ptr %i.ad, align 8, !tbaa !32, !noalias !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store ptr null, ptr %i.ag, align 8, !tbaa !92, !noalias !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !93, !noalias !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 156
  store i8 0, ptr %i.ai, align 4, !tbaa !94, !noalias !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  store ptr null, ptr %i.aj, align 8, !tbaa !95, !noalias !42
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  store i8 0, ptr %i.ak, align 8, !tbaa !96, !noalias !42
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 172
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 200 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(61) %i.al, i8 0, i64 61, i1 false), !noalias !42
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !tbaa !97, !noalias !42
  %i.aq = icmp slt i32 %i.ae, 0
  br i1 %i.aq, label %bb.b, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImplC2Eb.exit.i.i, !prof !16

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !42
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !20, !noalias !42
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i.i.i, align 8, !tbaa !20, !noalias !42
  invoke void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.6, i32 noundef 133, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
          to label %bb.c unwind label %bb.e, !noalias !42

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !42
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.d unwind label %bb.f, !noalias !42

bb.d:                                             ; preds = %bb.c
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.25, i64 noundef 38)
          to label %.critedge.i.i.i unwind label %bb.f, !noalias !42 ; 0 uses

.critedge.i.i.i:                                  ; preds = %bb.d
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #25, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !42
  br label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImplC2Eb.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #25, !noalias !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.au, %bb.f ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !42
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !98, !noalias !42 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EED2Ev.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !99, !noalias !42
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #36, !noalias !42
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EED2Ev.exit.i.i.i

_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EED2Ev.exit.i.i.i: ; preds = %bb.h, %bb.g
  call void @_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #25, !noalias !42
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #25, !noalias !42
  call void @_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ad) #25, !noalias !42
  %.val.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !42 ; 3 uses
  %.not.i.i.i15.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i15.i.i.i, label %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EED2Ev.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %.val14.i.i.i = load ptr, ptr %i.bb, align 8, !noalias !42
  %i.bc = ptrtoint ptr %.val14.i.i.i to i64
  %i.bd = ptrtoint ptr %.val.i.i.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.be) #36, !noalias !42
  br label %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EED2Ev.exit.i.i.i

_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EED2Ev.exit.i.i.i
  call void @_ZN5folly6detail15EventBasePollerD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(288) %i.q) #25, !noalias !42
  br label %.body.i

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImplC2Eb.exit.i.i: ; preds = %.critedge.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly6detail12_GLOBAL__N_120EventBasePollerEpollE, i64 16), ptr %i.q, align 8, !tbaa !32, !noalias !42
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.bg = load i64, ptr @_ZN5fLU6446FLAGS_folly_event_base_poller_epoll_max_eventsE, align 8, !tbaa !30, !noalias !42 ; 6 uses
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !100, !noalias !42
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  store i32 -1, ptr %i.bh, align 8, !tbaa !107, !noalias !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 264 ; 3 uses
  %i.bj = icmp ugt i64 %i.bg, 768614336404564650
  br i1 %i.bj, label %bb.j, label %_ZNSt6vectorI11epoll_eventSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i

bb.j:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImplC2Eb.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #34
          to label %.noexc.i.i unwind label %bb.t, !noalias !42

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

_ZNSt6vectorI11epoll_eventSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i: ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImplC2Eb.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false), !noalias !42
  %.not.i.i.i.i4.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i4.i.i, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI11epoll_eventSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i
  %i.bk = mul nuw nsw i64 %i.bg, 12
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #35
          to label %.noexc5.i.i unwind label %bb.t, !noalias !42 ; 5 uses

.noexc5.i.i:                                      ; preds = %bb.k
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !108, !noalias !42
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !109, !noalias !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bl, i8 0, i64 12, i1 false), !noalias !42
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 12 ; 3 uses
  %i.bp = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc5.i.i
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.bp, 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.l ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(12) %i.bl, i64 12, i1 false), !tbaa.struct !110, !noalias !42
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.br
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.noexc5.i.i, %_ZNSt6vectorI11epoll_eventSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorI11epoll_eventSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i ], [ %i.bo, %.noexc5.i.i ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.bt, align 8, !tbaa !113, !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !42
  store i32 0, ptr %2, align 4, !tbaa !48, !noalias !42
  %i.bu = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35
          to label %.noexc7.i.i unwind label %bb.u, !noalias !42 ; 4 uses

.noexc7.i.i:                                      ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0), !noalias !114
  store i64 0, ptr %i.bu, align 8, !tbaa !117, !noalias !114
  %i.bv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35
          to label %.noexc.i.i.i.i unwind label %bb.o, !noalias !114 ; 4 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc7.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl9startLoopEvEUlvE_EEEEEE, i64 16), ptr %i.bv, align 8, !tbaa !32, !noalias !114
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.q, ptr %i.bw, align 8, !tbaa !119, !noalias !114
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !121, !noalias !114
  store ptr %i.bv, ptr %0, align 8, !tbaa !123, !noalias !114
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull align 8 %0, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.m unwind label %bb.n, !noalias !114

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.bx = load ptr, ptr %0, align 8, !tbaa !123, !noalias !114 ; 3 uses
  %.not.i.i.i.i6.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i6.i.i, label %bb.p, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32, !noalias !114
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !114
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #25, !noalias !114, !call_target !125, !inline_history !556
  br label %bb.p

bb.n:                                             ; preds = %.noexc.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !123, !noalias !114 ; 3 uses
  %.not.i5.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i5.i.i.i.i.i, label %.body.i.i.i.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i.i.i: ; preds = %bb.n
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !32, !noalias !114
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !114
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #25, !noalias !114, !call_target !125, !inline_history !556
  br label %.body.i.i.i.i

bb.o:                                             ; preds = %.noexc7.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.o, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i.i.i, %bb.n
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cg, %bb.o ], [ %i.cb, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i.i.i ], [ %i.cb, %bb.n ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 8) #36, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !42
  br label %.body.i.i

bb.p:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %0), !noalias !114
  %i.ch = load ptr, ptr %i.an, align 8, !tbaa !557, !noalias !42 ; 3 uses
  store ptr %i.bu, ptr %i.an, align 8, !tbaa !557, !noalias !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !tbaa !30, !noalias !42
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #33, !noalias !42
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 8) #36, !noalias !42
  br label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !42
  store i64 2000, ptr %3, align 8, !noalias !42
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !42
  %i.ci = load atomic i32, ptr %2 acquire, align 4, !noalias !42
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %_ZNSt10unique_ptrIN5folly6detail12_GLOBAL__N_120EventBasePollerEpollESt14default_deleteIS3_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !42
  store i64 9223372036854775807, ptr %1, align 8, !noalias !42
  %i.ck = call noundef zeroext i1 @_ZN5folly5BatonILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %3) #25, !noalias !42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !42
  br label %_ZNSt10unique_ptrIN5folly6detail12_GLOBAL__N_120EventBasePollerEpollESt14default_deleteIS3_EED2Ev.exit

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit.i.i

bb.u:                                             ; preds = %.loopexit.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.u, %.body.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cm, %bb.u ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  %7 = load ptr, ptr %i.bi, align 8, !tbaa !108, !noalias !42 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.body.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !109, !noalias !42
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %7 to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.cr) #36, !noalias !42
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit.i.i:  ; preds = %bb.v, %.body.i.i, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.cl, %bb.t ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.v ]
  call void @_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImplD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(288) %i.q) #25, !noalias !42
  br label %.body.i

common.resume:                                    ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.z ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit.i.i, %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EED2Ev.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit.i.i ], [ %.pn.i.i.i, %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EED2Ev.exit.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 288) #36, !noalias !42
  br label %common.resume

_ZNSt10unique_ptrIN5folly6detail12_GLOBAL__N_120EventBasePollerEpollESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.s, %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !42
  store ptr %i.q, ptr @_ZZN5folly6detail15EventBasePoller3getEvE8instance, align 8, !tbaa !558
  ret void

.noexc5:                                          ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cs = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ct = load ptr, ptr @_ZN3fLS37FLAGS_folly_event_base_poller_backendB5cxx11E, align 8, !tbaa !38, !nonnull !40, !align !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !560
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !21
  %i.cx = ptrtoint ptr %i.cu to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.cw to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.cx to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %5, align 16, !noalias !560
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.24, i64 39, i64 13, ptr nonnull %5)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.w:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !560
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #34
          to label %bb.aa unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc5
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0 = phi i1 [ false, %bb.x ], [ true, %bb.w ]  ; 2 uses
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.da = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !20
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.0, label %bb.z, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.0, label %bb.z, label %common.resume

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.cs) #25
  br label %common.resume

bb.aa:                                            ; preds = %bb.x
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly6detail15EventBasePollerESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5folly6detail15EventBasePollerEEclEPS2_.exit

_ZNKSt14default_deleteIN5folly6detail15EventBasePollerEEclEPS2_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #25, !call_target !563, !inline_history !3735
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5folly6detail15EventBasePollerEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #17

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6detail12_GLOBAL__N_120EventBasePollerEpollD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i8 1, ptr %i.a seq_cst, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !3736
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl10notifyEvfdEv(i32 %.val.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl8stopLoopEv.exit unwind label %bb.c

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl8stopLoopEv.exit: ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl8stopLoopEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #36
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit

_ZNSt6vectorI11epoll_eventSaIS0_EED2Ev.exit:      ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl8stopLoopEv.exit, %bb.b
  tail call void @_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImplD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) #25
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6detail12_GLOBAL__N_120EventBasePollerEpollD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i8 1, ptr %i.a seq_cst, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i.i = load i32, ptr %i.b, align 8, !tbaa !3736
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl10notifyEvfdEv(i32 %.val.i.i)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl8stopLoopEv.exit.i unwind label %bb.c

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl8stopLoopEv.exit.i: ; preds = %.noexc.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail12_GLOBAL__N_120EventBasePollerEpollD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl8stopLoopEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #36
  br label %_ZN5folly6detail12_GLOBAL__N_120EventBasePollerEpollD2Ev.exit

bb.c:                                             ; preds = %.noexc.i, %bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #33
  unreachable

end_hunk_0
begin_hunk_1_@_ZN5folly6detail12_GLOBAL__N_120EventBasePollerEpoll8addEventEPNS1_19EventBasePollerImpl5EventE:bb.a
  store i32 -2147483647, ptr %2, align 4, !tbaa !3753
  store i8 1, ptr %i.d, align 4, !tbaa !94
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 1, %bb.d ], [ 3, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load i32, ptr %i.l, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !93
  %i.p = call i32 @epoll_ctl(i32 noundef %i.m, i32 noundef %.0, i32 noundef %i.o, ptr noundef nonnull %2) #25
  %.not.not = icmp eq i32 %i.p, 0
  br i1 %.not.not, label %.critedge18, label %bb.g, !prof !34

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !20
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !20
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.6, i32 noundef 424, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.43, i64 noundef 23)
          to label %.critedge unwind label %bb.j  ; 0 uses

.critedge:                                        ; preds = %bb.h
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.critedge18

.critedge18:                                      ; preds = %bb.f, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.critedge18
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly6detail12_GLOBAL__N_120EventBasePollerEpoll8delEventEPNS1_19EventBasePollerImpl5EventE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %bb.b, label %.critedge, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.6, i32 noundef 428)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.44, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #33
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #33
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i8, ptr %i.g, align 4, !tbaa !94, !range !47, !noundef !40
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %.critedge21

bb.e:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load i32, ptr %i.j, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !93
  %i.n = tail call i32 @epoll_ctl(i32 noundef %i.k, i32 noundef 2, i32 noundef %i.m, ptr noundef null) #25
  %.not.not = icmp eq i32 %i.n, 0
  br i1 %.not.not, label %.critedge21, label %bb.f, !prof !34

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !20
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !20
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.6, i32 noundef 434, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.43, i64 noundef 23)
          to label %.critedge20 unwind label %bb.h ; 0 uses

.critedge20:                                      ; preds = %bb.g
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.critedge21

.critedge21:                                      ; preds = %.critedge20, %bb.e, %.critedge
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5folly6detail12_GLOBAL__N_120EventBasePollerEpoll13waitForEventsENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(288) %0, i64 %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 4 uses
  %3 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = load i64, ptr @_ZN5fLU6437FLAGS_folly_event_base_poller_spin_usE, align 8, !tbaa !30
  %i.b = mul nsw i64 %i.a, 1000
  %i.c = add nsw i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !107
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.i = load i64, ptr %i.f, align 8, !tbaa !100
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call i32 @epoll_wait(i32 noundef %i.g, ptr noundef %i.h, i32 noundef %i.j, i32 noundef 0) ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25
  %i.n = icmp slt i64 %i.m, %i.c
  br i1 %i.n, label %bb.b, label %bb.d, !llvm.loop !3755

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr @_ZN5fLU6438FLAGS_folly_event_base_poller_sleep_usE, align 8, !tbaa !30 ; 3 uses
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = udiv i64 %i.o, 1000000                   ; 2 uses
  %.neg.i.i = mul nsw i64 %i.q, -1000000
  %i.r = add nsw i64 %.neg.i.i, %i.o
  %i.s = mul nsw i64 %i.r, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 %i.q, ptr %5, align 8, !tbaa !3756
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !3758
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.u = call i32 @nanosleep(ptr noundef nonnull %5, ptr noundef nonnull %5)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @__errno_location() #37
  %i.x = load i32, ptr %i.w, align 4, !tbaa !25
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %bb.f, label %.critedge.i, !llvm.loop !3759

.critedge.i:                                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.i
  %i.z = load i32, ptr %i.d, align 8, !tbaa !107
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !100
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = call i32 @epoll_wait(i32 noundef %i.z, ptr noundef %i.aa, i32 noundef %i.ac, i32 noundef -1) ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b, %.critedge
  %.01033 = phi i32 [ %i.ad, %.critedge ], [ %i.k, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %wide.trip.count = zext nneg i32 %.01033 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE9push_backEOS5_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load ptr, ptr %i.ak, align 1, !tbaa !20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %_ZN6google12CheckNotNullIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEET_PKciS9_OS7_.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.an = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.an, ptr %3, align 8, !tbaa !3760
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.6, i32 noundef 460, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #33
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ao

_ZN6google12CheckNotNullIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEET_PKciS9_OS7_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !3762 ; 5 uses
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !3763
  %.not.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6google12CheckNotNullIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEET_PKciS9_OS7_.exit
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !3764
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !3762
  br label %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE9push_backEOS5_.exit

bb.m:                                             ; preds = %_ZN6google12CheckNotNullIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEET_PKciS9_OS7_.exit
  %.val19.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !3765 ; 5 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %.val19.i.i.i to i64       ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.n, label %_ZNKSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #34
  unreachable

_ZNKSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %i.ax = icmp eq ptr %i.ap, %.val19.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.ax, i64 1, i64 %i.aw
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.aw
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #35 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.au ; 2 uses
  store ptr %i.al, ptr %i.be, align 8, !tbaa !3764
  %i.bf = icmp sgt i64 %i.au, 0
  br i1 %i.bf, label %bb.o, label %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %.val19.i.i.i, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i.i

_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.not.i22.i.i.i = icmp eq ptr %.val19.i.i.i, null
  br i1 %.not.i22.i.i.i, label %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i.i
  %6 = load ptr, ptr %i.ah, align 8, !tbaa !3763
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %.val19.i.i.i, i64 noundef %8) #36
  br label %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i.i
  store ptr %i.bd, ptr %i.af, align 8, !tbaa !3765
  store ptr %i.bg, ptr %i.ag, align 8, !tbaa !3762
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !3763
  br label %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.l, %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !3766

.loopexit:                                        ; preds = %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE9push_backEOS5_.exit, %.critedge
  %i.bi = phi i1 [ false, %.critedge ], [ true, %_ZNSt6vectorIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESaIS5_EE9push_backEOS5_.exit ]
  ret i1 %i.bi
}

; Function Attrs: nounwind
declare i32 @eventfd(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #16

declare void @_ZN6google10LogMessage9SendToLogEv(ptr noundef nonnull align 8 dereferenceable(96)) #9

declare void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef byval({ i64, i64 }) align 8) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !557    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !30
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #33
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit:    ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #36
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EESaIS8_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3767   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3768 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.d, %_ZSt8_DestroyISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.0.val.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !3764 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEclEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEclEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.0.val.i.i) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i, i64 noundef 48) #36
  br label %_ZSt8_DestroyISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEclEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3769

_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !3767
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !tbaa !3770
  %i.f = ptrtoint ptr %.val1 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.h) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::LogMessageFatal", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = and i32 %i.d, -3
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %.critedge, label %bb.c, !prof !34

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.6, i32 noundef 168)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.30, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.31, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #33
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret void

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImplD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) initializes((0, 8)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly6detail12_GLOBAL__N_119EventBasePollerImplE, i64 16), ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8 ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4, !tbaa !25
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, label %bb.b, !prof !34

_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull @.str.38)
          to label %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit unwind label %bb.p ; 2 uses

_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.b
  store ptr %i.g, ptr %1, align 8, !tbaa !3760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3736
  %i.j = invoke i32 @close(i32 noundef %i.i)
          to label %bb.h unwind label %bb.p       ; 0 uses

bb.d:                                             ; preds = %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.6, i32 noundef 137, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.p

end_hunk_1
begin_hunk_2_@_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl10notifyEvfdEv:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.c)
          to label %.critedge unwind label %bb.d  ; 0 uses

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %.critedge9

.critedge9:                                       ; preds = %bb.a, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.g
}

declare noundef i64 @_ZN5folly10writeNoIntEiPKvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl9startLoopEvEUlvE_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #21 align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl9startLoopEvEUlvE_EEEEE6_M_runEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !6961 ; 26 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8, !tbaa !6963 ; 4 uses
  %i.h = tail call noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr nonnull @.str.33, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 15)) ; 0 uses
  %i.i = load ptr, ptr %.val, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(248) %.val), !call_target !6944, !inline_history !6964
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 240 ; 6 uses
  br label %.loopexit.i.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i.i:                   ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i
  br label %.loopexit.i.i.i.i.i.i, !llvm.loop !6965

.loopexit.i.i.i.i.i.i:                            ; preds = %.loopexit.loopexit.i.i.i.i.i.i, %bb.a
  %i.m = load atomic ptr, ptr %i.l monotonic, align 8 ; 3 uses
  %switch11.i.i.i.i.i.i.i = icmp ult ptr %i.m, inttoptr (i64 2 to ptr) ; 2 uses
  %spec.select12.i.i.i.i.i.i.i = select i1 %switch11.i.i.i.i.i.i.i, ptr inttoptr (i64 1 to ptr), ptr null
  %i.n = cmpxchg weak ptr %i.l, ptr %i.m, ptr %spec.select12.i.i.i.i.i.i.i acq_rel monotonic, align 8 ; 2 uses
  %i.o = extractvalue { ptr, i1 } %i.n, 1
  br i1 %i.o, label %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i, label %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i

_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i, %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i
  %i.p = phi { ptr, i1 } [ %i.r, %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i ], [ %i.n, %.loopexit.i.i.i.i.i.i ]
  %i.q = extractvalue { ptr, i1 } %i.p, 0         ; 3 uses
  %switch.i.i.i.i.i.i.i = icmp ult ptr %i.q, inttoptr (i64 2 to ptr) ; 2 uses
  %spec.select.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i.i, ptr inttoptr (i64 1 to ptr), ptr null
  %i.r = cmpxchg weak ptr %i.l, ptr %i.q, ptr %spec.select.i.i.i.i.i.i.i acq_rel monotonic, align 8 ; 2 uses
  %i.s = extractvalue { ptr, i1 } %i.r, 1
  br i1 %i.s, label %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i, label %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i, !llvm.loop !6966

_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %.07.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.m, %.loopexit.i.i.i.i.i.i ], [ %i.q, %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %switch.lcssa.i.i.i.i.i.i.i = phi i1 [ %switch11.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %switch.i.i.i.i.i.i.i, %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i ]
  %.not10.i.i.i.i.i.i = icmp eq ptr %.07.lcssa.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i = select i1 %switch.lcssa.i.i.i.i.i.i.i, i1 true, i1 %.not10.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl18handleNotificationEv.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i ], [ %.07.lcssa.i.i.i.i.i.i.i, %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3764 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !3764
  %i.v = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.w = load i8, ptr %i.v, align 8, !tbaa !96, !range !47, !noundef !40
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !92
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3745, !nonnull !40, !align !41 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  br i1 %i.x, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(248) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i.i), !call_target !3772, !inline_history !6967
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 44 ; 4 uses
  %i.ag = load atomic i32, ptr %i.af acquire, align 4
  switch i32 %i.ag, label %bb.d [
    i32 0, label %bb.c
    i32 4, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.ah = cmpxchg ptr %i.af, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  %i.aj = extractvalue { i32, i1 } %i.ah, 0
  %i.ak = icmp eq i32 %i.aj, 4
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store atomic i32 3, ptr %i.af release, align 4
  %i.al = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.af, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #33
  unreachable

bb.f:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(248) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i.i), !call_target !6946, !inline_history !6967
  br label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !6965

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl18handleNotificationEv.exit.i.i.i.i.i: ; preds = %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 4 uses
  %i.ar = load ptr, ptr %.val, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(248) %.val, ptr noundef nonnull %i.aq), !call_target !6946, !inline_history !6968
  %i.au = load atomic i32, ptr %.val1 acquire, align 4
  switch i32 %i.au, label %bb.h [
    i32 0, label %bb.g
    i32 4, label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl18handleNotificationEv.exit.i.i.i.i.i
  %i.av = cmpxchg ptr %.val1, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 1
  %i.ax = extractvalue { i32, i1 } %i.av, 0
  %i.ay = icmp eq i32 %i.ax, 4
  %or.cond.i.i.i.i.i.i.i = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl18handleNotificationEv.exit.i.i.i.i.i
  store atomic i32 3, ptr %.val1 release, align 4
  %i.az = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %.val1, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit.i.i.i.i.i.i unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #33
  unreachable

_ZN5folly5BatonILb1ESt6atomicE4postEv.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl18handleNotificationEv.exit.i.i.i.i.i
  %i.bc = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 104 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 208 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 224 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 2 uses
  br label %.outer.i.i.i.i.i.i

.outer.i.i.i.i.i.i:                               ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail15EventBasePoller5StatsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit.i.i.i.i.i.i, %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit.i.i.i.i.i.i
  %.sroa.014.0.ph.i.i.i.i.i.i = phi i64 [ %i.ic, %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail15EventBasePoller5StatsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit.i.i.i.i.i.i ], [ %i.bc, %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit.i.i.i.i.i.i ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i.i.i.i.i.i
  %i.bt = load atomic i8, ptr %i.bd seq_cst, align 8, !range !47, !noundef !40
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNSt6thread8_InvokerISt5tupleIJZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl9startLoopEvEUlvE_EEEclEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %.val, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(248) %.val, i64 %.sroa.014.0.ph.i.i.i.i.i.i), !call_target !6949, !inline_history !6964
  br i1 %i.by, label %bb.l, label %bb.j, !llvm.loop !6969

bb.l:                                             ; preds = %bb.k
  %i.bz = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25 ; 2 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !6970 ; 17 uses
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !6970 ; 7 uses
  %i.ca = icmp eq ptr %.val.i.i.i.i.i.i.i, %.val15.i.i.i.i.i.i.i
  br i1 %i.ca, label %bb.m, label %.critedge14.i.i.i.i.i.i.i, !prof !16

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.6, i32 noundef 327)
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.34, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i.i unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #33
  unreachable

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #33
  unreachable

.critedge14.i.i.i.i.i.i.i:                        ; preds = %bb.l
  %i.ce = ptrtoint ptr %.val15.i.i.i.i.i.i.i to i64
  %i.cf = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = shl nuw nsw i64 %i.ci, 1
  %i.ck = xor i64 %i.cj, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_T0_T1_"(ptr %.val.i.i.i.i.i.i.i, ptr %.val15.i.i.i.i.i.i.i, i64 noundef %i.ck)
  %i.cl = icmp sgt i64 %i.cg, 128
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 8 ; 3 uses
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %bb.t

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.critedge14.i.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.019.i.add.i.i.i.i.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 8, %.critedge14.i.i.i.i.i.i.i ] ; 4 uses
  %.pn18.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %.critedge14.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.019.i.ptr.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.019.i.idx.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.cm = load ptr, ptr %.sroa.0.019.i.ptr.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.cn = load ptr, ptr %.val.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cm, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.co, align 8, !tbaa !92 ; 3 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !92
  %i.cq = icmp ugt ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.cr, label %bb.q, label %bb.r, !prof !34

bb.q:                                             ; preds = %bb.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val.i.i.i.i.i.i.i, i64 %.sroa.0.019.i.idx.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %i.cn, ptr %i.cs, align 8, !tbaa !3764
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ct = load ptr, ptr %.pn18.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val3.i8.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !92
  %i.cv = icmp ugt ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, %.val3.i8.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ct, %bb.s ]
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn18.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %.sroa.06.09.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i.i.i.i.i.i.i.i, %bb.s ]
  store ptr %i.cw, ptr %.sroa.06.09.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cx = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !92
  %i.cz = icmp ugt ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6971

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s, %bb.r, %bb.q
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i, %bb.r ], [ %.val.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.0.019.i.ptr.i.i.i.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %i.cm, ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764
  %.sroa.0.019.i.add.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.da = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i.i.i.i.i.i.i, 128
  br i1 %i.da, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6972

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %.val15.i.i.i.i.i.i.i
  br i1 %i.dc, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEEZNS5_17handleReadyEventsEvE3$_0EvT_SE_T0_.exit.i.i.i.i.i.i.i", label %.lr.ph.i15.i.i.i.i.i.i.i.i.i.i

.lr.ph.i15.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dm, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.db, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i.i.i.i.i.i" ] ; 5 uses
  %i.dd = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %.val4.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !tbaa !92 ; 2 uses
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.df = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  %.val3.i8.i.i16.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dg, align 8, !tbaa !92
  %i.dh = icmp ugt ptr %.val4.val.i.i.i.i.i.i.i.i.i.i.i.i, %.val3.i8.i.i16.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dh, label %.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i15.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i
  %i.di = phi ptr [ %i.dj, %.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i ], [ %i.df, %.lr.ph.i15.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.010.i.i18.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.06.09.i.i19.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i18.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i.i.i.i.i.i ]
  store ptr %i.di, ptr %.sroa.06.09.i.i19.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764
  %.sroa.0.0.i.i20.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i18.i.i.i.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.dj = load ptr, ptr %.sroa.0.0.i.i20.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %.val3.i.i.i21.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !92
  %i.dl = icmp ugt ptr %.val4.val.i.i.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i21.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dl, label %.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i.i.i.i.i", !llvm.loop !6971

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i15.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.010.i.i18.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i.i.i.i.i.i ]
  store ptr %i.dd, ptr %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %.val15.i.i.i.i.i.i.i
  br i1 %i.dn, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEEZNS5_17handleReadyEventsEvE3$_0EvT_SE_T0_.exit.i.i.i.i.i.i.i", label %.lr.ph.i15.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6973

bb.t:                                             ; preds = %.critedge14.i.i.i.i.i.i.i
  %i.do = icmp eq ptr %scevgep.i.i.i.i.i.i.i.i.i.i, %.val15.i.i.i.i.i.i.i
  br i1 %i.do, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEEZNS5_17handleReadyEventsEvE3$_0EvT_SE_T0_.exit.i.i.i.i.i.i.i", label %.lr.ph.i24.i.i.i.i.i.i.i.i.i.i

.lr.ph.i24.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.t, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i30.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.019.i25.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i32.i.i.i.i.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i30.i.i.i.i.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i.i.i.i.i, %bb.t ] ; 6 uses
  %.pn18.i26.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i25.i.i.i.i.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i30.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %bb.t ] ; 4 uses
  %i.dp = load ptr, ptr %.sroa.0.019.i25.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.dq = load ptr, ptr %.val.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 16
  %.val2.i.i27.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !92 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 16
  %.val3.i.i28.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !tbaa !92
  %i.dt = icmp ugt ptr %.val2.i.i27.i.i.i.i.i.i.i.i.i.i, %.val3.i.i28.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dt, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.lr.ph.i24.i.i.i.i.i.i.i.i.i.i
  %i.du = ptrtoint ptr %.sroa.0.019.i25.i.i.i.i.i.i.i.i.i.i to i64
  %i.dv = sub i64 %i.du, %i.cf                    ; 3 uses
  %i.dw = ashr exact i64 %i.dv, 3                 ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, 1
  br i1 %i.dx, label %bb.v, label %bb.w, !prof !34

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.dz = sub nsw i64 0, %i.dw
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(1) %.val.i.i.i.i.i.i.i, i64 %i.dv, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i30.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.eb = icmp eq i64 %i.dv, 8
  br i1 %i.eb, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i30.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %i.dq, ptr %i.ec, align 8, !tbaa !3764
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i30.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.lr.ph.i24.i.i.i.i.i.i.i.i.i.i
  %i.ed = load ptr, ptr %.pn18.i26.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %.val3.i8.i.i29.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !tbaa !92
  %i.ef = icmp ugt ptr %.val2.i.i27.i.i.i.i.i.i.i.i.i.i, %.val3.i8.i.i29.i.i.i.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl9startLoopEvEUlvE_EEEEE6_M_runEv:bb.a
bb.ab:                                            ; preds = %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i.i.i.i.i, %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i.i.i.i.i
  %i.fb = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i.i.i.i.i ], [ %i.eu, %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !3764
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !6975
  %i.fd = icmp eq ptr %i.fc, %i.aq
  br i1 %i.fd, label %_ZN6google12Check_EQImplIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i.i.i.i.i, label %_ZN6google12Check_EQImplIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i.i.i.i.i, !prof !34

_ZN6google12Check_EQImplIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.af

_ZN6google12Check_EQImplIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i.i.i.i.i: ; preds = %bb.ab
  %i.fe = call fastcc noundef ptr @_ZN6google17MakeCheckOpStringIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull readonly align 8 dereferenceable(8) %i.fb, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.e) ; 2 uses
  store ptr %i.fe, ptr %5, align 8, !tbaa !3760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.not41.i.i.i.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not41.i.i.i.i.i.i.i, label %bb.af, label %bb.al

bb.ac:                                            ; preds = %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.6, i32 noundef 344, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.ad unwind label %bb.ae     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  unreachable

bb.af:                                            ; preds = %_ZN6google12Check_EQImplIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i.i.i.i.i, %_ZN6google12Check_EQImplIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.loopexit.i.i.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i.i.i:                 ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i.i
  br label %.loopexit.i.i.i.i.i.i.i, !llvm.loop !6965

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.loopexit.loopexit.i.i.i.i.i.i.i, %bb.af
  %i.fh = load atomic ptr, ptr %i.l monotonic, align 8 ; 3 uses
  %switch11.i.i.i.i.i.i.i.i = icmp ult ptr %i.fh, inttoptr (i64 2 to ptr) ; 2 uses
  %spec.select12.i.i.i.i.i.i.i.i = select i1 %switch11.i.i.i.i.i.i.i.i, ptr inttoptr (i64 1 to ptr), ptr null
  %i.fi = cmpxchg weak ptr %i.l, ptr %i.fh, ptr %spec.select12.i.i.i.i.i.i.i.i acq_rel monotonic, align 8 ; 2 uses
  %i.fj = extractvalue { ptr, i1 } %i.fi, 1
  br i1 %i.fj, label %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i.i, label %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i.i

_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i.i
  %i.fk = phi { ptr, i1 } [ %i.fm, %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i.i ], [ %i.fi, %.loopexit.i.i.i.i.i.i.i ]
  %i.fl = extractvalue { ptr, i1 } %i.fk, 0       ; 3 uses
  %switch.i.i.i.i.i.i.i.i = icmp ult ptr %i.fl, inttoptr (i64 2 to ptr) ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i.i.i, ptr inttoptr (i64 1 to ptr), ptr null
  %i.fm = cmpxchg weak ptr %i.l, ptr %i.fl, ptr %spec.select.i.i.i.i.i.i.i.i acq_rel monotonic, align 8 ; 2 uses
  %i.fn = extractvalue { ptr, i1 } %i.fm, 1
  br i1 %i.fn, label %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i.i, label %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i.i, !llvm.loop !6966

_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %.07.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fh, %.loopexit.i.i.i.i.i.i.i ], [ %i.fl, %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %switch.lcssa.i.i.i.i.i.i.i.i = phi i1 [ %switch11.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %switch.i.i.i.i.i.i.i.i, %_ZNSt6atomicIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEE21compare_exchange_weakERS5_S5_St12memory_orderS8_.exit.i.i.i.i.i.i.i.i ]
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.07.lcssa.i.i.i.i.i.i.i.i, null
  %.not.i10.i.i.i.i.i.i = select i1 %switch.lcssa.i.i.i.i.i.i.i.i, i1 true, i1 %.not10.i.i.i.i.i.i.i
  br i1 %.not.i10.i.i.i.i.i.i, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl18handleNotificationEv.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i.i, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.fp, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i.i ], [ %.07.lcssa.i.i.i.i.i.i.i.i, %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i.i ] ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !3764 ; 2 uses
  store ptr null, ptr %i.fo, align 8, !tbaa !3764
  %i.fq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 40
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !96, !range !47, !noundef !40
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !92
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !3745, !nonnull !40, !align !41 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !32 ; 2 uses
  br i1 %i.fs, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %.preheader.i.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(248) %i.fw, ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i.i.i), !call_target !3772, !inline_history !6977
  %i.ga = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 44 ; 4 uses
  %i.gb = load atomic i32, ptr %i.ga acquire, align 4
  switch i32 %i.gb, label %bb.ai [
    i32 0, label %bb.ah
    i32 4, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i.i
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gc = cmpxchg ptr %i.ga, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.gd = extractvalue { i32, i1 } %i.gc, 1
  %i.ge = extractvalue { i32, i1 } %i.gc, 0
  %i.gf = icmp eq i32 %i.ge, 4
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.gd, i1 true, i1 %i.gf
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store atomic i32 3, ptr %i.ga release, align 4
  %i.gg = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.ga, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i.i unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #33
  unreachable

bb.ak:                                            ; preds = %.preheader.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(248) %i.fw, ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i.i.i), !call_target !6946, !inline_history !6977
  br label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i.i

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5Event13handleHandoffEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.ai, %bb.ah, %bb.ag
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not8.i.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !6965

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl18handleNotificationEv.exit.i.i.i.i.i.i: ; preds = %_ZN5folly6detail12_GLOBAL__N_15QueueINS1_19EventBasePollerImpl5EventEE3armEv.exit.i.i.i.i.i.i.i
  %i.gl = load ptr, ptr %.val, align 8, !tbaa !32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(248) %.val, ptr noundef nonnull %i.aq), !call_target !6946, !inline_history !6978
  br label %bb.ap

bb.al:                                            ; preds = %_ZN6google12Check_EQImplIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str.6, i32 noundef 345, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.am unwind label %bb.an     ; 0 uses

bb.am:                                            ; preds = %bb.al
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #33
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #33
  unreachable

bb.ao:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16
  %i.gr = load ptr, ptr %i.bg, align 8, !tbaa !98 ; 3 uses
  %i.gs = load ptr, ptr %i.bh, align 8, !tbaa !6974
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 64
  %i.gy = load ptr, ptr %i.gx, align 16, !tbaa !3740
  call void %i.gy(ptr %i.gr, ptr %i.gw, ptr noundef nonnull align 16 dereferenceable(48) %i.gq) #25, !inline_history !6979
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl18handleNotificationEv.exit.i.i.i.i.i.i
  %i.gz = load ptr, ptr %i.bg, align 8, !tbaa !98 ; 3 uses
  %i.ha = load ptr, ptr %i.bh, align 8, !tbaa !6974 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ha, %i.gz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE5clearEv.exit.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN5folly6detail15EventBasePoller6HandleES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN5folly6detail15EventBasePoller6HandleES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  store ptr %i.gz, ptr %i.bh, align 8, !tbaa !6974
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE5clearEv.exit.i.i.i.i.i.i.i

_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN5folly6detail15EventBasePoller6HandleES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.ap
  %i.hb = phi ptr [ %i.ha, %bb.ap ], [ %i.gz, %_ZSt8_DestroyIPPN5folly6detail15EventBasePoller6HandleES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i ]
  %.val18.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !6970
  %i.hc = icmp eq ptr %.sroa.036.0.i.i.i.i.i.i.i, %.val18.i.i.i.i.i.i.i
  br i1 %i.hc, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE5clearEv.exit.i.i.i.i.i.i.i
  %i.hd = load ptr, ptr %.sroa.036.0.i.i.i.i.i.i.i, align 8, !tbaa !3764 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !92
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i.i.i.i.i.i
  %i.hg = phi ptr [ %i.hb, %bb.aq ], [ %.pre44.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %i.hh = phi ptr [ %i.hd, %bb.aq ], [ %i.ep, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.hf, %bb.aq ], [ %.012.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i.i.i.i.i.i.i, i64 8
  %i.hj = load ptr, ptr %i.bi, align 8, !tbaa !99
  %.not.i.i31.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.hj
  br i1 %.not.i.i31.i.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !6975
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %i.hk, ptr %i.bh, align 8, !tbaa !6974
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE9push_backEOS4_.exit.i.i.i.i.i.i.i.backedge

bb.at:                                            ; preds = %bb.ar
  %i.hl = load ptr, ptr %i.bg, align 8, !tbaa !98 ; 4 uses
  %i.hm = ptrtoint ptr %i.hg to i64
  %i.hn = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn                    ; 5 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775800
  br i1 %i.hp, label %bb.au, label %_ZNKSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #34
  unreachable

_ZNKSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.hq = ashr exact i64 %i.ho, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 1152921504606846975)
  %i.hu = select i1 %i.hs, i64 1152921504606846975, i64 %i.ht ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i)
  %i.hv = shl nuw nsw i64 %i.hu, 3
  %i.hw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #35 ; 4 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  store ptr %i.hh, ptr %i.hx, align 8, !tbaa !6975
  %i.hy = icmp sgt i64 %i.ho, 0
  br i1 %i.hy, label %bb.av, label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %_ZNKSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr align 8 %i.hl, i64 %i.ho, i1 false)
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av, %_ZNKSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.not.i17.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i
  %7 = load ptr, ptr %i.bi, align 8, !tbaa !99
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %8, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %9) #36
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw, %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hw, ptr %i.bg, align 8, !tbaa !98
  store ptr %i.hz, ptr %i.bh, align 8, !tbaa !6974
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hu
  store ptr %i.ia, ptr %i.bi, align 8, !tbaa !99
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE9push_backEOS4_.exit.i.i.i.i.i.i.i.backedge

_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE9push_backEOS4_.exit.i.i.i.i.i.i.i.backedge: ; preds = %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, %bb.as
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE9push_backEOS4_.exit.i.i.i.i.i.i.i, !llvm.loop !6980

bb.ax:                                            ; preds = %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE5clearEv.exit.i.i.i.i.i.i.i
  %i.ib = load ptr, ptr %i.be, align 8, !tbaa !3765 ; 2 uses
  %.not.i.i32.i.i.i.i.i.i.i = icmp eq ptr %.sroa.036.0.i.i.i.i.i.i.i, %i.ib
  br i1 %.not.i.i32.i.i.i.i.i.i.i, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  store ptr %i.ib, ptr %i.bf, align 8, !tbaa !3762
  br label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.ax
  %i.ic = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !6981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !6981
  %i.id = load atomic i32, ptr %i.bj acquire, align 8, !noalias !6981 ; 4 uses
  store i32 %i.id, ptr %i.b, align 4, !tbaa !25, !noalias !6981
  %i.ie = and i32 %i.id, -1312
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.ay, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i, !prof !34

bb.ay:                                            ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i
  %i.ig = or disjoint i32 %i.id, 128
  %i.ih = cmpxchg ptr %i.bj, i32 %i.id, i32 %i.ig seq_cst seq_cst, align 4, !noalias !6981 ; 2 uses
  %i.ii = extractvalue { i32, i1 } %i.ih, 1
  br i1 %i.ii, label %bb.az, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !6984

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ay
  %i.ij = extractvalue { i32, i1 } %i.ih, 0
  store i32 %i.ij, ptr %i.b, align 4, !noalias !6981
  br label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i
  %i.ik = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !6981 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !6981
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !6981
  %.val.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !3765
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !3762
  %i.il = ptrtoint ptr %.val5.i.i.i.i.i.i to i64
  %i.im = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.in = sub i64 %i.il, %i.im                    ; 2 uses
  %i.io = lshr exact i64 %i.in, 3
  %i.ip = trunc i64 %i.io to i32                  ; 2 uses
  %i.iq = sub nsw i64 %i.bz, %.sroa.014.0.ph.i.i.i.i.i.i ; 3 uses
  %i.ir = sub nsw i64 %i.ic, %i.bz                ; 3 uses
  %i.is = load i32, ptr %i.bk, align 8, !tbaa !25
  %.sroa.speculated10.i.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.ip, i32 %i.is)
  store i32 %.sroa.speculated10.i.i.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !26
  %i.it = load i32, ptr %i.bl, align 4, !tbaa !25
  %.sroa.speculated.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.it, i32 %i.ip)
  store i32 %.sroa.speculated.i.i.i.i.i.i.i, ptr %i.bl, align 4, !tbaa !29
  %sext.i.i.i.i.i.i = shl i64 %i.in, 29
  %i.iu = ashr i64 %sext.i.i.i.i.i.i, 32
  %i.iv = load <2 x i64>, ptr %i.bm, align 8, !tbaa !30
  %i.iw = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.iu, i64 0
  %i.ix = add <2 x i64> %i.iv, %i.iw
  store <2 x i64> %i.ix, ptr %i.bm, align 8, !tbaa !30
  %i.iy = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.iz = add nsw i64 %i.iy, %i.iq
  store i64 %i.iz, ptr %i.bn, align 8, !tbaa !31
  %i.ja = load i64, ptr %i.bo, align 8, !tbaa !30
  %.sroa.speculated33.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.iq, i64 %i.ja)
  store i64 %.sroa.speculated33.i.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !30
  %i.jb = load i64, ptr %i.bp, align 8, !tbaa !30
  %.sroa.speculated30.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.jb, i64 %i.iq)
  store i64 %.sroa.speculated30.i.i.i.i.i.i.i, ptr %i.bp, align 8, !tbaa !30
  %i.jc = load i64, ptr %i.bq, align 8, !tbaa !31
  %i.jd = add nsw i64 %i.jc, %i.ir
  store i64 %i.jd, ptr %i.bq, align 8, !tbaa !31
  %i.je = load i64, ptr %i.br, align 8, !tbaa !30
  %.sroa.speculated21.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.ir, i64 %i.je)
  store i64 %.sroa.speculated21.i.i.i.i.i.i.i, ptr %i.br, align 8, !tbaa !30
  %i.jf = load i64, ptr %i.bs, align 8, !tbaa !30
  %.sroa.speculated18.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.jf, i64 %i.ir)
  store i64 %.sroa.speculated18.i.i.i.i.i.i.i, ptr %i.bs, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.jg = atomicrmw and ptr %i.bj, i32 -401 seq_cst, align 4 ; 2 uses
  %i.jh = and i32 %i.jg, -401
  store i32 %i.jh, ptr %i.a, align 4, !tbaa !25
  %i.ji = and i32 %i.jg, 15
  %.not.i.i.i.i.i9.i.i.i.i.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i.i.i.i9.i.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail15EventBasePoller5StatsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit.i.i.i.i.i.i, label %bb.ba, !prof !34

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail15EventBasePoller5StatsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit.i.i.i.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #33
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail15EventBasePoller5StatsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.outer.i.i.i.i.i.i, !llvm.loop !6969

_ZNSt6thread8_InvokerISt5tupleIJZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl9startLoopEvEUlvE_EEEclEv.exit: ; preds = %bb.j
  ret void
}

declare noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr, ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #17

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %.fr31 = freeze ptr %1                          ; 3 uses
  %.fr30 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr30 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr31 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr30, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEET_SH_SH_T0_.exit"
  %i.h = icmp eq i64 %i.dm, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !6985

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i29.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge27.lcssa = phi ptr [ %.fr31, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i29.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i29.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3764 ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !3764
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !3764
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val2.i.i.us.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !92
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val3.i.i.us.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !92
  %i.ae = icmp ugt ptr %.val2.i.i.us.i.i.i, %.val3.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3764
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !3764
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !6986

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 16
  %.val16.val.i.i.us.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.06.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.097.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.097.in.i.i.us.i.i.i = add nsw i64 %.06.i.i.us.i.i.i, -1
  %.097.i.i.us.i.i.i = sdiv i64 %.097.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i.us.i.i.i
end_hunk_3
