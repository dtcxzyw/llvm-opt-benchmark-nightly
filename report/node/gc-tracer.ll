inline.NumInlined: 1245
inline.NumDeleted: 558
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK2v88internal8GCTracer8PrintNVPEv:bb.a
  %i.asv = add nsw i64 %indvars.iv49.i.i.i, 4294967294
  %i.asw = and i64 %i.asv, 4294967294
  %i.asx = getelementptr inbounds nuw [16 x i8], ptr %i.aqr, i64 %i.asw ; 2 uses
  %i.asy = load i64, ptr %i.asx, align 8
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asx, i64 8
  %i.ata = load i64, ptr %i.asz, align 8
  %.sroa.3.0.i14.us.i.i.i.1 = add nsw i64 %i.ata, %.sroa.3.0.i14.us.i.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.i.1 = add i64 %i.asy, %.sroa.0.0.i15.us.i.i.i ; 3 uses
  %indvars.iv.next50.i.i.i.1 = add nsw i64 %indvars.iv49.i.i.i, -2 ; 2 uses
  %niter262.next.1 = add i64 %niter262, 2         ; 2 uses
  %niter262.ncmp.1.not = icmp eq i64 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i.i
  %lcmp.mod257.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i, label %.lr.ph33.split.us.i.i.i.epil.preheader

.lr.ph33.split.us.i.i.i.epil.preheader:           ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, %.lr.ph33.i.i.i
  %indvars.iv49.i.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i.i ], [ %indvars.iv.next50.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %.lr.ph33.i.i.i ], [ %.sroa.3.0.i14.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %.lr.ph33.i.i.i ], [ %.sroa.0.0.i15.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod260 = trunc i8 %narrow274 to i1
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.atb = add nuw nsw i64 %indvars.iv49.i.i.i.epil.init, 4294967295
  %i.atc = and i64 %i.atb, 4294967295
  %i.atd = getelementptr inbounds nuw [16 x i8], ptr %i.aqr, i64 %i.atc ; 2 uses
  %i.ate = load i64, ptr %i.atd, align 8
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atd, i64 8
  %i.atg = load i64, ptr %i.atf, align 8
  %.sroa.3.0.i14.us.i.i.i.epil = add nsw i64 %i.atg, %.sroa.6.131.us.i.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.i.epil = add i64 %i.ate, %.sroa.020.130.us.i.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i: ; preds = %.lr.ph33.split.us.i.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, %._crit_edge.i.i.i
  %.sroa.020.2.i.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.0.0.i15.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.i.epil, %.lr.ph33.split.us.i.i.i.epil.preheader ]
  %.sroa.6.2.i.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.3.0.i14.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.i.epil, %.lr.ph33.split.us.i.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 %.sroa.6.2.i.i.i, ptr %1, align 8
  %.not169 = icmp eq i64 %.sroa.6.2.i.i.i, 0
  br i1 %.not169, label %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit.thread, label %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit

_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit.thread: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.fp

_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i
  %i.ath = uitofp i64 %.sroa.020.2.i.i.i to double
  %i.ati = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.atj = fdiv double %i.ath, %i.ati             ; 2 uses
  %i.atk = fcmp ogt double %i.atj, f0x41D0000000000000
  %.sroa.speculated8.i.i.i = select i1 %i.atk, double f0x41D0000000000000, double %i.atj ; 2 uses
  %i.atl = fcmp olt double %.sroa.speculated8.i.i.i, 1.000000e+00
  %.sroa.speculated.i.i.i160 = select i1 %i.atl, double 1.000000e+00, double %.sroa.speculated8.i.i.i ; 2 uses
  %.pre174 = load i8, ptr %i.bg, align 8, !range !5
  %i.atm = trunc nuw i8 %.pre174 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %i.atm, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit164, label %bb.fp

bb.fp:                                            ; preds = %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit.thread, %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit
  %.0.i163193 = phi double [ 0.000000e+00, %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit.thread ], [ %.sroa.speculated.i.i.i160, %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit ]
  %i.atn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit164

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit164: ; preds = %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit, %bb.fp
  %.0.i163194 = phi double [ %.sroa.speculated.i.i.i160, %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit ], [ %.0.i163193, %bb.fp ]
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.167) #19
  %i.ato = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %.0.i163194) #19 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit57, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit85, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit164
  store i8 0, ptr %i.bg, align 8
  br label %bb.fq

bb.fq:                                            ; preds = %.sink.split, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.atp = call noundef nonnull align 8 dereferenceable(400) ptr @_ZN4heap4base17UnsafeJsonEmitter10object_endEv(ptr noundef nonnull align 8 dereferenceable(400) %6) #19
  call void @_ZN4heap4base17UnsafeJsonEmitter8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(400) %i.atp) #19
  %i.atq = load ptr, ptr %0, align 8
  %i.atr = ptrtoint ptr %i.atq to i64
  %i.ats = add i64 %i.atr, -55464
  %i.att = inttoptr i64 %i.ats to ptr
  %i.atu = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal7Isolate18PrintWithTimestampEPKcz(ptr noundef nonnull align 8 dereferenceable(64320) %i.att, ptr noundef nonnull @.str.168, ptr noundef %i.atu) #19
  %i.atv = load ptr, ptr %7, align 8              ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.atx = icmp eq ptr %i.atv, %i.atw
  br i1 %i.atx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.fq
  %i.aty = load i64, ptr %i.atw, align 8
  %i.atz = add i64 %i.aty, 1
  call void @_ZdlPvm(ptr noundef %i.atv, i64 noundef %i.atz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.aua = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aua, ptr %6, align 8
  %i.aub = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.auc = getelementptr i8, ptr %i.aua, i64 -24
  %i.aud = load i64, ptr %i.auc, align 8
  %i.aue = getelementptr inbounds i8, ptr %6, i64 %i.aud
  store ptr %i.aub, ptr %i.aue, align 8
  %i.auf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.auf, ptr %i.ag, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8
  %i.aug = load ptr, ptr %i.az, align 8           ; 2 uses
  %i.auh = icmp eq ptr %i.aug, %i.ba
  br i1 %i.auh, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aui = load i64, ptr %i.ba, align 8
  %i.auj = add i64 %i.aui, 1
  call void @_ZdlPvm(ptr noundef %i.aug, i64 noundef %i.auj) #20
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #19
  store ptr %i.w, ptr %6, align 8
  %i.auk = load i64, ptr %i.y, align 8
  %i.aul = getelementptr inbounds i8, ptr %6, i64 %i.auk
  store ptr %i.x, ptr %i.aul, align 8
  store i64 0, ptr %i.ab, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8GCTracer5PrintEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %2 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.copyload = load i64, ptr %i.d, align 8
  %i.e = load i64, ptr %i.c, align 8
  %i.f = sub nsw i64 %i.e, %.sroa.01.0.copyload
  store i64 %i.f, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.g = load i32, ptr %i.b, align 8
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3512
  %i.n = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8
  %i.p = load i64, ptr %i.c, align 8
  %i.q = sub nsw i64 %i.p, %.sroa.0.0.copyload
  store i64 %i.q, ptr %2, align 8
  %i.r = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %i.s = call noundef i32 (ptr, i32, ptr, ...) @_ZN2v84base2OS8SNPrintFEPciPKcz(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef nonnull @.str.25, double noundef %i.j, i32 noundef %i.l, double noundef %i.n, double noundef %i.r) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.w = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.y = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aa = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #19
  %i.ad = call noundef i32 @_ZN2v84base2OS19GetCurrentProcessIdEv() #19
  %i.ae = load ptr, ptr %0, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, -55464
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 55464
  %i.aj = call noundef double @_ZNK2v88internal4Heap31MonotonicallyIncreasingTimeInMsEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.ai) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 59488
  %i.al = load double, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.b, align 8
  %i.an = zext nneg i32 %i.am to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK2v88internal8GCTracer5PrintEv, i64 %i.an
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !range !5, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5078
  %i.ar = load i8, ptr %i.aq, align 2, !range !5, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load <2 x i64>, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = load ptr, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1912
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef i64 @_ZN2v88internal15MemoryAllocator20GetPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312) %i.az) #19
  %i.bb = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.bd = load double, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %i.bf = load double, ptr %i.be, align 8         ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.bh = load double, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i32, ptr %i.bi, align 8
  switch i32 %i.bj, label %bb.ah [
    i32 1, label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
    i32 15, label %bb.p
    i32 16, label %bb.q
    i32 17, label %bb.r
    i32 18, label %bb.s
    i32 19, label %bb.t
    i32 20, label %bb.u
    i32 21, label %bb.v
    i32 22, label %bb.w
    i32 23, label %bb.x
    i32 24, label %bb.y
    i32 0, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 30, label %bb.ac
    i32 27, label %bb.ad
    i32 28, label %bb.ae
    i32 29, label %bb.af
    i32 31, label %bb.ag
  ]

bb.c:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.d:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.e:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.f:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.g:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.h:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.i:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.j:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.k:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.l:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.m:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.n:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.o:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.p:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.q:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.r:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.s:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.t:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.u:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.v:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.w:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.x:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.y:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.z:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.aa:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.ab:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.ac:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.ad:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.ae:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.af:                                            ; preds = %switch.lookup
  br label %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit

bb.ag:                                            ; preds = %switch.lookup
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.169) #22
  unreachable

bb.ah:                                            ; preds = %switch.lookup
  unreachable

_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit: ; preds = %switch.lookup, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.0.i4 = phi ptr [ @.str.208, %bb.af ], [ @.str.179, %bb.c ], [ @.str.180, %bb.d ], [ @.str.181, %bb.e ], [ @.str.182, %bb.f ], [ @.str.183, %bb.g ], [ @.str.184, %bb.h ], [ @.str.185, %bb.i ], [ @.str.186, %bb.j ], [ @.str.187, %bb.k ], [ @.str.188, %bb.l ], [ @.str.189, %bb.m ], [ @.str.190, %bb.n ], [ @.str.191, %bb.o ], [ @.str.192, %bb.p ], [ @.str.193, %bb.q ], [ @.str.194, %bb.r ], [ @.str.195, %bb.s ], [ @.str.196, %bb.t ], [ @.str.197, %bb.u ], [ @.str.198, %bb.v ], [ @.str.199, %bb.w ], [ @.str.200, %bb.x ], [ @.str.201, %bb.y ], [ @.str.202, %bb.z ], [ @.str.203, %bb.aa ], [ @.str.204, %bb.ab ], [ @.str.205, %bb.ac ], [ @.str.206, %bb.ad ], [ @.str.207, %bb.ae ], [ @.str.178, %switch.lookup ]
  %i.bk = fadd double %i.bd, %i.bf                ; 2 uses
  %i.bl = fcmp oeq double %i.bk, 0.000000e+00
  %i.bm = fdiv double %i.bf, %i.bk
  %.0.i3 = select i1 %i.bl, double 1.000000e+00, double %i.bm
  %i.bn = fsub double %i.aj, %i.al
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  %spec.select = select i1 %.not, ptr @.str.28, ptr %i.bp
  %i.bq = shl i64 %i.ba, 18
  %i.br = uitofp i64 %i.bq to double
  %i.bs = fmul nnan double %i.br, f0x3EB0000000000000
  %i.bt = uitofp i64 %i.aw to double
  %i.bu = fmul nnan double %i.bt, f0x3EB0000000000000
  %4 = uitofp <2 x i64> %3 to <2 x double>
  %5 = fmul nnan <2 x double> %4, splat (double f0x3EB0000000000000) ; 2 uses
  %i.bv = uitofp i64 %i.at to double
  %i.bw = fmul nnan double %i.bv, f0x3EB0000000000000
  %i.bx = trunc nuw i8 %i.ar to i1
  %i.by = select i1 %i.bx, ptr @.str.29, ptr @.str.28
  %i.bz = trunc nuw i8 %i.ap to i1
  %i.ca = select i1 %i.bz, ptr @.str.27, ptr @.str.28
  %i.cb = fadd double %i.u, %i.w
  %i.cc = fadd double %i.cb, %i.y
  %i.cd = fadd double %i.cc, %i.aa
  %i.ce = fadd double %i.cd, %i.ac
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  call void (ptr, ptr, ...) @_ZNK2v88internal8GCTracer6OutputEPKcz(ptr noundef nonnull align 8 dereferenceable(6440) %0, ptr noundef nonnull @.str.26, i32 noundef %i.ad, ptr noundef nonnull %i.ah, double noundef %i.bn, ptr noundef nonnull %switch.load, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.by, double noundef %i.bw, double noundef %7, double noundef %6, double noundef %i.bu, double noundef %i.bs, double noundef %i.bb, double noundef %i.ce, ptr noundef nonnull %i.a, double noundef %.0.i3, double noundef %i.bh, ptr noundef nonnull %.0.i4, ptr noundef nonnull %spec.select)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

declare void @_ZN2v88internal4Heap24PrintShortHeapStatisticsEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal7tracing12ScopedTracerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load atomic volatile i8, ptr %i.c monotonic, align 1
  %.not1 = icmp eq i8 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #19 ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.j) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @_ZN2v88internal4Heap22DumpJSONHeapStatisticsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2992), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @_ZN2v88internal14MemoryBalancer13UpdateGCSpeedEmNS_4base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(89), i64 noundef, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8GCTracer15StopAtomicPauseEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(6440) initializes((12, 16)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 3, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) initializes((12, 16)) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::GCTracer::Event", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4
  tail call void @_ZN2v88internal8GCTracer23FetchBackgroundCountersEv(ptr noundef nonnull align 8 dereferenceable(6440) %0)
  %i.c = and i32 %1, -3
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8GCTracer26ReportYoungCycleToRecorderEv(ptr noundef nonnull align 8 dereferenceable(6440) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.g = load i64, ptr %i.e, align 8
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add nsw i64 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add nsw i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add nsw i64 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sdiv i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4648
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4808 ; 4 uses
  %i.w = load i8, ptr %i.v, align 8               ; 2 uses
  %i.x = add i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 8
  %i.y = zext i8 %i.w to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.y ; 2 uses
  store i64 %i.u, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aa = load i8, ptr %i.v, align 8
  %i.ab = icmp eq i8 %i.aa, 10
  br i1 %i.ab, label %bb.c, label %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4809
  store i8 1, ptr %i.ac, align 1
  br label %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit

_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit: ; preds = %bb.b, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5078 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 2, !range !5, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 2 uses
  %i.aj = load i64, ptr %i.ag, align 8
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add nsw i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.ai, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 2 uses
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = load i64, ptr %i.an, align 8
  %i.aq = add nsw i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1712) %2, ptr noundef nonnull align 8 dereferenceable(1712) %i.a, i64 1712, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1712) %i.a, ptr noundef nonnull align 8 dereferenceable(1712) %i.ah, i64 1712, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1712) %i.ah, ptr noundef nonnull align 8 dereferenceable(1712) %2, i64 1712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 0, ptr %i.ad, align 2
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8GCTracer25ReportFullCycleToRecorderEv(ptr noundef nonnull align 8 dereferenceable(6440) %0)
  %i.ar = load ptr, ptr %0, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = add i64 %i.as, -55464
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 58656
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 208 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 232 ; 3 uses
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.f, label %_ZN2v88internal8Counters19mark_compact_reasonEv.exit

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 248 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #19
  %i.bc = load atomic ptr, ptr %i.ay monotonic, align 8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.g, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = tail call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ax) #19
  store atomic ptr %i.be, ptr %i.ay release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i:  ; preds = %bb.g, %bb.f
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #19
  br label %_ZN2v88internal8Counters19mark_compact_reasonEv.exit

_ZN2v88internal8Counters19mark_compact_reasonEv.exit: ; preds = %bb.e, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i32, ptr %i.bf, align 8
  tail call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i32 noundef %i.bg) #19
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1065), align 1, !range !5, !noundef !6
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal8Counters19mark_compact_reasonEv.exit
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = add i64 %i.bk, -55464
  %i.bm = inttoptr i64 %i.bl to ptr
  tail call void (ptr, ptr, ...) @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef %i.bm, ptr noundef nonnull @.str.22) #19
  %i.bn = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal4Heap19PrintFreeListsStatsEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.bn) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit, %bb.d, %_ZN2v88internal8Counters19mark_compact_reasonEv.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer26ReportYoungCycleToRecorderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.v8::metrics::GarbageCollectionYoungCycle", align 8 ; 10 uses
  %2 = alloca %"class.v8::base::TimeDelta", align 8 ; 6 uses
  %3 = alloca %"class.v8::base::TimeDelta", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = add i64 %i.b, -55464
end_hunk_0
