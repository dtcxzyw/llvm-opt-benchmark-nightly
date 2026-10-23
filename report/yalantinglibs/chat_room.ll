Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/chat_room?download=true
inline.NumInlined: 36272
inline.NumDeleted: 14368
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN4asio6detail12posix_thread12start_threadEPNS1_9func_baseE:bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @asio_detail_posix_thread_function(ptr noundef %0) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4asio6detail12posix_thread18auto_func_base_ptrD2Ev.exit unwind label %_ZN4asio6detail12posix_thread18auto_func_base_ptrD2Ev.exit2

_ZN4asio6detail12posix_thread18auto_func_base_ptrD2Ev.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0) #43, !inline_history !3386
  ret ptr null

_ZN4asio6detail12posix_thread18auto_func_base_ptrD2Ev.exit2: ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !205
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0) #43, !inline_history !3386
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail12posix_thread9func_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail12posix_thread4funcINS0_9scheduler15thread_functionEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #54
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail12posix_thread4funcINS0_9scheduler15thread_functionEE3runEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store i32 0, ptr %1, align 8, !tbaa !397
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store ptr %i.c, ptr %i.b, align 8, !tbaa !398
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !3388
  %i.e = call noundef i64 @_ZN4asio6detail9scheduler3runERSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail9scheduler3runERSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::error_code", align 8   ; 5 uses
  %3 = alloca %"struct.asio::detail::scheduler_thread_info", align 8 ; 11 uses
  %4 = alloca %"class.asio::detail::call_stack<asio::detail::thread_context, asio::detail::thread_info_base>::context", align 8 ; 7 uses
  %5 = alloca %"class.asio::detail::conditionally_enabled_mutex::scoped_lock", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58 ; 2 uses
  store i32 0, ptr %1, align 8, !tbaa !222
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !475
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !565, !range !294, !noundef !295
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.h, align 8, !tbaa !622
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #43 ; 0 uses
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !565, !range !294
  %i.k = trunc nuw i8 %.pre.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.l, align 8, !tbaa !622
  br i1 %i.k, label %bb.c, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !623
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !623
  %i.q = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.c, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !568, !range !294, !noundef !295
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !566  ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !568
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i unwind label %bb.g, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %bb.e, %bb.d, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  br i1 %i.g, label %bb.f, label %_ZN4asio6detail9scheduler4stopEv.exit

bb.f:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler4stopEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #43 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.h, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %0, ptr %4, align 8, !tbaa !629
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.af, align 8, !tbaa !630
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ah = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !631
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !632
  store ptr %4, ptr %i.ah, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aj, ptr %5, align 8, !tbaa !634
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !565, !range !294, !noundef !295
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit: ; preds = %bb.i, %bb.j
  %.sink.i = phi i8 [ 1, %bb.j ], [ 0, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit, %bb.m
  %.sink = phi i8 [ 1, %bb.m ], [ %.sink.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit ]
  %.0.ph = phi i64 [ %spec.select, %bb.m ], [ 0, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit ]
  store i8 %.sink, ptr %i.ap, align 8, !tbaa !636
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split, %bb.l
  %.0 = phi i64 [ %spec.select, %bb.l ], [ %.0.ph, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split ] ; 2 uses
  %i.aq = invoke noundef i64 @_ZN4asio6detail9scheduler10do_run_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %.0, i64 1) ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i8, ptr %i.as, align 8, !tbaa !565, !range !294, !noundef !295
  %6 = trunc nuw i8 %i.at to i1
  %.not16 = xor i1 %6, true
  %i.au = load i8, ptr %i.ap, align 8, !range !294
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond = select i1 %.not16, i1 true, i1 %i.av
  br i1 %or.cond, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, label %bb.m, !llvm.loop !3389

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split, !llvm.loop !3389

bb.n:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load i8, ptr %i.ap, align 8, !tbaa !636, !range !294, !noundef !295
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %5, align 8, !tbaa !637, !nonnull !295, !align !426
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !632
  store ptr %i.be, ptr %i.ah, align 8, !tbaa !631
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @_ZN4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %common.resume

bb.p:                                             ; preds = %bb.k
  %i.bf = load i8, ptr %i.ap, align 8, !tbaa !636, !range !294, !noundef !295
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %5, align 8, !tbaa !637, !nonnull !295, !align !426
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !632
  store ptr %i.bk, ptr %i.ah, align 8, !tbaa !631
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !610 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i, label %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.bp = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.bu, %bb.u ] ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !608 ; 2 uses
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !610
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.bn, align 8, !tbaa !603
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr null, ptr %i.bp, align 8, !tbaa !608
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !609
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store i32 0, ptr %2, align 8, !tbaa !397
  store ptr %i.a, ptr %i.bo, align 8, !tbaa !398
  invoke void %i.bt(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
          to label %bb.u unwind label %bb.v, !inline_history !22

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !610 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i14, label %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit, label %bb.r

bb.v:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #53
  unreachable

_ZN4asio6detail21scheduler_thread_infoD2Ev.exit:  ; preds = %bb.u, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13
  call void @_ZN4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(120) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %_ZN4asio6detail9scheduler4stopEv.exit

_ZN4asio6detail9scheduler4stopEv.exit:            ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit
  %.010 = phi i64 [ %.0, %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit ], [ 0, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i ], [ 0, %bb.f ]
  ret i64 %.010
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail9scheduler10do_run_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"struct.asio::detail::scheduler::task_cleanup", align 8 ; 8 uses
  %7 = alloca %"struct.asio::detail::scheduler::work_cleanup", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !622, !range !294, !noundef !295
  %8 = trunc nuw i8 %i.b to i1
  br i1 %8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !610  ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !608  ; 2 uses
  store ptr %i.s, ptr %i.c, align 8, !tbaa !610
  %i.t = icmp eq ptr %i.s, null                   ; 2 uses
  %.not = icmp eq ptr %i.q, %i.e                  ; 2 uses
  br i1 %i.t, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit: ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !603
  br i1 %.not, label %bb.d, label %bb.s

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread: ; preds = %bb.c
  store ptr null, ptr %i.q, align 8, !tbaa !608
  br i1 %.not, label %bb.e, label %bb.t

bb.d:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit
  store i8 0, ptr %i.f, align 8, !tbaa !568
  br label %bb.i

bb.e:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread
  store i8 1, ptr %i.f, align 8, !tbaa !568
  %i.u = load i8, ptr %i.g, align 8, !tbaa !564, !range !294, !noundef !295
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %1, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !565, !range !294, !noundef !295
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !623 ; 2 uses
  %i.ab = or i64 %i.aa, 1
  store i64 %i.ab, ptr %i.i, align 8, !tbaa !623
  %i.ac = icmp ugt i64 %i.aa, 1
  %i.ad = load i8, ptr %i.j, align 8, !tbaa !636, !range !294, !noundef !295
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #43 ; 0 uses
  store i8 0, ptr %i.j, align 8, !tbaa !636
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i, %bb.g
  br i1 %i.ac, label %bb.h, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.h:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i
  %i.ah = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.i:                                             ; preds = %bb.d, %bb.e
  %i.ai = load i8, ptr %i.j, align 8, !tbaa !636, !range !294, !noundef !295
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %1, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i8, ptr %i.al, align 8, !tbaa !565, !range !294, !noundef !295
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i: ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.j, align 8, !tbaa !636
  br label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i, %bb.i, %bb.h, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %0, ptr %6, align 8, !tbaa !641
  store ptr %1, ptr %i.k, align 8, !tbaa !642
  store ptr %2, ptr %i.l, align 8, !tbaa !643
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !566 ; 2 uses
  %i.ar = sext i1 %i.t to i64
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !205
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.au = load i64, ptr %i.o, align 8, !tbaa !647 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = atomicrmw add ptr %i.p, i64 %i.au seq_cst, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !643
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !642
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = phi ptr [ %.pre, %bb.m ], [ %1, %bb.l ] ; 2 uses
  %.pre3.i = phi ptr [ %.pre.i, %bb.m ], [ %2, %bb.l ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 112
  store i64 0, ptr %i.ay, align 8, !tbaa !647
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !565, !range !294, !noundef !295
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !636, !range !294, !noundef !295
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bh = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #43 ; 0 uses
  store i8 1, ptr %i.bd, align 8, !tbaa !636
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bi = load ptr, ptr %6, align 8, !tbaa !641   ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  store i8 1, ptr %i.bj, align 8, !tbaa !568
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 96 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !602 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 232 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !603 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bo, null
  %..i.i = select i1 %.not8.i.i, ptr %i.bm, ptr %i.bo
  store ptr %i.bl, ptr %..i.i, align 8, !tbaa !602
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 104
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !602
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !603
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.q, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 184 ; 3 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !608
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 232 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !603 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.bu, null
  %..i2.i = select i1 %.not.i1.i, ptr %i.br, ptr %i.bu
  store ptr %i.bs, ptr %..i2.i, align 8, !tbaa !602
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !603
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.r:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.ao

bb.s:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !617
  %i.by = zext i32 %i.bx to i64
  br label %bb.ad

bb.t:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !617
  %i.cb = zext i32 %i.ca to i64                   ; 4 uses
  %i.cc = load i8, ptr %i.g, align 8, !tbaa !564, !range !294, !noundef !295
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ad, label %bb.u

end_hunk_0
begin_hunk_1_@_ZN4asio6detail9scheduler10do_run_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code:bb.a
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !623 ; 2 uses
  %i.cj = or i64 %i.ci, 1
  store i64 %i.cj, ptr %i.i, align 8, !tbaa !623
  %i.ck = icmp ugt i64 %i.ci, 1
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = load i8, ptr %i.j, align 8, !tbaa !636, !range !294, !noundef !295
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i: ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.co = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #43 ; 0 uses
  store i8 0, ptr %i.j, align 8, !tbaa !636
  br label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, %bb.w
  %i.cp = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.cq = load i8, ptr %i.f, align 8, !tbaa !568, !range !294, !noundef !295
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !566 ; 3 uses
  %.not.i30 = icmp eq ptr %i.cs, null
  br i1 %.not.i30, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.f, align 8, !tbaa !568
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !205
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs), !inline_history !26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cw = load i8, ptr %i.j, align 8, !tbaa !636, !range !294, !noundef !295
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ab, label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load ptr, ptr %1, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !565, !range !294, !noundef !295
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ac, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dd = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dc) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i: ; preds = %bb.ac, %bb.ab
  store i8 0, ptr %i.j, align 8, !tbaa !636
  br label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.ad:                                            ; preds = %bb.s, %bb.t
  %i.de = phi i64 [ %i.cb, %bb.t ], [ %i.by, %bb.s ] ; 2 uses
  %i.df = load i8, ptr %i.j, align 8, !tbaa !636, !range !294, !noundef !295
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ae, label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load ptr, ptr %1, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !565, !range !294, !noundef !295
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.af, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dl) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31: ; preds = %bb.af, %bb.ae
  store i8 0, ptr %i.j, align 8, !tbaa !636
  br label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31, %bb.ad, %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i, %bb.aa, %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.dn = phi i64 [ %i.de, %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31 ], [ %i.de, %bb.ad ], [ %i.cb, %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i ], [ %i.cb, %bb.aa ], [ %i.cb, %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  store ptr %0, ptr %7, align 8, !tbaa !649
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.do, align 8, !tbaa !650
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.dp, align 8, !tbaa !651
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !609
  invoke void %i.dr(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.dn)
          to label %_ZN4asio6detail19scheduler_operation8completeEPvRKSt10error_codem.exit unwind label %bb.am, !inline_history !27

_ZN4asio6detail19scheduler_operation8completeEPvRKSt10error_codem.exit: ; preds = %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !652
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %_ZN4asio6detail19scheduler_operation8completeEPvRKSt10error_codem.exit
  store i32 0, ptr %i.ds, align 8, !tbaa !652
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !653 ; 3 uses
  store ptr %i.dw, ptr %4, align 8, !tbaa !653
  store ptr null, ptr %i.dv, align 8, !tbaa !653
  store ptr %i.dw, ptr %5, align 8, !tbaa !653
  %.not.i.i33 = icmp eq ptr %i.dw, null           ; 2 uses
  br i1 %.not.i.i33, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #43
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.ah, %bb.ag
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %5) #55
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.aj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %5, align 8, !tbaa !653
  %.not.i2.i = icmp eq ptr %i.dy, null
  br i1 %.not.i2.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.ak, %bb.aj
  br i1 %.not.i.i33, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i: ; preds = %bb.al, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %.body

bb.am:                                            ; preds = %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.dz, %bb.am ], [ %i.dx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i ]
  call void @_ZN4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.ao

bb.an:                                            ; preds = %_ZN4asio6detail19scheduler_operation8completeEPvRKSt10error_codem.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %.loopexit

bb.ao:                                            ; preds = %.body, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.r ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn

bb.ap:                                            ; preds = %bb.b
  %i.ea = load ptr, ptr %1, align 8, !tbaa !637, !nonnull !295, !align !426
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !565, !range !294, !noundef !295
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.lr.ph.preheader.i.i, label %_ZN4asio6detail27conditionally_enabled_event5clearERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.ap
  %i.ee = load i64, ptr %i.i, align 8, !tbaa !623
  %i.ef = and i64 %i.ee, -2                       ; 2 uses
  store i64 %i.ef, ptr %i.i, align 8, !tbaa !623
  %i.eg = add i64 %i.ef, 2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.eh = phi i64 [ %i.el, %.lr.ph.i.i ], [ %i.eg, %.lr.ph.preheader.i.i ]
  store i64 %i.eh, ptr %i.i, align 8, !tbaa !623
  %i.ei = load ptr, ptr %1, align 8, !tbaa !637, !nonnull !295, !align !426
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = tail call i32 @pthread_cond_wait(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull %i.ej) ; 0 uses
  %i.el = load i64, ptr %i.i, align 8, !tbaa !623 ; 3 uses
  %i.em = add i64 %i.el, -2
  store i64 %i.em, ptr %i.i, align 8, !tbaa !623
  %i.en = and i64 %i.el, 1
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %.lr.ph.i.i, label %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit, !llvm.loop !3390

_ZN4asio6detail27conditionally_enabled_event5clearERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %bb.ap
  %i.ep = tail call i32 @pause()                  ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %.lr.ph.i.i, %_ZN4asio6detail27conditionally_enabled_event5clearERNS0_27conditionally_enabled_mutex11scoped_lockE.exit, %.thread
  %i.eq = load i8, ptr %i.a, align 8, !tbaa !622, !range !294, !noundef !295
  %9 = trunc nuw i8 %i.eq to i1
  br i1 %9, label %.loopexit, label %bb.b, !llvm.loop !3391

.loopexit:                                        ; preds = %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit, %bb.a, %bb.an
  %.3 = phi i64 [ 1, %bb.an ], [ 0, %bb.a ], [ 0, %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit ]
  ret i64 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %i.f = phi ptr [ %i.b, %.lr.ph.i ], [ %i.k, %bb.e ] ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !608  ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !610
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !603
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.f, align 8, !tbaa !608
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !609
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store i32 0, ptr %1, align 8, !tbaa !397
  store ptr %i.e, ptr %i.d, align 8, !tbaa !398
  invoke void %i.j(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
          to label %bb.e unwind label %bb.f, !inline_history !22

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !610  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #53
  unreachable

_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit: ; preds = %bb.e, %bb.a
  call void @_ZN4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #43
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.v
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.v, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !260  ; 2 uses
  %.not.1 = icmp eq ptr %i.c, null
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 2 uses
  %.not.2 = icmp eq ptr %i.e, null
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260  ; 2 uses
  %.not.3 = icmp eq ptr %i.g, null
  br i1 %.not.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !260  ; 2 uses
  %.not.4 = icmp eq ptr %i.i, null
  br i1 %.not.4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.i) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260  ; 2 uses
  %.not.5 = icmp eq ptr %i.k, null
  br i1 %.not.5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.k) #43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !260  ; 2 uses
  %.not.6 = icmp eq ptr %i.m, null
  br i1 %.not.6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.m) #43
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !260  ; 2 uses
  %.not.7 = icmp eq ptr %i.o, null
  br i1 %.not.7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.o) #43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !260  ; 2 uses
  %.not.8 = icmp eq ptr %i.q, null
  br i1 %.not.8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.q) #43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !260  ; 2 uses
  %.not.9 = icmp eq ptr %i.s, null
  br i1 %.not.9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.s) #43
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !653
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !643  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !647  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !641
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
end_hunk_1
begin_hunk_2_@_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE12cancel_timerERNS9_14per_timer_dataERNS0_8op_queueINS0_19scheduler_operationEEEm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %3)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  br i1 %i.c, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.a, align 8, !tbaa !565, !range !294, !noundef !295
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !737, !nonnull !295, !align !426
  invoke void @_ZN4asio6detail9scheduler25post_deferred_completionsERNS0_8op_queueINS0_19scheduler_operationEEE(ptr noundef nonnull align 8 dereferenceable(256) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %.thread

.thread:                                          ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit6

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !610    ; 2 uses
  %.not5.i = icmp eq ptr %i.n, null
  br i1 %.not5.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i
  %i.r = phi ptr [ %i.n, %.lr.ph.i ], [ %i.w, %bb.j ] ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !608  ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !610
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.o, align 8, !tbaa !603
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.r, align 8, !tbaa !608
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !609
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store i32 0, ptr %4, align 8, !tbaa !397
  store ptr %i.q, ptr %i.p, align 8, !tbaa !398
  invoke void %i.v(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
          to label %bb.j unwind label %bb.k, !inline_history !22

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.w = load ptr, ptr %5, align 8, !tbaa !610    ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit, label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #53
  unreachable

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  ret i64 %i.f

bb.l:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br i1 %i.c, label %bb.m, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit6

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit6

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit6: ; preds = %.thread, %bb.l, %bb.m
  %i.ac = phi { ptr, i32 } [ %i.m, %.thread ], [ %i.z, %bb.l ], [ %i.z, %bb.m ]
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE12cancel_timerERNS9_14per_timer_dataERNS0_8op_queueINS0_19scheduler_operationEEEm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !750
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %1, %i.d
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.a
  %.not1731 = icmp eq i64 %3, 0
  %.pr.pre = load ptr, ptr %1, align 8, !tbaa !733 ; 2 uses
  br i1 %.not1731, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.h = phi ptr [ %.pr.pre, %.lr.ph ], [ %.pr35, %bb.i ] ; 6 uses
  %.01532 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.i ] ; 2 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %.thread28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !223

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #43
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #43
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 125, ptr %i.m, align 8, !tbaa !222
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !475
  %i.n = load ptr, ptr %1, align 8, !tbaa !733    ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !608  ; 3 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !733
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.f, align 8, !tbaa !734
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.n, align 8, !tbaa !608
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %.pr35 = phi ptr [ %i.o, %bb.h ], [ null, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit ] ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !608
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !603  ; 2 uses
  %.not.i21 = icmp eq ptr %i.q, null
  %..i = select i1 %.not.i21, ptr %2, ptr %i.q
  store ptr %i.h, ptr %..i, align 8, !tbaa !602
  store ptr %i.h, ptr %i.g, align 8, !tbaa !603
  %i.r = add nuw i64 %.01532, 1                   ; 2 uses
  %.not17 = icmp eq i64 %i.r, %3
  br i1 %.not17, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.pr = phi ptr [ %.pr.pre, %.preheader ], [ %.pr35, %bb.i ]
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %.thread28, label %bb.j

.thread28:                                        ; preds = %bb.b, %._crit_edge
  %.01530 = phi i64 [ %3, %._crit_edge ], [ %.01532, %bb.b ]
  tail call void @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE12remove_timerERNS9_14per_timer_dataE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge, %.thread28
  %.2 = phi i64 [ %.01530, %.thread28 ], [ %3, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler25post_deferred_completionsERNS0_8op_queueINS0_19scheduler_operationEEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !610    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !564, !range !294, !noundef !295
  %2 = trunc nuw i8 %i.d to i1
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %.08.i = load ptr, ptr %i.e, align 8            ; 2 uses
  %.not9.i = icmp ne ptr %.08.i, null
  %or.cond.not = select i1 %2, i1 %.not9.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.010.i = phi ptr [ %.0.i, %bb.c ], [ %.08.i, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.010.i, align 8, !tbaa !629
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.0.i = load ptr, ptr %i.h, align 8, !tbaa !631 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.thread, label %.lr.ph.i, !llvm.loop !31

_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit: ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !630  ; 3 uses
  %.not.not = icmp eq ptr %i.j, null
  br i1 %.not.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !603  ; 2 uses
  %.not8.i = icmp eq ptr %i.m, null
  %..i = select i1 %.not8.i, ptr %i.k, ptr %i.m
  store ptr %i.a, ptr %..i, align 8, !tbaa !602
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !602
  store ptr %i.o, ptr %i.l, align 8, !tbaa !603
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

.thread:                                          ; preds = %bb.c, %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !565, !range !294, !noundef !295
  %i.r = trunc nuw i8 %i.q to i1                  ; 4 uses
  br i1 %i.r, label %bb.e, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

bb.e:                                             ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #43 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !602
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit: ; preds = %.thread, %bb.e
  %i.u = phi ptr [ %i.a, %.thread ], [ %.pre, %bb.e ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.u, null
  br i1 %.not.i10, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !603  ; 2 uses
  %.not8.i11 = icmp eq ptr %i.x, null
  %..i12 = select i1 %.not8.i11, ptr %i.v, ptr %i.x
  store ptr %i.u, ptr %..i12, align 8, !tbaa !602
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !602
  store ptr %i.z, ptr %i.w, align 8, !tbaa !603
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  %i.aa = load i8, ptr %i.p, align 8, !tbaa !565, !range !294, !noundef !295
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !623 ; 2 uses
  %i.af = or i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !623
  %i.ag = icmp ugt i64 %i.ae, 1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.r, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, %bb.h
  %i.aj = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.ac) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.i:                                             ; preds = %bb.g, %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !568, !range !294, !noundef !295
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.noexc, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !566 ; 3 uses
  %.not.i14 = icmp eq ptr %i.ao, null
  br i1 %.not.i14, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ak, align 8, !tbaa !568
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !205
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc unwind label %bb.n, !inline_history !26

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.i
  br i1 %i.r, label %bb.l, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.l:                                             ; preds = %.noexc
  %i.as = load i8, ptr %i.p, align 8, !tbaa !565, !range !294, !noundef !295
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.m, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit15

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit15

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit15: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %i.aw

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %.noexc, %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %bb.m, %bb.l, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #43
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !222
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !475
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitIZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENS3_8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_NS_15any_io_executorEEEvRNS9_19implementation_typeERSP_RKT0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::detail::wait_handler<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/io_context_pool.hpp:142:20), asio::any_io_executor>::ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %2, ptr %4, align 8, !tbaa !753
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !631  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail12wait_handlerIZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_NS_15any_io_executorEE3ptr8allocateERSI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !630
  br label %_ZN4asio6detail12wait_handlerIZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_NS_15any_io_executorEE3ptr8allocateERSI_.exit

_ZN4asio6detail12wait_handlerIZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_NS_15any_io_executorEE3ptr8allocateERSI_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 144, i64 noundef 16) ; 14 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !754
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !608
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN4asio6detail12wait_handlerIZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_NS_15any_io_executorEE11do_completeEPvPNS0_19scheduler_operationERKSt10error_codem, ptr %i.i, align 8, !tbaa !609
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !617
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !397
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store ptr %i.m, ptr %i.l, align 8, !tbaa !398
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !660
  store ptr %i.q, ptr %i.o, align 8, !tbaa !660
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvvEZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_, ptr %0, align 8, !tbaa !580
  br label %_ZNSt14_Function_base13_Base_managerIZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !260
  br label %_ZNSt14_Function_base13_Base_managerIZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !897
  store i64 %i.a, ptr %0, align 8, !tbaa !897
  br label %_ZNSt14_Function_base13_Base_managerIZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail9scheduler4pollERSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::error_code", align 8   ; 5 uses
  %3 = alloca %"struct.asio::detail::scheduler_thread_info", align 8 ; 11 uses
  %4 = alloca %"class.asio::detail::call_stack<asio::detail::thread_context, asio::detail::thread_info_base>::context", align 8 ; 9 uses
  %5 = alloca %"class.asio::detail::conditionally_enabled_mutex::scoped_lock", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58 ; 2 uses
  store i32 0, ptr %1, align 8, !tbaa !222
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %.sroa.423.0..sroa_idx, align 8, !tbaa !475
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !565, !range !294, !noundef !295
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.h, align 8, !tbaa !622
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #43 ; 0 uses
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !565, !range !294
  %i.k = trunc nuw i8 %.pre.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.l, align 8, !tbaa !622
  br i1 %i.k, label %bb.c, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !623
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !623
  %i.q = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.c, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !568, !range !294, !noundef !295
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !566  ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !568
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i unwind label %bb.g, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %bb.e, %bb.d, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  br i1 %i.g, label %bb.f, label %_ZN4asio6detail9scheduler4stopEv.exit

bb.f:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler4stopEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #43 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.h, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %0, ptr %4, align 8, !tbaa !629
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.af, align 8, !tbaa !630
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ah = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !631
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !632
  store ptr %4, ptr %i.ah, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aj, ptr %5, align 8, !tbaa !634
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !565, !range !294, !noundef !295
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit: ; preds = %bb.i, %bb.j
  %.sink.i = phi i8 [ 1, %bb.j ], [ 0, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i8 %.sink.i, ptr %i.ap, align 8, !tbaa !636
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !564, !range !294, !noundef !295
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.preheader

bb.k:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  %i.at = load ptr, ptr %4, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.pn.i = phi ptr [ %4, %bb.k ], [ %.0.i, %bb.m ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !632 ; 4 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %.0.i, align 8, !tbaa !629
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %_ZNK4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7context11next_by_keyEv.exit, label %bb.l, !llvm.loop !3908

_ZNK4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7context11next_by_keyEv.exit: ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !630 ; 3 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.preheader, label %bb.n

bb.n:                                             ; preds = %_ZNK4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7context11next_by_keyEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !602 ; 2 uses
  %.not.i20 = icmp eq ptr %i.az, null
  br i1 %.not.i20, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !603 ; 2 uses
  %.not8.i = icmp eq ptr %i.bc, null
  %..i = select i1 %.not8.i, ptr %i.ba, ptr %i.bc
  store ptr %i.az, ptr %..i, align 8, !tbaa !602
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !602
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !603
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.preheader

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.preheader: ; preds = %bb.l, %bb.o, %bb.n, %_ZNK4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7context11next_by_keyEv.exit, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit: ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.backedge, %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.preheader
  %.0 = phi i64 [ 0, %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.preheader ], [ %spec.select, %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.backedge ] ; 2 uses
  %i.bf = invoke noundef i64 @_ZN4asio6detail9scheduler11do_poll_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit
  %.not18 = icmp eq i64 %i.bf, 0
  br i1 %.not18, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %.0, i64 1)
  %i.bg = load ptr, ptr %5, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !565, !range !294, !noundef !295
  %6 = trunc nuw i8 %i.bi to i1
  %.not26 = xor i1 %6, true
  %i.bj = load i8, ptr %i.ap, align 8, !range !294
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond = select i1 %.not26, i1 true, i1 %i.bk
  br i1 %or.cond, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.backedge, label %bb.r

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.backedge: ; preds = %bb.q, %bb.r
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, !llvm.loop !3909

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #43 ; 0 uses
  store i8 1, ptr %i.ap, align 8, !tbaa !636
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit.backedge

bb.s:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load i8, ptr %i.ap, align 8, !tbaa !636, !range !294, !noundef !295
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.t, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %5, align 8, !tbaa !637, !nonnull !295, !align !426
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.br) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.bt = load ptr, ptr %i.ag, align 8, !tbaa !632
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !631
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @_ZN4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %common.resume

bb.u:                                             ; preds = %bb.p
  %i.bu = load i8, ptr %i.ap, align 8, !tbaa !636, !range !294, !noundef !295
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.v, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit21

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr %5, align 8, !tbaa !637, !nonnull !295, !align !426
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bx) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit21

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit21: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !632
  store ptr %i.bz, ptr %i.ah, align 8, !tbaa !631
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !610 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i.i, label %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit21
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i.i
  %i.ce = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %i.cj, %bb.z ] ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !608 ; 2 uses
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !610
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.cc, align 8, !tbaa !603
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr null, ptr %i.ce, align 8, !tbaa !608
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !609
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store i32 0, ptr %2, align 8, !tbaa !397
  store ptr %i.a, ptr %i.cd, align 8, !tbaa !398
  invoke void %i.ci(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
          to label %bb.z unwind label %bb.aa, !inline_history !22

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !610 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i22, label %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit, label %bb.w

bb.aa:                                            ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #53
  unreachable

_ZN4asio6detail21scheduler_thread_infoD2Ev.exit:  ; preds = %bb.z, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit21
  call void @_ZN4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(120) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %_ZN4asio6detail9scheduler4stopEv.exit

_ZN4asio6detail9scheduler4stopEv.exit:            ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit
  %.014 = phi i64 [ %.0, %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit ], [ 0, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i ], [ 0, %bb.f ]
  ret i64 %.014
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail9scheduler11do_poll_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"struct.asio::detail::scheduler::task_cleanup", align 8 ; 8 uses
  %7 = alloca %"struct.asio::detail::scheduler::work_cleanup", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i8, ptr %i.a, align 8, !tbaa !622, !range !294, !noundef !295
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !610  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !608  ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !610
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.j, align 8, !tbaa !603
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit: ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !608
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !636, !range !294, !noundef !295
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

bb.e:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i8, ptr %i.o, align 8, !tbaa !565, !range !294, !noundef !295
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i: ; preds = %bb.f, %bb.e
  store i8 0, ptr %i.k, align 8, !tbaa !636
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit: ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit, %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %0, ptr %6, align 8, !tbaa !641
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %1, ptr %i.t, align 8, !tbaa !642
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %2, ptr %i.u, align 8, !tbaa !643
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !566  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !205
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !647 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = atomicrmw add ptr %i.ad, i64 %i.ab seq_cst, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !643
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !642
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %.pre, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %.pre3.i = phi ptr [ %.pre.i, %bb.h ], [ %2, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 112
  store i64 0, ptr %i.ag, align 8, !tbaa !647
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !565, !range !294, !noundef !295
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN7cinatra16coro_http_server6listenEv:bb.a
  %i.vt = phi i64 [ %i.vs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i304 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i309 ]
  %.not.i.i.i306 = icmp ugt i64 %i.vn, %i.vt
  br i1 %.not.i.i.i306, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i305
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.vu, ptr noundef nonnull align 1 dereferenceable(12) @.str.963, i64 12, i1 false)
  br label %bb.gl

bb.gk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i305
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.vj, i64 noundef %i.vl, i64 noundef 0, ptr noundef nonnull @.str.963, i64 noundef 12)
          to label %bb.gl unwind label %bb.gv

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  store i64 %i.vn, ptr %i.vk, align 8, !tbaa !231
  %i.vv = load ptr, ptr %i.vj, align 8, !tbaa !230
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vn
  store i8 0, ptr %i.vw, align 1, !tbaa !221
  %i.vx = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsItEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr noundef nonnull align 2 dereferenceable(2) %i.bw)
          to label %bb.gm unwind label %bb.gv     ; 4 uses

bb.gm:                                            ; preds = %bb.gl
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 48 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 56 ; 2 uses
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !231 ; 5 uses
  %i.wb = icmp sgt i64 %i.wa, 9223372036854775794
  br i1 %i.wb, label %.invoke422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i312

.invoke422:                                       ; preds = %bb.gm, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.915) #55
          to label %.cont423 unwind label %bb.gv

.cont423:                                         ; preds = %.invoke422
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i312: ; preds = %bb.gm
  %i.wc = add nsw i64 %i.wa, 13                   ; 3 uses
  %i.wd = load ptr, ptr %i.vy, align 8, !tbaa !230 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 64 ; 2 uses
  %i.wf = icmp eq ptr %i.wd, %i.we
  br i1 %i.wf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i318: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i312
  %i.wg = icmp ult i64 %i.wa, 16
  call void @llvm.assume(i1 %i.wg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i313: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i312
  %i.wh = load i64, ptr %i.we, align 8, !tbaa !221
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i314: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i318
  %i.wi = phi i64 [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i313 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i318 ]
  %.not.i.i.i315 = icmp ugt i64 %i.wc, %i.wi
  br i1 %.not.i.i.i315, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i314
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.wj, ptr noundef nonnull align 1 dereferenceable(13) @.str.962, i64 13, i1 false)
  br label %bb.gp

bb.go:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i314
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.vy, i64 noundef %i.wa, i64 noundef 0, ptr noundef nonnull @.str.962, i64 noundef 13)
          to label %bb.gp unwind label %bb.gv

bb.gp:                                            ; preds = %bb.gn, %bb.go
  store i64 %i.wc, ptr %i.vz, align 8, !tbaa !231
  %i.wk = load ptr, ptr %i.vy, align 8, !tbaa !230
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.wc
  store i8 0, ptr %i.wl, align 1, !tbaa !221
  %i.wm = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.wn = icmp eq i8 %i.wm, 0
  br i1 %i.wn, label %bb.gq, label %_ZN7easylog6loggerILm0EE8instanceEv.exit324, !prof !223

bb.gq:                                            ; preds = %bb.gp
  %i.wo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i321 = icmp eq i32 %i.wo, 0
  br i1 %.not.i321, label %_ZN7easylog6loggerILm0EE8instanceEv.exit324, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.wp = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit324

bb.gt:                                            ; preds = %bb.gr
  %i.wq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body322

_ZN7easylog6loggerILm0EE8instanceEv.exit324:      ; preds = %bb.gs, %bb.gq, %bb.gp
  %i.wr = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !294, !noundef !295
  %i.ws = trunc nuw i8 %i.wr to i1
  br i1 %i.ws, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit326, label %bb.gu, !prof !227

bb.gu:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit324
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %i.vx)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit326 unwind label %bb.gv

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit326: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit324, %bb.gu
  %i.wt = load ptr, ptr %i.vj, align 8, !tbaa !230 ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.vp
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit326
  %i.wv = load i64, ptr %i.vp, align 8, !tbaa !221
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.ww) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i328: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327
  %i.wx = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !230 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 2 uses
  %i.xa = icmp eq ptr %i.wy, %i.wz
  br i1 %i.xa, label %_ZN7easylog8record_tD2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i328
  %i.xb = load i64, ptr %i.wz, align 8, !tbaa !221
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xc) #54
  br label %_ZN7easylog8record_tD2Ev.exit332

_ZN7easylog8record_tD2Ev.exit332:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  br label %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit

bb.gv:                                            ; preds = %.invoke422, %bb.gu, %bb.go, %bb.gk, %bb.gl
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %.body322

.body322:                                         ; preds = %bb.gt, %bb.gv
  %eh.lpad-body323 = phi { ptr, i32 } [ %i.xd, %bb.gv ], [ %i.wq, %bb.gt ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %27) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  br label %bb.gw

_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit294, %_ZN7easylog8record_tD2Ev.exit332, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299, %bb.fk, %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit, %bb.ef
  %.sroa.0339.0 = phi i32 [ %.sroa.0339.0.copyload343, %bb.ef ], [ %i.qr, %bb.fk ], [ %i.qr, %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit ], [ 0, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299 ], [ 0, %_ZN7easylog8record_tD2Ev.exit332 ], [ 0, %_ZN7easylog6loggerILm0EE8instanceEv.exit294 ]
  %.sroa.11346.0 = phi ptr [ %.sroa.11346.0.copyload348, %bb.ef ], [ %i.qs, %bb.fk ], [ %i.qs, %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit ], [ %i.bf, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299 ], [ %i.bf, %_ZN7easylog8record_tD2Ev.exit332 ], [ %i.bf, %_ZN7easylog6loggerILm0EE8instanceEv.exit294 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  %i.xe = insertvalue { i32, ptr } poison, i32 %.sroa.0339.0, 0
  %i.xf = insertvalue { i32, ptr } %i.xe, ptr %.sroa.11346.0, 1
  br label %bb.gx

bb.gw:                                            ; preds = %.body322, %bb.fy, %bb.fd, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit265, %bb.ee
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %bb.ee ], [ %.pn58.pn, %bb.fd ], [ %eh.lpad-body323, %.body322 ], [ %i.un, %bb.fy ], [ %i.ra, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.gy

bb.gx:                                            ; preds = %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148, %_ZN7easylog8record_tD2Ev.exit197, %_ZN7easylog6loggerILm0EE8instanceEv.exit143, %bb.bp, %bb.bo
  %.fca.1.insert.merged = phi { i32, ptr } [ %i.ht, %_ZN7easylog8record_tD2Ev.exit197 ], [ %i.ht, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148 ], [ %i.ht, %_ZN7easylog6loggerILm0EE8instanceEv.exit143 ], [ %i.xf, %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit ], [ %i.gw, %bb.bo ], [ %i.gy, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  ret { i32, ptr } %.fca.1.insert.merged

bb.gy:                                            ; preds = %bb.cw, %bb.gw, %bb.bm, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit79
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit79 ], [ %.pn.pn, %bb.bm ], [ %.pn65.pn, %bb.cw ], [ %.pn61.pn.pn, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt10error_codeE9getFutureEv(ptr dead_on_unwind noalias writable sret(%"class.async_simple::Future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !904    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !227

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.991)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.f, %bb.g ], [ %i.b, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #43
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !905, !range !294, !noundef !295
  %2 = trunc nuw i8 %i.e to i1
  br i1 %2, label %bb.e, label %_ZN12async_simple6FutureISt10error_codeEC2EPNS_11FutureStateIS1_EE.exit, !prof !227

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.992)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple6FutureISt10error_codeEC2EPNS_11FutureStateIS1_EE.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store i8 1, ptr %i.d, align 8, !tbaa !905
  store ptr %i.a, ptr %0, align 8, !tbaa !488
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !489
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !3985
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = atomicrmw add ptr %i.j, i8 1 monotonic, align 1 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE5startIZN7cinatra16coro_http_server11async_startEvEUlOT_E_EEvS9_Q14isLazyCallbackIS8_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.591, align 8            ; 7 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.from..i, !prof !227

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.1003)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %.thread, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.p, %.thread ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

.from..i:                                         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !913
  %i.d = load ptr, ptr %1, align 8, !tbaa !904    ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !904
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !905, !range !294, !noundef !295 ; 2 uses
  store i8 %i.g, ptr %i.e, align 8, !tbaa !905
  store ptr null, ptr %1, align 8, !tbaa !904
  store i8 0, ptr %i.f, align 8, !tbaa !905
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !915  ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !915
  %i.k = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #64
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !3986 ; 9 uses

AfterCoroEnd.i:                                   ; preds = %.from..i
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE5startIZN7cinatra16coro_http_server11async_startEvEUlOT_E_EEvS9_Q14isLazyCallbackIS8_TL0__EENKUlS4_SA_E_clES4_SA_.resume, ptr %i.k, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE5startIZN7cinatra16coro_http_server11async_startEvEUlOT_E_EEvS9_Q14isLazyCallbackIS8_TL0__EENKUlS4_SA_E_clES4_SA_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.reload.addr41.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.reload.addr42.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.d, ptr %.reload.addr.i, align 8, !tbaa !904
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i8 %i.g, ptr %i.l, align 8, !tbaa !905
  store ptr null, ptr %2, align 8, !tbaa !904
  store i8 0, ptr %i.e, align 8, !tbaa !905
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.j, ptr %i.m, align 8, !tbaa !915
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr42.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr41.i, align 8, !tbaa !260, !alias.scope !3989
  %index.addr43.i = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i8 0, ptr %index.addr43.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.n, align 8, !tbaa !260
  %i.o = load ptr, ptr %i.a, align 8
  invoke void %i.o(ptr nonnull %i.a)
          to label %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit unwind label %.thread, !inline_history !3986

.thread:                                          ; preds = %AfterCoroEnd.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %2) #43
  br label %common.resume

_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit: ; preds = %AfterCoroEnd.i
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %2) #43
  ret void

bb.e:                                             ; preds = %.from..i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %2) #43
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !56

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #53
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Try", align 8 ; 11 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !904    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = load atomic i8, ptr %i.a acquire, align 1
  %i.e = and i8 %i.d, 33
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp ne i64 %i.c, 1
  %or.cond.not.i = or i1 %i.g, %i.f
  br i1 %or.cond.not.i, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.991)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #55
          to label %bb.u unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #43
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  %.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %.0.i) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #43
  %i.l = load ptr, ptr %2, align 8, !tbaa !653    ; 2 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !653
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #43
  br label %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit

_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit: ; preds = %bb.g, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i8 2, ptr %i.m, align 8, !tbaa !489
  invoke void @_ZN12async_simple11FutureStateISt10error_codeE9setResultEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(89) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.n = load i8, ptr %i.m, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.n, -1
  br i1 %.not.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.j, !prof !227

bb.j:                                             ; preds = %bb.i
  %i.o = icmp ne i8 %i.n, 2
  %i.p = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  %or.cond.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #43
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit

_ZN12async_simple3TryISt10error_codeED2Ev.exit:   ; preds = %bb.i, %bb.j, %bb.k
end_hunk_4
begin_hunk_5_@_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.resume:resume.entry
  store i64 %i.sr, ptr %5, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.sp, ptr %i.ss, align 8
  invoke void @_ZN7cinatra16coro_http_server18build_range_headerB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES4_S4_iS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %.reload.addr1587, ptr noundef nonnull align 8 dereferenceable(1256) %.reload1564, i64 %i.l, ptr %i.m, i64 %i.sk, ptr %i.sj, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7, i32 noundef %i.rn, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %5)
          to label %bb.cy unwind label %bb.de

bb.cy:                                            ; preds = %bb.cx
  %i.st = load ptr, ptr %6, align 8, !tbaa !230   ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.sv = icmp eq ptr %i.st, %i.su
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.cy
  %i.sw = load i64, ptr %i.su, align 8, !tbaa !221
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sx) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  %.reload.addr1524 = getelementptr inbounds nuw i8, ptr %0, i64 920
  %.reload1525 = load ptr, ptr %.reload.addr1524, align 8, !tbaa !8026
  %.reload1494 = load ptr, ptr %.reload.addr1497.a, align 8, !tbaa !8026
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.sy = getelementptr inbounds nuw i8, ptr %.reload1525, i64 42
  store i8 1, ptr %i.sy, align 2, !tbaa !1231
  %i.sz = getelementptr inbounds nuw i8, ptr %.reload1494, i64 112
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !1226
  %i.tb = load ptr, ptr %.reload.addr1587, align 8, !tbaa !230
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !231
  invoke void @_ZN7cinatra20coro_http_connection10write_dataESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.1090") align 8 %.reload.addr1595, ptr noundef nonnull align 8 dereferenceable(4456) %i.ta, i64 %i.td, ptr %i.tb) #67
          to label %bb.cz unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391.from.1278

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  invoke void @_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS0_4LazyIbEEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"struct.async_simple::coro::detail::LazyBase<bool, false>::ValueAwaiter") align 8 %.reload.addr1593, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1630, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1595)
          to label %AfterCoroSave1087 unwind label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382.from.1275

AfterCoroSave1087:                                ; preds = %bb.cz
  store i8 7, ptr %index.addr, align 8
  %i.te = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  store ptr %0, ptr %i.tf, align 8, !tbaa !260
  %i.tg = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !1450
  %i.tj = icmp eq ptr %i.ti, null
  br i1 %i.tj, label %bb.da, label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await7.exit

bb.da:                                            ; preds = %AfterCoroSave1087
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !1449
  store ptr %i.tl, ptr %i.th, align 8, !tbaa !1450
  %.sroa.0.0.copyload.i.pre.i18 = load ptr, ptr %.reload.addr1593, align 8, !tbaa !260
  br label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await7.exit

_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await7.exit: ; preds = %bb.da, %AfterCoroSave1087
  %.sroa.0.0.copyload.i.i17 = phi ptr [ %i.tg, %AfterCoroSave1087 ], [ %.sroa.0.0.copyload.i.pre.i18, %bb.da ] ; 2 uses
  %i.tm = load ptr, ptr %.sroa.0.0.copyload.i.i17, align 8
  musttail call void %i.tm(ptr nonnull %.sroa.0.0.copyload.i.i17)
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.from.: ; preds = %bb.co
  %i.tn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

.from.1260:                                       ; preds = %bb.cp, %bb.cq
  %i.to = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dd

.from.1258:                                       ; preds = %bb.cr, %bb.cs
  %i.tp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.from.: ; preds = %bb.ct
  %i.tq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

bb.db:                                            ; preds = %bb.cv, %bb.cu
  %i.tr = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ts = load ptr, ptr %8, align 8, !tbaa !230   ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.tu = icmp eq ptr %i.ts, %i.tt
  br i1 %i.tu, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %bb.db
  %i.tv = load i64, ptr %i.tt, align 8, !tbaa !221
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tw) #54
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  %.pn197 = phi { ptr, i32 } [ %i.tq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.from. ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369 ], [ %i.tr, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.dc

bb.dc:                                            ; preds = %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %.from.1258
  %.pn197.pn = phi { ptr, i32 } [ %.pn197, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371 ], [ %i.tp, %.from.1258 ]
  %i.tx = load ptr, ptr %9, align 8, !tbaa !230   ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.tz = icmp eq ptr %i.tx, %i.ty
  br i1 %i.tz, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.dc
  %i.ua = load i64, ptr %i.ty, align 8, !tbaa !221
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ub) #54
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %bb.dd

bb.dd:                                            ; preds = %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %.from.1260
  %.pn197.pn.pn = phi { ptr, i32 } [ %.pn197.pn, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374 ], [ %i.to, %.from.1260 ] ; 2 uses
  %i.uc = load ptr, ptr %.reload.addr1587, align 8, !tbaa !230 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.ue = icmp eq ptr %i.uc, %i.ud
  br i1 %i.ue, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.dd
  %i.uf = load i64, ptr %i.ud, align 8, !tbaa !221
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.ug) #54
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.from.: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %i.uh = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

bb.de:                                            ; preds = %bb.cx
  %i.ui = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.uj = load ptr, ptr %6, align 8, !tbaa !230   ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ul = icmp eq ptr %i.uj, %i.uk
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %bb.de
  %i.um = load i64, ptr %i.uk, align 8, !tbaa !221
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.un) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %bb.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
  %.pn198 = phi { ptr, i32 } [ %i.uh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.from. ], [ %i.ui, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378 ], [ %i.ui, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391.from.1278: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.uo = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382.from.1275: ; preds = %bb.cz
  %i.up = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382

bb.df:                                            ; preds = %.noexc383, %AfterCoroSuspend1089
  %i.uq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ur = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i381 = icmp eq ptr %i.ur, null
  br i1 %.not.i381, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load ptr, ptr %i.us, align 8
  invoke void %i.ut(ptr nonnull %i.ur)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382 unwind label %bb.dh, !inline_history !91

bb.dh:                                            ; preds = %bb.dg
  %i.uu = landingpad { ptr, i32 }
          catch ptr null
  %i.uv = extractvalue { ptr, i32 } %i.uu, 0
  tail call void @__clang_call_terminate(ptr %i.uv) #53
  unreachable

AfterCoroSuspend1089:                             ; preds = %resume.entry
  %i.uw = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.uy = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNO12async_simple4coro6detail11LazyPromiseIbE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ux)
          to label %.noexc383 unwind label %bb.df

.noexc383:                                        ; preds = %AfterCoroSuspend1089
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !676, !range !294, !noundef !295
  %i.va = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8
  invoke void %i.vc(ptr %i.va)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387 unwind label %bb.df, !inline_history !181

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387: ; preds = %.noexc383
  %16 = trunc nuw i8 %i.uz to i1
  store ptr null, ptr %.reload.addr1593, align 8, !tbaa !1393
  %i.vd = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i388 = icmp eq ptr %i.vd, null
  br i1 %.not.i388, label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389, label %bb.di

bb.di:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8
  invoke void %i.vf(ptr nonnull %i.vd)
          to label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389 unwind label %bb.dj, !inline_history !91

bb.dj:                                            ; preds = %bb.di
  %i.vg = landingpad { ptr, i32 }
          catch ptr null
  %i.vh = extractvalue { ptr, i32 } %i.vg, 0
  tail call void @__clang_call_terminate(ptr %i.vh) #53
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389: ; preds = %bb.di, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387
  br i1 %16, label %bb.dm, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382: ; preds = %bb.dg, %bb.df, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382.from.1275
  %.pn199 = phi { ptr, i32 } [ %i.up, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382.from.1275 ], [ %i.uq, %bb.df ], [ %i.uq, %bb.dg ] ; 2 uses
  %i.vi = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i390 = icmp eq ptr %i.vi, null
  br i1 %.not.i390, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391, label %bb.dk

bb.dk:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8
  invoke void %i.vk(ptr nonnull %i.vi)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391 unwind label %bb.dl, !inline_history !91

bb.dl:                                            ; preds = %bb.dk
  %i.vl = landingpad { ptr, i32 }
          catch ptr null
  %i.vm = extractvalue { ptr, i32 } %i.vl, 0
  call void @__clang_call_terminate(ptr %i.vm) #53
  unreachable

bb.dm:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389
  %i.vn = tail call noalias noundef dereferenceable_or_null(312) ptr @_ZnamRKSt9nothrow_t(i64 noundef 312, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #63, !inline_history !7982 ; 15 uses
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %bb.dn, label %AfterCoroSuspend.i392.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i395

AfterCoroSuspend.i392.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i395: ; preds = %bb.dm
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 304
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.vp, align 1
  %.reload.addr1568 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %.reload1569 = load i64, ptr %.reload.addr1568, align 8, !tbaa !8026
  %.reload.addr1549 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %.reload1550 = load ptr, ptr %.reload.addr1549, align 8, !tbaa !8026
  %.reload.addr1491 = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.sroa.7.0.extract.shift147940 = mul i64 %.reload1569, -4294967295
  %sext8311477 = add i64 %.sroa.7.0.extract.shift147940, 4294967296
  %i.vq = ashr i64 %sext8311477, 32
  store ptr @_ZN7cinatra16coro_http_server16send_single_partIN7coro_io19basic_seq_coro_fileILNS2_14execution_typeE1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17coro_http_requestENS_18coro_http_responseEEEN12async_simple4coro4LazyIbEERT_RT0_RT1_RT2_mSt17basic_string_viewIcS9_E.resume, ptr %i.vn, align 8
  %destroy.addr.i393 = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store ptr @_ZN7cinatra16coro_http_server16send_single_partIN7coro_io19basic_seq_coro_fileILNS2_14execution_typeE1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17coro_http_requestENS_18coro_http_responseEEEN12async_simple4coro4LazyIbEERT_RT0_RT1_RT2_mSt17basic_string_viewIcS9_E.destroy, ptr %destroy.addr.i393, align 8
  %.reload.addr428.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %.spill.addr396.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 240
  store i64 %i.vq, ptr %.spill.addr396.i, align 8
  %.spill.addr386.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 224
  %i.vr = load <2 x ptr>, ptr %.reload.addr1491, align 8, !tbaa !8026
  store <2 x ptr> %i.vr, ptr %.spill.addr386.i, align 8
  %.spill.addr377.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 216
  store ptr %.reload.addr1583.a, ptr %.spill.addr377.i, align 8
  %.spill.addr372.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 208
  store ptr %.reload.addr1580, ptr %.spill.addr372.i, align 8
  %.spill.addr.i394 = getelementptr inbounds nuw i8, ptr %i.vn, i64 200
  store ptr %.reload1550, ptr %.spill.addr.i394, align 8
  %.sroa.0158.0.copyload.fr.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 248
  store i64 0, ptr %.sroa.0158.0.copyload.fr.spill.addr.i, align 8
  %.sroa.6159.0.copyload.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 256
  store ptr @.str.883, ptr %.sroa.6159.0.copyload.spill.addr.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr428.i, i8 0, i64 24, i1 false)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 48
  store i8 0, ptr %i.vs, align 8, !tbaa !1389
  store ptr %i.vn, ptr %.reload.addr1593, align 8, !tbaa !260, !alias.scope !8049
  %index.addr429.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 296
  store i8 0, ptr %index.addr429.i, align 8
  br label %_ZN7cinatra16coro_http_server16send_single_partIN7coro_io19basic_seq_coro_fileILNS2_14execution_typeE1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17coro_http_requestENS_18coro_http_responseEEEN12async_simple4coro4LazyIbEERT_RT0_RT1_RT2_mSt17basic_string_viewIcS9_E.exit

bb.dn:                                            ; preds = %bb.dm
  store ptr null, ptr %.reload.addr1593, align 8, !tbaa !260, !alias.scope !8050
  br label %_ZN7cinatra16coro_http_server16send_single_partIN7coro_io19basic_seq_coro_fileILNS2_14execution_typeE1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17coro_http_requestENS_18coro_http_responseEEEN12async_simple4coro4LazyIbEERT_RT0_RT1_RT2_mSt17basic_string_viewIcS9_E.exit

_ZN7cinatra16coro_http_server16send_single_partIN7coro_io19basic_seq_coro_fileILNS2_14execution_typeE1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17coro_http_requestENS_18coro_http_responseEEEN12async_simple4coro4LazyIbEERT_RT0_RT1_RT2_mSt17basic_string_viewIcS9_E.exit: ; preds = %AfterCoroSuspend.i392.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i395, %bb.dn
  invoke void @_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS0_4LazyIbEEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"struct.async_simple::coro::detail::LazyBase<bool, false>::ValueAwaiter") align 8 %.reload.addr1595, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1630, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1593)
          to label %AfterCoroSave1091 unwind label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397.from.1286

AfterCoroSave1091:                                ; preds = %_ZN7cinatra16coro_http_server16send_single_partIN7coro_io19basic_seq_coro_fileILNS2_14execution_typeE1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17coro_http_requestENS_18coro_http_responseEEEN12async_simple4coro4LazyIbEERT_RT0_RT1_RT2_mSt17basic_string_viewIcS9_E.exit
  store i8 8, ptr %index.addr, align 8
  %i.vt = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store ptr %0, ptr %i.vu, align 8, !tbaa !260
  %i.vv = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 32 ; 2 uses
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !1450
  %i.vy = icmp eq ptr %i.vx, null
  br i1 %i.vy, label %bb.do, label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await8.exit

bb.do:                                            ; preds = %AfterCoroSave1091
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !1449
  store ptr %i.wa, ptr %i.vw, align 8, !tbaa !1450
  %.sroa.0.0.copyload.i.pre.i20 = load ptr, ptr %.reload.addr1595, align 8, !tbaa !260
  br label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await8.exit

_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await8.exit: ; preds = %bb.do, %AfterCoroSave1091
  %.sroa.0.0.copyload.i.i19 = phi ptr [ %i.vv, %AfterCoroSave1091 ], [ %.sroa.0.0.copyload.i.pre.i20, %bb.do ] ; 2 uses
  %i.wb = load ptr, ptr %.sroa.0.0.copyload.i.i19, align 8
  musttail call void %i.wb(ptr nonnull %.sroa.0.0.copyload.i.i19)
  ret void

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397.from.1286: ; preds = %_ZN7cinatra16coro_http_server16send_single_partIN7coro_io19basic_seq_coro_fileILNS2_14execution_typeE1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17coro_http_requestENS_18coro_http_responseEEEN12async_simple4coro4LazyIbEERT_RT0_RT1_RT2_mSt17basic_string_viewIcS9_E.exit
  %i.wc = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397

bb.dp:                                            ; preds = %.noexc398, %AfterCoroSuspend1093
  %i.wd = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.we = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i396 = icmp eq ptr %i.we, null
  br i1 %.not.i396, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8
  invoke void %i.wg(ptr nonnull %i.we)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397 unwind label %bb.dr, !inline_history !91

bb.dr:                                            ; preds = %bb.dq
  %i.wh = landingpad { ptr, i32 }
          catch ptr null
  %i.wi = extractvalue { ptr, i32 } %i.wh, 0
  tail call void @__clang_call_terminate(ptr %i.wi) #53
  unreachable

AfterCoroSuspend1093:                             ; preds = %resume.entry
  %i.wj = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wl = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNO12async_simple4coro6detail11LazyPromiseIbE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.wk)
          to label %.noexc398 unwind label %bb.dp ; 0 uses

.noexc398:                                        ; preds = %AfterCoroSuspend1093
  %i.wm = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8
  invoke void %i.wo(ptr %i.wm)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402 unwind label %bb.dp, !inline_history !181

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402: ; preds = %.noexc398
  store ptr null, ptr %.reload.addr1595, align 8, !tbaa !1393
  %i.wp = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i403 = icmp eq ptr %i.wp, null
  br i1 %.not.i403, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389, label %bb.ds

bb.ds:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8
  invoke void %i.wr(ptr nonnull %i.wp)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389 unwind label %bb.dt, !inline_history !91

bb.dt:                                            ; preds = %bb.ds
  %i.ws = landingpad { ptr, i32 }
          catch ptr null
  %i.wt = extractvalue { ptr, i32 } %i.ws, 0
  tail call void @__clang_call_terminate(ptr %i.wt) #53
  unreachable

.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389: ; preds = %bb.ds, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389
  %i.wu = load ptr, ptr %.reload.addr1587, align 8, !tbaa !230 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.ww = icmp eq ptr %i.wu, %i.wv
  br i1 %i.ww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389
  %i.wx = load i64, ptr %i.wv, align 8, !tbaa !221
  %i.wy = add i64 %i.wx, 1
  tail call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wy) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405
  %i.wz = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !230 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.xb = icmp eq ptr %i.wz, %i.xa
  br i1 %i.xb, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %i.xc = load i64, ptr %i.xa, align 8, !tbaa !221
  %i.xd = add i64 %i.xc, 1
  tail call void @_ZdlPvm(ptr noundef %i.wz, i64 noundef %i.xd) #54
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397: ; preds = %bb.dq, %bb.dp, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397.from.1286
  %.pn200 = phi { ptr, i32 } [ %i.wc, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397.from.1286 ], [ %i.wd, %bb.dp ], [ %i.wd, %bb.dq ] ; 2 uses
  %i.xe = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i411 = icmp eq ptr %i.xe, null
  br i1 %.not.i411, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391, label %bb.du

bb.du:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8
  invoke void %i.xg(ptr nonnull %i.xe)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391 unwind label %bb.dv, !inline_history !91

bb.dv:                                            ; preds = %bb.du
  %i.xh = landingpad { ptr, i32 }
          catch ptr null
  %i.xi = extractvalue { ptr, i32 } %i.xh, 0
  tail call void @__clang_call_terminate(ptr %i.xi) #53
  unreachable

.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391: ; preds = %bb.du, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397, %bb.dk, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391.from.1278
  %.pn200.pn.pn = phi { ptr, i32 } [ %.pn199, %bb.dk ], [ %i.uo, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391.from.1278 ], [ %.pn199, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit382 ], [ %.pn200, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit397 ], [ %.pn200, %bb.du ] ; 2 uses
  %i.xj = load ptr, ptr %.reload.addr1587, align 8, !tbaa !230 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.xl = icmp eq ptr %i.xj, %i.xk
  br i1 %i.xl, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391
  %i.xm = load i64, ptr %i.xk, align 8, !tbaa !221
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xj, i64 noundef %i.xn) #54
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391, %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
  %.pn200.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn197.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375 ], [ %.pn200.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413 ], [ %.pn198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380 ], [ %.pn197.pn.pn, %bb.dd ], [ %.pn200.pn.pn, %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit391 ] ; 2 uses
  %i.xo = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !230 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.xq = icmp eq ptr %i.xo, %i.xp
  br i1 %i.xq, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.xr = load i64, ptr %i.xp, align 8, !tbaa !221
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xs) #54
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

bb.dw:                                            ; preds = %bb.cm
  %.reload.addr1520 = getelementptr inbounds nuw i8, ptr %0, i64 920
  %.reload1521 = load ptr, ptr %.reload.addr1520, align 8, !tbaa !8026
  %i.xt = getelementptr inbounds nuw i8, ptr %.reload1521, i64 42
  store i8 1, ptr %i.xt, align 2, !tbaa !1231
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %.reload.addr1587, i64 noundef %i.jh)
          to label %bb.dx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506.from.

bb.dx:                                            ; preds = %bb.dw
  %.reload1562 = load ptr, ptr %.reload.addr1555, align 8, !tbaa !8026
  store i64 0, ptr %.reload.addr1624, align 8, !tbaa !285
  %i.xu = load ptr, ptr %.reload.addr1587, align 8, !tbaa !230
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !231
  store i64 %i.xw, ptr %4, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.xu, ptr %i.xx, align 8
  invoke void @_ZN7cinatra16coro_http_server16build_part_headsISt6vectorISt4pairIiiESaIS4_EEEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERT_St17basic_string_viewIcSA_ESI_Rm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %.reload.addr1593, ptr noundef nonnull align 8 dereferenceable(1256) %.reload1562, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1594, i64 %i.l, ptr %i.m, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1624)
          to label %bb.dy unwind label %.from.1365

bb.dy:                                            ; preds = %bb.dx
  %.reload1560 = load ptr, ptr %.reload.addr1555, align 8, !tbaa !8026
  %i.xy = load i64, ptr %.reload.addr1624, align 8, !tbaa !285
  invoke void @_ZN7cinatra16coro_http_server27build_multiple_range_headerB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %.reload.addr1582.a, ptr noundef nonnull align 8 dereferenceable(1256) %.reload1560, i64 noundef %i.xy)
          to label %bb.dz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.from.

bb.dz:                                            ; preds = %bb.dy
  %.reload1490 = load ptr, ptr %.reload.addr1497.a, align 8, !tbaa !8026
  %i.xz = getelementptr inbounds nuw i8, ptr %.reload1490, i64 112
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !1226
  %i.yb = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !230
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !231
  invoke void @_ZN7cinatra20coro_http_connection10write_dataESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.1090") align 8 %.reload.addr1595, ptr noundef nonnull align 8 dereferenceable(4456) %i.ya, i64 %i.yd, ptr %i.yb) #67
          to label %bb.ea unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit463.from.1335

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS0_4LazyIbEEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"struct.async_simple::coro::detail::LazyBase<bool, false>::ValueAwaiter") align 8 %.reload.addr1596, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1630, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1595)
          to label %AfterCoroSave1095 unwind label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424.from.1301

AfterCoroSave1095:                                ; preds = %bb.ea
  store i8 9, ptr %index.addr, align 8
  %i.ye = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  store ptr %0, ptr %i.yf, align 8, !tbaa !260
  %i.yg = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 32 ; 2 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !1450
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %bb.eb, label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await9.exit

bb.eb:                                            ; preds = %AfterCoroSave1095
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !1449
  store ptr %i.yl, ptr %i.yh, align 8, !tbaa !1450
  %.sroa.0.0.copyload.i.pre.i22 = load ptr, ptr %.reload.addr1596, align 8, !tbaa !260
  br label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await9.exit

_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await9.exit: ; preds = %bb.eb, %AfterCoroSave1095
  %.sroa.0.0.copyload.i.i21 = phi ptr [ %i.yg, %AfterCoroSave1095 ], [ %.sroa.0.0.copyload.i.pre.i22, %bb.eb ] ; 2 uses
  %i.ym = load ptr, ptr %.sroa.0.0.copyload.i.i21, align 8
  musttail call void %i.ym(ptr nonnull %.sroa.0.0.copyload.i.i21)
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506.from.: ; preds = %bb.cn, %bb.dw
  %i.yn = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

.from.1365:                                       ; preds = %bb.dx
  %i.yo = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.from.: ; preds = %bb.dy
  %i.yp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424.from.1301: ; preds = %bb.ea
  %i.yq = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424

bb.ec:                                            ; preds = %.noexc425, %AfterCoroSuspend1097
  %i.yr = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ys = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 3 uses
  %.not.i423 = icmp eq ptr %i.ys, null
  br i1 %.not.i423, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8
  invoke void %i.yu(ptr nonnull %i.ys)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424 unwind label %bb.ee, !inline_history !91

bb.ee:                                            ; preds = %bb.ed
  %i.yv = landingpad { ptr, i32 }
          catch ptr null
  %i.yw = extractvalue { ptr, i32 } %i.yv, 0
  tail call void @__clang_call_terminate(ptr %i.yw) #53
  unreachable

AfterCoroSuspend1097:                             ; preds = %resume.entry
  %i.yx = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.yz = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNO12async_simple4coro6detail11LazyPromiseIbE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.yy)
          to label %.noexc425 unwind label %bb.ec

.noexc425:                                        ; preds = %AfterCoroSuspend1097
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !676, !range !294, !noundef !295
  %i.zb = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8
  invoke void %i.zd(ptr %i.zb)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429 unwind label %bb.ec, !inline_history !181

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429: ; preds = %.noexc425
  %17 = trunc nuw i8 %i.za to i1
  store ptr null, ptr %.reload.addr1596, align 8, !tbaa !1393
  %i.ze = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i430 = icmp eq ptr %i.ze, null
  br i1 %.not.i430, label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit431, label %bb.ef

bb.ef:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8
  invoke void %i.zg(ptr nonnull %i.ze)
          to label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit431 unwind label %bb.eg, !inline_history !91

bb.eg:                                            ; preds = %bb.ef
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  %i.zi = extractvalue { ptr, i32 } %i.zh, 0
  tail call void @__clang_call_terminate(ptr %i.zi) #53
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit431: ; preds = %bb.ef, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429
  br i1 %17, label %.preheader840, label %.thread778

.preheader840:                                    ; preds = %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit431
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !2588
  %i.zl = load ptr, ptr %.reload.addr1594, align 8, !tbaa !2586
  %.not865 = icmp eq ptr %i.zk, %i.zl
  br i1 %.not865, label %.thread778, label %.from..lr.ph

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424: ; preds = %bb.ed, %bb.ec, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424.from.1301
  %.pn190 = phi { ptr, i32 } [ %i.yq, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424.from.1301 ], [ %i.yr, %bb.ec ], [ %i.yr, %bb.ed ] ; 2 uses
  %i.zm = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i432 = icmp eq ptr %i.zm, null
  br i1 %.not.i432, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit433, label %bb.eh

bb.eh:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit424
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zo = load ptr, ptr %i.zn, align 8
  invoke void %i.zo(ptr nonnull %i.zm)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit433 unwind label %bb.ei, !inline_history !91

bb.ei:                                            ; preds = %bb.eh
  %i.zp = landingpad { ptr, i32 }
          catch ptr null
  %i.zq = extractvalue { ptr, i32 } %i.zp, 0
  call void @__clang_call_terminate(ptr %i.zq) #53
  unreachable

.from..lr.ph:                                     ; preds = %.preheader840, %.from..thread772
  %.0145856 = phi i64 [ %i.aff, %.from..thread772 ], [ 0, %.preheader840 ] ; 2 uses
  %.0147855.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 954
  store i8 1, ptr %.0147855.spill.addr, align 2
  %.0145856.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i64 %.0145856, ptr %.0145856.spill.addr, align 8
  %.reload.addr1483 = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.reload1484 = load ptr, ptr %.reload.addr1483, align 8, !tbaa !8026
  %i.zr = getelementptr inbounds nuw i8, ptr %.reload1484, i64 112
  %i.zs = load ptr, ptr %.reload.addr1593, align 8, !tbaa !468
  %i.zt = getelementptr inbounds nuw [32 x i8], ptr %i.zs, i64 %.0145856 ; 2 uses
  %i.zu = load ptr, ptr %i.zr, align 8, !tbaa !1226
  %i.zv = load ptr, ptr %i.zt, align 8, !tbaa !230
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !231
  invoke void @_ZN7cinatra20coro_http_connection10write_dataESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.1090") align 8 %.reload.addr1595, ptr noundef nonnull align 8 dereferenceable(4456) %i.zu, i64 %i.zx, ptr %i.zv) #67
          to label %bb.ej unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit463.from.1335

bb.ej:                                            ; preds = %.from..lr.ph
  invoke void @_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS0_4LazyIbEEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"struct.async_simple::coro::detail::LazyBase<bool, false>::ValueAwaiter") align 8 %.reload.addr1596, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1630, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1595)
          to label %AfterCoroSave1099 unwind label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437.from.1318

AfterCoroSave1099:                                ; preds = %bb.ej
  store i8 10, ptr %index.addr, align 8
  %i.zy = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  store ptr %0, ptr %i.zz, align 8, !tbaa !260
  %i.aaa = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !1450
  %i.aad = icmp eq ptr %i.aac, null
  br i1 %i.aad, label %bb.ek, label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await10.exit

bb.ek:                                            ; preds = %AfterCoroSave1099
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !1449
  store ptr %i.aaf, ptr %i.aab, align 8, !tbaa !1450
  %.sroa.0.0.copyload.i.pre.i24 = load ptr, ptr %.reload.addr1596, align 8, !tbaa !260
  br label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await10.exit

_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.__await_suspend_wrapper__await10.exit: ; preds = %bb.ek, %AfterCoroSave1099
  %.sroa.0.0.copyload.i.i23 = phi ptr [ %i.aaa, %AfterCoroSave1099 ], [ %.sroa.0.0.copyload.i.pre.i24, %bb.ek ] ; 2 uses
  %i.aag = load ptr, ptr %.sroa.0.0.copyload.i.i23, align 8
  musttail call void %i.aag(ptr nonnull %.sroa.0.0.copyload.i.i23)
  ret void

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437.from.1318: ; preds = %bb.ej
  %i.aah = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437

bb.el:                                            ; preds = %.noexc438, %AfterCoroSuspend1101
  %i.aai = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.aaj = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 3 uses
  %.not.i436 = icmp eq ptr %i.aaj, null
  br i1 %.not.i436, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aal = load ptr, ptr %i.aak, align 8
  invoke void %i.aal(ptr nonnull %i.aaj)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437 unwind label %bb.en, !inline_history !91

bb.en:                                            ; preds = %bb.em
  %i.aam = landingpad { ptr, i32 }
          catch ptr null
  %i.aan = extractvalue { ptr, i32 } %i.aam, 0
  tail call void @__clang_call_terminate(ptr %i.aan) #53
  unreachable

AfterCoroSuspend1101:                             ; preds = %resume.entry
  %i.aao = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.aaq = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNO12async_simple4coro6detail11LazyPromiseIbE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aap)
          to label %.noexc438 unwind label %bb.el

.noexc438:                                        ; preds = %AfterCoroSuspend1101
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !676, !range !294, !noundef !295
  %i.aas = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.aau = load ptr, ptr %i.aat, align 8
  invoke void %i.aau(ptr %i.aas)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442 unwind label %bb.el, !inline_history !181

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442: ; preds = %.noexc438
  store ptr null, ptr %.reload.addr1596, align 8, !tbaa !1393
  %i.aav = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i443 = icmp eq ptr %i.aav, null
  br i1 %.not.i443, label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit444, label %bb.eo

bb.eo:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8
  invoke void %i.aax(ptr nonnull %i.aav)
          to label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit444 unwind label %bb.ep, !inline_history !91

bb.ep:                                            ; preds = %bb.eo
  %i.aay = landingpad { ptr, i32 }
          catch ptr null
  %i.aaz = extractvalue { ptr, i32 } %i.aay, 0
  tail call void @__clang_call_terminate(ptr %i.aaz) #53
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit444: ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442, %bb.eo
  %i.aba = trunc nuw i8 %i.aar to i1
  br i1 %i.aba, label %bb.es, label %.thread778

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437: ; preds = %bb.em, %bb.el, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437.from.1318
  %.pn191 = phi { ptr, i32 } [ %i.aah, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437.from.1318 ], [ %i.aai, %bb.el ], [ %i.aai, %bb.em ] ; 2 uses
  %i.abb = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i445 = icmp eq ptr %i.abb, null
  br i1 %.not.i445, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit433, label %bb.eq

bb.eq:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit437
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8
  invoke void %i.abd(ptr nonnull %i.abb)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit433 unwind label %bb.er, !inline_history !91

bb.er:                                            ; preds = %bb.eq
  %i.abe = landingpad { ptr, i32 }
          catch ptr null
  %i.abf = extractvalue { ptr, i32 } %i.abe, 0
  tail call void @__clang_call_terminate(ptr %i.abf) #53
  unreachable

bb.es:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit444
  %.0145856.reload.addr1572 = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %.0145856.reload1573 = load i64, ptr %.0145856.reload.addr1572, align 8, !tbaa !8026
  %i.abg = load ptr, ptr %.reload.addr1594, align 8, !tbaa !2586
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %.0145856.reload1573
  %i.abi = load i64, ptr %i.abh, align 4          ; 2 uses
  %sext = shl i64 %i.abi, 32
  %i.abj = ashr exact i64 %sext, 32
  %i.abk = invoke noundef zeroext i1 @_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EE4seekEmSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(617) %.reload.addr1580, i64 noundef %i.abj, i32 noundef 0)
          to label %bb.et unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit463.from.1335

bb.et:                                            ; preds = %bb.es
  br i1 %i.abk, label %bb.fh, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1588, ptr noundef nonnull @.str.1209, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr1595)
          to label %bb.ev unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit463.from.1335

bb.ev:                                            ; preds = %bb.eu
  %.reload.addr1544 = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %.reload1545 = load ptr, ptr %.reload.addr1544, align 8, !tbaa !8026
  invoke void @_ZN7cinatra18coro_http_response22set_status_and_contentENS_11status_typeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16content_encodingESt17basic_string_viewIcS5_E(ptr noundef nonnull align 8 dereferenceable(256) %.reload1545, i32 noundef 400, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %.reload.addr1588, i32 noundef 3, i64 0, ptr nonnull @.str.883)
          to label %bb.ew unwind label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.abm = load ptr, ptr %.reload.addr1588, align 8, !tbaa !230 ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %i.abl
  br i1 %i.abn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %bb.ew
  %i.abo = load i64, ptr %i.abl, align 8, !tbaa !221
  %i.abp = add i64 %i.abo, 1
  tail call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447
  %.reload1503 = load ptr, ptr %.reload.addr1544, align 8, !tbaa !8026
  %i.abq = getelementptr inbounds nuw i8, ptr %.reload1503, i64 120
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !1232
  invoke void @_ZN7cinatra20coro_http_connection5replyEb(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.1090") align 8 %.reload.addr1595, ptr noundef nonnull align 8 dereferenceable(4456) %i.abr, i1 noundef zeroext true) #67
          to label %bb.ex unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit463.from.1335

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449
  invoke void @_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS0_4LazyIbEEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"struct.async_simple::coro::detail::LazyBase<bool, false>::ValueAwaiter") align 8 %.reload.addr1596, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1630, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1595)
          to label %AfterCoroSave1103 unwind label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit454.from.1332
end_hunk_5
begin_hunk_6_@_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.resume:resume.entry
  %i.ahu = trunc i64 %i.aht to i32
  %i.ahv = add i32 %i.ahu, -1
  br label %.lr.ph.i4.i230

.lr.ph.i4.i230:                                   ; preds = %.lr.ph.i4.i230, %.lr.ph.preheader.i.i
  %.020.i.i231 = phi i64 [ %i.ahy, %.lr.ph.i4.i230 ], [ %i.jh, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i232 = phi i32 [ %i.aii, %.lr.ph.i4.i230 ], [ %i.ahv, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ahw = urem i64 %.020.i.i231, 100
  %i.ahx = shl nuw nsw i64 %i.ahw, 1
  %i.ahy = udiv i64 %.020.i.i231, 100             ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ahx ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 1
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !221, !noalias !8053
  %i.aic = zext i32 %.01819.i.i232 to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.aic
  store i8 %i.aib, ptr %i.aid, align 1, !tbaa !221
  %i.aie = load i8, ptr %i.ahz, align 2, !tbaa !221, !noalias !8053
  %i.aif = add i32 %.01819.i.i232, -1
  %i.aig = zext i32 %i.aif to i64
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.aig
  store i8 %i.aie, ptr %i.aih, align 1, !tbaa !221
  %i.aii = add i32 %.01819.i.i232, -2
  %i.aij = icmp ugt i64 %.020.i.i231, 9999
  br i1 %i.aij, label %.lr.ph.i4.i230, label %._crit_edge.i.i227, !llvm.loop !71

._crit_edge.i.i227:                               ; preds = %.lr.ph.i4.i230, %bb.gc
  %.0.lcssa.i.i228 = phi i64 [ %i.jh, %bb.gc ], [ %i.ahy, %.lr.ph.i4.i230 ] ; 3 uses
  %i.aik = icmp samesign ugt i64 %.0.lcssa.i.i228, 9
  br i1 %i.aik, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %._crit_edge.i.i227
  %i.ail = shl nuw nsw i64 %.0.lcssa.i.i228, 1
  %i.aim = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ail ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 1
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !221, !noalias !8053
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1
  store i8 %i.aio, ptr %i.aip, align 1, !tbaa !221
  %i.aiq = load i8, ptr %i.aim, align 2, !tbaa !221, !noalias !8053
  br label %bb.gf

bb.ge:                                            ; preds = %._crit_edge.i.i227
  %i.air = trunc nuw nsw i64 %.0.lcssa.i.i228 to i8
  %i.ais = or disjoint i8 %i.air, 48
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %storemerge.i.i229 = phi i8 [ %i.ais, %bb.ge ], [ %i.aiq, %bb.gd ]
  store i8 %storemerge.i.i229, ptr %i.ahr, align 1, !tbaa !221
  %i.ait = load ptr, ptr %2, align 8, !tbaa !230
  %i.aiu = load i64, ptr %i.ahp, align 8, !tbaa !231
  store i64 %i.aiu, ptr %3, align 8
  %i.aiv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ait, ptr %i.aiv, align 8
  store i64 0, ptr %1, align 8, !tbaa !467
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.883, ptr %i.aiw, align 8, !tbaa !1634
  invoke void @_ZN7cinatra16coro_http_server18build_range_headerB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES4_S4_iS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %.reload.addr1582.a, ptr noundef nonnull align 8 dereferenceable(1256) %.reload1552, i64 %i.l, ptr %i.m, i64 %i.agu, ptr %i.agt, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %3, i32 noundef 200, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %1)
          to label %bb.gg unwind label %bb.gk

bb.gg:                                            ; preds = %bb.gf
  %i.aix = load ptr, ptr %2, align 8, !tbaa !230  ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aiz = icmp eq ptr %i.aix, %i.aiy
  br i1 %i.aiz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514: ; preds = %bb.gg
  %i.aja = load i64, ptr %i.aiy, align 8, !tbaa !221
  %i.ajb = add i64 %i.aja, 1
  call void @_ZdlPvm(ptr noundef %i.aix, i64 noundef %i.ajb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514
  %.reload.addr1514 = getelementptr inbounds nuw i8, ptr %0, i64 920
  %.reload1515 = load ptr, ptr %.reload.addr1514, align 8, !tbaa !8026
  %.reload1486 = load ptr, ptr %.reload.addr1497.a, align 8, !tbaa !8026
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.ajc = getelementptr inbounds nuw i8, ptr %.reload1515, i64 42
  store i8 1, ptr %i.ajc, align 2, !tbaa !1231
  %i.ajd = getelementptr inbounds nuw i8, ptr %.reload1486, i64 112
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !1226
  %i.ajf = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !230
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !231
  %i.aji = call noalias noundef dereferenceable_or_null(136) ptr @_ZnamRKSt9nothrow_t(i64 noundef 136, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #63, !inline_history !3163 ; 13 uses
  %i.ajj = icmp eq ptr %i.aji, null
  br i1 %i.ajj, label %bb.gh, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 128
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.ajk, align 1
  store ptr @_ZN7cinatra20coro_http_connection10write_dataESt17basic_string_viewIcSt11char_traitsIcEE.resume, ptr %i.aji, align 8
  %destroy.addr.i234 = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  store ptr @_ZN7cinatra20coro_http_connection10write_dataESt17basic_string_viewIcSt11char_traitsIcEE.destroy, ptr %destroy.addr.i234, align 8
  %.reload.addr159.i = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %.spill.addr151.i = getelementptr inbounds nuw i8, ptr %i.aji, i64 112
  store ptr %i.ajf, ptr %.spill.addr151.i, align 8
  %.spill.addr148.i = getelementptr inbounds nuw i8, ptr %i.aji, i64 104
  store i64 %i.ajh, ptr %.spill.addr148.i, align 8
  %.spill.addr.i235 = getelementptr inbounds nuw i8, ptr %i.aji, i64 96
  store ptr %i.aje, ptr %.spill.addr.i235, align 8
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aji, i64 48
  store i8 0, ptr %i.ajl, align 8, !tbaa !1389
  %index.addr160.i = getelementptr inbounds nuw i8, ptr %i.aji, i64 120
  store i8 0, ptr %index.addr160.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8054)
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !8055)
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  store ptr null, ptr %.reload.addr1593, align 8, !tbaa !1393, !noalias !8056
  store ptr %i.aji, ptr %.reload.addr1587, align 8, !alias.scope !8057
  store i8 13, ptr %index.addr, align 8
  store ptr %0, ptr %.reload.addr159.i, align 8, !tbaa !260
  %i.ajo = load <2 x ptr>, ptr %i.ajm, align 8, !tbaa !260
  store <2 x ptr> %i.ajo, ptr %i.ajn, align 8, !tbaa !260
  musttail call void @_ZN7cinatra20coro_http_connection10write_dataESt17basic_string_viewIcSt11char_traitsIcEE.resume(ptr nonnull %i.aji)
  ret void

bb.gh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516
  store ptr null, ptr %.reload.addr1593, align 8, !tbaa !260, !alias.scope !8058
  %i.ajp = call ptr @__cxa_allocate_exception(i64 16) #43, !noalias !8056 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ajp, ptr noundef nonnull @.str.1003)
          to label %bb.gi unwind label %bb.gj, !noalias !8056

bb.gi:                                            ; preds = %bb.gh
  invoke void @__cxa_throw(ptr nonnull %i.ajp, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
          to label %.noexc237 unwind label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523.from.1392

.noexc237:                                        ; preds = %bb.gi
  unreachable

bb.gj:                                            ; preds = %bb.gh
  %i.ajq = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ajp) #43, !noalias !8056
  br label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.from.: ; preds = %.noexc.i233
  %i.ajr = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

bb.gk:                                            ; preds = %bb.gf
  %i.ajs = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ajt = load ptr, ptr %2, align 8, !tbaa !230  ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ajv = icmp eq ptr %i.ajt, %i.aju
  br i1 %i.ajv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %bb.gk
  %i.ajw = load i64, ptr %i.aju, align 8, !tbaa !221
  %i.ajx = add i64 %i.ajw, 1
  call void @_ZdlPvm(ptr noundef %i.ajt, i64 noundef %i.ajx) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %bb.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519
  %.pn184 = phi { ptr, i32 } [ %i.ajr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.from. ], [ %i.ajs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519 ], [ %i.ajs, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %.body261.from.1468

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523.from.1392: ; preds = %bb.gi
  %i.ajy = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523

bb.gl:                                            ; preds = %.noexc524, %AfterCoroSuspend1113
  %i.ajz = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.aka = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 3 uses
  %.not.i522 = icmp eq ptr %i.aka, null
  br i1 %.not.i522, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8
  invoke void %i.akc(ptr nonnull %i.aka)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523 unwind label %bb.gn, !inline_history !91

bb.gn:                                            ; preds = %bb.gm
  %i.akd = landingpad { ptr, i32 }
          catch ptr null
  %i.ake = extractvalue { ptr, i32 } %i.akd, 0
  tail call void @__clang_call_terminate(ptr %i.ake) #53
  unreachable

AfterCoroSuspend1113:                             ; preds = %resume.entry
  %i.akf = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akh = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNO12async_simple4coro6detail11LazyPromiseIbE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.akg)
          to label %.noexc524 unwind label %bb.gl

.noexc524:                                        ; preds = %AfterCoroSuspend1113
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !676, !range !294, !noundef !295
  %i.akj = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akl = load ptr, ptr %i.akk, align 8
  invoke void %i.akl(ptr %i.akj)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528 unwind label %bb.gl, !inline_history !181

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528: ; preds = %.noexc524
  %18 = trunc nuw i8 %i.aki to i1
  store ptr null, ptr %.reload.addr1587, align 8, !tbaa !1393
  %i.akm = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i529 = icmp eq ptr %i.akm, null
  br i1 %.not.i529, label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit530, label %bb.go

bb.go:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %i.ako = load ptr, ptr %i.akn, align 8
  invoke void %i.ako(ptr nonnull %i.akm)
          to label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit530 unwind label %bb.gp, !inline_history !91

bb.gp:                                            ; preds = %bb.go
  %i.akp = landingpad { ptr, i32 }
          catch ptr null
  %i.akq = extractvalue { ptr, i32 } %i.akp, 0
  tail call void @__clang_call_terminate(ptr %i.akq) #53
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit530: ; preds = %bb.go, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528
  br i1 %18, label %.from.1397, label %.thread822

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523: ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523.from.1392, %bb.gj, %bb.gm, %bb.gl
  %.pn185 = phi { ptr, i32 } [ %i.ajz, %bb.gm ], [ %i.ajz, %bb.gl ], [ %i.ajy, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523.from.1392 ], [ %i.ajq, %bb.gj ] ; 2 uses
  %i.akr = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i531 = icmp eq ptr %i.akr, null
  br i1 %.not.i531, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit532, label %bb.gq

bb.gq:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit523
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  %i.akt = load ptr, ptr %i.aks, align 8
  invoke void %i.akt(ptr nonnull %i.akr)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit532 unwind label %bb.gr, !inline_history !91

bb.gr:                                            ; preds = %bb.gq
  %i.aku = landingpad { ptr, i32 }
          catch ptr null
  %i.akv = extractvalue { ptr, i32 } %i.aku, 0
  call void @__clang_call_terminate(ptr %i.akv) #53
  unreachable

.from.1397:                                       ; preds = %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit530, %bb.ht
  %.0138.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 955
  store i8 1, ptr %.0138.spill.addr, align 1
  %i.akw = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.akx = load ptr, ptr %.reload.addr1583.a, align 8, !tbaa !230
  %i.aky = load i64, ptr %i.akw, align 8, !tbaa !231
  %i.akz = tail call noalias noundef dereferenceable_or_null(144) ptr @_ZnamRKSt9nothrow_t(i64 noundef 144, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #63, !inline_history !7971 ; 13 uses
  %i.ala = icmp eq ptr %i.akz, null
  br i1 %i.ala, label %bb.gs, label %.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i540

.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i540: ; preds = %.from.1397
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akz, i64 136
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.alb, align 1
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EE10async_readEPcm.resume, ptr %i.akz, align 8
  %destroy.addr.i534 = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  store ptr @_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EE10async_readEPcm.destroy, ptr %destroy.addr.i534, align 8
  %.reload.addr83.i535 = getelementptr inbounds nuw i8, ptr %i.akz, i64 16
  %.spill.addr76.i536 = getelementptr inbounds nuw i8, ptr %i.akz, i64 120
  store i64 %i.aky, ptr %.spill.addr76.i536, align 8
  %.spill.addr73.i537 = getelementptr inbounds nuw i8, ptr %i.akz, i64 112
  store ptr %i.akx, ptr %.spill.addr73.i537, align 8
  %.spill.addr.i538 = getelementptr inbounds nuw i8, ptr %i.akz, i64 104
  store ptr %.reload.addr1580, ptr %.spill.addr.i538, align 8
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akz, i64 64
  store i8 0, ptr %i.ald, align 8, !tbaa !1387
  %index.addr84.i539 = getelementptr inbounds nuw i8, ptr %i.akz, i64 128
  store i8 0, ptr %index.addr84.i539, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8060)
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akz, i64 24
  store ptr %i.akz, ptr %.reload.addr1587, align 8, !alias.scope !8061
  store i8 14, ptr %index.addr, align 8
  store ptr %0, ptr %.reload.addr83.i535, align 8, !tbaa !260
  %i.alf = load <2 x ptr>, ptr %i.alc, align 8, !tbaa !260
  store <2 x ptr> %i.alf, ptr %i.ale, align 8, !tbaa !260
  musttail call void @_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EE10async_readEPcm.resume(ptr nonnull %i.akz)
  ret void

bb.gs:                                            ; preds = %.from.1397
  %i.alg = tail call ptr @__cxa_allocate_exception(i64 16) #43, !noalias !8062 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.alg, ptr noundef nonnull @.str.1003)
          to label %bb.gt unwind label %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit558.from.1407, !noalias !8062

bb.gt:                                            ; preds = %bb.gs
  invoke void @__cxa_throw(ptr nonnull %i.alg, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
          to label %.noexc544 unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit580.from.1434

.noexc544:                                        ; preds = %bb.gt
  unreachable

_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit558.from.1407: ; preds = %bb.gs
  %i.alh = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.alg) #43, !noalias !8062
  br label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit532

bb.gu:                                            ; preds = %.noexc550, %AfterCoroSuspend1117
  %i.ali = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.alj = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1391 ; 3 uses
  %.not.i548 = icmp eq ptr %i.alj, null
  br i1 %.not.i548, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit532, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  %i.all = load ptr, ptr %i.alk, align 8
  invoke void %i.all(ptr nonnull %i.alj)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit532 unwind label %bb.gw, !inline_history !90

bb.gw:                                            ; preds = %bb.gv
  %i.alm = landingpad { ptr, i32 }
          catch ptr null
  %i.aln = extractvalue { ptr, i32 } %i.alm, 0
  tail call void @__clang_call_terminate(ptr %i.aln) #53
  unreachable

AfterCoroSuspend1117:                             ; preds = %resume.entry
  %i.alo = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1391, !noalias !8063
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 16
  %i.alq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE6resultEv(ptr noundef nonnull align 8 dereferenceable(56) %i.alp)
          to label %.noexc550 unwind label %bb.gu ; 2 uses

.noexc550:                                        ; preds = %AfterCoroSuspend1117
  %.sroa.0612.0.copyload = load i32, ptr %i.alq, align 8
  %.sroa.5613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alq, i64 16
  %.sroa.5613.0.copyload = load i64, ptr %.sroa.5613.0..sroa_idx, align 8
  %i.alr = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1391, !noalias !8063 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.alt = load ptr, ptr %i.als, align 8
  invoke void %i.alt(ptr %i.alr)
          to label %bb.gx unwind label %bb.gu, !inline_history !180

bb.gx:                                            ; preds = %.noexc550
  %.not832 = icmp eq i32 %.sroa.0612.0.copyload, 0
  br i1 %.not832, label %bb.hj, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %.reload.addr1512 = getelementptr inbounds nuw i8, ptr %0, i64 920
  %.reload1513 = load ptr, ptr %.reload.addr1512, align 8, !tbaa !8026 ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %.reload1513, i64 120
  store i32 204, ptr %.reload1513, align 8, !tbaa !1228
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !1232
  %i.alw = tail call noalias noundef dereferenceable_or_null(104) ptr @_ZnamRKSt9nothrow_t(i64 noundef 104, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #63, !inline_history !3158 ; 12 uses
  %i.alx = icmp eq ptr %i.alw, null
  br i1 %i.alx, label %bb.gz, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i241

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i241: ; preds = %bb.gy
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alw, i64 96
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.aly, align 1
  store ptr @_ZN7cinatra20coro_http_connection5replyEb.resume, ptr %i.alw, align 8
  %destroy.addr.i239 = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  store ptr @_ZN7cinatra20coro_http_connection5replyEb.destroy, ptr %destroy.addr.i239, align 8
  %.reload.addr248.i = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  %.spill.addr233.i = getelementptr inbounds nuw i8, ptr %i.alw, i64 89
  store i1 true, ptr %.spill.addr233.i, align 1
  %.spill.addr.i240 = getelementptr inbounds nuw i8, ptr %i.alw, i64 72
  store ptr %i.alv, ptr %.spill.addr.i240, align 8
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 48
  store i8 0, ptr %i.alz, align 8, !tbaa !1389
  %index.addr249.i = getelementptr inbounds nuw i8, ptr %i.alw, i64 88
  store i8 0, ptr %index.addr249.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8064)
  %i.ama = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8065)
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  store ptr null, ptr %.reload.addr1593, align 8, !tbaa !1393, !noalias !8066
  store ptr %i.alw, ptr %.reload.addr1587, align 8, !alias.scope !8067
  store i8 15, ptr %index.addr, align 8
  store ptr %0, ptr %.reload.addr248.i, align 8, !tbaa !260
  %i.amc = load <2 x ptr>, ptr %i.ama, align 8, !tbaa !260
  store <2 x ptr> %i.amc, ptr %i.amb, align 8, !tbaa !260
  musttail call void @_ZN7cinatra20coro_http_connection5replyEb.resume(ptr nonnull %i.alw)
  ret void

bb.gz:                                            ; preds = %bb.gy
  store ptr null, ptr %.reload.addr1593, align 8, !tbaa !260, !alias.scope !8068
  %i.amd = tail call ptr @__cxa_allocate_exception(i64 16) #43, !noalias !8066 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.amd, ptr noundef nonnull @.str.1003)
          to label %bb.ha unwind label %bb.hb, !noalias !8066

bb.ha:                                            ; preds = %bb.gz
  invoke void @__cxa_throw(ptr nonnull %i.amd, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
          to label %.noexc244 unwind label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit560.from.1417

.noexc244:                                        ; preds = %bb.ha
  unreachable

bb.hb:                                            ; preds = %bb.gz
  %i.ame = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.amd) #43, !noalias !8066
  br label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit560

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit560.from.1417: ; preds = %bb.ha
  %i.amf = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit560

bb.hc:                                            ; preds = %.noexc561, %AfterCoroSuspend1121
  %i.amg = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.amh = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 3 uses
  %.not.i559 = icmp eq ptr %i.amh, null
  br i1 %.not.i559, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit560, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %i.amj = load ptr, ptr %i.ami, align 8
  invoke void %i.amj(ptr nonnull %i.amh)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit560 unwind label %bb.he, !inline_history !91

bb.he:                                            ; preds = %bb.hd
  %i.amk = landingpad { ptr, i32 }
          catch ptr null
  %i.aml = extractvalue { ptr, i32 } %i.amk, 0
  tail call void @__clang_call_terminate(ptr %i.aml) #53
  unreachable

AfterCoroSuspend1121:                             ; preds = %resume.entry
end_hunk_6
begin_hunk_7_@_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENKUlRNS_17coro_http_requestERNS_18coro_http_responseEE_clESE_SG_.destroy:resume.entry
  unreachable

AfterCoroSuspend1073:                             ; preds = %resume.entry
  %.pr684 = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !1391 ; 3 uses
  %.not.i301 = icmp eq ptr %.pr684, null
  br i1 %.not.i301, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %bb.g

bb.g:                                             ; preds = %AfterCoroSuspend1073
  %i.q = getelementptr inbounds nuw i8, ptr %.pr684, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr nonnull %.pr684)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 unwind label %bb.h, !inline_history !90

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #53
  unreachable

AfterCoroSuspend1077:                             ; preds = %resume.entry
  %.pr697 = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !1393 ; 3 uses
  %.not.i312 = icmp eq ptr %.pr697, null
  br i1 %.not.i312, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit313.jt2, label %bb.i

bb.i:                                             ; preds = %AfterCoroSuspend1077
  %i.u = getelementptr inbounds nuw i8, ptr %.pr697, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr nonnull %.pr697)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit313.jt2 unwind label %bb.j, !inline_history !91

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit313.jt2: ; preds = %bb.i, %AfterCoroSuspend1077
  %i.y = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 3 uses
  %.not.i314.jt2 = icmp eq ptr %i.y, null
  br i1 %.not.i314.jt2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %bb.k

bb.k:                                             ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit313.jt2
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr nonnull %i.y)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 unwind label %bb.l, !inline_history !91

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #53
  unreachable

AfterCoroSuspend1081:                             ; preds = %resume.entry
  %.pr703 = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !1393 ; 3 uses
  %.not.i323 = icmp eq ptr %.pr703, null
  br i1 %.not.i323, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit324.jt2, label %bb.m

bb.m:                                             ; preds = %AfterCoroSuspend1081
  %i.ad = getelementptr inbounds nuw i8, ptr %.pr703, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr nonnull %.pr703)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit324.jt2 unwind label %bb.n, !inline_history !91

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit324.jt2: ; preds = %bb.m, %AfterCoroSuspend1081
  %i.ah = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 3 uses
  %.not.i325.jt2 = icmp eq ptr %i.ah, null
  br i1 %.not.i325.jt2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %bb.o

bb.o:                                             ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit324.jt2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr nonnull %i.ah)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 unwind label %.loopexit.split-lp, !inline_history !91

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #53
  unreachable

AfterCoroSuspend1085:                             ; preds = %resume.entry
  %.pr711 = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !1393 ; 3 uses
  %.not.i334 = icmp eq ptr %.pr711, null
  br i1 %.not.i334, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit335.jt2, label %bb.p

bb.p:                                             ; preds = %AfterCoroSuspend1085
  %i.al = getelementptr inbounds nuw i8, ptr %.pr711, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr711)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit335.jt2 unwind label %bb.q, !inline_history !91

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit335.jt2: ; preds = %bb.p, %AfterCoroSuspend1085
  %i.ap = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 3 uses
  %.not.i336.jt2 = icmp eq ptr %i.ap, null
  br i1 %.not.i336.jt2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %bb.r

bb.r:                                             ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit335.jt2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr nonnull %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 unwind label %bb.s, !inline_history !91

bb.s:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #53
  unreachable

AfterCoroSuspend1089:                             ; preds = %resume.entry
  %.pr727 = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i386 = icmp eq ptr %.pr727, null
  br i1 %.not.i386, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387, label %bb.t

bb.t:                                             ; preds = %AfterCoroSuspend1089
  %i.au = getelementptr inbounds nuw i8, ptr %.pr727, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr nonnull %.pr727)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387 unwind label %bb.u, !inline_history !91

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387: ; preds = %bb.t, %AfterCoroSuspend1089
  %i.ay = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i388 = icmp eq ptr %i.ay, null
  br i1 %.not.i388, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit404, label %bb.v

bb.v:                                             ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr nonnull %i.ay)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit404 unwind label %bb.w, !inline_history !91

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #53
  unreachable

AfterCoroSuspend1093:                             ; preds = %resume.entry
  %.pr735 = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i401 = icmp eq ptr %.pr735, null
  br i1 %.not.i401, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402, label %bb.x

bb.x:                                             ; preds = %AfterCoroSuspend1093
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr735, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr nonnull %.pr735)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402 unwind label %bb.y, !inline_history !91

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402: ; preds = %bb.x, %AfterCoroSuspend1093
  %i.bh = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i403 = icmp eq ptr %i.bh, null
  br i1 %.not.i403, label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit404, label %bb.z

bb.z:                                             ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr nonnull %i.bh)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit404 unwind label %bb.aa, !inline_history !91

bb.aa:                                            ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #53
  unreachable

.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit404: ; preds = %bb.v, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit387, %bb.z, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit402
  %i.bm = load ptr, ptr %.reload.addr1587, align 8, !tbaa !230 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit404
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !221
  %i.bq = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405
  %i.br = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !230 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410.sink.split

AfterCoroSuspend1097:                             ; preds = %resume.entry
  %.pr739 = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 3 uses
  %.not.i428 = icmp eq ptr %.pr739, null
  br i1 %.not.i428, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429, label %bb.ab

bb.ab:                                            ; preds = %AfterCoroSuspend1097
  %i.bu = getelementptr inbounds nuw i8, ptr %.pr739, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr nonnull %.pr739)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429 unwind label %bb.ac, !inline_history !91

bb.ac:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429: ; preds = %bb.ab, %AfterCoroSuspend1097
  %i.by = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i430 = icmp eq ptr %i.by, null
  br i1 %.not.i430, label %.thread778, label %bb.ad

bb.ad:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr nonnull %i.by)
          to label %.thread778 unwind label %bb.ae, !inline_history !91

bb.ae:                                            ; preds = %bb.ad
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #53
  unreachable

AfterCoroSuspend1101:                             ; preds = %resume.entry
  %.pr747 = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 3 uses
  %.not.i441 = icmp eq ptr %.pr747, null
  br i1 %.not.i441, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442, label %bb.af

bb.af:                                            ; preds = %AfterCoroSuspend1101
  %i.cd = getelementptr inbounds nuw i8, ptr %.pr747, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr nonnull %.pr747)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442 unwind label %bb.ag, !inline_history !91

bb.ag:                                            ; preds = %bb.af
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442: ; preds = %bb.af, %AfterCoroSuspend1101
  %i.ch = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i443 = icmp eq ptr %i.ch, null
  br i1 %.not.i443, label %.thread778, label %bb.ah

bb.ah:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr nonnull %i.ch)
          to label %.thread778 unwind label %bb.ai, !inline_history !91

bb.ai:                                            ; preds = %bb.ah
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #53
  unreachable

AfterCoroSuspend1105:                             ; preds = %resume.entry
  %.pr755 = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 3 uses
  %.not.i458 = icmp eq ptr %.pr755, null
  br i1 %.not.i458, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit459, label %bb.aj

bb.aj:                                            ; preds = %AfterCoroSuspend1105
  %i.cm = getelementptr inbounds nuw i8, ptr %.pr755, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void %i.cn(ptr nonnull %.pr755)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit459 unwind label %bb.ak, !inline_history !91

bb.ak:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  tail call void @__clang_call_terminate(ptr %i.cp) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit459: ; preds = %bb.aj, %AfterCoroSuspend1105
  %i.cq = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i460 = icmp eq ptr %i.cq, null
  br i1 %.not.i460, label %.thread778, label %bb.al

bb.al:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit459
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr nonnull %i.cq)
          to label %.thread778 unwind label %bb.am, !inline_history !91

bb.am:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  tail call void @__clang_call_terminate(ptr %i.cu) #53
  unreachable

AfterCoroSuspend1109:                             ; preds = %resume.entry
  %.pr761 = load ptr, ptr %.reload.addr1595, align 8, !tbaa !1393 ; 3 uses
  %.not.i489 = icmp eq ptr %.pr761, null
  br i1 %.not.i489, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit490, label %bb.an

bb.an:                                            ; preds = %AfterCoroSuspend1109
  %i.cv = getelementptr inbounds nuw i8, ptr %.pr761, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr nonnull %.pr761)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit490 unwind label %bb.ao, !inline_history !91

bb.ao:                                            ; preds = %bb.an
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  tail call void @__clang_call_terminate(ptr %i.cy) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit490: ; preds = %bb.an, %AfterCoroSuspend1109
  %i.cz = load ptr, ptr %.reload.addr1596, align 8, !tbaa !1393 ; 3 uses
  %.not.i491 = icmp eq ptr %i.cz, null
  br i1 %.not.i491, label %.thread778, label %bb.ap

bb.ap:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit490
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr nonnull %i.cz)
          to label %.thread778 unwind label %bb.aq, !inline_history !91

bb.aq:                                            ; preds = %bb.ap
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #53
  unreachable

.thread778:                                       ; preds = %bb.ad, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit429, %bb.ap, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit490, %bb.al, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit459, %bb.ah, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit442
  %i.de = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !230 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495: ; preds = %.thread778
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !221
  %i.di = add i64 %i.dh, 1
  tail call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497: ; preds = %.thread778, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr1593) #43
  %i.dj = load ptr, ptr %.reload.addr1587, align 8, !tbaa !230 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410.sink.split

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %.sink73.in = phi ptr [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407 ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ]
  %.sink = phi ptr [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ]
  %.sink73 = load i64, ptr %.sink73.in, align 8, !tbaa !221
  %i.dm = add i64 %.sink73, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dm) #54
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410: ; preds = %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %i.dn = load ptr, ptr %.reload.addr1594, align 8, !tbaa !2586 ; 3 uses
  %.not.i.i.i507 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i507, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %bb.ar

bb.ar:                                            ; preds = %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2587
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

AfterCoroSuspend1113:                             ; preds = %resume.entry
  %.pr781 = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 3 uses
  %.not.i527 = icmp eq ptr %.pr781, null
  br i1 %.not.i527, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528, label %bb.as

bb.as:                                            ; preds = %AfterCoroSuspend1113
  %i.dt = getelementptr inbounds nuw i8, ptr %.pr781, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr nonnull %.pr781)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528 unwind label %bb.at, !inline_history !91

bb.at:                                            ; preds = %bb.as
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  tail call void @__clang_call_terminate(ptr %i.dw) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528: ; preds = %bb.as, %AfterCoroSuspend1113
  %i.dx = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i529 = icmp eq ptr %i.dx, null
  br i1 %.not.i529, label %.thread822, label %bb.au

bb.au:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr nonnull %i.dx)
          to label %.thread822 unwind label %bb.av, !inline_history !91

bb.av:                                            ; preds = %bb.au
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  tail call void @__clang_call_terminate(ptr %i.eb) #53
  unreachable

AfterCoroSuspend1117:                             ; preds = %resume.entry
  %.pr792 = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1391 ; 3 uses
  %.not.i553 = icmp eq ptr %.pr792, null
  br i1 %.not.i553, label %.thread822, label %bb.aw

bb.aw:                                            ; preds = %AfterCoroSuspend1117
  %i.ec = getelementptr inbounds nuw i8, ptr %.pr792, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr nonnull %.pr792)
          to label %.thread822 unwind label %bb.ax, !inline_history !90

bb.ax:                                            ; preds = %bb.aw
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  tail call void @__clang_call_terminate(ptr %i.ef) #53
  unreachable

AfterCoroSuspend1121:                             ; preds = %resume.entry
  %.pr805 = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 3 uses
  %.not.i564 = icmp eq ptr %.pr805, null
  br i1 %.not.i564, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit565, label %bb.ay

bb.ay:                                            ; preds = %AfterCoroSuspend1121
  %i.eg = getelementptr inbounds nuw i8, ptr %.pr805, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr nonnull %.pr805)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit565 unwind label %bb.az, !inline_history !91

bb.az:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  tail call void @__clang_call_terminate(ptr %i.ej) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit565: ; preds = %bb.ay, %AfterCoroSuspend1121
  %i.ek = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i566 = icmp eq ptr %i.ek, null
  br i1 %.not.i566, label %.thread822, label %bb.ba

bb.ba:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit565
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  invoke void %i.em(ptr nonnull %i.ek)
          to label %.thread822 unwind label %bb.bb, !inline_history !91

bb.bb:                                            ; preds = %bb.ba
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  tail call void @__clang_call_terminate(ptr %i.eo) #53
  unreachable

AfterCoroSuspend1125:                             ; preds = %resume.entry
  %.pr811 = load ptr, ptr %.reload.addr1587, align 8, !tbaa !1393 ; 3 uses
  %.not.i575 = icmp eq ptr %.pr811, null
  br i1 %.not.i575, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit576, label %bb.bc

bb.bc:                                            ; preds = %AfterCoroSuspend1125
  %i.ep = getelementptr inbounds nuw i8, ptr %.pr811, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr nonnull %.pr811)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit576 unwind label %bb.bd, !inline_history !91

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  tail call void @__clang_call_terminate(ptr %i.es) #53
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit576: ; preds = %bb.bc, %AfterCoroSuspend1125
  %i.et = load ptr, ptr %.reload.addr1593, align 8, !tbaa !1393 ; 3 uses
  %.not.i577 = icmp eq ptr %i.et, null
  br i1 %.not.i577, label %.thread822, label %bb.be

bb.be:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit576
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr nonnull %i.et)
          to label %.thread822 unwind label %bb.bf, !inline_history !91

bb.bf:                                            ; preds = %bb.be
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  tail call void @__clang_call_terminate(ptr %i.ex) #53
  unreachable

.thread822:                                       ; preds = %bb.ba, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit565, %bb.au, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit528, %bb.be, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit576, %bb.aw, %AfterCoroSuspend1117
  %i.ey = load ptr, ptr %.reload.addr1582.a, align 8, !tbaa !230 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581: ; preds = %.thread822
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !221
  %i.fc = add i64 %i.fb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %.thread822, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581, %bb.ar, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit286, %bb.e, %bb.r, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit335.jt2, %bb.o, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit324.jt2, %bb.k, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIbED2Ev.exit313.jt2, %bb.g, %AfterCoroSuspend1073
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !230 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.fd
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i587

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i587: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  %i.fh = load i64, ptr %i.fd, align 8, !tbaa !221
  %i.fi = add i64 %i.fh, 1
  tail call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i587
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fj, ptr noundef nonnull @_ZTTSt13basic_fstreamIcSt11char_traitsIcEE) #43
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fl) #43
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEE, i64 16), ptr %.reload.addr1580, align 8, !tbaa !205
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !656 ; 3 uses
  %.not.i.i.i588 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i588, label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i.i.i

_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3anyESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.fm) #43, !inline_history !657
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef 56) #54, !inline_history !657
  br label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i.i

_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEEclEPSG_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12async_simple8ExecutorE, i64 16), ptr %.reload.addr1580, align 8, !tbaa !205
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !230 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fn
  br i1 %i.fq, label %_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i.i
  %i.fr = load i64, ptr %i.fn, align 8, !tbaa !221
  %i.fs = add i64 %i.fr, 1
  tail call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #54, !inline_history !658
  br label %_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EED2Ev.exit

_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEESt14default_deleteISG_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.fu = load ptr, ptr %.reload.addr1583.a, align 8, !tbaa !230 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ft
  br i1 %i.fv, label %AfterCoroSuspend, label %AfterCoroSuspend.sink.split

AfterCoroSuspend.sink.split:                      ; preds = %_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EED2Ev.exit, %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit.thread
  %.sink76.in = phi ptr [ %i.f, %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit.thread ], [ %i.ft, %_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EED2Ev.exit ]
  %.sink74 = phi ptr [ %i.e, %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit.thread ], [ %i.fu, %_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EED2Ev.exit ]
  %.sink76 = load i64, ptr %.sink76.in, align 8, !tbaa !221
  %i.fw = add i64 %.sink76, 1
  tail call void @_ZdlPvm(ptr noundef %.sink74, i64 noundef %i.fw) #54
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %AfterCoroSuspend.sink.split, %_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EED2Ev.exit, %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit.thread, %resume.entry, %resume.entry
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !653
  %.not.i.i596 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i596, label %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %AfterCoroSuspend
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fx) #43
  br label %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit

_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit: ; preds = %AfterCoroSuspend, %bb.bg
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.0.copyload.i = load ptr, ptr %i.fz, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 960)
          to label %CoroEnd unwind label %bb.bh

bb.bh:                                            ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  tail call void @__clang_call_terminate(ptr %i.gb) #53
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: coro_only_destroy_when_complete inlinehint mustprogress uwtable
define internal void @_ZN7coro_io4postIZNS_8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio3ssl6streamIRNS6_19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEEENS6_15basic_streambufISaIcEEEEEN12async_simple4coro4LazyIS4_EERT_RT0_mEUlOSN_E_SF_EENSL_ISN_EESP_RT1_EUlvE_SC_EENSL_INSJ_3TryIN4util15function_traitsISN_E11return_typeEEEEESN_SP_.resume(ptr noundef nonnull align 8 dereferenceable(216) %0) #50 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.reload.addr34 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.reload.addr35 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend23, !prof !3145

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr33 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr34, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !410  ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !410
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !409
  store ptr %i.g, ptr %i.f, align 8, !tbaa !409
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !429
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr33)
          to label %AfterCoroSave21 unwind label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #53
  unreachable

AfterCoroSave21:                                  ; preds = %AfterCoroSuspend
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !412
  store ptr %i.n, ptr %i.m, align 8, !tbaa !412
  store ptr %.reload.addr34, ptr %.reload.addr35, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.reload.addr, ptr %i.o, align 8
  store i8 1, ptr %index.addr, align 8
  store ptr %0, ptr %.reload.addr34, align 8, !tbaa !260
  invoke void @_ZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio3ssl6streamIRNS9_19basic_stream_socketINS9_2ip3tcpENS9_15any_io_executorEEEEENS9_15basic_streambufISaIcEEEEENS1_4coro4LazyIS7_EERT_RT0_mEUlOSP_E_SI_EENSN_ISP_EESR_RT1_EUlvE_SF_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSP_(ptr noundef nonnull align 8 dereferenceable(57) %.reload.addr, ptr nonnull %.reload.addr34)
          to label %CoroEnd unwind label %bb.b

bb.b:                                             ; preds = %AfterCoroSave21
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #53
  unreachable

AfterCoroSuspend23:                               ; preds = %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %.reload.addr35, align 8, !tbaa !8071, !nonnull !295, !align !426
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.v = load i8, ptr %i.r, align 8, !tbaa !1202
  switch i8 %i.v, label %bb.e [
    i8 -1, label %bb.f
    i8 0, label %bb.f
    i8 1, label %bb.c
    i8 2, label %bb.d
  ], !prof !1396

bb.c:                                             ; preds = %AfterCoroSuspend23
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !653
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN12async_simple3TryIvEENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_S7_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %AfterCoroSuspend23
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !653
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN12async_simple3TryIvEENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_S7_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i.i.i.i

bb.e:                                             ; preds = %AfterCoroSuspend23
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN12async_simple3TryIvEENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_S7_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.u) #43
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN12async_simple3TryIvEENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_S7_S9_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i.i.i.i, %bb.d, %bb.c, %AfterCoroSuspend23, %AfterCoroSuspend23
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !653
  store ptr %i.y, ptr %i.u, align 8, !tbaa !653
  store ptr null, ptr %i.t, align 8, !tbaa !653
  store i8 1, ptr %i.r, align 8, !tbaa !1202
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !410
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !433
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(57) %.reload.addr)
          to label %_ZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio3ssl6streamIRNS9_19basic_stream_socketINS9_2ip3tcpENS9_15any_io_executorEEEEENS9_15basic_streambufISaIcEEEEENS1_4coro4LazyIS7_EERT_RT0_mEUlOSP_E_SI_EENSN_ISP_EESR_RT1_EUlvE_SF_ED2Ev.exit11 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #53
  unreachable

end_hunk_7
