Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-struct?download=true
inline.NumInlined: 796
inline.NumDeleted: 493
begin_hunk_0
@.str.4 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@_ZN2v88internal12IsolateGroup22default_isolate_group_E = external local_unnamed_addr global ptr, align 8
@_ZN2v88internal18g_current_isolate_E = external thread_local(localexec) local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Builtin_SharedSpaceJSObjectHasInstanceEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i18.i = icmp ult i32 %0, 4
  br i1 %.not.i18.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 2 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = add i16 %i.t, -2065
  %i.v = icmp ult i16 %i.u, 17
  br i1 %i.v, label %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit.i: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.not.i19.i = icmp sgt i32 %0, 5
  %i.w = add i64 %reass.sub.i, 48
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i19.i, ptr %i.x, ptr %i.y
  %i.z = tail call i16 @_ZN2v88internal25AlwaysSharedSpaceJSObject11HasInstanceEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEE(ptr noundef nonnull %2, ptr nonnull %i.l, ptr %.sroa.0.0.i.i) #18 ; 2 uses
  %i.aa = trunc i16 %i.z to i1
  br i1 %i.aa, label %.critedge.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

.critedge.i:                                      ; preds = %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit.i
  %i.ab = and i16 %i.z, 256
  %.not.i = icmp eq i16 %i.ab, 0
  %.sroa.04.0.v.i.i = select i1 %.not.i, i64 680, i64 672
  br label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %.critedge.i, %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit.i, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %.sink.i = phi i64 [ %.sroa.04.0.v.i.i, %.critedge.i ], [ 680, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 680, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i ], [ 912, %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.sink.i
  %.sroa.030.1.i = load i64, ptr %i.ac, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ad = load i32, ptr %i.e, align 8
  %i.ae = add nsw i32 %i.ad, -1
  store i32 %i.ae, ptr %i.e, align 8
  %i.af = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.af, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL43Builtin_Impl_SharedSpaceJSObjectHasInstanceENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internalL43Builtin_Impl_SharedSpaceJSObjectHasInstanceENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL43Builtin_Impl_SharedSpaceJSObjectHasInstanceENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %bb.c
  ret i64 %.sroa.030.1.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal35Builtin_SharedStructTypeConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 7 uses
  %6 = alloca %"class.std::unordered_set.510", align 8 ; 16 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %8 = alloca %"class.std::set.468", align 8      ; 12 uses
  %9 = alloca %"class.v8::internal::Factory::JSFunctionBuilder", align 8 ; 5 uses
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8
  %.not.i94.i = icmp sgt i32 %0, 5
  %i.j = ptrtoint ptr %1 to i64
  %i.k = shl nsw i64 %i.b, 3
  %reass.sub.i = sub i64 %i.j, %i.k               ; 2 uses
  %i.l = add i64 %reass.sub.i, 48
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not.i94.i, ptr %i.m, ptr %i.n
  %i.o = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.critedge90.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp ugt i16 %i.v, 299
  br i1 %i.w, label %bb.c, label %.critedge90.i

.critedge90.i:                                    ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.a
  %i.x = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.2, i64 14, i8 noundef zeroext 0) #18 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !5

bb.b:                                             ; preds = %.critedge90.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #17
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %.critedge90.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %i.x, ptr %7, align 8
  %i.z = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 15, ptr nonnull %7, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.aa, ptr noundef null) #18
  br label %.critedge92.i

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.not.i95.i = icmp ult i32 %0, 5
  br i1 %.not.i95.i, label %bb.d, label %_ZNK2v88internal16BuiltinArguments2atINS0_10JSReceiverEEENS0_6HandleIT_EEi.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_10JSReceiverEEENS0_6HandleIT_EEi.exit.i: ; preds = %bb.c
  %i.ac = tail call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr %i.m) #18 ; 2 uses
  %.not263.i = icmp eq ptr %i.ac, null
  br i1 %.not263.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_10JSReceiverEEENS0_6HandleIT_EEi.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ae = load i64, ptr %i.ad, align 8
  br label %.critedge92.i

.critedge.i:                                      ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_10JSReceiverEEENS0_6HandleIT_EEi.exit.i
  %i.af = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ag = and i64 %i.af, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.i
  %i.ai = lshr i64 %i.af, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = sitofp i32 %i.aj to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.f:                                             ; preds = %.critedge.i
  %i.al = add nsw i64 %i.af, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.an, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.f, %bb.e
  %i.ao = phi double [ %i.ak, %bb.e ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.ap = fcmp olt double %i.ao, 0.000000e+00
  %i.aq = fcmp ogt double %i.ao, 9.990000e+02
  %or.cond.i = or i1 %i.ap, %i.aq
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.ar = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 272, ptr null, i64 0) #18
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.as, ptr noundef null) #18
  br label %.critedge92.i

bb.h:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.au = fptosi double %i.ao to i32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i64 0, ptr %i.az, align 8
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.be, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  store ptr %i.ba, ptr %6, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i64 1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %.not128.i.i = icmp sgt i32 %i.au, 0
  br i1 %.not128.i.i, label %.lr.ph.i.i, label %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %12 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.au to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.0152.3.i = phi ptr [ null, %.lr.ph.i.i ], [ %.sroa.0152.4.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i ] ; 10 uses
  %.sroa.10.2.i = phi ptr [ null, %.lr.ph.i.i ], [ %.sroa.10.3.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i ] ; 10 uses
  %.sroa.16.3.i = phi ptr [ null, %.lr.ph.i.i ], [ %.sroa.16.4.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i ] ; 6 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull %2, ptr %i.m, ptr null, i64 noundef %indvars.iv.i.i, ptr %i.m, i32 noundef 3)
  %i.bf = load i32, ptr %10, align 4
  %.not.i.i96.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i96.i, label %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread.i.i, label %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i

_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread.i.i: ; preds = %bb.j
  %i.bg = load ptr, ptr %11, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.k

_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i: ; preds = %bb.j
  %i.bi = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread.i.i
  %.sroa.05.0.i88.i.i = phi ptr [ %i.bh, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread.i.i ], [ %i.bi, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i ] ; 3 uses
  %i.bk = load i64, ptr %.sroa.05.0.i88.i.i, align 8 ; 2 uses
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.k
  %i.bm = add nsw i64 %i.bk, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = icmp ult i16 %i.br, 129
  br i1 %i.bs, label %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.thread.i.i, label %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i

_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i: ; preds = %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.k
  %i.bt = call ptr @_ZN2v88internal6Object13ConvertToNameINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.05.0.i88.i.i) #18 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i, label %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.thread.i.i

_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.thread.i.i: ; preds = %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %.sroa.05.0.i4793.i.i = phi ptr [ %i.bt, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i ], [ %.sroa.05.0.i88.i.i, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bv = load i64, ptr %.sroa.05.0.i4793.i.i, align 8 ; 3 uses
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr               ; 5 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = icmp ult i16 %i.cb, 128
  br i1 %i.cc, label %bb.l, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i

bb.l:                                             ; preds = %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.thread.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ce = load atomic i32, ptr %i.cd monotonic, align 8 ; 4 uses
  %i.cf = and i32 %i.ce, -536870909
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 10624
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load i8, ptr %i.cj, align 8, !range !7, !noundef !8
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.cn = load ptr, ptr %12, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 55464
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = add i64 %i.cp, -55464
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit.i.i.i.i

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cs, %bb.p ], [ %i.cm, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 1432
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = add i64 %i.cu, -1
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = lshr exact i32 %i.ce, 2
  %i.cy = and i32 %i.cx, 16777215                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 68
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = lshr i32 %i.cy, 12
  %i.dg = xor i32 %i.df, %i.cy
  %i.dh = mul i32 %i.de, %i.dg                    ; 2 uses
  %i.di = lshr i32 %i.dh, 12
  %i.dj = and i32 %i.di, 4095
  %i.dk = xor i32 %i.dj, %i.dh
  %i.dl = mul i32 %i.dk, %i.dc                    ; 2 uses
  %i.dm = lshr i32 %i.dl, 12
  %i.dn = and i32 %i.dm, 4095
  %i.do = xor i32 %i.dn, %i.dl
  %i.dp = mul i32 %i.do, %i.da
  %i.dq = and i32 %i.dp, 16777215                 ; 2 uses
  %i.dr = lshr i32 %i.dq, 12
  %i.ds = xor i32 %i.dr, %i.dq
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  store i64 %i.dt, ptr %i.a, align 8
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.i.i

bb.q:                                             ; preds = %bb.l
  %i.du = trunc i32 %i.ce to i1
  %i.dv = and i32 %i.ce, 3
  %i.dw = icmp eq i32 %i.dv, 0
  %or.cond.i.i.i.i = or i1 %i.dw, %i.du
  br i1 %or.cond.i.i.i.i, label %bb.r, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.dx = call noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, ptr noundef nonnull %i.a) #18
  %.pre.i.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.i.i

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.i.i: ; preds = %bb.r, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit.i.i.i.i
  %i.dy = phi i64 [ %.pre.i.i, %bb.r ], [ %i.dt, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit.i.i.i.i ] ; 2 uses
  %i.dz = phi i1 [ %i.dx, %bb.r ], [ true, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit.i.i.i.i ]
  %i.ea = icmp ult i64 %i.dy, 4294967295
  %.not43.i.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %.not43.i.i, label %bb.ay, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge.i.i

_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge.i.i: ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.i.i
  %.pre148.i.i = load i64, ptr %.sroa.05.0.i4793.i.i, align 8 ; 2 uses
  %.pre150.i.i = add i64 %.pre148.i.i, -1
  %.pre151.i.i = inttoptr i64 %.pre150.i.i to ptr
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i: ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge.i.i, %bb.q, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.thread.i.i
  %.pre-phi152.i.i = phi ptr [ %.pre151.i.i, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge.i.i ], [ %i.bx, %bb.q ], [ %i.bx, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.thread.i.i ] ; 2 uses
  %i.eb = phi i64 [ %.pre148.i.i, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge.i.i ], [ %i.bv, %bb.q ], [ %i.bv, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.thread.i.i ]
  %i.ec = load atomic volatile i64, ptr %.pre-phi152.i.i monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = and i16 %i.ef, -96
  %.not.i48.i.i = icmp eq i16 %i.eg, 32
  br i1 %.not.i48.i.i, label %bb.s, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit.i.i

bb.s:                                             ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i
  %i.eh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = load i8, ptr %13, align 8, !range !7
  %i.ek = trunc nuw i8 %i.ej to i1
  %not..i.i.i.i.i = xor i1 %i.ei, true
  %i.el = select i1 %not..i.i.i.i.i, i1 true, i1 %i.ek
  br i1 %i.el, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.em = load i8, ptr %14, align 8, !range !7, !noundef !8
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZSt27__throw_bad_optional_accessv() #19
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i.i: ; preds = %bb.t
  %i.eo = load ptr, ptr %15, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i.i, %bb.s
  %.pn.i.i.i.i = phi ptr [ %i.eo, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i.i ], [ %2, %bb.s ]
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 58464
  %i.ep = load ptr, ptr %.in.i.i.i.i, align 8
  %i.eq = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.sroa.05.0.i4793.i.i) #18 ; 2 uses
  %.pre149.i.i = load i64, ptr %i.eq, align 8     ; 2 uses
  %.pre153.i.i = add i64 %.pre149.i.i, -1
  %.pre155.i.i = inttoptr i64 %.pre153.i.i to ptr
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit.i.i

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i.i.i, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i
  %.pre-phi156.i.i = phi ptr [ %.pre-phi152.i.i, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i ], [ %.pre155.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i.i.i ] ; 3 uses
  %i.er = phi i64 [ %i.eb, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i ], [ %.pre149.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i.i.i ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.05.0.i4793.i.i, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread.i.i ], [ %i.eq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i.i.i ] ; 4 uses
  %i.es = load atomic volatile i64, ptr %.pre-phi156.i.i monotonic, align 8
  %i.et = add i64 %i.es, 11
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i16, ptr %i.eu monotonic, align 2
  %i.ew = icmp eq i16 %i.ev, 128
  br i1 %i.ew, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit.i.i
  %i.ex = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 210, ptr null, i64 0) #18
  br label %.critedge.i.i

bb.w:                                             ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal35Builtin_SharedStructTypeConstructorEiPmPNS0_7IsolateE:bb.a
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #21
  br label %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i.i.i.i.i

_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.an, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  store i64 %i.gb, ptr %i.bb, align 8
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i, ptr %6, align 8
  %i.gv = urem i64 %i.fh, %i.gb
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i.i.i.i.i, %.critedge._crit_edge.i.i.i.i.i.i.i
  %i.gw = phi ptr [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.critedge._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.0.i27.i.i.i.i.i.i.i = phi i64 [ %i.gv, %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i.i.i.i.i ], [ %i.fi, %.critedge._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 %i.fh, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.0.i27.i.i.i.i.i.i.i ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %.not.i.i28.i.i.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i28.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ha = load ptr, ptr %i.gz, align 8
  store ptr %i.ha, ptr %i.ft, align 8
  %i.hb = load ptr, ptr %i.gy, align 8
  store ptr %i.ft, ptr %i.hb, align 8
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.hc = load ptr, ptr %i.bc, align 8            ; 3 uses
  store ptr %i.hc, ptr %i.ft, align 8
  store ptr %i.ft, ptr %i.bc, align 8
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 8
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  %.val12.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hd, align 8
  %i.he = urem i64 %.val12.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.he
  store ptr %i.ft, ptr %i.hf, align 8
  %.pre20.i.i.i.i.i.i.i = load ptr, ptr %6, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hg = phi ptr [ %.pre20.i.i.i.i.i.i.i, %bb.ar ], [ %i.gw, %bb.aq ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.0.i27.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %i.hh, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.hi = load i64, ptr %16, align 8
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %16, align 8
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.10.2.i, %.sroa.16.3.i
  br i1 %.not.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.fv, ptr %.sroa.10.2.i, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  br label %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i

bb.av:                                            ; preds = %bb.at
  %i.hl = ptrtoint ptr %.sroa.10.2.i to i64
  %i.hm = ptrtoint ptr %.sroa.0152.3.i to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 4 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775800
  br i1 %i.ho, label %bb.aw, label %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.av
  %i.hp = ashr exact i64 %i.hn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.hq = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.hp ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.hp
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hq, i64 1152921504606846975)
  %i.ht = select i1 %i.hr, i64 1152921504606846975, i64 %i.hs ; 3 uses
  %.not.i.i.i.i.i49.i.i = icmp ne i64 %i.ht, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i49.i.i)
  %i.hu = shl nuw nsw i64 %i.ht, 3
  %i.hv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #20 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hn
  store i64 %i.fv, ptr %i.hw, align 8
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0152.3.i, %.sroa.10.2.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.hv, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0152.3.i, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.hx = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !21, !noalias !20
  store i64 %i.hx, ptr %.012.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !20, !noalias !21
  %i.hy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i50.i.i = icmp eq ptr %i.hy, %.sroa.10.2.i
  br i1 %.not.i.i.i.i.i.i.i50.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !16

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hv, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.hz, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %.sroa.0152.3.i, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.3.i, i64 noundef %i.hn) #21
  br label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ax, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ht
  br label %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i

bb.ay:                                            ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.i.i
  %i.ic = trunc nuw i64 %i.dy to i32              ; 4 uses
  %.02022.i.i.i.i.i = load ptr, ptr %i.aw, align 8 ; 2 uses
  %.not23.i.i.i.i.i = icmp eq ptr %.02022.i.i.i.i.i, null
  br i1 %.not23.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ay, %.lr.ph.i.i.i.i.i
  %.02024.i.i.i.i.i = phi ptr [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.02022.i.i.i.i.i, %bb.ay ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i.i, i64 32
  %i.ie = load i32, ptr %i.id, align 4            ; 2 uses
  %i.if = icmp ugt i32 %i.ie, %i.ic               ; 2 uses
  %.in.v.i.i.i.i.i = select i1 %i.if, i64 16, i64 24
  %.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i.i, i64 %.in.v.i.i.i.i.i
  %.020.i.i.i.i.i = load ptr, ptr %.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i51.i.i = icmp eq ptr %.020.i.i.i.i.i, null
  br i1 %.not.i.i.i51.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.if, label %._crit_edge.thread.i.i.i.i.i, label %bb.ba

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %bb.ay
  %.019.lcssa29.i.i.i.i.i = phi ptr [ %.02024.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.av, %bb.ay ] ; 4 uses
  %i.ig = load ptr, ptr %i.ax, align 8
  %i.ih = icmp eq ptr %.019.lcssa29.i.i.i.i.i, %i.ig
  br i1 %i.ih, label %select.unfold.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge.thread.i.i.i.i.i
  %i.ii = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i.i) #22
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i.i
  %i.ij = phi i32 [ %.pre.i.i.i.i, %bb.az ], [ %i.ie, %._crit_edge.i.i.i.i.i ]
  %.019.lcssa28.i.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i.i, %bb.az ], [ %.02024.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ik = icmp ult i32 %i.ij, %i.ic
  br i1 %i.ik, label %select.unfold.i.i.i.i, label %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread104.i.i

select.unfold.i.i.i.i:                            ; preds = %bb.ba, %._crit_edge.thread.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %.019.lcssa28.i.i.i.i.i, %bb.ba ] ; 3 uses
  %i.il = icmp eq ptr %.sroa.4.0.i.ph.i.i.i.i, %i.av
  br i1 %i.il, label %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread108.i.i, label %bb.bb

bb.bb:                                            ; preds = %select.unfold.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i.i, i64 32
  %i.in = load i32, ptr %i.im, align 4
  %i.io = icmp ugt i32 %i.in, %i.ic
  br label %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread108.i.i

_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread108.i.i: ; preds = %bb.bb, %select.unfold.i.i.i.i
  %i.ip = phi i1 [ %i.io, %bb.bb ], [ true, %select.unfold.i.i.i.i ]
  %i.iq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  store i32 %i.ic, ptr %i.ir, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ip, ptr noundef nonnull %i.iq, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.av) #18
  %i.is = load i64, ptr %i.az, align 8
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.az, align 8
  br label %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i

_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread104.i.i: ; preds = %bb.ba, %bb.x, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal6HandleINS2_4NameEEES5_NS_9_IdentityENS2_12_GLOBAL__N_121UniqueNameHandleEqualENS7_16NameHandleHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS5_EEbRKT_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i.i.i.i.i
  %.sroa.067.0107.i.i = phi ptr [ %.sroa.07.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal6HandleINS2_4NameEEES5_NS_9_IdentityENS2_12_GLOBAL__N_121UniqueNameHandleEqualENS7_16NameHandleHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS5_EEbRKT_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i, %bb.x ], [ %.sroa.05.0.i4793.i.i, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %.sroa.067.0107.i.i, ptr %4, align 8
  %i.iu = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 67, ptr nonnull %4, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.critedge.i.i

_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i: ; preds = %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread108.i.i, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, %bb.au
  %.sroa.0152.4.i = phi ptr [ %.sroa.0152.3.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread108.i.i ], [ %i.hv, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.0152.3.i, %bb.au ] ; 2 uses
  %.sroa.10.3.i = phi ptr [ %.sroa.10.2.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread108.i.i ], [ %i.ia, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %i.hk, %bb.au ] ; 2 uses
  %.sroa.16.4.i = phi ptr [ %.sroa.16.3.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread108.i.i ], [ %i.ib, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.16.3.i, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i, label %bb.j, !llvm.loop !18

.critedge.i.i:                                    ; preds = %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread104.i.i, %bb.v
  %.sink189.i.i = phi ptr [ %i.iu, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread104.i.i ], [ %i.ex, %bb.v ]
  %i.iv = load i64, ptr %.sink189.i.i, align 8
  %i.iw = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.iv, ptr noundef null) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i: ; preds = %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i, %.critedge.i.i
  %.sroa.0152.5.i = phi ptr [ %.sroa.0152.3.i, %.critedge.i.i ], [ %.sroa.0152.4.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i ], [ %.sroa.0152.3.i, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i ], [ %.sroa.0152.3.i, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i ] ; 2 uses
  %.sroa.10.4.i = phi ptr [ %.sroa.10.2.i, %.critedge.i.i ], [ %.sroa.10.3.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i ], [ %.sroa.10.2.i, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i ], [ %.sroa.10.2.i, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i ] ; 2 uses
  %.sroa.16.5.i = phi ptr [ %.sroa.16.3.i, %.critedge.i.i ], [ %.sroa.16.4.i, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i ], [ %.sroa.16.3.i, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i ], [ %.sroa.16.3.i, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i ] ; 2 uses
  %.sroa.070.2.ph.i.i = phi i1 [ false, %.critedge.i.i ], [ true, %_ZN2v88internal18DirectHandleVectorINS0_4NameEE9push_backERKNS0_12DirectHandleIS2_EE.exit.thread.i.i ], [ false, %_ZN2v88internal6Object6ToNameINS0_6HandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS0_12DirectHandleIS1_EEE.exit.i.i ], [ false, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.i.i ] ; 2 uses
  %.val.i.i.i.pr.i.i = load ptr, ptr %i.bc, align 8 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.pr.i.i, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.ix, %.lr.ph.i.i.i.i.i.i ], [ %.val.i.i.i.pr.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i ] ; 2 uses
  %i.ix = load ptr, ptr %.06.i.i.i.i.i.i, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 24) #21
  %.not.i.i.i.i52.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i52.i.i, label %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !19

_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i, %bb.i
  %.sroa.070.2.i260.i = phi i1 [ %.sroa.070.2.ph.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i ], [ true, %bb.i ], [ %.sroa.070.2.ph.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.16.2259.i = phi ptr [ %.sroa.16.5.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i ], [ null, %bb.i ], [ %.sroa.16.5.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.1258.i = phi ptr [ %.sroa.10.4.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i ], [ null, %bb.i ], [ %.sroa.10.4.i, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.0152.2257.i = phi ptr [ %.sroa.0152.5.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i.i ], [ null, %bb.i ], [ %.sroa.0152.5.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.iy = load ptr, ptr %6, align 8
  %i.iz = load i64, ptr %i.bb, align 8
  %i.ja = shl i64 %i.iz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.iy, i8 0, i64 %i.ja, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.jb = load ptr, ptr %6, align 8               ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.ba
  br i1 %i.jc, label %_ZN2v88internal12_GLOBAL__N_124CollectFieldsAndElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiRNS0_18DirectHandleVectorINS0_4NameEEERSt3setIjSt4lessIjESaIjEE.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.jd = load i64, ptr %i.bb, align 8
  %i.je = shl i64 %i.jd, 3
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #21
  br label %_ZN2v88internal12_GLOBAL__N_124CollectFieldsAndElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiRNS0_18DirectHandleVectorINS0_4NameEEERSt3setIjSt4lessIjESaIjEE.exit.i

_ZN2v88internal12_GLOBAL__N_124CollectFieldsAndElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiRNS0_18DirectHandleVectorINS0_4NameEEERSt3setIjSt4lessIjESaIjEE.exit.i: ; preds = %bb.bc, %_ZNSt10_HashtableIN2v88internal6HandleINS1_4NameEEES4_SaIS4_ENSt8__detail9_IdentityENS1_12_GLOBAL__N_121UniqueNameHandleEqualENS8_16NameHandleHasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.sroa.070.2.i260.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_124CollectFieldsAndElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiRNS0_18DirectHandleVectorINS0_4NameEEERSt3setIjSt4lessIjESaIjEE.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.jg = load i64, ptr %i.jf, align 8
  br label %.critedge93.i

bb.be:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_124CollectFieldsAndElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiRNS0_18DirectHandleVectorINS0_4NameEEERSt3setIjSt4lessIjESaIjEE.exit.i, %bb.h
  %.sroa.0152.0.i = phi ptr [ null, %bb.h ], [ %.sroa.0152.2257.i, %_ZN2v88internal12_GLOBAL__N_124CollectFieldsAndElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiRNS0_18DirectHandleVectorINS0_4NameEEERSt3setIjSt4lessIjESaIjEE.exit.i ] ; 9 uses
  %.sroa.10.0.i = phi ptr [ null, %bb.h ], [ %.sroa.10.1258.i, %_ZN2v88internal12_GLOBAL__N_124CollectFieldsAndElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiRNS0_18DirectHandleVectorINS0_4NameEEERSt3setIjSt4lessIjESaIjEE.exit.i ] ; 2 uses
  %.sroa.16.0.i = phi ptr [ null, %bb.h ], [ %.sroa.16.2259.i, %_ZN2v88internal12_GLOBAL__N_124CollectFieldsAndElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiRNS0_18DirectHandleVectorINS0_4NameEEERSt3setIjSt4lessIjESaIjEE.exit.i ] ; 3 uses
  %.not.i97.i = icmp sgt i32 %0, 6
  br i1 %.not.i97.i, label %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.i, label %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.thread.i

_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.i: ; preds = %bb.be
  %i.jh = add i64 %reass.sub.i, 56
  %i.ji = inttoptr i64 %i.jh to ptr               ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8            ; 3 uses
  %i.jk = load i64, ptr %i.n, align 8
  %i.jl = icmp eq i64 %i.jj, %i.jk
  br i1 %i.jl, label %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.thread.i, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i105.i

_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.thread.i: ; preds = %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.i, %bb.be
  %i.jm = ptrtoint ptr %.sroa.10.0.i to i64
  %i.jn = ptrtoint ptr %.sroa.0152.0.i to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = ashr exact i64 %i.jo, 3
  %i.jq = call ptr @_ZN2v88internal14JSSharedStruct17CreateInstanceMapEPNS0_7IsolateENS_4base6VectorIKNS0_12DirectHandleINS0_4NameEEEEERKSt3setIjSt4lessIjESaIjEENS0_17MaybeDirectHandleINS0_6StringEEE(ptr noundef nonnull %2, ptr %.sroa.0152.0.i, i64 %i.jp, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr null) #18
  br label %.critedge88.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i105.i: ; preds = %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.i
  %i.jr = trunc i64 %i.jj to i1
  br i1 %i.jr, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i105.i
  %i.js = add nsw i64 %i.jj, -1
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = load atomic volatile i64, ptr %i.jt monotonic, align 8
  %i.jv = add i64 %i.ju, 11
  %i.jw = inttoptr i64 %i.jv to ptr
  %i.jx = load atomic volatile i16, ptr %i.jw monotonic, align 2
  %i.jy = icmp ult i16 %i.jx, 128
  br i1 %i.jy, label %bb.bg, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i105.i
  %i.jz = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.3, i64 17, i8 noundef zeroext 0) #18 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %bb.bf, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit108.i, !prof !5

bb.bf:                                            ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #17
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit108.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.jz, ptr %3, align 8
  %i.kb = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 16, ptr nonnull %3, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.kc, ptr noundef null) #18
  br label %.critedge93.i

bb.bg:                                            ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.kf = load i8, ptr %i.ke, align 8, !range !7, !noundef !8
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.ki = load i8, ptr %i.kh, align 8, !range !7, !noundef !8
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZSt27__throw_bad_optional_accessv() #19
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.bh
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.kl = load ptr, ptr %i.kk, align 8
  br label %_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit.i

_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.bg
  %.pn.i.i = phi ptr [ %i.kl, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %2, %bb.bg ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 64096
  %i.km = load ptr, ptr %.in.i.i, align 8
  %i.kn = ptrtoint ptr %.sroa.10.0.i to i64
  %i.ko = ptrtoint ptr %.sroa.0152.0.i to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = ashr exact i64 %i.kp, 3
  %i.kr = call ptr @_ZN2v88internal24SharedStructTypeRegistry8RegisterEPNS0_7IsolateENS0_6HandleINS0_6StringEEENS_4base6VectorIKNS0_12DirectHandleINS0_4NameEEEEERKSt3setIjSt4lessIjESaIjEE(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull %2, ptr nonnull %i.ji, ptr %.sroa.0152.0.i, i64 %i.kq, ptr noundef nonnull align 8 dereferenceable(48) %8) #18 ; 2 uses
  %.not264.i = icmp eq ptr %i.kr, null
  br i1 %.not264.i, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge88.i

_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit.i
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.kt = load i64, ptr %i.ks, align 8
  br label %.critedge93.i

.critedge88.i:                                    ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit.i, %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.thread.i
  %.sroa.0174.0.i = phi ptr [ %i.jq, %_ZNK2v88internal16BuiltinArguments13atOrUndefinedEPNS0_7IsolateEi.exit101.thread.i ], [ %i.kr, %_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit.i ]
  %i.ku = load ptr, ptr %i.aw, align 8
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.ku)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.not.i.i.i.i114.i = icmp eq ptr %.sroa.0152.0.i, null
  br i1 %.not.i.i.i.i114.i, label %_ZN2v88internal18DirectHandleVectorINS0_4NameEED2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %.critedge88.i
  %i.kv = ptrtoint ptr %.sroa.16.0.i to i64
  %i.kw = ptrtoint ptr %.sroa.0152.0.i to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0.i, i64 noundef %i.kx) #21
  br label %_ZN2v88internal18DirectHandleVectorINS0_4NameEED2Ev.exit.i

_ZN2v88internal18DirectHandleVectorINS0_4NameEED2Ev.exit.i: ; preds = %bb.bj, %.critedge88.i
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.kz = call ptr @_ZN2v88internal7Factory31NewSharedFunctionInfoForBuiltinENS0_17MaybeDirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsENS0_12FunctionKindE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ky, i32 noundef 731, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 3 uses
  %.sroa.0.0.copyload.i.i115.i = load i64, ptr %i.la, align 8
  %i.lb = add i64 %.sroa.0.0.copyload.i.i115.i, -1
  %i.lc = inttoptr i64 %i.lb to ptr
  %i.ld = load atomic volatile i64, ptr %i.lc monotonic, align 8
  %i.le = add i64 %i.ld, 31
  %i.lf = inttoptr i64 %i.le to ptr
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.li = load ptr, ptr %i.e, align 8
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %bb.bk, label %_ZN2v88internal7Isolate14native_contextEv.exit.i, !prof !5

bb.bk:                                            ; preds = %_ZN2v88internal18DirectHandleVectorINS0_4NameEED2Ev.exit.i
  %i.lk = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #18
  br label %_ZN2v88internal7Isolate14native_contextEv.exit.i

_ZN2v88internal7Isolate14native_contextEv.exit.i: ; preds = %bb.bk, %_ZN2v88internal18DirectHandleVectorINS0_4NameEED2Ev.exit.i
  %.0.i.i116.i = phi ptr [ %i.lk, %bb.bk ], [ %i.lh, %_ZN2v88internal18DirectHandleVectorINS0_4NameEED2Ev.exit.i ] ; 3 uses
  %i.ll = ptrtoint ptr %.0.i.i116.i to i64
  %i.lm = add i64 %i.ll, 8
  %i.ln = inttoptr i64 %i.lm to ptr
  store ptr %i.ln, ptr %i.c, align 8
  store i64 %i.lg, ptr %.0.i.i116.i, align 8
  call void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %2, ptr %i.kz, ptr nonnull %.0.i.i116.i) #18
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.la, align 8
  %i.lo = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = load atomic volatile i64, ptr %i.lp monotonic, align 8
  %i.lr = add i64 %i.lq, 31
  %i.ls = inttoptr i64 %i.lr to ptr
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = add i64 %i.lt, 1783
  %i.lv = inttoptr i64 %i.lu to ptr
  %i.lw = load atomic volatile i64, ptr %i.lv monotonic, align 8
  %i.lx = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ly = load ptr, ptr %i.e, align 8
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %bb.bl, label %_ZN2v88internal7Isolate43strict_function_with_readonly_prototype_mapEv.exit.i, !prof !5

bb.bl:                                            ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit.i
  %i.ma = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #18
  br label %_ZN2v88internal7Isolate43strict_function_with_readonly_prototype_mapEv.exit.i

_ZN2v88internal7Isolate43strict_function_with_readonly_prototype_mapEv.exit.i: ; preds = %bb.bl, %_ZN2v88internal7Isolate14native_contextEv.exit.i
  %.0.i.i.i.i = phi ptr [ %i.ma, %bb.bl ], [ %i.lx, %_ZN2v88internal7Isolate14native_contextEv.exit.i ] ; 2 uses
  %i.mb = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.mc = add i64 %i.mb, 8
  %i.md = inttoptr i64 %i.mc to ptr
  store ptr %i.md, ptr %i.c, align 8
  store i64 %i.lw, ptr %.0.i.i.i.i, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.mb, ptr %i.me, align 8
  %i.mf = call ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.mg = load i64, ptr %i.mf, align 8            ; 4 uses
  %i.mh = load i64, ptr %.sroa.0174.0.i, align 8  ; 5 uses
  %i.mi = add i64 %i.mg, 55                       ; 3 uses
  %i.mj = inttoptr i64 %i.mi to ptr
  store atomic volatile i64 %i.mh, ptr %i.mj release, align 8
  %i.mk = trunc i64 %i.mh to i1
  br i1 %i.mk, label %bb.bm, label %_ZN2v88internal10JSFunction28set_prototype_or_initial_mapENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullENS0_3MapENS0_7TheHoleEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i

bb.bm:                                            ; preds = %_ZN2v88internal7Isolate43strict_function_with_readonly_prototype_mapEv.exit.i
  %i.ml = and i64 %i.mg, -262144
  %i.mm = inttoptr i64 %i.ml to ptr
  %i.mn = load i64, ptr %i.mm, align 262144       ; 2 uses
  %i.mo = and i64 %i.mn, 32
  %.not.i.i.i.i = icmp eq i64 %i.mo, 0
  %i.mp = and i64 %i.mn, 25
  %.not38.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not38.i.i.i.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.mq = and i64 %i.mh, -262144
  %i.mr = inttoptr i64 %i.mq to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.mr, align 262144
  %i.ms = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ms, 0
  br i1 %.not39.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.mg, i64 noundef %i.mi, i64 %i.mh) #18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  br i1 %.not.i.i.i.i, label %_ZN2v88internal10JSFunction28set_prototype_or_initial_mapENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullENS0_3MapENS0_7TheHoleEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i, label %bb.bq, !prof !6

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.mg, i64 %i.mi, i64 %i.mh) #18
  br label %_ZN2v88internal10JSFunction28set_prototype_or_initial_mapENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullENS0_3MapENS0_7TheHoleEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal10JSFunction28set_prototype_or_initial_mapENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullENS0_3MapENS0_7TheHoleEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.bq, %bb.bp, %_ZN2v88internal7Isolate43strict_function_with_readonly_prototype_mapEv.exit.i
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 8216
  %.sroa.0.0.copyload.i.i117.i = load i64, ptr %i.la, align 8
  %i.mu = add i64 %.sroa.0.0.copyload.i.i117.i, -1
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = load atomic volatile i64, ptr %i.mv monotonic, align 8
  %i.mx = add i64 %i.mw, 31
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = load i64, ptr %i.my, align 8            ; 2 uses
  %i.na = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.nb = load ptr, ptr %i.e, align 8
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %bb.br, label %_ZN2v88internal7Isolate14native_contextEv.exit119.i, !prof !5

bb.br:                                            ; preds = %_ZN2v88internal10JSFunction28set_prototype_or_initial_mapENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullENS0_3MapENS0_7TheHoleEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i
  %i.nd = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #18
  br label %_ZN2v88internal7Isolate14native_contextEv.exit119.i

_ZN2v88internal7Isolate14native_contextEv.exit119.i: ; preds = %bb.br, %_ZN2v88internal10JSFunction28set_prototype_or_initial_mapENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullENS0_3MapENS0_7TheHoleEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i
  %.0.i.i118.i = phi ptr [ %i.nd, %bb.br ], [ %i.na, %_ZN2v88internal10JSFunction28set_prototype_or_initial_mapENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullENS0_3MapENS0_7TheHoleEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i ] ; 2 uses
  %i.ne = ptrtoint ptr %.0.i.i118.i to i64
  %i.nf = add i64 %i.ne, 8
  %i.ng = inttoptr i64 %i.nf to ptr
  store ptr %i.ng, ptr %i.c, align 8
  store i64 %i.mz, ptr %.0.i.i118.i, align 8
  %i.nh = add i64 %i.mz, 2407
  %i.ni = inttoptr i64 %i.nh to ptr
  %i.nj = load atomic volatile i64, ptr %i.ni monotonic, align 8
  %i.nk = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.nl = load ptr, ptr %i.e, align 8
  %i.nm = icmp eq ptr %i.nk, %i.nl
  br i1 %i.nm, label %bb.bs, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.bs:                                            ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit119.i
  %i.nn = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.bs, %_ZN2v88internal7Isolate14native_contextEv.exit119.i
  %.0.i.i.i = phi ptr [ %i.nn, %bb.bs ], [ %i.nk, %_ZN2v88internal7Isolate14native_contextEv.exit119.i ] ; 3 uses
  %i.no = ptrtoint ptr %.0.i.i.i to i64
  %i.np = add i64 %i.no, 8
  %i.nq = inttoptr i64 %i.np to ptr
  store ptr %i.nq, ptr %i.c, align 8
  store i64 %i.nj, ptr %.0.i.i.i, align 8
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %i.mf, ptr nonnull %i.mt, ptr nonnull %.0.i.i.i, i32 noundef 7) #18
  %i.nr = load i64, ptr %i.mf, align 8
  br label %.critedge92.i

.critedge93.i:                                    ; preds = %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit108.i, %bb.bd
  %.sroa.0152.1.i = phi ptr [ %.sroa.0152.0.i, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %.sroa.0152.0.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit108.i ], [ %.sroa.0152.2257.i, %bb.bd ] ; 3 uses
  %.sroa.16.1.i = phi ptr [ %.sroa.16.0.i, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %.sroa.16.0.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit108.i ], [ %.sroa.16.2259.i, %bb.bd ]
  %.sroa.0187.1.i = phi i64 [ %i.kt, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.kd, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit108.i ], [ %i.jg, %bb.bd ] ; 2 uses
  %i.ns = load ptr, ptr %i.aw, align 8
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.ns)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.not.i.i.i.i121.i = icmp eq ptr %.sroa.0152.1.i, null
  br i1 %.not.i.i.i.i121.i, label %.critedge92.i, label %bb.bt

bb.bt:                                            ; preds = %.critedge93.i
  %i.nt = ptrtoint ptr %.sroa.16.1.i to i64
  %i.nu = ptrtoint ptr %.sroa.0152.1.i to i64
  %i.nv = sub i64 %i.nt, %i.nu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.1.i, i64 noundef %i.nv) #21
  br label %.critedge92.i

.critedge92.i:                                    ; preds = %bb.bt, %.critedge93.i, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.g, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %.sroa.0187.2.i = phi i64 [ %i.ab, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i ], [ %i.nr, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ae, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.at, %bb.g ], [ %.sroa.0187.1.i, %.critedge93.i ], [ %.sroa.0187.1.i, %bb.bt ]
  store ptr %i.d, ptr %i.c, align 8
  %i.nw = load i32, ptr %i.g, align 8
  %i.nx = add nsw i32 %i.nw, -1
  store i32 %i.nx, ptr %i.g, align 8
  %i.ny = load ptr, ptr %i.e, align 8
  %.not.i.i = icmp eq ptr %i.ny, %i.f
  br i1 %.not.i.i, label %_ZN2v88internalL40Builtin_Impl_SharedStructTypeConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.bu, !prof !6

bb.bu:                                            ; preds = %.critedge92.i
  store ptr %i.f, ptr %i.e, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internalL40Builtin_Impl_SharedStructTypeConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL40Builtin_Impl_SharedStructTypeConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %.critedge92.i, %bb.bu
  ret i64 %.sroa.0187.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Builtin_SharedStructConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i10.i = icmp eq i32 %0, 0
  br i1 %.not.i10.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments6targetEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

_ZNK2v88internal16BuiltinArguments6targetEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 16
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal16BuiltinArguments6targetEv.exit.i
  %i.t = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2v88internal16BuiltinArguments6targetEv.exit.i
  %.0.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.q, %_ZNK2v88internal16BuiltinArguments6targetEv.exit.i ] ; 2 uses
  %i.u = ptrtoint ptr %.0.i.i.i.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.a, align 8
  store i64 %i.p, ptr %.0.i.i.i.i, align 8
  %i.x = tail call ptr @_ZN2v88internal14JSSharedStruct19GetElementsTemplateEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull %2, i64 %i.p) #18
  %i.y = tail call ptr @_ZN2v88internal7Factory17NewJSSharedStructENS0_12DirectHandleINS0_10JSFunctionEEENS0_17MaybeDirectHandleINS0_16NumberDictionaryEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.l, ptr %i.x) #18
  %i.z = load i64, ptr %i.y, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.aa = load i32, ptr %i.e, align 8
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.e, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ac, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL36Builtin_Impl_SharedStructConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internalL36Builtin_Impl_SharedStructConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL36Builtin_Impl_SharedStructConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %i.z
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal38Builtin_SharedStructTypeIsSharedStructEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %.not.i5.i = icmp sgt i32 %0, 5
  %i.g = ptrtoint ptr %1 to i64
  %i.h = shl nsw i64 %i.a, 3
  %reass.sub = sub i64 %i.g, %i.h
  %i.i = add i64 %reass.sub, 48
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i5.i, ptr %i.j, ptr %i.k
  %i.l = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN2v88internal16IsJSSharedStructENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internalL43Builtin_Impl_SharedStructTypeIsSharedStructENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internal16IsJSSharedStructENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.n = add nsw i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %.fr.i = freeze i16 %i.s
  %i.t = icmp eq i16 %.fr.i, 2105
  %spec.select.i = select i1 %i.t, i64 672, i64 680
  br label %_ZN2v88internalL43Builtin_Impl_SharedStructTypeIsSharedStructENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL43Builtin_Impl_SharedStructTypeIsSharedStructENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.a, %_ZN2v88internal16IsJSSharedStructENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.u = phi i64 [ %spec.select.i, %_ZN2v88internal16IsJSSharedStructENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 680, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %.in.in.i = ptrtoint ptr %i.v to i64
  %.in.i = add i64 %.in.in.i, -55464
  %i.w = inttoptr i64 %.in.i to ptr
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8
  store ptr %i.c, ptr %i.b, align 8
  store i32 %i.e, ptr %i.d, align 8
  ret i64 %.sroa.03.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal27Builtin_AtomicsMutexIsMutexEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %.not.i5.i = icmp sgt i32 %0, 5
  %i.g = ptrtoint ptr %1 to i64
  %i.h = shl nsw i64 %i.a, 3
  %reass.sub = sub i64 %i.g, %i.h
  %i.i = add i64 %reass.sub, 48
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i5.i, ptr %i.j, ptr %i.k
  %i.l = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN2v88internal16IsJSAtomicsMutexENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internalL32Builtin_Impl_AtomicsMutexIsMutexENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internal16IsJSAtomicsMutexENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.n = add nsw i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %.fr.i = freeze i16 %i.s
  %i.t = icmp eq i16 %.fr.i, 2103
  %spec.select.i = select i1 %i.t, i64 672, i64 680
  br label %_ZN2v88internalL32Builtin_Impl_AtomicsMutexIsMutexENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL32Builtin_Impl_AtomicsMutexIsMutexENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.a, %_ZN2v88internal16IsJSAtomicsMutexENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.u = phi i64 [ %spec.select.i, %_ZN2v88internal16IsJSAtomicsMutexENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 680, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %.in.in.i = ptrtoint ptr %i.v to i64
  %.in.i = add i64 %.in.in.i, -55464
  %i.w = inttoptr i64 %.in.i to ptr
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8
  store ptr %i.c, ptr %i.b, align 8
  store i32 %i.e, ptr %i.d, align 8
  ret i64 %.sroa.03.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal35Builtin_AtomicsConditionIsConditionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
end_hunk_1
