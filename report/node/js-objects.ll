inline.NumInlined: 7694
inline.NumDeleted: 2227
begin_hunk_0_@_ZN2v88internal8JSObject17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE:bb.a
bb.h:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  %i.ay = call ptr @_ZN2v88internal7Isolate23ReportFailedAccessCheckENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr nonnull %1) #21
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #23
  unreachable

bb.j:                                             ; preds = %_ZNK2v88internal13JSGlobalProxy14IsDetachedFromEPNS0_7IsolateENS0_6TaggedINS0_14JSGlobalObjectEEE.exit, %_ZN2v88internal7Isolate14native_contextEv.exit, %_ZN2v88internal19IsAccessCheckNeededENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit
  %i.ba = load i64, ptr %1, align 8
  %i.bb = add i64 %i.ba, -1
  %i.bc = inttoptr i64 %i.bb to ptr               ; 5 uses
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, 15
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i32, ptr %i.bf monotonic, align 4
  %i.bh = and i32 %i.bg, 134217728
  %.not176 = icmp eq i32 %i.bh, 0
  br i1 %.not176, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = icmp eq i16 %i.bl, 304
  %i.bn = load atomic volatile i64, ptr %i.bc monotonic, align 8 ; 2 uses
  br i1 %i.bm, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bo = add i64 %i.bn, 11
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i16, ptr %i.bp monotonic, align 2
  %i.br = icmp eq i16 %i.bq, 302
  br i1 %i.br, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.l
  %i.bs = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.bt = add i64 %i.bs, 23
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp eq i64 %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.m, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit, !prof !7

bb.m:                                             ; preds = %.thread.i.i
  %i.ce = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit: ; preds = %.thread.i.i, %bb.m
  %.0.i.i.i.i.i = phi ptr [ %i.ce, %bb.m ], [ %i.ca, %.thread.i.i ] ; 3 uses
  %i.cf = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.cg = add i64 %i.cf, 8
  %i.ch = inttoptr i64 %i.cg to ptr
  store ptr %i.ch, ptr %i.bz, align 8
  store i64 %i.bv, ptr %.0.i.i.i.i.i, align 8
  br i1 %i.by, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit
  %i.ci = call i16 @_ZN2v88internal8JSObject17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr noundef nonnull %0, ptr nonnull %.0.i.i.i.i.i, i32 noundef %2)
  br label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread

bb.o:                                             ; preds = %bb.k
  %i.cj = add i64 %i.bn, 13
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i8, ptr %i.ck monotonic, align 1
  %i.cm = and i8 %i.cl, 4
  %.not177 = icmp eq i8 %i.cm, 0
  br i1 %.not177, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.cn = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.co = add i64 %i.cn, 13
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load atomic volatile i8, ptr %i.cp monotonic, align 1
  %i.cr = and i8 %i.cq, 8
  %.not178 = icmp eq i8 %i.cr, 0
  br i1 %.not178, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.p
  %i.cs = icmp eq i32 %2, 0
  br i1 %i.cs, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.ct = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 42, ptr null, i64 0) #21
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cu, ptr noundef null) #21 ; 0 uses
  br label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.cw = call ptr @_ZN2v88internal8JSObject17NormalizeElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nonnull %1)
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.cz = load i64, ptr %i.cy, align 8
  %.not179 = icmp eq i64 %i.cx, %i.cz
  br i1 %.not179, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.da = load i64, ptr %1, align 8
  store i64 %i.da, ptr %4, align 8
  call void @_ZN2v88internal8JSObject19RequireSlowElementsENS0_6TaggedINS0_16NumberDictionaryEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.db = load i64, ptr %1, align 8
  %i.dc = add i64 %i.db, -1
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.u, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.dk = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ %i.dk, %bb.u ], [ %i.dg, %bb.t ] ; 3 uses
  %i.dl = ptrtoint ptr %.0.i to i64
  %i.dm = add i64 %i.dl, 8
  %i.dn = inttoptr i64 %i.dm to ptr
  store ptr %i.dn, ptr %i.df, align 8
  store i64 %i.de, ptr %.0.i, align 8
  %i.do = call ptr @_ZN2v88internal3Map4CopyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS0_18TransitionKindFlagE(ptr noundef nonnull %0, ptr nonnull %.0.i, ptr noundef nonnull @.str.63, i32 noundef 3) #21 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = add i64 %i.dp, 15
  %i.dr = inttoptr i64 %i.dq to ptr               ; 2 uses
  %i.ds = load atomic volatile i32, ptr %i.dr monotonic, align 4
  %i.dt = and i32 %i.ds, -134217729
  store atomic volatile i32 %i.dt, ptr %i.dr monotonic, align 4
  call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %i.do, i32 noundef 0)
  br label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread: ; preds = %bb.l, %.critedge, %bb.n, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit, %bb.j, %bb.h, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.q, %bb.b
  %.sroa.034.1 = phi i16 [ %i.j, %bb.b ], [ 0, %bb.h ], [ 257, %bb.j ], [ 257, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit ], [ 0, %bb.q ], [ 257, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.ci, %bb.n ], [ 1, %.critedge ], [ 257, %bb.l ]
  ret i16 %.sroa.034.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal10JSReceiver12IsExtensibleEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 302
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i16 @_ZN2v88internal7JSProxy12IsExtensibleENS0_12DirectHandleIS1_EE(ptr nonnull %1) #21
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = and i16 %i.m, -2
  %i.o = icmp eq i16 %i.n, 300
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef zeroext i1 @_ZN2v88internal8JSObject12IsExtensibleEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nonnull %1)
  %.sroa.0.0.insert.insert.i12 = select i1 %i.p, i16 257, i16 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.08.0 = phi i16 [ %i.i, %bb.b ], [ %.sroa.0.0.insert.insert.i12, %bb.d ], [ 1, %bb.c ]
  ret i16 %.sroa.08.0
}

declare i16 @_ZN2v88internal7JSProxy12IsExtensibleENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal25FastGetOwnValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEbPNS0_6HandleINS0_10FixedArrayEEE(ptr noundef %0, ptr nofree readonly captures(none) %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::Representation", align 1 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.505", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %7 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 14 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 7 uses
  %i.l = ptrtoint ptr %.0.i to i64
  %i.m = add i64 %i.l, 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8
  store i64 %i.e, ptr %.0.i, align 8
  %i.o = add i64 %i.e, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp ugt i16 %i.q, 302
  br i1 %i.r, label %bb.c, label %bb.av

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 %i.e, ptr %5, align 8
  %i.s = call noundef zeroext i1 @_ZNK2v88internal3Map23OnlyHasSimplePropertiesEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.s, label %bb.d, label %bb.av

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %1, align 8
  %i.u = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i116 = phi ptr [ %i.x, %bb.e ], [ %i.u, %bb.d ] ; 10 uses
  %i.y = ptrtoint ptr %.0.i.i116 to i64           ; 3 uses
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.f, align 8
  store i64 %i.t, ptr %.0.i.i116, align 8
  %i.ab = load i64, ptr %.0.i, align 8
  %i.ac = add i64 %i.ab, 39
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ai = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.f
  %.0.i.i117 = phi ptr [ %i.ai, %bb.f ], [ %i.af, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 6 uses
  %i.aj = ptrtoint ptr %.0.i.i117 to i64
  %i.ak = add i64 %i.aj, 8
  %i.al = inttoptr i64 %i.ak to ptr
  store ptr %i.al, ptr %i.f, align 8
  store i64 %i.ae, ptr %.0.i.i117, align 8
  %i.am = load i64, ptr %.0.i, align 8
  %i.an = add i64 %i.am, 15
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i32, ptr %i.ao acquire, align 4
  %i.aq = lshr i32 %i.ap, 10
  %i.ar = and i32 %i.aq, 1023                     ; 4 uses
  %i.as = load i64, ptr %.0.i.i116, align 8       ; 3 uses
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 14
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = lshr i8 %i.ay, 2
  %i.ba = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.bb = zext nneg i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = add i64 %i.as, 15
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 %i.as, i64 %i.bg) #21 ; 2 uses
  %i.bl = sub nuw nsw i32 134217728, %i.ar
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bo = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #21
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bp, ptr noundef null) #21 ; 0 uses
  br label %bb.av

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.br = zext nneg i32 %i.ar to i64
  %i.bs = trunc nuw nsw i64 %i.bk to i32
  %i.bt = add nuw nsw i32 %i.ar, %i.bs
  %i.bu = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bt, i8 noundef zeroext 0, i8 0) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4
  %i.bv = load i64, ptr %.0.i.i116, align 8       ; 3 uses
  %i.bw = add i64 %i.bv, 15
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ca = load i64, ptr %i.bz, align 8
  %.not = icmp eq i64 %i.by, %i.ca
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = add i64 %i.bv, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8
  %i.ce = add i64 %i.cd, 14
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = lshr i8 %i.cg, 2
  %i.ci = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.cj = zext nneg i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call i16 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %0, ptr nonnull %.0.i.i116, ptr %i.bu, i1 noundef zeroext %2, ptr noundef nonnull %i.a, i32 noundef 18) #21
  %i.cq = trunc i16 %i.cp to i1
  br i1 %i.cq, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i64, ptr %.0.i.i116, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.h
  %i.cr = phi i64 [ %.pre, %._crit_edge ], [ %i.bv, %bb.h ]
  %i.cs = load i64, ptr %.0.i, align 8            ; 2 uses
  %i.ct = add i64 %i.cr, -1
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load atomic volatile i64, ptr %i.cu monotonic, align 8
  %i.cw = icmp eq i64 %i.cs, %i.cv                ; 2 uses
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cx = add i64 %i.cs, 39
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load i64, ptr %i.cy, align 8
  store i64 %i.cz, ptr %.0.i.i117, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not348353 = icmp eq i32 %i.ar, 0
  br i1 %.not348353, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 55448 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64088 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64080 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 72
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.au
  %.091356 = phi i1 [ %i.cw, %.lr.ph ], [ %.6.jt5, %bb.au ] ; 2 uses
  %.sroa.0184.0354 = phi i64 [ 0, %.lr.ph ], [ %i.lq, %bb.au ] ; 2 uses
  %i.dx = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.dy = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.dz = load i32, ptr %i.da, align 8
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.da, align 8
  %i.eb = load i64, ptr %.0.i.i117, align 8
  %i.ec = mul nuw nsw i64 %.sroa.0184.0354, 103079215104
  %sext.i.i = add nuw nsw i64 %i.ec, 137438953472
  %i.ed = lshr exact i64 %sext.i.i, 32            ; 3 uses
  %i.ee = add nsw i64 %i.ed, -1
  %i.ef = add i64 %i.ee, %i.eb
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i64, ptr %i.eg monotonic, align 8 ; 2 uses
  %i.ei = icmp eq ptr %i.dx, %i.dy
  br i1 %i.ei, label %bb.n, label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.ej = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i = phi ptr [ %i.ej, %bb.n ], [ %i.dx, %bb.m ] ; 11 uses
  %i.ek = ptrtoint ptr %.0.i.i to i64
  %i.el = add i64 %i.ek, 8
  %i.em = inttoptr i64 %i.el to ptr
  store ptr %i.em, ptr %i.f, align 8
  store i64 %i.eh, ptr %.0.i.i, align 8
  %i.en = add i64 %i.eh, -1
  %i.eo = inttoptr i64 %i.en to ptr               ; 3 uses
  %i.ep = load atomic volatile i64, ptr %i.eo monotonic, align 8
  %i.eq = add i64 %i.ep, 11
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load atomic volatile i16, ptr %i.er monotonic, align 2
  %i.et = icmp ult i16 %i.es, 128
  br i1 %i.et, label %bb.o, label %.thread331

bb.o:                                             ; preds = %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  br i1 %.091356, label %bb.p, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i136

bb.p:                                             ; preds = %bb.o
  %i.eu = load i64, ptr %.0.i.i117, align 8       ; 2 uses
  %i.ev = or disjoint i64 %i.ed, 7
  %i.ew = add i64 %i.ev, %i.eu
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load atomic volatile i64, ptr %i.ex monotonic, align 8 ; 2 uses
  %i.ez = lshr i64 %i.ey, 32
  %i.fa = trunc nuw i64 %i.ez to i32              ; 4 uses
  %i.fb = and i32 %i.fa, 8
  %.not.i128 = icmp eq i32 %i.fb, 0
  br i1 %.not.i128, label %bb.q, label %.thread331

bb.q:                                             ; preds = %bb.p
  %i.fc = and i32 %i.fa, 1
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.r, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.fe = and i32 %i.fa, 32
  %.not352 = icmp eq i32 %i.fe, 0
  br i1 %.not352, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ff = add nuw nsw i64 %i.ed, 15
  %i.fg = add i64 %i.ff, %i.eu
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load atomic volatile i64, ptr %i.fh monotonic, align 8
  %i.fj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fk = load ptr, ptr %i.h, align 8
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %bb.t, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit113, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.fm = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit113

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit113: ; preds = %bb.s, %bb.t
  %.0.i112 = phi ptr [ %i.fm, %bb.t ], [ %i.fj, %bb.s ] ; 3 uses
  %i.fn = ptrtoint ptr %.0.i112 to i64
  %i.fo = add i64 %i.fn, 8
  %i.fp = inttoptr i64 %i.fo to ptr
  store ptr %i.fp, ptr %i.f, align 8
  store i64 %i.fi, ptr %.0.i112, align 8
  br label %.thread

bb.u:                                             ; preds = %bb.r
  %i.fq = lshr i64 %i.ey, 38
  %i.fr = trunc i64 %i.fq to i8
  %i.fs = and i8 %i.fr, 7                         ; 3 uses
  %i.ft = load i64, ptr %.0.i, align 8            ; 2 uses
  %i.fu = lshr i32 %i.fa, 19
  %i.fv = and i32 %i.fu, 1023                     ; 3 uses
  %i.fw = add i64 %i.ft, 7
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = load atomic volatile i8, ptr %i.fx monotonic, align 1
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add i64 %i.ft, 8
  %i.gb = inttoptr i64 %i.ga to ptr               ; 3 uses
  %i.gc = load atomic volatile i8, ptr %i.gb monotonic, align 1
  %i.gd = zext i8 %i.gc to i32
  %i.ge = sub nsw i32 %i.fz, %i.gd                ; 3 uses
  %i.gf = icmp slt i32 %i.fv, %i.ge               ; 2 uses
  br i1 %i.gf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gg = load atomic volatile i8, ptr %i.gb monotonic, align 1
  %i.gh = zext i8 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 30
  %i.gj = load atomic volatile i8, ptr %i.gb monotonic, align 1
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nuw nsw i32 %i.fv, %i.gk
  %i.gm = shl nuw nsw i32 %i.gl, 3
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gn = sub nsw i32 %i.fv, %i.ge
  %i.go = shl nsw i32 %i.gn, 3
  %i.gp = add nuw nsw i32 %i.go, 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.013.i = phi i32 [ %i.gm, %bb.v ], [ %i.gp, %bb.w ]
  %.0.i130 = phi i64 [ %i.gi, %bb.v ], [ 2147483648, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 %i.fs, ptr %4, align 1
  %switch = icmp samesign ult i8 %i.fs, 5
  br i1 %switch, label %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gq = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.84, ptr noundef %i.gq) #21
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #23
  unreachable

_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gr = select i1 %i.gf, i64 16384, i64 0
  %i.gs = sext i32 %.013.i to i64                 ; 3 uses
  %i.gt = sext i32 %i.ge to i64
  %i.gu = shl nsw i64 %i.gt, 17
  %i.gv = or disjoint i64 %i.gu, %i.gr
  %i.gw = or i64 %i.gv, %i.gs                     ; 2 uses
  %i.gx = or i64 %.0.i130, %i.gw
  %i.gy = load i64, ptr %.0.i.i116, align 8       ; 2 uses
  %i.gz = and i64 %i.gw, 16384
  %.not.i.i.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit
  %i.ha = and i64 %i.gs, 16383
  %i.hb = add nsw i64 %i.ha, -1
  %i.hc = add i64 %i.hb, %i.gy
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit.i

bb.aa:                                            ; preds = %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit
  %i.hd = add i64 %i.gy, 7
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = load i64, ptr %i.he, align 8            ; 3 uses
  %i.hg = and i64 %i.hf, 1
  %i.hh = icmp eq i64 %i.hg, 0
  %.pre.i.i.i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 10624
  %.pre11.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8 ; 2 uses
  br i1 %i.hh, label %.critedge.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i.i, i64 312
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = icmp eq i64 %i.hf, %i.hj
  br i1 %i.hk, label %.critedge.i.i.i.i, label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.ab, %bb.aa
  %i.hl = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i.i, i64 304
  %i.hm = load i64, ptr %i.hl, align 8
  br label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i.i

_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %.critedge.i.i.i.i, %bb.ab
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.hm, %.critedge.i.i.i.i ], [ %i.hf, %bb.ab ]
  %sh.diff.i.i.i = lshr i64 %i.gx, 27
  %i.hn = and i64 %sh.diff.i.i.i, 120
  %.mask.i.i.i = and i64 %i.gs, 16376
  %i.ho = add nuw nsw i64 %.mask.i.i.i, 15
  %i.hp = sub nsw i64 %i.ho, %i.hn
  %i.hq = add i64 %i.hp, %.sroa.05.0.i.i.i.i
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit.i

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit.i: ; preds = %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i.i, %bb.z
  %.sink9.i.i.i = phi i64 [ %i.hq, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i.i ], [ %i.hc, %bb.z ]
  %i.hr = inttoptr i64 %.sink9.i.i.i to ptr
  %i.hs = load atomic volatile i64, ptr %i.hr monotonic, align 8
  %i.ht = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hu = load ptr, ptr %i.h, align 8
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %bb.ac, label %_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE.exit, !prof !7

bb.ac:                                            ; preds = %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit.i
  %i.hw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE.exit

_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE.exit: ; preds = %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit.i, %bb.ac
  %.0.i.i132 = phi ptr [ %i.hw, %bb.ac ], [ %i.ht, %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit.i ] ; 3 uses
  %i.hx = ptrtoint ptr %.0.i.i132 to i64
  %i.hy = add i64 %i.hx, 8
  %i.hz = inttoptr i64 %i.hy to ptr
  store ptr %i.hz, ptr %i.f, align 8
  store i64 %i.hs, ptr %.0.i.i132, align 8
  %i.ia = call ptr @_ZN2v88internal6Object11WrapForReadILNS0_14AllocationTypeE0ENS0_7IsolateEEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPT0_SH_NS0_14RepresentationE(ptr noundef nonnull %0, ptr nonnull %.0.i.i132, i8 %i.fs) #21
  br label %.thread

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ib = load atomic volatile i64, ptr %i.eo monotonic, align 8
  %i.ic = add i64 %i.ib, 11
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = load atomic volatile i16, ptr %i.id monotonic, align 2 ; 0 uses
  store i32 0, ptr %i.do, align 4
  store i32 0, ptr %i.dp, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %6, i8 0, i64 9, i1 false)
  store ptr %0, ptr %i.dq, align 8
  store ptr %.0.i.i, ptr %i.dr, align 8
  store ptr null, ptr %i.ds, align 8
  store ptr %.0.i.i116, ptr %i.dt, align 8
  store ptr null, ptr %i.du, align 8
  store i64 %i.y, ptr %i.dv, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 -1, i64 16, i1 false)
  %i.if = load i64, ptr %.0.i.i, align 8
  %i.ig = add i64 %i.if, -1
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = load atomic volatile i64, ptr %i.ih monotonic, align 8
  %i.ij = add i64 %i.ii, 11
  %i.ik = inttoptr i64 %i.ij to ptr
  %i.il = load atomic volatile i16, ptr %i.ik monotonic, align 2
  %i.im = and i16 %i.il, -96
  %.not.i21.i.i = icmp eq i16 %i.im, 32
  br i1 %.not.i21.i.i, label %bb.ad, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.ad:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.in = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !5, !noundef !6
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = load i8, ptr %i.dl, align 8, !range !5
  %i.iq = trunc nuw i8 %i.ip to i1
  %not..i.i.i23.i.i = xor i1 %i.io, true
  %i.ir = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.iq
  br i1 %i.ir, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.is = load i8, ptr %i.dm, align 8, !range !5, !noundef !6
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.ae
  %i.iu = load ptr, ptr %i.dn, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.ad
  %.pn.i.i26.i.i = phi ptr [ %i.iu, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.ad ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.iv = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.iw = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.iw, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %.0.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dr, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #21
  %i.ix = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #21 ; 2 uses
  %.not351 = icmp eq ptr %i.ix, null
  br i1 %.not351, label %bb.ag, label %.thread337

.thread337:                                       ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.iy = load i64, ptr %.0.i.i116, align 8
  %i.iz = add i64 %i.iy, -1
  %i.ja = inttoptr i64 %i.iz to ptr
  %i.jb = load atomic volatile i64, ptr %i.ja monotonic, align 8
  %i.jc = load i64, ptr %.0.i, align 8            ; 2 uses
  %i.jd = icmp eq i64 %i.jb, %i.jc
  %i.je = add i64 %i.jc, 39
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = load i64, ptr %i.jf, align 8
  store i64 %i.jg, ptr %.0.i.i117, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.thread

bb.ag:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.thread331.jt1

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i136: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.jh = load atomic volatile i64, ptr %i.eo monotonic, align 8
  %i.ji = add i64 %i.jh, 11
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = load atomic volatile i16, ptr %i.jj monotonic, align 2 ; 0 uses
  store i32 0, ptr %i.dc, align 4
  store i32 0, ptr %i.dd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %7, i8 0, i64 9, i1 false)
  store ptr %0, ptr %i.de, align 8
  store ptr %.0.i.i, ptr %i.df, align 8
  store ptr null, ptr %i.dg, align 8
  store ptr %.0.i.i116, ptr %i.dh, align 8
  store ptr null, ptr %i.di, align 8
  store i64 %i.y, ptr %i.dj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 -1, i64 16, i1 false)
  %i.jl = load i64, ptr %.0.i.i, align 8
  %i.jm = add i64 %i.jl, -1
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load atomic volatile i64, ptr %i.jn monotonic, align 8
  %i.jp = add i64 %i.jo, 11
  %i.jq = inttoptr i64 %i.jp to ptr
  %i.jr = load atomic volatile i16, ptr %i.jq monotonic, align 2
  %i.js = and i16 %i.jr, -96
  %.not.i21.i.i137 = icmp eq i16 %i.js, 32
  br i1 %.not.i21.i.i137, label %bb.ah, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit145

bb.ah:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i136
  %i.jt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !5, !noundef !6
  %i.ju = trunc nuw i8 %i.jt to i1
  %i.jv = load i8, ptr %i.dl, align 8, !range !5
  %i.jw = trunc nuw i8 %i.jv to i1
  %not..i.i.i23.i.i139 = xor i1 %i.ju, true
  %i.jx = select i1 %not..i.i.i23.i.i139, i1 true, i1 %i.jw
  br i1 %i.jx, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i141, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jy = load i8, ptr %i.dm, align 8, !range !5, !noundef !6
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i140, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i140: ; preds = %bb.ai
  %i.ka = load ptr, ptr %i.dn, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i141

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i141: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i140, %bb.ah
  %.pn.i.i26.i.i142 = phi ptr [ %i.ka, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i140 ], [ %0, %bb.ah ]
  %.in.i.i27.i.i143 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i142, i64 58464
  %i.kb = load ptr, ptr %.in.i.i27.i.i143, align 8
  %i.kc = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit145

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit145: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i136, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i141
  %.sroa.05.0.i22.i.i138 = phi ptr [ %i.kc, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i141 ], [ %.0.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i136 ]
  store ptr %.sroa.05.0.i22.i.i138, ptr %i.df, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %7) #21
  %i.kd = load i32, ptr %i.db, align 4
  %.not349 = icmp eq i32 %i.kd, 0
  br i1 %.not349, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit115, label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit145
  %.sroa.0.0.copyload.i.i146 = load i32, ptr %i.dd, align 8
  %i.ke = and i32 %.sroa.0.0.copyload.i.i146, 8
  %.not.i.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i, label %bb.al, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit115

bb.al:                                            ; preds = %bb.ak
  %i.kf = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %7, i1 noundef zeroext false) #21 ; 2 uses
  %.not350 = icmp eq ptr %i.kf, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.not350, label %.thread331.jt1, label %.thread

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit115: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit145, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.thread331

.thread:                                          ; preds = %bb.al, %_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit113, %.thread337
  %.sroa.0176.2 = phi ptr [ %i.ix, %.thread337 ], [ %.0.i112, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit113 ], [ %i.ia, %_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE.exit ], [ %i.kf, %bb.al ] ; 2 uses
  %.495 = phi i1 [ %i.jd, %.thread337 ], [ true, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit113 ], [ true, %_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE.exit ], [ false, %bb.al ]
  br i1 %2, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread
  %i.kg = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i8 noundef zeroext 0, i8 0) #21 ; 3 uses
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = add i64 %i.kh, -1
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load i64, ptr %.0.i.i, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store atomic volatile i64 %i.kk, ptr %i.kl monotonic, align 8
  %i.km = load i64, ptr %i.kg, align 8
  %i.kn = add i64 %i.km, -1
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = load i64, ptr %.sroa.0176.2, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store atomic volatile i64 %i.kp, ptr %i.kq monotonic, align 8
  %i.kr = call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.kg, i8 noundef zeroext 2, i32 noundef 2, i8 noundef zeroext 0) #21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread
  %.sroa.0176.3 = phi ptr [ %i.kr, %bb.am ], [ %.sroa.0176.2, %.thread ]
  %i.ks = load i64, ptr %i.bu, align 8
  %i.kt = add i64 %i.ks, -1                       ; 3 uses
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = load i32, ptr %i.a, align 4
  %i.kw = load i64, ptr %.sroa.0176.3, align 8    ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.ky = sext i32 %i.kv to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.ky ; 2 uses
  store atomic volatile i64 %i.kw, ptr %i.kz monotonic, align 8
  %i.la = trunc i64 %i.kw to i1
  br i1 %i.la, label %bb.ao, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.ao:                                            ; preds = %bb.an
  %i.lb = or disjoint i64 %i.kt, 1                ; 2 uses
  %i.lc = ptrtoint ptr %i.kz to i64               ; 2 uses
  %i.ld = and i64 %i.kt, -262144
  %i.le = inttoptr i64 %i.ld to ptr
  %i.lf = load i64, ptr %i.le, align 262144       ; 2 uses
  %i.lg = and i64 %i.lf, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.lg, 0
  %i.lh = and i64 %i.lf, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.lh, 0
  br i1 %.not37.i.i.i.i.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.li = and i64 %i.kw, -262144
  %i.lj = inttoptr i64 %i.li to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.lj, align 262144
  %i.lk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.lk, 0
  br i1 %.not38.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.lb, i64 noundef %i.lc, i64 %i.kw) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.as, !prof !17

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.lb, i64 %i.lc, i64 %i.kw) #21
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.an, %bb.ar, %bb.as
  %i.ll = load i32, ptr %i.a, align 4
  %i.lm = add nsw i32 %i.ll, 1
  store i32 %i.lm, ptr %i.a, align 4
  br label %.thread331

.thread331.jt1:                                   ; preds = %bb.al, %bb.ag
  store ptr %i.dx, ptr %i.f, align 8
  %8 = load i32, ptr %i.da, align 8
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %i.da, align 8
  %10 = load ptr, ptr %i.h, align 8
  %.not.i.jt1 = icmp eq ptr %10, %i.dy
  br i1 %.not.i.jt1, label %.loopexit, label %bb.at, !prof !17

.thread331:                                       ; preds = %bb.p, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit115, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.6.jt5 = phi i1 [ %.091356, %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.495, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ true, %bb.p ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit115 ]
  store ptr %i.dx, ptr %i.f, align 8
  %i.ln = load i32, ptr %i.da, align 8
  %i.lo = add nsw i32 %i.ln, -1
  store i32 %i.lo, ptr %i.da, align 8
  %i.lp = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.lp, %i.dy
  br i1 %.not.i, label %bb.au, label %_ZN2v88internal11HandleScopeD2Ev.exit, !prof !17

bb.at:                                            ; preds = %.thread331.jt1
  store ptr %i.dy, ptr %i.h, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %.loopexit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %.thread331
  store ptr %i.dy, ptr %i.h, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %bb.au

bb.au:                                            ; preds = %.thread331, %_ZN2v88internal11HandleScopeD2Ev.exit
  %i.lq = add nuw nsw i64 %.sroa.0184.0354, 1     ; 2 uses
  %.not348 = icmp eq i64 %i.lq, %i.br
  br i1 %.not348, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.au, %bb.l
  %i.lr = load i32, ptr %i.a, align 4
  %i.ls = call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %0, ptr %i.bu, i32 noundef %i.lr) #21
  store ptr %i.ls, ptr %3, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.at, %.thread331.jt1, %bb.i, %.critedge
  %.sroa.8.0 = phi i16 [ 257, %.critedge ], [ 0, %bb.i ], [ 0, %.thread331.jt1 ], [ 0, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.av

bb.av:                                            ; preds = %bb.g, %.loopexit, %bb.c, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.8.2 = phi i16 [ 1, %bb.c ], [ 1, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ 0, %bb.g ], [ %.sroa.8.0, %.loopexit ]
  ret i16 %.sroa.8.2
}

declare noundef zeroext i1 @_ZNK2v88internal3Map23OnlyHasSimplePropertiesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE(ptr noundef %0, ptr nofree readonly captures(none) %1, i8 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %3, 16384
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %3, 16383
  %i.d = add nsw i64 %i.c, -1
  %i.e = add i64 %i.d, %i.a
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.a, 7
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  %.pre.i.i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 10624
  %.pre11.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  br i1 %i.j, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 312
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.h, %i.l
  br i1 %i.m, label %.critedge.i.i.i, label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 304
  %i.o = load i64, ptr %i.n, align 8
  br label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i

_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i: ; preds = %.critedge.i.i.i, %bb.d
  %.sroa.05.0.i.i.i = phi i64 [ %i.o, %.critedge.i.i.i ], [ %i.h, %bb.d ]
  %sh.diff.i.i = lshr i64 %3, 27
  %i.p = and i64 %sh.diff.i.i, 120
  %.mask.i.i = and i64 %3, 16376
  %i.q = add nuw nsw i64 %.mask.i.i, 15
  %i.r = sub nsw i64 %i.q, %i.p
  %i.s = add i64 %i.r, %.sroa.05.0.i.i.i
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit: ; preds = %bb.b, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i
  %.sink9.i.i = phi i64 [ %i.s, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i.i ], [ %i.e, %bb.b ]
  %i.t = inttoptr i64 %.sink9.i.i to ptr
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.e, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.e:                                             ; preds = %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit
  %i.aa = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit, %bb.e
  %.0.i = phi ptr [ %i.aa, %bb.e ], [ %i.w, %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit ] ; 3 uses
  %i.ab = ptrtoint ptr %.0.i to i64
  %i.ac = add i64 %i.ab, 8
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.v, align 8
  store i64 %i.u, ptr %.0.i, align 8
  %i.ae = tail call ptr @_ZN2v88internal6Object11WrapForReadILNS0_14AllocationTypeE0ENS0_7IsolateEEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPT0_SH_NS0_14RepresentationE(ptr noundef nonnull %0, ptr nonnull %.0.i, i8 %2) #21
  ret ptr %i.ae
}

declare ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal21GetOwnValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_14PropertyFilterEbb(ptr noundef %0, ptr %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::Handle.490", align 8 ; 5 uses
  %10 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr null, ptr %9, align 8
  %i.a = icmp eq i32 %2, 18
  %or.cond = and i1 %3, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = call i16 @_ZN2v88internal25FastGetOwnValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEbPNS0_6HandleINS0_10FixedArrayEEE(ptr noundef %0, ptr %1, i1 noundef zeroext %4, ptr noundef nonnull %9) ; 2 uses
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %_ZNKR2v85MaybeIbE8FromJustEv.exit55, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit55:              ; preds = %bb.b
  %.not139 = icmp samesign ult i16 %i.b, 256
  br i1 %.not139, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit55
  %.sroa.027.0.copyload = load ptr, ptr %9, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.d:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit55, %bb.a
  %i.d = and i32 %2, -3
  %i.e = tail call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef %0, ptr %1, i32 noundef 0, i32 noundef %i.d, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #21 ; 4 uses
  %.not140 = icmp eq ptr %i.e, null
  br i1 %.not140, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.l, i8 noundef zeroext 0, i8 0) #21 ; 2 uses
  %i.n = load i64, ptr %i.e, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32
  %.not53144 = icmp sgt i32 %i.t, 0
  br i1 %.not53144, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.w = and i32 %2, 2
  %.not = icmp eq i32 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ] ; 2 uses
  %i.aa = phi ptr [ %i.p, %.lr.ph ], [ %i.cx, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ]
  %.048147 = phi i32 [ 0, %.lr.ph ], [ %.250134, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.v, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ah = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.ae, %bb.f ] ; 5 uses
  %i.ai = ptrtoint ptr %.0.i.i to i64
  %i.aj = add i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.ak, ptr %i.u, align 8
  store i64 %i.ad, ptr %.0.i.i, align 8
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i8 0, ptr %10, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %0, ptr nonnull %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %7, align 8
  %i.al = load i64, ptr %i.y, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull %0, ptr %1, ptr %.sroa.0.0.copyload.i.i.i, i64 noundef %i.al, ptr %1, i32 noundef 1)
  %i.am = call i16 @_ZN2v88internal10JSReceiver24GetOwnPropertyDescriptorEPNS0_14LookupIteratorEPNS0_18PropertyDescriptorE(ptr noundef nonnull %8, ptr noundef nonnull %10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.an = trunc i16 %i.am to i1
  br i1 %i.an, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.h
  %i.ao = and i16 %i.am, 256
  %.not141 = icmp eq i16 %i.ao, 0
  br i1 %.not141, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread152, label %bb.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread152: ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.i:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
end_hunk_0
