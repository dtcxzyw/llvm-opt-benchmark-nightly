Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/access-info?download=true
inline.NumInlined: 2157
inline.NumDeleted: 1011
begin_hunk_0_@_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_15DescriptorArrayEEENS0_6HandleIT_EENS0_6TaggedIS6_EE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.az = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.at) #22
  br label %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.az, %bb.i ], [ %i.av, %bb.h ] ; 3 uses
  %i.ba = ptrtoint ptr %.0.i.i to i64
  %i.bb = add i64 %i.ba, 8
  %i.bc = inttoptr i64 %i.bb to ptr
  store ptr %i.bc, ptr %i.au, align 8
  store i64 %1, ptr %.0.i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_15DescriptorArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit
  %storemerge = phi ptr [ %i.as, %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_15DescriptorArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  store ptr %storemerge, ptr %i.aj, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.d, %bb.j
  %.sroa.018.1 = phi ptr [ %i.al, %bb.d ], [ %storemerge, %bb.j ], [ %i.ae, %.critedge ]
  ret ptr %.sroa.018.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler17AccessInfoFactory7isolateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #6 align 2 !guid !149 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZNK2v88internal8compiler17AccessInfoFactory32ComputeDictionaryProtoAccessInfoENS1_6MapRefENS1_7NameRefENS1_11JSObjectRefENS0_13InternalIndexENS1_10AccessModeENS0_15PropertyDetailsE(ptr dead_on_unwind noalias nofree readnone sret(%"class.v8::internal::compiler::PropertyAccessInfo") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i64 %5, i8 noundef zeroext %6, i32 %7) local_unnamed_addr #8 align 2 !guid !150 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler17AccessInfoFactory22TryLoadPropertyDetailsENS1_6MapRefENS1_11OptionalRefINS1_11JSObjectRefEEENS1_7NameRefEPNS0_13InternalIndexEPNS0_15PropertyDetailsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 !guid !153 {
bb.a:
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 3 uses
  %8 = alloca %"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::JSObjectRef>::ArrowOperatorHelper", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::compiler::DescriptorArrayRef", align 8 ; 4 uses
  store ptr %1, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  %i.a = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef17is_dictionary_mapEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #22
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %_ZNK2v88internal8compiler11OptionalRefINS1_11JSObjectRefEEptEv.exit

_ZNK2v88internal8compiler11OptionalRefINS1_11JSObjectRefEEptEv.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %2, ptr %8, align 8
  %i.b = call ptr @_ZNK2v88internal8compiler11JSObjectRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

bb.c:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_11JSObjectRefEEptEv.exit
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1336
  %i.m = load i64, ptr %i.l, align 8
  br label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit: ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_11JSObjectRefEEptEv.exit, %bb.c
  %.sroa.05.0.i.i = phi i64 [ %i.m, %bb.c ], [ %i.f, %_ZNK2v88internal8compiler11OptionalRefINS1_11JSObjectRefEEptEv.exit ]
  %i.n = add i64 %.sroa.05.0.i.i, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call ptr @_ZNK2v88internal8compiler7NameRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 648
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load atomic i32, ptr %i.w acquire, align 4 ; 3 uses
  %i.y = and i32 %i.x, 1
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.d, !prof !50

bb.d:                                             ; preds = %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit
  %i.aa = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.v, i32 noundef %i.x)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.d, %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit
  %.0.in.i.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.x, %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = load i64, ptr %i.s, align 8             ; 2 uses
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %.sroa.06.0.in32.i.i = and i32 %i.ag, %.0.i.i.i ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64 ; 2 uses
  %i.ai = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.ai, 25769803776
  %i.aj = ashr exact i64 %sext.i34.i.i, 29
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.af
  br i1 %i.am, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.an = load i64, ptr %i.r, align 8             ; 2 uses
  %.not.i9.i = icmp eq i64 %i.an, %i.al
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ao = add i32 %.035.i11.i, 1
  %.not.i.i = icmp eq i64 %i.an, %i.at
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !151

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.e
  %.035.i11.i = phi i32 [ %i.ao, %bb.e ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i10.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.e ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.ap = add i32 %.sroa.06.0.in37.i10.i, %.035.i11.i
  %.sroa.06.0.in.i.i = and i32 %i.ap, %i.ag       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.aq = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.aq, 25769803776
  %i.ar = ashr exact i64 %sext.i.i.i, 29
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 %i.ar
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.af
  br i1 %i.au, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.e, !llvm.loop !151

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit, !llvm.loop !151

_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit: ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i
  store i64 -1, ptr %4, align 8
  br label %.thread

.loopexit:                                        ; preds = %bb.e, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %i.aq, %bb.e ]
  %.sroa.017.131.i.i.ph = phi i64 [ %.sroa.06.033.i.i, %.lr.ph.i.i ], [ %.sroa.06.0.i.i, %bb.e ]
  store i64 %.sroa.017.131.i.i.ph, ptr %4, align 8
  %sext.i.i = add i64 %.pre-phi, 34359738368
  %i.av = ashr exact i64 %sext.i.i, 29
  %i.aw = getelementptr inbounds i8, ptr %i.ah, i64 %i.av
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32
  store i32 %i.az, ptr %5, align 4
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.ba = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #22
  %i.bb = and i16 %i.ba, -2
  %i.bc = icmp eq i16 %i.bb, 300
  br i1 %i.bc, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bd = load ptr, ptr %0, align 8
  %i.be = call ptr @_ZNK2v88internal8compiler6MapRef20instance_descriptorsEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.bd) #22
  store ptr %i.be, ptr %9, align 8
  %i.bf = call ptr @_ZNK2v88internal8compiler18DescriptorArrayRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #22
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bh = call ptr @_ZNK2v88internal8compiler7NameRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #22
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, 15
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i32, ptr %i.bm acquire, align 4
  %i.bo = lshr i32 %i.bn, 10
  %i.bp = and i32 %i.bo, 1023                     ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEENS2_INS0_3MapEEEb.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.br = add i64 %i.bg, -1
  %wide.trip.count = zext nneg i32 %i.bp to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEENS2_INS0_3MapEEEb.exit.thread, label %bb.i, !llvm.loop !152

bb.i:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.bs = mul i64 %indvars.iv, 103079215104
  %sext.i.i20 = add i64 %i.bs, 137438953472
  %10 = ashr exact i64 %sext.i.i20, 32            ; 2 uses
  %i.bt = add i64 %i.br, %10
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = icmp eq i64 %i.bv, %i.bi
  br i1 %i.bw, label %bb.j, label %bb.h

_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEENS2_INS0_3MapEEEb.exit.thread: ; preds = %bb.h, %bb.g
  store i64 -1, ptr %4, align 8
  br label %.thread

bb.j:                                             ; preds = %bb.i
  store i64 %indvars.iv, ptr %4, align 8
  %i.bx = add i64 %i.bg, 7
  %i.by = add i64 %i.bx, %10
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i64, ptr %i.bz monotonic, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  store i32 %i.cc, ptr %5, align 4
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEENS2_INS0_3MapEEEb.exit.thread, %bb.j, %.loopexit, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit, %bb.b, %bb.f
  %.1 = phi i1 [ true, %bb.f ], [ false, %bb.b ], [ true, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit ], [ true, %.loopexit ], [ true, %bb.j ], [ true, %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEENS2_INS0_3MapEEEb.exit.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler17AccessInfoFactory25ComputePropertyAccessInfoENS1_6MapRefENS1_7NameRefENS1_10AccessModeE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::PropertyAccessInfo") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, ptr %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 !guid !199 {
bb.a:
  %5 = alloca %class.anon.791, align 8            ; 5 uses
  %6 = alloca %"struct.std::pair", align 8        ; 5 uses
  %7 = alloca %class.anon.791, align 8            ; 5 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 15 uses
  %9 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 14 uses
  %10 = alloca %"class.v8::internal::compiler::JSHeapBroker::MapUpdaterGuardIfNeeded", align 8 ; 7 uses
  %11 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 12 uses
  %12 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::JSFunctionRef>::ArrowOperatorHelper", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::PropertyDetails", align 4 ; 11 uses
  %15 = alloca %"class.v8::internal::InternalIndex", align 8 ; 10 uses
  %16 = alloca %"class.v8::internal::compiler::StringRef", align 8 ; 6 uses
  %17 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 9 uses
  %18 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 8 uses
  %19 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %i.a = call noundef zeroext i1 @_ZNK2v88internal8compiler7NameRef12IsUniqueNameEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #22
  br i1 %i.a, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %.not.i, label %bb.d, label %_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 63936
  %i.f = load ptr, ptr %i.e, align 8
  br label %_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit

_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit: ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8552 ; 2 uses
  store ptr %i.h, ptr %10, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = load i32, ptr %i.h, align 8              ; 2 uses
  store i32 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.l = icmp eq i32 %i.j, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr null, ptr %i.k, align 8
  br i1 %i.l, label %bb.e, label %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 58720 ; 2 uses
  store ptr %i.n, ptr %i.k, align 8
  %i.o = call noundef zeroext i1 @_ZN2v84base5Mutex7TryLockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #22
  br i1 %i.o, label %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !52, !noundef !53
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN2v88internal4Heap5stackEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.s) #22 ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.m, ptr %7, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.k, ptr %i.u, align 8
  call void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull %7, ptr noundef nonnull @_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_18ParkedMutexGuardIfC1EPS5_PNS3_4base5MutexEbEUlvE_EEvT_EUlvE_EEvPS1_PvPKv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit

bb.h:                                             ; preds = %bb.f
  %i.v = call noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.m, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 %i.v, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.x, align 8
  call void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull %6, ptr noundef nonnull @_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_18ParkedMutexGuardIfC1EPS5_PNS3_4base5MutexEbEUlvE_EEvT_EUlvE_EEvPS1_PvPKv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit

_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit: ; preds = %bb.h, %bb.g, %_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit, %bb.e
  %i.y = load ptr, ptr %10, align 8               ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = icmp ne i8 %4, 3                        ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit
  %i.ac = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #22
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp ugt i16 %i.ag, 299
  br i1 %i.ah, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %.sroa.057.0.copyload82 = load ptr, ptr %8, align 8
  %i.ai = call fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_123CanInlinePropertyAccessENS1_6MapRefENS1_10AccessModeE(ptr %.sroa.057.0.copyload82)
  br i1 %i.ai, label %.thread, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !200 ; 2 uses
  store i32 0, ptr %0, align 8, !alias.scope !201
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !201
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, i8 0, i64 48, i1 false), !alias.scope !201
  store ptr %i.ak, ptr %i.an, align 8, !alias.scope !201
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ao, i8 0, i64 41, i1 false), !alias.scope !201
  store i64 1, ptr %i.ap, align 8, !alias.scope !201
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !alias.scope !201
  store i64 -1, ptr %i.ar, align 8, !alias.scope !201
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.as, align 8, !alias.scope !201
  br label %.critedge88

bb.k:                                             ; preds = %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit
  %.sroa.057.0.copyload83 = load ptr, ptr %8, align 8
  %i.at = call fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_123CanInlinePropertyAccessENS1_6MapRefENS1_10AccessModeE(ptr %.sroa.057.0.copyload83)
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !202 ; 2 uses
  store i32 0, ptr %0, align 8, !alias.scope !203
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !203
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i8 0, i64 48, i1 false), !alias.scope !203
  store ptr %i.av, ptr %i.ay, align 8, !alias.scope !203
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.az, i8 0, i64 41, i1 false), !alias.scope !203
  store i64 1, ptr %i.ba, align 8, !alias.scope !203
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false), !alias.scope !203
  store i64 -1, ptr %i.bc, align 8, !alias.scope !203
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.bd, align 8, !alias.scope !203
  br label %.critedge88

bb.m:                                             ; preds = %bb.k
  %i.be = icmp eq i8 %4, 0
  br i1 %i.be, label %.thread, label %bb.n

.thread:                                          ; preds = %.split, %bb.m
  %.sroa.055.0.copyload = load ptr, ptr %8, align 8
  %.sroa.054.0.copyload = load ptr, ptr %9, align 8
  call void @_ZNK2v88internal8compiler17AccessInfoFactory26LookupSpecialFieldAccessorENS1_6MapRefENS1_7NameRefE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::PropertyAccessInfo") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.055.0.copyload, ptr %.sroa.054.0.copyload)
  %i.bf = load i32, ptr %0, align 8
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %.critedge88

bb.n:                                             ; preds = %bb.m, %.thread
  %i.bh = phi i1 [ false, %bb.m ], [ %i.ab, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.bi = load i64, ptr %8, align 8
  store i64 %i.bi, ptr %11, align 8
  %i.bj = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsPrimitiveMapEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #22
  br i1 %i.bj, label %bb.o, label %._crit_edge166

._crit_edge166:                                   ; preds = %bb.n
  %.sroa.048.0.copyload148.pre = load ptr, ptr %8, align 8
  br label %bb.r
end_hunk_0
