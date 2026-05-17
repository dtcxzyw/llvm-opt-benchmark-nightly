inline.NumInlined: 7694
inline.NumDeleted: 2227
begin_hunk_0_@_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.q = fptoui double %.0.copyload.i.i.i.i.i to i64 ; 2 uses
  %i.r = uitofp i64 %i.q to double
  %i.s = fcmp oeq double %.0.copyload.i.i.i.i.i, %i.r
  br i1 %i.s, label %_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit: ; preds = %bb.c, %bb.e
  %.sink.i = phi i64 [ %i.f, %bb.c ], [ %i.q, %bb.e ]
  store i64 %.sink.i, ptr %i.b, align 8
  br label %bb.p

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.e, %bb.d
  %i.t = add nsw i64 %i.a, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 130
  br i1 %i.z, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.f

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.b, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aa = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %2, i32 noundef 2) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.016.0 = phi ptr [ %i.aa, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %2, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ] ; 4 uses
  store ptr %.sroa.016.0, ptr %0, align 8
  %i.ab = load i64, ptr %.sroa.016.0, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp ult i16 %i.ah, 128
  br i1 %i.ai, label %bb.g, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 4 uses
  %i.al = and i32 %i.ak, -536870909
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10624
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %i.ap, align 8, !range !5, !noundef !6
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 55464
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %i.aw, -55464
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 648
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33: ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ %i.as, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1432
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = lshr exact i32 %i.ak, 2
  %i.bf = and i32 %i.be, 16777215                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 60
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 68
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = lshr i32 %i.bf, 12
  %i.bn = xor i32 %i.bm, %i.bf
  %i.bo = mul i32 %i.bl, %i.bn                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 12
  %i.bq = and i32 %i.bp, 4095
  %i.br = xor i32 %i.bq, %i.bo
  %i.bs = mul i32 %i.br, %i.bj                    ; 2 uses
  %i.bt = lshr i32 %i.bs, 12
  %i.bu = and i32 %i.bt, 4095
  %i.bv = xor i32 %i.bu, %i.bs
  %i.bw = mul i32 %i.bv, %i.bh
  %i.bx = and i32 %i.bw, 16777215                 ; 2 uses
  %i.by = lshr i32 %i.bx, 12
  %i.bz = xor i32 %i.by, %i.bx
  %i.ca = zext nneg i32 %i.bz to i64
  store i64 %i.ca, ptr %i.b, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.cb = trunc i32 %i.ak to i1
  %i.cc = and i32 %i.ak, 3
  %i.cd = icmp eq i32 %i.cc, 0
  %or.cond.i.i = or i1 %i.cd, %i.cb
  br i1 %or.cond.i.i, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

_ZN2v88internal4Name14AsIntegerIndexEPm.exit:     ; preds = %bb.l
  %i.ce = tail call noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull %i.b) #20
  br i1 %i.ce, label %bb.p, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge

_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge: ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit
  %.sroa.0.0.copyload.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread: ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge, %bb.l, %bb.f
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit._ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread_crit_edge ], [ %.sroa.016.0, %bb.l ], [ %.sroa.016.0, %bb.f ] ; 3 uses
  store i64 -1, ptr %i.b, align 8
  %i.cf = load i64, ptr %.sroa.0.0.copyload, align 8
  %i.cg = add i64 %i.cf, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load atomic volatile i64, ptr %i.ch monotonic, align 8
  %i.cj = add i64 %i.ci, 11
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i16, ptr %i.ck monotonic, align 2
  %i.cm = and i16 %i.cl, -96
  %.not.i = icmp eq i16 %i.cm, 32
  br i1 %.not.i, label %bb.m, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.m:                                             ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !5, !noundef !6
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cq = load i8, ptr %i.cp, align 8, !range !5
  %i.cr = trunc nuw i8 %i.cq to i1
  %not..i.i.i = xor i1 %i.co, true
  %i.cs = select i1 %not..i.i.i, i1 true, i1 %i.cr
  br i1 %i.cs, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.cu = load i8, ptr %i.ct, align 8, !range !5, !noundef !6
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt27__throw_bad_optional_accessv() #21
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cx = load ptr, ptr %i.cw, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.m
  %.pn.i.i = phi ptr [ %i.cx, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.m ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.cy = load ptr, ptr %.in.i.i, align 8
  %i.cz = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.0.0.copyload) #20
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread, %_ZNK2v88internal7Isolate12string_tableEv.exit.i
  %.sroa.05.0.i = phi ptr [ %i.cz, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.0.0.copyload, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread ]
  store ptr %.sroa.05.0.i, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33, %_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit, %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp ugt i16 %i.g, 302
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not22.i = icmp eq i64 %3, -1
  br i1 %.not22.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_122TryFastAddDataPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef %0, ptr nonnull %1, ptr %2, ptr %4, i32 noundef 0)
  br i1 %i.i, label %_ZN2v88internal8JSObject18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef %0, ptr nonnull %1, ptr %2, i64 noundef %3, ptr nonnull %1, i32 noundef 1)
  %i.j = call i16 @_ZN2v88internal8JSObject30CheckIfCanDefineAsConfigurableEPNS0_7IsolateEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr noundef nonnull %6, ptr poison, i64 %5) ; 3 uses
  %8 = trunc i16 %i.j to i1
  %9 = icmp samesign ugt i16 %i.j, 255
  %or.cond.i = select i1 %8, i1 %9, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %6, ptr %4, i32 noundef 0, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0)
  %i.l = trunc i16 %i.k to i1
  %i.m = icmp ne ptr %4, null
  %.not23.i = select i1 %i.l, i1 %i.m, i1 false
  %spec.select.i = select i1 %.not23.i, i16 257, i16 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.012.0.i = phi i16 [ %spec.select.i, %bb.e ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN2v88internal8JSObject18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store ptr %4, ptr %i.n, align 8
  store i8 -1, ptr %7, align 8
  %i.p = icmp eq ptr %2, null
  br i1 %i.p, label %bb.h, label %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3, i1 noundef zeroext true) #20
  br label %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit

_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.sroa.02.0.copyload.i = phi ptr [ %i.q, %bb.h ], [ %2, %bb.g ]
  %i.r = call i16 @_ZN2v88internal10JSReceiver17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr nonnull %1, ptr %.sroa.02.0.copyload.i, ptr noundef nonnull %7, i64 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN2v88internal8JSObject18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE.exit

_ZN2v88internal8JSObject18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE.exit: ; preds = %bb.f, %bb.c, %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit
  %.sroa.018.0 = phi i16 [ %i.r, %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit ], [ %.sroa.012.0.i, %bb.f ], [ 257, %bb.c ]
  ret i16 %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal10JSReceiver10class_nameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8
  %.sroa.040.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %i.d = add i64 %.sroa.040.0.copyload, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 31 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = add i16 %i.i, -2063
  %i.k = icmp ult i16 %i.j, 19
  br i1 %i.k, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 2118
  br i1 %i.p, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2119
  br i1 %i.u, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 2062
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %.sroa.040.0.copyload, 71
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = and i32 %i.ac, 16
  %.not507 = icmp eq i32 %i.ad, 0
  %. = select i1 %.not507, i64 4856, i64 6792
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ae = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp eq i16 %i.ah, 2120
  br i1 %i.ai, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 2124
  br i1 %i.an, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp eq i16 %i.ar, 2128
  br i1 %i.as, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = add i16 %i.aw, -2109
  %i.ay = icmp ult i16 %i.ax, 3
  br i1 %i.ay, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 2112
  br i1 %i.bd, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = add i16 %i.bh, -2092
  %i.bj = icmp ult i16 %i.bi, 3
  br i1 %i.bj, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.bl = add i64 %i.bk, 11
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i16, ptr %i.bm monotonic, align 2
  %i.bo = icmp eq i16 %i.bn, 302
  %i.bp = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = add i64 %i.bp, 13
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i8, ptr %i.br monotonic, align 1
  %i.bt = and i8 %i.bs, 2
  %.not = icmp eq i8 %i.bt, 0
  %.508 = select i1 %.not, i64 6352, i64 5592
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bu = add i64 %i.bp, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 2137
  br i1 %i.bx, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = icmp eq i16 %i.cb, 2113
  br i1 %i.cc, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ce = add i64 %i.cd, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i16, ptr %i.cf monotonic, align 2
  %i.ch = add i16 %i.cg, -2095
  %i.ci = icmp ult i16 %i.ch, 2
  br i1 %i.ci, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ck = add i64 %i.cj, 11
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load atomic volatile i16, ptr %i.cl monotonic, align 2
  %i.cn = icmp eq i16 %i.cm, 2061
  br i1 %i.cn, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.co = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.cp = add i64 %i.co, 14
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i8, ptr %i.cq, align 1
  %.mask = and i8 %i.cr, -4
  %i.cs = icmp eq i8 %.mask, 72
  br i1 %i.cs, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load atomic volatile i64, ptr %i.e monotonic, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE:bb.a
  br label %bb.z

bb.l:                                             ; preds = %.critedge
  br i1 %i.w, label %bb.m, label %.thread162

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal14LookupIterator7RestartEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i16 @_ZN2v88internal8JSObject30CheckIfCanDefineAsConfigurableEPNS0_7IsolateEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %i.aq, ptr noundef nonnull %0, ptr poison, i64 %3) ; 2 uses
  %.sroa.16.0.extract.shift135 = lshr i16 %i.ar, 8 ; 2 uses
  %i.as = trunc i16 %i.ar to i1
  br i1 %i.as, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.z

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.m
  %i.at = trunc nuw i16 %.sroa.16.0.extract.shift135 to i1
  br i1 %i.at, label %.thread162, label %bb.z

.thread162:                                       ; preds = %bb.j, %_ZNKR2v85MaybeIbE8FromJustEv.exit, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aw, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i91 = load ptr, ptr %i.ax, align 8
  %i.ay = load i64, ptr %i.b, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef %i.av, ptr %.sroa.0.0.copyload.i, ptr %.sroa.0.0.copyload.i91, i64 noundef %i.ay, ptr %.sroa.0.0.copyload.i, i32 noundef 0)
  %i.az = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %9, ptr %1, i32 noundef %2, i64 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 0) ; 2 uses
  %.sroa.16.0.extract.shift137 = lshr i16 %i.az, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.z

bb.n:                                             ; preds = %bb.d
  %i.ba = tail call ptr @_ZNK2v88internal14LookupIterator12GetAccessorsEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #20 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.n
  %i.bd = add nsw i64 %i.bb, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i64, ptr %i.be monotonic, align 8
  %i.bg = add i64 %i.bf, 11
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i16, ptr %i.bh monotonic, align 2
  %i.bj = icmp eq i16 %i.bi, 203
  %i.bk = icmp eq i32 %4, 1
  %or.cond = and i1 %i.bk, %i.bj
  br i1 %or.cond, label %bb.o, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.o:                                             ; preds = %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i93 = load i32, ptr %i.bl, align 8
  %i.bm = lshr i32 %.sroa.0.0.copyload.i.i93, 2
  %i.bn = and i32 %i.bm, 7
  %.not = icmp eq i32 %i.bn, %2
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal14LookupIterator24TransitionToAccessorPairENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nonnull %i.ba, i32 noundef %2) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bo = tail call i16 @_ZN2v88internal6Object23SetPropertyWithAccessorEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr %1, i64 %3) #20 ; 2 uses
  %.sroa.16.0.extract.shift139 = lshr i16 %i.bo, 8
  br label %bb.z

_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.n, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void @_ZN2v88internal14LookupIterator23ReconfigureDataPropertyENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i32 noundef %2) #20
  br label %bb.z

bb.r:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.s, label %_ZN2v88internal14LookupIterator7GetNameEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = load i64, ptr %i.b, align 8
  %i.bv = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i64 noundef %i.bu, i1 noundef zeroext true) #20 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %i.br, align 8
  br label %_ZN2v88internal14LookupIterator7GetNameEv.exit

_ZN2v88internal14LookupIterator7GetNameEv.exit:   ; preds = %bb.r, %bb.s
  %.sroa.01.0.copyload.i97 = phi ptr [ %i.bv, %bb.s ], [ %i.bs, %bb.r ]
  %i.bx = tail call i16 @_ZN2v88internal6Object28RedefineIncompatiblePropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_NS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %i.bq, ptr %.sroa.01.0.copyload.i97, ptr %1, i64 %3) #20 ; 2 uses
  %.sroa.16.0.extract.shift143 = lshr i16 %i.bx, 8
  br label %bb.z

bb.t:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i98 = load i32, ptr %i.by, align 8
  %i.bz = lshr i32 %.sroa.0.0.copyload.i.i98, 2
  %i.ca = and i32 %i.bz, 7
  %i.cb = icmp eq i32 %i.ca, %2
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = tail call i16 @_ZN2v88internal6Object15SetDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr %1) #20 ; 2 uses
  %.sroa.16.0.extract.shift145 = lshr i16 %i.cc, 8
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal14LookupIterator23ReconfigureDataPropertyENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i32 noundef %2) #20
  br label %bb.z

bb.w:                                             ; preds = %bb.d
  %i.cd = tail call i16 @_ZN2v88internal6Object15AddDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginENS0_22EnforceDefineSemanticsE(ptr noundef nonnull %0, ptr %1, i32 noundef %2, i64 %3, i32 noundef %6, i32 noundef %5) #20 ; 2 uses
  %.sroa.16.0.extract.shift149 = lshr i16 %i.cd, 8
  br label %bb.z

bb.x:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

bb.y:                                             ; preds = %bb.f, %bb.d
  tail call void @_ZN2v88internal14LookupIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #20
  br label %bb.d, !llvm.loop !36

bb.z:                                             ; preds = %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit87, %bb.q, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.k, %.thread162, %_ZNKR2v85MaybeIbE8FromJustEv.exit, %bb.m, %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit, %.critedge, %bb.g, %bb.w, %bb.v, %bb.u, %_ZN2v88internal14LookupIterator7GetNameEv.exit
  %.sroa.0121.2 = phi i16 [ %i.cd, %bb.w ], [ 0, %bb.g ], [ 1, %.critedge ], [ %i.bx, %_ZN2v88internal14LookupIterator7GetNameEv.exit ], [ %i.cc, %bb.u ], [ 1, %bb.v ], [ 0, %bb.m ], [ %i.az, %.thread162 ], [ 1, %_ZNKR2v85MaybeIbE8FromJustEv.exit ], [ 0, %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit ], [ 1, %bb.k ], [ 1, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.bo, %bb.q ], [ 0, %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit87 ]
  %.sroa.16.2 = phi i16 [ %.sroa.16.0.extract.shift149, %bb.w ], [ 0, %bb.g ], [ 0, %.critedge ], [ %.sroa.16.0.extract.shift143, %_ZN2v88internal14LookupIterator7GetNameEv.exit ], [ %.sroa.16.0.extract.shift145, %bb.u ], [ 1, %bb.v ], [ %.sroa.16.0.extract.shift135, %bb.m ], [ %.sroa.16.0.extract.shift137, %.thread162 ], [ 0, %_ZNKR2v85MaybeIbE8FromJustEv.exit ], [ 0, %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit ], [ 1, %bb.k ], [ 1, %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.16.0.extract.shift139, %bb.q ], [ 0, %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit87 ]
  %.sroa.16.0.insert.shift = shl nuw i16 %.sroa.16.2, 8
  %.sroa.0121.0.insert.ext = and i16 %.sroa.0121.2, 255
  %.sroa.0121.0.insert.insert = or disjoint i16 %.sroa.16.0.insert.shift, %.sroa.0121.0.insert.ext
  ret i16 %.sroa.0121.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::PropertyKey", align 8 ; 3 uses
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %0, ptr %2)
  %i.a = load ptr, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = call i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %i.a, i64 %i.c, ptr %3, i64 %4)
  ret i16 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES1_EEEEENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
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
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %bb.b, label %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.k = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3, i1 noundef zeroext true) #20
  br label %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit

_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.b
  %.sroa.02.0.copyload.i = phi ptr [ %i.k, %bb.b ], [ %2, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  %i.l = tail call i16 @_ZN2v88internal6Object20CannotCreatePropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_IS1_EESH_NS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr nonnull %1, ptr %.sroa.02.0.copyload.i, ptr %4, i64 0) #20
  br label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.m = tail call i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr nonnull %1, ptr %2, i64 %3, ptr %4, i64 %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit
  %.sroa.016.0 = phi i16 [ %i.l, %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit ], [ %i.m, %bb.c ]
  ret i16 %.sroa.016.0
}

declare i16 @_ZN2v88internal6Object20CannotCreatePropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_IS1_EESH_NS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal8JSObject18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  %.not22 = icmp eq i64 %3, -1
  br i1 %.not22, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_122TryFastAddDataPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef %0, ptr %1, ptr %2, ptr %4, i32 noundef 0)
  br i1 %i.a, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef %0, ptr %1, ptr %2, i64 noundef %3, ptr %1, i32 noundef 1)
  %i.b = call i16 @_ZN2v88internal8JSObject30CheckIfCanDefineAsConfigurableEPNS0_7IsolateEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr noundef nonnull %6, ptr poison, i64 %5) ; 3 uses
  %7 = trunc i16 %i.b to i1
  %8 = icmp samesign ugt i16 %i.b, 255
  %or.cond = select i1 %7, i1 %8, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %6, ptr %4, i32 noundef 0, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0)
  %i.d = trunc i16 %i.c to i1
  %i.e = icmp ne ptr %4, null
  %.not23 = select i1 %i.d, i1 %i.e, i1 false
  %spec.select = select i1 %.not23, i16 257, i16 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.012.0 = phi i16 [ %spec.select, %bb.d ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.sroa.012.1 = phi i16 [ %.sroa.012.0, %bb.e ], [ 257, %bb.b ]
  ret i16 %.sroa.012.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal10JSReceiver15AddPrivateFieldEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_ZN2v88internal14LookupIterator7GetNameEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 noundef %i.h, i1 noundef zeroext true) #20 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %i.d, align 8
  br label %_ZN2v88internal14LookupIterator7GetNameEv.exit

_ZN2v88internal14LookupIterator7GetNameEv.exit:   ; preds = %bb.a, %bb.b
  %.sroa.01.0.copyload.i = phi ptr [ %i.i, %bb.b ], [ %i.e, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4
  switch i32 %i.l, label %bb.i [
    i32 5, label %bb.c
    i32 8, label %bb.d
    i32 7, label %bb.e
    i32 4, label %bb.e
    i32 6, label %bb.e
    i32 2, label %bb.e
    i32 1, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.m, align 8
  store i8 -1, ptr %3, align 8
  %i.o = call i16 @_ZN2v88internal7JSProxy16SetPrivateSymbolEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6SymbolEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %i.c, ptr %.sroa.0.0.copyload.i, ptr %.sroa.01.0.copyload.i, ptr noundef nonnull %3, i64 %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.j

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit
  %i.p = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 457, ptr null, i64 0) #20
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %i.c, i64 %i.q, ptr noundef null) #20 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZN2v88internal14LookupIterator7GetNameEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit
  %i.s = tail call noundef zeroext i1 @_ZNK2v88internal14LookupIterator9HasAccessEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #20
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.01.0.copyload.i34 = load ptr, ptr %i.u, align 8
  %i.v = tail call ptr @_ZN2v88internal7Isolate23ReportFailedAccessCheckENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %i.t, ptr %.sroa.01.0.copyload.i34) #20
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

bb.i:                                             ; preds = %bb.f, %_ZN2v88internal14LookupIterator7GetNameEv.exit
  %i.x = tail call i16 @_ZN2v88internal6Object30TransitionAndWriteDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginE(ptr noundef nonnull %0, ptr %1, i32 noundef 0, i64 %2, i32 noundef 0) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.d, %bb.c
  %.sroa.033.0 = phi i16 [ %i.x, %bb.i ], [ %i.o, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i16 %.sroa.033.0
}

declare i16 @_ZN2v88internal7JSProxy16SetPrivateSymbolEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6SymbolEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr noundef, i64) local_unnamed_addr #2

declare i16 @_ZN2v88internal6Object30TransitionAndWriteDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginE(ptr noundef, ptr, i32 noundef, i64, i32 noundef) local_unnamed_addr #2

declare i16 @_ZN2v88internal7JSProxy24GetOwnPropertyDescriptorEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEEPNS0_18PropertyDescriptorE(ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #2

declare ptr @_ZNK2v88internal14LookupIterator12GetAccessorsEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal12AccessorPair12GetComponentEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS0_17AccessorComponentE(ptr noundef, ptr, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal10JSReceiver17SetIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS0_11ShouldThrowE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp ugt i16 %i.g, 302
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 14
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -8
  %i.n = icmp eq i8 %i.m, 56
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 305
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i16 @_ZN2v88internal8JSObject18TestIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesE(ptr noundef %0, ptr nonnull %1, i32 noundef %2) ; 2 uses
  %i.u = trunc i16 %i.t to i1
  br i1 %i.u, label %_ZNKR2v85MaybeIbE8FromJustEv.exit62, label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit62:              ; preds = %bb.d
  %.not162 = icmp samesign ult i16 %i.t, 256
  br i1 %.not162, label %bb.e, label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.e:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit62
  %i.v = icmp eq i32 %2, 4
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i16 @_ZN2v88internal8JSObject31PreventExtensionsWithTransitionILNS0_18PropertyAttributesE4EEENS_5MaybeIbEEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr noundef %0, ptr nonnull %1, i32 noundef %3) ; 2 uses
  %.sroa.0110.0.extract.trunc = trunc i16 %i.w to i8
  %.sroa.12.0.extract.shift = lshr i16 %i.w, 8
  %.sroa.12.0.extract.trunc = trunc nuw i16 %.sroa.12.0.extract.shift to i8
  br label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.x = tail call i16 @_ZN2v88internal8JSObject31PreventExtensionsWithTransitionILNS0_18PropertyAttributesE5EEENS_5MaybeIbEEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr noundef %0, ptr nonnull %1, i32 noundef %3) ; 2 uses
  %.sroa.0110.0.extract.trunc111 = trunc i16 %i.x to i8
  %.sroa.12.0.extract.shift115 = lshr i16 %i.x, 8
  %.sroa.12.0.extract.trunc116 = trunc nuw i16 %.sroa.12.0.extract.shift115 to i8
  br label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 302
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.ad = tail call i16 @_ZN2v88internal7JSProxy17PreventExtensionsENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr nonnull %1, i32 noundef %3) #20
  br label %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit

bb.i:                                             ; preds = %.critedge
  %i.ae = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = and i16 %i.ah, -2
  %i.aj = icmp eq i16 %i.ai, 300
  br i1 %i.aj, label %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit.thread, label %bb.j

_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit.thread: ; preds = %bb.i
  %i.ak = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 457, ptr null, i64 0) #20
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.al, ptr noundef null) #20 ; 0 uses
  br label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
end_hunk_1
