Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/signalhandler?download=true
inline.NumInlined: 201
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5nglog10LogMessage9LogStreamC2EPcil:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5nglog12base_logging12LogStreamBufE, i64 16), ptr %i.r, align 8, !tbaa !11
  %i.u = sext i32 %3 to i64
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.x, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.ab, align 8, !tbaa !26
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  %i.ag = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.af, ptr noundef nonnull %i.r)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.r, align 8, !tbaa !11
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #20
  resume { ptr, i32 } %i.ah
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nglog10LogMessage9LogStreamC1EPcil(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.d, align 1, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5nglog10LogMessage9LogStreamE0_So, i64 24), ptr %0, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5nglog10LogMessage9LogStreamE0_So, i64 64), ptr %i.a, align 8, !tbaa !11
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef null)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 24), ptr %0, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 64), ptr %i.a, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5nglog12base_logging12LogStreamBufE, i64 16), ptr %i.f, align 8, !tbaa !11
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.k, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %3, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.p, align 8, !tbaa !26
  %i.q = load ptr, ptr %0, align 8, !tbaa !11
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %i.f)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !11
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.w, %bb.e ]
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5nglog31IsFailureSignalHandlerInstalledEv() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @sigemptyset(ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.c = call i32 @sigaction(i32 noundef 6, ptr noundef null, ptr noundef nonnull %0) #20 ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !33
  %i.e = icmp eq ptr %i.d, @_ZN5nglog12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret i1 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN5nglog12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 34 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca [256 x i8], align 16              ; 17 uses
  %i.c = alloca [32 x ptr], align 16              ; 4 uses
  %6 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5nglog12_GLOBAL__N_132t_failure_signal_handler_enteredE) ; 3 uses
  %i.e = load volatile i32, ptr %i.d, align 4, !tbaa !55
  %.not = icmp eq i32 %i.e, 0
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %.sink.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.sink34.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.sink34.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.sink35.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.sink35.sroa.gep90 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 152, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = call i32 @sigemptyset(ptr noundef nonnull %i.f) #20 ; 0 uses
  store ptr null, ptr %6, align 8, !tbaa !33
  %i.h = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %6, ptr noundef null) #20 ; 0 uses
  %i.i = call i32 @getpid() #20
  %i.j = call i32 @kill(i32 noundef %i.i, i32 noundef %0) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.es

bb.c:                                             ; preds = %bb.a
  store volatile i32 1, ptr %i.d, align 4, !tbaa !55
  %i.k = cmpxchg weak ptr @_ZN5nglog12_GLOBAL__N_132g_failure_signal_handler_enteredE, i8 0, i8 1 acquire monotonic, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %._crit_edge, label %_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit.preheader

.loopexit:                                        ; preds = %_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit, %_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit.preheader
  %i.m = cmpxchg weak ptr @_ZN5nglog12_GLOBAL__N_132g_failure_signal_handler_enteredE, i8 0, i8 1 acquire monotonic, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %._crit_edge, label %_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit.preheader, !llvm.loop !47

_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit.preheader: ; preds = %bb.c, %.loopexit
  %i.o = load atomic i8, ptr @_ZN5nglog12_GLOBAL__N_132g_failure_signal_handler_enteredE acquire, align 1, !range !56, !noundef !57
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit, label %.loopexit

_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit: ; preds = %_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit.preheader, %_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit
  %i.q = tail call i32 @sched_yield() #20         ; 0 uses
  %i.r = load atomic i8, ptr @_ZN5nglog12_GLOBAL__N_132g_failure_signal_handler_enteredE acquire, align 1, !range !56, !noundef !57
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_.exit, label %.loopexit, !llvm.loop !48

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.t = tail call i64 @time(ptr noundef null) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store <8 x i8> <i8 42, i8 42, i8 42, i8 32, i8 65, i8 98, i8 111, i8 114>, ptr %i.b, align 16, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x i8> <i8 116, i8 101, i8 100, i8 32>, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 97, ptr %i.v, align 4, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 116, ptr %i.w, align 1, !tbaa !33
  %.0.lcssa.i.sroa.gep72.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 32, ptr %.0.lcssa.i.sroa.gep72.i.i, align 2, !tbaa !33
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 241
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i.preheader.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.015.i.i.i40 = phi i64 [ %i.t, %._crit_edge ], [ %i.z, %bb.d ] ; 3 uses
  %indvars.iv.i.i39 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 %indvars.iv.i.i39
  %i.y = urem i64 %.015.i.i.i40, 10
  %i.z = udiv i64 %.015.i.i.i40, 10
  %i.aa = trunc nuw nsw i64 %i.y to i8
  %i.ab = or disjoint i8 %i.aa, 48
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !33
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i39, 1 ; 3 uses
  %i.ac = icmp ult i64 %.015.i.i.i40, 10
  br i1 %i.ac, label %split.i.i.i, label %bb.d

split.i.i.i:                                      ; preds = %bb.e
  %.not195.i.i = icmp eq i64 %indvars.iv.i.i39, 0
  br i1 %.not195.i.i, label %.thread187.i.i, label %.lr.ph.i.i.preheader.i.i.i

.thread187.i.i:                                   ; preds = %split.i.i.i
  %.ptr48108.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <8 x i8> <i8 32, i8 40, i8 117, i8 110, i8 105, i8 120, i8 32, i8 116>, ptr %.ptr48108.i.i, align 16, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 105, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 109, ptr %i.ae, align 1, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 101, ptr %i.af, align 2, !tbaa !33
  br label %bb.q

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.d, %split.i.i.i
  %.pre-phi.i104.i.i = phi i64 [ %indvars.iv.next.i.i, %split.i.i.i ], [ 241, %bb.d ] ; 14 uses
  %i.ag = getelementptr i8, ptr %.ptr.i.i, i64 %.pre-phi.i104.i.i
  %.012.i.i.i.i.i = getelementptr i8, ptr %i.ag, i64 -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0913.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.ptr.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %i.ah = load i8, ptr %.0913.i.i.i.i.i, align 1, !tbaa !33
  %i.ai = load i8, ptr %.014.i.i.i.i.i, align 1, !tbaa !33
  store i8 %i.ai, ptr %.0913.i.i.i.i.i, align 1, !tbaa !33
  store i8 %i.ah, ptr %.014.i.i.i.i.i, align 1, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i.i.i, i64 -1 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %.0.i.i.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i.i, !llvm.loop !0

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.add.i.i = add nuw nsw i64 %.pre-phi.i104.i.i, 15 ; 3 uses
  %.ptr48.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add.i.i ; 11 uses
  %i.al = icmp ult i64 %.pre-phi.i104.i.i, 241
  br i1 %i.al, label %bb.f, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i

bb.f:                                             ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i.i
  store i8 32, ptr %.ptr48.i.i, align 1, !tbaa !33
  %.not.i.i = icmp eq i64 %.pre-phi.i104.i.i, 240
  br i1 %.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 1
  store i8 40, ptr %i.am, align 1, !tbaa !33
  %i.an = icmp samesign ult i64 %.pre-phi.i104.i.i, 239
  br i1 %i.an, label %bb.h, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 2
  store i8 117, ptr %i.ao, align 1, !tbaa !33
  %.not73.i.i.a = icmp eq i64 %.pre-phi.i104.i.i, 238
  br i1 %.not73.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 3
  store i8 110, ptr %i.ap, align 1, !tbaa !33
  %i.aq = icmp samesign ult i64 %.pre-phi.i104.i.i, 237
  br i1 %i.aq, label %bb.j, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 4
  store i8 105, ptr %i.ar, align 1, !tbaa !33
  %.not74.i.i.a = icmp eq i64 %.pre-phi.i104.i.i, 236
  br i1 %.not74.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 5
  store i8 120, ptr %i.as, align 1, !tbaa !33
  %i.at = icmp samesign ult i64 %.pre-phi.i104.i.i, 235
  br i1 %i.at, label %bb.l, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 6
  store i8 32, ptr %i.au, align 1, !tbaa !33
  %.not75.i.i.a = icmp eq i64 %.pre-phi.i104.i.i, 234
  br i1 %.not75.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 7
  store i8 116, ptr %i.av, align 1, !tbaa !33
  %i.aw = icmp samesign ult i64 %.pre-phi.i104.i.i, 233
  br i1 %i.aw, label %bb.n, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 8
  store i8 105, ptr %i.ax, align 1, !tbaa !33
  %.not76.i.i.a = icmp eq i64 %.pre-phi.i104.i.i, 232
  br i1 %.not76.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 9
  store i8 109, ptr %i.ay, align 1, !tbaa !33
  %i.az = icmp samesign ult i64 %.pre-phi.i104.i.i, 231
  br i1 %i.az, label %bb.p, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.ptr48.i.i, i64 10
  store i8 101, ptr %i.ba, align 1, !tbaa !33
  %.not77.i.i.a = icmp eq i64 %.pre-phi.i104.i.i, 230
  br i1 %.not77.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread187.i.i
  %.add111118125133140148155163170178185193.i.i = phi i64 [ 16, %.thread187.i.i ], [ %.add.i.i, %bb.p ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add111118125133140148155163170178185193.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 11
  store i8 41, ptr %i.bc, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i.i
  %.add110.i.i = phi i64 [ %.add.i.i, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i.i ], [ %.add111118125133140148155163170178185193.i.i, %bb.q ], [ 255, %bb.f ], [ 245, %bb.p ], [ 254, %bb.g ], [ 248, %bb.m ], [ 253, %bb.h ], [ 246, %bb.o ], [ 252, %bb.i ], [ 249, %bb.l ], [ 251, %bb.j ], [ 247, %bb.n ], [ 250, %bb.k ]
  %.0.lcssa.i4.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i.i ], [ 12, %bb.q ], [ 1, %bb.f ], [ 11, %bb.p ], [ 2, %bb.g ], [ 8, %bb.m ], [ 3, %bb.h ], [ 10, %bb.o ], [ 4, %bb.i ], [ 7, %bb.l ], [ 5, %bb.j ], [ 9, %bb.n ], [ 6, %bb.k ]
  %.add46.i.i = add nuw nsw i64 %.0.lcssa.i4.i.i, %.add110.i.i ; 17 uses
  %i.bd = icmp samesign ult i64 %.add46.i.i, 256
  br i1 %i.bd, label %bb.r, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

bb.r:                                             ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i
  %.ptr50.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add46.i.i ; 15 uses
  store i8 32, ptr %.ptr50.i.i, align 1, !tbaa !33
  %.not78.i.i.a = icmp eq i64 %.add46.i.i, 255
  br i1 %.not78.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.ptr50.1.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 1
  store i8 116, ptr %.ptr50.1.i.i, align 1, !tbaa !33
  %i.be = icmp samesign ult i64 %.add46.i.i, 254
  br i1 %i.be, label %bb.t, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

bb.t:                                             ; preds = %bb.s
  %.ptr50.2.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 2
  store i8 114, ptr %.ptr50.2.i.i, align 1, !tbaa !33
  %.not79.i.i.a = icmp eq i64 %.add46.i.i, 253
  br i1 %.not79.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.ptr50.3.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 3
  store i8 121, ptr %.ptr50.3.i.i, align 1, !tbaa !33
  %i.bf = icmp samesign ult i64 %.add46.i.i, 252
  br i1 %i.bf, label %bb.v, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

bb.v:                                             ; preds = %bb.u
  %.ptr50.4.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 4
  store i8 32, ptr %.ptr50.4.i.i, align 1, !tbaa !33
  %.not80.i.i.a = icmp eq i64 %.add46.i.i, 251
  br i1 %.not80.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.ptr50.5.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 5
  store i8 34, ptr %.ptr50.5.i.i, align 1, !tbaa !33
  %i.bg = icmp samesign ult i64 %.add46.i.i, 250
  br i1 %i.bg, label %bb.x, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

bb.x:                                             ; preds = %bb.w
  %.ptr50.6.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 6
  store i8 100, ptr %.ptr50.6.i.i, align 1, !tbaa !33
  %.not81.i.i.a = icmp eq i64 %.add46.i.i, 249
  br i1 %.not81.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.ptr50.7.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 7
  store i8 97, ptr %.ptr50.7.i.i, align 1, !tbaa !33
  %i.bh = icmp samesign ult i64 %.add46.i.i, 248
  br i1 %i.bh, label %bb.z, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

bb.z:                                             ; preds = %bb.y
  %.ptr50.8.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 8
  store i8 116, ptr %.ptr50.8.i.i, align 1, !tbaa !33
  %.not82.i.i.a = icmp eq i64 %.add46.i.i, 247
  br i1 %.not82.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.ptr50.9.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 9
  store i8 101, ptr %.ptr50.9.i.i, align 1, !tbaa !33
  %i.bi = icmp samesign ult i64 %.add46.i.i, 246
  br i1 %i.bi, label %bb.ab, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

bb.ab:                                            ; preds = %bb.aa
  %.ptr50.10.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 10
  store i8 32, ptr %.ptr50.10.i.i, align 1, !tbaa !33
  %.not83.i.i.a = icmp eq i64 %.add46.i.i, 245
  br i1 %.not83.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.ptr50.11.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 11
  store i8 45, ptr %.ptr50.11.i.i, align 1, !tbaa !33
  %i.bj = icmp samesign ult i64 %.add46.i.i, 244
  br i1 %i.bj, label %bb.ad, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

bb.ad:                                            ; preds = %bb.ac
  %.ptr50.12.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 12
  store i8 100, ptr %.ptr50.12.i.i, align 1, !tbaa !33
  %.not84.i.i.a = icmp eq i64 %.add46.i.i, 243
  br i1 %.not84.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.ptr50.13.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 13
  store i8 32, ptr %.ptr50.13.i.i, align 1, !tbaa !33
  %i.bk = icmp samesign ult i64 %.add46.i.i, 242
  br i1 %i.bk, label %bb.af, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

bb.af:                                            ; preds = %bb.ae
  %.ptr50.14.i.i = getelementptr inbounds nuw i8, ptr %.ptr50.i.i, i64 14
  store i8 64, ptr %.ptr50.14.i.i, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i
  %.0.lcssa.i8.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i.i ], [ 15, %bb.af ], [ 1, %bb.r ], [ 14, %bb.ae ], [ 2, %bb.s ], [ 8, %bb.y ], [ 3, %bb.t ], [ 13, %bb.ad ], [ 4, %bb.u ], [ 10, %bb.aa ], [ 5, %bb.v ], [ 12, %bb.ac ], [ 6, %bb.w ], [ 9, %bb.z ], [ 7, %bb.x ], [ 11, %bb.ab ]
  %i.bl = add nuw nsw i64 %.0.lcssa.i8.i.i, %.add46.i.i ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bl ; 4 uses
  %i.bn = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.bl) ; 3 uses
  %exitcond.not.i41 = icmp ugt i64 %i.bl, 255
  br i1 %exitcond.not.i41, label %split.i13.i.i, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %indvars.iv.next69.i.i, %i.bn
  br i1 %exitcond.not.i, label %split.i13.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i, %bb.ag
  %.015.i11.i.i43 = phi i64 [ %i.bq, %bb.ag ], [ %i.t, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i ] ; 3 uses
  %indvars.iv68.i.i42 = phi i64 [ %indvars.iv.next69.i.i, %bb.ag ], [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv68.i.i42
  %i.bp = urem i64 %.015.i11.i.i43, 10
  %i.bq = udiv i64 %.015.i11.i.i43, 10
  %i.br = trunc nuw nsw i64 %i.bp to i8
  %i.bs = or disjoint i8 %i.br, 48
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !33
  %indvars.iv.next69.i.i = add nuw nsw i64 %indvars.iv68.i.i42, 1 ; 3 uses
  %i.bt = icmp ult i64 %.015.i11.i.i43, 10
  br i1 %i.bt, label %split.i13.i.i, label %bb.ag

split.i13.i.i:                                    ; preds = %bb.ag, %.lr.ph, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i
  %.pre-phi.i14.i.i = phi i64 [ %i.bn, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i.i ], [ %i.bn, %bb.ag ], [ %indvars.iv.next69.i.i, %.lr.ph ] ; 4 uses
  %i.bu = and i64 %.pre-phi.i14.i.i, 4294967294
  %.not85.i.i.a = icmp eq i64 %i.bu, 0
  br i1 %.not85.i.i.a, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i.i, label %.lr.ph.i.i.preheader.i16.i.i

.lr.ph.i.i.preheader.i16.i.i:                     ; preds = %split.i13.i.i
  %i.bv = getelementptr i8, ptr %i.bm, i64 %.pre-phi.i14.i.i
  %.012.i.i.i17.i.i = getelementptr i8, ptr %i.bv, i64 -1
  br label %.lr.ph.i.i.i18.i.i
end_hunk_0
begin_hunk_1_@_ZN5nglog12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv:bb.a
  %i.cb = add nuw nsw i64 %.pre-phi.i14.i.i, %i.bl ; 33 uses
  %i.cc = icmp samesign ult i64 %i.cb, 256
  br i1 %i.cc, label %bb.ah, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.ah:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i.i
  store i8 34, ptr %i.ca, align 1, !tbaa !33
  %.not86.i.i.a = icmp eq i64 %i.cb, 255
  br i1 %.not86.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 32, ptr %i.cd, align 1, !tbaa !33
  %i.ce = icmp samesign ult i64 %i.cb, 254
  br i1 %i.ce, label %bb.aj, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i8 105, ptr %i.cf, align 1, !tbaa !33
  %.not87.i.i.a = icmp eq i64 %i.cb, 253
  br i1 %.not87.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  store i8 102, ptr %i.cg, align 1, !tbaa !33
  %i.ch = icmp samesign ult i64 %i.cb, 252
  br i1 %i.ch, label %bb.al, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i8 32, ptr %i.ci, align 1, !tbaa !33
  %.not88.i.i.a = icmp eq i64 %i.cb, 251
  br i1 %.not88.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  store i8 121, ptr %i.cj, align 1, !tbaa !33
  %i.ck = icmp samesign ult i64 %i.cb, 250
  br i1 %i.ck, label %bb.an, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.an:                                            ; preds = %bb.am
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  store i8 111, ptr %i.cl, align 1, !tbaa !33
  %.not89.i.i.a = icmp eq i64 %i.cb, 249
  br i1 %.not89.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  store i8 117, ptr %i.cm, align 1, !tbaa !33
  %i.cn = icmp samesign ult i64 %i.cb, 248
  br i1 %i.cn, label %bb.ap, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 32, ptr %i.co, align 1, !tbaa !33
  %.not90.i.i.a = icmp eq i64 %i.cb, 247
  br i1 %.not90.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  store i8 97, ptr %i.cp, align 1, !tbaa !33
  %i.cq = icmp samesign ult i64 %i.cb, 246
  br i1 %i.cq, label %bb.ar, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  store i8 114, ptr %i.cr, align 1, !tbaa !33
  %.not91.i.i.a = icmp eq i64 %i.cb, 245
  br i1 %.not91.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 11
  store i8 101, ptr %i.cs, align 1, !tbaa !33
  %i.ct = icmp samesign ult i64 %i.cb, 244
  br i1 %i.ct, label %bb.at, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.at:                                            ; preds = %bb.as
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i8 32, ptr %i.cu, align 1, !tbaa !33
  %.not92.i.i.a = icmp eq i64 %i.cb, 243
  br i1 %.not92.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 13
  store i8 117, ptr %i.cv, align 1, !tbaa !33
  %i.cw = icmp samesign ult i64 %i.cb, 242
  br i1 %i.cw, label %bb.av, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.av:                                            ; preds = %bb.au
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 14
  store i8 115, ptr %i.cx, align 1, !tbaa !33
  %.not93.i.i.a = icmp eq i64 %i.cb, 241
  br i1 %.not93.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 15
  store i8 105, ptr %i.cy, align 1, !tbaa !33
  %i.cz = icmp samesign ult i64 %i.cb, 240
  br i1 %i.cz, label %bb.ax, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i8 110, ptr %i.da, align 1, !tbaa !33
  %.not94.i.i.a = icmp eq i64 %i.cb, 239
  br i1 %.not94.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 17
  store i8 103, ptr %i.db, align 1, !tbaa !33
  %i.dc = icmp samesign ult i64 %i.cb, 238
  br i1 %i.dc, label %bb.az, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 18
  store i8 32, ptr %i.dd, align 1, !tbaa !33
  %.not95.i.i.a = icmp eq i64 %i.cb, 237
  br i1 %.not95.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 19
  store i8 71, ptr %i.de, align 1, !tbaa !33
  %i.df = icmp samesign ult i64 %i.cb, 236
  br i1 %i.df, label %bb.bb, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  store i8 78, ptr %i.dg, align 1, !tbaa !33
  %.not96.i.i.a = icmp eq i64 %i.cb, 235
  br i1 %.not96.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 21
  store i8 85, ptr %i.dh, align 1, !tbaa !33
  %i.di = icmp samesign ult i64 %i.cb, 234
  br i1 %i.di, label %bb.bd, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 22
  store i8 32, ptr %i.dj, align 1, !tbaa !33
  %.not97.i.i.a = icmp eq i64 %i.cb, 233
  br i1 %.not97.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 23
  store i8 100, ptr %i.dk, align 1, !tbaa !33
  %i.dl = icmp samesign ult i64 %i.cb, 232
  br i1 %i.dl, label %bb.bf, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i8 97, ptr %i.dm, align 1, !tbaa !33
  %.not98.i.i.a = icmp eq i64 %i.cb, 231
  br i1 %.not98.i.i.a, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 25
  store i8 116, ptr %i.dn, align 1, !tbaa !33
  %i.do = icmp samesign ult i64 %i.cb, 230
  br i1 %i.do, label %bb.bh, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ca, i64 26
  store i8 101, ptr %i.dp, align 1, !tbaa !33
  %.not99.i.i = icmp eq i64 %i.cb, 229
  br i1 %.not99.i.i, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ca, i64 27
  store i8 32, ptr %i.dq, align 1, !tbaa !33
  %i.dr = icmp samesign ult i64 %i.cb, 228
  br i1 %i.dr, label %bb.bj, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  store i8 42, ptr %i.ds, align 1, !tbaa !33
  %.not100.i.i = icmp eq i64 %i.cb, 227
  br i1 %.not100.i.i, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 29
  store i8 42, ptr %i.dt, align 1, !tbaa !33
  %i.du = icmp samesign ult i64 %i.cb, 226
  br i1 %i.du, label %bb.bl, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 30
  store i8 42, ptr %i.dv, align 1, !tbaa !33
  %.not101.i.i = icmp eq i64 %i.cb, 225
  br i1 %.not101.i.i, label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ca, i64 31
  store i8 10, ptr %i.dw, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i

_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i:   ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i.i
  %.0.lcssa.i29.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i.i ], [ 32, %bb.bm ], [ 1, %bb.ah ], [ 31, %bb.bl ], [ 2, %bb.ai ], [ 20, %bb.ba ], [ 3, %bb.aj ], [ 30, %bb.bk ], [ 4, %bb.ak ], [ 17, %bb.ax ], [ 5, %bb.al ], [ 29, %bb.bj ], [ 6, %bb.am ], [ 23, %bb.bd ], [ 7, %bb.an ], [ 28, %bb.bi ], [ 8, %bb.ao ], [ 18, %bb.ay ], [ 9, %bb.ap ], [ 27, %bb.bh ], [ 10, %bb.aq ], [ 21, %bb.bb ], [ 11, %bb.ar ], [ 26, %bb.bg ], [ 12, %bb.as ], [ 19, %bb.az ], [ 13, %bb.at ], [ 25, %bb.bf ], [ 14, %bb.au ], [ 22, %bb.bc ], [ 15, %bb.av ], [ 24, %bb.be ], [ 16, %bb.aw ]
  %i.dx = load ptr, ptr @_ZN5nglog12_GLOBAL__N_116g_failure_writerE, align 8, !tbaa !35
  %i.dy = add nuw nsw i64 %.0.lcssa.i29.i.i, %i.cb
  call void %i.dx(ptr noundef nonnull %i.b, i64 noundef %i.dy), !inline_history !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %switch.tableidx = add i32 %0, -4               ; 3 uses
  %i.dz = icmp ult i32 %switch.tableidx, 12
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2205, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.dz, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit28.i.i

switch.lookup:                                    ; preds = %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i
  %i.ea = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5nglog12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv, i64 %i.ea
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store <4 x i8> <i8 42, i8 42, i8 42, i8 32>, ptr %i.a, align 16, !tbaa !33
  %.ptr199.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %i.eb = load i8, ptr %switch.load, align 1, !tbaa !33 ; 2 uses
  %.not9.i.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not9.i.i.i, label %.thread385.i.i, label %.lr.ph.i.i.i.preheader

.thread385.i.i:                                   ; preds = %switch.lookup
  store i8 32, ptr %.ptr199.i.i, align 4, !tbaa !33
  br label %.sink.split

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader
  %i.ec = getelementptr inbounds nuw i8, ptr %.ptr199.i.i, i64 %i.eq
  store i8 %i.es, ptr %i.ec, align 1, !tbaa !33
  %i.ed = or disjoint i64 %.010.i20.i.i46, 2      ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !33  ; 2 uses
  %.not.i22.i.i.1 = icmp eq i8 %i.ef, 0
  br i1 %.not.i22.i.i.1, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.loopexit.i.i, label %.lr.ph.i.i.i.1, !llvm.loop !1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.ptr199.i.i, i64 %i.ed
  store i8 %i.ef, ptr %i.eg, align 2, !tbaa !33
  %i.eh = or disjoint i64 %.010.i20.i.i46, 3      ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !33  ; 2 uses
  %.not.i22.i.i.2 = icmp eq i8 %i.ej, 0
  br i1 %.not.i22.i.i.2, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.loopexit.i.i, label %.lr.ph.i.i.i.2, !llvm.loop !1

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.ek = getelementptr inbounds nuw i8, ptr %.ptr199.i.i, i64 %i.eh
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !33
  %i.el = add nuw nsw i64 %.010.i20.i.i46, 4      ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !33  ; 2 uses
  %.not.i22.i.i.3 = icmp eq i8 %i.en, 0
  br i1 %.not.i22.i.i.3, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.loopexit.i.i, label %.lr.ph.i.i.i.3, !llvm.loop !1

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %exitcond.not.i9.i.3 = icmp eq i64 %i.el, 252
  br i1 %exitcond.not.i9.i.3, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.loopexit.i.i, label %.lr.ph.i.i.i.preheader, !llvm.loop !1

.lr.ph.i.i.i.preheader:                           ; preds = %switch.lookup, %.lr.ph.i.i.i.3
  %.010.i20.i.i46 = phi i64 [ %i.el, %.lr.ph.i.i.i.3 ], [ 0, %switch.lookup ] ; 5 uses
  %i.eo = phi i8 [ %i.en, %.lr.ph.i.i.i.3 ], [ %i.eb, %switch.lookup ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.ptr199.i.i, i64 %.010.i20.i.i46
  store i8 %i.eo, ptr %i.ep, align 4, !tbaa !33
  %i.eq = or disjoint i64 %.010.i20.i.i46, 1      ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !33  ; 2 uses
  %.not.i22.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i22.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.loopexit.i.i: ; preds = %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.0.lcssa.i21.ph.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.preheader ], [ 252, %.lr.ph.i.i.i.3 ], [ %i.ed, %.lr.ph.i.i.i ], [ %i.el, %.lr.ph.i.i.i.2 ], [ %i.eh, %.lr.ph.i.i.i.1 ]
  %i.et = add nuw nsw i64 %.0.lcssa.i21.ph.i.i, 4
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit28.i.i: ; preds = %_ZN5nglog12_GLOBAL__N_112DumpTimeInfoEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store <8 x i8> <i8 42, i8 42, i8 42, i8 32, i8 83, i8 105, i8 103, i8 110>, ptr %i.a, align 16, !tbaa !33
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 97, ptr %i.eu, align 8, !tbaa !33
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 108, ptr %i.ev, align 1, !tbaa !33
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 32, ptr %i.ew, align 2, !tbaa !33
  %.ptr201.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 3 uses
  %i.ex = sext i32 %0 to i64
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bo
  %exitcond275.not.i.i = icmp eq i64 %indvars.iv.next.i13.i, 245
  br i1 %exitcond275.not.i.i, label %.lr.ph.i.i.preheader.i.i15.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit28.i.i, %bb.bn
  %.015.i.i12.i48 = phi i64 [ %i.ex, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit28.i.i ], [ %i.fa, %bb.bn ] ; 3 uses
  %indvars.iv.i11.i47 = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit28.i.i ], [ %indvars.iv.next.i13.i, %bb.bn ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.ptr201.i.i, i64 %indvars.iv.i11.i47
  %i.ez = urem i64 %.015.i.i12.i48, 10
  %i.fa = udiv i64 %.015.i.i12.i48, 10
  %i.fb = trunc nuw nsw i64 %i.ez to i8
  %i.fc = or disjoint i8 %i.fb, 48
  store i8 %i.fc, ptr %i.ey, align 1, !tbaa !33
  %indvars.iv.next.i13.i = add nuw nsw i64 %indvars.iv.i11.i47, 1 ; 3 uses
  %i.fd = icmp ult i64 %.015.i.i12.i48, 10
  br i1 %i.fd, label %split.i.i14.i, label %bb.bn

split.i.i14.i:                                    ; preds = %bb.bo
  %.not402.i.i = icmp eq i64 %indvars.iv.i11.i47, 0
  br i1 %.not402.i.i, label %.thread75.i, label %.lr.ph.i.i.preheader.i.i15.i

.thread75.i:                                      ; preds = %split.i.i14.i
  %.ptr.i57.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 32, ptr %.ptr.i57.i, align 4, !tbaa !33
  br label %.sink.split

.lr.ph.i.i.preheader.i.i15.i:                     ; preds = %bb.bn, %split.i.i14.i
  %.pre-phi.i363.i.i = phi i64 [ %indvars.iv.next.i13.i, %split.i.i14.i ], [ 245, %bb.bn ] ; 2 uses
  %i.fe = getelementptr i8, ptr %.ptr201.i.i, i64 %.pre-phi.i363.i.i
  %.012.i.i.i.i16.i = getelementptr i8, ptr %i.fe, i64 -1
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i, %.lr.ph.i.i.preheader.i.i15.i
  %.014.i.i.i.i18.i = phi ptr [ %.0.i.i.i.i20.i, %.lr.ph.i.i.i.i17.i ], [ %.012.i.i.i.i16.i, %.lr.ph.i.i.preheader.i.i15.i ] ; 3 uses
  %.0913.i.i.i.i19.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i17.i ], [ %.ptr201.i.i, %.lr.ph.i.i.preheader.i.i15.i ] ; 3 uses
  %i.ff = load i8, ptr %.0913.i.i.i.i19.i, align 1, !tbaa !33
  %i.fg = load i8, ptr %.014.i.i.i.i18.i, align 1, !tbaa !33
  store i8 %i.fg, ptr %.0913.i.i.i.i19.i, align 1, !tbaa !33
  store i8 %i.ff, ptr %.014.i.i.i.i18.i, align 1, !tbaa !33
  %i.fh = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i19.i, i64 1 ; 2 uses
  %.0.i.i.i.i20.i = getelementptr inbounds i8, ptr %.014.i.i.i.i18.i, i64 -1 ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %.0.i.i.i.i20.i
  br i1 %i.fi, label %.lr.ph.i.i.i.i17.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i21.loopexit.i, !llvm.loop !0

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i21.loopexit.i: ; preds = %.lr.ph.i.i.i.i17.i
  %i.fj = add nuw nsw i64 %.pre-phi.i363.i.i, 11
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.i.i: ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i21.loopexit.i, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.loopexit.i.i
  %.sroa.5.0.idx.i.i = phi i64 [ %i.et, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.loopexit.i.i ], [ %i.fj, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i21.loopexit.i ] ; 8 uses
  %exitcond276.not.i.i = icmp sgt i64 %.sroa.5.0.idx.i.i, 255
  br i1 %exitcond276.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.i.i
  %.ptr.i.i.a = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.5.0.idx.i.i ; 4 uses
  store i8 32, ptr %.ptr.i.i.a, align 1, !tbaa !33
  %exitcond276.1.not.i.i = icmp eq i64 %.sroa.5.0.idx.i.i, 255
  br i1 %exitcond276.1.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %.ptr.i.i.a, i64 1
  store i8 40, ptr %.ptr.1.i.i, align 1, !tbaa !33
  %exitcond276.2.not.i.i = icmp eq i64 %.sroa.5.0.idx.i.i, 254
  br i1 %exitcond276.2.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %.ptr.i.i.a, i64 2
  store i8 64, ptr %.ptr.2.i.i, align 1, !tbaa !33
  %exitcond276.3.not.i.i = icmp eq i64 %.sroa.5.0.idx.i.i, 253
  br i1 %exitcond276.3.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %.ptr.i.i.a, i64 3
  store i8 48, ptr %.ptr.3.i.i, align 1, !tbaa !33
  %exitcond276.4.not.i.i = icmp eq i64 %.sroa.5.0.idx.i.i, 252
  br i1 %exitcond276.4.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i, label %bb.bt

.sink.split:                                      ; preds = %.thread385.i.i, %.thread75.i
  %.sink35.sroa.phi = phi ptr [ %.sink35.sroa.gep, %.thread75.i ], [ %.sink35.sroa.gep90, %.thread385.i.i ]
  %.sink34.sroa.phi = phi ptr [ %.sink34.sroa.gep, %.thread75.i ], [ %.sink34.sroa.gep89, %.thread385.i.i ]
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.thread75.i ], [ %.sink.sroa.gep88, %.thread385.i.i ]
  %.sroa.5.0.idx368374379384389.i.i.ph = phi i64 [ 12, %.thread75.i ], [ 4, %.thread385.i.i ]
  store i8 40, ptr %.sink35.sroa.phi, align 1, !tbaa !33
  store i8 64, ptr %.sink34.sroa.phi, align 2, !tbaa !33
  store i8 48, ptr %.sink.sroa.phi, align 1, !tbaa !33
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split, %bb.bs
  %.sroa.5.0.idx368374379384389.i.i = phi i64 [ %.sroa.5.0.idx.i.i, %bb.bs ], [ %.sroa.5.0.idx368374379384389.i.i.ph, %.sink.split ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.5.0.idx368374379384389.i.i
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i8 120, ptr %.ptr.4.i.i, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.i.i
  %.sroa.5.0.idx369.i.i = phi i64 [ %.sroa.5.0.idx.i.i, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.i.i ], [ %.sroa.5.0.idx368374379384389.i.i, %bb.bt ], [ 255, %bb.bp ], [ 252, %bb.bs ], [ 254, %bb.bq ], [ 253, %bb.br ]
  %.0.lcssa.i31.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit23.i.i ], [ 5, %bb.bt ], [ 1, %bb.bp ], [ 4, %bb.bs ], [ 2, %bb.bq ], [ 3, %bb.br ]
  %i.fl = add nuw nsw i64 %.0.lcssa.i31.i.i, %.sroa.5.0.idx369.i.i ; 4 uses
  %.ptr206.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fl ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fn = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.fl) ; 3 uses
  %exitcond281.not.i.i49 = icmp ugt i64 %i.fl, 255
  br i1 %exitcond281.not.i.i49, label %split.i36.i.i, label %.lr.ph52

.lr.ph52:                                         ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !33
  %i.fp = ptrtoint ptr %i.fo to i64
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bv
  %i.fq = lshr i64 %.015.i34.i.i51, 4
  %exitcond281.not.i.i = icmp eq i64 %indvars.iv.next279.i.i, %i.fn
  br i1 %exitcond281.not.i.i, label %split.i36.i.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph52, %bb.bu
  %.015.i34.i.i51 = phi i64 [ %i.fp, %.lr.ph52 ], [ %i.fq, %bb.bu ] ; 3 uses
  %indvars.iv278.i.i50 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next279.i.i, %bb.bu ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.ptr206.i.i, i64 %indvars.iv278.i.i50
  %i.fs = and i64 %.015.i34.i.i51, 15             ; 3 uses
  %i.ft = icmp samesign ult i64 %i.fs, 10
  %i.fu = or disjoint i64 %i.fs, 48
  %i.fv = add nuw nsw i64 %i.fs, 87
  %i.fw = select i1 %i.ft, i64 %i.fu, i64 %i.fv
  %i.fx = trunc nuw nsw i64 %i.fw to i8
  store i8 %i.fx, ptr %i.fr, align 1, !tbaa !33
  %indvars.iv.next279.i.i = add nuw nsw i64 %indvars.iv278.i.i50, 1 ; 3 uses
  %i.fy = icmp ult i64 %.015.i34.i.i51, 16
  br i1 %i.fy, label %split.i36.i.i, label %bb.bu

split.i36.i.i:                                    ; preds = %bb.bu, %bb.bv, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i
  %.pre-phi.i37.i.i = phi i64 [ %i.fn, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit33.i.i ], [ %i.fn, %bb.bu ], [ %indvars.iv.next279.i.i, %bb.bv ] ; 3 uses
  %i.fz = and i64 %.pre-phi.i37.i.i, 4294967294
  %.not.i10.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i10.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit50.i.i, label %.lr.ph.i.i.preheader.i39.i.i

.lr.ph.i.i.preheader.i39.i.i:                     ; preds = %split.i36.i.i
  %i.ga = getelementptr i8, ptr %.ptr206.i.i, i64 %.pre-phi.i37.i.i
  %.012.i.i.i40.i.i = getelementptr i8, ptr %i.ga, i64 -1
  br label %.lr.ph.i.i.i41.i.i

.lr.ph.i.i.i41.i.i:                               ; preds = %.lr.ph.i.i.i41.i.i, %.lr.ph.i.i.preheader.i39.i.i
  %.014.i.i.i42.i.i = phi ptr [ %.0.i.i.i44.i.i, %.lr.ph.i.i.i41.i.i ], [ %.012.i.i.i40.i.i, %.lr.ph.i.i.preheader.i39.i.i ] ; 3 uses
  %.0913.i.i.i43.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i41.i.i ], [ %.ptr206.i.i, %.lr.ph.i.i.preheader.i39.i.i ] ; 3 uses
  %i.gb = load i8, ptr %.0913.i.i.i43.i.i, align 1, !tbaa !33
  %i.gc = load i8, ptr %.014.i.i.i42.i.i, align 1, !tbaa !33
  store i8 %i.gc, ptr %.0913.i.i.i43.i.i, align 1, !tbaa !33
  store i8 %i.gb, ptr %.014.i.i.i42.i.i, align 1, !tbaa !33
  %i.gd = getelementptr inbounds nuw i8, ptr %.0913.i.i.i43.i.i, i64 1 ; 2 uses
  %.0.i.i.i44.i.i = getelementptr inbounds i8, ptr %.014.i.i.i42.i.i, i64 -1 ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %.0.i.i.i44.i.i
  br i1 %i.ge, label %.lr.ph.i.i.i41.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit50.i.i, !llvm.loop !0

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit50.i.i: ; preds = %.lr.ph.i.i.i41.i.i, %split.i36.i.i
  %.add203.i.i = add nuw nsw i64 %.pre-phi.i37.i.i, %i.fl ; 3 uses
  %i.gf = icmp samesign ult i64 %.add203.i.i, 256
  br i1 %i.gf, label %bb.bw, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit55.i.i

bb.bw:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit50.i.i
  %.ptr207.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add203.i.i
  store i8 41, ptr %.ptr207.i.i, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit55.i.i, !llvm.loop !1

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit55.i.i: ; preds = %bb.bw, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit50.i.i
  %.0.lcssa.i53.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit50.i.i ], [ 1, %bb.bw ]
  %.add204.i.i = add nuw nsw i64 %.0.lcssa.i53.i.i, %.add203.i.i ; 5 uses
  %smax282.i.i = call i64 @llvm.smax.i64(i64 %.add204.i.i, i64 256)
  %i.gg = sub i64 %smax282.i.i, %.add204.i.i      ; 16 uses
  %exitcond283.not.i.i = icmp sgt i64 %.add204.i.i, 255
  br i1 %exitcond283.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit55.i.i
  %.ptr209.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add204.i.i ; 17 uses
  store i8 32, ptr %.ptr209.i.i, align 1, !tbaa !33
  %exitcond283.1.not.i.i = icmp eq i64 %i.gg, 1
  br i1 %exitcond283.1.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.ptr209.1.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 1
  store i8 114, ptr %.ptr209.1.i.i, align 1, !tbaa !33
  %exitcond283.2.not.i.i = icmp eq i64 %i.gg, 2
  br i1 %exitcond283.2.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.ptr209.2.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 2
  store i8 101, ptr %.ptr209.2.i.i, align 1, !tbaa !33
  %exitcond283.3.not.i.i = icmp eq i64 %i.gg, 3
  br i1 %exitcond283.3.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.ptr209.3.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 3
  store i8 99, ptr %.ptr209.3.i.i, align 1, !tbaa !33
  %exitcond283.4.not.i.i = icmp eq i64 %i.gg, 4
  br i1 %exitcond283.4.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.ptr209.4.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 4
  store i8 101, ptr %.ptr209.4.i.i, align 1, !tbaa !33
  %exitcond283.5.not.i.i = icmp eq i64 %i.gg, 5
  br i1 %exitcond283.5.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.ptr209.5.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 5
  store i8 105, ptr %.ptr209.5.i.i, align 1, !tbaa !33
  %exitcond283.6.not.i.i = icmp eq i64 %i.gg, 6
  br i1 %exitcond283.6.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.ptr209.6.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 6
  store i8 118, ptr %.ptr209.6.i.i, align 1, !tbaa !33
  %exitcond283.7.not.i.i = icmp eq i64 %i.gg, 7
  br i1 %exitcond283.7.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.ptr209.7.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 7
  store i8 101, ptr %.ptr209.7.i.i, align 1, !tbaa !33
  %exitcond283.8.not.i.i = icmp eq i64 %i.gg, 8
  br i1 %exitcond283.8.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.ptr209.8.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 8
  store i8 100, ptr %.ptr209.8.i.i, align 1, !tbaa !33
  %exitcond283.9.not.i.i = icmp eq i64 %i.gg, 9
  br i1 %exitcond283.9.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.ptr209.9.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 9
  store i8 32, ptr %.ptr209.9.i.i, align 1, !tbaa !33
  %exitcond283.10.not.i.i = icmp eq i64 %i.gg, 10
  br i1 %exitcond283.10.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.ptr209.10.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 10
  store i8 98, ptr %.ptr209.10.i.i, align 1, !tbaa !33
  %exitcond283.11.not.i.i = icmp eq i64 %i.gg, 11
  br i1 %exitcond283.11.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.ptr209.11.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 11
  store i8 121, ptr %.ptr209.11.i.i, align 1, !tbaa !33
  %exitcond283.12.not.i.i = icmp eq i64 %i.gg, 12
  br i1 %exitcond283.12.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.ptr209.12.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 12
  store i8 32, ptr %.ptr209.12.i.i, align 1, !tbaa !33
  %exitcond283.13.not.i.i = icmp eq i64 %i.gg, 13
  br i1 %exitcond283.13.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.ptr209.13.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 13
  store i8 80, ptr %.ptr209.13.i.i, align 1, !tbaa !33
  %exitcond283.14.not.i.i = icmp eq i64 %i.gg, 14
  br i1 %exitcond283.14.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.ptr209.14.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 14
  store i8 73, ptr %.ptr209.14.i.i, align 1, !tbaa !33
  %exitcond283.15.not.i.i = icmp eq i64 %i.gg, 15
  br i1 %exitcond283.15.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.ptr209.15.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 15
  store i8 68, ptr %.ptr209.15.i.i, align 1, !tbaa !33
  %exitcond283.16.not.i.i = icmp eq i64 %i.gg, 16
  br i1 %exitcond283.16.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.ptr209.16.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 16
  store i8 32, ptr %.ptr209.16.i.i, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i: ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit55.i.i
  %.0.lcssa.i58.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit55.i.i ], [ 17, %bb.cn ], [ 1, %bb.bx ], [ 16, %bb.cm ], [ 2, %bb.by ], [ 9, %bb.cf ], [ 3, %bb.bz ], [ 15, %bb.cl ], [ 4, %bb.ca ], [ 12, %bb.ci ], [ 5, %bb.cb ], [ 14, %bb.ck ], [ 6, %bb.cc ], [ 10, %bb.cg ], [ 7, %bb.cd ], [ 13, %bb.cj ], [ 8, %bb.ce ], [ 11, %bb.ch ]
  %i.gh = add i64 %.0.lcssa.i58.i.i, %.add204.i.i ; 4 uses
  %.ptr213.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gh ; 3 uses
  %i.gi = call i32 @getpid() #20
  %i.gj = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.gh) ; 3 uses
  %exitcond289.not.i.i56 = icmp ugt i64 %i.gh, 255
  br i1 %exitcond289.not.i.i56, label %split.i63.i.i, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i
  %i.gk = sext i32 %i.gi to i64
  br label %bb.cp

bb.co:                                            ; preds = %bb.cp
  %exitcond289.not.i.i = icmp eq i64 %indvars.iv.next286.i.i, %i.gj
  br i1 %exitcond289.not.i.i, label %split.i63.i.i, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph59, %bb.co
  %.015.i61.i.i58 = phi i64 [ %i.gk, %.lr.ph59 ], [ %i.gn, %bb.co ] ; 3 uses
  %indvars.iv285.i.i57 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next286.i.i, %bb.co ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.ptr213.i.i, i64 %indvars.iv285.i.i57
  %i.gm = urem i64 %.015.i61.i.i58, 10
  %i.gn = udiv i64 %.015.i61.i.i58, 10
  %i.go = trunc nuw nsw i64 %i.gm to i8
  %i.gp = or disjoint i8 %i.go, 48
  store i8 %i.gp, ptr %i.gl, align 1, !tbaa !33
  %indvars.iv.next286.i.i = add nuw nsw i64 %indvars.iv285.i.i57, 1 ; 3 uses
  %i.gq = icmp ult i64 %.015.i61.i.i58, 10
  br i1 %i.gq, label %split.i63.i.i, label %bb.co

split.i63.i.i:                                    ; preds = %bb.co, %bb.cp, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i
  %.pre-phi.i64.i.i = phi i64 [ %i.gj, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i ], [ %i.gj, %bb.co ], [ %indvars.iv.next286.i.i, %bb.cp ] ; 3 uses
  %i.gr = and i64 %.pre-phi.i64.i.i, 4294967294
  %.not344.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not344.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i, label %.lr.ph.i.i.preheader.i66.i.i

.lr.ph.i.i.preheader.i66.i.i:                     ; preds = %split.i63.i.i
  %i.gs = getelementptr i8, ptr %.ptr213.i.i, i64 %.pre-phi.i64.i.i
  %.012.i.i.i67.i.i = getelementptr i8, ptr %i.gs, i64 -1
  br label %.lr.ph.i.i.i68.i.i

.lr.ph.i.i.i68.i.i:                               ; preds = %.lr.ph.i.i.i68.i.i, %.lr.ph.i.i.preheader.i66.i.i
  %.014.i.i.i69.i.i = phi ptr [ %.0.i.i.i71.i.i, %.lr.ph.i.i.i68.i.i ], [ %.012.i.i.i67.i.i, %.lr.ph.i.i.preheader.i66.i.i ] ; 3 uses
  %.0913.i.i.i70.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i68.i.i ], [ %.ptr213.i.i, %.lr.ph.i.i.preheader.i66.i.i ] ; 3 uses
  %i.gt = load i8, ptr %.0913.i.i.i70.i.i, align 1, !tbaa !33
  %i.gu = load i8, ptr %.014.i.i.i69.i.i, align 1, !tbaa !33
  store i8 %i.gu, ptr %.0913.i.i.i70.i.i, align 1, !tbaa !33
  store i8 %i.gt, ptr %.014.i.i.i69.i.i, align 1, !tbaa !33
  %i.gv = getelementptr inbounds nuw i8, ptr %.0913.i.i.i70.i.i, i64 1 ; 2 uses
  %.0.i.i.i71.i.i = getelementptr inbounds i8, ptr %.014.i.i.i69.i.i, i64 -1 ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %.0.i.i.i71.i.i
  br i1 %i.gw, label %.lr.ph.i.i.i68.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i, !llvm.loop !0

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i: ; preds = %.lr.ph.i.i.i68.i.i, %split.i63.i.i
  %.add210.i.i = add i64 %.pre-phi.i64.i.i, %i.gh ; 4 uses
  %.ptr214.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add210.i.i ; 6 uses
  %i.gx = call i64 @llvm.usub.sat.i64(i64 256, i64 %.add210.i.i) ; 5 uses
  %exitcond291.not.i.i = icmp ugt i64 %.add210.i.i, 255
  br i1 %exitcond291.not.i.i, label %bb.cw, label %bb.cq

bb.cq:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i
  store i8 32, ptr %.ptr214.i.i, align 1, !tbaa !33
  %exitcond291.1.not.i.i = icmp eq i64 %i.gx, 1
  br i1 %exitcond291.1.not.i.i, label %bb.cw, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gy = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 1
  store i8 40, ptr %i.gy, align 1, !tbaa !33
  %exitcond291.2.not.i.i = icmp eq i64 %i.gx, 2
  br i1 %exitcond291.2.not.i.i, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.gz = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 2
  store i8 84, ptr %i.gz, align 1, !tbaa !33
  %exitcond291.3.not.i.i = icmp eq i64 %i.gx, 3
  br i1 %exitcond291.3.not.i.i, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ha = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 3
  store i8 73, ptr %i.ha, align 1, !tbaa !33
  %exitcond291.4.not.i.i = icmp eq i64 %i.gx, 4
  br i1 %exitcond291.4.not.i.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hb = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 4
  store i8 68, ptr %i.hb, align 1, !tbaa !33
  %exitcond291.5.not.i.i = icmp eq i64 %i.gx, 5
  br i1 %exitcond291.5.not.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
end_hunk_1
begin_hunk_2_@_ZNSt6localeC1Ev

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5nglog12_GLOBAL__N_118DumpStackFrameInfoEPKcPv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds i8, ptr %1, i64 -1
  %i.d = call noundef zeroext i1 @_ZN5nglog5tools9SymbolizeEPvPcmNS0_16SymbolizeOptionsE(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef 1024, i32 noundef 0)
  %spec.select = select i1 %i.d, ptr %i.a, ptr @.str.22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.e = load i8, ptr %0, align 1, !tbaa !33      ; 2 uses
  %.not9.i = icmp eq i8 %i.e, 0
  br i1 %.not9.i, label %.thread, label %.lr.ph.i.preheader

.thread:                                          ; preds = %bb.a
  store i8 64, ptr %i.b, align 16, !tbaa !33
  br label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t
  store i8 %i.v, ptr %i.f, align 1, !tbaa !33
  %i.g = or disjoint i64 %.010.i83, 2             ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !33    ; 2 uses
  %.not.i.1 = icmp eq i8 %i.i, 0
  br i1 %.not.i.1, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit, label %.lr.ph.i.1, !llvm.loop !1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  store i8 %i.i, ptr %i.j, align 2, !tbaa !33
  %i.k = or disjoint i64 %.010.i83, 3             ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !33    ; 2 uses
  %.not.i.2 = icmp eq i8 %i.m, 0
  br i1 %.not.i.2, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit, label %.lr.ph.i.2, !llvm.loop !1

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  store i8 %i.m, ptr %i.n, align 1, !tbaa !33
  %i.o = add nuw nsw i64 %.010.i83, 4             ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33    ; 2 uses
  %.not.i.3 = icmp eq i8 %i.q, 0
  br i1 %.not.i.3, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit, label %.lr.ph.i.3, !llvm.loop !1

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %exitcond.not.3 = icmp eq i64 %i.o, 1024
  br i1 %exitcond.not.3, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9, label %.lr.ph.i.preheader, !llvm.loop !1

.lr.ph.i.preheader:                               ; preds = %bb.a, %.lr.ph.i.3
  %.010.i83 = phi i64 [ %i.o, %.lr.ph.i.3 ], [ 0, %bb.a ] ; 6 uses
  %i.r = phi i8 [ %i.q, %.lr.ph.i.3 ], [ %i.e, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.010.i83
  store i8 %i.r, ptr %i.s, align 4, !tbaa !33
  %i.t = or disjoint i64 %.010.i83, 1             ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33    ; 2 uses
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit, label %.lr.ph.i, !llvm.loop !1

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit: ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i, %.lr.ph.i.preheader
  %.010.i83.lcssa = phi i64 [ %.010.i83, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i ], [ %i.g, %.lr.ph.i.1 ], [ %i.k, %.lr.ph.i.2 ]
  %.lcssa95 = phi i64 [ %i.t, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i ], [ %i.k, %.lr.ph.i.1 ], [ %i.o, %.lr.ph.i.2 ] ; 4 uses
  %exitcond55.not = icmp samesign ugt i64 %.010.i83.lcssa, 1022
  br i1 %exitcond55.not, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9, label %bb.b

bb.b:                                             ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.lcssa95 ; 2 uses
  store i8 64, ptr %.ptr, align 1, !tbaa !33
  %exitcond55.1.not = icmp eq i64 %.lcssa95, 1023
  br i1 %exitcond55.1.not, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.0.lcssa.i7581 = phi i64 [ 0, %.thread ], [ %.lcssa95, %bb.b ]
  %.ptr7680 = phi ptr [ %i.b, %.thread ], [ %.ptr, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %.ptr7680, i64 1
  store i8 32, ptr %i.w, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9: ; preds = %.lr.ph.i.3, %bb.c, %bb.b, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit
  %.0.lcssa.i70 = phi i64 [ %.lcssa95, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit ], [ %.0.lcssa.i7581, %bb.c ], [ 1023, %bb.b ], [ 1024, %.lr.ph.i.3 ]
  %.0.lcssa.i7 = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit ], [ 2, %bb.c ], [ 1, %bb.b ], [ 0, %.lr.ph.i.3 ]
  %.add = add nuw nsw i64 %.0.lcssa.i7, %.0.lcssa.i70 ; 5 uses
  %.ptr48.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add ; 6 uses
  %i.x = ptrtoint ptr %1 to i64
  %i.y = icmp samesign ult i64 %.add, 1024
  br i1 %i.y, label %bb.d, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i

bb.d:                                             ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9
  store i8 48, ptr %.ptr48.ptr, align 1, !tbaa !33
  %.not = icmp eq i64 %.add, 1023
  br i1 %.not, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.ptr48.ptr, i64 1
  store i8 120, ptr %i.z, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i: ; preds = %bb.e, %bb.d, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9
  %.0.lcssa.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9 ], [ 2, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %.add46 = add nuw nsw i64 %.0.lcssa.i.i, %.add  ; 5 uses
  %.ptr49.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add46 ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %.add46, i64 1024)
  %i.aa = sub i64 %smax, %.add46                  ; 4 uses
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %.add46
  %exitcond57.not84 = icmp eq i64 %i.aa, 0
  br i1 %exitcond57.not84, label %split.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.ab = lshr i64 %.015.i.i86, 4
  %exitcond57.not = icmp eq i64 %indvars.iv.next.i, %i.aa
  br i1 %exitcond57.not, label %split.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i, %bb.f
  %.015.i.i86 = phi i64 [ %i.ab, %bb.f ], [ %i.x, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i ] ; 3 uses
  %indvars.iv.i85 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i85
  %i.ac = and i64 %.015.i.i86, 15                 ; 3 uses
  %i.ad = icmp samesign ult i64 %i.ac, 10
  %i.ae = or disjoint i64 %i.ac, 48
  %i.af = add nuw nsw i64 %i.ac, 87
  %i.ag = select i1 %i.ad, i64 %i.ae, i64 %i.af
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  store i8 %i.ah, ptr %gep, align 1, !tbaa !33
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i85, 1 ; 3 uses
  %i.ai = icmp ult i64 %.015.i.i86, 16
  br i1 %i.ai, label %split.i.i, label %bb.f

split.i.i:                                        ; preds = %bb.f, %.lr.ph, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i
  %.pre-phi.i.i = phi i64 [ %i.aa, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i ], [ %i.aa, %bb.f ], [ %indvars.iv.next.i, %.lr.ph ] ; 4 uses
  %i.aj = and i64 %.pre-phi.i.i, 4294967294
  %.not.i10 = icmp eq i64 %i.aj, 0
  br i1 %.not.i10, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %split.i.i
  %i.ak = getelementptr i8, ptr %.ptr49.ptr, i64 %.pre-phi.i.i
  %.012.i.i.i.i = getelementptr i8, ptr %i.ak, i64 -1
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.014.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.0913.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.ptr49.ptr, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.al = load i8, ptr %.0913.i.i.i.i, align 1, !tbaa !33
  %i.am = load i8, ptr %.014.i.i.i.i, align 1, !tbaa !33
  store i8 %i.am, ptr %.0913.i.i.i.i, align 1, !tbaa !33
  store i8 %i.al, ptr %.014.i.i.i.i, align 1, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i.i, i64 -1 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %.0.i.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i, !llvm.loop !0

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i: ; preds = %.lr.ph.i.i.i.i, %split.i.i
  %.ptr49.add = add nuw nsw i64 %.pre-phi.i.i, %.add46 ; 2 uses
  %.ptr48.add = add nuw nsw i64 %.add, 18         ; 2 uses
  %i.ap = icmp samesign ult i64 %.ptr49.add, %.ptr48.add
  br i1 %i.ap, label %bb.g, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit

bb.g:                                             ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i
  %i.aq = add i64 %.0.lcssa.i.i, %.pre-phi.i.i    ; 4 uses
  %gepdiff = sub i64 18, %i.aq                    ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.ptr48.ptr, i64 %gepdiff ; 2 uses
  %i.as = icmp sgt i64 %i.aq, 1
  br i1 %i.as, label %bb.h, label %bb.i, !prof !76

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %.ptr48.ptr, i64 %i.aq, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.aq, 1
  br i1 %i.at, label %bb.j, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %.ptr48.ptr, align 1, !tbaa !33
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !33
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.ptr48.ptr, i8 32, i64 %gepdiff, i1 false)
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit

_ZN5nglog12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit: ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i
  %.sroa.4.0.idx = phi i64 [ %.ptr48.add, %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i ], [ %.ptr49.add, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i ] ; 3 uses
  %i.av = icmp slt i64 %.sroa.4.0.idx, 1024
  br i1 %i.av, label %bb.k, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15

bb.k:                                             ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit
  %.ptr52 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.4.0.idx
  store i8 32, ptr %.ptr52, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15, !llvm.loop !1

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15: ; preds = %bb.k, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit
  %.0.lcssa.i13 = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit ], [ 1, %bb.k ]
  %i.aw = add i64 %.0.lcssa.i13, %.sroa.4.0.idx   ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %spec.select, align 1, !tbaa !33 ; 2 uses
  %.not9.i16 = icmp eq i8 %i.ay, 0
  br i1 %.not9.i16, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15
  %i.az = call i64 @llvm.usub.sat.i64(i64 1024, i64 %i.aw) ; 3 uses
  %exitcond59.not89 = icmp ugt i64 %i.aw, 1023
  br i1 %exitcond59.not89, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21, label %.lr.ph91

.lr.ph.i17:                                       ; preds = %.lr.ph91
  %exitcond59.not = icmp eq i64 %i.bc, %i.az
  br i1 %exitcond59.not, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21, label %.lr.ph91, !llvm.loop !1

.lr.ph91:                                         ; preds = %.lr.ph.i17.preheader, %.lr.ph.i17
  %.010.i1890 = phi i64 [ %i.bc, %.lr.ph.i17 ], [ 0, %.lr.ph.i17.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.be, %.lr.ph.i17 ], [ %i.ay, %.lr.ph.i17.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.010.i1890
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !33
  %i.bc = add nuw nsw i64 %.010.i1890, 1          ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !33  ; 2 uses
  %.not.i20 = icmp eq i8 %i.be, 0
  br i1 %.not.i20, label %._ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21.loopexit_crit_edge, label %.lr.ph.i17, !llvm.loop !1

._ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21.loopexit_crit_edge: ; preds = %.lr.ph91
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21, !llvm.loop !1

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21: ; preds = %.lr.ph.i17, %.lr.ph.i17.preheader, %._ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21.loopexit_crit_edge, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15
  %.0.lcssa.i19 = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15 ], [ %i.bc, %._ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21.loopexit_crit_edge ], [ %i.az, %.lr.ph.i17.preheader ], [ %i.az, %.lr.ph.i17 ] ; 2 uses
  %i.bf = add nuw nsw i64 %.0.lcssa.i19, %i.aw    ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bf, 1024
  br i1 %i.bg, label %bb.l, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit26

bb.l:                                             ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0.lcssa.i19
  store i8 10, ptr %i.bh, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit26, !llvm.loop !1

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit26: ; preds = %bb.l, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21
  %.0.lcssa.i24 = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit21 ], [ 1, %bb.l ]
  %i.bi = load ptr, ptr @_ZN5nglog12_GLOBAL__N_116g_failure_writerE, align 8, !tbaa !35
  %i.bj = add nuw nsw i64 %i.bf, %.0.lcssa.i24
  call void %i.bi(ptr noundef nonnull %i.b, i64 noundef %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare hidden noundef i32 @_ZN5nglog5tools13GetStackTraceEPPvii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5nglog19FlushLogFilesUnsafeENS_11LogSeverityE(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare hidden noundef zeroext i1 @_ZN5nglog5tools9SymbolizeEPvPcmNS0_16SymbolizeOptionsE(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree uwtable
define internal void @_ZN5nglog12_GLOBAL__N_113WriteToStderrEPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #15 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !78
  %i.b = tail call i32 @fileno(ptr noundef %i.a) #20
  %i.c = tail call i64 @write(i32 noundef %i.b, ptr noundef %0, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!15 = !{!"_ZTSSt6locale", !14, i64 0}
!16 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !15, i64 56}
!17 = !{!16, !13, i64 40}
!18 = !{!16, !13, i64 32}
!19 = !{!16, !13, i64 48}
!20 = !{!"_ZTSSo"}
!21 = !{!"_ZTSN5nglog12base_logging12LogStreamBufE", !16, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{!"p1 _ZTSN5nglog10LogMessage9LogStreamE", !12, i64 0}
!24 = !{!"_ZTSN5nglog10LogMessage9LogStreamE", !20, i64 0, !21, i64 8, !22, i64 72, !23, i64 80}
!25 = !{!24, !22, i64 72}
!26 = !{!24, !23, i64 80}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !22, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!32 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !6, i64 64, !7, i64 192, !31, i64 200, !15, i64 208}
!33 = !{!6, !6, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!12, !12, i64 0}
!36 = !{ptr @_ZN5nglog10LogMessage9LogStreamD1Ev}
!37 = !{!"p1 _ZTSSo", !12, i64 0}
!38 = !{!"bool", !6, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!43 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !37, i64 216, !6, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!44 = !{!43, !37, i64 216}
!45 = !{!43, !6, i64 224}
!46 = !{!43, !38, i64 225}
!47 = distinct !{!47, !34}
!48 = distinct !{!48, !34}
!49 = distinct !{null, null}
!50 = distinct !{!50, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!51 = distinct !{!51, !50, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!53 = distinct !{!53, !52, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !34}
!55 = !{!7, !7, i64 0}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!32, !27, i64 24}
!59 = !{!27, !27, i64 0}
!60 = !{!51}
!61 = !{!53}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!63 = !{!62, !13, i64 0}
!64 = !{!53, !51}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0, !22, i64 8, !6, i64 16}
!66 = !{!65, !22, i64 8}
!67 = !{!65, !13, i64 0}
!68 = !{!"long long", !6, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"_ZTS10__sigset_t", !6, i64 0}
!71 = !{!"_ZTS9sigaction", !6, i64 0, !70, i64 8, !7, i64 136, !12, i64 144}
!72 = !{!71, !7, i64 136}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{ptr @_ZN5nglog10LogMessage9LogStreamD0Ev, ptr @_ZN5nglog10LogMessage9LogStreamD1Ev}
!75 = !{ptr @_ZN5nglog10LogMessage9LogStreamD0Ev}
!76 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!77 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!78 = !{!77, !77, i64 0}
end_hunk_2
