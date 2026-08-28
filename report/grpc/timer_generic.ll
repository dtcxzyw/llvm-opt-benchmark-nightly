Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/timer_generic?download=true
inline.NumInlined: 458
inline.NumDeleted: 169
begin_hunk_0_@_ZL23run_some_expired_timersN9grpc_core9TimestampEPS0_N4absl12lts_202505126StatusE:bb.a
  %i.af = load ptr, ptr @_ZL8g_shards, align 8, !tbaa !17
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.aj, ptr %i.q, align 8, !tbaa !19
  %i.ak = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 18, ptr nonnull @.str.27)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit: ; preds = %bb.i
  %i.al = load ptr, ptr @_ZL13g_shard_queue, align 8, !tbaa !53
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.ao, ptr %i.p, align 8, !tbaa !19
  %i.ap = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap)
          to label %.critedge40 unwind label %bb.k

.critedge40:                                      ; preds = %bb.j
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.critedge41

bb.k:                                             ; preds = %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit, %bb.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.h, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cs

.critedge41:                                      ; preds = %bb.f, %.critedge40, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit46, %bb.e
  %i.ar = icmp ne i64 %0, 9223372036854775807     ; 2 uses
  %.pre = load ptr, ptr @_ZL13g_shard_queue, align 8, !tbaa !53
  %i.as = load ptr, ptr %.pre, align 8, !tbaa !17 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50 ; 3 uses
  %i.av = icmp slt i64 %i.au, %0
  %i.aw = icmp eq i64 %i.au, %0
  %or.cond316 = and i1 %i.ar, %i.aw
  %or.cond157317 = or i1 %i.av, %or.cond316
  br i1 %or.cond157317, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %.critedge41, %_ZL20note_deadline_changeP11timer_shard.exit
  %i.ax = phi ptr [ %i.ik, %_ZL20note_deadline_changeP11timer_shard.exit ], [ %i.as, %.critedge41 ] ; 8 uses
  %i.ay = load i64, ptr %2, align 8, !tbaa !35    ; 6 uses
  store i64 %i.ay, ptr %12, align 8, !tbaa !35
  %i.az = trunc i64 %i.ay to i1                   ; 3 uses
  br i1 %i.az, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ba = inttoptr i64 %i.ay to ptr
  %i.bb = atomicrmw add ptr %i.ba, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %.critedge, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  invoke void @gpr_mu_lock(ptr noundef nonnull %i.ax)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.bc = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 88 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 104 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.bi = inttoptr i64 %i.ay to ptr
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %.noexc
  %.018.i = phi i64 [ 0, %.noexc ], [ %i.fe, %_ZN4absl12lts_202505126StatusD2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  %i.bj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core17timer_check_traceE, i64 8) monotonic, align 8, !range !22, !noundef !23
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %.critedge43.i.i, !prof !24

bb.n:                                             ; preds = %bb.m
  %i.bl = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZL7pop_oneP11timer_shardN9grpc_core9TimestampEENK3$_0clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 2
  br i1 %i.bm, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit54.thread.i.i, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit54.i.i, !prof !25

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit54.thread.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #21
  br label %bb.t

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit54.i.i: ; preds = %bb.n
  %i.bn = invoke noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZL7pop_oneP11timer_shardN9grpc_core9TimestampEENK3$_0clEvE4site", i32 noundef %i.bl)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit54.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #21
  br i1 %i.bn, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.noexc49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 497) #22
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit

.noexc50:                                         ; preds = %bb.o
  %i.bo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 2)
          to label %bb.p unwind label %bb.v       ; 2 uses

bb.p:                                             ; preds = %.noexc50
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 11, ptr nonnull @.str.26)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i unwind label %bb.v

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i: ; preds = %bb.p
  %i.bp = load ptr, ptr @_ZL8g_shards, align 8, !tbaa !17
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bc, %i.bq
  %i.bs = sdiv exact i64 %i.br, 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.bs, ptr %i.m, align 8, !tbaa !19
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.q unwind label %bb.v       ; 2 uses

bb.q:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 14, ptr nonnull @.str.34)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i.i unwind label %bb.v

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i.i: ; preds = %bb.q
  %i.bu = invoke noundef zeroext i1 @_Z24grpc_timer_heap_is_emptyP15grpc_timer_heap(ptr noundef nonnull %i.bd)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i.i
  %i.bv = select i1 %i.bu, ptr @.str.11, ptr @.str.12
  store ptr %i.bv, ptr %i.o, align 8, !tbaa !51
  %i.bw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %bb.u unwind label %bb.w

bb.t:                                             ; preds = %.noexc49, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit54.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  br label %.critedge43.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.critedge43.i.i

bb.v:                                             ; preds = %bb.q, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i, %bb.p, %.noexc50
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.r, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.by, %bb.w ], [ %i.bx, %bb.v ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bj

.critedge43.i.i:                                  ; preds = %bb.u, %bb.t, %bb.m
  %i.bz = invoke noundef zeroext i1 @_Z24grpc_timer_heap_is_emptyP15grpc_timer_heap(ptr noundef nonnull %i.bd)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit

.noexc51:                                         ; preds = %.critedge43.i.i
  br i1 %i.bz, label %bb.y, label %bb.ar

bb.y:                                             ; preds = %.noexc51
  %.sroa.011.0.copyload.i.i = load i64, ptr %i.be, align 8, !tbaa !19
  %i.ca = icmp slt i64 %0, %.sroa.011.0.copyload.i.i
  br i1 %i.ca, label %_ZL7pop_oneP11timer_shardN9grpc_core9TimestampE.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = invoke noundef double @_ZN9grpc_core17TimeAveragedStats13UpdateAverageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bf)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %bb.z
  %i.cc = fmul double %i.cb, 3.300000e-01         ; 3 uses
  %i.cd = fcmp olt double %i.cc, 1.000000e-02
  %i.ce = fcmp ogt double %i.cc, 1.000000e+00
  %..i.i.i.i = select i1 %i.ce, double 1.000000e+00, double %i.cc
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.be, align 8, !tbaa !19
  %.sroa.010.0.copyload.sroa.speculated.i.i.i = call i64 @llvm.smax.i64(i64 %0, i64 %.sroa.0.0.copyload.i.i.i.i) ; 6 uses
  %i.cf = fmul double %..i.i.i.i, 1.000000e+03
  %i.cg = select i1 %i.cd, double 1.000000e+01, double %i.cf ; 3 uses
  %i.ch = fcmp ult double %i.cg, f0x43E0000000000000
  %.inv.i.i.i.i = fcmp ole double %i.cg, f0xC3E0000000000000
  %spec.select4.i.i.i.i = select i1 %.inv.i.i.i.i, double f0xC3E0000000000000, double %i.cg
  %spec.select.i.i.i.i = fptosi double %spec.select4.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = select i1 %i.ch, i64 %spec.select.i.i.i.i, i64 9223372036854775807 ; 5 uses
  %14 = icmp eq i64 %.sroa.010.0.copyload.sroa.speculated.i.i.i, 9223372036854775807
  %15 = icmp eq i64 %.sroa.0.0.i.i.i.i, 9223372036854775807
  %or.cond.i.i.i.i.i = or i1 %15, %14
  br i1 %or.cond.i.i.i.i.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc52
  %i.ci = icmp eq i64 %.sroa.010.0.copyload.sroa.speculated.i.i.i, -9223372036854775808
  %i.cj = icmp eq i64 %.sroa.0.0.i.i.i.i, -9223372036854775808
  %or.cond9.i.i.i.i.i = or i1 %i.cj, %i.ci
  br i1 %or.cond9.i.i.i.i.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = icmp sgt i64 %.sroa.010.0.copyload.sroa.speculated.i.i.i, 0
  br i1 %i.ck, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cl = sub nuw nsw i64 9223372036854775807, %.sroa.010.0.copyload.sroa.speculated.i.i.i
  %16 = icmp sgt i64 %.sroa.0.0.i.i.i.i, %i.cl
  br i1 %16, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cm = sub nsw i64 -9223372036854775808, %.sroa.010.0.copyload.sroa.speculated.i.i.i
  %17 = icmp slt i64 %.sroa.0.0.i.i.i.i, %i.cm
  br i1 %17, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cn = add nsw i64 %.sroa.010.0.copyload.sroa.speculated.i.i.i, %.sroa.0.0.i.i.i.i
  br label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i

_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %.noexc52
  %.0.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.aa ], [ 9223372036854775807, %.noexc52 ], [ -9223372036854775808, %bb.ad ], [ %i.cn, %bb.ae ], [ 9223372036854775807, %bb.ac ]
  store i64 %.0.i.i.i.i.i, ptr %i.be, align 8, !tbaa !19
  %i.co = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core17timer_check_traceE, i64 8) monotonic, align 8, !range !22, !noundef !23
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.af, label %.critedge37.i.i.i, !prof !24

bb.af:                                            ; preds = %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i
  %i.cq = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZL11refill_heapP11timer_shardN9grpc_core9TimestampEENK3$_0clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 2
  br i1 %i.cr, label %.critedge37.i.i.i, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit42.i.i.i, !prof !25

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit42.i.i.i: ; preds = %bb.af
  %i.cs = invoke noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZL11refill_heapP11timer_shardN9grpc_core9TimestampEENK3$_0clEvE4site", i32 noundef %i.cq)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit42.i.i.i
  br i1 %i.cs, label %bb.ag, label %.critedge37.i.i.i

bb.ag:                                            ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 471) #22
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit

.noexc54:                                         ; preds = %bb.ag
  %i.ct = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 2)
          to label %bb.ah unwind label %bb.ak     ; 2 uses

bb.ah:                                            ; preds = %.noexc54
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 11, ptr nonnull @.str.26)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i.i unwind label %bb.ak

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i.i: ; preds = %bb.ah
  %i.cu = load ptr, ptr @_ZL8g_shards, align 8, !tbaa !17
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.bc, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %i.cx, ptr %i.l, align 8, !tbaa !19
  %i.cy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.ai unwind label %bb.ak     ; 2 uses

bb.ai:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 26, ptr nonnull @.str.39)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit.i.i.i unwind label %bb.ak

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit.i.i.i: ; preds = %bb.ai
  %i.cz = load i64, ptr %i.be, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.cz, ptr %i.k, align 8, !tbaa !19
  %i.da = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %.critedge.i.i.i unwind label %bb.ak

.critedge.i.i.i:                                  ; preds = %bb.aj
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.critedge37.i.i.i

bb.ak:                                            ; preds = %bb.aj, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit.i.i.i, %bb.ai, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i.i, %bb.ah, %.noexc54
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

.critedge37.i.i.i:                                ; preds = %.critedge.i.i.i, %.noexc53, %bb.af, %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i
  %i.dc = load ptr, ptr %i.bh, align 8, !tbaa !81 ; 2 uses
  %.not61.i.i.i = icmp eq ptr %i.dc, %i.bg
  br i1 %.not61.i.i.i, label %_ZL11refill_heapP11timer_shardN9grpc_core9TimestampE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge37.i.i.i, %.noexc57
  %.03562.i.i.i = phi ptr [ %i.de, %.noexc57 ], [ %i.dc, %.critedge37.i.i.i ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.03562.i.i.i, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !48 ; 2 uses
  %i.df = load i64, ptr %.03562.i.i.i, align 8, !tbaa !21 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.be, align 8, !tbaa !19
  %i.dg = icmp slt i64 %i.df, %.sroa.0.0.copyload.i.i.i
  br i1 %i.dg, label %bb.al, label %.noexc57

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.dh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core17timer_check_traceE, i64 8) monotonic, align 8, !range !22, !noundef !23
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.am, label %.critedge40.i.i.i, !prof !24

bb.am:                                            ; preds = %bb.al
  %i.dj = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZL11refill_heapP11timer_shardN9grpc_core9TimestampEENK3$_1clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 2
  br i1 %i.dk, label %.critedge40.i.i.i, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i.i.i, !prof !25

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i.i.i: ; preds = %bb.am
  %i.dl = invoke noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZL11refill_heapP11timer_shardN9grpc_core9TimestampEENK3$_1clEvE4site", i32 noundef %i.dj)
          to label %.noexc55 unwind label %.loopexit

.noexc55:                                         ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i.i.i
  br i1 %i.dl, label %bb.an, label %.critedge40.i.i.i

bb.an:                                            ; preds = %.noexc55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 481) #22
          to label %.noexc56 unwind label %.loopexit

.noexc56:                                         ; preds = %bb.an
  %i.dm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 2)
          to label %bb.ao unwind label %bb.aq     ; 2 uses

bb.ao:                                            ; preds = %.noexc56
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 29, ptr nonnull @.str.40)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit.i.i.i unwind label %bb.aq

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit.i.i.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.df, ptr %i.j, align 8, !tbaa !19
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.ap unwind label %bb.aq     ; 2 uses

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 8, ptr nonnull @.str.41)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i unwind label %bb.aq

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i: ; preds = %bb.ap
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn)
          to label %.critedge39.i.i.i unwind label %bb.aq

.critedge39.i.i.i:                                ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge40.i.i.i

bb.aq:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i, %bb.ap, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit.i.i.i, %bb.ao, %.noexc56
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

.critedge40.i.i.i:                                ; preds = %.critedge39.i.i.i, %.noexc55, %bb.am, %bb.al
  %i.dp = getelementptr inbounds nuw i8, ptr %.03562.i.i.i, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !49 ; 2 uses
  %i.dr = load ptr, ptr %i.dd, align 8, !tbaa !48 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !49
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !48
  %i.du = invoke noundef zeroext i1 @_Z19grpc_timer_heap_addP15grpc_timer_heapP10grpc_timer(ptr noundef nonnull %i.bd, ptr noundef nonnull %.03562.i.i.i)
          to label %.noexc57 unwind label %.loopexit ; 0 uses

.noexc57:                                         ; preds = %.critedge40.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.de, %i.bg
  br i1 %.not.i.i.i, label %_ZL11refill_heapP11timer_shardN9grpc_core9TimestampE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !87

_ZL11refill_heapP11timer_shardN9grpc_core9TimestampE.exit.i.i: ; preds = %.noexc57, %.critedge37.i.i.i
  %i.dv = invoke noundef zeroext i1 @_Z24grpc_timer_heap_is_emptyP15grpc_timer_heap(ptr noundef nonnull %i.bd)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit

.noexc58:                                         ; preds = %_ZL11refill_heapP11timer_shardN9grpc_core9TimestampE.exit.i.i
  br i1 %i.dv, label %_ZL7pop_oneP11timer_shardN9grpc_core9TimestampE.exit.thread.i, label %bb.ar

bb.ar:                                            ; preds = %.noexc58, %.noexc51
  %i.dw = invoke noundef ptr @_Z19grpc_timer_heap_topP15grpc_timer_heap(ptr noundef nonnull %i.bd)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc59:                                         ; preds = %bb.ar
  store ptr %i.dw, ptr %i.n, align 8, !tbaa !15
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !21 ; 3 uses
  %i.dy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core17timer_check_traceE, i64 8) monotonic, align 8, !range !22, !noundef !23
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.as, label %.critedge46.i.i, !prof !24

bb.as:                                            ; preds = %.noexc59
  %i.ea = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZL7pop_oneP11timer_shardN9grpc_core9TimestampEENK3$_1clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 2
  br i1 %i.eb, label %.critedge46.i.i, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit52.i.i, !prof !25

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit52.i.i: ; preds = %bb.as
  %i.ec = invoke noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZL7pop_oneP11timer_shardN9grpc_core9TimestampEENK3$_1clEvE4site", i32 noundef %i.ea)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit

.noexc60:                                         ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit52.i.i
  br i1 %i.ec, label %bb.at, label %.critedge46.i.i

bb.at:                                            ; preds = %.noexc60
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str, i32 noundef 508) #22
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit

.noexc61:                                         ; preds = %bb.at
  %i.ed = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 2)
          to label %bb.au unwind label %bb.ax     ; 2 uses

bb.au:                                            ; preds = %.noexc61
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 30, ptr nonnull @.str.35)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit.i.i unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit.i.i: ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
end_hunk_0
