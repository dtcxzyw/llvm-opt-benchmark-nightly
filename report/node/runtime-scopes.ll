inline.NumInlined: 2421
inline.NumDeleted: 838
begin_hunk_0_@_ZN2v88internal47Runtime_StoreGlobalNoHoleCheckForReplLetOrConstEiPmPNS0_7IsolateE:bb.a
  br i1 %i.ba, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bd = load i64, ptr %i.j, align 8             ; 5 uses
  %i.be = shl nsw i32 %i.bc, 3
  %i.bf = add nsw i32 %i.be, 16
  %i.bg = add i64 %i.aq, -1
  %i.bh = sext i32 %i.bf to i64
  %i.bi = add i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = inttoptr i64 %i.bi to ptr
  store atomic volatile i64 %i.bd, ptr %i.bj monotonic, align 8
  %i.bk = trunc i64 %i.bd to i1
  br i1 %i.bk, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bl = and i64 %i.aq, -262144
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i64, ptr %i.bm, align 262144       ; 2 uses
  %i.bo = and i64 %i.bn, 32
  %.not.i.i = icmp eq i64 %i.bo, 0
  %i.bp = and i64 %i.bn, 25
  %.not38.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not38.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bq = and i64 %i.bd, -262144
  %i.br = inttoptr i64 %i.bq to ptr
  %.sroa.0.0.copyload.i28.i.i = load i64, ptr %i.br, align 262144
  %i.bs = and i64 %.sroa.0.0.copyload.i28.i.i, 25
  %.not39.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not39.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.aq, i64 noundef %i.bi, i64 %i.bd) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i, label %bb.o, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.aq, i64 %i.bi, i64 %i.bd) #13
  br label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @_ZN2v88internal7Context3SetENS0_12DirectHandleIS1_EEiNS2_INS0_6ObjectEEEPNS0_7IsolateE(ptr nonnull %.0.i.i, i32 noundef %i.bc, ptr %i.j, ptr noundef nonnull %2) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h, %bb.l, %bb.m
  %i.bt = load i64, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %i.b, ptr %i.a, align 8
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #13
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.p, %bb.o
  ret i64 %i.bt
}

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr, ptr) unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN2v88internal12_GLOBAL__N_113DeclareGlobalEPNS0_7IsolateENS0_12DirectHandleINS0_14JSGlobalObjectEEENS0_6HandleINS0_6StringEEENS7_INS0_6ObjectEEENS0_18PropertyAttributesEbNS1_17RedeclarationTypeE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 noundef range(i32 0, 5) %4, i1 noundef zeroext %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %8 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %9 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %10 = alloca %"struct.v8::internal::VariableLookupResult", align 4 ; 4 uses
  %11 = alloca %"class.v8::internal::LookupIterator", align 8 ; 20 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 31
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 1599
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #13
  br label %_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.s, %bb.b ], [ %i.o, %bb.a ] ; 2 uses
  %i.t = ptrtoint ptr %.0.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.m, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.w = add i64 %i.m, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = call noundef zeroext i1 @_ZN2v88internal18ScriptContextTable6LookupENS0_12DirectHandleINS0_6StringEEEPNS0_20VariableLookupResultE(ptr noundef nonnull align 4 dereferenceable(32) %i.x, ptr %2, ptr noundef nonnull %10) #13
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = icmp ult i8 %i.aa, 4
  %or.cond96 = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %or.cond96, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store ptr %2, ptr %9, align 8
  %i.ah = call ptr @_ZN2v88internal7Factory14NewSyntaxErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 218, ptr nonnull %9, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ai, ptr noundef null) #13 ; 2 uses
  store ptr %i.ac, ptr %i.n, align 8
  %i.ak = load i32, ptr %i.ae, align 8
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.ae, align 8
  %i.am = load ptr, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_123ThrowRedeclarationErrorEPNS0_7IsolateENS0_6HandleINS0_6StringEEENS1_17RedeclarationTypeE.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  store ptr %i.ad, ptr %i.p, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #13
  br label %_ZN2v88internal12_GLOBAL__N_123ThrowRedeclarationErrorEPNS0_7IsolateENS0_6HandleINS0_6StringEEENS1_17RedeclarationTypeE.exit

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %not. = xor i1 %5, true
  %spec.store.select = zext i1 %not. to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %.pre.pre = load i64, ptr %2, align 8
  %i.an = add i64 %.pre.pre, -1
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = add i64 %i.ap, 11
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i16, ptr %i.ar monotonic, align 2
  %i.at = icmp eq i16 %i.as, 128
  br i1 %i.at, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.e
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.ax = phi i32 [ %spec.store.select, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.ax, ptr %11, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %1, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr null, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.bi = ptrtoint ptr %1 to i64
  store i64 %i.bi, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 -1, i64 16, i1 false)
  %i.bk = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.bl = add i64 %i.bk, 11
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i16, ptr %i.bm monotonic, align 2
  %i.bo = and i16 %i.bn, -96
  %.not.i21.i.i = icmp eq i16 %i.bo, 32
  br i1 %.not.i21.i.i, label %bb.f, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !30, !noundef !31
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.bs = load i8, ptr %i.br, align 8, !range !30
  %i.bt = trunc nuw i8 %i.bs to i1
  %not..i.i.i23.i.i = xor i1 %i.bq, true
  %i.bu = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.bt
  br i1 %i.bu, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.bw = load i8, ptr %i.bv, align 8, !range !30, !noundef !31
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bz = load ptr, ptr %i.by, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.f
  %.pn.i.i26.i.i = phi ptr [ %i.bz, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.f ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.ca = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.cb = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #13
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.cb, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.bd, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %11) #13
  %i.cc = call i64 @_ZN2v88internal10JSReceiver21GetPropertyAttributesEPNS0_14LookupIteratorE(ptr noundef nonnull %11) #13 ; 3 uses
  %.sroa.555.0.extract.shift = lshr i64 %i.cc, 32
  %.sroa.555.0.extract.trunc = trunc nuw i64 %.sroa.555.0.extract.shift to i32 ; 2 uses
  %i.cd = trunc i64 %i.cc to i1
  br i1 %i.cd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.cf = load i64, ptr %i.ce, align 8
  br label %.critedge43

bb.j:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.cg = load i32, ptr %i.ay, align 4            ; 3 uses
  %.not99 = icmp eq i32 %i.cg, 0
  br i1 %.not99, label %bb.u, label %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit

_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit: ; preds = %bb.j
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ci = load i64, ptr %i.ch, align 8
  br label %.critedge43

bb.l:                                             ; preds = %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit
  %i.cj = and i32 %.sroa.555.0.extract.trunc, 4
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = and i64 %i.cc, 12884901888
  %or.cond = icmp ne i64 %i.ck, 0
  %i.cl = icmp eq i32 %i.cg, 6
  %or.cond98 = or i1 %or.cond, %i.cl
  br i1 %or.cond98, label %bb.n, label %.thread90

bb.n:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.n, align 8
  %i.cn = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 8
  %i.cr = icmp eq i32 %6, 0
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr %2, ptr %8, align 8
  %i.cs = call ptr @_ZN2v88internal7Factory14NewSyntaxErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 218, ptr nonnull %8, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %2, ptr %7, align 8
  %i.ct = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 218, ptr nonnull %7, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink23.i = phi ptr [ %i.cs, %bb.o ], [ %i.ct, %bb.p ]
  %i.cu = load i64, ptr %.sink23.i, align 8
  %i.cv = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cu, ptr noundef null) #13 ; 2 uses
  store ptr %i.cm, ptr %i.n, align 8
  %i.cw = load i32, ptr %i.co, align 8
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.co, align 8
  %i.cy = load ptr, ptr %i.p, align 8
  %.not.i.i47 = icmp eq ptr %i.cy, %i.cn
  br i1 %.not.i.i47, label %.critedge43, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  store ptr %i.cn, ptr %i.p, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #13
  br label %.critedge43

bb.s:                                             ; preds = %bb.l
  %i.cz = icmp eq i32 %i.cg, 6
  br i1 %i.cz, label %bb.t, label %.thread90

bb.t:                                             ; preds = %bb.s
  call void @_ZN2v88internal14LookupIterator6DeleteEv(ptr noundef nonnull align 8 dereferenceable(88) %11) #13
  br label %.thread90

bb.u:                                             ; preds = %bb.j
  br i1 %5, label %_ZN2v88internal14LookupIterator7RestartEv.exit, label %.thread90

.thread90:                                        ; preds = %bb.m, %bb.s, %bb.t, %bb.u
  %.292 = phi i32 [ %4, %bb.u ], [ %4, %bb.s ], [ %4, %bb.t ], [ %.sroa.555.0.extract.trunc, %bb.m ] ; 2 uses
  %i.da = load i64, ptr %i.bj, align 8
  %.not.i = icmp eq i64 %i.da, -1
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread90
  call void @_ZN2v88internal14LookupIterator15RestartInternalILb1EEEvNS1_16InterceptorStateE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 0) #13
  br label %_ZN2v88internal14LookupIterator7RestartEv.exit

bb.w:                                             ; preds = %.thread90
  call void @_ZN2v88internal14LookupIterator15RestartInternalILb0EEEvNS1_16InterceptorStateE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 0) #13
  br label %_ZN2v88internal14LookupIterator7RestartEv.exit

_ZN2v88internal14LookupIterator7RestartEv.exit:   ; preds = %bb.w, %bb.v, %bb.u
  %.293 = phi i32 [ %4, %bb.u ], [ %.292, %bb.v ], [ %.292, %bb.w ]
  %i.db = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %11, ptr %3, i32 noundef %.293, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0) #13
  %i.dc = trunc i16 %i.db to i1
  %i.dd = icmp ne ptr %3, null
  %.not102 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %.not102, label %.critedge45, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal14LookupIterator7RestartEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.df = load i64, ptr %i.de, align 8
  br label %.critedge43

.critedge45:                                      ; preds = %_ZN2v88internal14LookupIterator7RestartEv.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.dh = load i64, ptr %i.dg, align 8
  br label %.critedge43

.critedge43:                                      ; preds = %bb.r, %bb.q, %bb.x, %bb.k, %.critedge45, %bb.i
  %.sroa.069.0 = phi i64 [ %i.cf, %bb.i ], [ %i.ci, %bb.k ], [ %i.df, %bb.x ], [ %i.dh, %.critedge45 ], [ %i.cv, %bb.q ], [ %i.cv, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %_ZN2v88internal12_GLOBAL__N_123ThrowRedeclarationErrorEPNS0_7IsolateENS0_6HandleINS0_6StringEEENS1_17RedeclarationTypeE.exit

_ZN2v88internal12_GLOBAL__N_123ThrowRedeclarationErrorEPNS0_7IsolateENS0_6HandleINS0_6StringEEENS1_17RedeclarationTypeE.exit: ; preds = %bb.d, %bb.c, %.critedge43
  %.sroa.069.1 = phi i64 [ %.sroa.069.0, %.critedge43 ], [ %i.aj, %bb.c ], [ %i.aj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  ret i64 %.sroa.069.1
}

declare i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal18ScriptContextTable6LookupENS0_12DirectHandleINS0_6StringEEEPNS0_20VariableLookupResultE(ptr noundef nonnull align 4 dereferenceable(32), ptr, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal10JSReceiver21GetPropertyAttributesEPNS0_14LookupIteratorE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator6DeleteEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory14NewSyntaxErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #5 comdat {
bb.a:
  tail call void @abort() #14
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @_ZN2v88internal14LookupIterator15RestartInternalILb1EEEvNS1_16InterceptorStateE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator15RestartInternalILb0EEEvNS1_16InterceptorStateE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #2

declare i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef, ptr, i32 noundef, i64, i32 noundef, i32 noundef, i32 noundef, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory24NewJSDisposableStackBaseEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN2v88internal21JSDisposableStackBase31InitializeJSDisposableStackBaseEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal21JSDisposableStackBase29CheckValueAndGetDisposeMethodEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_17DisposeMethodHintE(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %4 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %9 = alloca %"class.v8::internal::Factory::JSFunctionBuilder", align 8 ; 4 uses
  switch i32 %2, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72: ; preds = %bb.b
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ugt i16 %i.h, 299
  br i1 %i.i, label %bb.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72.thread: ; preds = %bb.b, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72
  %i.j = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 486, ptr null, i64 0) #13
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.k, ptr noundef null) #13 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8200 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %.pre.pre.i = load i64, ptr %i.m, align 8
  %i.n = add i64 %.pre.pre.i, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = icmp eq i16 %i.s, 128
  br i1 %i.t, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.c
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.x = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.x, ptr %8, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ai = ptrtoint ptr %1 to i64
  store i64 %i.ai, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 -1, i64 16, i1 false)
  %i.ak = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = and i16 %i.an, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ao, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !30, !noundef !31
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.as = load i8, ptr %i.ar, align 8, !range !30
  %i.at = trunc nuw i8 %i.as to i1
  %not..i.i.i23.i.i.i = xor i1 %i.aq, true
  %i.au = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.at
  br i1 %i.au, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aw = load i8, ptr %i.av, align 8, !range !30, !noundef !31
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.az = load ptr, ptr %i.ay, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.az, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ba = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bb = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.m) #13
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bb, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.m, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.ad, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %8) #13
  %i.bc = load i32, ptr %i.y, align 4
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bd = load ptr, ptr %i.ac, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.g

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bf = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %8, i1 noundef zeroext false) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.not259 = icmp eq ptr %i.bf, null
  br i1 %.not259, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i245 = phi ptr [ %i.be, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.bf, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.bg = load i64, ptr %.sroa.0.0.i245, align 8  ; 2 uses
  %i.bh = trunc i64 %i.bg to i1
  br i1 %i.bh, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74: ; preds = %bb.g
  %i.bi = add nsw i64 %i.bg, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = add i64 %i.bk, 13
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i8, ptr %i.bm monotonic, align 1
  %i.bo = and i8 %i.bn, 2
  %.not260 = icmp eq i8 %i.bo, 0
  br i1 %.not260, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74.thread, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74.thread: ; preds = %bb.g, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.m, ptr %7, align 8
  %i.bp = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 124, ptr nonnull %7, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bq, ptr noundef null) #13 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.h:                                             ; preds = %bb.a
  %i.bs = load i64, ptr %1, align 8               ; 4 uses
  %i.bt = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 10624
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp eq i64 %i.bs, %i.bx
  br i1 %i.by, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit: ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = icmp eq i64 %i.bs, %i.ca
  br i1 %i.cb, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, label %bb.i

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread: ; preds = %bb.h, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.i:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.cd = trunc i64 %i.bs to i1
  br i1 %i.cd, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.i
  %i.ce = add nsw i64 %i.bs, -1
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i64, ptr %i.cf monotonic, align 8
  %i.ch = add i64 %i.cg, 11
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load atomic volatile i16, ptr %i.ci monotonic, align 2
  %i.ck = icmp ugt i16 %i.cj, 299
  br i1 %i.ck, label %bb.j, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cl = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 486, ptr null, i64 0) #13
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cm, ptr noundef null) #13 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.j:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.pre.pre.i79 = load i64, ptr %i.co, align 8
  %i.cp = add i64 %.pre.pre.i79, -1
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = load atomic volatile i64, ptr %i.cq monotonic, align 8
  %i.cs = add i64 %i.cr, 11
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i16, ptr %i.ct monotonic, align 2
  %i.cv = icmp eq i16 %i.cu, 128
  br i1 %i.cv, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i92, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i80

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i92:  ; preds = %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i81, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i80

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i80: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i92, %bb.j
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i81

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i81: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i80, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i92
  %i.cz = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i80 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i92 ]
  store i32 %i.cz, ptr %6, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %1, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr null, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.dk = ptrtoint ptr %1 to i64                  ; 2 uses
  store i64 %i.dk, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 -1, i64 16, i1 false)
  %i.dm = load atomic volatile i64, ptr %i.cq monotonic, align 8
  %i.dn = add i64 %i.dm, 11
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i16, ptr %i.do monotonic, align 2
  %i.dq = and i16 %i.dp, -96
  %.not.i21.i.i.i82 = icmp eq i16 %i.dq, 32
  br i1 %.not.i21.i.i.i82, label %bb.k, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i83

bb.k:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i81
  %i.dr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !30, !noundef !31
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.du = load i8, ptr %i.dt, align 8, !range !30
  %i.dv = trunc nuw i8 %i.du to i1
  %not..i.i.i23.i.i.i87 = xor i1 %i.ds, true
  %i.dw = select i1 %not..i.i.i23.i.i.i87, i1 true, i1 %i.dv
  br i1 %i.dw, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i89, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.dy = load i8, ptr %i.dx, align 8, !range !30, !noundef !31
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i88, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i88: ; preds = %bb.l
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.eb = load ptr, ptr %i.ea, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i89

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i89: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i88, %bb.k
  %.pn.i.i26.i.i.i90 = phi ptr [ %i.eb, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i88 ], [ %0, %bb.k ]
  %.in.i.i27.i.i.i91 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i90, i64 58464
  %i.ec = load ptr, ptr %.in.i.i27.i.i.i91, align 8
  %i.ed = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.co) #13
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i83

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i83: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i89, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i81
  %.sroa.05.0.i22.i.i.i84 = phi ptr [ %i.ed, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i89 ], [ %i.co, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i81 ]
  store ptr %.sroa.05.0.i22.i.i.i84, ptr %i.df, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #13
  %i.ee = load i32, ptr %i.da, align 4
  %.not.i85 = icmp eq i32 %i.ee, 0
  br i1 %.not.i85, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i83
  %i.ef = load ptr, ptr %i.de, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.n

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i83
  %i.eh = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not = icmp eq ptr %i.eh, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93.thread
  %.sroa.0.0.i86249 = phi ptr [ %i.eg, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93.thread ], [ %i.eh, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93 ] ; 2 uses
  %i.ei = load i64, ptr %.sroa.0.0.i86249, align 8 ; 3 uses
  %i.ej = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 10624
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = icmp eq i64 %i.ei, %i.en
  br i1 %i.eo, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71.thread, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71: ; preds = %bb.n
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = icmp eq i64 %i.ei, %i.eq
  br i1 %i.er, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71.thread, label %bb.u

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71.thread: ; preds = %bb.n, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8200 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %.pre.pre.i94 = load i64, ptr %i.es, align 8
  %i.et = add i64 %.pre.pre.i94, -1
  %i.eu = inttoptr i64 %i.et to ptr               ; 3 uses
  %i.ev = load atomic volatile i64, ptr %i.eu monotonic, align 8
  %i.ew = add i64 %i.ev, 11
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load atomic volatile i16, ptr %i.ex monotonic, align 2
  %i.ez = icmp eq i16 %i.ey, 128
  br i1 %i.ez, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i107, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i95

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i107: ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71.thread
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = trunc i32 %i.fb to i1
  br i1 %i.fc, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i96, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i95

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i95: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i107, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71.thread
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i96

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i96: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i95, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i107
  %i.fd = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i95 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i107 ]
  store i32 %i.fd, ptr %5, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %0, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %1, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.dk, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i8 -1, i64 16, i1 false)
  %i.fp = load atomic volatile i64, ptr %i.eu monotonic, align 8
  %i.fq = add i64 %i.fp, 11
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load atomic volatile i16, ptr %i.fr monotonic, align 2
  %i.ft = and i16 %i.fs, -96
  %.not.i21.i.i.i97 = icmp eq i16 %i.ft, 32
  br i1 %.not.i21.i.i.i97, label %bb.o, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i98

bb.o:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i96
  %i.fu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !30, !noundef !31
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.fx = load i8, ptr %i.fw, align 8, !range !30
  %i.fy = trunc nuw i8 %i.fx to i1
  %not..i.i.i23.i.i.i102 = xor i1 %i.fv, true
  %i.fz = select i1 %not..i.i.i23.i.i.i102, i1 true, i1 %i.fy
  br i1 %i.fz, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i104, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.gb = load i8, ptr %i.ga, align 8, !range !30, !noundef !31
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i103, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i103: ; preds = %bb.p
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ge = load ptr, ptr %i.gd, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i104

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i104: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i103, %bb.o
  %.pn.i.i26.i.i.i105 = phi ptr [ %i.ge, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i103 ], [ %0, %bb.o ]
  %.in.i.i27.i.i.i106 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i105, i64 58464
  %i.gf = load ptr, ptr %.in.i.i27.i.i.i106, align 8
  %i.gg = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.es) #13
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i98

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i98: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i104, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i96
  %.sroa.05.0.i22.i.i.i99 = phi ptr [ %i.gg, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i104 ], [ %i.es, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i96 ]
  store ptr %.sroa.05.0.i22.i.i.i99, ptr %i.fj, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #13
  %i.gh = load i32, ptr %i.fe, align 4
  %.not.i100 = icmp eq i32 %i.gh, 0
  br i1 %.not.i100, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i98
  %i.gi = load ptr, ptr %i.fi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.r

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i98
  %i.gk = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.not256 = icmp eq ptr %i.gk, null
  br i1 %.not256, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108.thread
  %.sroa.0.0.i101253 = phi ptr [ %i.gj, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108.thread ], [ %i.gk, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108 ] ; 3 uses
  %i.gl = load i64, ptr %.sroa.0.0.i101253, align 8 ; 4 uses
  %i.gm = trunc i64 %i.gl to i1
  br i1 %i.gm, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73: ; preds = %bb.r
  %i.gn = add nsw i64 %i.gl, -1
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = load atomic volatile i64, ptr %i.go monotonic, align 8
  %i.gq = add i64 %i.gp, 13
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = load atomic volatile i8, ptr %i.gr monotonic, align 1
  %i.gt = and i8 %i.gs, 2
  %.not257 = icmp eq i8 %i.gt, 0
  br i1 %.not257, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73.thread, label %bb.s

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73.thread: ; preds = %bb.r, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.es, ptr %4, align 8
  %i.gu = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 124, ptr nonnull %4, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.gv, ptr noundef null) #13 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.s:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73
  %i.gx = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 10624
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = icmp eq i64 %i.gl, %i.hb
  br i1 %i.hc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hd = call ptr @_ZN2v88internal7Isolate14native_contextEv(ptr noundef nonnull align 8 dereferenceable(64320) %0)
  %i.he = call ptr @_ZN2v88internal7Factory17NewBuiltinContextENS0_12DirectHandleINS0_13NativeContextEEEi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.hd, i32 noundef 3) #13 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8            ; 2 uses
  %i.hg = load i64, ptr %.sroa.0.0.i101253, align 8 ; 2 uses
  %i.hh = add i64 %i.hf, 31                       ; 2 uses
  %i.hi = inttoptr i64 %i.hh to ptr
  store atomic volatile i64 %i.hg, ptr %i.hi monotonic, align 8
  call void @_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE(i64 %i.hf, i64 %i.hh, i64 %i.hg, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 9336
  call void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %0, ptr nonnull %i.hj, ptr nonnull %i.he) #13
  %i.hk = call ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pre = load i64, ptr %i.hk, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71
  %i.hl = phi i64 [ %i.gl, %bb.s ], [ %.pre, %bb.t ], [ %i.ei, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71 ] ; 2 uses
  %.sroa.0138.0 = phi ptr [ %.sroa.0.0.i101253, %bb.s ], [ %i.hk, %bb.t ], [ %.sroa.0.0.i86249, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit71 ]
  %i.hm = trunc i64 %i.hl to i1
  br i1 %i.hm, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.u
  %i.hn = add nsw i64 %i.hl, -1
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = load atomic volatile i64, ptr %i.ho monotonic, align 8
  %i.hq = add i64 %i.hp, 13
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = load atomic volatile i8, ptr %i.hr monotonic, align 1
  %i.ht = and i8 %i.hs, 2
  %.not258 = icmp eq i8 %i.ht, 0
  br i1 %.not258, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.u, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.co, ptr %3, align 8
  %i.hu = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 124, ptr nonnull %3, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.hv, ptr noundef null) #13 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, %bb.a, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73.thread, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74.thread, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72.thread
  %.sroa.0147.0 = phi ptr [ null, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit108 ], [ null, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74.thread ], [ null, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ null, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit72.thread ], [ %i.cc, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread ], [ null, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ null, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit73.thread ], [ null, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit93 ], [ null, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ], [ null, %bb.a ], [ %.sroa.0.0.i245, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit74 ], [ %.sroa.0138.0, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.0147.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal21JSDisposableStackBase3AddEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEES7_NS0_21DisposeMethodCallTypeENS0_17DisposeMethodHintE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %sum.shift.i = lshr i64 %i.d, 36
  %i.e = trunc nuw nsw i64 %sum.shift.i to i32
  %i.f = and i32 %i.e, 134217727                  ; 4 uses
  %i.g = shl i32 %5, 1
  %i.h = or i32 %i.g, %4
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #13
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i27 = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i27 to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i27, align 8
  %i.t = load i64, ptr %1, align 8
  %i.u = add i64 %i.t, 23
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.m, align 8
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aa = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #13
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.x, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
end_hunk_0
begin_hunk_1_@_Znwm

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare ptr @_ZN2v88internal7Factory18NewArgumentsObjectENS0_12DirectHandleINS0_10JSFunctionEEEi(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE26NewSloppyArgumentsElementsEiNS0_12DirectHandleINS0_7ContextEEENS4_INS0_10FixedArrayEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, ptr, i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23ContextLocalIsParameterEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal9ScopeInfo27ContextLocalParameterNumberEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal9ScopeInfo19ContextHeaderLengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap28NotifyObjectLayoutChangeDoneENS0_6TaggedINS0_10HeapObjectEEE(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #10

declare void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4), i64, i32 noundef) unnamed_addr #2

declare ptr @_ZN2v88internal7Factory10NewJSArrayENS0_12ElementsKindEiiNS0_26ArrayStorageAllocationModeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory18NewFunctionContextENS0_12DirectHandleINS0_7ContextEEENS2_INS0_9ScopeInfoEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory14NewWithContextENS0_12DirectHandleINS0_7ContextEEENS2_INS0_9ScopeInfoEEENS2_INS0_10JSReceiverEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory15NewCatchContextENS0_12DirectHandleINS0_7ContextEEENS2_INS0_9ScopeInfoEEENS2_INS0_6ObjectEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory15NewBlockContextENS0_12DirectHandleINS0_7ContextEEENS2_INS0_9ScopeInfoEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #2

declare i16 @_ZN2v88internal10JSReceiver14DeletePropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS0_12LanguageModeE(ptr noundef, ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_114LoadLookupSlotEPNS0_7IsolateENS0_6HandleINS0_6StringEEENS0_11ShouldThrowEPNS4_INS0_6ObjectEEE(ptr noundef %0, ptr %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i67 = load i64, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #13
  br label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.l = ptrtoint ptr %.0.i.i to i64
  %i.m = add i64 %i.l, 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8
  store i64 %.sroa.0.0.copyload.i67, ptr %.0.i.i, align 8
  %i.o = call ptr @_ZN2v88internal7Context6LookupENS0_6HandleIS1_EENS2_INS0_6StringEEENS0_18ContextLookupFlagsEPiPNS0_18PropertyAttributesEPNS0_18InitializationFlagEPNS0_12VariableModeEPb(ptr nonnull %.0.i.i, ptr %1, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null) #13 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i68 = load i64, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.r = load i64, ptr %i.q, align 8
  %.not146 = icmp eq i64 %.sroa.0.0.copyload.i68, %i.r
  br i1 %.not146, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.s = icmp eq ptr %i.o, null
  br i1 %i.s, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.o, align 8              ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.d
  %i.v = add nsw i64 %i.t, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 255
  br i1 %i.ab, label %bb.e, label %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.e:                                             ; preds = %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ad = ptrtoint ptr %i.ac to i64
  store i64 %i.ad, ptr %3, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = call ptr @_ZN2v88internal16SourceTextModule12LoadVariableEPNS0_7IsolateENS0_12DirectHandleIS1_EEi(ptr noundef nonnull %0, ptr nonnull %i.o, i32 noundef %i.ae) #13
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.d, %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ag = load i32, ptr %i.a, align 4             ; 2 uses
  %.not62 = icmp eq i32 %i.ag, -1
  br i1 %.not62, label %bb.m, label %bb.h

.thread:                                          ; preds = %bb.c
  %i.ah = load i32, ptr %i.a, align 4             ; 2 uses
  %.not62139 = icmp eq i32 %i.ah, -1
  br i1 %.not62139, label %.thread140, label %bb.h

bb.h:                                             ; preds = %.thread, %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ai = phi i32 [ %i.ah, %.thread ], [ %i.ag, %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ak = load i8, ptr %i.c, align 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.o, align 8
  %i.an = shl nsw i32 %i.ai, 3
  %i.ao = sext i32 %i.an to i64
  %i.ap = add nsw i64 %i.ao, 15
  %i.aq = add i64 %i.ap, %i.am
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 10624
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %1, ptr %6, align 8
  %i.az = call ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 221, ptr nonnull %6, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ba, ptr noundef null) #13 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.critedge:                                        ; preds = %bb.h, %bb.i
  %.not66 = icmp eq ptr %3, null
  br i1 %.not66, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.bc = ptrtoint ptr %i.aj to i64
  store i64 %i.bc, ptr %3, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  %i.bd = call ptr @_ZN2v88internal7Context3GetENS0_12DirectHandleIS1_EEiPNS0_7IsolateE(ptr %i.o, i32 noundef %i.ai, ptr noundef nonnull %0) #13
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.m:                                             ; preds = %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %.pre.pre.i = load i64, ptr %1, align 8
  %i.be = add i64 %.pre.pre.i, -1
  %i.bf = inttoptr i64 %i.be to ptr               ; 3 uses
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2
  %i.bk = icmp eq i16 %i.bj, 128
  br i1 %i.bk, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = trunc i32 %i.bm to i1
  br i1 %i.bn, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.m
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.bo = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.bo, ptr %5, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.o, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bz = ptrtoint ptr %i.o to i64
  store i64 %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 -1, i64 16, i1 false)
  %i.cb = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = and i16 %i.ce, -96
  %.not.i21.i.i.i = icmp eq i16 %i.cf, 32
  br i1 %.not.i21.i.i.i, label %bb.n, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.n:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !30, !noundef !31
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.cj = load i8, ptr %i.ci, align 8, !range !30
  %i.ck = trunc nuw i8 %i.cj to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ch, true
  %i.cl = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ck
  br i1 %i.cl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.cn = load i8, ptr %i.cm, align 8, !range !30, !noundef !31
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.n
  %.pn.i.i26.i.i.i = phi ptr [ %i.cq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.n ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.cr = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.cs = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1) #13
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.cs, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %1, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.bu, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #13
  %i.ct = load i32, ptr %i.bp, align 4
  %.not.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cu = load ptr, ptr %i.bt, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.q

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cw = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.not147 = icmp eq ptr %i.cw, null
  br i1 %.not147, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i142 = phi ptr [ %i.cv, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.cw, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 2 uses
  %.not63 = icmp eq ptr %3, null
  br i1 %.not63, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = load i64, ptr %i.o, align 8             ; 2 uses
  %i.cy = trunc i64 %i.cx to i1
  br i1 %i.cy, label %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.r
  %i.cz = add nsw i64 %i.cx, -1
  %i.da = inttoptr i64 %i.cz to ptr               ; 2 uses
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2
  %i.df = icmp eq i16 %i.de, 303
  br i1 %i.df, label %bb.s, label %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dg = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dh = add i64 %i.dg, 11
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i16, ptr %i.di monotonic, align 2
  %i.dk = icmp eq i16 %i.dj, 2123
  br i1 %i.dk, label %bb.s, label %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.s:                                             ; preds = %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.r, %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit, %bb.s
  %.sroa.012.0 = phi ptr [ %i.dl, %bb.s ], [ %i.o, %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.o, %bb.r ]
  store ptr %.sroa.012.0, ptr %3, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.thread140:                                       ; preds = %.thread
  %.not64 = icmp eq i32 %2, 0
  br i1 %.not64, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread140
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8
  %i.dm = call ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 221, ptr nonnull %4, i64 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.dn, ptr noundef null) #13 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.u:                                             ; preds = %.thread140
  %.not65 = icmp eq ptr %3, null
  br i1 %.not65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.dq = ptrtoint ptr %i.dp to i64
  store i64 %i.dq, ptr %3, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.q, %bb.j, %bb.l, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.w, %bb.t, %bb.g
  %.sroa.094.2 = phi ptr [ %i.af, %bb.g ], [ %i.dr, %bb.w ], [ null, %bb.t ], [ %i.bd, %bb.l ], [ null, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.j ], [ null, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ], [ %.sroa.0.0.i142, %_ZN2v88internal26IsJSContextExtensionObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.0.0.i142, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.sroa.094.2
}

declare ptr @_ZN2v88internal16SourceTextModule12LoadVariableEPNS0_7IsolateENS0_12DirectHandleIS1_EEi(ptr noundef, ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Context3GetENS0_12DirectHandleIS1_EEiPNS0_7IsolateE(ptr, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_115StoreLookupSlotEPNS0_7IsolateENS0_6HandleINS0_7ContextEEENS4_INS0_6StringEEENS0_12DirectHandleINS0_6ObjectEEENS0_12LanguageModeENS0_18ContextLookupFlagsE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i1 noundef zeroext %4, i32 noundef range(i32 0, 4) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %8 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %9 = alloca [1 x %"class.v8::internal::DirectHandle.572"], align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.457", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.f = call ptr @_ZN2v88internal7Context6LookupENS0_6HandleIS1_EENS2_INS0_6StringEEENS0_18ContextLookupFlagsEPiPNS0_18PropertyAttributesEPNS0_18InitializationFlagEPNS0_12VariableModeEPb(ptr %1, ptr %2, i32 noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #13 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.j = load i64, ptr %i.i, align 8
  %.not119 = icmp eq i64 %.sroa.0.0.copyload.i, %i.j
  br i1 %.not119, label %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.f, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 255
  br i1 %i.s, label %bb.d, label %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal18IsSourceTextModuleENS0_6TaggedINS0_6ObjectEEE.exit
  %i.t = load i32, ptr %i.b, align 4
  %i.u = and i32 %i.t, 1
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f
end_hunk_1
