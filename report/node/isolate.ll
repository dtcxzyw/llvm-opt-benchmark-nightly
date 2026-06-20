inline.NumInlined: 8933
inline.NumDeleted: 4075
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_124TryGetCurrentTaskPromiseEPNS0_7IsolateE:bb.a

bb.m:                                             ; preds = %bb.j
  br i1 %i.dh, label %bb.n, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.dm = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i71 = phi ptr [ %i.dm, %bb.n ], [ %i.df, %bb.m ] ; 2 uses
  %i.dn = ptrtoint ptr %.0.i.i71 to i64
  %i.do = add i64 %i.dn, 8
  %i.dp = inttoptr i64 %i.do to ptr
  store ptr %i.dp, ptr %i.by, align 8
  store i64 %i.de, ptr %.0.i.i71, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = icmp eq i64 %i.de, %i.dr
  br i1 %i.ds, label %.critedge67, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.dt = add i64 %i.de, 31
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.dx = load ptr, ptr %i.ca, align 8
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %bb.p, label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit77, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.dz = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit77

_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit77: ; preds = %bb.o, %bb.p
  %.0.i.i76 = phi ptr [ %i.dz, %bb.p ], [ %i.dw, %bb.o ] ; 3 uses
  %i.ea = ptrtoint ptr %.0.i.i76 to i64
  %i.eb = add i64 %i.ea, 8
  %i.ec = inttoptr i64 %i.eb to ptr
  store ptr %i.ec, ptr %i.by, align 8
  store i64 %i.dv, ptr %.0.i.i76, align 8
  br label %.critedge63

_ZN2v88internal12_GLOBAL__N_127IsBuiltinAsyncRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread247: ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_127IsBuiltinAsyncRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.ed = load i64, ptr %i.a, align 8
  %i.ee = add i64 %i.ed, 31
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119TryGetWasmSuspenderEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef %0, i64 %i.eg) ; 2 uses
  %.not = icmp eq ptr %i.eh, null
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = icmp eq ptr %i.ej, %i.el                ; 2 uses
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge65

.critedge65:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_127IsBuiltinAsyncRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread247
  %i.en = load i64, ptr %i.eh, align 8
  %i.eo = add i64 %i.en, 23
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load i64, ptr %i.ep, align 8
  br i1 %i.em, label %bb.q, label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.q:                                             ; preds = %.critedge65
  %i.er = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.critedge65, %bb.q
  %.0.i.i73 = phi ptr [ %i.er, %bb.q ], [ %i.ej, %.critedge65 ] ; 3 uses
  %i.es = ptrtoint ptr %.0.i.i73 to i64
  %i.et = add i64 %i.es, 8
  %i.eu = inttoptr i64 %i.et to ptr
  store ptr %i.eu, ptr %i.ei, align 8
  store i64 %i.eq, ptr %.0.i.i73, align 8
  br label %.critedge63

_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_127IsBuiltinAsyncRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread247
  %i.ev = load i64, ptr %i.a, align 8
  %i.ew = add i64 %i.ev, 39
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load i64, ptr %i.ex, align 8            ; 2 uses
  br i1 %i.em, label %bb.r, label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.r:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.ez = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.r
  %.0.i.i69 = phi ptr [ %i.ez, %bb.r ], [ %i.ej, %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 3 uses
  %i.fa = ptrtoint ptr %.0.i.i69 to i64
  %i.fb = add i64 %i.fa, 8
  %i.fc = inttoptr i64 %i.fb to ptr
  store ptr %i.fc, ptr %i.ei, align 8
  store i64 %i.ey, ptr %.0.i.i69, align 8
  %i.fd = add i64 %i.ey, -1
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load atomic volatile i64, ptr %i.fe monotonic, align 8
  %i.fg = add i64 %i.ff, 11
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load atomic volatile i16, ptr %i.fh monotonic, align 2
  %.not250 = icmp eq i16 %i.fi, 2115
  br i1 %.not250, label %.critedge63, label %.critedge67

_ZN2v88internal31IsPromiseResolveThenableJobTaskENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal24IsPromiseReactionJobTaskENS0_6TaggedINS0_6ObjectEEE.exit
  %i.fj = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.fk = add i64 %i.fj, 11
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = load atomic volatile i16, ptr %i.fl monotonic, align 2
  %i.fn = icmp eq i16 %i.fm, 136
  br i1 %i.fn, label %bb.s, label %.critedge67

bb.s:                                             ; preds = %_ZN2v88internal31IsPromiseResolveThenableJobTaskENS0_6TaggedINS0_6ObjectEEE.exit
  %i.fo = add i64 %i.b, 23
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = icmp eq ptr %i.fs, %i.fu
  br i1 %i.fv, label %bb.t, label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.fw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79

_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79: ; preds = %bb.s, %bb.t
  %.0.i.i78 = phi ptr [ %i.fw, %bb.t ], [ %i.fs, %bb.s ] ; 3 uses
  %i.fx = ptrtoint ptr %.0.i.i78 to i64
  %i.fy = add i64 %i.fx, 8
  %i.fz = inttoptr i64 %i.fy to ptr
  store ptr %i.fz, ptr %i.fr, align 8
  store i64 %i.fq, ptr %.0.i.i78, align 8
  br label %.critedge63

.critedge67:                                      ; preds = %bb.a, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal31IsPromiseResolveThenableJobTaskENS0_6TaggedINS0_6ObjectEEE.exit
  br label %.critedge63

.critedge63:                                      ; preds = %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit77, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit75, %.critedge67, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79
  %.sroa.0151.3 = phi ptr [ %.0.i.i78, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79 ], [ null, %.critedge67 ], [ %.0.i.i69, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0.i.i73, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0.i.i74, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit75 ], [ %.0.i.i76, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit77 ]
  ret ptr %.sroa.0151.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE(ptr noundef nonnull %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %4 = alloca %"struct.v8::internal::Isolate::PromiseHandler", align 8 ; 5 uses
  %5 = alloca %"struct.v8::internal::Isolate::PromiseHandler", align 8 ; 5 uses
  %6 = alloca %"struct.v8::internal::Isolate::PromiseHandler", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::HandlerTable", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.507", align 8 ; 5 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.666", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %9, align 8
  %i.b = call noundef i32 @_ZNK2v88internal9JSPromise6statusEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #46
  %.not = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br i1 %.not, label %bb.b, label %.thread408

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 22 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 11 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i134 = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.m = ptrtoint ptr %.0.i.i134 to i64
  %i.n = add i64 %i.m, 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8
  store i64 %i.f, ptr %.0.i.i134, align 8
  %i.p = and i64 %i.f, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 58992 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit
  %i.y = phi i64 [ %i.f, %.lr.ph ], [ %i.mb, %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ]
  %.0111431 = phi i8 [ 0, %.lr.ph ], [ %.2113, %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ] ; 4 uses
  %.0114430 = phi i8 [ 0, %.lr.ph ], [ %.2116, %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ] ; 4 uses
  %.sroa.0251.0427 = phi ptr [ %.0.i.i134, %.lr.ph ], [ %.0.i.i136, %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ] ; 6 uses
  %i.z = add i64 %i.y, 39
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.af = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i132 = phi ptr [ %i.af, %bb.e ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ag = ptrtoint ptr %.0.i.i132 to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.g, align 8
  store i64 %i.ab, ptr %.0.i.i132, align 8
  %i.aj = load i64, ptr %i.r, align 8
  %i.ak = icmp eq i64 %i.ab, %i.aj
  br i1 %i.ak, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.al = add i64 %i.ab, -1
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = icmp eq i16 %i.aq, 2115
  br i1 %i.ar, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = add i64 %i.ab, 7
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.i, align 8
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.ay = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i138 = phi ptr [ %i.ay, %bb.h ], [ %i.av, %bb.g ] ; 3 uses
  %i.az = ptrtoint ptr %.0.i.i138 to i64
  %i.ba = add i64 %i.az, 8
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr %i.bb, ptr %i.g, align 8
  store i64 %i.au, ptr %.0.i.i138, align 8
  %.pre434 = add i64 %i.au, -1
  %.pre435 = inttoptr i64 %.pre434 to ptr
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit, %bb.f
  %.pre-phi436 = phi ptr [ %.pre435, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ], [ %i.am, %bb.f ]
  %.sroa.0244.0 = phi ptr [ %.0.i.i138, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ], [ %.0.i.i132, %bb.f ]
  %i.bc = load atomic volatile i64, ptr %.pre-phi436 monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = icmp eq i16 %i.bf, 2115
  br i1 %i.bg, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.j:                                             ; preds = %bb.i
  %i.bh = load i64, ptr %.sroa.0251.0427, align 8
  %i.bi = add i64 %i.bh, 23
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = load i64, ptr %i.r, align 8
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread396, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.i, align 8
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.l, label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.bq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i139 = phi ptr [ %i.bq, %bb.l ], [ %i.bn, %bb.k ] ; 8 uses
  %i.br = ptrtoint ptr %.0.i.i139 to i64
  %i.bs = add i64 %i.br, 8
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %i.g, align 8
  store i64 %i.bk, ptr %.0.i.i139, align 8
  %i.bu = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_127ReceiverIsForwardingHandlerEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr nonnull %.0.i.i139)
  br i1 %i.bu, label %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread396, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bv = load i64, ptr %.0.i.i139, align 8       ; 3 uses
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = add i16 %i.cb, -2065
  %i.cd = icmp ult i16 %i.cc, 17
  br i1 %i.cd, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 10688
  %i.cg = add i64 %i.bv, 23
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load atomic volatile i32, ptr %i.ch monotonic, align 4
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = load ptr, ptr %i.cf, align 8
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load atomic i64, ptr %i.cm monotonic, align 8
  %i.co = icmp ugt i64 %i.cn, -281474976710657
  br i1 %i.co, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.i, !prof !7

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.112) #45
  unreachable

_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.i: ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load atomic i64, ptr %i.cp monotonic, align 8
  %i.cr = lshr i64 %i.cq, 16
  %i.cs = or i64 %i.cr, 1
  %i.ct = call i64 @_ZN2v88internal8Builtins4codeENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i32 noundef 1130) #46
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread.i

_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.i, %bb.m
  %i.cv = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.cw = add i64 %i.cv, 11
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load atomic volatile i16, ptr %i.cx monotonic, align 2
  %i.cz = add i16 %i.cy, -2065
  %i.da = icmp ult i16 %i.cz, 17
  br i1 %i.da, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread396

bb.p:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread.i
  %i.db = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 10688
  %i.dd = add i64 %i.bv, 23
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load atomic volatile i32, ptr %i.de monotonic, align 4
  %i.dg = lshr i32 %i.df, 8
  %i.dh = load ptr, ptr %i.dc, align 8
  %i.di = zext nneg i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.di ; 2 uses
  %i.dk = load atomic i64, ptr %i.dj monotonic, align 8
  %i.dl = icmp ugt i64 %i.dk, -281474976710657
  br i1 %i.dl, label %bb.q, label %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !7

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.112) #45
  unreachable

_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dn = load atomic i64, ptr %i.dm monotonic, align 8
  %i.do = lshr i64 %i.dn, 16
  %i.dp = or i64 %i.do, 1
  %i.dq = call i64 @_ZN2v88internal8Builtins4codeENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i32 noundef 767) #46
  %i.dr = icmp eq i64 %i.dp, %i.dq
  %cond.fr = freeze i1 %i.dr
  br i1 %cond.fr, label %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread396

_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.i, %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit
  br label %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread396

_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread396: ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.j
  %.sroa.0232.0 = phi ptr [ null, %bb.j ], [ %.0.i.i139, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0.i.i139, %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread ], [ %.0.i.i139, %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %.0.i.i139, %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread.i ]
  %.0117 = phi i1 [ false, %bb.j ], [ false, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ false, %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread ], [ true, %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ true, %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread.i ] ; 2 uses
  %i.ds = load i64, ptr %.sroa.0251.0427, align 8
  %i.dt = add i64 %i.ds, 31
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_128IsBuiltinAsyncFulfillHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull %0, i64 %i.dv)
  %i.dx = load i64, ptr %.sroa.0251.0427, align 8
  %i.dy = add i64 %i.dx, 31
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load i64, ptr %i.dz, align 8            ; 3 uses
  br i1 %i.dw, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread396
  %i.eb = add i64 %i.ea, 39
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.ee = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ef = load ptr, ptr %i.i, align 8
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %bb.s, label %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !7

bb.s:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE:bb.a
  br i1 %.not.i.i, label %bb.z, label %bb.ap

bb.z:                                             ; preds = %bb.y
  call void @_ZSt25__throw_bad_function_callv() #45
  unreachable

bb.aa:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_132IsBuiltinForwardingRejectHandlerEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.thread396
  %i.ho = load i64, ptr %i.r, align 8
  %i.hp = icmp eq i64 %i.ea, %i.ho
  br i1 %i.hp, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.hr = load ptr, ptr %i.i, align 8
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %bb.ac, label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit143, !prof !7

bb.ac:                                            ; preds = %bb.ab
  %i.ht = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit143

_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit143: ; preds = %bb.ab, %bb.ac
  %.0.i.i142 = phi ptr [ %i.ht, %bb.ac ], [ %i.hq, %bb.ab ] ; 5 uses
  %i.hu = ptrtoint ptr %.0.i.i142 to i64
  %i.hv = add i64 %i.hu, 8
  %i.hw = inttoptr i64 %i.hv to ptr
  store ptr %i.hw, ptr %i.g, align 8
  store i64 %i.ea, ptr %.0.i.i142, align 8
  %i.hx = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_127ReceiverIsForwardingHandlerEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr nonnull %.0.i.i142)
  br i1 %i.hx, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit143
  %i.hy = load i64, ptr %.0.i.i142, align 8       ; 3 uses
  %i.hz = add i64 %i.hy, -1
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = load atomic volatile i64, ptr %i.ia monotonic, align 8
  %i.ic = add i64 %i.ib, 11
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = load atomic volatile i16, ptr %i.id monotonic, align 2
  %i.if = add i16 %i.ie, -2065
  %i.ig = icmp ult i16 %i.if, 17
  br i1 %i.ig, label %bb.ae, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ih = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 10688
  %i.ij = add i64 %i.hy, 23
  %i.ik = inttoptr i64 %i.ij to ptr
  %i.il = load atomic volatile i32, ptr %i.ik monotonic, align 4
  %i.im = lshr i32 %i.il, 8
  %i.in = load ptr, ptr %i.ii, align 8
  %i.io = zext nneg i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %i.io ; 2 uses
  %i.iq = load atomic i64, ptr %i.ip monotonic, align 8
  %i.ir = icmp ugt i64 %i.iq, -281474976710657
  br i1 %i.ir, label %bb.af, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit, !prof !7

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.112) #45
  unreachable

_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit: ; preds = %bb.ae
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.it = load atomic i64, ptr %i.is monotonic, align 8
  %i.iu = lshr i64 %i.it, 16
  %i.iv = or i64 %i.iu, 1
  %i.iw = call i64 @_ZN2v88internal8Builtins4codeENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i32 noundef 1131) #46
  %i.ix = icmp eq i64 %i.iv, %i.iw
  br i1 %i.ix, label %bb.ag, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit._ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread_crit_edge

_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit._ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread_crit_edge: ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit
  %.pre = load i64, ptr %.0.i.i142, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

bb.ag:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit
  %i.iy = load i64, ptr %.sroa.0251.0427, align 8
  %i.iz = add i64 %i.iy, 31
  %i.ja = inttoptr i64 %i.iz to ptr
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = add i64 %i.jb, 39
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = load i64, ptr %i.jd, align 8            ; 2 uses
  %i.jf = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jg = load ptr, ptr %i.i, align 8
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.ah, label %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.ah:                                            ; preds = %bb.ag
  %i.ji = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ag, %bb.ah
  %.0.i.i = phi ptr [ %i.ji, %bb.ah ], [ %i.jf, %bb.ag ] ; 2 uses
  %i.jj = ptrtoint ptr %.0.i.i to i64
  %i.jk = add i64 %i.jj, 8
  %i.jl = inttoptr i64 %i.jk to ptr
  store ptr %i.jl, ptr %i.g, align 8
  store i64 %i.je, ptr %.0.i.i, align 8
  %i.jm = add i64 %i.je, 31
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load atomic volatile i64, ptr %i.jn monotonic, align 8 ; 2 uses
  %i.jp = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jq = load ptr, ptr %i.i, align 8
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.ai, label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141, !prof !7

bb.ai:                                            ; preds = %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.js = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141

_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141: ; preds = %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.ai
  %.0.i.i140 = phi ptr [ %i.js, %bb.ai ], [ %i.jp, %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %i.jt = ptrtoint ptr %.0.i.i140 to i64
  %i.ju = add i64 %i.jt, 8
  %i.jv = inttoptr i64 %i.ju to ptr
  store ptr %i.jv, ptr %i.g, align 8
  store i64 %i.jo, ptr %.0.i.i140, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit._ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread_crit_edge, %bb.ad, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141
  %i.jw = phi i64 [ %i.jo, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141 ], [ %.pre, %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit._ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread_crit_edge ], [ %i.hy, %bb.ad ] ; 2 uses
  %i.jx = add i64 %i.jw, -1
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = load atomic volatile i64, ptr %i.jy monotonic, align 8
  %i.ka = add i64 %i.jz, 11
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = load atomic volatile i16, ptr %i.kb monotonic, align 2
  %i.kd = add i16 %i.kc, -2065
  %i.ke = icmp ult i16 %i.kd, 17
  br i1 %i.ke, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread
  %i.kf = add i64 %i.jw, 31
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = load atomic volatile i64, ptr %i.kg monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.kh, ptr %5, align 8
  store i8 1, ptr %i.t, align 8
  %i.ki = load ptr, ptr %i.u, align 8
  %.not.i.i159 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i159, label %bb.ak, label %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit160

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt25__throw_bad_function_callv() #45
  unreachable

_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit160: ; preds = %bb.aj
  %i.kj = load ptr, ptr %i.v, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(9) %5) #46, !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit143, %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit160, %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread, %bb.aa
  br i1 %.0117, label %bb.am, label %.thread403

bb.am:                                            ; preds = %bb.al
  %i.kk = load i64, ptr %.sroa.0232.0, align 8    ; 2 uses
  %i.kl = add i64 %i.kk, -1
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = load atomic volatile i64, ptr %i.km monotonic, align 8
  %i.ko = add i64 %i.kn, 11
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = load atomic volatile i16, ptr %i.kp monotonic, align 2
  %i.kr = add i16 %i.kq, -2065
  %i.ks = icmp ult i16 %i.kr, 17
  br i1 %i.ks, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.kt = add i64 %i.kk, 31
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = load atomic volatile i64, ptr %i.ku monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %i.kv, ptr %4, align 8
  store i8 1, ptr %i.w, align 8
  %i.kw = load ptr, ptr %i.u, align 8
  %.not.i.i163 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i163, label %bb.ao, label %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit164

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt25__throw_bad_function_callv() #45
  unreachable

_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit164: ; preds = %bb.an
  %i.kx = load ptr, ptr %i.v, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(9) %4) #46, !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.thread

bb.ap:                                            ; preds = %bb.y
  %i.ky = load ptr, ptr %i.v, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(9) %6) #46, !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.hg, label %.thread, label %.thread403

.thread403:                                       ; preds = %bb.al, %bb.ap
  %i.kz = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE(ptr noundef %0, ptr nonnull %.sroa.0244.0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %.thread

.thread:                                          ; preds = %bb.am, %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit164, %.thread403, %bb.ap
  %i.la = phi i1 [ true, %bb.ap ], [ %i.kz, %.thread403 ], [ true, %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit164 ], [ true, %bb.am ] ; 2 uses
  %10 = trunc nuw i8 %.0111431 to i1
  %i.lb = or i1 %i.la, %10
  %11 = zext i1 %i.lb to i8
  %12 = trunc nuw i8 %.0114430 to i1
  %i.lc = xor i1 %i.la, true
  %i.ld = or i1 %12, %i.lc
  %13 = zext i1 %i.ld to i8
  br label %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.aq:                                            ; preds = %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.le = load i64, ptr %.sroa.0251.0427, align 8
  %i.lf = add i64 %i.le, 31
  %i.lg = inttoptr i64 %i.lf to ptr
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119TryGetWasmSuspenderEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef %0, i64 %i.lh) ; 2 uses
  %.not410 = icmp eq ptr %i.li, null
  br i1 %.not410, label %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = add i64 %i.lj, 23
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lo = load ptr, ptr %i.i, align 8
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.as, label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.as:                                            ; preds = %bb.ar
  %i.lq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ar, %bb.as
  %.0.i.i137 = phi ptr [ %i.lq, %bb.as ], [ %i.ln, %bb.ar ] ; 3 uses
  %i.lr = ptrtoint ptr %.0.i.i137 to i64
  %i.ls = add i64 %i.lr, 8
  %i.lt = inttoptr i64 %i.ls to ptr
  store ptr %i.lt, ptr %i.g, align 8
  store i64 %i.lm, ptr %.0.i.i137, align 8
  %i.lu = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE(ptr noundef %0, ptr nonnull %.0.i.i137, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %14 = trunc nuw i8 %.0111431 to i1
  %i.lv = or i1 %i.lu, %14
  %15 = zext i1 %i.lv to i8
  %16 = trunc nuw i8 %.0114430 to i1
  %i.lw = xor i1 %i.lu, true
  %i.lx = or i1 %16, %i.lw
  %17 = zext i1 %i.lx to i8
  br label %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.aq, %bb.i, %.thread
  %.2116 = phi i8 [ %13, %.thread ], [ %.0114430, %bb.i ], [ %17, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0114430, %bb.aq ] ; 2 uses
  %.2113 = phi i8 [ %11, %.thread ], [ %.0111431, %bb.i ], [ %15, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0111431, %bb.aq ] ; 2 uses
  %i.ly = load i64, ptr %.sroa.0251.0427, align 8
  %i.lz = add i64 %i.ly, 15
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = load i64, ptr %i.ma, align 8            ; 3 uses
  %i.mc = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.md = load ptr, ptr %i.i, align 8
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %bb.at, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit, !prof !7

bb.at:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.mf = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.at
  %.0.i.i136 = phi ptr [ %i.mf, %bb.at ], [ %i.mc, %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 3 uses
  %i.mg = ptrtoint ptr %.0.i.i136 to i64
  %i.mh = add i64 %i.mg, 8
  %i.mi = inttoptr i64 %i.mh to ptr
  store ptr %i.mi, ptr %i.g, align 8
  store i64 %i.mb, ptr %.0.i.i136, align 8
  %i.mj = and i64 %i.mb, 1
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %._crit_edge, label %bb.d, !llvm.loop !112

._crit_edge:                                      ; preds = %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit
  %18 = trunc nuw i8 %.2113 to i1
  %19 = trunc nuw i8 %.2116 to i1
  %not. = xor i1 %18, true
  %i.ml = select i1 %not., i1 true, i1 %19
  br i1 %i.ml, label %._crit_edge.thread, label %.thread408

._crit_edge.thread:                               ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %._crit_edge
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8016 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %.pre.pre.i = load i64, ptr %i.mm, align 8
  %i.mn = add i64 %.pre.pre.i, -1
  %i.mo = inttoptr i64 %i.mn to ptr               ; 3 uses
  %i.mp = load atomic volatile i64, ptr %i.mo monotonic, align 8
  %i.mq = add i64 %i.mp, 11
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = load atomic volatile i16, ptr %i.mr monotonic, align 2
  %i.mt = icmp eq i16 %i.ms, 128
  br i1 %i.mt, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %._crit_edge.thread
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %i.mv = load i32, ptr %i.mu, align 4
  %i.mw = trunc i32 %i.mv to i1
  br i1 %i.mw, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %._crit_edge.thread
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.mx = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.mx, ptr %3, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.my, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.na, align 4
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.mm, ptr %i.nd, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ni = ptrtoint ptr %1 to i64
  store i64 %i.ni, ptr %i.nh, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, i8 -1, i64 16, i1 false)
  %i.nk = load atomic volatile i64, ptr %i.mo monotonic, align 8
  %i.nl = add i64 %i.nk, 11
  %i.nm = inttoptr i64 %i.nl to ptr
  %i.nn = load atomic volatile i16, ptr %i.nm monotonic, align 2
  %i.no = and i16 %i.nn, -96
  %.not.i21.i.i.i = icmp eq i16 %i.no, 32
  br i1 %.not.i21.i.i.i, label %bb.au, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.au:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.np = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.nq = trunc nuw i8 %i.np to i1
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ns = load i8, ptr %i.nr, align 8, !range !13
  %i.nt = trunc nuw i8 %i.ns to i1
  %not..i.i.i23.i.i.i = xor i1 %i.nq, true
  %i.nu = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.nt
  br i1 %i.nu, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.nw = load i8, ptr %i.nv, align 8, !range !13, !noundef !14
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.av
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.nz = load ptr, ptr %i.ny, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.au
  %.pn.i.i26.i.i.i = phi ptr [ %i.nz, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.au ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.oa = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ob = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.mm) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ob, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.mm, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.nd, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #46
  %i.oc = load i32, ptr %i.my, align 4
  %.not.i = icmp eq i32 %i.oc, 0
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.od = load ptr, ptr %i.nc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.ay:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.of = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #46
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.ax, %bb.ay
  %.sroa.07.0.i = phi ptr [ %i.of, %bb.ay ], [ %i.oe, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.og = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.oh = trunc i64 %i.og to i1
  br i1 %i.oh, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit, label %.thread408

_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.oi = add nsw i64 %i.og, -1
  %i.oj = inttoptr i64 %i.oi to ptr
  %i.ok = load atomic volatile i64, ptr %i.oj monotonic, align 8
  %i.ol = add i64 %i.ok, 11
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = load atomic volatile i16, ptr %i.om monotonic, align 2
  %i.oo = icmp eq i16 %i.on, 2115
  br i1 %i.oo, label %bb.az, label %.thread408

bb.az:                                            ; preds = %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit
  %i.op = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE(ptr noundef %0, ptr nonnull %.sroa.07.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %.thread408

.thread408:                                       ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit, %bb.az, %._crit_edge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %i.op, %bb.az ], [ true, %._crit_edge ], [ false, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7Isolate41SetCaptureStackTraceForUncaughtExceptionsEbiNS_10StackTrace17StackTraceOptionsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64320) initializes((58792, 58793), (58796, 58804)) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 58792
  store i8 %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 58796
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 58800
  store i32 %3, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal7Isolate47get_capture_stack_trace_for_uncaught_exceptionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64320) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58792
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7Isolate35SetAbortOnUncaughtExceptionCallbackEPFbPNS_7IsolateEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64320) initializes((63944, 63952)) %0, ptr noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63944
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate26InstallConditionalFeaturesENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.537", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %2, align 8
  %i.b = call i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %i.i = ptrtoint ptr %.0.i.i to i64
  %i.j = add i64 %i.i, 8
  %i.k = inttoptr i64 %i.j to ptr
  store ptr %i.k, ptr %i.c, align 8
  store i64 %i.b, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.l = load i64, ptr %.0.i.i, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 15
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 134217728
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread36, label %bb.c
end_hunk_1
