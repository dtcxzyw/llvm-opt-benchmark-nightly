inline.NumInlined: 1641
inline.NumDeleted: 719
begin_hunk_0_@_ZN2v88internal14MessageHandler25ReportMessageNoExceptionsEPNS0_7IsolateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_6ObjectEEENS_5LocalINS_5ValueEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.pre = load i32, ptr %i.n, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %i.ba = add nsw i32 %.pre, -1
  %i.bb = icmp eq ptr %.pre71, %i.q
  store ptr %i.p, ptr %i.l, align 8
  store i32 %i.ba, ptr %i.n, align 8
  br i1 %i.bb, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr %i.m, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %.thread, %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !11

.loopexit:                                        ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %.preheader, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @_ZN2v88internal6Object21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #3

declare void @_ZN2v88TryCatchC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #3

declare void @_ZN2v88TryCatch10SetVerboseEb(ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2v88TryCatch17SetCaptureMessageEb(ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v88TryCatchD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal14MessageHandler10GetMessageEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i, align 8
  %i.n = load i64, ptr %1, align 8
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %i.k, ptr %2, align 8
  %i.t = call ptr @_ZN2v88internal16MessageFormatter6FormatEPNS0_7IsolateENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull %0, i32 noundef %i.s, ptr nonnull %2, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal16MessageFormatter6FormatEPNS0_7IsolateENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef %0, i32 noundef %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #2 align 2 {
.preheader:
  %4 = alloca [3 x %"class.v8::internal::DirectHandle.8"], align 16 ; 5 uses
  %5 = alloca %"class.v8::TryCatch", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not57 = icmp eq i64 %3, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2v88TryCatchC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41) %5, ptr noundef %0) #14
  call void @_ZN2v88TryCatch10SetVerboseEb(ptr noundef nonnull align 8 dereferenceable(41) %5, i1 noundef zeroext false) #14
  call void @_ZN2v88TryCatch17SetCaptureMessageEb(ptr noundef nonnull align 8 dereferenceable(41) %5, i1 noundef zeroext false) #14
  %i.a = call ptr @_ZN2v88internal16MessageFormatter9TryFormatEPNS0_7IsolateENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6StringEEEEE(ptr noundef %0, i32 noundef %1, ptr nonnull %4, i64 %3) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.a

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.056 = phi i64 [ %i.f, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056
  %.sroa.06.0.copyload = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @_ZN2v88internal6Object21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %.sroa.06.0.copyload) #14
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.056
  store ptr %i.d, ptr %i.e, align 8
  %i.f = add nuw i64 %.056, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %._crit_edge
  %i.g = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.5, i64 7, i1 noundef zeroext false) #14
  br label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

bb.a:                                             ; preds = %._crit_edge
  %i.h = load i64, ptr %i.a, align 8              ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = load atomic volatile i64, ptr %i.j acquire, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2 ; 3 uses
  %i.o = and i16 %i.n, -127
  %.not = icmp eq i16 %i.o, 1
  br i1 %.not, label %bb.b, label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = and i16 %i.n, 7
  %i.q = icmp eq i16 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab acquire, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = call ptr @_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr nonnull %i.a, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %.thread, %bb.b
  %.sroa.031.0 = phi i16 [ %i.af, %.thread ], [ %i.n, %bb.b ]
  %.sroa.012.1.i = phi i64 [ %i.z, %.thread ], [ %i.h, %bb.b ] ; 2 uses
  %i.ah = and i16 %.sroa.031.0, -121
  %i.ai = icmp eq i16 %i.ah, 5
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.sroa.012.1.i, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.2.i = phi i64 [ %i.am, %bb.f ], [ %.sroa.012.1.i, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.as = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.as, %bb.h ], [ %i.ao, %bb.g ] ; 3 uses
  %i.at = ptrtoint ptr %.0.i.i to i64
  %i.au = add i64 %i.at, 8
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr %i.an, align 8
  store i64 %.sroa.012.2.i, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %bb.a, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.d, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  %.sroa.024.0 = phi ptr [ %i.g, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit ], [ %i.ag, %bb.d ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.a, %bb.a ]
  call void @_ZN2v88TryCatchD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret ptr %.sroa.024.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal10ErrorUtils16FormatStackTraceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6ObjectEEE(ptr noundef %0, ptr %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.v8::TryCatch", align 8      ; 9 uses
  %4 = alloca %"struct.std::array", align 8       ; 6 uses
  %5 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 116 uses
  %6 = alloca %"class.v8::TryCatch", align 8      ; 5 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !7, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %.critedge65

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 59880 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.g, %i.i
  %or.cond = or i1 %i.j, %i.f
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %1, align 8
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 31
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 10624
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load i64, ptr %i.x, align 8
  %.not.i99 = icmp eq i64 %i.t, %i.y
  br i1 %.not.i99, label %.critedge, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i
  %i.ae = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.aa, %_ZNRSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i ] ; 4 uses
  %i.af = ptrtoint ptr %.0.i.i.i to i64
  %i.ag = add i64 %i.af, 8
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.z, align 8
  store i64 %i.t, ptr %.0.i.i.i, align 8
  %i.ai = tail call noundef zeroext i1 @_ZNK2v88internal7Isolate28HasPrepareStackTraceCallbackEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.d, align 8
  %i.aj = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetStackFramesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEE(ptr noundef nonnull %0, ptr %2) ; 2 uses
  %.not259 = icmp eq ptr %i.aj, null
  br i1 %.not259, label %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit90, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call ptr @_ZN2v88internal7Isolate28RunPrepareStackTraceCallbackENS0_12DirectHandleINS0_13NativeContextEEENS2_INS0_8JSObjectEEENS2_INS0_7JSArrayEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr nonnull %.0.i.i.i, ptr nonnull %1, ptr nonnull %i.aj) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit90

_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit90: ; preds = %bb.h, %bb.g
  %.sroa.0155.1 = phi ptr [ null, %bb.g ], [ %i.ak, %bb.h ]
  store i8 0, ptr %i.d, align 8
  br label %.critedge65

bb.i:                                             ; preds = %bb.f
  %i.al = load i64, ptr %.0.i.i.i, align 8
  %i.am = add i64 %i.al, 2087
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.ab, align 8
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.as, %bb.j ], [ %i.ap, %bb.i ] ; 4 uses
  %i.at = ptrtoint ptr %.0.i.i to i64
  %i.au = add i64 %i.at, 8
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr %i.z, align 8
  store i64 %i.ao, ptr %.0.i.i, align 8
  %i.aw = tail call ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr noundef nonnull @.str.3) ; 3 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %.critedge65, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.k
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = add i16 %i.be, -2065
  %i.bg = icmp ult i16 %i.bf, 17
  br i1 %i.bg, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  store i8 1, ptr %i.d, align 8
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i32 noundef 44) #14
  %i.bh = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetStackFramesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEE(ptr noundef nonnull %0, ptr %2) ; 2 uses
  %.not257 = icmp eq ptr %i.bh, null
  br i1 %.not257, label %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bi = load i64, ptr %1, align 8               ; 2 uses
  %i.bj = add i64 %i.bi, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = add i64 %i.bl, 11
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i16, ptr %i.bn monotonic, align 2
  %i.bp = icmp eq i16 %i.bo, 303
  br i1 %i.bp, label %bb.n, label %bb.p, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.bq = add i64 %i.bi, 31
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.bu = load ptr, ptr %i.ab, align 8
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.o, label %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.bw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.n, %bb.o
  %.0.i.i91 = phi ptr [ %i.bw, %bb.o ], [ %i.bt, %bb.n ] ; 2 uses
  %i.bx = ptrtoint ptr %.0.i.i91 to i64           ; 2 uses
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.z, align 8
  store i64 %i.bs, ptr %.0.i.i91, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit87

bb.p:                                             ; preds = %bb.m
  %i.ca = ptrtoint ptr %1 to i64
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit87

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit87: ; preds = %bb.p, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %storemerge = phi i64 [ %i.ca, %bb.p ], [ %i.bx, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  store i64 %storemerge, ptr %4, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = ptrtoint ptr %i.bh to i64
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %0, ptr nonnull %i.aw, ptr nonnull %.0.i.i, ptr nonnull %4, i64 2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.l, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit87
  %.sroa.0155.3 = phi ptr [ %i.cd, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit87 ], [ null, %bb.l ]
  store i8 0, ptr %i.d, align 8
  br label %.critedge65

.critedge:                                        ; preds = %bb.k, %bb.d, %bb.c, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %0) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN2v88TryCatchC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull %0) #14
  call void @_ZN2v88TryCatch10SetVerboseEb(ptr noundef nonnull align 8 dereferenceable(41) %3, i1 noundef zeroext false) #14
  call void @_ZN2v88TryCatch17SetCaptureMessageEb(ptr noundef nonnull align 8 dereferenceable(41) %3, i1 noundef zeroext false) #14
  %i.ce = call ptr @_ZN2v88internal10ErrorUtils8ToStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_21ToStringMessageSourceE(ptr noundef nonnull %0, ptr %1, i32 noundef 0) ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.q, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit.i

bb.q:                                             ; preds = %.critedge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ck = icmp eq i64 %i.cj, %i.ci
  br i1 %i.ck, label %_ZN2v88internal12_GLOBAL__N_117AppendErrorStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPNS0_24IncrementalStringBuilderE.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.cm = load i64, ptr %i.cl, align 8
  %.not.i31.i = icmp eq i64 %i.cj, %i.cm
  br i1 %.not.i31.i, label %bb.s, label %_ZN2v88internal7Isolate9exceptionEv.exit.i, !prof !5

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.502) #16
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit.i:       ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp eq ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.t, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.t:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit.i
  %i.cs = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.t, %_ZN2v88internal7Isolate9exceptionEv.exit.i
  %.0.i27.i = phi ptr [ %i.cs, %bb.t ], [ %i.co, %_ZN2v88internal7Isolate9exceptionEv.exit.i ] ; 3 uses
  %i.ct = ptrtoint ptr %.0.i27.i to i64
  %i.cu = add i64 %i.ct, 8
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %i.cv, ptr %i.cn, align 8
  store i64 %i.cj, ptr %.0.i27.i, align 8
  call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #14
  %i.cw = call ptr @_ZN2v88internal10ErrorUtils8ToStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_21ToStringMessageSourceE(ptr noundef nonnull %0, ptr nonnull %.0.i27.i, i32 noundef 0) ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.u, label %bb.an

bb.u:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %i.cy = load i64, ptr %i.ch, align 8
  %i.cz = load i64, ptr %i.cg, align 8
  %i.da = icmp eq i64 %i.cz, %i.cy
  br i1 %i.da, label %_ZN2v88internal12_GLOBAL__N_117AppendErrorStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPNS0_24IncrementalStringBuilderE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.w, label %.critedge62.preheader.i

.critedge62.preheader.i:                          ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 21 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.dh = load ptr, ptr %i.de, align 8
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load i32, ptr %i.df, align 4            ; 2 uses
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.df, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.do = zext i32 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.do
  store i16 60, ptr %i.dp, align 2
  %i.dq = load i32, ptr %i.df, align 4            ; 2 uses
  %i.dr = load i32, ptr %i.dg, align 8
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.ag, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit30.i

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 23 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 4 uses
  %i.dx = sub nsw i32 %i.du, %i.dw
  %i.dy = icmp sgt i32 %i.dx, 8
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = add i64 %i.eb, -1
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  br i1 %i.dy, label %bb.x, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w
  %i.ee = add nsw i32 %i.dw, 1
  store i32 %i.ee, ptr %i.dv, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = zext i32 %i.dw to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg
  store i8 60, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.ej = load i32, ptr %i.dt, align 8
  %i.ek = icmp eq i32 %i.ei, %i.ej
  br i1 %i.ek, label %bb.z, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit29.i

bb.x:                                             ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.em = zext i32 %i.dw to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.en, ptr noundef nonnull align 1 dereferenceable(7) @.str.5, i64 7, i1 false)
  %i.eo = load i32, ptr %i.dv, align 4
  %i.ep = add nsw i32 %i.eo, 7                    ; 2 uses
  store i32 %i.ep, ptr %i.dv, align 4
  %i.eq = load i32, ptr %i.dt, align 8
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.y, label %_ZN2v88internal12_GLOBAL__N_117AppendErrorStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPNS0_24IncrementalStringBuilderE.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  br label %_ZN2v88internal12_GLOBAL__N_117AppendErrorStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPNS0_24IncrementalStringBuilderE.exit

bb.z:                                             ; preds = %.preheader.i
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  %.pre93.i = load i32, ptr %i.dv, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit29.i

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit29.i: ; preds = %bb.z, %.preheader.i
  %i.es = phi i32 [ %i.ei, %.preheader.i ], [ %.pre93.i, %bb.z ] ; 2 uses
  %i.et = load ptr, ptr %i.dz, align 8
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = add i64 %i.eu, -1
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = add nsw i32 %i.es, 1
  store i32 %i.ex, ptr %i.dv, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ez = zext i32 %i.es to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  store i8 101, ptr %i.fa, align 1
  %i.fb = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.fc = load i32, ptr %i.dt, align 8
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.aa, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit29.1.i

end_hunk_0
begin_hunk_1_@_ZN2v88internal10ErrorUtils16FormatStackTraceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6ObjectEEE:bb.a
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  %.pre318 = load i32, ptr %i.tp, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit96.5

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit96.5: ; preds = %bb.du, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit96.4
  %i.axt = phi i32 [ %.pre318, %bb.du ], [ %i.axq, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit96.4 ] ; 2 uses
  %i.axu = load ptr, ptr %i.to, align 8
  %i.axv = load i64, ptr %i.axu, align 8
  %i.axw = add i64 %i.axv, -1
  %i.axx = inttoptr i64 %i.axw to ptr
  %i.axy = add nsw i32 %i.axt, 1
  store i32 %i.axy, ptr %i.tp, align 4
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %i.aya = zext i32 %i.axt to i64
  %i.ayb = getelementptr inbounds nuw [2 x i8], ptr %i.axz, i64 %i.aya
  store i16 62, ptr %i.ayb, align 2
  %i.ayc = load i32, ptr %i.tp, align 4
  %i.ayd = load i32, ptr %i.tq, align 8
  %i.aye = icmp eq i32 %i.ayc, %i.ayd
  br i1 %i.aye, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi8EEEvRAT__Kc.exit70.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi8EEEvRAT__Kc.exit70

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi8EEEvRAT__Kc.exit70.sink.split: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit96.5, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit93.5, %bb.di, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit97.5, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit94.5, %bb.cd
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi8EEEvRAT__Kc.exit70

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi8EEEvRAT__Kc.exit70: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi8EEEvRAT__Kc.exit70.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit96.5, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit93.5, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit97.5, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit94.5, %bb.cd, %bb.di, %_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @_ZN2v88TryCatchD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ayf = load i64, ptr %2, align 8
  %i.ayg = add i64 %i.ayf, -1
  %i.ayh = inttoptr i64 %i.ayg to ptr
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 8
  %i.ayj = load i64, ptr %i.ayi, align 8
  %i.ayk = ashr i64 %i.ayj, 32
  %i.ayl = icmp slt i64 %indvars.iv.next, %i.ayk
  br i1 %i.ayl, label %bb.bi, label %._crit_edge, !llvm.loop !15

bb.dv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117AppendErrorStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPNS0_24IncrementalStringBuilderE.exit, %_ZN2v88internal12_GLOBAL__N_117AppendErrorStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPNS0_24IncrementalStringBuilderE.exit.thread, %._crit_edge
  %.sroa.0155.4 = phi ptr [ %i.tv, %._crit_edge ], [ null, %_ZN2v88internal12_GLOBAL__N_117AppendErrorStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPNS0_24IncrementalStringBuilderE.exit.thread ], [ null, %_ZN2v88internal12_GLOBAL__N_117AppendErrorStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPNS0_24IncrementalStringBuilderE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.critedge65

.critedge65:                                      ; preds = %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit90, %bb.dv, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.b
  %.sroa.0155.7 = phi ptr [ %i.c, %bb.b ], [ %.sroa.0155.4, %bb.dv ], [ %.sroa.0155.1, %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit90 ], [ %.sroa.0155.3, %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ null, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  ret ptr %.sroa.0155.7
}

declare noundef zeroext i1 @_ZNK2v88internal7Isolate28HasPrepareStackTraceCallbackEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetStackFramesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEE(ptr noundef %0, ptr nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32                        ; 2 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 8
  %i.i = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, 479
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.b, label %_ZN2v88internal7Isolate17callsite_functionEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14
  br label %_ZN2v88internal7Isolate17callsite_functionEv.exit

_ZN2v88internal7Isolate17callsite_functionEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.w, %bb.b ], [ %i.s, %bb.a ] ; 4 uses
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.q, ptr %.0.i.i.i, align 8
  %i.aa = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.g, i8 noundef zeroext 0, i8 0) #14 ; 3 uses
  %.not65 = icmp sgt i32 %i.g, 0
  br i1 %.not65, label %.lr.ph, label %.critedge29

.lr.ph:                                           ; preds = %_ZN2v88internal7Isolate17callsite_functionEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7904
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.ac = load i64, ptr %1, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.t, align 8
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.al, %bb.d ], [ %i.ai, %bb.c ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.r, align 8
  store i64 %i.ah, ptr %.0.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal8JSObject3NewENS0_12DirectHandleINS0_10JSFunctionEEENS2_INS0_10JSReceiverEEENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr nonnull %.0.i.i.i, ptr nonnull %.0.i.i.i, ptr null, i8 noundef zeroext 0) #14 ; 3 uses
  %.not64 = icmp eq ptr %i.ap, null
  br i1 %.not64, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aq = tail call ptr @_ZN2v88internal8JSObject30SetOwnPropertyIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr nonnull %i.ap, ptr nonnull %i.ab, ptr nonnull %.0.i.i, i32 noundef 2) #14
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.aa, align 8
  %i.at = add i64 %i.as, -1                       ; 3 uses
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.ap, align 8            ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.av, ptr %i.ax monotonic, align 8
  %i.ay = trunc i64 %i.av to i1
  br i1 %i.ay, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %bb.f
  %i.az = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.bb = and i64 %i.at, -262144
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %i.bc, align 262144       ; 2 uses
  %i.be = and i64 %i.bd, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.be, 0
  %i.bf = and i64 %i.bd, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not38.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bg = and i64 %i.av, -262144
  %i.bh = inttoptr i64 %i.bg to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.bh, align 262144
  %i.bi = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not39.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.az, i64 noundef %i.ba, i64 %i.av) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.az, i64 %i.ba, i64 %i.av) #14
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.f, %bb.j, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %.critedge29, label %bb.c, !llvm.loop !16

.critedge29:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal7Isolate17callsite_functionEv.exit
  %i.bj = load i64, ptr %i.aa, align 8
  %i.bk = add i64 %i.bj, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = tail call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.aa, i8 noundef zeroext 3, i32 noundef %i.bp, i8 noundef zeroext 0) #14
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.e, %.critedge29
  %.sroa.052.1 = phi ptr [ %i.bq, %.critedge29 ], [ null, %bb.e ], [ null, %_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  ret ptr %.sroa.052.1
}

declare ptr @_ZN2v88internal7Isolate28RunPrepareStackTraceCallbackENS0_12DirectHandleINS0_13NativeContextEEENS2_INS0_8JSObjectEEENS2_INS0_7JSArrayEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %0, ptr %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %i.b = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, i64 %i.a) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %.pre.pre.i = load i64, ptr %i.b, align 8
  %i.c = add i64 %.pre.pre.i, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 128
  br i1 %i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.m = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.m, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 -1, i64 16, i1 false)
  %i.z = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = and i16 %i.ac, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ad, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !14
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ah = load i8, ptr %i.ag, align 8, !range !7
  %i.ai = trunc nuw i8 %i.ah to i1
  %not..i.i.i23.i.i.i = xor i1 %i.af, true
  %i.aj = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ai
  br i1 %i.aj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.al = load i8, ptr %i.ak, align 8, !range !7, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #18
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ao = load ptr, ptr %i.an, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ap = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.aq = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.b) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.aq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.b, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.s, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #14
  %i.ar = load i32, ptr %i.n, align 4
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.as = load ptr, ptr %i.r, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 648
  br label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.au = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #14
  br label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.au, %bb.f ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %.sroa.07.0.i
}

declare void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320), i32 noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #3

declare void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #3

declare void @_ZN2v88internal21SerializeCallSiteInfoEPNS0_7IsolateENS0_12DirectHandleINS0_12CallSiteInfoEEEPNS0_24IncrementalStringBuilderE(ptr noundef, ptr, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal10ErrorUtils8ToStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_21ToStringMessageSourceE(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle"], align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 18 uses
  %5 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 16 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i, label %bb.b

_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ugt i16 %i.h, 299
  br i1 %i.i, label %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i, %bb.a
  %i.j = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.499, i64 24, i8 noundef zeroext 0) #14 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.509) #16
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.j, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.l, align 8
  %i.m = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 80, ptr nonnull %3, i64 2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.n = load i64, ptr %i.m, align 8
  %i.o = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.n, ptr noundef null) #14 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52

_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.r = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_126GetStringPropertyOrDefaultEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS0_6HandleIS7_EE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %i.p, ptr nonnull %i.q) ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.u = icmp eq i32 %2, 0
  br i1 %i.u, label %bb.e, label %.thread109

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7936
  store i32 2, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.v, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 -1, i64 16, i1 false)
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  %i.ah = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %4, i32 noundef 0) #14 ; 3 uses
  %i.ai = load i32, ptr %i.w, align 4
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %.thread111, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = trunc i64 %i.aj to i1
  br i1 %i.an, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.ao = add nsw i64 %i.aj, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = icmp ult i16 %i.at, 128
  br i1 %i.au, label %.thread111, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.g, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.av = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %i.ah) #14 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.critedge, label %.thread111

.critedge:                                        ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52

.thread111:                                       ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.f, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.068.0.ph = phi ptr [ %i.t, %bb.f ], [ %i.av, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.ah, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
end_hunk_1
begin_hunk_2_@_ZN2v88internal10ErrorUtils9ConstructEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEES8_S8_NS0_13FrameSkipModeES8_NS1_20StackTraceCollectionE:bb.a
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.m, ptr %.0.i.i.i, align 8
  %i.w = icmp eq ptr %1, %.0.i.i.i
  br i1 %i.w, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7Isolate20range_error_functionEv.exit
  %i.x = icmp eq ptr %1, null
  br i1 %i.x, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread141, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.d
  %i.y = load i64, ptr %1, align 8
  %i.z = icmp eq i64 %i.y, %i.m
  br i1 %i.z, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread141

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread: ; preds = %_ZN2v88internal7Isolate20range_error_functionEv.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.497) #16
  unreachable

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread141: ; preds = %bb.d, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.aa = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.498, i64 66) #14
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread141, %bb.a
  %.sroa.092.0 = phi ptr [ %i.aa, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread141 ], [ %3, %bb.a ] ; 3 uses
  %i.ab = load i64, ptr %2, align 8               ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62: ; preds = %bb.e
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = icmp ugt i16 %i.ai, 299
  br i1 %i.aj, label %bb.f, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62.thread: ; preds = %bb.e, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62.thread
  %.sroa.039.0 = phi ptr [ %1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62.thread ], [ %2, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit62 ]
  %i.ak = tail call ptr @_ZN2v88internal8JSObject3NewENS0_12DirectHandleINS0_10JSFunctionEEENS2_INS0_10JSReceiverEEENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr %1, ptr %.sroa.039.0, ptr null, i8 noundef zeroext 0) #14 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %.sroa.092.0, align 8     ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.am to i1
  br i1 %i.aq, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.ar = add nsw i64 %i.am, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = icmp ult i16 %i.aw, 128
  br i1 %i.ax, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread149, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.h, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ay = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %.sroa.092.0) #14 ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread149

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread149: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.07.0.i147151 = phi ptr [ %i.ay, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %.sroa.092.0, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 6648
  %i.ba = tail call ptr @_ZN2v88internal8JSObject30SetOwnPropertyIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr nonnull %i.ak, ptr nonnull %i.az, ptr nonnull %.sroa.07.0.i147151, i32 noundef 2) #14
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread149
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1473), align 1, !range !7, !noundef !14
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 7936
  %i.bf = tail call ptr @_ZN2v88internal8JSObject30SetOwnPropertyIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr nonnull %i.ak, ptr nonnull %i.be, ptr nonnull %.sroa.07.0.i147151, i32 noundef 2) #14
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.bh = load i64, ptr %4, align 8               ; 3 uses
  %i.bi = load i64, ptr %i.an, align 8
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5624 ; 3 uses
  %i.bl = trunc i64 %i.bh to i1
  br i1 %i.bl, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l
  %i.bm = add nsw i64 %i.bh, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = icmp ugt i16 %i.br, 299
  br i1 %i.bs, label %bb.m, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.m:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %0, ptr nonnull %i.bk)
  %i.bt = load ptr, ptr %9, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = load i64, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull %0, ptr nonnull %4, ptr %i.bt, i64 noundef %i.bv, ptr nonnull %4, i32 noundef 3)
  %i.bw = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %8) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.bx = trunc i16 %i.bw to i1
  br i1 %i.bx, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.m
  %i.by = and i16 %i.bw, 256
  %.not154 = icmp eq i16 %i.by, 0
  br i1 %.not154, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.bz = call ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %4, ptr nonnull %i.bk) ; 2 uses
  %.not155 = icmp eq ptr %i.bz, null
  br i1 %.not155, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = call ptr @_ZN2v88internal8JSObject30SetOwnPropertyIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr nonnull %i.ak, ptr nonnull %i.bk, ptr nonnull %i.bz, i32 noundef 2) #14
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, %bb.o, %_ZNKR2v85MaybeIbE8FromJustEv.exit, %bb.k
  %cond4 = icmp eq i32 %7, 0
  br i1 %cond4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.cc = call ptr @_ZN2v88internal7Isolate23CaptureAndSetErrorStackENS0_12DirectHandleINS0_8JSObjectEEENS0_13FrameSkipModeENS0_6HandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr nonnull %i.ak, i32 noundef %5, ptr %i.a) #14
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  br label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread149, %bb.j, %bb.p, %bb.m, %bb.o, %bb.n, %bb.f, %bb.q
  %.sroa.096.3 = phi ptr [ null, %bb.m ], [ %i.ak, %bb.q ], [ null, %bb.f ], [ null, %bb.p ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.j ], [ null, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread149 ], [ null, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ]
  ret ptr %.sroa.096.3
}

declare ptr @_ZN2v88internal8JSObject3NewENS0_12DirectHandleINS0_10JSFunctionEEENS2_INS0_10JSReceiverEEENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr, ptr, ptr, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZN2v88internal8JSObject30SetOwnPropertyIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr, ptr, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %.pre.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.k = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !14
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !7
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !7, !noundef !14
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #18
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #14
  %i.ap = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.as = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.07.0 = phi ptr [ %i.as, %bb.f ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %.sroa.07.0
}

declare ptr @_ZN2v88internal7Isolate23CaptureAndSetErrorStackENS0_12DirectHandleINS0_8JSObjectEEENS0_13FrameSkipModeENS0_6HandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr, i32 noundef, ptr) local_unnamed_addr #3

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_126GetStringPropertyOrDefaultEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS0_6HandleIS7_EE(ptr noundef %0, ptr %1, ptr %2, ptr nofree readnone captures(ret: address, provenance) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.pre.pre.i = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre.i, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.k = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.k, ptr %4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !14
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !7
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !7, !noundef !14
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #18
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  %i.ap = load i32, ptr %i.l, align 4
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.e

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.as = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i27 = phi ptr [ %i.ar, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 3 uses
  %i.au = load i64, ptr %.sroa.07.0.i27, align 8  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = trunc i64 %i.au to i1
  br i1 %i.ay, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.f
  %i.az = add nsw i64 %i.au, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = icmp ult i16 %i.be, 128
  br i1 %i.bf, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.f, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bg = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %.sroa.07.0.i27) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.e, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.017.1 = phi ptr [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %i.bg, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %3, %bb.e ], [ %.sroa.07.0.i27, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  ret ptr %.sroa.017.1
}

declare ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal10ErrorUtils16MakeGenericErrorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_15MessageTemplateENS_4base6VectorIKNS4_INS0_6ObjectEEEEENS0_13FrameSkipModeE(ptr noundef %0, ptr %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4, i32 noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1472), align 64, !range !7, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.g) #14
  %.pre = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

_ZN2v88internal7Isolate15clear_exceptionEv.exit:  ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7Isolate15clear_exceptionEv.exit, %bb.a
  %i.j = tail call ptr @_ZN2v88internal16MessageFormatter6FormatEPNS0_7IsolateENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef %0, i32 noundef %2, ptr %3, i64 %4)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.l = tail call ptr @_ZN2v88internal10ErrorUtils9ConstructEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEES8_S8_NS0_13FrameSkipModeES8_NS1_20StackTraceCollectionE(ptr noundef nonnull %0, ptr %1, ptr %1, ptr %i.j, ptr nonnull %i.k, i32 noundef %5, i64 0, i32 noundef 0) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE5CheckEv.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.509) #16
  unreachable

_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE5CheckEv.exit: ; preds = %bb.d
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal10ErrorUtils33ShadowRealmConstructTypeErrorCopyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_15MessageTemplateENS_4base6VectorIKS6_EE(ptr noundef %0, ptr %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1472), align 64, !range !7, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.g) #14
  %.pre = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

_ZN2v88internal7Isolate15clear_exceptionEv.exit:  ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7Isolate15clear_exceptionEv.exit, %bb.a
  %i.j = tail call ptr @_ZN2v88internal16MessageFormatter6FormatEPNS0_7IsolateENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef %0, i32 noundef %2, ptr %3, i64 %4)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.l = load i64, ptr %1, align 8                ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.d
  %i.n = add nsw i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = icmp ugt i16 %i.s, 302
  br i1 %i.t, label %bb.e, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.e:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.u = tail call ptr @_ZN2v88internal10ErrorUtils17GetFormattedStackEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull %0, ptr nonnull %1) ; 7 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.e
end_hunk_2
