inline.NumInlined: 745
inline.NumDeleted: 336
begin_hunk_0_@_ZN2v88internal26Runtime_ArrayIncludes_SlowEiPmPNS0_7IsolateE:bb.a
bb.ac:                                            ; preds = %.critedge120.i
  %i.fd = call double @llvm.fabs.f64(double %.0171.ph)
  %i.fe = fcmp ueq double %i.fd, +inf
  br i1 %i.fe, label %bb.ag, label %bb.ad, !prof !5

bb.ad:                                            ; preds = %bb.ac
  %i.ff = fcmp olt double %.0171.ph, 0.000000e+00
  br i1 %i.ff, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fg = fadd double %.0171.ph, %i.ez            ; 2 uses
  %i.fh = fcmp olt double %i.fg, 0.000000e+00
  %.sroa.speculated = select i1 %i.fh, double 0.000000e+00, double %i.fg
  %i.fi = fptosi double %.sroa.speculated to i64
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fj = fptosi double %.0171.ph to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.ae, %bb.af, %bb.r
  %.2105.i = phi i64 [ 0, %bb.r ], [ %i.fj, %bb.af ], [ 0, %bb.ac ], [ %i.fi, %bb.ae ] ; 3 uses
  %i.fk = load i64, ptr %.sroa.07.0.i173177, align 8
  %i.fl = add i64 %i.fk, -1
  %i.fm = inttoptr i64 %i.fl to ptr               ; 3 uses
  %i.fn = load atomic volatile i64, ptr %i.fm monotonic, align 8
  %i.fo = add i64 %i.fn, 11
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = load atomic volatile i16, ptr %i.fp monotonic, align 2
  %i.fr = icmp ult i16 %i.fq, 1041
  %i.fs = icmp sgt i64 %.1102.i, 4294967295
  %or.cond.not.i = or i1 %i.fs, %i.fr
  br i1 %or.cond.not.i, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ft = load atomic volatile i64, ptr %i.fm monotonic, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 864
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 1856
  %i.fz = load i64, ptr %i.fy, align 8
  br label %.critedge18.i

.critedge18.i:                                    ; preds = %bb.aj, %bb.ah
  %.sroa.037.0.in.in.in.i = phi i64 [ %i.ft, %bb.ah ], [ %i.gc, %bb.aj ]
  %.sroa.037.0.in.in.i = add i64 %.sroa.037.0.in.in.in.i, 23
  %.sroa.037.0.in.i = inttoptr i64 %.sroa.037.0.in.in.i to ptr
  %.sroa.037.0.i = load i64, ptr %.sroa.037.0.in.i, align 8 ; 3 uses
  %.not.i20 = icmp eq i64 %.sroa.037.0.i, %i.fv
  br i1 %.not.i20, label %_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit, label %bb.ai

bb.ai:                                            ; preds = %.critedge18.i
  %i.ga = add i64 %.sroa.037.0.i, -1
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load atomic volatile i64, ptr %i.gb monotonic, align 8 ; 2 uses
  %i.gd = add i64 %i.gc, 11
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load atomic volatile i16, ptr %i.ge monotonic, align 2
  %i.gg = icmp ult i16 %i.gf, 1042
  br i1 %i.gg, label %.critedge.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gh = add i64 %.sroa.037.0.i, 15
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = load i64, ptr %i.gi, align 8            ; 2 uses
  %i.gk = icmp ne i64 %i.gj, %i.fx
  %i.gl = icmp ne i64 %i.gj, %i.fz
  %or.cond.i = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %.critedge18.i, !llvm.loop !13

_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit: ; preds = %.critedge18.i
  %i.gm = load atomic volatile i64, ptr %i.fm monotonic, align 8
  %i.gn = add i64 %i.gm, 14
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = lshr i8 %i.gp, 2
  %i.gr = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.gs = zext nneg i8 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 232
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = call i16 %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef %2, ptr nonnull %.sroa.07.0.i173177, ptr %i.j, i64 noundef %.2105.i, i64 noundef %.1102.i) #11, !inline_history !15 ; 2 uses
  %i.gz = trunc i16 %i.gy to i1
  br i1 %i.gz, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.hb = load i64, ptr %i.ha, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit
  %i.hc = and i16 %i.gy, 256
  %.not201 = icmp eq i16 %i.hc, 0
  %.sroa.04.0.v.i = select i1 %.not201, i64 680, i64 672
  %.sroa.04.0.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.04.0.v.i
  %i.hd = load i64, ptr %.sroa.04.0.i, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge.i:                                      ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.he = icmp slt i64 %.2105.i, %.1102.i
  br i1 %i.he, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge.i, %_ZN2v88internal11HandleScopeD2Ev.exit
  %.3106.i207 = phi i64 [ %i.hw, %_ZN2v88internal11HandleScopeD2Ev.exit ], [ %.2105.i, %.critedge.i ] ; 2 uses
  %i.hf = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hg = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.hh = load i32, ptr %i.e, align 8
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.e, align 8
  %i.hj = sitofp i64 %.3106.i207 to double
  %i.hk = fptoui double %i.hj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %2, ptr nonnull %.sroa.07.0.i173177, ptr null, i64 noundef %i.hk, ptr nonnull %.sroa.07.0.i173177, i32 noundef 3)
  %i.hl = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #11 ; 2 uses
  %.not202 = icmp eq ptr %i.hl, null
  br i1 %.not202, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge124.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %.lr.ph
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.hn = load i64, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge126.i

.critedge124.i:                                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ho = load i64, ptr %i.j, align 8
  %i.hp = load i64, ptr %i.hl, align 8
  %i.hq = call noundef zeroext i1 @_ZN2v88internal6Object13SameValueZeroENS0_6TaggedIS1_EES3_(i64 %i.ho, i64 %i.hp) #11
  br i1 %i.hq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge124.i
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.hs = load i64, ptr %i.hr, align 8
  br label %.critedge126.i

bb.am:                                            ; preds = %.critedge124.i
  store ptr %i.hf, ptr %i.a, align 8
  %i.ht = load i32, ptr %i.e, align 8
  %i.hu = add nsw i32 %i.ht, -1
  store i32 %i.hu, ptr %i.e, align 8
  %i.hv = load ptr, ptr %i.c, align 8
  %.not.i7 = icmp eq ptr %i.hv, %i.hg
  br i1 %.not.i7, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  store ptr %i.hg, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.an, %bb.am
  %i.hw = add i64 %.3106.i207, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hw, %.1102.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %.critedge.i
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.hy = load i64, ptr %i.hx, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge126.i:                                   ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.al
  %.sroa.092.2 = phi i64 [ %i.hs, %bb.al ], [ %i.hn, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 2 uses
  store ptr %i.hf, ptr %i.a, align 8
  %i.hz = load i32, ptr %i.e, align 8
  %i.ia = add nsw i32 %i.hz, -1
  store i32 %i.ia, ptr %i.e, align 8
  %i.ib = load ptr, ptr %i.c, align 8
  %.not.i4 = icmp eq ptr %i.ib, %i.hg
  br i1 %.not.i4, label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.ao, !prof !7

bb.ao:                                            ; preds = %.critedge126.i
  store ptr %i.hg, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %.critedge126.i, %bb.ao, %._crit_edge, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread, %bb.e, %_ZNKR2v85MaybeIbE8FromJustEv.exit, %bb.ak, %bb.ab, %bb.aa, %bb.o, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit15
  %.sroa.092.4 = phi i64 [ %i.eb, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread ], [ %i.cw, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit15 ], [ %i.hy, %._crit_edge ], [ %i.ac, %bb.e ], [ %i.hd, %_ZNKR2v85MaybeIbE8FromJustEv.exit ], [ %i.ey, %bb.aa ], [ %i.hb, %bb.ak ], [ %i.fc, %bb.ab ], [ %i.dn, %bb.o ], [ %.sroa.092.2, %bb.ao ], [ %.sroa.092.2, %.critedge126.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ic = load i32, ptr %i.e, align 8
  %i.id = add nsw i32 %i.ic, -1
  store i32 %i.id, ptr %i.e, align 8
  %i.ie = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ie, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit3, label %bb.ap, !prof !7

bb.ap:                                            ; preds = %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit3

_ZN2v88internal11HandleScopeD2Ev.exit3:           ; preds = %bb.ap, %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.092.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal20Runtime_ArrayIndexOfEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit8, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit8: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.not187 = icmp eq i32 %0, 1
  br i1 %.not187, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit8
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %1, align 8                ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !10

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %.critedge112.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !8

_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.v = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %1, ptr noundef nonnull @.str.6) #11 ; 3 uses
  %.not188 = icmp eq ptr %i.v, null
  br i1 %.not188, label %bb.d, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge

_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit
  %.pre = load i64, ptr %i.v, align 8             ; 2 uses
  %.pre201 = add i64 %.pre, -1
  %.pre202 = inttoptr i64 %.pre201 to ptr
  br label %.critedge112.i

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.x = load i64, ptr %i.w, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge112.i:                                   ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.pre-phi203 = phi ptr [ %.pre202, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %i.p, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.y = phi i64 [ %.pre, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %i.m, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %.sroa.07.0.i152156 = phi ptr [ %i.v, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 6 uses
  %i.z = load atomic volatile i64, ptr %.pre-phi203 monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 2119
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.critedge112.i
  %i.ae = add i64 %i.y, 23
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 0)
  %spec.select193 = lshr i64 %i.aj, 32
  br label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.e
  %i.ak = add nsw i64 %i.ag, -1
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 130
  br i1 %i.aq, label %bb.g, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ar, align 8
  %i.as = fadd double %.0.copyload.i.i.i.i.i.i, f0x4330000000000000
  %i.at = bitcast double %i.as to i64             ; 2 uses
  %.mask.i.i.i = and i64 %i.at, -4294967296
  %i.au = icmp eq i64 %.mask.i.i.i, 4841369599423283200
  %i.av = and i64 %i.at, 4294967295
  br i1 %i.au, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

bb.h:                                             ; preds = %.critedge112.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %.pre.pre.i = load i64, ptr %i.aw, align 8
  %i.ax = add i64 %.pre.pre.i, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 128
  br i1 %i.bd, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.h
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.bh = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.bh, ptr %3, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %2, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.aw, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.sroa.07.0.i152156, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bs = ptrtoint ptr %.sroa.07.0.i152156 to i64
  store i64 %i.bs, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 -1, i64 16, i1 false)
  %i.bu = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.bv = add i64 %i.bu, 11
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i16, ptr %i.bw monotonic, align 2
  %i.by = and i16 %i.bx, -96
  %.not.i21.i.i.i = icmp eq i16 %i.by, 32
  br i1 %.not.i21.i.i.i, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !11, !noundef !12
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.cc = load i8, ptr %i.cb, align 8, !range !11
  %i.cd = trunc nuw i8 %i.cc to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ca, true
  %i.ce = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.cd
  br i1 %i.ce, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.cg = load i8, ptr %i.cf, align 8, !range !11, !noundef !12
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #12
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.i
  %.pn.i.i26.i.i.i = phi ptr [ %i.cj, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.i ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ck = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.cl = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.aw) #11
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.cl, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.aw, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.bn, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #11
  %i.cm = load i32, ptr %i.bi, align 4
  %.not.i13 = icmp eq i32 %i.cm, 0
  br i1 %.not.i13, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cn = load ptr, ptr %i.bm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %.critedge114.i

end_hunk_0
begin_hunk_1_@_ZN2v88internal20Runtime_ArrayIndexOfEiPmPNS0_7IsolateE:bb.a
  store i64 %i.cy, ptr %.0.i.i.i, align 8
  br label %.critedge116.i

bb.n:                                             ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.di = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge116.i:                                   ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit10
  %i.dj = phi i64 [ %i.cy, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit10 ], [ %.pre199, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge ] ; 3 uses
  %i.dk = and i64 %i.dj, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge116.i
  %i.dm = lshr i64 %i.dj, 32
  %i.dn = trunc nuw i64 %i.dm to i32
  %i.do = sitofp i32 %i.dn to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.p:                                             ; preds = %.critedge116.i
  %i.dp = add nsw i64 %i.dj, -1
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.0.copyload.i.i.i.i.i.i14 = load double, ptr %i.dr, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.o, %bb.p
  %i.ds = phi double [ %i.do, %bb.o ], [ %.0.copyload.i.i.i.i.i.i14, %bb.p ]
  %i.dt = fptosi double %i.ds to i64
  br label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit: ; preds = %bb.g, %bb.f, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %.1104.i = phi i64 [ %i.dt, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ], [ %spec.select193, %bb.f ], [ %i.av, %bb.g ] ; 8 uses
  %i.du = icmp eq i64 %.1104.i, 0
  br i1 %i.du, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit
  %i.dv = call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr %i.l) #11 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = load i64, ptr %i.dv, align 8            ; 3 uses
  %i.dy = and i64 %i.dx, 1
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ea = lshr i64 %i.dx, 32
  %i.eb = trunc nuw i64 %i.ea to i32
  %i.ec = sitofp i32 %i.eb to double
  br label %.critedge120.i

bb.t:                                             ; preds = %bb.r
  %i.ed = add nsw i64 %i.dx, -1
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ef, align 1 ; 6 uses
  %or.cond.i.i = fcmp ueq double %.0.copyload.i.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i.i, label %.critedge120.i.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.eh = fcmp ueq double %i.eg, +inf
  br i1 %i.eh, label %.critedge120.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = fcmp ogt double %.0.copyload.i.i.i.i.i, 0.000000e+00
  br i1 %i.ei, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ej = call double @llvm.floor.f64(double %.0.copyload.i.i.i.i.i)
  br label %.critedge120.i

bb.x:                                             ; preds = %bb.v
  %i.ek = call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i.i)
  %i.el = fadd double %i.ek, 0.000000e+00
  br label %.critedge120.i

bb.y:                                             ; preds = %bb.q
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.en = load i64, ptr %i.em, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge120.i:                                   ; preds = %bb.s, %bb.u, %bb.w, %bb.x
  %.0150.ph = phi double [ %i.ec, %bb.s ], [ %i.el, %bb.x ], [ %.0.copyload.i.i.i.i.i, %bb.u ], [ %i.ej, %bb.w ] ; 3 uses
  %i.eo = sitofp i64 %.1104.i to double
  %i.ep = fcmp ogt double %.0150.ph, %i.eo
  br i1 %i.ep, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, label %bb.z

.critedge120.i.thread:                            ; preds = %bb.t
  %i.eq = icmp slt i64 %.1104.i, 0
  br i1 %i.eq, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, label %.thread

bb.z:                                             ; preds = %.critedge120.i
  %i.er = fcmp ult double %.0150.ph, f0xC3E0000000000000
  br i1 %i.er, label %.thread178, label %.thread, !prof !17

.thread:                                          ; preds = %.critedge120.i.thread, %bb.z
  %.0150.ph175177 = phi double [ %.0150.ph, %bb.z ], [ 0.000000e+00, %.critedge120.i.thread ]
  %i.es = fptosi double %.0150.ph175177 to i64
  %.fr = freeze i64 %i.es                         ; 3 uses
  %i.et = add nsw i64 %.fr, %.1104.i
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.et, i64 0)
  %i.eu = icmp slt i64 %.fr, 0
  %spec.select = select i1 %i.eu, i64 %spec.store.select.i, i64 %.fr
  br label %.thread178

.thread178:                                       ; preds = %.thread, %bb.z
  %i.ev = phi i64 [ 0, %bb.z ], [ %spec.select, %.thread ] ; 3 uses
  %i.ew = load i64, ptr %.sroa.07.0.i152156, align 8
  %i.ex = add i64 %i.ew, -1
  %i.ey = inttoptr i64 %i.ex to ptr               ; 3 uses
  %i.ez = load atomic volatile i64, ptr %i.ey monotonic, align 8
  %i.fa = add i64 %i.ez, 11
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load atomic volatile i16, ptr %i.fb monotonic, align 2
  %i.fd = icmp ult i16 %i.fc, 1041
  %i.fe = icmp sgt i64 %.1104.i, 4294967295
  %or.cond.not.i = or i1 %i.fe, %i.fd
  br i1 %or.cond.not.i, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %.thread178
  %i.ff = load atomic volatile i64, ptr %i.ey monotonic, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 864
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 1856
  %i.fl = load i64, ptr %i.fk, align 8
  br label %.critedge18.i

.critedge18.i:                                    ; preds = %bb.ac, %bb.aa
  %.sroa.037.0.in.in.in.i = phi i64 [ %i.ff, %bb.aa ], [ %i.fo, %bb.ac ]
  %.sroa.037.0.in.in.i = add i64 %.sroa.037.0.in.in.in.i, 23
  %.sroa.037.0.in.i = inttoptr i64 %.sroa.037.0.in.in.i to ptr
  %.sroa.037.0.i = load i64, ptr %.sroa.037.0.in.i, align 8 ; 3 uses
  %.not.i15 = icmp eq i64 %.sroa.037.0.i, %i.fh
  br i1 %.not.i15, label %_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge18.i
  %i.fm = add i64 %.sroa.037.0.i, -1
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load atomic volatile i64, ptr %i.fn monotonic, align 8 ; 2 uses
  %i.fp = add i64 %i.fo, 11
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = load atomic volatile i16, ptr %i.fq monotonic, align 2
  %i.fs = icmp ult i16 %i.fr, 1042
  br i1 %i.fs, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = add i64 %.sroa.037.0.i, 15
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load i64, ptr %i.fu, align 8            ; 2 uses
  %i.fw = icmp ne i64 %i.fv, %i.fj
  %i.fx = icmp ne i64 %i.fv, %i.fl
  %or.cond.i = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %.critedge18.i, !llvm.loop !13

_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit: ; preds = %.critedge18.i
  %i.fy = load atomic volatile i64, ptr %i.ey monotonic, align 8
  %i.fz = add i64 %i.fy, 14
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = lshr i8 %i.gb, 2
  %i.gd = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.ge = zext nneg i8 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = and i64 %i.ev, 4294967295
  %i.gi = and i64 %.1104.i, 4294967295
  %i.gj = load ptr, ptr %i.gg, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 240
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call { i8, i64 } %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i152156, ptr %i.j, i64 noundef %i.gh, i64 noundef %i.gi) #11, !inline_history !18 ; 2 uses
  %i.gn = extractvalue { i8, i64 } %i.gm, 0
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %_ZNKR2v85MaybeIlE8FromJustEv.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.gq = load i64, ptr %i.gp, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

_ZNKR2v85MaybeIlE8FromJustEv.exit:                ; preds = %_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit
  %i.gr = extractvalue { i8, i64 } %i.gm, 1
  %i.gs = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.gr)
  %i.gt = load i64, ptr %i.gs, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge.i:                                      ; preds = %bb.ac, %bb.ab, %.thread178
  %i.gu = icmp slt i64 %i.ev, %.1104.i
  br i1 %i.gu, label %.lr.ph, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.lr.ph:                                           ; preds = %.critedge.i
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 912 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.am
  %.1108.i196 = phi i64 [ %i.ev, %.lr.ph ], [ %i.hz, %bb.am ] ; 5 uses
  %.sroa.082.2195 = phi i64 [ undef, %.lr.ph ], [ %.sroa.082.3, %bb.am ] ; 2 uses
  %i.gw = load ptr, ptr %i.a, align 8
  %i.gx = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.gy = load i32, ptr %i.e, align 8
  %i.gz = add nsw i32 %i.gy, 1
  store i32 %i.gz, ptr %i.e, align 8
  %i.ha = uitofp nneg i64 %.1108.i196 to double
  %i.hb = fptoui double %i.ha to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i152156, ptr null, i64 noundef %i.hb, ptr nonnull %.sroa.07.0.i152156, i32 noundef 3)
  %i.hc = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %4) #11 ; 2 uses
  %i.hd = trunc i16 %i.hc to i1
  br i1 %i.hd, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.he = load i64, ptr %i.gv, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.ae
  %i.hf = and i16 %i.hc, 256
  %.not191 = icmp eq i16 %i.hf, 0
  br i1 %.not191, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.hg = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #11 ; 2 uses
  %.not192 = icmp eq ptr %i.hg, null
  br i1 %.not192, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge124.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.ag
  %i.hh = load i64, ptr %i.gv, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit

.critedge124.i:                                   ; preds = %bb.ag
  %i.hi = load i64, ptr %i.j, align 8
  %i.hj = load i64, ptr %i.hg, align 8
  %i.hk = call noundef zeroext i1 @_ZN2v88internal6Object12StrictEqualsENS0_6TaggedIS1_EES3_(i64 %i.hi, i64 %i.hj) #11
  br i1 %i.hk, label %bb.ah, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit

bb.ah:                                            ; preds = %.critedge124.i
  %i.hl = add i64 %.1108.i196, -2147483648
  %or.cond.i18 = icmp ult i64 %i.hl, -4294967296
  br i1 %or.cond.i18, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %sext.i = shl nsw i64 %.1108.i196, 32           ; 2 uses
  %i.hm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hn = load ptr, ptr %i.c, align 8
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %bb.aj, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.aj:                                            ; preds = %bb.ai
  %i.hp = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #11
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i = phi ptr [ %i.hp, %bb.aj ], [ %i.hm, %bb.ai ]
  store i64 %sext.i, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit

bb.ak:                                            ; preds = %bb.ah
  %i.hq = sitofp i64 %.1108.i196 to double
  %i.hr = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #11 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = add i64 %i.hs, -1
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store double %i.hq, ptr %i.hv, align 1
  %.pre200 = load i64, ptr %i.hr, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit: ; preds = %bb.ak, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.af, %_ZNKR2v85MaybeIbE8FromJustEv.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit, %.critedge124.i
  %.sroa.082.3 = phi i64 [ %i.he, %bb.af ], [ %.sroa.082.2195, %_ZNKR2v85MaybeIbE8FromJustEv.exit ], [ %.sroa.082.2195, %.critedge124.i ], [ %i.hh, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.pre200, %bb.ak ], [ %sext.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 2 uses
  %.7.i = phi i32 [ 1, %bb.af ], [ 24, %_ZNKR2v85MaybeIbE8FromJustEv.exit ], [ 0, %.critedge124.i ], [ 1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ 1, %bb.ak ], [ 1, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  store ptr %i.gw, ptr %i.a, align 8
  %i.hw = load i32, ptr %i.e, align 8
  %i.hx = add nsw i32 %i.hw, -1
  store i32 %i.hx, ptr %i.e, align 8
  %i.hy = load ptr, ptr %i.c, align 8
  %.not.i3 = icmp eq ptr %i.hy, %i.gx
  br i1 %.not.i3, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.al, !prof !7

bb.al:                                            ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit
  store ptr %i.gx, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.al, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl.exit
  switch i32 %.7.i, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread [
    i32 0, label %bb.am
    i32 24, label %bb.am
  ]

bb.am:                                            ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal11HandleScopeD2Ev.exit
  %i.hz = add i64 %.1108.i196, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hz, %.1104.i
  br i1 %exitcond.not, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, label %bb.ae, !llvm.loop !19

_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread: ; preds = %bb.am, %_ZN2v88internal11HandleScopeD2Ev.exit, %bb.g, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.critedge.i, %bb.d, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit, %_ZNKR2v85MaybeIlE8FromJustEv.exit, %bb.ad, %.critedge120.i.thread, %.critedge120.i, %bb.y, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit11
  %.sroa.082.5185 = phi i64 [ -4294967296, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.cr, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit11 ], [ %i.di, %bb.n ], [ -4294967296, %.critedge120.i ], [ %i.en, %bb.y ], [ %i.gq, %bb.ad ], [ -4294967296, %.critedge120.i.thread ], [ -4294967296, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit ], [ %i.gt, %_ZNKR2v85MaybeIlE8FromJustEv.exit ], [ %i.x, %bb.d ], [ -4294967296, %.critedge.i ], [ -4294967296, %bb.g ], [ %.sroa.082.3, %_ZN2v88internal11HandleScopeD2Ev.exit ], [ -4294967296, %bb.am ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ia = load i32, ptr %i.e, align 8
  %i.ib = add nsw i32 %i.ia, -1
  store i32 %i.ib, ptr %i.e, align 8
  %i.ic = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ic, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit2, label %bb.an, !prof !7

bb.an:                                            ; preds = %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit2

_ZN2v88internal11HandleScopeD2Ev.exit2:           ; preds = %bb.an, %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread
  ret i64 %.sroa.082.5185
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef, ptr, i8 noundef zeroext) local_unnamed_addr #5

declare ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef, ptr, ptr) local_unnamed_addr #5

declare ptr @_ZN2v88internal3Map14AsElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef, ptr, i8 noundef zeroext) local_unnamed_addr #5

declare ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, ptr, i8 noundef zeroext) local_unnamed_addr #5

declare void @_ZN2v88internal7Factory17NewJSArrayStorageENS0_12DirectHandleINS0_7JSArrayEEEiiNS0_26ArrayStorageAllocationModeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @_ZN2v88internal32ArrayConstructInitializeElementsEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_9ArgumentsILNS0_13ArgumentsTypeE1EEE(ptr noundef, ptr, ptr noundef) local_unnamed_addr #5

declare ptr @_ZN2v88internal8JSObject17NormalizeElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #5

declare i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #5

declare ptr @_ZN2v88internal6Object23ArraySpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef, ptr) local_unnamed_addr #5

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2v88internal6Object13SameValueZeroENS0_6TaggedIS1_EES3_(i64, i64) local_unnamed_addr #5

declare ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef, ptr, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3, i64 noundef %4, ptr %5, i32 noundef %6) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null                     ; 3 uses
  br i1 %i.a, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 128
  br i1 %i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i

_ZN2v88internal4Name9IsPrivateEv.exit.i:          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i:   ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i, %bb.b, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i
  %i.m = phi i32 [ %6, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i ]
  store i32 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = ptrtoint ptr %5 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -1, ptr %i.z, align 8
  %.not = icmp eq i64 %4, -1
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit
  %i.aa = icmp ugt i64 %4, 4294967294
  br i1 %i.aa, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %5, align 8               ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.d
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = icmp eq i16 %i.ai, 2061
  br i1 %i.aj, label %.critedge, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %i.ak = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = icmp eq i16 %i.an, 300
  br i1 %i.ao, label %.critedge, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %bb.d, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %i.ap = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %4, i1 noundef zeroext true) #11 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  store i64 %i.aq, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %.sroa.03.0.copyload = phi ptr [ %i.ap, %bb.e ], [ %3, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ] ; 3 uses
  %i.ar = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = and i16 %i.ax, -96
  %.not.i = icmp eq i16 %i.ay, 32
  br i1 %.not.i, label %bb.g, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !11, !noundef !12
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.bc = load i8, ptr %i.bb, align 8, !range !11
  %i.bd = trunc nuw i8 %i.bc to i1
  %not..i.i.i = xor i1 %i.ba, true
  %i.be = select i1 %not..i.i.i, i1 true, i1 %i.bd
  br i1 %i.be, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.bg = load i8, ptr %i.bf, align 8, !range !11, !noundef !12
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #12
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.g
  %.pn.i.i = phi ptr [ %i.bj, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.g ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.bk = load ptr, ptr %.in.i.i, align 8
  %i.bl = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.03.0.copyload) #11
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %bb.f, %_ZNK2v88internal7Isolate12string_tableEv.exit.i
  %.sroa.05.0.i = phi ptr [ %i.bl, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.03.0.copyload, %bb.f ]
  store ptr %.sroa.05.0.i, ptr %i.s, align 8
  br label %bb.l

.critedge:                                        ; preds = %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, %bb.c, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  br i1 %i.a, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.bm = load i64, ptr %3, align 8
  %i.bn = add i64 %i.bm, -1
end_hunk_1
