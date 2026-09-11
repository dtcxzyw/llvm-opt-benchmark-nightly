Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Subprocess?download=true
inline.NumInlined: 2346
inline.NumDeleted: 1250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5folly10Subprocess16waitAndGetRusageEP6rusage:bb.a
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.b, align 8, !tbaa !39
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !39
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.42, i32 noundef 1216, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.e unwind label %bb.g       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.68, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.73, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load i32, ptr %1, align 8, !tbaa !161
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.m)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.74, i64 noundef 28)
          to label %.critedge11 unwind label %bb.g ; 0 uses

.critedge11:                                      ; preds = %bb.f
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %.critedge12

.critedge12:                                      ; preds = %bb.b, %.critedge11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.p = load i32, ptr %i.a, align 4, !tbaa !33
  call void @_ZN5folly17ProcessReturnCode4makeEi(ptr dead_on_unwind nonnull writable sret(%"class.folly::ProcessReturnCode") align 4 %4, i32 noundef %i.p)
  %i.q = load i32, ptr %4, align 4, !tbaa !41     ; 2 uses
  store i32 %i.q, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  store i32 -1, ptr %1, align 8, !tbaa !161
  store i32 %i.q, ptr %0, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void

bb.g:                                             ; preds = %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10Subprocess11waitCheckedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::ProcessReturnCode", align 4 ; 4 uses
  %2 = alloca %"class.folly::ProcessReturnCode", align 4 ; 3 uses
  %3 = alloca %"class.folly::ProcessReturnCode", align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN5folly10Subprocess4waitEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::ProcessReturnCode") align 4 %2, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 5 uses
  store i32 %i.b, ptr %3, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %switch.i = icmp ult i32 %i.b, -2
  %i.c = and i32 %i.b, 127
  %i.d = icmp eq i32 %i.c, 0
  %or.cond.i = and i1 %switch.i, %i.d
  br i1 %or.cond.i, label %_ZNK5folly17ProcessReturnCode5stateEv.exit.i, label %_ZNK5folly17ProcessReturnCode5stateEv.exit.thread.i

_ZNK5folly17ProcessReturnCode5stateEv.exit.i:     ; preds = %bb.a
  call void @_ZNK5folly17ProcessReturnCode7enforceENS0_5StateE(ptr noundef nonnull readonly align 4 dereferenceable(4) %3, i32 noundef 2)
  %i.e = and i32 %i.b, 65280
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %_ZN5folly12_GLOBAL__N_111checkStatusENS_17ProcessReturnCodeE.exit, label %_ZNK5folly17ProcessReturnCode5stateEv.exit.thread.i

_ZNK5folly17ProcessReturnCode5stateEv.exit.thread.i: ; preds = %_ZNK5folly17ProcessReturnCode5stateEv.exit.i, %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 24) #48 ; 3 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !33
  invoke void @_ZN5folly18CalledProcessErrorC1ENS_17ProcessReturnCodeE(ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dead_on_return %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK5folly17ProcessReturnCode5stateEv.exit.thread.i
  call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN5folly18CalledProcessErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
  unreachable

bb.c:                                             ; preds = %_ZNK5folly17ProcessReturnCode5stateEv.exit.thread.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #48
  resume { ptr, i32 } %i.g

_ZN5folly12_GLOBAL__N_111checkStatusENS_17ProcessReturnCodeE.exit: ; preds = %_ZNK5folly17ProcessReturnCode5stateEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10Subprocess11waitTimeoutENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::ProcessReturnCode") align 4 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, i64 %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %5 = alloca %"class.folly::ProcessReturnCode", align 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  tail call void @_ZNK5folly17ProcessReturnCode7enforceENS0_5StateE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1)
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  %i.e = mul nsw i64 %2, 1000000
  %i.f = add nsw i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.a
  %.sroa.027.0 = phi i64 [ 2, %bb.a ], [ %.sroa.speculated, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit ] ; 4 uses
  %i.h = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = load i32, ptr %1, align 8, !tbaa !161
  %i.j = call i32 @waitpid(i32 noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 1)
  switch i32 %i.j, label %.loopexit [
    i32 -1, label %bb.d
    i32 0, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__errno_location() #55
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.c, label %bb.e, !llvm.loop !1461

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.b, align 8, !tbaa !39
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !39
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.42, i32 noundef 1247, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.f unwind label %bb.h       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.68, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.69, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load i32, ptr %1, align 8, !tbaa !161
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.q)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.70, i64 noundef 19)
          to label %.critedge16.thread unwind label %bb.h ; 0 uses

.critedge16.thread:                               ; preds = %bb.g
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br label %.loopexit

bb.h:                                             ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  resume { ptr, i32 } %i.t

.loopexit:                                        ; preds = %bb.c, %.critedge16.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.u = load i32, ptr %i.a, align 4, !tbaa !33
  call void @_ZN5folly17ProcessReturnCode4makeEi(ptr dead_on_unwind nonnull writable sret(%"class.folly::ProcessReturnCode") align 4 %5, i32 noundef %i.u)
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  store i32 -1, ptr %1, align 8, !tbaa !161
  br label %.critedge18

bb.i:                                             ; preds = %bb.c
  %i.w = icmp sgt i64 %i.h, %i.f
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %i.c, align 4, !tbaa !33
  br label %.critedge18

bb.k:                                             ; preds = %bb.i
  %i.y = icmp slt i64 %.sroa.027.0, 1
  br i1 %i.y, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = udiv i64 %.sroa.027.0, 1000              ; 2 uses
  %.neg.i.i = mul nsw i64 %i.z, -1000
  %i.aa = add nsw i64 %.neg.i.i, %.sroa.027.0
  %i.ab = mul nsw i64 %i.aa, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  store i64 %i.z, ptr %3, align 8, !tbaa !1465
  store i64 %i.ab, ptr %i.g, align 8, !tbaa !1466
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ac = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call ptr @__errno_location() #55
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = icmp eq i32 %i.af, 4
  br i1 %i.ag, label %bb.m, label %.critedge.i, !llvm.loop !1462

.critedge.i:                                      ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.k, %.critedge.i
  %i.ah = shl nsw i64 %.sroa.027.0, 1
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.ah, i64 100)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  br label %bb.b, !llvm.loop !1463

.critedge18:                                      ; preds = %bb.j, %.loopexit
  %storemerge = phi i32 [ %i.x, %bb.j ], [ %i.v, %.loopexit ]
  store i32 %storemerge, ptr %0, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #6

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10Subprocess10sendSignalEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZNK5folly17ProcessReturnCode7enforceENS0_5StateE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 1)
  %i.b = load i32, ptr %0, align 8, !tbaa !161
  %i.c = tail call i32 @kill(i32 noundef %i.b, i32 noundef %1) #48
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly16throwSystemErrorIJRA5_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(5) @.str.76) #49
  unreachable

_ZN5folly14checkUnixErrorIJRA5_KcEEEvlDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRA5_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(5) %0) local_unnamed_addr #29 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #55
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  tail call void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %i.b, ptr noundef nonnull %0) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10Subprocess21waitOrTerminateOrKillENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::ProcessReturnCode") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 %2, i64 %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::ProcessReturnCode", align 4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @_ZNK5folly17ProcessReturnCode7enforceENS0_5StateE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @_ZN5folly10Subprocess11waitTimeoutENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::ProcessReturnCode") align 4 %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.b, -1
  br i1 %switch.selectcmp.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly10Subprocess15terminateOrKillENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind writable sret(%"class.folly::ProcessReturnCode") align 4 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 %i.b, ptr %0, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly18LogStreamProcessor15formatLogStringIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(464) %1, ptr %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i8 0, ptr %i.a, align 1, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.b = load i32, ptr %4, align 4, !tbaa !33
  %.sroa.03.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %5, align 16
  call void @_ZN5folly18LogStreamProcessor16vformatLogStringB5cxx11ENS_5RangeIPKcEEN3fmt2v917basic_format_argsINS6_20basic_format_contextINS6_8appenderEcEEEERb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %2, ptr %3, i64 1, ptr nonnull %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.c = load i8, ptr %i.a, align 1, !tbaa !253, !range !171, !noundef !172
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5folly7logging14appendToStringIiEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !33
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN5folly7logging14appendToStringIiEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = call ptr @__cxa_begin_catch(ptr %i.g) #48 ; 0 uses
  invoke void @_ZN5folly7logging6detail19appendRawObjectInfoERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKSt9type_infoPKhm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @_ZTIi, ptr noundef nonnull align 4 dereferenceable(4) %4, i64 noundef 4)
          to label %_ZN5folly11invoke_coldIRFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKiEJS7_RS9_ESA_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i.i unwind label %bb.d

_ZN5folly11invoke_coldIRFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKiEJS7_RS9_ESA_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i.i: ; preds = %bb.c
  invoke void @__cxa_end_catch()
          to label %_ZN5folly7logging14appendToStringIiEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #51
  unreachable

_ZN5folly7logging14appendToStringIiEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.b, %_ZN5folly11invoke_coldIRFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKiEJS7_RS9_ESA_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void

bb.f:                                             ; preds = %_ZN5folly11invoke_coldIRFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKiEJS7_RS9_ESA_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.i, %bb.d ]
  %i.m = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.m) #51
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5folly18LogStreamProcessorC2EPNS_17XlogFileScopeInfoENS_8LogLevelENS_5RangeIPKcEEjS7_NS0_12InternalTypeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(464), ptr noundef, i32 noundef, ptr, ptr, i32 noundef, ptr noundef byval(%"class.folly::Range") align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly18LogStreamProcessor16vformatLogStringB5cxx11ENS_5RangeIPKcEEN3fmt2v917basic_format_argsINS6_20basic_format_contextINS6_8appenderEcEEEERb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.folly::Range", align 8      ; 3 uses
  %7 = alloca %class.anon.173, align 8            ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  store ptr %5, ptr %7, align 8, !tbaa !1467
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.b, align 8, !tbaa !1468
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %i.e, i64 %3, ptr %4)
          to label %_ZN5folly15catch_exceptionIZNS_18LogStreamProcessor16vformatLogStringB5cxx11ENS_5RangeIPKcEEN3fmt2v917basic_format_argsINS7_20basic_format_contextINS7_8appenderEcEEEERbEUlvE_ZNS1_16vformatLogStringB5cxx11ES5_SC_SD_EUlvE0_JENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET2_OT_OT0_DpOT1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = call ptr @__cxa_begin_catch(ptr %i.g) #48 ; 0 uses
  invoke void @_ZN5folly11invoke_coldIZNS_18LogStreamProcessor16vformatLogStringB5cxx11ENS_5RangeIPKcEEN3fmt2v917basic_format_argsINS7_20basic_format_contextINS7_8appenderEcEEEERbEUlvE0_JESE_TnNSt9enable_ifIXntsr3std11is_functionIT1_EE5valueEiE4typeELi0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET3_OT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7) #56
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_end_catch()
          to label %_ZN5folly15catch_exceptionIZNS_18LogStreamProcessor16vformatLogStringB5cxx11ENS_5RangeIPKcEEN3fmt2v917basic_format_argsINS7_20basic_format_contextINS7_8appenderEcEEEERbEUlvE_ZNS1_16vformatLogStringB5cxx11ES5_SC_SD_EUlvE0_JENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET2_OT_OT0_DpOT1_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #51
end_hunk_0
