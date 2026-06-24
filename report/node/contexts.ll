inline.NumInlined: 1533
inline.NumDeleted: 632
begin_hunk_0_@_ZNK2v88internal7Context16extension_objectEv:bb.a
  %i.d = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 10624
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.c, %i.h
  %spec.select = select i1 %i.i, i64 0, i64 %i.c
  ret i64 %spec.select
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal7Context18extension_receiverEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 230
  %i.h = add i64 %.sroa.0.0.copyload.i.i.i.i, 31
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10624
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.j, %i.o
  %spec.select.i = select i1 %i.p, i64 0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %spec.select.i, %bb.b ], [ %i.j, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal7Context6moduleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.03.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.03.0.copyload, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 227
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.018 = phi i64 [ %i.j, %.lr.ph ], [ %.sroa.03.0.copyload, %bb.a ]
  %i.h = add i64 %.sroa.08.018, 23
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 3 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp eq i16 %i.p, 227
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.08.0.lcssa = phi i64 [ %.sroa.03.0.copyload, %bb.a ], [ %i.j, %.lr.ph ]
  %i.r = add i64 %.sroa.08.0.lcssa, 31
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  ret i64 %i.t
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal7Context13global_objectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 31
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  ret i64 %i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal7Context14script_contextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.01.0.copyload, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 229
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.011 = phi i64 [ %i.j, %.lr.ph ], [ %.sroa.01.0.copyload, %bb.a ]
  %i.h = add i64 %.sroa.03.011, 23
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 3 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp eq i16 %i.p, 229
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.03.0.lcssa = phi i64 [ %.sroa.01.0.copyload, %bb.a ], [ %i.j, %.lr.ph ]
  ret i64 %.sroa.03.0.lcssa
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal7Context12global_proxyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 39
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal7Context6LookupENS0_6HandleIS1_EENS2_INS0_6StringEEENS0_18ContextLookupFlagsEPiPNS0_18PropertyAttributesEPNS0_18InitializationFlagEPNS0_12VariableModeEPb(ptr nofree readonly captures(ret: address, provenance) %0, ptr %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %9 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %10 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %11 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 5 uses
  %14 = alloca %"struct.v8::internal::VariableLookupResult", align 4 ; 8 uses
  %15 = alloca %"class.v8::internal::LookupIterator", align 8 ; 19 uses
  %16 = alloca %"struct.v8::internal::VariableLookupResult", align 4 ; 7 uses
  %17 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 5 uses
  %19 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %22 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.e = load ptr, ptr %i.d, align 8              ; 24 uses
  %i.f = and i32 %2, 1
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  store i32 -1, ptr %3, align 4
  store i32 64, ptr %4, align 4
  store i8 1, ptr %5, align 1
  store i8 4, ptr %6, align 1
  %.not145 = icmp eq ptr %7, null                 ; 2 uses
  br i1 %.not145, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %7, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 8 uses
  %i.i = and i32 %2, 2
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 55448 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 64088 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 64080 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 55464
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = add i64 %i.bh, -55464
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9744
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.bs
  %.sroa.0346.0 = phi ptr [ %0, %bb.c ], [ %.sroa.0346.3, %bb.bs ] ; 17 uses
  %.0 = phi i1 [ false, %bb.c ], [ %.2, %bb.bs ]  ; 3 uses
  %i.bl = load i64, ptr %.sroa.0346.0, align 8    ; 3 uses
  %i.bm = add i64 %i.bl, -1
  %i.bn = inttoptr i64 %i.bm to ptr               ; 4 uses
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = icmp eq i16 %i.br, 228
  br i1 %i.bs, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 230
  br i1 %i.bx, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = icmp eq i16 %i.cb, 226
  br i1 %i.cc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.ce = add i64 %i.cd, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i16, ptr %i.cf monotonic, align 2
  %i.ch = icmp eq i16 %i.cg, 222
  br i1 %i.ch, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.ci = add i64 %i.bl, 15
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load i64, ptr %i.cj, align 8
  store i64 %i.ck, ptr %13, align 8
  %i.cl = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23HasContextExtensionSlotEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  br i1 %i.cl, label %_ZNK2v88internal7Context13has_extensionEv.exit, label %_ZNK2v88internal7Context13has_extensionEv.exit.thread

_ZNK2v88internal7Context13has_extensionEv.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %.thread

_ZNK2v88internal7Context13has_extensionEv.exit:   ; preds = %bb.h
  %i.cm = add i64 %i.bl, 31
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8
  %i.cp = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10624
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ct = load i64, ptr %i.cs, align 8            ; 3 uses
  %.not594 = icmp eq i64 %i.co, %i.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br i1 %.not594, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal7Context13has_extensionEv.exit
  %i.cu = load i64, ptr %.sroa.0346.0, align 8    ; 2 uses
  %i.cv = add i64 %i.cu, -1
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %i.cx = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %i.cy = add i64 %i.cx, 11
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load atomic volatile i16, ptr %i.cz monotonic, align 2
  %i.db = icmp ne i16 %i.da, 230
  %i.dc = add i64 %i.cu, 31
  %i.dd = inttoptr i64 %i.dc to ptr               ; 2 uses
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.ct
  %or.cond = select i1 %i.db, i1 %i.df, i1 false
  %.not595 = icmp eq i64 %i.de, 0
  %or.cond738 = select i1 %or.cond, i1 true, i1 %.not595
  br i1 %or.cond738, label %.thread, label %_ZNK2v88internal7Context18extension_receiverEv.exit183

_ZNK2v88internal7Context18extension_receiverEv.exit183: ; preds = %bb.i
  %i.dg = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %i.dh = add i64 %i.dg, 11
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i16, ptr %i.di monotonic, align 2
  %i.dk = icmp eq i16 %i.dj, 230
  %i.dl = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.dm = icmp ne i64 %i.dl, %i.ct
  %i.dn = select i1 %i.dk, i1 true, i1 %i.dm
  %.sroa.0.0.i182 = select i1 %i.dn, i64 %i.dl, i64 0
  %i.do = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dp = load ptr, ptr %i.h, align 8
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %bb.j, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit163, !prof !5

bb.j:                                             ; preds = %_ZNK2v88internal7Context18extension_receiverEv.exit183
  %i.dr = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #12
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit163

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit163: ; preds = %_ZNK2v88internal7Context18extension_receiverEv.exit183, %bb.j
  %.0.i162 = phi ptr [ %i.dr, %bb.j ], [ %i.do, %_ZNK2v88internal7Context18extension_receiverEv.exit183 ] ; 8 uses
  %i.ds = ptrtoint ptr %.0.i162 to i64            ; 2 uses
  %i.dt = add i64 %i.ds, 8
  %i.du = inttoptr i64 %i.dt to ptr
  store ptr %i.du, ptr %i.g, align 8
  store i64 %.sroa.0.0.i182, ptr %.0.i162, align 8
  %i.dv = load i64, ptr %.sroa.0346.0, align 8
  %i.dw = add i64 %i.dv, -1
  %i.dx = inttoptr i64 %i.dw to ptr               ; 2 uses
  %i.dy = load atomic volatile i64, ptr %i.dx monotonic, align 8
  %i.dz = add i64 %i.dy, 11
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load atomic volatile i16, ptr %i.ea monotonic, align 2
  %i.ec = icmp eq i16 %i.eb, 228
  br i1 %i.ec, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit163
  %i.ed = load atomic volatile i64, ptr %i.dx monotonic, align 8
  %i.ee = add i64 %i.ed, 31
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = add i64 %i.eg, 1599
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load atomic volatile i64, ptr %i.ei monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.ek = add i64 %i.ej, -1
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = add i64 %i.en, -1
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load i64, ptr %1, align 8
  %i.er = call noundef i32 @_ZN2v88internal20NameToIndexHashTable6LookupENS0_6TaggedINS0_4NameEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.ep, i64 %i.eq) #12 ; 3 uses
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %.critedge149, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 2 uses
  %i.eu = sext i32 %i.er to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load atomic volatile i64, ptr %i.ev monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.ex = add i64 %i.ew, 15
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load i64, ptr %i.ey, align 8
  store i64 %i.ez, ptr %12, align 8
  %i.fa = load i64, ptr %1, align 8
  %i.fb = call noundef i32 @_ZN2v88internal9ScopeInfo16ContextSlotIndexENS0_6TaggedINS0_6StringEEEPNS0_20VariableLookupResultE(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 %i.fa, ptr noundef nonnull %14) #12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.fc = icmp sgt i32 %i.fb, -1
  br i1 %i.fc, label %bb.m, label %.critedge149

bb.m:                                             ; preds = %bb.l
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.eu
  store i32 %i.er, ptr %14, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.fb, ptr %i.fe, align 4
  %i.ff = load atomic volatile i64, ptr %i.fd monotonic, align 8
  store i32 %i.fb, ptr %3, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.fh = load i8, ptr %i.fg, align 2             ; 3 uses
  store i8 %i.fh, ptr %6, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 11
  %i.fj = load i8, ptr %i.fi, align 1
  store i8 %i.fj, ptr %5, align 1
  %i.fk = add i8 %i.fh, -1
  %i.fl = icmp ult i8 %i.fk, 3
  %i.fm = add i8 %i.fh, -9
  %i.fn = icmp ult i8 %i.fm, 4
  %i.fo = or i1 %i.fl, %i.fn
  %i.fp = zext i1 %i.fo to i32
  store i32 %i.fp, ptr %4, align 4
  %i.fq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fr = load ptr, ptr %i.h, align 8
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %bb.n, label %.critedge151, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.ft = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #12
  br label %.critedge151

.critedge149:                                     ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %bb.o

bb.o:                                             ; preds = %.critedge149, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit163
  br i1 %i.j, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fu = load i64, ptr %.0.i162, align 8
  %i.fv = add i64 %i.fu, -1
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i64, ptr %i.fw monotonic, align 8
  %i.fy = add i64 %i.fx, 11
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = load atomic volatile i16, ptr %i.fz monotonic, align 2
  %i.gb = icmp eq i16 %i.ga, 2123
  br i1 %i.gb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.e, ptr %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %.sroa.0.0.copyload.i.i.i188 = load ptr, ptr %10, align 8
  %i.gc = load i64, ptr %i.au, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef nonnull %i.e, ptr nonnull %.0.i162, ptr %.sroa.0.0.copyload.i.i.i188, i64 noundef %i.gc, ptr nonnull %.0.i162, i32 noundef 1)
  %i.gd = call i64 @_ZN2v88internal10JSReceiver21GetPropertyAttributesEPNS0_14LookupIteratorE(ptr noundef nonnull %11) #12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %.sroa.0291.0.extract.trunc295 = trunc i64 %i.gd to i1
  %.sroa.11300.0.extract.shift303 = lshr i64 %i.gd, 32
  %.sroa.11300.0.extract.trunc304 = trunc nuw i64 %.sroa.11300.0.extract.shift303 to i32
  br i1 %.sroa.0291.0.extract.trunc295, label %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit, label %.critedge159

bb.r:                                             ; preds = %bb.p
  %i.ge = load i64, ptr %1, align 8
  %i.gf = call noundef zeroext i1 @_ZN2v88internal9ScopeInfo19VariableIsSyntheticENS0_6TaggedINS0_6StringEEE(i64 %i.ge) #12
  br i1 %i.gf, label %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread, label %bb.s

_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread: ; preds = %bb.r
  store i32 64, ptr %4, align 4
  br label %.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.gg = load i64, ptr %1, align 8
  %i.gh = add i64 %i.gg, -1
  %i.gi = inttoptr i64 %i.gh to ptr               ; 3 uses
  %i.gj = load atomic volatile i64, ptr %i.gi monotonic, align 8
  %i.gk = add i64 %i.gj, 11
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load atomic volatile i16, ptr %i.gl monotonic, align 2
  %i.gn = icmp eq i16 %i.gm, 128
  br i1 %i.gn, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.s
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = trunc i32 %i.gp to i1
  br i1 %i.gq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.s
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.gr = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.gr, ptr %15, align 8
  store i32 0, ptr %i.k, align 4
  store i8 0, ptr %i.l, align 8
  store i32 0, ptr %i.m, align 4
  store i32 0, ptr %i.n, align 8
  store ptr %i.e, ptr %i.o, align 8
  store ptr %1, ptr %i.p, align 8
  store ptr null, ptr %i.q, align 8
  store ptr %.0.i162, ptr %i.r, align 8
  store ptr null, ptr %i.s, align 8
  store i64 %i.ds, ptr %i.t, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 -1, i64 16, i1 false)
  %i.gs = load atomic volatile i64, ptr %i.gi monotonic, align 8
  %i.gt = add i64 %i.gs, 11
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = load atomic volatile i16, ptr %i.gu monotonic, align 2
  %i.gw = and i16 %i.gv, -96
  %.not.i21.i.i = icmp eq i16 %i.gw, 32
  br i1 %.not.i21.i.i, label %bb.t, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.t:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.gx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !30, !noundef !31
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = load i8, ptr %i.v, align 8, !range !30
  %i.ha = trunc nuw i8 %i.gz to i1
  %not..i.i.i23.i.i = xor i1 %i.gy, true
  %i.hb = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ha
  br i1 %i.hb, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hc = load i8, ptr %i.w, align 8, !range !30, !noundef !31
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZSt27__throw_bad_optional_accessv() #13
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.u
  %i.he = load ptr, ptr %i.x, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.t
  %.pn.i.i26.i.i = phi ptr [ %i.he, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %i.e, %bb.t ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.hf = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.hg = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr nonnull %1) #12
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.hg, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %1, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.p, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %15) #12
  %i.hh = load i64, ptr %.sroa.0346.0, align 8
  %i.hi = add i64 %i.hh, -1
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = load atomic volatile i64, ptr %i.hj monotonic, align 8
  %i.hl = add i64 %i.hk, 11
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load atomic volatile i16, ptr %i.hm monotonic, align 2
  %i.ho = icmp eq i16 %i.hn, 230
  %i.hp = load ptr, ptr %i.o, align 8             ; 14 uses
  %i.hq = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %15) #12 ; 3 uses
  %i.hr = and i16 %i.hq, 257
  %i.hs = icmp eq i16 %i.hr, 257
  %or.cond81.i = select i1 %i.ho, i1 %i.hs, i1 false
  br i1 %or.cond81.i, label %bb.w, label %bb.af

bb.w:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %.sroa.0.0.copyload.i.i190 = load ptr, ptr %i.r, align 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 8192 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %.pre.pre.i.i = load i64, ptr %i.ht, align 8
  %i.hu = add i64 %.pre.pre.i.i, -1
  %i.hv = inttoptr i64 %i.hu to ptr               ; 3 uses
  %i.hw = load atomic volatile i64, ptr %i.hv monotonic, align 8
  %i.hx = add i64 %i.hw, 11
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = load atomic volatile i16, ptr %i.hy monotonic, align 2
  %i.ia = icmp eq i16 %i.hz, 128
  br i1 %i.ia, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i:  ; preds = %bb.w
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = trunc i32 %i.ic to i1
  br i1 %i.id, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, %bb.w
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i
  %i.ie = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i ]
  store i32 %i.ie, ptr %9, align 8
  store i32 0, ptr %i.y, align 4
  store i8 0, ptr %i.z, align 8
  store i32 0, ptr %i.aa, align 4
  store i32 0, ptr %i.ab, align 8
  store ptr %i.hp, ptr %i.ac, align 8
  store ptr %i.ht, ptr %i.ad, align 8
  store ptr null, ptr %i.ae, align 8
  store ptr %.sroa.0.0.copyload.i.i190, ptr %i.af, align 8
  store ptr null, ptr %i.ag, align 8
  %i.if = ptrtoint ptr %.sroa.0.0.copyload.i.i190 to i64
  store i64 %i.if, ptr %i.ah, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 -1, i64 16, i1 false)
  %i.ig = load atomic volatile i64, ptr %i.hv monotonic, align 8
  %i.ih = add i64 %i.ig, 11
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = load atomic volatile i16, ptr %i.ii monotonic, align 2
  %i.ik = and i16 %i.ij, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.ik, 32
  br i1 %.not.i21.i.i.i.i, label %bb.x, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i

bb.x:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.il = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !30, !noundef !31
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 55448
  %i.io = load i8, ptr %i.in, align 8, !range !30
  %i.ip = trunc nuw i8 %i.io to i1
  %not..i.i.i23.i.i.i.i = xor i1 %i.im, true
  %i.iq = select i1 %not..i.i.i23.i.i.i.i, i1 true, i1 %i.ip
  br i1 %i.iq, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hp, i64 64088
  %i.is = load i8, ptr %i.ir, align 8, !range !30, !noundef !31
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZSt27__throw_bad_optional_accessv() #13
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i: ; preds = %bb.y
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hp, i64 64080
  %i.iv = load ptr, ptr %i.iu, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, %bb.x
  %.pn.i.i26.i.i.i.i = phi ptr [ %i.iv, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i ], [ %i.hp, %bb.x ]
  %.in.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i, i64 58464
  %i.iw = load ptr, ptr %.in.i.i27.i.i.i.i, align 8
  %i.ix = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.iw, ptr noundef nonnull align 1 dereferenceable(1) %i.hp, ptr nonnull %i.ht) #12
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i = phi ptr [ %i.ix, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i ], [ %i.ht, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i, ptr %i.ad, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %9) #12
  %i.iy = load i32, ptr %i.y, align 4
  %.not.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i
  %i.iz = load ptr, ptr %i.ac, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.aa

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i
  %i.jb = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %9, i1 noundef zeroext false) #12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %.not.i = icmp eq ptr %i.jb, null
  br i1 %.not.i, label %.thread689, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i
  %.sroa.07.0.i73.i = phi ptr [ %i.ja, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i ], [ %i.jb, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i ] ; 3 uses
  %i.jc = load i64, ptr %.sroa.07.0.i73.i, align 8 ; 2 uses
  %i.jd = trunc i64 %i.jc to i1
  br i1 %i.jd, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.thread684.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.aa
  %i.je = add nsw i64 %i.jc, -1
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = load atomic volatile i64, ptr %i.jf monotonic, align 8
  %i.jh = add i64 %i.jg, 11
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = load atomic volatile i16, ptr %i.ji monotonic, align 2
  %i.jk = icmp ugt i16 %i.jj, 299
  br i1 %i.jk, label %bb.ab, label %.thread684.thread

bb.ab:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.sroa.0.0.copyload.i18.i = load ptr, ptr %i.p, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %.pre.pre.i19.i = load i64, ptr %.sroa.0.0.copyload.i18.i, align 8
  %i.jl = add i64 %.pre.pre.i19.i, -1
  %i.jm = inttoptr i64 %i.jl to ptr               ; 3 uses
  %i.jn = load atomic volatile i64, ptr %i.jm monotonic, align 8
  %i.jo = add i64 %i.jn, 11
  %i.jp = inttoptr i64 %i.jo to ptr
  %i.jq = load atomic volatile i16, ptr %i.jp monotonic, align 2
  %i.jr = icmp eq i16 %i.jq, 128
  br i1 %i.jr, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i32.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i20.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i32.i: ; preds = %bb.ab
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = trunc i32 %i.jt to i1
  br i1 %i.ju, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i21.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i20.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i20.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i32.i, %bb.ab
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i21.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i21.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i20.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i32.i
  %i.jv = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i20.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i32.i ]
  store i32 %i.jv, ptr %8, align 8
  store i32 0, ptr %i.aj, align 4
  store i8 0, ptr %i.ak, align 8
  store i32 0, ptr %i.al, align 4
  store i32 0, ptr %i.am, align 8
  store ptr %i.hp, ptr %i.an, align 8
  store ptr %.sroa.0.0.copyload.i18.i, ptr %i.ao, align 8
  store ptr null, ptr %i.ap, align 8
  store ptr %.sroa.07.0.i73.i, ptr %i.aq, align 8
  store ptr null, ptr %i.ar, align 8
  %i.jw = ptrtoint ptr %.sroa.07.0.i73.i to i64
  store i64 %i.jw, ptr %i.as, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 -1, i64 16, i1 false)
  %i.jx = load atomic volatile i64, ptr %i.jm monotonic, align 8
  %i.jy = add i64 %i.jx, 11
  %i.jz = inttoptr i64 %i.jy to ptr
  %i.ka = load atomic volatile i16, ptr %i.jz monotonic, align 2
  %i.kb = and i16 %i.ka, -96
  %.not.i21.i.i.i22.i = icmp eq i16 %i.kb, 32
  br i1 %.not.i21.i.i.i22.i, label %bb.ac, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i23.i

bb.ac:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i21.i
  %i.kc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !30, !noundef !31
  %i.kd = trunc nuw i8 %i.kc to i1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hp, i64 55448
  %i.kf = load i8, ptr %i.ke, align 8, !range !30
  %i.kg = trunc nuw i8 %i.kf to i1
  %not..i.i.i23.i.i.i27.i = xor i1 %i.kd, true
  %i.kh = select i1 %not..i.i.i23.i.i.i27.i, i1 true, i1 %i.kg
  br i1 %i.kh, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i29.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hp, i64 64088
  %i.kj = load i8, ptr %i.ki, align 8, !range !30, !noundef !31
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i28.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt27__throw_bad_optional_accessv() #13
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i28.i: ; preds = %bb.ad
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hp, i64 64080
  %i.km = load ptr, ptr %i.kl, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i29.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i29.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i28.i, %bb.ac
  %.pn.i.i26.i.i.i30.i = phi ptr [ %i.km, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i28.i ], [ %i.hp, %bb.ac ]
  %.in.i.i27.i.i.i31.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i30.i, i64 58464
  %i.kn = load ptr, ptr %.in.i.i27.i.i.i31.i, align 8
  %i.ko = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, ptr noundef nonnull align 1 dereferenceable(1) %i.hp, ptr nonnull %.sroa.0.0.copyload.i18.i) #12
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i23.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i23.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i29.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i21.i
  %.sroa.05.0.i22.i.i.i24.i = phi ptr [ %i.ko, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i29.i ], [ %.sroa.0.0.copyload.i18.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i21.i ]
  store ptr %.sroa.05.0.i22.i.i.i24.i, ptr %i.ao, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %8) #12
  %i.kp = load i32, ptr %i.aj, align 4
  %.not.i25.i = icmp eq i32 %i.kp, 0
  br i1 %.not.i25.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.thread.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.i

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i23.i
  %i.kq = load ptr, ptr %i.an, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.thread684

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i23.i
  %i.ks = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %8, i1 noundef zeroext false) #12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %.not82.i = icmp eq ptr %i.ks, null
  br i1 %.not82.i, label %.thread689, label %.thread684

.thread684.thread:                                ; preds = %bb.aa, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread697

.thread684:                                       ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.thread.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.i
  %.sroa.07.0.i2677.i = phi ptr [ %i.kr, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.thread.i ], [ %i.ks, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.i ]
  %i.kt = load i64, ptr %.sroa.07.0.i2677.i, align 8
  %i.ku = call noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64 %i.kt, ptr noundef nonnull %i.hp) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br i1 %i.ku, label %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread694, label %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread697

_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread694: ; preds = %.thread684
  store i32 64, ptr %4, align 4
  br label %.thread

.thread689:                                       ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit33.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %.critedge159

bb.af:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.kv = trunc i16 %i.hq to i1
  %i.kw = and i16 %i.hq, 257
  %.not739 = icmp eq i16 %i.kw, 1
  %.sroa.11300.0 = select i1 %.not739, i32 64, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br i1 %i.kv, label %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit, label %.critedge159

_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread697: ; preds = %.thread684, %.thread684.thread
  store i32 0, ptr %4, align 4
  br label %.critedge159

_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit: ; preds = %bb.q, %bb.af
  %.sroa.11300.1683 = phi i32 [ %.sroa.11300.0.extract.trunc304, %bb.q ], [ %.sroa.11300.0, %bb.af ] ; 2 uses
  store i32 %.sroa.11300.1683, ptr %4, align 4
  %.not146 = icmp eq i32 %.sroa.11300.1683, 64
  br i1 %.not146, label %.thread, label %.critedge159

.thread:                                          ; preds = %bb.i, %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread694, %_ZNK2v88internal7Context13has_extensionEv.exit.thread, %bb.g, %_ZNK2v88internal7Context13has_extensionEv.exit, %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit, %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit.thread
  %i.kx = load i64, ptr %.sroa.0346.0, align 8    ; 5 uses
  %i.ky = add i64 %i.kx, -1
  %i.kz = inttoptr i64 %i.ky to ptr               ; 7 uses
  %i.la = load atomic volatile i64, ptr %i.kz monotonic, align 8
  %i.lb = add i64 %i.la, 11
  %i.lc = inttoptr i64 %i.lb to ptr
  %i.ld = load atomic volatile i16, ptr %i.lc monotonic, align 2
  %i.le = icmp eq i16 %i.ld, 226
  br i1 %i.le, label %.thread582, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.lf = load atomic volatile i64, ptr %i.kz monotonic, align 8
  %i.lg = add i64 %i.lf, 11
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = load atomic volatile i16, ptr %i.lh monotonic, align 2
  %i.lj = icmp eq i16 %i.li, 222
  br i1 %i.lj, label %.thread582, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lk = load atomic volatile i64, ptr %i.kz monotonic, align 8
  %i.ll = add i64 %i.lk, 11
  %i.lm = inttoptr i64 %i.ll to ptr
  %i.ln = load atomic volatile i16, ptr %i.lm monotonic, align 2
  %i.lo = icmp eq i16 %i.ln, 229
  br i1 %i.lo, label %.thread582, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lp = load atomic volatile i64, ptr %i.kz monotonic, align 8
  %i.lq = add i64 %i.lp, 11
  %i.lr = inttoptr i64 %i.lq to ptr
  %i.ls = load atomic volatile i16, ptr %i.lr monotonic, align 2
  %i.lt = icmp eq i16 %i.ls, 225
  br i1 %i.lt, label %.thread582, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lu = load atomic volatile i64, ptr %i.kz monotonic, align 8
  %i.lv = add i64 %i.lu, 11
  %i.lw = inttoptr i64 %i.lv to ptr
  %i.lx = load atomic volatile i16, ptr %i.lw monotonic, align 2
  %i.ly = icmp eq i16 %i.lx, 227
  br i1 %i.ly, label %.thread582, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lz = load atomic volatile i64, ptr %i.kz monotonic, align 8
  %i.ma = add i64 %i.lz, 11
  %i.mb = inttoptr i64 %i.ma to ptr
  %i.mc = load atomic volatile i16, ptr %i.mb monotonic, align 2
  %i.md = icmp eq i16 %i.mc, 223
  br i1 %i.md, label %.thread582, label %bb.bb

.thread582:                                       ; preds = %.thread, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %i.me = add i64 %i.kx, 15
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = load i64, ptr %i.mf, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  store i64 %i.mg, ptr %17, align 8
  %i.mh = load i64, ptr %1, align 8
  %i.mi = call noundef i32 @_ZN2v88internal9ScopeInfo16ContextSlotIndexENS0_6TaggedINS0_6StringEEEPNS0_20VariableLookupResultE(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 %i.mh, ptr noundef nonnull %16) #12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  %i.mj = icmp sgt i32 %i.mi, -1
  br i1 %i.mj, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.thread582
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  store i64 %i.mg, ptr %18, align 8
  %i.mk = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15IsReplModeScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  br i1 %i.mk, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.ml = load i64, ptr %.sroa.0346.0, align 8
  %i.mm = shl nsw i32 %i.mi, 3
  %narrow = add nuw i32 %i.mm, 15
  %i.mn = zext i32 %narrow to i64
  %i.mo = add i64 %i.ml, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = load atomic volatile i64, ptr %i.mp monotonic, align 8
  %i.mr = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 10624
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 104
  %i.mv = load i64, ptr %i.mu, align 8
  %i.mw = icmp eq i64 %i.mq, %i.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  br i1 %i.mw, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.mx = load i64, ptr %.sroa.0346.0, align 8
  %i.my = add i64 %i.mx, 23
  %i.mz = inttoptr i64 %i.my to ptr
  %i.na = load atomic volatile i64, ptr %i.mz monotonic, align 8
  %i.nb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.nc = load ptr, ptr %i.h, align 8
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %bb.ao, label %bb.ba, !prof !5

end_hunk_0
