inline.NumInlined: 1050
inline.NumDeleted: 477
begin_hunk_0_@_ZN2v88internalL12ResizeHelperENS0_16BuiltinArgumentsEPNS0_7IsolateEPKcb:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.ea = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.ea, ptr %8, align 8
  %i.eb = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 262, ptr nonnull %8, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ec, ptr noundef null) #16
  br label %.critedge152

bb.ae:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ef = load i64, ptr %i.ee, align 8
  br label %.critedge152

bb.af:                                            ; preds = %bb.x
  br i1 %4, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.eg = load i64, ptr %i.l, align 8
  store i64 %i.eg, ptr %21, align 8
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.532") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %i.eh = load ptr, ptr %20, align 8
  %i.ei = call noundef i32 @_ZN2v88internal12BackingStore13ResizeInPlaceEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(58) %i.eh, ptr noundef nonnull %2, i64 noundef %.0.ph) #16
  %.not = icmp eq i32 %i.ei, 0
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %i.ej, ptr %7, align 8
  %i.ek = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 262, ptr nonnull %7, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.el, ptr noundef null) #16
  br label %.critedge152

bb.ai:                                            ; preds = %bb.ag
  %i.en = load i64, ptr %i.l, align 8             ; 3 uses
  %i.eo = add i64 %i.en, 39
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = icmp ult i64 %.0.ph, %i.eq
  br i1 %i.er, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 9176
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = add i64 %i.et, 23
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = and i64 %i.ew, -4294967295
  %i.ey = icmp eq i64 %i.ex, 4294967296
  br i1 %i.ey, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN2v88internal10Protectors30InvalidateArrayBufferDetachingEPNS0_7IsolateE(ptr noundef nonnull %2) #16
  %.pre = load i64, ptr %i.l, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %i.ez = phi i64 [ %i.en, %bb.aj ], [ %.pre, %bb.ak ], [ %i.en, %bb.ai ]
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.fb = add i64 %i.ez, 63
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load atomic volatile i64, ptr %i.fc acquire, align 8
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load i64, ptr %i.l, align 8
  %i.fg = add i64 %i.ff, 39
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = sub i64 %.0.ph, %i.fi
  call void @_ZN2v88internal4Heap26ResizeArrayBufferExtensionEPNS0_20ArrayBufferExtensionEl(ptr noundef nonnull align 8 dereferenceable(2992) %i.fa, ptr noundef %i.fe, i64 noundef %i.fj) #16
  %i.fk = load i64, ptr %i.l, align 8
  %i.fl = add i64 %i.fk, 39
  %i.fm = inttoptr i64 %i.fl to ptr
  store i64 %.0.ph, ptr %i.fm, align 8
  br label %bb.ar

bb.am:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.fn = load i64, ptr %i.l, align 8
  store i64 %i.fn, ptr %23, align 8
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.532") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %23)
  %i.fo = load ptr, ptr %22, align 8
  %i.fp = call noundef i32 @_ZN2v88internal12BackingStore11GrowInPlaceEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(58) %i.fo, ptr noundef nonnull %2, i64 noundef %.0.ph) #16
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  switch i32 %i.fp, label %bb.ap [
    i32 1, label %bb.an
    i32 2, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.fq = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.fq, ptr %6, align 8
  %i.fr = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 262, ptr nonnull %6, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.fs, ptr noundef null) #16
  br label %.critedge152

bb.ao:                                            ; preds = %bb.am
  %i.fu = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.fu, ptr %5, align 8
  %i.fv = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 235, ptr nonnull %5, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.fw, ptr noundef null) #16
  br label %.critedge152

bb.ap:                                            ; preds = %bb.am
  %i.fy = load i64, ptr %i.l, align 8
  %i.fz = add i64 %i.fy, 39
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.ar, label %bb.aq, !prof !6

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #15
  unreachable

bb.ar:                                            ; preds = %bb.ap, %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ge = load i64, ptr %i.gd, align 8
  br label %.critedge152

.critedge152:                                     ; preds = %bb.ad, %bb.ae, %bb.an, %bb.ao, %bb.z, %bb.ar, %bb.ah
  %.sroa.0253.1 = phi i64 [ %i.em, %bb.ah ], [ %i.di, %bb.z ], [ %i.ge, %bb.ar ], [ %i.ft, %bb.an ], [ %i.fx, %bb.ao ], [ %i.ed, %bb.ad ], [ %i.ef, %bb.ae ]
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.as

bb.as:                                            ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit156, %bb.m, %bb.k, %.critedge152, %bb.w, %bb.u, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit163, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit161, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit160
  %.sroa.0253.5 = phi i64 [ %i.ab, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit156 ], [ %i.ax, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit161 ], [ %i.am, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit160 ], [ %i.bg, %bb.k ], [ %i.bp, %bb.m ], [ %i.cn, %bb.u ], [ %i.cw, %bb.w ], [ %.sroa.0253.1, %.critedge152 ], [ %i.cg, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit163 ]
  store ptr %i.b, ptr %i.a, align 8
  %i.gf = load i32, ptr %i.e, align 8
  %i.gg = add nsw i32 %i.gf, -1
  store i32 %i.gg, ptr %i.e, align 8
  %i.gh = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.gh, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.at, !prof !6

bb.at:                                            ; preds = %bb.as
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #16
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.at, %bb.as
  ret i64 %.sroa.0253.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
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
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !12
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !12, !noundef !13
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #16
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #16
  %i.ap = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.as = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.as, %bb.f ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.sroa.0.0
}

declare noundef i32 @_ZN2v88internal16WasmMemoryObject4GrowEPNS0_7IsolateENS0_12DirectHandleIS1_EEj(ptr noundef, ptr, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal12BackingStore13ResizeInPlaceEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal10Protectors30InvalidateArrayBufferDetachingEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap26ResizeArrayBufferExtensionEPNS0_20ArrayBufferExtensionEl(ptr noundef nonnull align 8 dereferenceable(2992), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal12BackingStore11GrowInPlaceEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN2v88internal12_GLOBAL__N_119ArrayBufferTransferEPNS0_7IsolateENS0_12DirectHandleINS0_13JSArrayBufferEEENS4_INS0_6ObjectEEENS1_20PreserveResizabilityEPKc(ptr noundef %0, ptr %1, ptr %2, i32 noundef range(i32 0, 2) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %7 = alloca %"class.std::shared_ptr.532", align 8 ; 5 uses
  %8 = alloca [2 x %"class.v8::internal::DirectHandle.453"], align 8 ; 5 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.530", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.530", align 8 ; 6 uses
  %11 = alloca %"class.std::shared_ptr.532", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.530", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63808
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  %i.g = load i64, ptr %1, align 8                ; 3 uses
  %i.h = add i64 %i.g, 71
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = load atomic volatile i32, ptr %i.i monotonic, align 4
  %i.k = and i32 %i.j, 16
  %.not302 = icmp eq i32 %i.k, 0
  br i1 %.not302, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %i.m = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %4, i64 %i.l, i8 noundef zeroext 0) #16 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.m, ptr %8, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.o, align 8
  %i.p = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 80, ptr nonnull %8, i64 2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.q, ptr noundef null) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.s = load i64, ptr %2, align 8                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i64 %i.g, ptr %9, align 8
  %i.w = load atomic volatile i32, ptr %i.i monotonic, align 4
  %i.x = and i32 %i.w, 16
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load atomic volatile i32, ptr %i.i monotonic, align 4
  %i.z = and i32 %i.y, 32
  %.not1.i = icmp eq i32 %i.z, 0
  br i1 %.not1.i, label %.critedge.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.532") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.aa = load ptr, ptr %7, align 8               ; 2 uses
  %.not2.i = icmp eq ptr %i.aa, null
  br i1 %.not2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load atomic i64, ptr %i.ab seq_cst, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.ad = add i64 %i.g, 39
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  br label %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit

_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit: ; preds = %bb.i, %.critedge.i
  %.1.i = phi i64 [ %.0.i, %bb.i ], [ %i.af, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  %i.ag = and i64 %i.s, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.critedge100, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.j
  %i.ai = tail call ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %2) #16 ; 2 uses
  %.not303 = icmp eq ptr %i.ai, null
  br i1 %.not303, label %bb.k, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge100_crit_edge

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge100_crit_edge: ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.ai, align 8
  br label %.critedge100

end_hunk_0
