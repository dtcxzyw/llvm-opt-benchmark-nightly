inline.NumInlined: 6065
inline.NumDeleted: 2754
begin_hunk_0_@_ZN2v88internal4wasm15InstanceBuilder10ImportNameB5cxx11Ej:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 16, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %3, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, ptr noundef nonnull %i.w) #22
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.215, i64 noundef 8) #22 ; 0 uses
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.d) #22
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.216, i64 noundef 2) #22 ; 0 uses
  %i.ak = load i32, ptr %i.f, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.am, i64 noundef %i.ap) #22 ; 0 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.221, i64 noundef 3) #22 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.av, i64 noundef %i.ay) #22 ; 0 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.217, i64 noundef 1) #22 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bb, ptr %0, align 8, !alias.scope !105
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bc, align 8, !alias.scope !105
  store i8 0, ptr %i.bb, align 8, !alias.scope !105
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !105 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !105 ; 2 uses
  %i.bh = icmp ugt ptr %i.be, %i.bg
  %.08.i.i.i = select i1 %i.bh, ptr %i.be, ptr %i.bg ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !105 ; 2 uses
  %i.bk = ptrtoint ptr %.08.i.i.i to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bj, i64 noundef %i.bm) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.bo = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bo, ptr %3, align 8
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %3, i64 %i.br
  store ptr %i.bp, ptr %i.bs, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.bt = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ab
  br i1 %i.bu, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bv = load i64, ptr %i.ab, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal4wasm15InstanceBuilder15LookupImportAsmEjNS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.a = load ptr, ptr %0, align 8
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.a, ptr %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.227) #23
  unreachable

_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %7, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef %i.e, ptr nonnull %i.c, ptr %.sroa.0.0.copyload.i.i, i64 noundef %i.g, ptr nonnull %i.c, i32 noundef 3)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.i = load i32, ptr %i.h, align 4
  switch i32 %i.i, label %bb.y [
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 8, label %bb.c
    i32 6, label %bb.c
    i32 9, label %bb.c
    i32 0, label %bb.d
    i32 7, label %bb.e
    i32 1, label %bb.x
  ]

bb.c:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN2v88internal4wasm15InstanceBuilder10ImportNameB5cxx11EjNS0_12DirectHandleINS0_6StringEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %1, ptr %2)
  %i.l = load ptr, ptr %9, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9LinkErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull @.str.17, ptr noundef %i.l) #22
  %i.m = load ptr, ptr %9, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.d:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 648
  br label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.e:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit
  %i.t = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %8, i32 noundef 0) #22 ; 9 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.e
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = add i16 %i.ab, -2065
  %i.ad = icmp ult i16 %i.ac, 17
  br i1 %i.ad, label %bb.f, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.f:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 320
  %i.ah = zext i32 %1 to i64
  %i.ai = load ptr, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = icmp eq i8 %i.al, 3
  br i1 %i.am, label %bb.g, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %0, align 8               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8888 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = add i64 %i.as, 11
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i16, ptr %i.au monotonic, align 2
  %i.aw = icmp eq i16 %i.av, 128
  br i1 %i.aw, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.g
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ba = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ba, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.an, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.t, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bl = ptrtoint ptr %i.t to i64                ; 3 uses
  store i64 %i.bl, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 -1, i64 16, i1 false)
  %i.bn = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.bo = add i64 %i.bn, 11
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i16, ptr %i.bp monotonic, align 2
  %i.br = and i16 %i.bq, -96
  %.not.i21.i.i.i = icmp eq i16 %i.br, 32
  br i1 %.not.i21.i.i.i, label %bb.h, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.h:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 55448
  %i.bv = load i8, ptr %i.bu, align 8, !range !7
  %i.bw = trunc nuw i8 %i.bv to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bt, true
  %i.bx = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bw
  br i1 %i.bx, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 64088
  %i.bz = load i8, ptr %i.by, align 8, !range !7, !noundef !8
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 64080
  %i.cc = load ptr, ptr %i.cb, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.h
  %.pn.i.i26.i.i.i = phi ptr [ %i.cc, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.an, %bb.h ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.cd = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ce = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr nonnull %i.ao) #22
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ce, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ao, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.bg, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #22
  %i.cf = load i32, ptr %i.bb, align 4
  %.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 8840 ; 4 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr               ; 3 uses
  %i.ck = load atomic volatile i64, ptr %i.cj monotonic, align 8
  %i.cl = add i64 %i.ck, 11
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load atomic volatile i16, ptr %i.cm monotonic, align 2
  %i.co = icmp eq i16 %i.cn, 128
  br i1 %i.co, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i39.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i30.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i39.i:  ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = trunc i32 %i.cq to i1
  br i1 %i.cr, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i31.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i30.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i30.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i39.i, %bb.k
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i31.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i31.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i30.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i39.i
  %i.cs = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i30.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i39.i ]
  store i32 %i.cs, ptr %4, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.an, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.cg, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.t, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.bl, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 -1, i64 16, i1 false)
  %i.de = load atomic volatile i64, ptr %i.cj monotonic, align 8
  %i.df = add i64 %i.de, 11
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load atomic volatile i16, ptr %i.dg monotonic, align 2
  %i.di = and i16 %i.dh, -96
  %.not.i21.i.i32.i = icmp eq i16 %i.di, 32
  br i1 %.not.i21.i.i32.i, label %bb.l, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit40.i

bb.l:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i31.i
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.an, i64 55448
  %i.dm = load i8, ptr %i.dl, align 8, !range !7
  %i.dn = trunc nuw i8 %i.dm to i1
  %not..i.i.i23.i.i34.i = xor i1 %i.dk, true
  %i.do = select i1 %not..i.i.i23.i.i34.i, i1 true, i1 %i.dn
  br i1 %i.do, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i36.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %i.an, i64 64088
  %i.dq = load i8, ptr %i.dp, align 8, !range !7, !noundef !8
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i35.i: ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %i.an, i64 64080
  %i.dt = load ptr, ptr %i.ds, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i36.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i36.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i35.i, %bb.l
  %.pn.i.i26.i.i37.i = phi ptr [ %i.dt, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i35.i ], [ %i.an, %bb.l ]
  %.in.i.i27.i.i38.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i37.i, i64 58464
  %i.du = load ptr, ptr %.in.i.i27.i.i38.i, align 8
  %i.dv = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr nonnull %i.cg) #22
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit40.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit40.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i36.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i31.i
  %.sroa.05.0.i22.i.i33.i = phi ptr [ %i.dv, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i36.i ], [ %i.cg, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i31.i ]
  store ptr %.sroa.05.0.i22.i.i33.i, ptr %i.cy, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #22
  %i.dw = load i32, ptr %i.ct, align 4
  %.not24.i = icmp eq i32 %i.dw, 7
  br i1 %.not24.i, label %bb.o, label %.sink.split.sink.split

bb.o:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit40.i
  %i.dx = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef 0) #22
  %i.dy = load i64, ptr %i.dx, align 8            ; 3 uses
  %i.dz = trunc i64 %i.dy to i1
  br i1 %i.dz, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit29.i, label %.sink.split.sink.split

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit29.i: ; preds = %bb.o
  %i.ea = add nsw i64 %i.dy, -1
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = add i16 %i.ef, -2065
  %i.eh = icmp ult i16 %i.eg, 17
  br i1 %i.eh, label %bb.p, label %.sink.split.sink.split

bb.p:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit29.i
  %i.ei = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 10688
  %i.ek = add i64 %i.dy, 23
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = load atomic volatile i32, ptr %i.el monotonic, align 4
  %i.en = lshr i32 %i.em, 8
  %i.eo = load ptr, ptr %i.ej, align 8
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.ep ; 2 uses
  %i.er = load atomic i64, ptr %i.eq monotonic, align 8
  %i.es = icmp ugt i64 %i.er, -281474976710657
  br i1 %i.es, label %bb.q, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i, !prof !5

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.222) #23
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i: ; preds = %bb.p
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.eu = load atomic i64, ptr %i.et monotonic, align 8
  %i.ev = lshr i64 %i.eu, 16
  %i.ew = or i64 %i.ev, 1
  %i.ex = add nuw nsw i64 %i.ew, 89
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load i16, ptr %i.ey, align 2
  %.not25.i = icmp eq i16 %i.ez, 1107
  br i1 %.not25.i, label %bb.r, label %.sink.split.sink.split

bb.r:                                             ; preds = %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.fa = getelementptr inbounds nuw i8, ptr %i.an, i64 7624 ; 4 uses
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = add i64 %i.fb, -1
  %i.fd = inttoptr i64 %i.fc to ptr               ; 3 uses
  %i.fe = load atomic volatile i64, ptr %i.fd monotonic, align 8
  %i.ff = add i64 %i.fe, 11
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load atomic volatile i16, ptr %i.fg monotonic, align 2
  %i.fi = icmp eq i16 %i.fh, 128
  br i1 %i.fi, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i50.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i41.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i50.i:  ; preds = %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = trunc i32 %i.fk to i1
  br i1 %i.fl, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i42.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i41.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i41.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i50.i, %bb.r
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i42.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i42.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i41.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i50.i
  %i.fm = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i41.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i50.i ]
  store i32 %i.fm, ptr %5, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.fn, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.an, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.fa, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.t, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.bl, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 -1, i64 16, i1 false)
  %i.fy = load atomic volatile i64, ptr %i.fd monotonic, align 8
  %i.fz = add i64 %i.fy, 11
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load atomic volatile i16, ptr %i.ga monotonic, align 2
  %i.gc = and i16 %i.gb, -96
  %.not.i21.i.i43.i = icmp eq i16 %i.gc, 32
  br i1 %.not.i21.i.i43.i, label %bb.s, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit51.i

bb.s:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i42.i
  %i.gd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.an, i64 55448
  %i.gg = load i8, ptr %i.gf, align 8, !range !7
  %i.gh = trunc nuw i8 %i.gg to i1
  %not..i.i.i23.i.i45.i = xor i1 %i.ge, true
  %i.gi = select i1 %not..i.i.i23.i.i45.i, i1 true, i1 %i.gh
  br i1 %i.gi, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i47.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %i.an, i64 64088
  %i.gk = load i8, ptr %i.gj, align 8, !range !7, !noundef !8
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i46.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i46.i: ; preds = %bb.t
  %i.gm = getelementptr inbounds nuw i8, ptr %i.an, i64 64080
  %i.gn = load ptr, ptr %i.gm, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i47.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i47.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i46.i, %bb.s
  %.pn.i.i26.i.i48.i = phi ptr [ %i.gn, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i46.i ], [ %i.an, %bb.s ]
  %.in.i.i27.i.i49.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i48.i, i64 58464
  %i.go = load ptr, ptr %.in.i.i27.i.i49.i, align 8
  %i.gp = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr nonnull %i.fa) #22
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit51.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit51.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i47.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i42.i
  %.sroa.05.0.i22.i.i44.i = phi ptr [ %i.gp, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i47.i ], [ %i.fa, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i42.i ]
  store ptr %.sroa.05.0.i22.i.i44.i, ptr %i.fs, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #22
  %i.gq = load i32, ptr %i.fn, align 4
  %.not26.i = icmp eq i32 %i.gq, 7
  br i1 %.not26.i, label %bb.v, label %_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit.thread38

bb.v:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit51.i
  %i.gr = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #22
  %i.gs = load i64, ptr %i.gr, align 8            ; 3 uses
  %i.gt = trunc i64 %i.gs to i1
  br i1 %i.gt, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit.thread38

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.v
  %i.gu = add nsw i64 %i.gs, -1
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = load atomic volatile i64, ptr %i.gv monotonic, align 8
  %i.gx = add i64 %i.gw, 11
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load atomic volatile i16, ptr %i.gy monotonic, align 2
  %i.ha = add i16 %i.gz, -2065
  %i.hb = icmp ult i16 %i.ha, 17
  br i1 %i.hb, label %_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit, label %_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit.thread38

_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit.thread38: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit51.i, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.sink.split.sink.split

_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i64 %i.gs, ptr %6, align 8
  %i.hc = call i64 @_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.hd = add i64 %i.hc, 89
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = load i16, ptr %i.he, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.not27.i = icmp eq i16 %i.hf, 389
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.not27.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.w

.sink.split.sink.split:                           ; preds = %bb.o, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit29.i, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit40.i, %_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit.thread38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hh = load ptr, ptr %i.hg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN2v88internal4wasm15InstanceBuilder10ImportNameB5cxx11EjNS0_12DirectHandleINS0_6StringEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %1, ptr %2)
  %i.hi = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9LinkErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.hh, ptr noundef nonnull @.str.18, ptr noundef %i.hi) #22
  %i.hj = load ptr, ptr %10, align 8              ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.w
  %i.hm = load i64, ptr %i.hk, align 8
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.x:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #23
  unreachable

bb.y:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE5CheckEv.exit
  unreachable

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit, %bb.f, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.021.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %bb.d ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.t, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.t, %_ZN2v88internal4wasm12_GLOBAL__N_127HasDefaultToNumberBehaviourEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE.exit ], [ %i.t, %bb.f ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret ptr %.sroa.021.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ult i16 %i.h, 128
  br i1 %i.i, label %bb.b, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8 ; 4 uses
  %i.l = and i32 %i.k, -536870909
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10624
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 8, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 55464
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, -55464
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 648
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.z, %bb.f ], [ %i.s, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1432
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = lshr exact i32 %i.k, 2
  %i.af = and i32 %i.ae, 16777215                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = lshr i32 %i.af, 12
end_hunk_0
