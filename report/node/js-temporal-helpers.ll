inline.NumInlined: 320
inline.NumDeleted: 176
begin_hunk_0_@_ZN2v88internal8temporal18TimeDurationRecord6CreateEPNS0_7IsolateEddddddd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.f = load i64, ptr %i.e, align 8
  %i.g = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.f, ptr noundef null) #9 ; 0 uses
  store i8 0, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !alias.scope !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.h, align 8
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %.sroa.5.0..sroa_idx18, align 8
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %.sroa.6.0..sroa_idx20, align 8
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %.sroa.7.0..sroa_idx22, align 8
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %.sroa.8.0..sroa_idx24, align 8
  %.sroa.9.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %7, ptr %.sroa.9.0..sroa_idx26, align 8
  %.sroa.10.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %8, ptr %.sroa.10.0..sroa_idx28, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8temporal14DurationRecord6CreateEPNS0_7IsolateEdddddddddd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::Maybe.444") align 8 captures(none) %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11) local_unnamed_addr #3 align 2 {
bb.a:
  %12 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %13 = alloca %"struct.v8::internal::temporal::DurationRecord", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  store double %2, ptr %13, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 16
  store double %4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 24
  store double %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 32
  store double %6, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 40
  store double %7, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 48
  store double %8, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 56
  store double %9, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 64
  store double %10, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 72
  store double %11, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_ZN2v88internal8temporal15IsValidDurationEPNS0_7IsolateERKNS1_14DurationRecordE(ptr poison, ptr noundef nonnull align 8 dereferenceable(80) %13)
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str, i64 17, i8 noundef zeroext 0) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  store ptr %i.k, ptr %12, align 8
  %i.m = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %12, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.n = load i64, ptr %i.m, align 8
  %i.o = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.n, ptr noundef null) #9 ; 0 uses
  store i8 0, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !alias.scope !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %13, i64 80, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::Maybe.444") align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %7 = alloca %"struct.std::array", align 8       ; 25 uses
  %8 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %9 = alloca %"struct.v8::internal::temporal::DurationRecord", align 8 ; 14 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ugt i16 %i.h, 299
  br i1 %i.i, label %bb.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str.1, i64 36, i8 noundef zeroext 0) #9 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm37EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm37EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store ptr %i.j, ptr %8, align 8
  %i.l = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %8, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.m = load i64, ptr %i.l, align 8
  %i.n = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.m, ptr noundef null) #9 ; 0 uses
  store i8 0, ptr %0, align 8
  br label %bb.s

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5768
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.o, ptr %7, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6296
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.s, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6680
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %i.w, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 6696
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.aa, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6712
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.ae, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 6744
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ai, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 6792
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 72
  store ptr %i.am, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 7264
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.aq, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 120
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 7784
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.au, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 136
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 7840
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 152
  store ptr %9, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bk = ptrtoint ptr %2 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64080
  br label %.outer

.outer:                                           ; preds = %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", %bb.c
  %.0.idx39.i.ph = phi i64 [ %.0.add.i56, %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread" ], [ 0, %bb.c ]
  %.02538.i.ph = phi i1 [ true, %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread" ], [ false, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.outer, %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit"
  %.0.idx39.i = phi i64 [ %.0.add.i, %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit" ], [ %.0.idx39.i.ph, %.outer ] ; 3 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %7, i64 %.0.idx39.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.0.ptr.i, align 8 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.ptr.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %.pre.pre.i.i.i = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.br = add i64 %.pre.pre.i.i.i, -1
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 128
  br i1 %i.bx, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = trunc i32 %i.bz to i1
  br i1 %i.ca, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i.i, %bb.d
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i.i
  %i.cb = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i.i ]
  store i32 %i.cb, ptr %5, align 8
  store i32 0, ptr %i.ba, align 4
  store i8 0, ptr %i.bb, align 8
  store i32 0, ptr %i.bc, align 4
  store i32 0, ptr %i.bd, align 8
  store ptr %1, ptr %i.be, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.bf, align 8
  store ptr null, ptr %i.bg, align 8
  store ptr %2, ptr %i.bh, align 8
  store ptr null, ptr %i.bi, align 8
  store i64 %i.bk, ptr %i.bj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 -1, i64 16, i1 false)
  %i.cc = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.cd = add i64 %i.cc, 11
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load atomic volatile i16, ptr %i.ce monotonic, align 2
  %i.cg = and i16 %i.cf, -96
  %.not.i21.i.i.i.i.i = icmp eq i16 %i.cg, 32
  br i1 %.not.i21.i.i.i.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = load i8, ptr %i.bm, align 8, !range !12
  %i.ck = trunc nuw i8 %i.cj to i1
  %not..i.i.i23.i.i.i.i.i = xor i1 %i.ci, true
  %i.cl = select i1 %not..i.i.i23.i.i.i.i.i, i1 true, i1 %i.ck
  br i1 %i.cl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cm = load i8, ptr %i.bn, align 8, !range !12, !noundef !13
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #11
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i.i: ; preds = %bb.f
  %i.co = load ptr, ptr %i.bo, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i.i, %bb.e
  %.pn.i.i26.i.i.i.i.i = phi ptr [ %i.co, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i.i ], [ %1, %bb.e ]
  %.in.i.i27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i.i, i64 58464
  %i.cp = load ptr, ptr %.in.i.i27.i.i.i.i.i, align 8
  %i.cq = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.0.0.copyload.i) #9
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i.i = phi ptr [ %i.cq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i.i, ptr %i.bf, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #9
  %i.cr = load i32, ptr %i.ba, align 4
  %.not.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i
  %i.cs = load ptr, ptr %i.be, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.h

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i
  %i.cu = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.not.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i.i
  %.sroa.07.0.i16.i.i = phi ptr [ %i.ct, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i.i ], [ %i.cu, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i ] ; 2 uses
  %i.cv = load i64, ptr %.sroa.07.0.i16.i.i, align 8 ; 5 uses
  %i.cw = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 10624
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp eq i64 %i.cv, %i.da
  br i1 %i.db, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = and i64 %i.cv, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i: ; preds = %bb.i
  %i.de = add nsw i64 %i.cv, -1
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.dh = add i64 %i.dg, 11
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i16, ptr %i.di monotonic, align 2
  %i.dk = icmp eq i16 %i.dj, 130
  br i1 %i.dk, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i
  %i.dl = call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %1, ptr nonnull %.sroa.07.0.i16.i.i) #9 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i8.i.i, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.dl, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i, %bb.i
  %i.dm = phi i64 [ %.pre.i.i.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i ], [ %i.cv, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i ], [ %i.cv, %bb.i ] ; 8 uses
  %i.dn = trunc i64 %i.dm to i1
  br i1 %i.dn, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i
  %i.do = add nsw i64 %i.dm, -1
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = load atomic volatile i64, ptr %i.dp monotonic, align 8
  %i.dr = add i64 %i.dq, 11
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load atomic volatile i16, ptr %i.ds monotonic, align 2
  %i.du = icmp eq i16 %i.dt, 130
  br i1 %i.du, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.dv, align 8
  %i.dw = fcmp uno double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.dw, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i
  %i.dx = and i64 %i.dm, 1
  %i.dy = icmp eq i64 %i.dx, 0                    ; 2 uses
  br i1 %i.dy, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.dz = icmp ult i64 %i.dm, 4294967296
  br i1 %i.dz, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %bb.j

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.ea = add nsw i64 %i.dm, -1
  %i.eb = inttoptr i64 %i.ea to ptr               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ec, align 1 ; 2 uses
  %i.ed = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.ed, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i
  %i.ee = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ef = add i64 %i.ee, 11
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i16, ptr %i.eg monotonic, align 2
  %i.ei = icmp eq i16 %i.eh, 130
  br i1 %i.ei, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i, label %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.ej = lshr i64 %i.dm, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = sitofp i32 %i.ek to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i: ; preds = %bb.j, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i
  %i.em = phi double [ %i.el, %bb.j ], [ %.0.copyload.i.i.i.i.i.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i ]
  %i.en = call double @llvm.fabs.f64(double %i.em) ; 3 uses
  %i.eo = fcmp one double %i.en, +inf
  %i.ep = call double @llvm.trunc.f64(double %i.en)
  %i.eq = fcmp oeq double %i.ep, %i.en
  %or.cond.i.i.i = and i1 %i.eo, %i.eq
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i
  %i.er = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str.3, i64 20, i8 noundef zeroext 0) #9 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.k, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i: ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.er, ptr %4, align 8
  %i.et = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %4, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.eu, ptr noundef null) #9 ; 0 uses
  br label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread

bb.l:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i
  br i1 %i.dy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ew = lshr i64 %i.dm, 32
  %i.ex = trunc nuw i64 %i.ew to i32
  %i.ey = sitofp i32 %i.ex to double
  br label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread"

bb.n:                                             ; preds = %bb.l
  %i.ez = add nsw i64 %i.dm, -1
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.0.copyload.i.i.i.i.i17.i.i.i = load double, ptr %i.fb, align 1
  br label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread"

_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  store i8 0, ptr %0, align 8
  br label %bb.r

"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit": ; preds = %bb.h
  %.0.add.i = add nuw nsw i64 %.0.idx39.i, 16     ; 2 uses
  %.not.i = icmp eq i64 %.0.add.i, 160
end_hunk_0
