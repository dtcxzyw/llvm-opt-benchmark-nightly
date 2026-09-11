Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/gc-tracer?download=true
inline.NumInlined: 1245
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2v88internal8GCTracer38ReportIncrementalMarkingStepToRecorderEd:bb.a
bb.h:                                             ; preds = %bb.g, %_ZNKRSt8optionalIN5cppgc8internal14MetricRecorder25MainThreadIncrementalMarkEE5valueEv.exit, %_ZNSt6vectorIN2v87metrics46GarbageCollectionFullMainThreadIncrementalMarkESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.at = phi ptr [ %.pre4, %bb.g ], [ %.pre, %_ZNKRSt8optionalIN5cppgc8internal14MetricRecorder25MainThreadIncrementalMarkEE5valueEv.exit ], [ %i.ai, %_ZNSt6vectorIN2v87metrics46GarbageCollectionFullMainThreadIncrementalMarkESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit ]
  %i.au = fmul double %1, 1.000000e+03
  %i.av = fptosi double %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -16
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.i, align 8
  %i.ay = load ptr, ptr %i.h, align 8
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp eq i64 %i.bb, 256
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %0, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.be, -55464
  %i.bg = inttoptr i64 %i.bf to ptr
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_118FlushBatchedEventsINS_7metrics46GarbageCollectionFullMainThreadIncrementalMarkEEEvRNS3_30GarbageCollectionBatchedEventsIT_EEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef %i.bg)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer26AddIncrementalSweepingStepEd(ptr noundef nonnull align 8 dereferenceable(6440) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN2v88internal8GCTracer39ReportIncrementalSweepingStepToRecorderEd(ptr noundef nonnull align 8 dereferenceable(6440) %0, double noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer39ReportIncrementalSweepingStepToRecorderEd(ptr noundef nonnull align 8 dereferenceable(6440) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 63600
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 @_ZNK2v88internal7metrics8Recorder19HasEmbedderRecorderEv(ptr noundef nonnull align 8 dereferenceable(136) %i.f) #19
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5104 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5112 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5120 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 -1, i64 16, i1 false)
  %i.m = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.i, align 8
  br label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775792
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.209) #22
  unreachable

_ZNKSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 -1, i64 16, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNKSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !43
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i22.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i
  %i.ae = load ptr, ptr %i.k, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i
  store ptr %i.z, ptr %i.h, align 8
  store ptr %i.ad, ptr %i.i, align 8
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ah, ptr %i.k, align 8
  br label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ai = phi ptr [ %i.m, %bb.c ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.aj = fmul double %1, 1.000000e+03
  %i.ak = fptosi double %i.aj to i64
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = load ptr, ptr %i.i, align 8
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp eq i64 %i.ap, 256
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.ar = load ptr, ptr %0, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = add i64 %i.as, -55464
  %i.au = inttoptr i64 %i.at to ptr
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_118FlushBatchedEventsINS_7metrics47GarbageCollectionFullMainThreadIncrementalSweepEEEvRNS3_30GarbageCollectionBatchedEventsIT_EEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef %i.au)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8GCTracer6OutputEPKcz(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0, ptr noundef %1, ...) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1060), align 4, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @_ZN2v84base2OS6VPrintEPKcP13__va_list_tag(ptr noundef %1, ptr noundef nonnull %2) #19
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.d = call noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr nonnull %i.a, i64 256, ptr noundef %1, ptr noundef nonnull %3) #19 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.e = load ptr, ptr %0, align 8
  call void @_ZN2v88internal4Heap15AddToRingBufferEPKc(ptr noundef nonnull align 8 dereferenceable(2992) %i.e, ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

declare void @_ZN2v84base2OS6VPrintEPKcP13__va_list_tag(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal4Heap15AddToRingBufferEPKc(ptr noundef nonnull align 8 dereferenceable(2992), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef i32 @_ZN2v84base2OS8SNPrintFEPciPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN2v84base2OS19GetCurrentProcessIdEv() local_unnamed_addr #4

declare noundef i64 @_ZN2v88internal15MemoryAllocator20GetPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer36AverageMarkCompactMutatorUtilizationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %1 = load <2 x double>, ptr %i.a, align 8       ; 2 uses
  %2 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %1) ; 2 uses
  %3 = fcmp oeq double %2, 0.000000e+00
  %4 = extractelement <2 x double> %1, i64 0
  %i.b = fdiv double %4, %2
  %.0 = select i1 %3, double 1.000000e+00, double %i.b
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer36CurrentMarkCompactMutatorUtilizationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.b = load double, ptr %i.a, align 8
  ret double %i.b
}

declare noundef nonnull align 8 dereferenceable(400) ptr @_ZN4heap4base17UnsafeJsonEmitter12object_startEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(400) ptr @_ZN4heap4base17UnsafeJsonEmitter1pIPKcEERS1_S4_T_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.215, i64 noundef 1) #19 ; 0 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = or i32 %i.m, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n) #19
  br label %_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.o) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit

_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit: ; preds = %bb.d, %bb.e
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.215, i64 noundef 1) #19 ; 0 uses
  store i8 0, ptr %i.a, align 8
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2v88internal4Heap13IsGCWithStackEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #4

declare noundef i64 @_ZN2v88internal15MemoryAllocator26GetSharedPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

declare noundef i64 @_ZN2v88internal15MemoryAllocator25GetTotalPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer41AllocationThroughputInBytesPerMillisecondEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %.val.i = load double, ptr %i.a, align 8        ; 2 uses
  %i.b = fcmp ogt double %.val.i, f0x41D0000000000000
  %.sroa.speculated.i.i = select i1 %i.b, double f0x41D0000000000000, double %.val.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %.val.i1 = load double, ptr %i.c, align 8       ; 2 uses
  %i.d = fcmp ogt double %.val.i1, f0x41D0000000000000
  %.sroa.speculated.i.i2 = select i1 %i.d, double f0x41D0000000000000, double %.val.i1
  %i.e = fadd double %.sroa.speculated.i.i, %.sroa.speculated.i.i2
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer49NewSpaceAllocationThroughputInBytesPerMillisecondEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %.val = load double, ptr %i.a, align 8          ; 2 uses
  %i.b = fcmp ogt double %.val, f0x41D0000000000000
  %.sroa.speculated.i = select i1 %i.b, double f0x41D0000000000000, double %.val
  ret double %.sroa.speculated.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer20AverageSurvivalRatioEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5065
  %i.c = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.f = load i8, ptr %i.e, align 8               ; 8 uses
  %i.g = icmp ne i8 %i.f, 0                       ; 2 uses
  %.not3 = select i1 %i.d, i1 true, i1 %i.g
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = zext i8 %i.f to i64                      ; 2 uses
  %xtraiter = and i8 %i.f, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.0132.i.prol = phi double [ %i.l, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.i = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i.prol
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load double, ptr %i.j, align 8
  %i.l = fadd double %.0132.i.prol, %i.k          ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !44

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa9.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.h, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.0132.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = icmp ult i8 %i.f, 4
  br i1 %i.m, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.013.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %.lcssa9.unr, %.lr.ph.i.prol.loopexit ], [ %i.ag, %.lr.ph.i ] ; 3 uses
  %i.n = icmp ult i8 %i.f, 10
  %or.cond.i = and i1 %i.n, %i.d
  br i1 %or.cond.i, label %.lr.ph6.preheader.i, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit"

.lr.ph6.preheader.i:                              ; preds = %._crit_edge.i
  %narrow = sub nuw nsw i8 10, %i.f
  %i.o = zext nneg i8 %narrow to i64              ; 2 uses
  %xtraiter10 = and i64 %i.o, 7                   ; 3 uses
  %i.p = add nsw i8 %i.f, -3
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.lr.ph6.i.epil.preheader, label %.lr.ph6.preheader.i.new

.lr.ph6.preheader.i.new:                          ; preds = %.lr.ph6.preheader.i
  %unroll_iter = and i64 %i.o, 8
  br label %.lr.ph6.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.0132.i = phi double [ %i.ag, %.lr.ph.i ], [ %.0132.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.r = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load double, ptr %i.s, align 8
  %i.u = fadd double %.0132.i, %i.t
  %i.v = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %i.x = load double, ptr %i.w, align 8
  %i.y = fadd double %i.u, %i.x
  %i.z = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load double, ptr %i.aa, align 8
  %i.ac = fadd double %i.y, %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -32
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fadd double %i.ac, %i.af                ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.ah = and i64 %indvars.iv.next.i.3, 255
  %.not.i.3 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5

.lr.ph6.i:                                        ; preds = %.lr.ph6.i, %.lr.ph6.preheader.i.new
  %indvars.iv10.i = phi i64 [ 10, %.lr.ph6.preheader.i.new ], [ %indvars.iv.next11.i.7, %.lr.ph6.i ] ; 9 uses
  %.14.i = phi double [ %.013.lcssa.i, %.lr.ph6.preheader.i.new ], [ %i.bn, %.lr.ph6.i ]
  %niter = phi i64 [ 0, %.lr.ph6.preheader.i.new ], [ %niter.next.7, %.lr.ph6.i ]
  %i.ai = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv10.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fadd double %.14.i, %i.ak
  %i.am = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv10.i
  %i.an = getelementptr i8, ptr %i.am, i64 -16
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = fadd double %i.al, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv10.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load double, ptr %i.ar, align 8
  %i.at = fadd double %i.ap, %i.as
  %i.au = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv10.i
  %i.av = getelementptr i8, ptr %i.au, i64 -32
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = fadd double %i.at, %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv10.i
  %i.az = getelementptr i8, ptr %i.ay, i64 -40
  %i.ba = load double, ptr %i.az, align 8
  %i.bb = fadd double %i.ax, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv10.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -48
  %i.be = load double, ptr %i.bd, align 8
  %i.bf = fadd double %i.bb, %i.be
  %i.bg = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv10.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -56
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_118FlushBatchedEventsINS_7metrics47GarbageCollectionFullMainThreadIncrementalSweepEEEvRNS3_30GarbageCollectionBatchedEventsIT_EEPNS0_7IsolateE:bb.a
  store i32 %i.y, ptr %i.i, align 8
  %i.z = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.z, %i.h
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.g, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %1) #19
  br label %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.d, %bb.e
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.w, %bb.e ], [ %i.w, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics30GarbageCollectionBatchedEventsINS4_47GarbageCollectionFullMainThreadIncrementalSweepEEEEEvRKT_NS4_8Recorder9ContextIdE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.04.0.i) #19, !inline_history !77
  br label %_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics30GarbageCollectionBatchedEventsINS4_47GarbageCollectionFullMainThreadIncrementalSweepEEEEEvRKT_NS4_8Recorder9ContextIdE.exit

_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics30GarbageCollectionBatchedEventsINS4_47GarbageCollectionFullMainThreadIncrementalSweepEEEEEvRKT_NS4_8Recorder9ContextIdE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit, %bb.f
  %i.af = load ptr, ptr %0, align 8               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v87metrics30GarbageCollectionBatchedEventsINS0_47GarbageCollectionFullMainThreadIncrementalSweepEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics30GarbageCollectionBatchedEventsINS4_47GarbageCollectionFullMainThreadIncrementalSweepEEEEEvRKT_NS4_8Recorder9ContextIdE.exit
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #20
  br label %_ZN2v87metrics30GarbageCollectionBatchedEventsINS0_47GarbageCollectionFullMainThreadIncrementalSweepEED2Ev.exit

_ZN2v87metrics30GarbageCollectionBatchedEventsINS0_47GarbageCollectionFullMainThreadIncrementalSweepEED2Ev.exit: ; preds = %bb.g, %_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics30GarbageCollectionBatchedEventsINS4_47GarbageCollectionFullMainThreadIncrementalSweepEEEEEvRKT_NS4_8Recorder9ContextIdE.exit
  ret void
}

declare void @_ZN2v88internal7CppHeap21MetricRecorderAdapter29FlushBatchedIncrementalEventsEv(ptr noundef nonnull align 8 dereferenceable(480)) local_unnamed_addr #4

declare void @_ZN2v88internal7CppHeap21MetricRecorderAdapter22ExtractLastFullGcEventEv(ptr dead_on_unwind writable sret(%"class.std::optional.776") align 8, ptr noundef nonnull align 8 dereferenceable(480)) local_unnamed_addr #4

declare { i64, i8 } @_ZN2v88internal7CppHeap21MetricRecorderAdapter31ExtractLastIncrementalMarkEventEv(ptr noundef nonnull align 8 dereferenceable(480)) local_unnamed_addr #4

declare void @_ZN2v88internal7CppHeap21MetricRecorderAdapter22ClearCachedYoungEventsEv(ptr noundef nonnull align 8 dereferenceable(480)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 3) i32 @_ZNK2v88internal8GCTracer19GetCurrentCollectorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.169) #22
  unreachable

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 2, %bb.c ], [ 1, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal8GCTracer26UpdateCurrentEventPriorityENS_7Isolate8PriorityE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(6440) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i32, ptr %i.a, align 8
  %i.f = icmp ne i32 %i.e, %1
  %or.cond.not = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @abort() #22
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare noundef i64 @_ZNK2v88internal4Heap26OldGenerationSizeOfObjectsEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal18PagedSpaceIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare noundef i64 @_ZNK2v88internal14PagedSpaceBase5WasteEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp2(double noundef) local_unnamed_addr #14

declare noundef double @_ZNK2v88internal4Heap31MonotonicallyIncreasingTimeInMsEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #4

declare noundef i64 @_ZNK2v84base9TimeDelta14InMillisecondsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare i64 @_ZN2v88internal7Isolate30GetOrRegisterRecorderContextIdENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !14}
!2 = distinct !{null}
!3 = distinct !{null, null}
!4 = distinct !{!4, !14}
!5 = distinct !{!5, !14}
!6 = distinct !{!6, !14}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 1, i32 1000, i32 1000}
!21 = distinct !{!21, !14, !16, !17}
!22 = distinct !{!22, !14, !17, !16}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !14, !16, !17}
!27 = distinct !{!27, !14, !17, !16}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !14, !16, !17}
!30 = distinct !{!30, !14, !17, !16}
!31 = distinct !{!31, !18}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{!34, !"_ZSt19__relocate_object_aIN2v87metrics46GarbageCollectionFullMainThreadIncrementalMarkES2_SaIS2_EEvPT_PT0_RT1_"}
!35 = distinct !{!35, !34, !"_ZSt19__relocate_object_aIN2v87metrics46GarbageCollectionFullMainThreadIncrementalMarkES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!36 = distinct !{!36, !34, !"_ZSt19__relocate_object_aIN2v87metrics46GarbageCollectionFullMainThreadIncrementalMarkES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!37 = distinct !{!37, !14}
!38 = !{!36, !35}
!39 = distinct !{!39, !"_ZSt19__relocate_object_aIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepES2_SaIS2_EEvPT_PT0_RT1_"}
!40 = distinct !{!40, !39, !"_ZSt19__relocate_object_aIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !39, !"_ZSt19__relocate_object_aIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!42 = distinct !{!42, !14}
!43 = !{!41, !40}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !14, !16, !17}
!47 = distinct !{!47, !14, !17, !16}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !14, !16, !17}
!50 = distinct !{!50, !14, !17, !16}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !14, !16, !17}
!53 = distinct !{!53, !14, !17, !16}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !14, !16, !17}
!56 = distinct !{!56, !14, !17, !16}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !14, !16, !17}
!59 = distinct !{!59, !14, !17, !16}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !14, !16, !17}
!62 = distinct !{!62, !14, !17, !16}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !14, !16, !17}
!65 = distinct !{!65, !14, !17, !16}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !14, !16, !17}
!68 = distinct !{!68, !14, !17, !16}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !14, !16, !17}
!71 = distinct !{!71, !14, !17, !16}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !14, !16, !17}
!74 = distinct !{!74, !14, !17, !16}
!75 = distinct !{!75, !18}
!76 = distinct !{null}
!77 = distinct !{null}
end_hunk_1
