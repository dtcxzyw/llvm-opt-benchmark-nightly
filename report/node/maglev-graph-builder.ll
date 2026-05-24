inline.NumInlined: 39742
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder27BuildVirtualArgumentsObjectILNS0_19CreateArgumentsTypeE0EEEPNS1_13VirtualObjectEv:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = sub i64 %i.bi, %i.bk
  %i.bm = icmp ult i64 %i.bl, 24
  br i1 %i.bm, label %bb.i, label %_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i64 noundef 24) #33
  %.pre.i.i.i.i.i = load i64, ptr %i.bj, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i: ; preds = %bb.i, %bb.h
  %i.bn = phi i64 [ %.pre.i.i.i.i.i, %bb.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bo = add i64 %i.bn, 24
  store i64 %i.bo, ptr %i.bj, align 8
  %i.bp = inttoptr i64 %i.bn to ptr               ; 5 uses
  store ptr null, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1099511627846, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 0, ptr %i.br, align 8
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.bp)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit

_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit: ; preds = %bb.g, %_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i
  %.0.i.i = phi ptr [ %i.be, %bb.g ], [ %i.bp, %_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i ] ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i, ptr noundef %i.bv) #33
  %i.bx = icmp ult i32 %i.bw, 2
  br i1 %i.bx, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit
  %i.by = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.bt, ptr noundef %i.bv, ptr noundef nonnull %.0.i.i) ; 3 uses
  %.pre.i.i = load i32, ptr %i.by, align 8        ; 2 uses
  %i.bz = icmp ult i32 %.pre.i.i, 2
  br i1 %i.bz, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = and i32 %.pre.i.i, 1                    ; 2 uses
  store i32 %i.ca, ptr %i.by, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.cc, 65535
  %.not29.i.i = icmp eq i64 %i.cd, 142
  br i1 %.not29.i.i, label %bb.l, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = and i32 %i.cf, %i.ca
  store i32 %i.cg, ptr %i.by, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit

_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit: ; preds = %bb.k, %bb.l, %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit, %bb.j
  %i.ch = load ptr, ptr %i.n, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  %i.cj = load i16, ptr %i.ci, align 4
  %i.ck = zext i16 %i.cj to i32
  %i.cl = add nsw i32 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = icmp ult i64 %i.cs, 40
  br i1 %i.ct, label %bb.m, label %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeEiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i, !prof !6

bb.m:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, i64 noundef 40) #33
  %.pre.i.i.i.i = load i64, ptr %i.cq, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeEiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i

_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeEiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i: ; preds = %bb.m, %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit
  %i.cu = phi i64 [ %.pre.i.i.i.i, %bb.m ], [ %i.cr, %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit ] ; 2 uses
  %i.cv = add i64 %i.cu, 40
  store i64 %i.cv, ptr %i.cq, align 8
  %i.cw = add i64 %i.cu, 8
  %i.cx = inttoptr i64 %i.cw to ptr               ; 8 uses
  store ptr null, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 828928753733, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  store i8 1, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i32 %i.cl, ptr %i.db, align 8
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = and i64 %i.de, 7696581394432
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeEiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %i.dh = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %.0.i.i, i32 noundef 0), !inline_history !69
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i: ; preds = %bb.n, %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeEiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %.0.i.i86 = phi ptr [ %.0.i.i, %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeEiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i ], [ %i.dh, %bb.n ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 16 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8
  store ptr %.0.i.i86, ptr %i.dc, align 8
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.cx)
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 696
  store ptr null, ptr %i.dm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.dn = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i.i.i.i.i.i36 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i.i36, label %bb.o, label %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit37, !prof !6

bb.o:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit37: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i
  store ptr %i.dp, ptr %2, align 8
  %i.dq = call ptr @_ZNK2v88internal8compiler16NativeContextRef20sloppy_arguments_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.dn) #33
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -40
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder21CreateArgumentsObjectENS0_8compiler6MapRefEPNS1_9ValueNodeES6_St8optionalIS6_E(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %i.dq, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.cx, ptr %i.du, i8 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.aq

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit, !prof !6

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit: ; preds = %bb.p
  store ptr %i.dx, ptr %3, align 8
  %i.dy = call noundef i32 @_ZNK2v88internal8compiler21SharedFunctionInfoRef24context_parameters_startEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  %i.dz = add nsw i32 %i.r, -2
  %i.ea = add i32 %i.dz, %i.dy                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  store i32 %i.ea, ptr %i.j, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %bb.z, label %bb.r

bb.r:                                             ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = add nsw i32 %i.ef, -1                   ; 3 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.s) ; 4 uses
  %i.eh = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder37BuildInlinedUnmappedArgumentsElementsEi(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %.sroa.speculated)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8104 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %bb.s, label %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal8compiler12JSHeapBroker30InitSloppyArgumentsElementsMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.ej) #33
  %.pr.i = load ptr, ptr %i.ek, align 8           ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i38, label %bb.t, label %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit, !prof !76

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit: ; preds = %bb.r, %bb.s
  %i.em = phi ptr [ %.pr.i, %bb.s ], [ %i.el, %bb.r ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -48
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder29CreateMappedArgumentsElementsENS0_8compiler6MapRefEiPNS1_9ValueNodeES6_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.em, i32 noundef %.sroa.speculated, ptr noundef %i.eq, ptr noundef %i.eh) ; 3 uses
  %i.es = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.es, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  br label %bb.w

._crit_edge:                                      ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit, %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ew = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i39, label %bb.u, label %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit40, !prof !6

bb.u:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit40: ; preds = %._crit_edge
  store ptr %i.ey, ptr %4, align 8
  %i.ez = call ptr @_ZNK2v88internal8compiler16NativeContextRef26fast_aliased_arguments_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ew) #33
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fb = load ptr, ptr %i.fa, align 8            ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.eg, ptr %i.d, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 280
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 272 ; 2 uses
  %.not10.i.i.i.i.i.i41 = icmp eq ptr %i.fe, null
  br i1 %.not10.i.i.i.i.i.i41, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i53, label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit40, %.lr.ph.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i43 = phi ptr [ %.1.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i42 ], [ %i.fe, %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit40 ] ; 3 uses
  %.0811.i.i.i.i.i.i44 = phi ptr [ %.19.i.i.i.i.i.i45, %.lr.ph.i.i.i.i.i.i42 ], [ %i.ff, %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit40 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i43, i64 32
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = icmp slt i32 %i.fh, %i.eg               ; 2 uses
  %.19.i.i.i.i.i.i45 = select i1 %i.fi, ptr %.0811.i.i.i.i.i.i44, ptr %.012.i.i.i.i.i.i43 ; 4 uses
  %.1.in.v.i.i.i.i.i.i46 = select i1 %i.fi, i64 24, i64 16
  %.1.in.i.i.i.i.i.i47 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i43, i64 %.1.in.v.i.i.i.i.i.i46
  %.1.i.i.i.i.i.i48 = load ptr, ptr %.1.in.i.i.i.i.i.i47, align 8 ; 2 uses
  %.not.i.i.i.i.i.i49 = icmp eq ptr %.1.i.i.i.i.i.i48, null
  br i1 %.not.i.i.i.i.i.i49, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !64

_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i.i42
  %i.fj = icmp eq ptr %.19.i.i.i.i.i.i45, %i.ff
  br i1 %i.fj, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i53, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i51

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i51: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i50
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i45, i64 32
  %i.fl = load i32, ptr %i.fk, align 4
  %.not116 = icmp slt i32 %i.fl, %i.ef
  br i1 %.not116, label %bb.v, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i53

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i53: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i51, %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i50, %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store i32 0, ptr %i.f, align 4
  %i.fm = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_13Int32ConstantEJiRiEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %i.fb, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  store ptr %i.fm, ptr %i.e, align 8
  %i.fn = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRiRS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  %i.fo = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit54

bb.v:                                             ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i51
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i45, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit54

_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit54: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i53, %bb.v
  %.0.i.i.i52 = phi ptr [ %i.fo, %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i53 ], [ %i.fq, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fr = load ptr, ptr %i.en, align 8
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -40
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder21CreateArgumentsObjectENS0_8compiler6MapRefEPNS1_9ValueNodeES6_St8optionalIS6_E(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %i.ez, ptr noundef %.0.i.i.i52, ptr noundef %i.er, ptr %i.ft, i8 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ap

bb.w:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit
  %7 = phi i32 [ %i.ea, %.lr.ph ], [ %i.gq, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit ] ; 4 uses
  %.034119 = phi i32 [ 0, %.lr.ph ], [ %11, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit ] ; 2 uses
  %8 = and i32 %.034119, 536870911
  %i.fv = load ptr, ptr %i.et, align 8            ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %7, ptr %i.a, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 280
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 272 ; 2 uses
  %.not10.i.i.i.i.i.i55 = icmp eq ptr %i.fy, null
  br i1 %.not10.i.i.i.i.i.i55, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i67, label %.lr.ph.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i56:                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i56
  %.012.i.i.i.i.i.i57 = phi ptr [ %.1.i.i.i.i.i.i62, %.lr.ph.i.i.i.i.i.i56 ], [ %i.fy, %bb.w ] ; 3 uses
  %.0811.i.i.i.i.i.i58 = phi ptr [ %.19.i.i.i.i.i.i59, %.lr.ph.i.i.i.i.i.i56 ], [ %i.fz, %bb.w ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i57, i64 32
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = icmp slt i32 %i.gb, %7                  ; 2 uses
  %.19.i.i.i.i.i.i59 = select i1 %i.gc, ptr %.0811.i.i.i.i.i.i58, ptr %.012.i.i.i.i.i.i57 ; 4 uses
  %.1.in.v.i.i.i.i.i.i60 = select i1 %i.gc, i64 24, i64 16
  %.1.in.i.i.i.i.i.i61 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i57, i64 %.1.in.v.i.i.i.i.i.i60
  %.1.i.i.i.i.i.i62 = load ptr, ptr %.1.in.i.i.i.i.i.i61, align 8 ; 2 uses
  %.not.i.i.i.i.i.i63 = icmp eq ptr %.1.i.i.i.i.i.i62, null
  br i1 %.not.i.i.i.i.i.i63, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i64, label %.lr.ph.i.i.i.i.i.i56, !llvm.loop !64

_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i64: ; preds = %.lr.ph.i.i.i.i.i.i56
  %i.gd = icmp eq ptr %.19.i.i.i.i.i.i59, %i.fz
  br i1 %i.gd, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i67, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i65

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i65: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i64
  %i.ge = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i59, i64 32
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = icmp slt i32 %7, %i.gf
  br i1 %i.gg, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i67, label %bb.x

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i67: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i65, %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i64, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.gh = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_13Int32ConstantEJiRiEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %i.fv, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.gh, ptr %i.b, align 8
  %i.gi = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRiRS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.fw, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.gj = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit68

bb.x:                                             ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i65
  %i.gk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i59, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit68

_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit68: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i67, %bb.x
  %.0.i.i.i66 = phi ptr [ %i.gj, %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i67 ], [ %i.gl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = add nuw nsw i32 %8, 3                      ; 2 uses
  %i.gm = load i32, ptr %i.eu, align 8
  %i.gn = icmp ult i32 %9, %i.gm
  br i1 %i.gn, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit, label %bb.y, !prof !5

bb.y:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit68
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.163) #32
  unreachable

_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit68
  %i.go = load ptr, ptr %i.ev, align 8
  %10 = zext nneg i32 %9 to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %10
  store ptr %.0.i.i.i66, ptr %i.gp, align 8
  %11 = add nuw nsw i32 %.034119, 1               ; 2 uses
  %i.gq = add nsw i32 %7, -1
  %exitcond.not = icmp eq i32 %11, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.w, !llvm.loop !895

bb.z:                                             ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  %i.gr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !10, !noundef !11
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gt = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_15ArgumentsLengthEJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, i1 noundef zeroext true, ptr null, i64 0)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit72

bb.ab:                                            ; preds = %bb.z
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8            ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 3 uses
  %i.gz = load i64, ptr %i.gy, align 8            ; 2 uses
  %i.ha = sub i64 %i.gx, %i.gz
  %i.hb = icmp ult i64 %i.ha, 24
  br i1 %i.hb, label %bb.ac, label %_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i69, !prof !6

bb.ac:                                            ; preds = %bb.ab
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, i64 noundef 24) #33
  %.pre.i.i.i.i.i71 = load i64, ptr %i.gy, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i69

_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i69: ; preds = %bb.ac, %bb.ab
  %i.hc = phi i64 [ %.pre.i.i.i.i.i71, %bb.ac ], [ %i.gz, %bb.ab ] ; 2 uses
  %i.hd = add i64 %i.hc, 24
  store i64 %i.hd, ptr %i.gy, align 8
  %i.he = inttoptr i64 %i.hc to ptr               ; 5 uses
  store ptr null, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 1099511627846, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i32 0, ptr %i.hg, align 8
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.he)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit72

_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit72: ; preds = %bb.aa, %_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i69
  %i.hh = phi ptr [ %i.gt, %bb.aa ], [ %i.he, %_ZN2v88internal6maglev8NodeBase3NewINS1_15ArgumentsLengthEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i69 ] ; 8 uses
  store ptr %i.hh, ptr %i.k, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.hm = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.hh, ptr noundef %i.hl) #33
  %i.hn = icmp ult i32 %i.hm, 2
  br i1 %i.hn, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit76, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit72
  %i.ho = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.hj, ptr noundef %i.hl, ptr noundef nonnull %i.hh) ; 3 uses
  %.pre.i.i73 = load i32, ptr %i.ho, align 8      ; 2 uses
  %i.hp = icmp ult i32 %.pre.i.i73, 2
  br i1 %i.hp, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit76, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hq = and i32 %.pre.i.i73, 1                  ; 2 uses
  store i32 %i.hq, ptr %i.ho, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = and i64 %i.hs, 65535
  %.not29.i.i74 = icmp eq i64 %i.ht, 142
  br i1 %.not29.i.i74, label %bb.af, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit76

bb.af:                                            ; preds = %bb.ae
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hv = load i32, ptr %i.hu, align 8
  %i.hw = and i32 %i.hv, %i.hq
  store i32 %i.hw, ptr %i.ho, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit76

_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit76: ; preds = %bb.ae, %bb.af, %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_15ArgumentsLengthEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit72, %bb.ad
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8            ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8            ; 2 uses
  %i.id = sub i64 %i.ia, %i.ic
  %i.ie = icmp ult i64 %i.id, 40
  br i1 %i.ie, label %bb.ag, label %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeERiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i, !prof !6

bb.ag:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit76
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.hy, i64 noundef 40) #33
  %.pre.i.i.i.i93 = load i64, ptr %i.ib, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeERiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i

_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeERiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i: ; preds = %bb.ag, %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit76
  %i.if = phi i64 [ %.pre.i.i.i.i93, %bb.ag ], [ %i.ic, %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit76 ] ; 2 uses
  %i.ig = add i64 %i.if, 40
  store i64 %i.ig, ptr %i.ib, align 8
  %i.ih = add i64 %i.if, 8
  %i.ii = inttoptr i64 %i.ih to ptr               ; 8 uses
  store ptr null, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 828928753733, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i32 0, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  store i8 0, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store i32 %i.s, ptr %i.im, align 8
  %i.in = getelementptr inbounds i8, ptr %i.ii, i64 -8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = and i64 %i.ip, 7696581394432
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i89, label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeERiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %i.is = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.hh, i32 noundef 0), !inline_history !69
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i89

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i89: ; preds = %bb.ah, %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeERiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %.0.i.i90 = phi ptr [ %i.hh, %_ZN2v88internal6maglev8NodeBase3NewINS1_17ArgumentsElementsEJNS0_19CreateArgumentsTypeERiEEEPT_PNS0_4ZoneEmDpOT0_.exit.i ], [ %i.is, %bb.ah ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i.i90, i64 16 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 8
  store ptr %.0.i.i90, ptr %i.in, align 8
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.ii)
  %i.iw = load ptr, ptr %0, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 696
  store ptr null, ptr %i.ix, align 8
  %i.iy = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8104 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.not.i77 = icmp eq ptr %i.ja, null
  br i1 %.not.i77, label %bb.ai, label %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit80

bb.ai:                                            ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i89
  call void @_ZN2v88internal8compiler12JSHeapBroker30InitSloppyArgumentsElementsMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.iy) #33
  %.pr.i78 = load ptr, ptr %i.iz, align 8         ; 2 uses
  %.not.i.i.i.i.i79 = icmp eq ptr %.pr.i78, null
  br i1 %.not.i.i.i.i.i79, label %bb.aj, label %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit80, !prof !76

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit80: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i89, %bb.ai
  %i.jb = phi ptr [ %.pr.i78, %bb.ai ], [ %i.ja, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i89 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -48
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder29CreateMappedArgumentsElementsENS0_8compiler6MapRefEiPNS1_9ValueNodeES6_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.jb, i32 noundef %i.s, ptr noundef %i.jf, ptr noundef nonnull %i.ii) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #33
  %i.jh = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 216 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %.not.i81 = icmp eq ptr %i.jj, null
  br i1 %.not.i81, label %bb.ak, label %_ZN2v88internal8compiler12JSHeapBroker14the_hole_valueEv.exit

bb.ak:                                            ; preds = %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit80
  call void @_ZN2v88internal8compiler12JSHeapBroker16InitTheHoleValueEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.jh) #33
  %.pr.i82 = load ptr, ptr %i.ji, align 8         ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i82, null
  br i1 %.not.i.i.i.i, label %bb.al, label %_ZN2v88internal8compiler12JSHeapBroker14the_hole_valueEv.exit, !prof !76

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal8compiler12JSHeapBroker14the_hole_valueEv.exit: ; preds = %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit80, %bb.ak
  %i.jk = phi ptr [ %.pr.i82, %bb.ak ], [ %i.jj, %_ZN2v88internal8compiler12JSHeapBroker29sloppy_arguments_elements_mapEv.exit80 ]
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.jm, ptr nonnull %i.jk) #33
  store ptr %i.jn, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #33
  store i32 0, ptr %i.m, align 4
  %i.jo = icmp ugt i16 %i.q, 1
  br i1 %i.jo, label %.lr.ph120, label %._crit_edge121

.lr.ph120:                                        ; preds = %_ZN2v88internal8compiler12JSHeapBroker14the_hole_valueEv.exit
  store ptr %0, ptr %5, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  br label %bb.an

._crit_edge121:                                   ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit85, %_ZN2v88internal8compiler12JSHeapBroker14the_hole_valueEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.jt = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8            ; 2 uses
  %.not.i.i.i.i.i.i83 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i.i83, label %bb.am, label %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit84, !prof !6

bb.am:                                            ; preds = %._crit_edge121
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable
end_hunk_0
