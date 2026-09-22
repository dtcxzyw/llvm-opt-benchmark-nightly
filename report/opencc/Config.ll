Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Config?download=true
inline.NumInlined: 5017
inline.NumDeleted: 1341
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEeqIS5_EEbRKNS0_IS2_T_EE:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.ee = load i32, ptr %1, align 8, !tbaa !60
  %i.ef = sitofp i32 %i.ee to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit38

bb.ab:                                            ; preds = %bb.z
  %i.eg = and i32 %i.ea, 64
  %.not3.i36 = icmp eq i32 %i.eg, 0
  br i1 %.not3.i36, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = load i32, ptr %1, align 8, !tbaa !60
  %i.ei = uitofp i32 %i.eh to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit38

bb.ad:                                            ; preds = %bb.ab
  %i.ej = and i32 %i.ea, 128
  %.not4.i37 = icmp eq i32 %i.ej, 0
  %i.ek = load i64, ptr %1, align 8, !tbaa !60    ; 2 uses
  br i1 %.not4.i37, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = sitofp i64 %i.ek to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit38

bb.af:                                            ; preds = %bb.ad
  %i.em = uitofp i64 %i.ek to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit38

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit38: ; preds = %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.af
  %.0.i34 = phi double [ %i.ec, %bb.y ], [ %i.ef, %bb.aa ], [ %i.ei, %bb.ac ], [ %i.el, %bb.ae ], [ %i.em, %bb.af ]
  %i.en = fcmp oeq double %.0.i, %.0.i34
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit

bb.ag:                                            ; preds = %bb.o
  %i.eo = load i64, ptr %0, align 8, !tbaa !60
  %i.ep = load i64, ptr %1, align 8, !tbaa !60
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit: ; preds = %bb.k, %bb.j, %.critedge29, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EENS_21GenericMemberIteratorILb1ES2_S5_EERKNS0_IS2_T_EE.exit, %bb.e, %.preheader, %bb.d, %bb.n, %bb.m, %bb.l, %bb.b, %bb.i, %bb.c, %bb.a, %bb.ag, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit38
  %.4 = phi i1 [ %i.eq, %bb.ag ], [ %i.en, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit38 ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.m ], [ false, %bb.i ], [ true, %.preheader ], [ false, %bb.l ], [ %i.dk, %bb.n ], [ true, %bb.d ], [ true, %bb.e ], [ false, %.critedge29 ], [ false, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EENS_21GenericMemberIteratorILb1ES2_S5_EERKNS0_IS2_T_EE.exit ], [ %i.ch, %bb.j ], [ %i.ch, %bb.k ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEv() local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !200

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v, i64 14), align 2, !tbaa !60
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v, i64 8), align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -281474976710656
  %i.g = or i64 %i.f, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1s to i64)
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 6, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v, align 8, !tbaa !60
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetNumberStringEvE1v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6DoubleEd(ptr noundef nonnull align 8 dereferenceable(48) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit, !prof !76

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !360
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.j = bitcast double %1 to i64                 ; 8 uses
  %.sroa.11.15.extract.shift = lshr i64 %i.j, 56
  %.sroa.11.14.extract.shift = lshr i64 %i.j, 48
  %.sroa.11.13.extract.shift = lshr i64 %i.j, 40
  %.sroa.11.12.extract.shift = lshr i64 %i.j, 32
  %.sroa.11.11.extract.shift = lshr i64 %i.j, 24
  %.sroa.11.10.extract.shift = lshr i64 %i.j, 16
  %.sroa.11.9.extract.shift = lshr i64 %i.j, 8
  %i.k = fcmp olt double %1, 0.000000e+00
  %i.l = fptosi double %1 to i64
  %i.m = fptoui double %1 to i64
  %storemerge = select i1 %i.k, i64 %i.l, i64 %i.m ; 8 uses
  %.sroa.0.7.extract.shift = lshr i64 %storemerge, 56
  %.sroa.0.6.extract.shift = lshr i64 %storemerge, 48
  %.sroa.0.5.extract.shift = lshr i64 %storemerge, 40
  %.sroa.0.4.extract.shift = lshr i64 %storemerge, 32
  %.sroa.0.3.extract.shift = lshr i64 %storemerge, 24
  %.sroa.0.2.extract.shift = lshr i64 %storemerge, 16
  %.sroa.0.1.extract.shift = lshr i64 %storemerge, 8
  %i.n = and i64 %storemerge, 255
  %i.o = xor i64 %i.n, -5808593157037640583
  %.09.i.i = mul i64 %i.o, 1099511628211
  %i.p = and i64 %.sroa.0.1.extract.shift, 255
  %i.q = xor i64 %.09.i.i, %i.p
  %.09.i.1.i = mul i64 %i.q, 1099511628211
  %i.r = and i64 %.sroa.0.2.extract.shift, 255
  %i.s = xor i64 %.09.i.1.i, %i.r
  %.09.i.2.i = mul i64 %i.s, 1099511628211
  %i.t = and i64 %.sroa.0.3.extract.shift, 255
  %i.u = xor i64 %.09.i.2.i, %i.t
  %.09.i.3.i = mul i64 %i.u, 1099511628211
  %i.v = and i64 %.sroa.0.4.extract.shift, 255
  %i.w = xor i64 %.09.i.3.i, %i.v
  %.09.i.4.i = mul i64 %i.w, 1099511628211
  %i.x = and i64 %.sroa.0.5.extract.shift, 255
  %i.y = xor i64 %.09.i.4.i, %i.x
  %.09.i.5.i = mul i64 %i.y, 1099511628211
  %i.z = and i64 %.sroa.0.6.extract.shift, 255
  %i.aa = xor i64 %.09.i.5.i, %i.z
  %.09.i.6.i = mul i64 %i.aa, 1099511628211
  %i.ab = xor i64 %.09.i.6.i, %.sroa.0.7.extract.shift
  %.09.i.7.i = mul i64 %i.ab, 1099511628211
  %i.ac = and i64 %i.j, 255
  %i.ad = xor i64 %.09.i.7.i, %i.ac
  %.09.i.8.i = mul i64 %i.ad, 1099511628211
  %i.ae = and i64 %.sroa.11.9.extract.shift, 255
  %i.af = xor i64 %.09.i.8.i, %i.ae
  %.09.i.9.i = mul i64 %i.af, 1099511628211
  %i.ag = and i64 %.sroa.11.10.extract.shift, 255
  %i.ah = xor i64 %.09.i.9.i, %i.ag
  %.09.i.10.i = mul i64 %i.ah, 1099511628211
  %i.ai = and i64 %.sroa.11.11.extract.shift, 255
  %i.aj = xor i64 %.09.i.10.i, %i.ai
  %.09.i.11.i = mul i64 %i.aj, 1099511628211
  %i.ak = and i64 %.sroa.11.12.extract.shift, 255
  %i.al = xor i64 %.09.i.11.i, %i.ak
  %.09.i.12.i = mul i64 %i.al, 1099511628211
  %i.am = and i64 %.sroa.11.13.extract.shift, 255
  %i.an = xor i64 %.09.i.12.i, %i.am
  %.09.i.13.i = mul i64 %i.an, 1099511628211
  %i.ao = and i64 %.sroa.11.14.extract.shift, 255
  %i.ap = xor i64 %.09.i.13.i, %i.ao
  %.09.i.14.i = mul i64 %i.ap, 1099511628211
  %i.aq = xor i64 %.09.i.14.i, %.sroa.11.15.extract.shift
  %.09.i.15.i = mul i64 %i.aq, 1099511628211
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !360
  store i64 %.09.i.15.i, ptr %i.i, align 8, !tbaa !57
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE3IntEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit, !prof !76

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !360
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.j = sitofp i32 %1 to double
  %i.k = bitcast double %i.j to i64               ; 8 uses
  %.sroa.11.15.extract.shift = lshr i64 %i.k, 56
  %.sroa.11.14.extract.shift = lshr i64 %i.k, 48
  %.sroa.11.13.extract.shift = lshr i64 %i.k, 40
  %.sroa.11.12.extract.shift = lshr i64 %i.k, 32
  %.sroa.11.11.extract.shift = lshr i64 %i.k, 24
  %.sroa.11.10.extract.shift = lshr i64 %i.k, 16
  %.sroa.11.9.extract.shift = lshr i64 %i.k, 8
  %i.l = sext i32 %1 to i64                       ; 3 uses
  %.sroa.0.7.extract.shift = lshr i64 %i.l, 56
  %.sroa.0.6.extract.shift = lshr i64 %i.l, 48
  %.sroa.0.5.extract.shift = lshr i64 %i.l, 40
  %i.m = lshr i32 %1, 24
  %.sroa.0.3.extract.trunc = zext nneg i32 %i.m to i64
  %i.n = lshr i32 %1, 16
  %i.o = lshr i32 %1, 8
  %i.p = and i32 %1, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = xor i64 %i.q, -5808593157037640583
  %.09.i.i = mul i64 %i.r, 1099511628211
  %i.s = and i32 %i.o, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = xor i64 %.09.i.i, %i.t
  %.09.i.1.i = mul i64 %i.u, 1099511628211
  %i.v = and i32 %i.n, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = xor i64 %.09.i.1.i, %i.w
  %.09.i.2.i = mul i64 %i.x, 1099511628211
  %i.y = xor i64 %.09.i.2.i, %.sroa.0.3.extract.trunc
  %.09.i.3.i = mul i64 %i.y, 1099511628211
  %isneg = icmp slt i32 %1, 0
  %i.z = select i1 %isneg, i64 255, i64 0
  %i.aa = xor i64 %.09.i.3.i, %i.z
  %.09.i.4.i = mul i64 %i.aa, 1099511628211
  %i.ab = and i64 %.sroa.0.5.extract.shift, 255
  %i.ac = xor i64 %.09.i.4.i, %i.ab
  %.09.i.5.i = mul i64 %i.ac, 1099511628211
  %i.ad = and i64 %.sroa.0.6.extract.shift, 255
  %i.ae = xor i64 %.09.i.5.i, %i.ad
  %.09.i.6.i = mul i64 %i.ae, 1099511628211
  %i.af = xor i64 %.09.i.6.i, %.sroa.0.7.extract.shift
  %.09.i.7.i = mul i64 %i.af, 1099511628211
  %i.ag = and i64 %i.k, 255
  %i.ah = xor i64 %.09.i.7.i, %i.ag
  %.09.i.8.i = mul i64 %i.ah, 1099511628211
  %i.ai = and i64 %.sroa.11.9.extract.shift, 255
  %i.aj = xor i64 %.09.i.8.i, %i.ai
  %.09.i.9.i = mul i64 %i.aj, 1099511628211
  %i.ak = and i64 %.sroa.11.10.extract.shift, 255
  %i.al = xor i64 %.09.i.9.i, %i.ak
  %.09.i.10.i = mul i64 %i.al, 1099511628211
  %i.am = and i64 %.sroa.11.11.extract.shift, 255
  %i.an = xor i64 %.09.i.10.i, %i.am
  %.09.i.11.i = mul i64 %i.an, 1099511628211
  %i.ao = and i64 %.sroa.11.12.extract.shift, 255
  %i.ap = xor i64 %.09.i.11.i, %i.ao
  %.09.i.12.i = mul i64 %i.ap, 1099511628211
  %i.aq = and i64 %.sroa.11.13.extract.shift, 255
  %i.ar = xor i64 %.09.i.12.i, %i.aq
  %.09.i.13.i = mul i64 %i.ar, 1099511628211
  %i.as = and i64 %.sroa.11.14.extract.shift, 255
  %i.at = xor i64 %.09.i.13.i, %i.as
  %.09.i.14.i = mul i64 %i.at, 1099511628211
  %i.au = xor i64 %.09.i.14.i, %.sroa.11.15.extract.shift
  %.09.i.15.i = mul i64 %i.au, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.av, ptr %i.c, align 8, !tbaa !360
  store i64 %.09.i.15.i, ptr %i.i, align 8, !tbaa !57
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE4UintEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit, !prof !76

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !360
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.j = uitofp i32 %1 to double
  %i.k = bitcast double %i.j to i64               ; 8 uses
  %.sroa.11.15.extract.shift = lshr i64 %i.k, 56
  %.sroa.11.14.extract.shift = lshr i64 %i.k, 48
  %.sroa.11.13.extract.shift = lshr i64 %i.k, 40
  %.sroa.11.12.extract.shift = lshr i64 %i.k, 32
  %.sroa.11.11.extract.shift = lshr i64 %i.k, 24
  %.sroa.11.10.extract.shift = lshr i64 %i.k, 16
  %.sroa.11.9.extract.shift = lshr i64 %i.k, 8
  %i.l = zext i32 %1 to i64                       ; 3 uses
  %.sroa.0.3.extract.shift = lshr i64 %i.l, 24
  %.sroa.0.2.extract.shift = lshr i64 %i.l, 16
  %.sroa.0.1.extract.shift = lshr i64 %i.l, 8
  %i.m = and i32 %1, 255
  %i.n = zext nneg i32 %i.m to i64
  %i.o = xor i64 %i.n, -5808593157037640583
  %.09.i.i = mul i64 %i.o, 1099511628211
  %i.p = and i64 %.sroa.0.1.extract.shift, 255
  %i.q = xor i64 %.09.i.i, %i.p
  %.09.i.1.i = mul i64 %i.q, 1099511628211
  %i.r = and i64 %.sroa.0.2.extract.shift, 255
  %i.s = xor i64 %.09.i.1.i, %i.r
  %.09.i.2.i = mul i64 %i.s, 1099511628211
  %i.t = xor i64 %.09.i.2.i, %.sroa.0.3.extract.shift
  %.09.i.7.i = mul i64 %i.t, 913917546033277539
  %i.u = and i64 %i.k, 255
  %i.v = xor i64 %.09.i.7.i, %i.u
  %.09.i.8.i = mul i64 %i.v, 1099511628211
  %i.w = and i64 %.sroa.11.9.extract.shift, 255
  %i.x = xor i64 %.09.i.8.i, %i.w
  %.09.i.9.i = mul i64 %i.x, 1099511628211
  %i.y = and i64 %.sroa.11.10.extract.shift, 255
  %i.z = xor i64 %.09.i.9.i, %i.y
  %.09.i.10.i = mul i64 %i.z, 1099511628211
  %i.aa = and i64 %.sroa.11.11.extract.shift, 255
  %i.ab = xor i64 %.09.i.10.i, %i.aa
  %.09.i.11.i = mul i64 %i.ab, 1099511628211
  %i.ac = and i64 %.sroa.11.12.extract.shift, 255
  %i.ad = xor i64 %.09.i.11.i, %i.ac
  %.09.i.12.i = mul i64 %i.ad, 1099511628211
  %i.ae = and i64 %.sroa.11.13.extract.shift, 255
  %i.af = xor i64 %.09.i.12.i, %i.ae
  %.09.i.13.i = mul i64 %i.af, 1099511628211
  %i.ag = and i64 %.sroa.11.14.extract.shift, 255
  %i.ah = xor i64 %.09.i.13.i, %i.ag
  %.09.i.14.i = mul i64 %i.ah, 1099511628211
  %i.ai = xor i64 %.09.i.14.i, %.sroa.11.15.extract.shift
  %.09.i.15.i = mul i64 %i.ai, 1099511628211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !360
  store i64 %.09.i.15.i, ptr %i.i, align 8, !tbaa !57
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE5Int64El(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit, !prof !76

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !360
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11WriteNumberERKNS7_6NumberE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.j = sitofp i64 %1 to double
  %i.k = bitcast double %i.j to i64               ; 8 uses
  %.sroa.11.15.extract.shift = lshr i64 %i.k, 56
  %.sroa.11.14.extract.shift = lshr i64 %i.k, 48
  %.sroa.11.13.extract.shift = lshr i64 %i.k, 40
  %.sroa.11.12.extract.shift = lshr i64 %i.k, 32
  %.sroa.11.11.extract.shift = lshr i64 %i.k, 24
  %.sroa.11.10.extract.shift = lshr i64 %i.k, 16
  %.sroa.11.9.extract.shift = lshr i64 %i.k, 8
  %.sroa.0.7.extract.shift = lshr i64 %1, 56
  %.sroa.0.6.extract.shift = lshr i64 %1, 48
  %.sroa.0.5.extract.shift = lshr i64 %1, 40
  %.sroa.0.4.extract.shift = lshr i64 %1, 32
  %.sroa.0.3.extract.shift = lshr i64 %1, 24
  %.sroa.0.2.extract.shift = lshr i64 %1, 16
  %.sroa.0.1.extract.shift = lshr i64 %1, 8
  %i.l = and i64 %1, 255
  %i.m = xor i64 %i.l, -5808593157037640583
  %.09.i.i = mul i64 %i.m, 1099511628211
  %i.n = and i64 %.sroa.0.1.extract.shift, 255
  %i.o = xor i64 %.09.i.i, %i.n
  %.09.i.1.i = mul i64 %i.o, 1099511628211
  %i.p = and i64 %.sroa.0.2.extract.shift, 255
  %i.q = xor i64 %.09.i.1.i, %i.p
  %.09.i.2.i = mul i64 %i.q, 1099511628211
  %i.r = and i64 %.sroa.0.3.extract.shift, 255
  %i.s = xor i64 %.09.i.2.i, %i.r
  %.09.i.3.i = mul i64 %i.s, 1099511628211
  %i.t = and i64 %.sroa.0.4.extract.shift, 255
  %i.u = xor i64 %.09.i.3.i, %i.t
  %.09.i.4.i = mul i64 %i.u, 1099511628211
  %i.v = and i64 %.sroa.0.5.extract.shift, 255
  %i.w = xor i64 %.09.i.4.i, %i.v
  %.09.i.5.i = mul i64 %i.w, 1099511628211
  %i.x = and i64 %.sroa.0.6.extract.shift, 255
  %i.y = xor i64 %.09.i.5.i, %i.x
  %.09.i.6.i = mul i64 %i.y, 1099511628211
  %i.z = xor i64 %.09.i.6.i, %.sroa.0.7.extract.shift
  %.09.i.7.i = mul i64 %i.z, 1099511628211
  %i.aa = and i64 %i.k, 255
  %i.ab = xor i64 %.09.i.7.i, %i.aa
  %.09.i.8.i = mul i64 %i.ab, 1099511628211
  %i.ac = and i64 %.sroa.11.9.extract.shift, 255
  %i.ad = xor i64 %.09.i.8.i, %i.ac
  %.09.i.9.i = mul i64 %i.ad, 1099511628211
  %i.ae = and i64 %.sroa.11.10.extract.shift, 255
  %i.af = xor i64 %.09.i.9.i, %i.ae
  %.09.i.10.i = mul i64 %i.af, 1099511628211
  %i.ag = and i64 %.sroa.11.11.extract.shift, 255
  %i.ah = xor i64 %.09.i.10.i, %i.ag
  %.09.i.11.i = mul i64 %i.ah, 1099511628211
  %i.ai = and i64 %.sroa.11.12.extract.shift, 255
  %i.aj = xor i64 %.09.i.11.i, %i.ai
  %.09.i.12.i = mul i64 %i.aj, 1099511628211
  %i.ak = and i64 %.sroa.11.13.extract.shift, 255
  %i.al = xor i64 %.09.i.12.i, %i.ak
  %.09.i.13.i = mul i64 %i.al, 1099511628211
  %i.am = and i64 %.sroa.11.14.extract.shift, 255
  %i.an = xor i64 %.09.i.13.i, %i.am
  %.09.i.14.i = mul i64 %i.an, 1099511628211
  %i.ao = xor i64 %.09.i.14.i, %.sroa.11.15.extract.shift
  %.09.i.15.i = mul i64 %i.ao, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !360
end_hunk_0
begin_hunk_1_@_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE18CheckDoubleMaximumERNS0_23SchemaValidationContextISA_EEd:bb.a
  br i1 %.not4.i12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = sitofp i64 %i.ac to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit13

bb.s:                                             ; preds = %bb.q
  %i.ae = uitofp i64 %i.ac to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit13

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit13: ; preds = %bb.l, %bb.n, %bb.p, %bb.r, %bb.s
  %.0.i9 = phi double [ %i.u, %bb.l ], [ %i.x, %bb.n ], [ %i.aa, %bb.p ], [ %i.ad, %bb.r ], [ %i.ae, %bb.s ]
  %i.af = fcmp ogt double %2, %.0.i9
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit13, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !438, !nonnull !164, !align !306 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, double noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i1 noundef zeroext %i.c)
  %i.am = load i8, ptr %i.a, align 1, !tbaa !454, !range !163, !noundef !164
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = select i1 %i.an, i32 3, i32 2           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !439
  %i.aq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE(i32 noundef %i.ao) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !60
  %i.at = and i16 %i.as, 4096
  %.not.i.i = icmp eq i16 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 281474976710655
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = select i1 %.not.i.i, ptr %i.ay, ptr %i.aq
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !199
  br label %bb.u

bb.u:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit13, %bb.t
  %.0 = phi i1 [ false, %bb.t ], [ true, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit13 ], [ true, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21CheckDoubleMultipleOfERNS0_23SchemaValidationContextISA_EEd(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1, double noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 406
  %i.c = load i16, ptr %i.b, align 2, !tbaa !60
  %i.d = zext i16 %i.c to i32                     ; 4 uses
  %i.e = and i32 %i.d, 512
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load double, ptr %i.a, align 8, !tbaa !60
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 32
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.a, align 8, !tbaa !60
  %i.i = sitofp i32 %i.h to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit

bb.e:                                             ; preds = %bb.c
  %i.j = and i32 %i.d, 64
  %.not3.i = icmp eq i32 %i.j, 0
  br i1 %.not3.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.a, align 8, !tbaa !60
  %i.l = uitofp i32 %i.k to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit

bb.g:                                             ; preds = %bb.e
  %i.m = and i32 %i.d, 128
  %.not4.i = icmp eq i32 %i.m, 0
  %i.n = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = sitofp i64 %i.n to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit

bb.i:                                             ; preds = %bb.g
  %i.p = uitofp i64 %i.n to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.0.i = phi double [ %i.f, %bb.b ], [ %i.i, %bb.d ], [ %i.l, %bb.f ], [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  %i.q = fdiv double %2, %.0.i
  %i.r = tail call double @llvm.fabs.f64(double %i.q) ; 3 uses
  %i.s = fadd double %i.r, 5.000000e-01
  %i.t = tail call double @llvm.floor.f64(double %i.s) ; 2 uses
  %i.u = fadd double %i.r, %i.t
  %i.v = fmul double %i.u, f0x3CB0000000000000
  %i.w = fsub double %i.t, %i.r
  %i.x = tail call noundef double @llvm.fabs.f64(double %i.w) ; 2 uses
  %i.y = fcmp ole double %i.x, %i.v
  %i.z = fcmp olt double %i.x, f0x0010000000000000
  %or.cond = or i1 %i.y, %i.z                     ; 2 uses
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !438, !nonnull !164, !align !306 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, double noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %i.af, align 8, !tbaa !439
  %i.ag = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, !prof !200

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v) #33
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v, i64 14), align 2, !tbaa !60
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v, i64 8), align 8, !tbaa !60
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -281474976710656
  %i.am = or i64 %i.al, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1s to i64)
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 10, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v, align 8, !tbaa !60
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v, i64 14), align 2, !tbaa !60
  %i.ap = and i16 %i.ao, 4096
  %.not.i.i19 = icmp eq i16 %i.ap, 0
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v, i64 8), align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i19, ptr %i.at, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetMultipleOfStringEvE1v
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.au, ptr %i.av, align 8, !tbaa !199
  br label %.thread

.thread:                                          ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9GetDoubleEv.exit, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit
  ret i1 %or.cond
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE3IntEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE11WriteNumberERKNS5_6NumberE.exit, !prof !76

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !148
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE11WriteNumberERKNS5_6NumberE.exit

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE11WriteNumberERKNS5_6NumberE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.j = sitofp i32 %1 to double
  %i.k = bitcast double %i.j to i64               ; 8 uses
  %.sroa.11.15.extract.shift = lshr i64 %i.k, 56
  %.sroa.11.14.extract.shift = lshr i64 %i.k, 48
  %.sroa.11.13.extract.shift = lshr i64 %i.k, 40
  %.sroa.11.12.extract.shift = lshr i64 %i.k, 32
  %.sroa.11.11.extract.shift = lshr i64 %i.k, 24
  %.sroa.11.10.extract.shift = lshr i64 %i.k, 16
  %.sroa.11.9.extract.shift = lshr i64 %i.k, 8
  %i.l = sext i32 %1 to i64                       ; 3 uses
  %.sroa.0.7.extract.shift = lshr i64 %i.l, 56
  %.sroa.0.6.extract.shift = lshr i64 %i.l, 48
  %.sroa.0.5.extract.shift = lshr i64 %i.l, 40
  %i.m = lshr i32 %1, 24
  %.sroa.0.3.extract.trunc = zext nneg i32 %i.m to i64
  %i.n = lshr i32 %1, 16
  %i.o = lshr i32 %1, 8
  %i.p = and i32 %1, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = xor i64 %i.q, -5808593157037640583
  %.09.i.i = mul i64 %i.r, 1099511628211
  %i.s = and i32 %i.o, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = xor i64 %.09.i.i, %i.t
  %.09.i.1.i = mul i64 %i.u, 1099511628211
  %i.v = and i32 %i.n, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = xor i64 %.09.i.1.i, %i.w
  %.09.i.2.i = mul i64 %i.x, 1099511628211
  %i.y = xor i64 %.09.i.2.i, %.sroa.0.3.extract.trunc
  %.09.i.3.i = mul i64 %i.y, 1099511628211
  %isneg = icmp slt i32 %1, 0
  %i.z = select i1 %isneg, i64 255, i64 0
  %i.aa = xor i64 %.09.i.3.i, %i.z
  %.09.i.4.i = mul i64 %i.aa, 1099511628211
  %i.ab = and i64 %.sroa.0.5.extract.shift, 255
  %i.ac = xor i64 %.09.i.4.i, %i.ab
  %.09.i.5.i = mul i64 %i.ac, 1099511628211
  %i.ad = and i64 %.sroa.0.6.extract.shift, 255
  %i.ae = xor i64 %.09.i.5.i, %i.ad
  %.09.i.6.i = mul i64 %i.ae, 1099511628211
  %i.af = xor i64 %.09.i.6.i, %.sroa.0.7.extract.shift
  %.09.i.7.i = mul i64 %i.af, 1099511628211
  %i.ag = and i64 %i.k, 255
  %i.ah = xor i64 %.09.i.7.i, %i.ag
  %.09.i.8.i = mul i64 %i.ah, 1099511628211
  %i.ai = and i64 %.sroa.11.9.extract.shift, 255
  %i.aj = xor i64 %.09.i.8.i, %i.ai
  %.09.i.9.i = mul i64 %i.aj, 1099511628211
  %i.ak = and i64 %.sroa.11.10.extract.shift, 255
  %i.al = xor i64 %.09.i.9.i, %i.ak
  %.09.i.10.i = mul i64 %i.al, 1099511628211
  %i.am = and i64 %.sroa.11.11.extract.shift, 255
  %i.an = xor i64 %.09.i.10.i, %i.am
  %.09.i.11.i = mul i64 %i.an, 1099511628211
  %i.ao = and i64 %.sroa.11.12.extract.shift, 255
  %i.ap = xor i64 %.09.i.11.i, %i.ao
  %.09.i.12.i = mul i64 %i.ap, 1099511628211
  %i.aq = and i64 %.sroa.11.13.extract.shift, 255
  %i.ar = xor i64 %.09.i.12.i, %i.aq
  %.09.i.13.i = mul i64 %i.ar, 1099511628211
  %i.as = and i64 %.sroa.11.14.extract.shift, 255
  %i.at = xor i64 %.09.i.13.i, %i.as
  %.09.i.14.i = mul i64 %i.at, 1099511628211
  %i.au = xor i64 %.09.i.14.i, %.sroa.11.15.extract.shift
  %.09.i.15.i = mul i64 %i.au, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.av, ptr %i.c, align 8, !tbaa !148
  store i64 %.09.i.15.i, ptr %i.i, align 8, !tbaa !57
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE8CheckIntERNS0_23SchemaValidationContextISA_EEl(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !345
  %i.c = and i32 %i.b, 96
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEv.exit, !prof !200

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v) #33
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v, i64 14), align 2, !tbaa !60
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v, i64 8), align 8, !tbaa !60
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -281474976710656
  %i.j = or i64 %i.i, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1s to i64)
  %i.k = inttoptr i64 %i.j to ptr
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 7, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v, align 8, !tbaa !60
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE14DisallowedTypeERNS0_23SchemaValidationContextISA_EERKS9_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEvE1v)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 20, ptr %i.l, align 8, !tbaa !439
  %i.m = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, !prof !200

bb.e:                                             ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEv.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v) #33
  %.not.i21.i = icmp eq i32 %i.o, 0
  br i1 %.not.i21.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 14), align 2, !tbaa !60
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 8), align 8, !tbaa !60
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -281474976710656
  %i.s = or i64 %i.r, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1s to i64)
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 4, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, align 8, !tbaa !60
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit: ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetIntegerStringEv.exit, %bb.e, %bb.f
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 14), align 2, !tbaa !60
  %i.v = and i16 %i.u, 4096
  %.not.i.i = icmp eq i16 %i.v, 0
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 8), align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = select i1 %.not.i.i, ptr %i.z, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !199
  br label %bb.af

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 374
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !60 ; 3 uses
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = and i16 %i.ae, 128
  %.not42 = icmp eq i16 %i.ag, 0
  br i1 %.not42, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !453, !range !163, !noundef !164
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not33 = icmp sgt i64 %2, %i.ak
  br i1 %.not33, label %bb.p, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = icmp slt i64 %2, %i.ak
  br i1 %i.al, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !438, !nonnull !164, !align !306 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i1 noundef zeroext %i.aj)
  %i.ar = load i8, ptr %i.ah, align 8, !tbaa !453, !range !163, !noundef !164
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.as, i32 5, i32 4           ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.at, ptr %i.au, align 8, !tbaa !439
  %i.av = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE(i32 noundef %i.at) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 14
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !60
  %i.ay = and i16 %i.ax, 4096
  %.not.i.i36 = icmp eq i16 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 281474976710655
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = select i1 %.not.i.i36, ptr %i.bd, ptr %i.av
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !199
  br label %bb.af

bb.m:                                             ; preds = %bb.h
  %i.bg = and i16 %i.ae, 256
  %.not43 = icmp eq i16 %i.bg, 0
  br i1 %.not43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !438, !nonnull !164, !align !306 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !453, !range !163, !noundef !164
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i1 noundef zeroext %i.bl)
  %i.bp = load i8, ptr %i.bj, align 8, !tbaa !453, !range !163, !noundef !164
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = select i1 %i.bq, i32 5, i32 4           ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !439
  %i.bt = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE(i32 noundef %i.br) ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 14
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !60
  %i.bw = and i16 %i.bv, 4096
  %.not.i.i37 = icmp eq i16 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = and i64 %i.bz, 281474976710655
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = select i1 %.not.i.i37, ptr %i.cb, ptr %i.bt
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !199
end_hunk_1
