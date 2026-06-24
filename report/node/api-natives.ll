inline.NumInlined: 1787
inline.NumDeleted: 762
begin_hunk_0_@_ZN2v88internal10ApiNatives17CreateApiFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_20FunctionTemplateInfoEEENS4_INS0_6ObjectEEENS0_12InstanceTypeENS0_17MaybeDirectHandleINS0_4NameEEE:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 10624
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = icmp eq i64 %i.ez, %i.fe
  br i1 %i.ff, label %_ZNK2v88internal20FunctionTemplateInfo23GetNamedPropertyHandlerEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = add i64 %i.ez, 31
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load i64, ptr %i.fh, align 8
  br label %_ZNK2v88internal20FunctionTemplateInfo23GetNamedPropertyHandlerEv.exit

_ZNK2v88internal20FunctionTemplateInfo23GetNamedPropertyHandlerEv.exit: ; preds = %bb.ab, %bb.ac
  %.sroa.08.0.i.i92 = phi i64 [ %i.fi, %bb.ac ], [ %i.ez, %bb.ab ]
  %i.fj = load i64, ptr %i.ap, align 8
  %i.fk = icmp eq i64 %.sroa.08.0.i.i92, %i.fj
  br i1 %i.fk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK2v88internal20FunctionTemplateInfo23GetNamedPropertyHandlerEv.exit
  %i.fl = load i64, ptr %i.dd, align 8
  %i.fm = add i64 %i.fl, 13
  %i.fn = inttoptr i64 %i.fm to ptr               ; 2 uses
  %i.fo = load atomic volatile i8, ptr %i.fn monotonic, align 1
  %i.fp = or i8 %i.fo, 4
  store atomic volatile i8 %i.fp, ptr %i.fn monotonic, align 1
  %i.fq = load i64, ptr %i.dd, align 8
  %i.fr = add i64 %i.fq, 15
  %i.fs = inttoptr i64 %i.fr to ptr               ; 2 uses
  %i.ft = load atomic volatile i32, ptr %i.fs monotonic, align 4
  %i.fu = or i32 %i.ft, 268435456
  store atomic volatile i32 %i.fu, ptr %i.fs monotonic, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNK2v88internal20FunctionTemplateInfo23GetNamedPropertyHandlerEv.exit
  %i.fv = load i64, ptr %2, align 8
  %i.fw = add i64 %i.fv, 63
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = load atomic volatile i64, ptr %i.fx acquire, align 8 ; 3 uses
  %i.fz = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 10624
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 96
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = icmp eq i64 %i.fy, %i.gd
  br i1 %i.ge, label %_ZNK2v88internal20FunctionTemplateInfo25GetIndexedPropertyHandlerEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = add i64 %i.fy, 39
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load i64, ptr %i.gg, align 8
  br label %_ZNK2v88internal20FunctionTemplateInfo25GetIndexedPropertyHandlerEv.exit

_ZNK2v88internal20FunctionTemplateInfo25GetIndexedPropertyHandlerEv.exit: ; preds = %bb.ae, %bb.af
  %.sroa.08.0.i.i94 = phi i64 [ %i.gh, %bb.af ], [ %i.fy, %bb.ae ]
  %i.gi = load i64, ptr %i.ap, align 8
  %i.gj = icmp eq i64 %.sroa.08.0.i.i94, %i.gi
  br i1 %i.gj, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK2v88internal20FunctionTemplateInfo25GetIndexedPropertyHandlerEv.exit
  %i.gk = load i64, ptr %i.dd, align 8
  %i.gl = add i64 %i.gk, 13
  %i.gm = inttoptr i64 %i.gl to ptr               ; 2 uses
  %i.gn = load atomic volatile i8, ptr %i.gm monotonic, align 1
  %i.go = or i8 %i.gn, 8
  store atomic volatile i8 %i.go, ptr %i.gm monotonic, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK2v88internal20FunctionTemplateInfo25GetIndexedPropertyHandlerEv.exit
  %i.gp = load i64, ptr %2, align 8
  %i.gq = add i64 %i.gp, 63
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = load atomic volatile i64, ptr %i.gr acquire, align 8 ; 3 uses
  %i.gt = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 10624
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = icmp eq i64 %i.gs, %i.gx
  br i1 %i.gy, label %_ZNK2v88internal20FunctionTemplateInfo22GetInstanceCallHandlerEv.exit97, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gz = add i64 %i.gs, 55
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = load i64, ptr %i.ha, align 8
  br label %_ZNK2v88internal20FunctionTemplateInfo22GetInstanceCallHandlerEv.exit97

_ZNK2v88internal20FunctionTemplateInfo22GetInstanceCallHandlerEv.exit97: ; preds = %bb.ah, %bb.ai
  %.sroa.08.0.i.i96 = phi i64 [ %i.hb, %bb.ai ], [ %i.gs, %bb.ah ]
  %i.hc = load i64, ptr %i.ap, align 8
  %i.hd = icmp eq i64 %.sroa.08.0.i.i96, %i.hc
  br i1 %i.hd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNK2v88internal20FunctionTemplateInfo22GetInstanceCallHandlerEv.exit97
  %i.he = load i64, ptr %i.dd, align 8
  %i.hf = add i64 %i.he, 13
  %i.hg = inttoptr i64 %i.hf to ptr               ; 2 uses
  %i.hh = load atomic volatile i8, ptr %i.hg monotonic, align 1
  %i.hi = or i8 %i.hh, 2
  store atomic volatile i8 %i.hi, ptr %i.hg monotonic, align 1
  %i.hj = load i64, ptr %i.dd, align 8
  %i.hk = load i64, ptr %2, align 8
  %i.hl = add i64 %i.hk, 95
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load atomic volatile i32, ptr %i.hm monotonic, align 4
  %i.ho = and i32 %i.hn, 4
  %.not310 = icmp eq i32 %i.ho, 0
  %i.hp = add i64 %i.hj, 13
  %i.hq = inttoptr i64 %i.hp to ptr               ; 2 uses
  %i.hr = load atomic volatile i8, ptr %i.hq monotonic, align 1
  %i.hs = and i8 %i.hr, -65
  %i.ht = select i1 %.not310, i8 64, i8 0
  %i.hu = or disjoint i8 %i.ht, %i.hs
  store atomic volatile i8 %i.hu, ptr %i.hq monotonic, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK2v88internal20FunctionTemplateInfo22GetInstanceCallHandlerEv.exit97
  br i1 %.059, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hv = load i64, ptr %i.dd, align 8
  %i.hw = add i64 %i.hv, 14
  %i.hx = inttoptr i64 %i.hw to ptr               ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = or i8 %i.hy, 2
  store i8 %i.hz, ptr %i.hx, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @_ZN2v88internal10JSFunction13SetInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEE(ptr noundef nonnull %0, ptr %i.b, ptr %i.dd, ptr %.sroa.0187.0) #10
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret ptr %i.b
}

declare ptr @_ZN2v88internal20FunctionTemplateInfo29GetOrCreateSharedFunctionInfoEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_17MaybeDirectHandleINS0_4NameEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr, ptr) unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory20NewFunctionPrototypeENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #2

declare void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory16NewContextfulMapENS0_12DirectHandleINS0_13NativeContextEEENS0_12InstanceTypeEiNS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN2v88internal10Protectors31InvalidateNoUndetectableObjectsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal10JSFunction13SetInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEE(ptr noundef, ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal11SaveContextC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_120GetInstancePrototypeEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef %0, ptr %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8
  %i.i = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.b, %i.d
  br i1 %i.o, label %bb.b, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #10
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.a, align 8
  store i64 %i.n, ptr %.0.i.i.i, align 8
  %i.t = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119InstantiateFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_20FunctionTemplateInfoEEENS0_17MaybeDirectHandleINS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i.i, ptr %1, ptr null), !inline_history !15 ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %.pre.pre.i = load i64, ptr %i.u, align 8
  %i.v = add i64 %.pre.pre.i, -1
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 128
  br i1 %i.ab, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.c
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.af = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.af, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.t, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aq = ptrtoint ptr %i.t to i64
  store i64 %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 -1, i64 16, i1 false)
  %i.as = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.at = add i64 %i.as, 11
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i16, ptr %i.au monotonic, align 2
  %i.aw = and i16 %i.av, -96
  %.not.i21.i.i.i = icmp eq i16 %i.aw, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ba = load i8, ptr %i.az, align 8, !range !7
  %i.bb = trunc nuw i8 %i.ba to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ay, true
  %i.bc = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bb
  br i1 %i.bc, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.be = load i8, ptr %i.bd, align 8, !range !7, !noundef !8
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #12
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bh, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bi = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bj = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.u) #10
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bj, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.u, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.al, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #10
  %i.bk = load i32, ptr %i.ag, align 4
  %.not.i12 = icmp eq i32 %i.bk, 0
  br i1 %.not.i12, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bl = load ptr, ptr %i.ak, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.g

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bn = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i36 = phi ptr [ %i.bm, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.bn, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  %i.bp = load i64, ptr %.sroa.07.0.i36, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.bq = load i32, ptr %i.e, align 8
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.e, align 8
  %i.bs = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bs, %i.d
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.h, !prof !14

bb.h:                                             ; preds = %bb.g
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #10
  %.pre = load ptr, ptr %i.a, align 8
  %.pre40 = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.h, %bb.g
  %i.bt = phi ptr [ %.pre40, %bb.h ], [ %i.d, %bb.g ]
  %i.bu = phi ptr [ %.pre, %bb.h ], [ %i.b, %bb.g ] ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bt
  br i1 %i.bv, label %bb.i, label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit, !prof !5

bb.i:                                             ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.bw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #10
  br label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit

_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit: ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.i
  %.0.i.i = phi ptr [ %i.bw, %bb.i ], [ %i.bu, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.a, align 8
  store i64 %i.bp, ptr %.0.i.i, align 8
  %i.ca = load ptr, ptr %i.a, align 8
  %i.cb = load ptr, ptr %i.c, align 8
  %i.cc = load i32, ptr %i.e, align 8
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.e, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit
  %.sroa.6.1 = phi ptr [ %i.b, %_ZN2v88internal7Isolate14native_contextEv.exit ], [ %i.ca, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit ], [ %i.b, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  %.sroa.10.1 = phi ptr [ %i.d, %_ZN2v88internal7Isolate14native_contextEv.exit ], [ %i.cb, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit ], [ %i.d, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %.sroa.026.1 = phi ptr [ null, %_ZN2v88internal7Isolate14native_contextEv.exit ], [ %.0.i.i, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_.exit ], [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  store ptr %.sroa.6.1, ptr %i.a, align 8
  %i.ce = load i32, ptr %i.e, align 8
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.e, align 8
  %i.cg = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.cg, %.sroa.10.1
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.j, !prof !14

bb.j:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  store ptr %.sroa.10.1, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #10
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  ret ptr %.sroa.026.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12TemplateInfo26CacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeENS4_INS0_6ObjectEEE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %sum.shift.i.i = lshr i64 %i.d, 34
  %i.e = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.f = and i32 %i.e, 536870911                  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.a, -262144
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 262144
  %i.k = and i64 %i.j, 64
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, -55464
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 9808 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp ult i64 %i.q, 9223372032559808512
  %i.u = add nuw nsw i32 %i.s, 1
  %.0.i.i21 = select i1 %i.t, i32 %i.u, i32 1024  ; 3 uses
  %i.v = sext i32 %.0.i.i21 to i64
  %i.w = shl nsw i64 %i.v, 32
  store i64 %i.w, ptr %i.p, align 8
  %i.x = load i64, ptr %i.c, align 8
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = and i32 %i.z, -2147483645
  %i.ab = shl i32 %.0.i.i21, 2
  %i.ac = or i32 %i.aa, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 32
  store atomic volatile i64 %i.ae, ptr %i.c monotonic, align 8
  br label %_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit

_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.d
  %.0.i = phi i32 [ %.0.i.i21, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.af = icmp ult i32 %.0.i, 1024
  %i.ag = load i64, ptr %1, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit
  %i.aj = add i64 %i.ag, 575
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8 ; 2 uses
  %i.am = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = icmp eq ptr %i.am, %i.an
end_hunk_0
