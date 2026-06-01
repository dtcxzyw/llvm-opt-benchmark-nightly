inline.NumInlined: 2403
inline.NumDeleted: 1167
begin_hunk_0_@_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x i8>, ptr %i.e, align 1
  %i.h = icmp ne <2 x i8> %i.g, zeroinitializer
  %i.i = zext <2 x i1> %i.h to <2 x i32>
  store <2 x i32> %i.i, ptr %i.f, align 8
  ret void
}

declare noundef zeroext i1 @_ZNK2v85Value12IsUint8ArrayEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare ptr @_ZN2v815ArrayBufferView6BufferEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef i64 @_ZN2v815ArrayBufferView10ByteOffsetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node4heap24CreateHeapSnapshotStreamERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
bb.a:
  %1 = alloca %"struct.v8::HeapProfiler::HeapSnapshotOptions", align 8 ; 5 uses
  %2 = alloca %"class.std::unique_ptr.420", align 8 ; 5 uses
  %3 = alloca %"class.node::BaseObjectPtrImpl", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #27 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #27
  %i.g = icmp ult i32 %i.f, 40
  br i1 %i.g, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !5

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 47
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, 327
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, !prof !28

bb.c:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.q = add i64 %i.k, 271
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit

_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit: ; preds = %bb.a, %bb.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.t, %bb.c ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4heap24CreateHeapSnapshotStreamERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.aa = tail call noundef zeroext i1 @_ZNK2v85Value12IsUint8ArrayEv(ptr noundef nonnull align 1 dereferenceable(1) %i.z) #27, !noalias !39
  br i1 %i.aa, label %_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit, label %bb.e, !prof !29

bb.e:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEEE20error_and_abort_args) #27, !noalias !39
  tail call void @abort() #28, !noalias !39
  unreachable

_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit: ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.ab = tail call ptr @_ZN2v815ArrayBufferView6BufferEv(ptr noundef nonnull align 1 dereferenceable(1) %i.z) #27, !noalias !39
  %i.ac = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ab) #27, !noalias !39
  %i.ad = tail call noundef i64 @_ZN2v815ArrayBufferView10ByteOffsetEv(ptr noundef nonnull align 1 dereferenceable(1) %i.z) #27, !noalias !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 28, i1 false), !alias.scope !39
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load <2 x i8>, ptr %i.ae, align 1, !noalias !39
  %i.ah = icmp ne <2 x i8> %i.ag, zeroinitializer
  %i.ai = zext <2 x i1> %i.ah to <2 x i32>
  store <2 x i32> %i.ai, ptr %i.af, align 8, !alias.scope !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr @_ZN2v87Isolate15GetHeapProfilerEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ak) #27
  %i.am = call noundef ptr @_ZN2v812HeapProfiler16TakeHeapSnapshotERKNS0_19HeapSnapshotOptionsE(ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %1) #27 ; 2 uses
  store ptr %i.am, ptr %2, align 8
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4heap24CreateHeapSnapshotStreamERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args_0) #27
  call void @abort() #28
  unreachable

bb.g:                                             ; preds = %_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN4node4heap24CreateHeapSnapshotStreamEPNS_11EnvironmentEOSt10unique_ptrIKN2v812HeapSnapshotENS_15FunctionDeleterIS6_XadL_ZNS0_18DeleteHeapSnapshotEPS6_EEEEE(ptr dead_on_unwind nonnull writable sret(%"class.node::BaseObjectPtrImpl") align 8 %3, ptr noundef nonnull %.0.i.i, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.an = load ptr, ptr %3, align 8               ; 4 uses
  %.not26 = icmp eq ptr %i.an, null
  br i1 %.not26, label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %0, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 200
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZNK4node10BaseObject6objectEv.exit, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i

_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i: ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 11
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = and i8 %i.ba, 3
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i
  %i.bd = load i64, ptr %i.ax, align 8
  %i.be = ptrtoint ptr %i.av to i64
  %i.bf = add i64 %i.be, 560
  %i.bg = inttoptr i64 %i.bf to ptr               ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.j, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bl = call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.av) #27
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bl, %bb.j ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bm = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bn = add i64 %i.bm, 8
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bg, align 8
  store i64 %i.bd, ptr %.0.i.i.i.i, align 8
  br label %bb.k

_ZNK4node10BaseObject6objectEv.exit:              ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = add i64 %i.br, 648
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i, %_ZNK4node10BaseObject6objectEv.exit
  %storemerge.in = phi ptr [ %i.bt, %_ZNK4node10BaseObject6objectEv.exit ], [ %i.ax, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i ], [ %.0.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.ap, align 8
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an) #27
  br label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EED2Ev.exit

_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EED2Ev.exit: ; preds = %bb.g, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i9 = icmp eq ptr %i.bu, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIKN2v812HeapSnapshotEN4node15FunctionDeleterIS2_XadL_ZNS3_4heap18DeleteHeapSnapshotEPS2_EEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EED2Ev.exit
  call void @_ZN2v812HeapSnapshot6DeleteEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bu) #27
  br label %_ZNSt10unique_ptrIKN2v812HeapSnapshotEN4node15FunctionDeleterIS2_XadL_ZNS3_4heap18DeleteHeapSnapshotEPS2_EEEEED2Ev.exit

_ZNSt10unique_ptrIKN2v812HeapSnapshotEN4node15FunctionDeleterIS2_XadL_ZNS3_4heap18DeleteHeapSnapshotEPS2_EEEEED2Ev.exit: ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void
}

declare noundef ptr @_ZN2v87Isolate15GetHeapProfilerEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef ptr @_ZN2v812HeapProfiler16TakeHeapSnapshotERKNS0_19HeapSnapshotOptionsE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
bb.a:
  %.sroa.054 = alloca <{ ptr, ptr }>, align 8     ; 5 uses
  %1 = alloca %"class.node::DiagnosticFilename", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"struct.v8::HeapProfiler::HeapSnapshotOptions", align 8 ; 5 uses
  %6 = alloca %"class.node::BufferValue", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %8 = alloca %"struct.v8::HeapProfiler::HeapSnapshotOptions", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #27 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #27
  %i.g = icmp ult i32 %i.f, 40
  br i1 %i.g, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !5

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 47
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, 327
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, !prof !28

bb.c:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.q = add i64 %i.k, 271
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit

_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit: ; preds = %bb.a, %bb.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.t, %bb.c ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ] ; 15 uses
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 2
  br i1 %i.aa, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.054)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ae = tail call noundef zeroext i1 @_ZNK2v85Value12IsUint8ArrayEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ad) #27, !noalias !42
  br i1 %i.ae, label %_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit, label %bb.e, !prof !29

bb.e:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEEE20error_and_abort_args) #27, !noalias !42
  tail call void @abort() #28, !noalias !42
  unreachable

_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit: ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.af = tail call ptr @_ZN2v815ArrayBufferView6BufferEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ad) #27, !noalias !42
  %i.ag = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.af) #27, !noalias !42
  %i.ah = tail call noundef i64 @_ZN2v815ArrayBufferView10ByteOffsetEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ad) #27, !noalias !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.054, i8 0, i64 16, i1 false), !alias.scope !42
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !42
  %.not.i38 = icmp ne i8 %i.aj, 0
  %i.ak = zext i1 %.not.i38 to i32                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.am = load i8, ptr %i.al, align 1, !noalias !42
  %.not2.i = icmp ne i8 %i.am, 0
  %i.an = zext i1 %.not2.i to i32                 ; 2 uses
  %i.ao = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 3
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.f, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread

bb.f:                                             ; preds = %_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit
  %i.ar = add nsw i64 %i.ao, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i16, ptr %i.av, align 2
  %.not.i37 = icmp eq i16 %i.aw, 131
  br i1 %.not.i37, label %_ZNK2v85Value16QuickIsUndefinedEv.exit, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread

_ZNK2v85Value16QuickIsUndefinedEv.exit:           ; preds = %bb.f
  %i.ax = add i64 %i.ao, 39
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 8
  %.mask = and i64 %i.az, -4294967296
  %i.ba = icmp eq i64 %.mask, 17179869184
  br i1 %i.ba, label %bb.g, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread

bb.g:                                             ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2320
  %i.bc = load i64, ptr %i.bb, align 8
  call void @_ZN4node18DiagnosticFilename12MakeFilenameB5cxx11EmPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 dereferenceable(32) %1, i64 noundef %i.bc, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2024
  call void @_ZN4node11Environment6GetCwdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.be = load ptr, ptr %2, align 8               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  store i64 %i.bg, ptr %3, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.be, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1552
  %i.bj = load i8, ptr %i.bi, align 8, !range !26, !noundef !45
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34, label %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34.thread, !prof !5

_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.critedge

_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1496
  %i.bm = call noundef zeroext i1 @_ZNK4node10permission10Permission16is_scope_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.bl, ptr noundef nonnull %.0.i.i, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre100 = load ptr, ptr %2, align 8            ; 2 uses
  br i1 %i.bm, label %.critedge, label %bb.h, !prof !46

bb.h:                                             ; preds = %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bn = load i64, ptr %i.bf, align 8
  store i64 %i.bn, ptr %4, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.pre100, ptr %i.bo, align 8
  call void @_ZN4node10permission10Permission17ThrowAccessDeniedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull %.0.i.i, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1553
  %i.bq = load i8, ptr %i.bp, align 1, !range !26, !noundef !45
  %i.br = trunc nuw i8 %i.bq to i1
  %.pre = load ptr, ptr %2, align 8               ; 3 uses
  br i1 %i.br, label %.critedge, label %bb.i

.critedge:                                        ; preds = %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34.thread, %bb.h, %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34
  %i.bs = phi ptr [ %i.be, %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34.thread ], [ %.pre, %bb.h ], [ %.pre100, %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit34 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.bx = load ptr, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.054, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.an, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.by = call i8 @_ZN4node4heap13WriteSnapshotEPNS_11EnvironmentEPKcN2v812HeapProfiler19HeapSnapshotOptionsE(ptr noundef nonnull %.0.i.i, ptr noundef %i.bx, ptr noundef nonnull byval(%"struct.v8::HeapProfiler::HeapSnapshotOptions") align 8 %5)
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %.pre, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.i
  %i.cc = load i64, ptr %i.ca, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load ptr, ptr %1, align 8
  %i.cf = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.w, ptr noundef %i.ce, i32 noundef 0, i32 noundef -1) #27 ; 2 uses
  %.not90 = icmp eq ptr %i.cf, null
  br i1 %.not90, label %bb.k, label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit35

_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit35: ; preds = %bb.j
  %i.cg = load ptr, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.cf, align 8
  store i64 %i.ci, ptr %i.ch, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.cj = load ptr, ptr %1, align 8               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN4node18DiagnosticFilenameD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.cm = load i64, ptr %i.ck, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #30
  br label %_ZN4node18DiagnosticFilenameD2Ev.exit

_ZN4node18DiagnosticFilenameD2Ev.exit:            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.r

_ZNK2v85Value16QuickIsUndefinedEv.exit.thread:    ; preds = %bb.f, %_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit, %_ZNK2v85Value16QuickIsUndefinedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZN4node11BufferValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048) %6, ptr noundef %i.w, ptr nonnull %i.ac) #27
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %bb.l, label %bb.m, !prof !5

bb.l:                                             ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args_0) #27
  call void @abort() #28
  unreachable

bb.m:                                             ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread
  call void @_ZN4node16ToNamespacedPathEPNS_11EnvironmentEPNS_11BufferValueE(ptr noundef %.0.i.i, ptr noundef nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.cq = load ptr, ptr %i.co, align 8
  %i.cr = load i64, ptr %6, align 8
  store i64 %i.cr, ptr %7, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.cq, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1552
  %i.cu = load i8, ptr %i.ct, align 8, !range !26, !noundef !45
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.critedge30, !prof !5

_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1496
  %i.cx = call noundef zeroext i1 @_ZNK4node10permission10Permission16is_scope_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.cw, ptr noundef nonnull %.0.i.i, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %7) #33
  br i1 %i.cx, label %.critedge30, label %bb.n, !prof !46

bb.n:                                             ; preds = %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @_ZN4node10permission10Permission17ThrowAccessDeniedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull %.0.i.i, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1553
  %i.cz = load i8, ptr %i.cy, align 1, !range !26, !noundef !45
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.critedge30, label %bb.o

.critedge30:                                      ; preds = %bb.m, %bb.n, %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.db = load ptr, ptr %i.co, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.054, i64 16, i1 false)
  %.sroa.5.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx55, align 8
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.an, ptr %.sroa.6.0..sroa_idx57, align 4
  %.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx59, align 8
  %i.dc = call i8 @_ZN4node4heap13WriteSnapshotEPNS_11EnvironmentEPKcN2v812HeapProfiler19HeapSnapshotOptionsE(ptr noundef nonnull %.0.i.i, ptr noundef %i.db, ptr noundef nonnull byval(%"struct.v8::HeapProfiler::HeapSnapshotOptions") align 8 %8)
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.p

_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %.critedge30
  %i.de = load ptr, ptr %0, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i64, ptr %i.ac, align 8
  store i64 %i.dg, ptr %i.df, align 8
  br label %bb.p

bb.p:                                             ; preds = %.critedge30, %bb.o, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit
  %i.dh = load ptr, ptr %i.co, align 8            ; 3 uses
  %i.di = icmp ne ptr %i.dh, null
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dk = icmp ne ptr %i.dh, %i.dj
  %i.dl = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %i.dl, label %bb.q, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.dh) #27
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %_ZN4node18DiagnosticFilenameD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  ret void
}

declare void @_ZN4node11Environment6GetCwdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4node10permission10Permission17ThrowAccessDeniedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN4node11BufferValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef, ptr) unnamed_addr #5

declare void @_ZN4node16ToNamespacedPathEPNS_11EnvironmentEPNS_11BufferValueE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node4heap10InitializeEN2v85LocalINS1_6ObjectEEENS2_INS1_5ValueEEENS2_INS1_7ContextEEEPv(ptr %0, ptr readnone captures(none) %1, ptr %2, ptr readnone captures(none) %3) #0 {
bb.a:
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr %2, ptr %0, i64 18, ptr nonnull @.str.29, ptr noundef nonnull @_ZN4node4heap18BuildEmbedderGraphERKN2v820FunctionCallbackInfoINS1_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr %2, ptr %0, i64 19, ptr nonnull @.str.30, ptr noundef nonnull @_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr %2, ptr %0, i64 24, ptr nonnull @.str.31, ptr noundef nonnull @_ZN4node4heap24CreateHeapSnapshotStreamERKN2v820FunctionCallbackInfoINS1_5ValueEEE) #27
  ret void
}

declare void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr, ptr, i64, ptr, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node4heap26RegisterExternalReferencesEPNS_25ExternalReferenceRegistryE(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 ptrtoint (ptr @_ZN4node4heap18BuildEmbedderGraphERKN2v820FunctionCallbackInfoINS1_5ValueEEE to i64), ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #28
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #29 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node4heap18BuildEmbedderGraphERKN2v820FunctionCallbackInfoINS1_5ValueEEE to i64), ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #30
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q ; 2 uses
  store ptr %i.w, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit

_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit: ; preds = %bb.b, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i
  %i.x = phi ptr [ %.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.g, %bb.b ], [ %i.v, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit
  store i64 ptrtoint (ptr @_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE to i64), ptr %i.y, align 8
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.b, align 8
  %.pre19 = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit10

bb.h:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit
  %i.ab = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 6 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i4

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #28
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i4: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i5 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i.i5, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i6 = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i6)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #29 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE to i64), ptr %i.an, align 8
  %i.ao = icmp sgt i64 %i.ae, 0
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i7

bb.j:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i7

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i7: ; preds = %bb.j, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i8 = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i.i.i.i8, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i9, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #30
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i9

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i9: ; preds = %bb.k, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i7
  store ptr %i.am, ptr %i.a, align 8
  store ptr %i.ap, ptr %i.b, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit10

_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit10: ; preds = %bb.g, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i9
  %i.ar = phi ptr [ %.pre19, %bb.g ], [ %i.aq, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i9 ] ; 2 uses
  %i.as = phi ptr [ %i.aa, %bb.g ], [ %i.ap, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i9 ] ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit10
  store i64 ptrtoint (ptr @_ZN4node4heap24CreateHeapSnapshotStreamERKN2v820FunctionCallbackInfoINS1_5ValueEEE to i64), ptr %i.as, align 8
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.b, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit18

bb.m:                                             ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit10
  %i.av = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i12

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #28
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i12: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i13 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i.i.i13, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i.i.i.i14 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i14)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #29 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node4heap24CreateHeapSnapshotStreamERKN2v820FunctionCallbackInfoINS1_5ValueEEE to i64), ptr %i.bh, align 8
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.o, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i15

bb.o:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i15

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i15: ; preds = %bb.o, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
end_hunk_0
