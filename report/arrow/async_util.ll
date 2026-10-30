Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/async_util?download=true
inline.NumInlined: 1791
inline.NumDeleted: 1060
begin_hunk_0_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
bb.g:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.i unwind label %bb.w

bb.i:                                             ; preds = %bb.h
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.aa) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !126 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %.sroa.speculated)
          to label %bb.j unwind label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !175, !range !85, !noundef !86
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !93  ; 2 uses
  %i.ap = load i64, ptr %1, align 8, !tbaa !149
  store i64 %i.ap, ptr %5, align 8, !tbaa !149
  store ptr null, ptr %1, align 8, !tbaa !149
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %5)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %5, align 8, !tbaa !149   ; 3 uses
  %.not.i25 = icmp eq ptr %i.at, null
  br i1 %.not.i25, label %bb.m, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i26

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i26: ; preds = %bb.l
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.at) #25, !inline_history !6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i26
  %i.ax = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load ptr, ptr %i.az, align 8, !tbaa !128 ; 4 uses
  %i.ba = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !31
  %.not.i.i.i.i = icmp eq ptr %.val18, null       ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.val18, i64 12 ; 3 uses
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !353
  %.not.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !20, !noalias !353
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !20, !noalias !353
  br label %_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit

bb.p:                                             ; preds = %bb.n
  %i.bf = atomicrmw volatile add ptr %i.bb, i32 1 acq_rel, align 4, !noalias !353 ; 0 uses
  br label %_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit

_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit: ; preds = %bb.m, %bb.o, %bb.p
  %.val21 = load ptr, ptr %4, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.q unwind label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i ; 3 uses

bb.q:                                             ; preds = %_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEEE, i64 16), ptr %i.bg, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store <2 x ptr> %i.ba, ptr %i.bh, align 8, !tbaa !31
  store ptr %i.bg, ptr %2, align 8, !tbaa !67
  invoke void @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val21, ptr noundef nonnull %2, i32 0, ptr null)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %2, align 8, !tbaa !67    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i29, label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i: ; preds = %bb.r
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #25, !inline_history !352
  br label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i8.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i: ; preds = %_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73, label %bb.t

bb.t:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.val18, i64 12 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i12.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i12.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !20 ; 2 uses
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i

bb.v:                                             ; preds = %bb.t
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i14.i = phi i32 [ %i.br, %bb.u ], [ %i.bt, %bb.v ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i14.i, 1
  br i1 %i.bu, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73

_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit: ; preds = %bb.r, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45

bb.w:                                             ; preds = %bb.g, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.h
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69: ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread

bb.x:                                             ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %5, align 8, !tbaa !149   ; 3 uses
  %.not.i32 = icmp eq ptr %i.by, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i33

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i33: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.by) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24

bb.y:                                             ; preds = %bb.j
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  %i.cd = load i64, ptr %1, align 8, !tbaa !149
  store i64 %i.cd, ptr %6, align 8, !tbaa !149
  store ptr null, ptr %1, align 8, !tbaa !149
  %i.ce = invoke fastcc noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %6, i32 noundef %.sroa.speculated, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.aa      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cf = load ptr, ptr %6, align 8, !tbaa !149   ; 3 uses
  %.not.i43 = icmp eq ptr %i.cf, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i44

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i44: ; preds = %bb.z
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cf) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45

bb.aa:                                            ; preds = %bb.y
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %6, align 8, !tbaa !149   ; 2 uses
  %.not.i46 = icmp eq ptr %i.ck, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i44, %bb.z, %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit
  %.0 = phi i1 [ true, %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit ], [ %i.ce, %bb.z ], [ %i.ce, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i44 ]
  %i.cl = load i8, ptr %i.al, align 8, !tbaa !175, !range !85, !noundef !86
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ab, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45
  store i8 0, ptr %i.al, align 8, !tbaa !175
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cp, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !70
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25, !inline_history !10
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25, !inline_history !10
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cs, %bb.af ], [ %i.dc, %bb.ag ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dd, label %bb.ah, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, !prof !71

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ad, %bb.ab, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.ai:                                            ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i, %bb.e
  %i.de = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, %bb.ai
  %.163 = phi i1 [ %.0, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit ], [ true, %bb.ai ]
  ret i1 %.163

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i, %bb.s
  %.val18.sink88 = phi ptr [ %i.bn, %bb.s ], [ %.val18, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i ], [ %i.ck, %bb.aa ] ; 2 uses
  %.sink87 = phi i64 [ 8, %bb.s ], [ 24, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i ], [ 8, %bb.aa ]
  %.pn13.ph.ph = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %i.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i ], [ %i.cj, %bb.aa ]
  %i.df = load ptr, ptr %.val18.sink88, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sink87
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %.val18.sink88) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i, %bb.aa
  %.pn13.ph = phi { ptr, i32 } [ %i.bo, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i ], [ %i.cj, %bb.aa ], [ %i.bm, %bb.s ], [ %i.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i ], [ %.pn13.ph.ph, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split ]
  call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit50

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i33
  call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread: ; preds = %bb.w, %bb.f, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i23, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24
  %.pn13.pn.pn.pn68 = phi { ptr, i32 } [ %i.bw, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69 ], [ %i.bx, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24 ], [ %i.r, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i23 ], [ %i.bv, %bb.w ], [ %i.r, %bb.f ]
  %i.di = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit50

_ZNSt11unique_lockISt5mutexED2Ev.exit50:          ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread
  %.pn13.pn.pn.pn67 = phi { ptr, i32 } [ %.pn13.ph, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73 ], [ %.pn13.pn.pn.pn68, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread ]
  resume { ptr, i32 } %.pn13.pn.pn.pn67
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl4spanEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl5PauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl6ResumeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl9QueueSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #28
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  ret i64 %i.h

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.217, align 8            ; 7 uses
  %5 = alloca %"class.std::unique_ptr.132", align 8 ; 6 uses
  %i.a = zext i1 %3 to i8
  %i.b = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125  ; 2 uses
  store i32 %2, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 %i.a, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !149    ; 4 uses
  store i64 %i.k, ptr %i.j, align 8
  store ptr null, ptr %1, align 8, !tbaa !149
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128, !noalias !361 ; 4 uses
  store ptr %i.p, ptr %i.n, align 8
  %i.q = icmp eq ptr %i.p, null
  %i.r = inttoptr i64 %i.k to ptr                 ; 2 uses
  br i1 %i.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 8, !noalias !361
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.t, %bb.b ], [ %i.x, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i32 %.06.i.i.i.i.i, 1
  %i.v = cmpxchg weak ptr %i.s, i32 %.06.i.i.i.i.i, i32 %i.u acq_rel monotonic, align 8, !noalias !361 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = extractvalue { i32, i1 } %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.c, !llvm.loop !11

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !361 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.y, align 8, !tbaa !30, !noalias !361
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !127, !noalias !361 ; 2 uses
  store ptr %i.z, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.aa = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc7 unwind label %bb.i, !inline_history !356 ; 11 uses

.noexc7:                                          ; preds = %bb.e
  %i.ab = extractvalue { i64, ptr } %i.f, 0
  %i.ac = extractvalue { i64, ptr } %i.f, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %i.aa, align 8, !tbaa !30, !noalias !362
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @_ZN5arrow4util7tracing4SpanC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #25, !noalias !362, !inline_history !359
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EE, i64 16), ptr %i.aa, align 8, !tbaa !30, !noalias !362
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ae, ptr noundef nonnull align 8 dereferenceable(5) %4, i64 5, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %i.k, ptr %i.af, align 8, !tbaa !149, !noalias !362
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !177, !noalias !362
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !26, !noalias !362
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !178, !noalias !362
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.ac, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !179, !noalias !362
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i8 0, ptr %i.aj, align 8, !tbaa !181, !noalias !362
  store ptr %i.aa, ptr %5, align 8, !tbaa !182
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %5)
          to label %bb.f unwind label %bb.g, !inline_history !356

bb.f:                                             ; preds = %.noexc7
  %i.ao = load ptr, ptr %5, align 8, !tbaa !149   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i: ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ao) #25, !inline_history !360
  br label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit

bb.g:                                             ; preds = %.noexc7
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !149   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.at, null
  br i1 %.not.i4.i, label %.body, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.at) #25, !inline_history !360
  br label %.body

_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i1 %i.an

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %bb.h
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.i ], [ %i.as, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i ], [ %i.as, %bb.g ]
  call fastcc void @_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ax, %bb.h ], [ %i.ax, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !175, !range !85, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !70
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !363
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !363
  br label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit, !prof !71

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !128 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_ED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !20   ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_ED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.h = load ptr, ptr %.val, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !364
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_ED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_ED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !128 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !20   ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !365
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEE6invokeES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128, !noalias !369 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !369
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !369 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !11

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !369
  %.not.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %.thread.i.i, label %_ZNKSt8weak_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE4lockEv.exit.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !127, !noalias !369 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE4lockEv.exit.i.i
  %i.m = load ptr, ptr %.val, align 8, !tbaa !72
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv(ptr noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %.thread.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.d) #25
  resume { ptr, i32 } %i.o

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %_ZNKSt8weak_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE4lockEv.exit.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.p = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.i.i
  store i32 0, ptr %i.e, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !70
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv:bb.a
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.h, align 8, !tbaa !160
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.g, align 8, !tbaa !161
  %i.ak = invoke noundef zeroext i1 @_ZN5arrow10FutureImpl14TryAddCallbackERKSt8functionIFNS_8internal6FnOnceIFvRKS0_EEEvEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 0, ptr null)
          to label %bb.j unwind label %bb.m, !inline_history !370

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.p unwind label %bb.l, !inline_history !370 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29, !inline_history !370
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !161 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.aq, null
  br i1 %.not.i5.i, label %_ZNSt14_Function_baseD2Ev.exit6.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i unwind label %bb.o, !inline_history !370 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #29, !inline_history !370
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i:                ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.thread118

bb.p:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %i.ak, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %3, align 8, !tbaa !63
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.au)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %3, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !72
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.s, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt1

.thread110:                                       ; preds = %bb.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.e, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.thread115:                                       ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.t
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %.thread118

bb.s:                                             ; preds = %bb.r
  %i.bc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i27 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt0, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bc) #28
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !93  ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.132") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.v unwind label %bb.ap

bb.v:                                             ; preds = %bb.u
  %i.bh = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  %i.bi = load i64, ptr %4, align 8, !tbaa !149
  store i64 %i.bi, ptr %5, align 8, !tbaa !149
  store ptr null, ptr %4, align 8, !tbaa !149
  %i.bj = invoke fastcc noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %5, i32 noundef %.sroa.speculated, i1 noundef zeroext true)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %5, align 8, !tbaa !149   ; 3 uses
  %.not.i34 = icmp eq ptr %i.bk, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %bb.w
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bk) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i
  br i1 %i.bj, label %bb.z, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit43.jt1

bb.x:                                             ; preds = %bb.aa
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37

bb.y:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %5, align 8, !tbaa !149   ; 3 uses
  %.not.i35 = icmp eq ptr %i.bq, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36: ; preds = %bb.y
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bq) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %i.bu = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i39 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i39, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit43.jt0, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bu) #28
          to label %.noexc42 unwind label %bb.x

.noexc42:                                         ; preds = %bb.aa
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit43.jt0:   ; preds = %bb.z
  %i.bv = load ptr, ptr %4, align 8, !tbaa !149   ; 3 uses
  %.not.i44.jt0 = icmp eq ptr %i.bv, null
  br i1 %.not.i44.jt0, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46.jt0, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45.jt0

_ZNSt11unique_lockISt5mutexE4lockEv.exit43.jt1:   ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %i.bw = load ptr, ptr %4, align 8, !tbaa !149   ; 3 uses
  %.not.i44.jt1 = icmp eq ptr %i.bw, null
  br i1 %.not.i44.jt1, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46.jt1, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45.jt1

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45.jt0: ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit43.jt0
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bv) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46.jt0

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45.jt1: ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit43.jt1
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bw) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46.jt1

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46.jt0: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45.jt0, %_ZNSt11unique_lockISt5mutexE4lockEv.exit43.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt0

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46.jt1: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45.jt1, %_ZNSt11unique_lockISt5mutexE4lockEv.exit43.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt1

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36, %bb.y, %bb.x
  %.pn17 = phi { ptr, i32 } [ %i.bo, %bb.x ], [ %i.bp, %bb.y ], [ %i.bp, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36 ]
  %i.cd = load ptr, ptr %4, align 8, !tbaa !149   ; 3 uses
  %.not.i47 = icmp eq ptr %i.cd, null
  br i1 %.not.i47, label %.thread122, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cd) #25, !inline_history !6
  br label %.thread122

_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt0:     ; preds = %bb.s, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46.jt0
  %i.ch = load i8, ptr %i.e, align 8, !tbaa !175, !range !85, !noundef !86
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ab, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit.jt0

_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt1:     ; preds = %bb.r, %bb.p, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46.jt1
  %i.cj = load i8, ptr %i.e, align 8, !tbaa !175, !range !85, !noundef !86
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ac, label %.thread106

bb.ab:                                            ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt0
  store i8 0, ptr %i.e, align 8, !tbaa !175
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !26  ; 8 uses
  %.not.i.i.i.i.i.i.i.jt0 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i.jt0, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit.jt0, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt1
  store i8 0, ptr %i.e, align 8, !tbaa !175
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !26  ; 8 uses
  %.not.i.i.i.i.i.i.i.jt1 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.jt1, label %.thread106, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 4294967297
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  br i1 %i.cp, label %bb.af, label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.ag, label %bb.ai

bb.af:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cn, align 8, !tbaa !69
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !70
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #25, !inline_history !10
  %i.cz = load ptr, ptr %i.cl, align 8, !tbaa !30
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #25, !inline_history !10
  br label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit.jt0

bb.ag:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cr, align 8, !tbaa !69
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !70
  %i.dd = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #25, !inline_history !10
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #25, !inline_history !10
  br label %.thread106

bb.ah:                                            ; preds = %bb.ad
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.jt0 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.jt0, label %bb.al, label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.jt1 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.jt1, label %bb.am, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dl = add nsw i32 %i.cq, -1
  store i32 %i.dl, ptr %i.cn, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt0

bb.ak:                                            ; preds = %bb.ai
  %i.dm = add nsw i32 %i.cu, -1
  store i32 %i.dm, ptr %i.cr, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt1

bb.al:                                            ; preds = %bb.ah
  %i.dn = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt0

bb.am:                                            ; preds = %bb.ai
  %i.do = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt0: ; preds = %bb.aj, %bb.al
  %.0.i.i.i.i.i.i.i.i.i.jt0 = phi i32 [ %i.dn, %bb.al ], [ %i.cq, %bb.aj ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.jt0, 1
  br i1 %i.dp, label %bb.an, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit.jt0, !prof !71

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt1: ; preds = %bb.ak, %bb.am
  %.0.i.i.i.i.i.i.i.i.i.jt1 = phi i32 [ %i.do, %bb.am ], [ %i.cu, %bb.ak ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.jt1, 1
  br i1 %i.dq, label %bb.ao, label %.thread106, !prof !71

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt0
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #25
  br label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit.jt0

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #25
  br label %.thread106

_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit.jt0: ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt0, %bb.an, %bb.af, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, !llvm.loop !371

.thread106:                                       ; preds = %bb.ac, %bb.ag, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.jt1, %_ZNSt11unique_lockISt5mutexE4lockEv.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.thread:                                          ; preds = %bb.c
  %i.dr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.thread106, %.thread
  ret void

.thread118:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit6.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn20.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp127, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ap, %_ZNSt14_Function_baseD2Ev.exit6.i ]
  call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit52

.thread122:                                       ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit52

bb.ap:                                            ; preds = %bb.u
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread115, %.thread110
  %.pn20.pn.pn.pn114 = phi { ptr, i32 } [ %i.ba, %.thread110 ], [ %i.ds, %bb.ap ], [ %i.bb, %.thread115 ]
  %i.dt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit52

_ZNSt11unique_lockISt5mutexED2Ev.exit52:          ; preds = %.thread122, %.thread118, %bb.aq
  %.pn20.pn.pn.pn113 = phi { ptr, i32 } [ %.pn17, %.thread122 ], [ %.pn20.pn.pn.pn114, %bb.aq ], [ %.pn20.ph, %.thread118 ]
  resume { ptr, i32 } %.pn20.pn.pn.pn113
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::internal::FnOnce.161") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !385
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !387 ; 2 uses
  %i.a = getelementptr i8, ptr %.val.val, i64 8
  %i.b = getelementptr i8, ptr %.val.val, i64 16
  %.val.val.val1 = load ptr, ptr %i.b, align 8, !tbaa !128 ; 5 uses
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.val.val1, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val.val1, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !389
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !20, !noalias !389
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !20, !noalias !389
  br label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4, !noalias !389 ; 0 uses
  br label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i

_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %_ZSt10__invoke_rIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEERZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSE_13ContinueTasksEvENKSF_clEvEUlRKNS0_6StatusEE_NSA_21WrapStatusyOnComplete8CallbackISJ_EEEEbT_NS0_15CallbackOptionsEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOSS_DpOST_.exit unwind label %bb.e, !noalias !388, !inline_history !382 ; 3 uses

bb.e:                                             ; preds = %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit9.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val.val.val1, i64 12 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !388
  %.not.i.i.i.i.i6.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.k, align 4, !tbaa !20, !noalias !388 ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !20, !noalias !388
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i

bb.h:                                             ; preds = %bb.f
  %i.o = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4, !noalias !388
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i8.i = phi i32 [ %i.m, %bb.g ], [ %i.o, %bb.h ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i8.i, 1
  br i1 %i.p, label %bb.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit9.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i
  %i.q = load ptr, ptr %.val.val.val1, align 8, !tbaa !30, !noalias !388
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !388
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED0Ev:bb.a
  store i32 %i.e, ptr %i.b, align 4, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !391
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEE6invokeES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128, !noalias !396 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !396
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !396 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !11

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !396
  %.not.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %.thread.i.i, label %_ZNKSt8weak_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE4lockEv.exit.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !127, !noalias !396 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE4lockEv.exit.i.i
  %i.m = load ptr, ptr %.val, align 8, !tbaa !72
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv(ptr noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %.thread.i.i unwind label %bb.g, !inline_history !394

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.d) #25, !inline_history !394
  resume { ptr, i32 } %i.o

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %_ZNKSt8weak_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE4lockEv.exit.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.p = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.i.i
  store i32 0, ptr %i.e, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !70
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !395
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !395
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

bb.i:                                             ; preds = %.thread.i.i
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i6.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ab = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.l, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, !prof !71

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !394
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit: ; preds = %bb.c, %bb.a, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !26  ; 8 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !70
  %i.g = load ptr, ptr %.val, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !397
  %i.j = load ptr, ptr %.val, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !397
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !181, !range !85, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 8, !tbaa !181
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !62
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !70
  %i.p = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !398
  %i.s = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !398
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !71

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !149 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aa) #25, !inline_history !399
  br label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit

_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1, label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i: ; preds = %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #25, !inline_history !12
  br label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit

_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit: ; preds = %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED0Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !181, !range !85, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 8, !tbaa !181
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !62
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27, !inline_history !403
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !70
  %i.p = load ptr, ptr %.val.i.i, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #25, !inline_history !400
  %i.s = load ptr, ptr %.val.i.i, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #25, !inline_history !400
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !71

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #25, !inline_history !403
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !149 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aa) #25, !inline_history !401
  br label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i

_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i, %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i: ; preds = %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #25, !inline_history !402
  br label %_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED2Ev.exit

_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED2Ev.exit: ; preds = %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EclEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.155") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.236, align 8            ; 5 uses
  %3 = alloca %"class.std::function", align 8     ; 12 uses
  %4 = alloca %"class.arrow::Result.155", align 8 ; 13 uses
  %5 = alloca %"class.arrow::Future", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !414
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149, !noalias !414 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30, !noalias !414
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !414
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.155") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !414, !inline_history !406
  %i.g = load ptr, ptr %4, align 8, !tbaa !72, !noalias !414
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #25, !inline_history !406
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !414
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !417 ; 3 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !63, !alias.scope !418, !noalias !414
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26, !noalias !417 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !26, !noalias !417
  store ptr %i.m, ptr %i.k, align 8, !tbaa !26, !alias.scope !418, !noalias !414
  store ptr null, ptr %i.i, align 8, !tbaa !63, !noalias !417
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !414
  store ptr %i.n, ptr %2, align 8, !noalias !414
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.o, align 8, !noalias !414
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !414
  %i.p = ptrtoint ptr %2 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !414
  store i64 %i.p, ptr %3, align 8, !tbaa !31, !noalias !414
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvEUlvE_ZZZNSF_10SubmitTaskESL_ibENSM_clEvENKSN_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISR_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.r, align 8, !tbaa !160, !noalias !414
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvEUlvE_ZZZNSF_10SubmitTaskESL_ibENSM_clEvENKSN_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISR_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation, ptr %i.q, align 8, !tbaa !161, !noalias !414
  %i.t = invoke noundef zeroext i1 @_ZN5arrow10FutureImpl14TryAddCallbackERKSt8functionIFNS_8internal6FnOnceIFvRKS0_EEEvEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 0, ptr null)
          to label %bb.d unwind label %bb.g, !noalias !414, !inline_history !411

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !161, !noalias !414 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.j unwind label %bb.f, !noalias !414, !inline_history !411 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #29, !noalias !414, !inline_history !411
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !161, !noalias !414 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i5.i.i, label %_ZNSt14_Function_baseD2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i.i unwind label %bb.i, !noalias !414, !inline_history !411 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #29, !noalias !414, !inline_history !411
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i.i:              ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !414
  br label %.body.i

bb.j:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !414
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !414
  br i1 %i.t, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val9.i = load ptr, ptr %i.n, align 8, !tbaa !177, !noalias !414
  %i.ad = getelementptr inbounds nuw i8, ptr %.val9.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !126, !noalias !414 ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !421, !noalias !414
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !30, !noalias !414
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !414
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %i.af)
          to label %bb.l unwind label %bb.n, !noalias !414, !inline_history !406
end_hunk_2
begin_hunk_3_@_ZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD2Ev:bb.a
bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val2) #25
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i, %bb.f, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplESt14default_deleteIS6_EED2Ev.exit4.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplESt14default_deleteIS6_EED2Ev.exit4.i ], [ %i.bf, %bb.p ], [ %i.ah, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i ], [ %i.ah, %bb.f ]
  %i.bg = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.132", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.b = atomicrmw add ptr %.val, i32 1 seq_cst, align 4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26, !noalias !462 ; 6 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !149, !noalias !462
  store ptr null, ptr %1, align 8, !tbaa !149, !noalias !462
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.g, align 8, !tbaa !26, !noalias !462 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.a, align 8, !tbaa !31, !noalias !462
  %.not.i.i.i.i = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i.i.i, label %_ZSt11make_uniqueIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS1_18AsyncTaskScheduler4TaskESt14default_deleteIS6_EEE11WrapperTaskJS9_RSt10shared_ptrINS3_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !462
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !20, !noalias !462
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !20, !noalias !462
  br label %_ZSt11make_uniqueIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS1_18AsyncTaskScheduler4TaskESt14default_deleteIS6_EEE11WrapperTaskJS9_RSt10shared_ptrINS3_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !462 ; 0 uses
  br label %_ZSt11make_uniqueIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS1_18AsyncTaskScheduler4TaskESt14default_deleteIS6_EEE11WrapperTaskJS9_RSt10shared_ptrINS3_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS1_18AsyncTaskScheduler4TaskESt14default_deleteIS6_EEE11WrapperTaskJS9_RSt10shared_ptrINS3_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %i.e, align 8, !tbaa !30, !noalias !462
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN5arrow4util7tracing4SpanC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #25, !noalias !462
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTask, i64 16), ptr %i.e, align 8, !tbaa !30, !noalias !462
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.f, ptr %i.o, align 8, !tbaa !149, !noalias !462
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <2 x ptr> %i.h, ptr %i.p, align 8, !tbaa !31, !noalias !462
  store ptr %i.e, ptr %2, align 8, !tbaa !182
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZSt11make_uniqueIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS1_18AsyncTaskScheduler4TaskESt14default_deleteIS6_EEE11WrapperTaskJS9_RSt10shared_ptrINS3_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.u = load ptr, ptr %2, align 8, !tbaa !149    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskES_INS1_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTaskS6_IS9_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %bb.e
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.u) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskES_INS1_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTaskS6_IS9_EED2Ev.exit

_ZNSt10unique_ptrIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskES_INS1_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTaskS6_IS9_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i, %bb.e
  ret i1 %i.t

bb.f:                                             ; preds = %_ZSt11make_uniqueIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS1_18AsyncTaskScheduler4TaskESt14default_deleteIS6_EEE11WrapperTaskJS9_RSt10shared_ptrINS3_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !149    ; 3 uses
  %.not.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskES_INS1_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTaskS6_IS9_EED2Ev.exit8, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i4

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i4: ; preds = %bb.f
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.z) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskES_INS1_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTaskS6_IS9_EED2Ev.exit8

_ZNSt10unique_ptrIZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskES_INS1_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTaskS6_IS9_EED2Ev.exit8: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i4, %bb.f
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl4spanEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateEEEvRS0_PT_.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = load ptr, ptr %.val, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.val) #25, !inline_history !463
  br label %_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateEEEvRS0_PT_.exit

_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateEEEvRS0_PT_.exit: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_ED2Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !181, !range !85, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.a, align 8, !tbaa !181
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !62
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit, label %bb.c, !prof !73

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !84, !range !85, !noundef !86
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #25
  br label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit

_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.c, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i: ; preds = %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #25, !inline_history !12
  br label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit

_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit: ; preds = %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_ED0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !181, !range !85, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.a, align 8, !tbaa !181
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !62
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27, !inline_history !465
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit.i, label %bb.c, !prof !73

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !84, !range !85, !noundef !86
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #25, !inline_history !465
  br label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit.i

_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit.i: ; preds = %bb.d, %bb.c, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_ED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i: ; preds = %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #25, !inline_history !464
  br label %_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_ED2Ev.exit

_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_ED2Ev.exit: ; preds = %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit.i, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_EclEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.155") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %2, align 8, !tbaa !72, !alias.scope !468
  call void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %i.b = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !84, !range !85, !noundef !86
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal { i64, ptr } @_ZNK5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_E4nameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !178
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !179
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTask, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !26  ; 8 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !70
  %i.g = load ptr, ptr %.val, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !13
  %i.j = load ptr, ptr %.val, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !13
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1, label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #25, !inline_history !12
  br label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit

_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTask, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !70
  %i.g = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !469
  %i.j = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !469
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

end_hunk_3
