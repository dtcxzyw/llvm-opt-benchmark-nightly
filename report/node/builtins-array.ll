inline.NumInlined: 2118
inline.NumDeleted: 818
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a

_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit51.i
  %i.w = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %i.m, ptr noundef nonnull @.str.5) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.thread.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit..critedge_crit_edge.i

_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit..critedge_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i
  %.pre.i = load i64, ptr %i.w, align 8
  %.pre = load i64, ptr %i.m, align 8
  %.pre62 = load ptr, ptr %i.c, align 8
  %.pre63 = load ptr, ptr %i.e, align 8
  br label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE17address_of_arg_atEi.exit.i.i

.thread.i:                                        ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.y = load i64, ptr %i.x, align 8
  br label %bb.ez

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE17address_of_arg_atEi.exit.i.i: ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit..critedge_crit_edge.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.z = phi ptr [ %.pre63, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit..critedge_crit_edge.i ], [ %i.f, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %i.aa = phi ptr [ %.pre62, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit..critedge_crit_edge.i ], [ %i.d, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 2 uses
  %i.ab = phi i64 [ %.pre, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit..critedge_crit_edge.i ], [ %i.n, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %i.ac = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit..critedge_crit_edge.i ], [ %i.n, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %.sroa.08.0.i133137.i = phi ptr [ %i.w, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit..critedge_crit_edge.i ], [ %i.m, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.z
  br i1 %i.ad, label %bb.c, label %_ZN2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE16ChangeValueScopeC2EPNS0_7IsolateEPS3_iNS0_6TaggedINS0_6ObjectEEE.exit.i, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE17address_of_arg_atEi.exit.i.i
  %i.ae = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE16ChangeValueScopeC2EPNS0_7IsolateEPS3_iNS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE16ChangeValueScopeC2EPNS0_7IsolateEPS3_iNS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE17address_of_arg_atEi.exit.i.i
  %.0.i.i.i.i = phi ptr [ %i.ae, %bb.c ], [ %i.aa, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE17address_of_arg_atEi.exit.i.i ] ; 4 uses
  %i.af = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ag = add i64 %i.af, 8
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.c, align 8
  store i64 %i.ab, ptr %.0.i.i.i.i, align 8
  store i64 %i.ac, ptr %i.m, align 8
  %i.ai = load i64, ptr %.sroa.08.0.i133137.i, align 8 ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.critedge44.i, !prof !6

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE16ChangeValueScopeC2EPNS0_7IsolateEPS3_iNS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 2119
  br i1 %i.aq, label %bb.d, label %.critedge44.i, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ar = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.as = add i64 %i.ar, 23
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i3.i.i = load i64, ptr %i.av, align 8
  %i.aw = add i64 %.sroa.0.0.copyload.i.i.i3.i.i, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 31
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, 639
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8 ; 2 uses
  %i.bf = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.bi = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #15
  br label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i

_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i = phi ptr [ %i.bi, %bb.e ], [ %i.bf, %bb.d ] ; 2 uses
  %i.bj = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bk = add i64 %i.bj, 8
  %i.bl = inttoptr i64 %i.bk to ptr
  store ptr %i.bl, ptr %i.c, align 8
  store i64 %i.be, ptr %.0.i.i.i.i.i, align 8
  %i.bm = icmp eq i64 %i.au, %i.be
  br i1 %i.bm, label %bb.f, label %.critedge44.i, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 9120
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = add i64 %i.bo, 23
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = and i64 %i.br, -4294967295
  %i.bt = icmp eq i64 %i.bs, 4294967296
  br i1 %i.bt, label %bb.g, label %.critedge44.i, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.bu = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116Fast_ArrayConcatEPNS0_7IsolateEPNS0_16BuiltinArgumentsE(ptr noundef nonnull %2, ptr noundef %16) ; 2 uses
  %.not149.i = icmp eq ptr %i.bu, null
  br i1 %.not149.i, label %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = load i64, ptr %i.bu, align 8
  br label %.thread147.i

_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i53.i = load i64, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.by = load i64, ptr %i.bx, align 8
  %.not150.i = icmp eq i64 %.sroa.0.0.copyload.i53.i, %i.by
  br i1 %.not150.i, label %.critedge44.i, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ca = load i64, ptr %i.bz, align 8
  br label %.thread147.i

.critedge44.i:                                    ; preds = %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %bb.f, %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal9ArgumentsILNS0_13ArgumentsTypeE1EE16ChangeValueScopeC2EPNS0_7IsolateEPS3_iNS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.cb = call ptr @_ZN2v88internal6Object23ArraySpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef nonnull %2, ptr nonnull %.sroa.08.0.i133137.i) #15 ; 5 uses
  %.not151.i = icmp eq ptr %i.cb, null
  br i1 %.not151.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge46.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %.critedge44.i
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.cd = load i64, ptr %i.cc, align 8
  br label %.thread147.i

.critedge46.i:                                    ; preds = %.critedge44.i
  %i.ce = load i64, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cf, align 8
  %i.cg = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load atomic volatile i64, ptr %i.ch monotonic, align 8
  %i.cj = add i64 %i.ci, 31
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cl, 375
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8 ; 2 uses
  %i.cp = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cq = load ptr, ptr %i.e, align 8
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.j, label %_ZN2v88internal7Isolate14array_functionEv.exit.i, !prof !5

bb.j:                                             ; preds = %.critedge46.i
  %i.cs = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #15
  br label %_ZN2v88internal7Isolate14array_functionEv.exit.i

_ZN2v88internal7Isolate14array_functionEv.exit.i: ; preds = %bb.j, %.critedge46.i
  %.0.i.i.i54.i = phi ptr [ %i.cs, %bb.j ], [ %i.cp, %.critedge46.i ] ; 2 uses
  %i.ct = ptrtoint ptr %.0.i.i.i54.i to i64
  %i.cu = add i64 %i.ct, 8
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %i.cv, ptr %i.c, align 8
  store i64 %i.co, ptr %.0.i.i.i54.i, align 8
  %i.cw = icmp eq i64 %i.ce, %i.co
  br i1 %i.cw, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN2v88internal7Isolate14array_functionEv.exit.i
  %i.cx = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116Fast_ArrayConcatEPNS0_7IsolateEPNS0_16BuiltinArgumentsE(ptr noundef nonnull %2, ptr noundef %16) ; 2 uses
  %.not152.i = icmp eq ptr %i.cx, null
  br i1 %.not152.i, label %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit47.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = load i64, ptr %i.cx, align 8
  br label %.thread147.i

_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit47.i: ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i55.i = load i64, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.db = load i64, ptr %i.da, align 8
  %.not153.i = icmp eq i64 %.sroa.0.0.copyload.i55.i, %i.db
  br i1 %.not153.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit47.i
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.dd = load i64, ptr %i.dc, align 8
  br label %.thread147.i

bb.n:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit47.i, %_ZN2v88internal7Isolate14array_functionEv.exit.i
  %i.de = load i64, ptr %16, align 8
  %i.df = trunc i64 %i.de to i32                  ; 4 uses
  %i.dg = add i32 %i.df, -4                       ; 4 uses
  %i.dh = load i64, ptr %i.cb, align 8
  %.sroa.0.0.copyload.i273.i.i = load i64, ptr %i.cf, align 8
  %i.di = add i64 %.sroa.0.0.copyload.i273.i.i, 375
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8
  %i.dl = icmp ne i64 %i.dh, %i.dk                ; 3 uses
  %i.dm = icmp slt i32 %i.df, 5
  br i1 %i.dm, label %._crit_edge.i.i, label %.lr.ph674.i.i

.lr.ph674.i.i:                                    ; preds = %bb.n
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 5 uses
  %17 = sext i32 %i.dg to i64
  br label %bb.o

._crit_edge.loopexit.i.i:                         ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit.i.i, %bb.p, %.critedge.thread.i.thread.i
  %.1197.lcssa829.i296.i = phi i32 [ %.2198.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.2198.i.i, %bb.p ], [ %.0196671.i.i, %.critedge.thread.i.thread.i ]
  %.1194.lcssa831.i293.i = phi i32 [ %.2195.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.2195.i.i, %bb.p ], [ %.0193672.i.i, %.critedge.thread.i.thread.i ]
  %.1.lcssa833.i290.i = phi i8 [ %.4.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.4.i.i, %bb.p ], [ %.0673.i.i, %.critedge.thread.i.thread.i ]
  %i.dp = icmp eq i8 %.1.lcssa833.i290.i, 4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.n
  %.0196.lcssa.i.i = phi i32 [ 0, %bb.n ], [ %.1197.lcssa829.i296.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.0193.lcssa.i.i = phi i32 [ 0, %bb.n ], [ %.1194.lcssa831.i293.i, %._crit_edge.loopexit.i.i ] ; 5 uses
  %.0.lcssa.i.i = phi i1 [ false, %bb.n ], [ %i.dp, %._crit_edge.loopexit.i.i ]
  %i.dq = shl i32 %.0196.lcssa.i.i, 1
  %.not.i56.i = icmp ult i32 %i.dq, %.0193.lcssa.i.i
  %or.cond247.i.i = select i1 %i.dl, i1 true, i1 %.not.i56.i
  br i1 %or.cond247.i.i, label %.critedge249.thread.i.i, label %bb.aj

bb.o:                                             ; preds = %.backedge.i.i, %.lr.ph674.i.i
  %indvars.iv733.i.i = phi i64 [ 1024, %.lr.ph674.i.i ], [ %indvars.iv733.be.i.i, %.backedge.i.i ] ; 3 uses
  %.0673.i.i = phi i8 [ 0, %.lr.ph674.i.i ], [ %.1.lcssa833.i288.i, %.backedge.i.i ] ; 3 uses
  %.0193672.i.i = phi i32 [ 0, %.lr.ph674.i.i ], [ %.1194.lcssa831.i291.i, %.backedge.i.i ] ; 3 uses
  %.0196671.i.i = phi i32 [ 0, %.lr.ph674.i.i ], [ %.1197.lcssa829.i294.i, %.backedge.i.i ] ; 3 uses
  %.0199670.i.i = phi i32 [ 0, %.lr.ph674.i.i ], [ %.1200.lcssa827.i297.i, %.backedge.i.i ] ; 3 uses
  %i.dr = load ptr, ptr %i.c, align 8
  %i.ds = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dt = load i32, ptr %i.g, align 8             ; 2 uses
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.g, align 8
  %i.dv = icmp sge i32 %.0199670.i.i, %i.dg       ; 2 uses
  %i.dw = sext i32 %.0199670.i.i to i64           ; 2 uses
  %i.dx = icmp sle i64 %indvars.iv733.i.i, %i.dw
  %or.cond261.not660.i.i = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %or.cond261.not660.i.i, label %.critedge.thread.i.thread.i, label %.lr.ph.i.i

.critedge.thread.i.thread.i:                      ; preds = %bb.o
  store i32 %i.dt, ptr %i.g, align 8
  br i1 %i.dv, label %._crit_edge.loopexit.i.i, label %.backedge.i.i

.critedge.thread.i.i:                             ; preds = %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
  %i.dy = trunc nsw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  %.pre217.i = load i32, ptr %i.g, align 8
  %.pre218.i = load ptr, ptr %i.e, align 8
  %i.dz = add nsw i32 %.pre217.i, -1
  %i.ea = icmp eq ptr %.pre218.i, %i.ds
  store ptr %i.dr, ptr %i.c, align 8
  store i32 %i.dz, ptr %i.g, align 8
  br i1 %i.ea, label %_ZN2v88internal11HandleScopeD2Ev.exit.i.i, label %bb.p, !prof !26

bb.p:                                             ; preds = %.critedge.thread.i.i
  store ptr %i.ds, ptr %i.e, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br i1 %i.kl, label %._crit_edge.loopexit.i.i, label %.backedge.i.i

_ZN2v88internal11HandleScopeD2Ev.exit.i.i:        ; preds = %.critedge.thread.i.i
  br i1 %i.kl, label %._crit_edge.loopexit.i.i, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit.i.i, %bb.p, %.critedge.thread.i.thread.i
  %.1200.lcssa827.i297.i = phi i32 [ %i.dy, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %i.dy, %bb.p ], [ %.0199670.i.i, %.critedge.thread.i.thread.i ]
  %.1197.lcssa829.i294.i = phi i32 [ %.2198.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.2198.i.i, %bb.p ], [ %.0196671.i.i, %.critedge.thread.i.thread.i ]
  %.1194.lcssa831.i291.i = phi i32 [ %.2195.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.2195.i.i, %bb.p ], [ %.0193672.i.i, %.critedge.thread.i.thread.i ]
  %.1.lcssa833.i288.i = phi i8 [ %.4.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.4.i.i, %bb.p ], [ %.0673.i.i, %.critedge.thread.i.thread.i ]
  %indvars.iv733.be.i.i = add nuw nsw i64 %indvars.iv733.i.i, 1024
  br label %bb.o, !llvm.loop !27

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i ], [ %i.dw, %bb.o ] ; 3 uses
  %.1664.i.i = phi i8 [ %.4.i.i, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i ], [ %.0673.i.i, %bb.o ] ; 6 uses
  %.1194663.i.i = phi i32 [ %.2195.i.i, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i ], [ %.0193672.i.i, %bb.o ]
  %.1197662.i.i = phi i32 [ %.2198.i.i, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i ], [ %.0196671.i.i, %bb.o ]
  %i.eb = load i64, ptr %16, align 8              ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = trunc i64 %indvars.iv.i.i to i32
  %i.ee = add i32 %i.ed, 4
  %.not.i274.i.i = icmp ugt i32 %i.ee, %i.ec
  br i1 %.not.i274.i.i, label %bb.q, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i, !prof !5

bb.q:                                             ; preds = %.lr.ph.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ef = shl i64 %indvars.iv.i.i, 32
  %sext.i.i = sub i64 -21474836480, %i.ef
  %i.eg = ashr exact i64 %sext.i.i, 32
  %i.eh = add i64 %i.eb, %i.eg
  %i.ei = shl nsw i64 %i.eh, 3
  %i.ej = load ptr, ptr %i.b, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.ei
  %i.em = inttoptr i64 %i.el to ptr               ; 2 uses
  %i.en = load i64, ptr %i.em, align 8            ; 4 uses
  %i.eo = trunc i64 %i.en to i1
  br i1 %i.eo, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i
  %i.ep = add nsw i64 %i.en, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 3 uses
  %i.er = load atomic volatile i64, ptr %i.eq monotonic, align 8
  %i.es = add i64 %i.er, 11
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load atomic volatile i16, ptr %i.et monotonic, align 2
  %i.ev = icmp eq i16 %i.eu, 2119
  br i1 %i.ev, label %bb.r, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i

bb.r:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ew = add i64 %i.en, 23
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load i64, ptr %i.ex, align 8            ; 4 uses
  %i.ez = and i64 %i.ey, 1
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fb = lshr i64 %i.ey, 32
  %i.fc = trunc nuw i64 %i.fb to i32
  %i.fd = sitofp i32 %i.fc to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.fe = add nsw i64 %i.ey, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.fg, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i: ; preds = %bb.t, %bb.s
  %i.fh = phi double [ %i.fd, %bb.s ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.t ]
  %i.fi = fptoui double %i.fh to i32              ; 27 uses
  %.not245.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not245.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i
  %i.fj = load atomic volatile i64, ptr %i.eq monotonic, align 8
  %i.fk = add i64 %i.fj, 14
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = lshr i8 %i.fm, 2                        ; 2 uses
  switch i8 %i.fn, label %bb.x [
    i8 1, label %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i
    i8 5, label %bb.v
    i8 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  br label %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i

bb.w:                                             ; preds = %bb.u
  br label %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i

bb.x:                                             ; preds = %bb.u
  br label %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i

_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.0.i276.i.i = phi i8 [ %i.fn, %bb.x ], [ 4, %bb.v ], [ 2, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %i.fo = add nsw i8 %.0.i276.i.i, -6
  %i.fp = icmp ult i8 %i.fo, 7
  %spec.select.i.i = select i1 %i.fp, i8 2, i8 %.0.i276.i.i ; 2 uses
  %i.fq = call noundef zeroext i1 @_ZN2v88internal35IsMoreGeneralElementsKindTransitionENS0_12ElementsKindES1_(i8 noundef zeroext %.1664.i.i, i8 noundef zeroext %spec.select.i.i) #15
  %..i.i.i = select i1 %i.fq, i8 %spec.select.i.i, i8 %.1664.i.i
  %.pre.i.i = load i64, ptr %i.em, align 8        ; 2 uses
  %.pre763.i.i = add i64 %.pre.i.i, 23
  %.pre764.i.i = inttoptr i64 %.pre763.i.i to ptr
  %.pre216.i = load i64, ptr %.pre764.i.i, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i
  %i.fr = phi i64 [ %.pre216.i, %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i ], [ %i.ey, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i ] ; 3 uses
  %i.fs = phi i64 [ %.pre.i.i, %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i ], [ %i.en, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i ] ; 4 uses
  %.2.i.i = phi i8 [ %..i.i.i, %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i ], [ %.1664.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i ] ; 26 uses
  %i.ft = and i64 %i.fr, 1
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fv = lshr i64 %i.fr, 32
  %i.fw = trunc nuw i64 %i.fv to i32
  %i.fx = sitofp i32 %i.fw to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fy = add nsw i64 %i.fr, -1
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ga, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %i.gb = phi double [ %i.fx, %bb.z ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.aa ]
  %i.gc = fptoui double %i.gb to i32
  %.fr236 = freeze i32 %i.gc                      ; 30 uses
  %i.gd = add i64 %i.fs, -1
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load atomic volatile i64, ptr %i.ge monotonic, align 8
  %i.gg = add i64 %i.gf, 14
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = lshr i8 %i.gi, 2
  switch i8 %i.gj, label %.loopexit.i.i.i [
    i8 0, label %bb.ab
end_hunk_0
begin_hunk_1_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ig, %i.if
  %i.ii = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.loopexit.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph121.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph121.i.i.i ], [ %n.vec, %middle.block ]
  %.2120.i.i.i.ph = phi i32 [ 0, %.lr.ph121.i.i.i ], [ %i.ii, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2120.i.i.i = phi i32 [ %spec.select35.i.i.i, %scalar.ph ], [ %.2120.i.i.i.ph, %scalar.ph.preheader ]
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.i.i.i
  %.0.copyload.i.i.i.i.i46.i.i.i = load i64, ptr %i.ij, align 1
  %i.ik = icmp ne i64 %.0.copyload.i.i.i.i.i46.i.i.i, -2251799814209537
  %i.il = zext i1 %i.ik to i32
  %spec.select35.i.i.i = add nuw nsw i32 %.2120.i.i.i, %i.il ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph, !llvm.loop !32

bb.ae:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.im = add i64 %i.fs, 15
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = add i64 %i.io, -1
  %i.iq = inttoptr i64 %i.ip to ptr               ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load atomic volatile i64, ptr %i.ir monotonic, align 8
  %.fr = freeze i64 %i.is                         ; 2 uses
  %i.it = lshr i64 %.fr, 32                       ; 4 uses
  %.not116.i.i.i = icmp eq i64 %i.it, 0
  br i1 %.not116.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 3 uses
  %i.iv = icmp eq i64 %i.it, 1
  br i1 %i.iv, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.it, 4294967294
  br label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1, %.lr.ph.i.i.i.new
  %.5118.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %i.jo, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ] ; 2 uses
  %.sroa.049.0117.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.jp, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ]
  %i.iw = mul i64 %.sroa.049.0117.i.i.i, 12884901888
  %sext.i.i.i.i.i = add i64 %i.iw, 17179869184
  %i.ix = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.iy = getelementptr inbounds i8, ptr %i.iu, i64 %i.ix
  %i.iz = load atomic volatile i64, ptr %i.iy monotonic, align 8 ; 2 uses
  %i.ja = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.jb = icmp eq i64 %i.iz, %i.ja
  br i1 %i.jb, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.af
  %i.jc = load i64, ptr %i.do, align 8
  %i.jd = icmp ne i64 %i.iz, %i.jc
  %cond.fr.i.i.i = freeze i1 %i.jd
  %i.je = zext i1 %cond.fr.i.i.i to i32
  %spec.select113.i.i.i = add nsw i32 %.5118.i.i.i, %i.je
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.af
  %i.jf = phi i32 [ %.5118.i.i.i, %bb.af ], [ %spec.select113.i.i.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ] ; 2 uses
  %i.jg = mul i64 %.sroa.049.0117.i.i.i, 12884901888
  %sext.i.i.i.i.i.1 = add i64 %i.jg, 30064771072
  %i.jh = ashr exact i64 %sext.i.i.i.i.i.1, 29
  %i.ji = getelementptr inbounds i8, ptr %i.iu, i64 %i.jh
  %i.jj = load atomic volatile i64, ptr %i.ji monotonic, align 8 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, %i.ja
  br i1 %i.jk, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.jl = load i64, ptr %i.do, align 8
  %i.jm = icmp ne i64 %i.jj, %i.jl
  %cond.fr.i.i.i.1 = freeze i1 %i.jm
  %i.jn = zext i1 %cond.fr.i.i.i.1 to i32
  %spec.select113.i.i.i.1 = add nsw i32 %i.jf, %i.jn
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.jo = phi i32 [ %i.jf, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i ], [ %spec.select113.i.i.i.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1 ] ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.049.0117.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit222.unr-lcssa, label %bb.af

bb.ag:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

bb.ah:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #14
  unreachable

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %bb.ac
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.loopexit.i.i.i, label %.epil.preheader229

.epil.preheader229:                               ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph125.i.i.i
  %indvars.iv130.i.i.i.epil.init = phi i64 [ 0, %.lr.ph125.i.i.i ], [ %indvars.iv.next131.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.032124.i.i.i.epil.init = phi i32 [ 0, %.lr.ph125.i.i.i ], [ %spec.select.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter230, 0
  call void @llvm.assume(i1 %lcmp.mod233)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader229
  %indvars.iv130.i.i.i.epil = phi i64 [ %indvars.iv130.i.i.i.epil.init, %.epil.preheader229 ], [ %indvars.iv.next131.i.i.i.epil, %bb.ai ] ; 2 uses
  %.032124.i.i.i.epil = phi i32 [ %.032124.i.i.i.epil.init, %.epil.preheader229 ], [ %spec.select.i.i.i.epil, %bb.ai ]
  %epil.iter = phi i64 [ 0, %.epil.preheader229 ], [ %epil.iter.next, %bb.ai ]
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv130.i.i.i.epil
  %i.jr = load atomic volatile i64, ptr %i.jq monotonic, align 8
  %i.js = load i64, ptr %i.do, align 8
  %i.jt = icmp ne i64 %i.jr, %i.js
  %i.ju = zext i1 %i.jt to i32
  %spec.select.i.i.i.epil = add nuw nsw i32 %.032124.i.i.i.epil, %i.ju ; 2 uses
  %indvars.iv.next131.i.i.i.epil = add nuw nsw i64 %indvars.iv130.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter230
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i, label %bb.ai, !llvm.loop !33

.loopexit.i.i.i.loopexit222.unr-lcssa:            ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1
  %i.jv = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.jv, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.i.loopexit222.unr-lcssa, %.lr.ph.i.i.i
  %.5118.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.jo, %.loopexit.i.i.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.049.0117.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.jp, %.loopexit.i.i.i.loopexit222.unr-lcssa ]
  %lcmp.mod228 = trunc i64 %i.it to i1
  call void @llvm.assume(i1 %lcmp.mod228)
  %i.jw = mul i64 %.sroa.049.0117.i.i.i.epil.init, 12884901888
  %sext.i.i.i.i.i.epil = add i64 %i.jw, 17179869184
  %i.jx = ashr exact i64 %sext.i.i.i.i.i.epil, 29
  %i.jy = getelementptr inbounds i8, ptr %i.iu, i64 %i.jx
  %i.jz = load atomic volatile i64, ptr %i.jy monotonic, align 8 ; 2 uses
  %i.ka = load i64, ptr %i.dn, align 8
  %i.kb = icmp eq i64 %i.jz, %i.ka
  br i1 %i.kb, label %.loopexit.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil: ; preds = %.epil.preheader
  %i.kc = load i64, ptr %i.do, align 8
  %i.kd = icmp ne i64 %i.jz, %i.kc
  %cond.fr.i.i.i.epil = freeze i1 %i.kd
  %i.ke = zext i1 %cond.fr.i.i.i.epil to i32
  %spec.select113.i.i.i.epil = add nsw i32 %.5118.i.i.i.epil.init, %i.ke
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit222.unr-lcssa, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil, %.epil.preheader, %scalar.ph, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.ai, %middle.block, %bb.ae, %bb.ad, %bb.ab, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %.7.i.i.i = phi i32 [ 0, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 0, %bb.ad ], [ %spec.select35.i.i.i, %scalar.ph ], [ 0, %bb.ae ], [ 0, %bb.ab ], [ %spec.select.i.i.i.epil, %bb.ai ], [ %i.ii, %middle.block ], [ %spec.select.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.jo, %.loopexit.i.i.i.loopexit222.unr-lcssa ], [ %.5118.i.i.i.epil.init, %.epil.preheader ], [ %spec.select113.i.i.i.epil, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil ]
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i: ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.kf = load atomic volatile i64, ptr %i.eq monotonic, align 8
  %i.kg = add i64 %i.kf, 11
  %i.kh = inttoptr i64 %i.kg to ptr
  %i.ki = load atomic volatile i16, ptr %i.kh monotonic, align 2
  %.fr.i.i = freeze i16 %i.ki
  %i.kj = icmp eq i16 %.fr.i.i, 130
  %spec.select574.i.i = select i1 %i.kj, i8 4, i8 2 ; 2 uses
  %i.kk = call noundef zeroext i1 @_ZN2v88internal35IsMoreGeneralElementsKindTransitionENS0_12ElementsKindES1_(i8 noundef zeroext %.1664.i.i, i8 noundef zeroext %spec.select574.i.i) #15
  %..i280.i.i = select i1 %i.kk, i8 %spec.select574.i.i, i8 %.1664.i.i
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i, %.loopexit.i.i.i, %bb.ag, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i
  %.0214.i.i = phi i32 [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %.7.i.i.i, %.loopexit.i.i.i ], [ 0, %bb.ag ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ]
  %.0213.i.i = phi i32 [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %i.fi, %.loopexit.i.i.i ], [ %i.fi, %bb.ag ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fi, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ]
  %.4.i.i = phi i8 [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %..i280.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %.2.i.i, %.loopexit.i.i.i ], [ %.2.i.i, %bb.ag ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.1664.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ] ; 5 uses
  %.2195.i.i = call i32 @llvm.uadd.sat.i32(i32 %.1194663.i.i, i32 %.0213.i.i) ; 5 uses
  %.2198.i.i = call i32 @llvm.uadd.sat.i32(i32 %.1197662.i.i, i32 %.0214.i.i) ; 5 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.kl = icmp sge i64 %indvars.iv.next.i.i, %17  ; 3 uses
  %i.km = icmp sge i64 %indvars.iv.next.i.i, %indvars.iv733.i.i
  %or.cond261.not.i.i = select i1 %i.kl, i1 true, i1 %i.km
  br i1 %or.cond261.not.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !35

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 9112
  %i.ko = load i64, ptr %i.kn, align 8
  %i.kp = add i64 %i.ko, 23
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = and i64 %i.kr, -4294967295
  %i.kt = icmp eq i64 %i.ks, 4294967296           ; 2 uses
  %or.cond.i.i = select i1 %i.kt, i1 %.0.lcssa.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.ak, label %.critedge249.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ku = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFixedDoubleArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.0193.lcssa.i.i, i8 noundef zeroext 0) #15 ; 7 uses
  %.not243.i.i = icmp ne i32 %.0193.lcssa.i.i, 0
  %i.kv = icmp sgt i32 %i.df, 4
  %or.cond697.i.i = select i1 %.not243.i.i, i1 %i.kv, i1 false
  br i1 %or.cond697.i.i, label %.lr.ph691.i.i, label %.thread535.i.i

.lr.ph691.i.i:                                    ; preds = %bb.ak
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 9080
  %wide.trip.count.i.i = zext i32 %i.dg to i64
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.i.i, %.lr.ph691.i.i
  %indvars.iv745.i.i = phi i64 [ 0, %.lr.ph691.i.i ], [ %indvars.iv.next746.i.i, %.loopexit.i.i ] ; 3 uses
  %.5690.i.i = phi i8 [ 4, %.lr.ph691.i.i ], [ %.11.i.i, %.loopexit.i.i ] ; 17 uses
  %.0216689.i.i = phi i32 [ 0, %.lr.ph691.i.i ], [ %.8224.i.i, %.loopexit.i.i ] ; 18 uses
  %i.ky = add nuw nsw i64 %indvars.iv745.i.i, 4
  %i.kz = load i64, ptr %16, align 8              ; 2 uses
  %i.la = and i64 %i.kz, 4294967295
  %.not.i281.i.i = icmp samesign ugt i64 %i.ky, %i.la
  br i1 %.not.i281.i.i, label %bb.am, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit282.i.i, !prof !5

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit282.i.i: ; preds = %bb.al
  %i.lb = shl nuw i64 %indvars.iv745.i.i, 32
  %sext820.i.i = sub i64 -21474836480, %i.lb
  %i.lc = ashr exact i64 %sext820.i.i, 32
  %i.ld = add i64 %i.kz, %i.lc
  %i.le = shl nsw i64 %i.ld, 3
  %i.lf = load ptr, ptr %i.b, align 8
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = sub i64 %i.lg, %i.le
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = load i64, ptr %i.li, align 8            ; 6 uses
  %i.lk = and i64 %i.lj, 1
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.an, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.an:                                            ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit282.i.i
  %i.lm = load i64, ptr %i.ku, align 8
  %i.ln = add i64 %i.lm, -1
  %i.lo = inttoptr i64 %i.ln to ptr
  %i.lp = lshr i64 %i.lj, 32
  %i.lq = trunc nuw i64 %i.lp to i32
  %i.lr = sitofp i32 %i.lq to double
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lt = sext i32 %.0216689.i.i to i64
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.lt
  store double %i.lr, ptr %i.lu, align 1
  %i.lv = add nsw i32 %.0216689.i.i, 1
  br label %.loopexit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit282.i.i
  %i.lw = add nsw i64 %i.lj, -1
  %i.lx = inttoptr i64 %i.lw to ptr               ; 4 uses
  %i.ly = load atomic volatile i64, ptr %i.lx monotonic, align 8
  %i.lz = add i64 %i.ly, 11
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = load atomic volatile i16, ptr %i.ma monotonic, align 2
  %i.mc = icmp eq i16 %i.mb, 130
  br i1 %i.mc, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i, label %bb.ao

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.md = load i64, ptr %i.ku, align 8
  %i.me = add i64 %i.md, -1
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.0.copyload.i.i.i.i.i.i285.i.i = load double, ptr %i.mg, align 8 ; 2 uses
  %i.mh = fcmp uno double %.0.copyload.i.i.i.i.i.i285.i.i, 0.000000e+00
  %.0.i287.i.i = select i1 %i.mh, double +qnan, double %.0.copyload.i.i.i.i.i.i285.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mj = sext i32 %.0216689.i.i to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.mj
  store double %.0.i287.i.i, ptr %i.mk, align 1
  %i.ml = add nsw i32 %.0216689.i.i, 1
  br label %.loopexit.i.i

bb.ao:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.mm = load atomic volatile i64, ptr %i.lx monotonic, align 8
  %i.mn = add i64 %i.mm, 23
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = load i64, ptr %i.mo, align 8
  %.sroa.0.0.copyload.i.i.i3.i.i.i = load i64, ptr %i.cf, align 8
  %i.mq = add i64 %.sroa.0.0.copyload.i.i.i3.i.i.i, -1
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = load atomic volatile i64, ptr %i.mr monotonic, align 8
  %i.mt = add i64 %i.ms, 31
  %i.mu = inttoptr i64 %i.mt to ptr
  %i.mv = load i64, ptr %i.mu, align 8
  %i.mw = add i64 %i.mv, 639
  %i.mx = inttoptr i64 %i.mw to ptr
  %i.my = load atomic volatile i64, ptr %i.mx monotonic, align 8 ; 2 uses
  %i.mz = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.na = load ptr, ptr %i.e, align 8
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %bb.ap, label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i, !prof !5

bb.ap:                                            ; preds = %bb.ao
  %i.nc = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #15
  br label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i

_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i = phi ptr [ %i.nc, %bb.ap ], [ %i.mz, %bb.ao ] ; 2 uses
  %i.nd = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ne = add i64 %i.nd, 8
  %i.nf = inttoptr i64 %i.ne to ptr
  store ptr %i.nf, ptr %i.c, align 8
  store i64 %i.my, ptr %.0.i.i.i.i.i.i, align 8
  %i.ng = icmp eq i64 %i.mp, %i.my
  %i.nh = add i64 %i.lj, 23
  %i.ni = inttoptr i64 %i.nh to ptr
  %i.nj = load i64, ptr %i.ni, align 8            ; 3 uses
  %i.nk = and i64 %i.nj, 1
  %i.nl = icmp eq i64 %i.nk, 0
  br i1 %i.nl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i
  %i.nm = lshr i64 %i.nj, 32
  %i.nn = trunc nuw i64 %i.nm to i32
  %i.no = sitofp i32 %i.nn to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i

bb.ar:                                            ; preds = %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i
  %i.np = add nsw i64 %i.nj, -1
  %i.nq = inttoptr i64 %i.np to ptr
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.0.copyload.i.i.i.i.i290.i.i = load double, ptr %i.nr, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i: ; preds = %bb.ar, %bb.aq
  %i.ns = phi double [ %i.no, %bb.aq ], [ %.0.copyload.i.i.i.i.i290.i.i, %bb.ar ]
  %i.nt = fptoui double %i.ns to i32              ; 5 uses
  %i.nu = load atomic volatile i64, ptr %i.lx monotonic, align 8
  %i.nv = add i64 %i.nu, 14
  %i.nw = inttoptr i64 %i.nv to ptr
  %i.nx = load i8, ptr %i.nw, align 1
  %i.ny = lshr i8 %i.nx, 2
  switch i8 %i.ny, label %bb.bc [
    i8 5, label %bb.as
    i8 4, label %bb.as
    i8 1, label %bb.az
    i8 0, label %bb.az
    i8 3, label %.loopexit.i.i
    i8 11, label %.loopexit.i.i
    i8 9, label %.loopexit.i.i
    i8 7, label %.loopexit.i.i
    i8 2, label %.loopexit.i.i
    i8 10, label %.loopexit.i.i
    i8 8, label %.loopexit.i.i
    i8 6, label %.loopexit.i.i
    i8 13, label %.loopexit.i.i
    i8 43, label %.loopexit.i.i
  ]

bb.as:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i
  %i.nz = icmp eq i32 %i.nt, 0
  br i1 %i.nz, label %.loopexit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.oa = add i64 %i.lj, 15
  %i.ob = inttoptr i64 %i.oa to ptr
  %i.oc = load i64, ptr %i.ob, align 8
  %i.od = add i64 %i.oc, -1
  %i.oe = inttoptr i64 %i.od to ptr
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16 ; 2 uses
  %.fr687.i.i = freeze i1 %i.ng
  %i.og = sext i32 %.0216689.i.i to i64           ; 2 uses
  br i1 %.fr687.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.at, %bb.ax
  %indvars.iv742.i.i = phi i64 [ %indvars.iv.next743.i.i, %bb.ax ], [ %i.og, %bb.at ] ; 3 uses
  %.6685.us.i.i = phi i8 [ %.7.us.i.i, %bb.ax ], [ %.5690.i.i, %bb.at ]
  %.0239683.us.i.i = phi i32 [ %i.pc, %bb.ax ], [ 0, %bb.at ] ; 2 uses
  %i.oh = sext i32 %.0239683.us.i.i to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.oh
  %.0.copyload.i.i.i.i.i294.us.i.i = load i64, ptr %i.oi, align 1 ; 2 uses
  %i.oj = icmp eq i64 %.0.copyload.i.i.i.i.i294.us.i.i, -2251799814209537
  br i1 %i.oj, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.split.us.i.i
  %i.ok = bitcast i64 %.0.copyload.i.i.i.i.i294.us.i.i to double ; 2 uses
  %i.ol = load i64, ptr %i.ku, align 8
  %i.om = add i64 %i.ol, -1
  %i.on = inttoptr i64 %i.om to ptr
  %i.oo = fcmp uno double %i.ok, 0.000000e+00
  %.0.i295.us.i.i = select i1 %i.oo, double +qnan, double %i.ok
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.op, i64 %indvars.iv742.i.i
  store double %.0.i295.us.i.i, ptr %i.oq, align 1
  br label %bb.ax

bb.av:                                            ; preds = %.split.us.i.i
  %i.or = load i64, ptr %i.kx, align 8
  %i.os = add i64 %i.or, 23
  %i.ot = inttoptr i64 %i.os to ptr
  %i.ou = load i64, ptr %i.ot, align 8
  %i.ov = and i64 %i.ou, -4294967295
  %i.ow = icmp eq i64 %i.ov, 4294967296
  br i1 %i.ow, label %bb.aw, label %.thread541.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ox = load i64, ptr %i.ku, align 8
  %i.oy = add i64 %i.ox, -1
  %i.oz = inttoptr i64 %i.oy to ptr
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %indvars.iv742.i.i
  store i64 -2251799814209537, ptr %i.pb, align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %i.pq = inttoptr i64 %i.pp to ptr
  %i.pr = load i64, ptr %i.pq, align 8
  %i.ps = add i64 %i.pr, -1
  %i.pt = inttoptr i64 %i.ps to ptr
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = sext i32 %.0216689.i.i to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph681.i.i
  %indvars.iv735.i.i = phi i64 [ %i.pv, %.lr.ph681.i.i ], [ %indvars.iv.next736.i.i, %bb.bb ] ; 2 uses
  %.0240678.i.i = phi i32 [ 0, %.lr.ph681.i.i ], [ %i.qi, %bb.bb ] ; 2 uses
  %i.pw = sext i32 %.0240678.i.i to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.pw
  %i.py = load atomic volatile i64, ptr %i.px monotonic, align 8 ; 2 uses
  %i.pz = icmp eq i64 %i.py, %i.po
  br i1 %i.pz, label %.thread541.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qa = lshr i64 %i.py, 32
  %i.qb = trunc nuw i64 %i.qa to i32
  %i.qc = load i64, ptr %i.ku, align 8
  %i.qd = add i64 %i.qc, -1
  %i.qe = inttoptr i64 %i.qd to ptr
  %i.qf = sitofp i32 %i.qb to double
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %indvars.iv735.i.i
  store double %i.qf, ptr %i.qh, align 1
  %indvars.iv.next736.i.i = add nsw i64 %indvars.iv735.i.i, 1 ; 2 uses
  %i.qi = add nuw i32 %.0240678.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.qi, %i.nt
  br i1 %exitcond.not.i.i, label %.loopexit.loopexit702.i.i, label %bb.ba, !llvm.loop !37

bb.bc:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #14
  unreachable

.loopexit.loopexit.i.i:                           ; preds = %bb.ax
  %i.qj = trunc nsw i64 %indvars.iv.next743.i.i to i32
  br label %.loopexit.i.i

.loopexit.loopexit700.i.i:                        ; preds = %bb.ay
  %i.qk = trunc nsw i64 %indvars.iv.next739.i.i to i32
  br label %.loopexit.i.i

.loopexit.loopexit702.i.i:                        ; preds = %bb.bb
  %i.ql = trunc nsw i64 %indvars.iv.next736.i.i to i32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit702.i.i, %.loopexit.loopexit700.i.i, %.loopexit.loopexit.i.i, %bb.az, %bb.as, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i, %bb.an
  %.8224.i.i = phi i32 [ %i.lv, %bb.an ], [ %i.ml, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i ], [ %.0216689.i.i, %bb.as ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %i.qj, %.loopexit.loopexit.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %i.qk, %.loopexit.loopexit700.i.i ], [ %.0216689.i.i, %bb.az ], [ %i.ql, %.loopexit.loopexit702.i.i ] ; 2 uses
  %.11.i.i = phi i8 [ %.5690.i.i, %bb.an ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i ], [ %.5690.i.i, %bb.as ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.7.us.i.i, %.loopexit.loopexit.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5690.i.i, %.loopexit.loopexit700.i.i ], [ %.5690.i.i, %bb.az ], [ %.5690.i.i, %.loopexit.loopexit702.i.i ] ; 2 uses
  %indvars.iv.next746.i.i = add nuw nsw i64 %indvars.iv745.i.i, 1 ; 2 uses
  %exitcond747.not.i.i = icmp eq i64 %indvars.iv.next746.i.i, %wide.trip.count.i.i
  br i1 %exitcond747.not.i.i, label %.thread535.i.i, label %bb.al, !llvm.loop !38

.thread535.i.i:                                   ; preds = %.loopexit.i.i, %bb.ak
  %.13540.i.i = phi i8 [ 4, %bb.ak ], [ %.11.i.i, %.loopexit.i.i ]
  %.10226539.i.i = phi i32 [ 0, %bb.ak ], [ %.8224.i.i, %.loopexit.i.i ]
  %i.qm = call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.ku, i8 noundef zeroext %.13540.i.i, i32 noundef %.10226539.i.i, i8 noundef zeroext 0) #15
  %i.qn = load i64, ptr %i.qm, align 8
  br label %.thread147.i

.critedge249.i.i:                                 ; preds = %bb.aj
  br i1 %i.kt, label %.thread541.i.i, label %.critedge249.thread.i.i

.thread541.i.i:                                   ; preds = %bb.ba, %.split.i.i, %bb.av, %.critedge249.i.i
  %i.qo = icmp ugt i32 %.0193.lcssa.i.i, 134217728
  br i1 %i.qo, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.thread541.i.i
  %i.qp = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 238, ptr null, i64 0) #15
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.qq, ptr noundef null) #15
  br label %.thread147.i

bb.be:                                            ; preds = %.thread541.i.i
  %i.qs = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.0193.lcssa.i.i, i8 noundef zeroext 0) #15
  br label %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i

.critedge249.thread.i.i:                          ; preds = %.critedge249.i.i, %._crit_edge.i.i
  br i1 %i.dl, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.critedge249.thread.i.i
  %i.qt = call ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE6TryNewINS0_7IsolateEEENS0_11MaybeHandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %2, i32 noundef %.0196.lcssa.i.i, i8 noundef zeroext 0, i32 noundef 0) #15 ; 2 uses
  %.not569.i.i = icmp eq ptr %i.qt, null
  br i1 %.not569.i.i, label %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i.i, label %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i

_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i.i: ; preds = %bb.bf
  %i.qu = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 238, ptr null, i64 0) #15
  %i.qv = load i64, ptr %i.qu, align 8
  %i.qw = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.qv, ptr noundef null) #15
  br label %.thread147.i

bb.bg:                                            ; preds = %.critedge249.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.qx = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.qy = load ptr, ptr %i.e, align 8
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %bb.bh, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !5

bb.bh:                                            ; preds = %bb.bg
  %i.ra = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i58.i = phi ptr [ %i.ra, %bb.bh ], [ %i.qx, %bb.bg ] ; 3 uses
  %i.rb = ptrtoint ptr %.0.i.i.i58.i to i64
  %i.rc = add i64 %i.rb, 8
  %i.rd = inttoptr i64 %i.rc to ptr
  store ptr %i.rd, ptr %i.c, align 8
  store i64 0, ptr %.0.i.i.i58.i, align 8
  store ptr %.0.i.i.i58.i, ptr %14, align 8
  %i.re = call ptr @_ZN2v88internal9Execution3NewEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %2, ptr nonnull %i.cb, ptr nonnull %i.cb, ptr nonnull %14, i64 1) #15 ; 2 uses
  %.not568.i.i = icmp eq ptr %i.re, null
  br i1 %.not568.i.i, label %.critedge253.i.i, label %.critedge251.i.i

.critedge253.i.i:                                 ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.rg = load i64, ptr %i.rf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.thread147.i

.critedge251.i.i:                                 ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i

_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i: ; preds = %.critedge251.i.i, %bb.bf, %bb.be
  %i.rh = phi i32 [ 1, %bb.be ], [ 0, %.critedge251.i.i ], [ 0, %bb.bf ]
  %.sroa.0357.0.i.i = phi ptr [ %i.qs, %bb.be ], [ %i.re, %.critedge251.i.i ], [ %i.qt, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr %2, ptr %15, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 58848
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = load i64, ptr %.sroa.0357.0.i.i, align 8
  %i.rm = call ptr @_ZN2v88internal13GlobalHandles6CreateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.rk, i64 %i.rl) #15
  store ptr %i.rm, ptr %i.ri, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store i32 0, ptr %i.rn, align 8
  %i.ro = load i64, ptr %.sroa.0357.0.i.i, align 8
  %i.rp = add i64 %i.ro, -1
  %i.rq = inttoptr i64 %i.rp to ptr               ; 4 uses
  %i.rr = load atomic volatile i64, ptr %i.rq monotonic, align 8
  %i.rs = add i64 %i.rr, 11
  %i.rt = inttoptr i64 %i.rs to ptr
  %i.ru = load atomic volatile i16, ptr %i.rt monotonic, align 2
  %i.rv = load atomic volatile i64, ptr %i.rq monotonic, align 8
  %i.rw = add i64 %i.rv, 11
  %i.rx = inttoptr i64 %i.rw to ptr
  %i.ry = load atomic volatile i16, ptr %i.rx monotonic, align 2
  %i.rz = add i16 %i.ry, -205
  %i.sa = icmp ult i16 %i.rz, 13
  br i1 %i.sa, label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i
  %i.sb = load atomic volatile i64, ptr %i.rq monotonic, align 8
  %i.sc = add i64 %i.sb, 11
  %i.sd = inttoptr i64 %i.sc to ptr
  %i.se = load atomic volatile i16, ptr %i.sd monotonic, align 2
  %i.sf = icmp ult i16 %i.se, 1042
  br i1 %i.sf, label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sg = load atomic volatile i64, ptr %i.rq monotonic, align 8
  %i.sh = add i64 %i.sg, 11
  %i.si = inttoptr i64 %i.sh to ptr
  %i.sj = load atomic volatile i16, ptr %i.si monotonic, align 2
  %.fr.i.i.i = freeze i16 %i.sj
  %.not.i298.i.i = icmp eq i16 %.fr.i.i.i, 2061
  %spec.select.i299.i.i = select i1 %.not.i298.i.i, i32 0, i32 8
  br label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i

_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i: ; preds = %bb.bj, %bb.bi, %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i
  %i.sk = phi i32 [ 8, %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i ], [ %spec.select.i299.i.i, %bb.bj ], [ 0, %bb.bi ]
  %i.sl = add i16 %i.ru, -205
  %i.sm = icmp ult i16 %i.sl, 13
  %i.sn = select i1 %i.sm, i32 4, i32 0
  %i.so = or disjoint i32 %i.sn, %i.rh
  %i.sp = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 5 uses
  %i.sq = or disjoint i32 %i.so, %i.sk            ; 2 uses
  store i32 %i.sq, ptr %i.sp, align 4
  %.not244694.i.i = icmp sgt i32 %i.df, 4
  br i1 %.not244694.i.i, label %.lr.ph696.i.i, label %.critedge259.i.i

.lr.ph696.i.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i
  %i.sr = getelementptr inbounds nuw i8, ptr %2, i64 9112
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 8896
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.sv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ta = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.tc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.td = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.te = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.tf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %wide.trip.count751.i.i = zext i32 %i.dg to i64
  br label %bb.bk

bb.bk:                                            ; preds = %.critedge255.i.i, %.lr.ph696.i.i
  %indvars.iv748.i.i = phi i64 [ 0, %.lr.ph696.i.i ], [ %indvars.iv.next749.i.i, %.critedge255.i.i ] ; 3 uses
  %i.tg = add nuw nsw i64 %indvars.iv748.i.i, 4
  %i.th = load i64, ptr %16, align 8              ; 2 uses
  %i.ti = and i64 %i.th, 4294967295
  %.not.i300.i.i = icmp samesign ugt i64 %i.tg, %i.ti
  br i1 %.not.i300.i.i, label %bb.bl, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i, !prof !5

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i: ; preds = %bb.bk
  %i.tj = shl nuw i64 %indvars.iv748.i.i, 32
  %sext821.i.i = sub i64 -21474836480, %i.tj
  %i.tk = ashr exact i64 %sext821.i.i, 32
  %i.tl = add i64 %i.tk, %i.th
  %i.tm = shl nsw i64 %i.tl, 3
  %i.tn = load ptr, ptr %i.b, align 8
  %i.to = ptrtoint ptr %i.tn to i64
  %i.tp = sub i64 %i.to, %i.tm
  %i.tq = inttoptr i64 %i.tp to ptr               ; 26 uses
  %i.tr = load ptr, ptr %i.c, align 8
  %i.ts = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.tt = load i32, ptr %i.g, align 8
  %i.tu = add nsw i32 %i.tt, 1
  store i32 %i.tu, ptr %i.g, align 8
  %i.tv = load i64, ptr %i.tq, align 8            ; 3 uses
  %i.tw = trunc i64 %i.tv to i1
  br i1 %i.tw, label %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i
  %i.tx = add nsw i64 %i.tv, -1
  %i.ty = inttoptr i64 %i.tx to ptr
  %i.tz = load atomic volatile i64, ptr %i.ty monotonic, align 8
  %i.ua = add i64 %i.tz, 11
  %i.ub = inttoptr i64 %i.ua to ptr
  %i.uc = load atomic volatile i16, ptr %i.ub monotonic, align 2
  %i.ud = icmp ugt i16 %i.uc, 299
  br i1 %i.ud, label %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i: ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i
  %i.ue = load i64, ptr %i.sr, align 8
  %i.uf = add i64 %i.ue, 23
  %i.ug = inttoptr i64 %i.uf to ptr
  %i.uh = load i64, ptr %i.ug, align 8
  %i.ui = and i64 %i.uh, -4294967295
  %i.uj = icmp eq i64 %i.ui, 4294967296
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  br i1 %i.uj, label %bb.bm, label %.critedge.i.i.i

bb.bm:                                            ; preds = %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i
  store i64 %i.tv, ptr %13, align 8
  %i.uk = call noundef zeroext i1 @_ZN2v88internal10JSReceiver19HasProxyInPrototypeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br i1 %i.uk, label %bb.bn, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge.i.i.i, %bb.bm
  %i.ul = call ptr @_ZN2v88internal7Runtime17GetObjectPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_6ObjectEEESG_Pb(ptr noundef nonnull %2, ptr nonnull %i.tq, ptr nonnull %i.ss, ptr null, ptr noundef null) #15 ; 2 uses
  %.not.i302.i.i = icmp eq ptr %i.ul, null
  br i1 %.not.i302.i.i, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.um = load i64, ptr %i.ul, align 8            ; 2 uses
  %i.un = load i64, ptr %i.st, align 8
  %i.uo = icmp eq i64 %i.um, %i.un
  br i1 %i.uo, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.up = call noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64 %i.um, ptr noundef nonnull %2) #15
  %.sroa.0.0.insert.insert.i17.i.i.i = select i1 %i.up, i16 257, i16 1
  br label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i: ; preds = %bb.bo, %bb.bm
  %i.uq = load i64, ptr %i.tq, align 8            ; 2 uses
  %i.ur = and i64 %i.uq, 1
  %i.us = icmp eq i64 %i.ur, 0
  br i1 %i.us, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i
  %i.ut = add nsw i64 %i.uq, -1
  %i.uu = inttoptr i64 %i.ut to ptr               ; 2 uses
  %i.uv = load atomic volatile i64, ptr %i.uu monotonic, align 8
  %i.uw = add i64 %i.uv, 11
  %i.ux = inttoptr i64 %i.uw to ptr
  %i.uy = load atomic volatile i16, ptr %i.ux monotonic, align 2
  %i.uz = icmp eq i16 %i.uy, 2119
  br i1 %i.uz, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.va = load atomic volatile i64, ptr %i.uu monotonic, align 8
  %i.vb = add i64 %i.va, 11
  %i.vc = inttoptr i64 %i.vb to ptr
  %i.vd = load atomic volatile i16, ptr %i.vc monotonic, align 2
  %i.ve = icmp eq i16 %i.vd, 302
  br i1 %i.ve, label %bb.bs, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.vf = call i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr nonnull %i.tq) #15
  br label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i: ; preds = %bb.bs, %bb.br, %bb.bq, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i, %bb.bp, %bb.bn, %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i
  %.sroa.014.1.i.i.i = phi i16 [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i ], [ 1, %bb.br ], [ 1, %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i ], [ 1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i ], [ 257, %bb.bq ], [ %i.vf, %bb.bs ], [ 0, %bb.bn ], [ %.sroa.0.0.insert.insert.i17.i.i.i, %bb.bp ] ; 2 uses
  store ptr %i.tr, ptr %i.c, align 8
  %i.vg = load i32, ptr %i.g, align 8
  %i.vh = add nsw i32 %i.vg, -1
  store i32 %i.vh, ptr %i.g, align 8
  %i.vi = load ptr, ptr %i.e, align 8
  %.not.i.i.i.i = icmp eq ptr %i.vi, %i.ts
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i, label %bb.bt, !prof !8

bb.bt:                                            ; preds = %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i
  store ptr %i.ts, ptr %i.e, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i

_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i: ; preds = %bb.bt, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i
  %i.vj = trunc i16 %.sroa.014.1.i.i.i to i1
  br i1 %i.vj, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.vl = load i64, ptr %i.vk, align 8
  br label %bb.ey

_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i:            ; preds = %_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i
  %i.vm = and i16 %.sroa.014.1.i.i.i, 256
  %.not573.i.i = icmp eq i16 %i.vm, 0
  br i1 %.not573.i.i, label %bb.dw, label %bb.bv

bb.bv:                                            ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i
  %i.vn = load i64, ptr %i.tq, align 8            ; 3 uses
  %i.vo = add i64 %i.vn, -1
  %i.vp = inttoptr i64 %i.vo to ptr
  %i.vq = load atomic volatile i64, ptr %i.vp monotonic, align 8
  %i.vr = add i64 %i.vq, 11
  %i.vs = inttoptr i64 %i.vr to ptr
  %i.vt = load atomic volatile i16, ptr %i.vs monotonic, align 2
  %i.vu = icmp eq i16 %i.vt, 2119
  br i1 %i.vu, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.vv = add i64 %i.vn, 23
  %i.vw = inttoptr i64 %i.vv to ptr
  %i.vx = load i64, ptr %i.vw, align 8            ; 3 uses
  %i.vy = and i64 %i.vx, 1
  %i.vz = icmp eq i64 %i.vy, 0
  br i1 %i.vz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.wa = lshr i64 %i.vx, 32
  %i.wb = trunc nuw i64 %i.wa to i32
  %i.wc = sitofp i32 %i.wb to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i305.i.i

bb.by:                                            ; preds = %bb.bw
  %i.wd = add nsw i64 %i.vx, -1
  %i.we = inttoptr i64 %i.wd to ptr
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %.0.copyload.i.i.i.i.i.i304.i.i = load double, ptr %i.wf, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i305.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i305.i.i: ; preds = %bb.by, %bb.bx
  %i.wg = phi double [ %i.wc, %bb.bx ], [ %.0.copyload.i.i.i.i.i.i304.i.i, %bb.by ]
  %i.wh = fptoui double %i.wg to i32              ; 13 uses
  %.val.i.i.i = load i32, ptr %i.sp, align 4
  %i.wi = and i32 %.val.i.i.i, 8
  %.not578.i.i.i = icmp eq i32 %i.wi, 0
  br i1 %.not578.i.i.i, label %_ZN2v88internal12_GLOBAL__N_115IterateElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPNS1_18ArrayConcatVisitorE.exit.i.i, label %.preheader.i.i

bb.bz:                                            ; preds = %bb.bv
  %i.wj = call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr nonnull %i.tq) #15 ; 2 uses
  %.not577.i.i.i = icmp eq ptr %i.wj, null
  br i1 %.not577.i.i.i, label %_ZN2v88internal12_GLOBAL__N_115IterateElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPNS1_18ArrayConcatVisitorE.exit.thread.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.val349.i.i.i = load i32, ptr %i.rn, align 8
  %i.wk = uitofp i32 %.val349.i.i.i to double     ; 2 uses
  %i.wl = load i64, ptr %i.wj, align 8            ; 4 uses
  %i.wm = and i64 %i.wl, 1
  %i.wn = icmp eq i64 %i.wm, 0
  br i1 %i.wn, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i.i: ; preds = %bb.ca
  %i.wo = lshr i64 %i.wl, 32
  %i.wp = trunc nuw i64 %i.wo to i32              ; 2 uses
  %i.wq = sitofp i32 %i.wp to double
  %i.wr = fadd double %i.wk, %i.wq
  %i.ws = fcmp ogt double %i.wr, f0x433FFFFFFFFFFFFF
  br i1 %i.ws, label %bb.cb, label %bb.cc

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i.i.i: ; preds = %bb.ca
  %i.wt = add nsw i64 %i.wl, -1
  %i.wu = inttoptr i64 %i.wt to ptr               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE:bb.a
bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.g
  %.pn.i.i = phi ptr [ %i.bj, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.g ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.bk = load ptr, ptr %.in.i.i, align 8
  %i.bl = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.03.0.copyload) #15
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
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = and i16 %i.bs, -96
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.s, align 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.j, %bb.k, %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  tail call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  br label %bb.q

bb.m:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit
  %i.bv = load i64, ptr %3, align 8
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = and i16 %i.cb, -96
  %.not.i21 = icmp eq i16 %i.cc, 32
  br i1 %.not.i21, label %bb.n, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

bb.n:                                             ; preds = %bb.m
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !56, !noundef !57
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cg = load i8, ptr %i.cf, align 8, !range !56
  %i.ch = trunc nuw i8 %i.cg to i1
  %not..i.i.i23 = xor i1 %i.ce, true
  %i.ci = select i1 %not..i.i.i23, i1 true, i1 %i.ch
  br i1 %i.ci, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ck = load i8, ptr %i.cj, align 8, !range !56, !noundef !57
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cn = load ptr, ptr %i.cm, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25

_ZNK2v88internal7Isolate12string_tableEv.exit.i25: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, %bb.n
  %.pn.i.i26 = phi ptr [ %i.cn, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24 ], [ %1, %bb.n ]
  %.in.i.i27 = getelementptr inbounds nuw i8, ptr %.pn.i.i26, i64 58464
  %i.co = load ptr, ptr %.in.i.i27, align 8
  %i.cp = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %3) #15
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28: ; preds = %bb.m, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25
  %.sroa.05.0.i22 = phi ptr [ %i.cp, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25 ], [ %3, %bb.m ]
  store ptr %.sroa.05.0.i22, ptr %i.s, align 8
  tail call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28, %bb.l
  ret void
}

declare ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN2v88internal12_GLOBAL__N_116GenericArrayPushEPNS0_7IsolateEPNS0_16BuiltinArgumentsE(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.3"], align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 4294967292
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = shl i64 %i.a, 3
  %reass.sub = sub i64 %i.e, %i.f
  %i.g = add i64 %reass.sub, 40
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit, !prof !6

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit
  %i.k = add nsw i64 %i.i, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp ugt i16 %i.p, 299
  br i1 %i.q, label %.critedge, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit, !prof !7

_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.r = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %0, ptr nonnull %i.h, ptr noundef null) #15 ; 2 uses
  %.not154 = icmp eq ptr %i.r, null
  br i1 %.not154, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.t = load i64, ptr %i.s, align 8
  br label %.thread152

.critedge:                                        ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit
  %.sroa.08.0.i142146 = phi ptr [ %i.r, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit ], [ %i.h, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 6 uses
  %i.u = tail call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr nonnull %.sroa.08.0.i142146) #15 ; 3 uses
  %.not155 = icmp eq ptr %i.u, null
  br i1 %.not155, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge80

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.w = load i64, ptr %i.v, align 8
  br label %.thread152

.critedge80:                                      ; preds = %.critedge
  %i.x = load i64, ptr %1, align 8
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = add i32 %i.y, -5                         ; 3 uses
  %i.aa = load i64, ptr %i.u, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge80
  %i.ad = lshr i64 %i.aa, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.e:                                             ; preds = %.critedge80
  %i.ag = add nsw i64 %i.aa, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.d, %bb.e
  %i.aj = phi double [ %i.af, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ak = sitofp i32 %i.z to double
  %i.al = fsub double f0x433FFFFFFFFFFFFF, %i.aj
  %i.am = fcmp olt double %i.al, %i.ak
  br i1 %i.am, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %.not161 = icmp sgt i32 %i.y, 5
  br i1 %.not161, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.z to i64
  br label %.lr.ph

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.as, %bb.g ], [ %i.ao, %bb.f ] ; 3 uses
  %i.at = sext i32 %i.z to i64
  %i.au = shl nsw i64 %i.at, 32
  %i.av = ptrtoint ptr %.0.i.i.i to i64
  %i.aw = add i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr %i.ax, ptr %i.an, align 8
  store i64 %i.au, ptr %.0.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %.0.i.i.i, ptr %3, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.u, ptr %i.ay, align 8
  %i.az = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 371, ptr nonnull %3, i64 2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ba, ptr noundef null) #15
  br label %.thread152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.075163 = phi double [ %i.aj, %.lr.ph.preheader ], [ %i.ca, %bb.m ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = add nuw nsw i64 %indvars.iv, 5
  %i.bd = load i64, ptr %1, align 8               ; 2 uses
  %i.be = and i64 %i.bd, 4294967295
  %.not.i87 = icmp samesign ugt i64 %i.bc, %i.be
  br i1 %.not.i87, label %bb.h, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.h:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %.lr.ph
  %i.bf = shl i64 %indvars.iv, 32
  %sext = sub i64 -25769803776, %i.bf
  %i.bg = ashr exact i64 %sext, 32
  %i.bh = add i64 %i.bd, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3                    ; 2 uses
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = sub i64 %i.bk, %i.bi
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = fcmp ugt double %.075163, f0x41EFFFFFFFC00000
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.bo = fptoui double %.075163 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bp = zext i32 %i.bo to i64
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %0, ptr nonnull %.sroa.08.0.i142146, ptr null, i64 noundef %i.bp, ptr nonnull %.sroa.08.0.i142146, i32 noundef 3)
  %i.bq = call i16 @_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %2, ptr %i.bm, i32 noundef 0, i64 4294967297) #15
  %i.br = trunc i16 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.bs = icmp ne i64 %i.bi, %i.bk
  %.not157 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %.not157, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bu = load i64, ptr %i.bt, align 8
  br label %.thread152

bb.k:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.bv = fptoui double %.075163 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %0, ptr nonnull %.sroa.08.0.i142146, ptr null, i64 noundef %i.bv, ptr nonnull %.sroa.08.0.i142146, i32 noundef 3)
  %i.bw = call i16 @_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %4, ptr %i.bm, i32 noundef 0, i64 4294967297) #15
  %i.bx = trunc i16 %i.bw to i1
  br i1 %i.bx, label %.critedge84, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bz = load i64, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.thread152

.critedge84:                                      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.m

bb.m:                                             ; preds = %.critedge84, %bb.i
  %i.ca = fadd double %.075163, 1.000000e+00      ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %.075.lcssa = phi double [ %i.aj, %.preheader ], [ %i.ca, %bb.m ] ; 6 uses
  %i.cb = fcmp oge double %.075.lcssa, f0xC1E0000000000000
  %i.cc = fcmp ole double %.075.lcssa, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.cb, %i.cc
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.cd = call noundef i1 @llvm.is.fpclass.f64(double %.075.lcssa, /* (nzero) */ i32 32)
  br i1 %i.cd, label %bb.p, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %bb.n
  %i.ce = fptosi double %.075.lcssa to i32        ; 2 uses
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fcmp oeq double %.075.lcssa, %i.cf
  br i1 %i.cg, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.p

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.ch = sext i32 %i.ce to i64
  %i.ci = shl nsw i64 %i.ch, 32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.o, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.o:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.co = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.o, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i88 = phi ptr [ %i.co, %bb.o ], [ %i.ck, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.cp = ptrtoint ptr %.0.i.i.i88 to i64
  %i.cq = add i64 %i.cp, 8
  %i.cr = inttoptr i64 %i.cq to ptr
  store ptr %i.cr, ptr %i.cj, align 8
  store i64 %i.ci, ptr %.0.i.i.i88, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.p:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.n, %._crit_edge
  %i.cs = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.ct, -1
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store double %.075.lcssa, ptr %i.cw, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.p
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i88, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.cs, %bb.p ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cy = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr nonnull %.sroa.08.0.i142146, ptr nonnull %i.cx, ptr nonnull %.sroa.0.0.i, i32 noundef 0, i64 4294967297) #15
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.q, label %.critedge86

bb.q:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.db = load i64, ptr %i.da, align 8
  br label %.thread152

.critedge86:                                      ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %i.dc = load i64, ptr %.sroa.0.0.i, align 8
  br label %.thread152

.thread152:                                       ; preds = %bb.j, %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.q, %.critedge86, %bb.c
  %.sroa.0115.5 = phi i64 [ %i.t, %bb.c ], [ %i.bb, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit ], [ %i.dc, %.critedge86 ], [ %i.w, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.db, %bb.q ], [ %i.bu, %bb.j ], [ %i.bz, %bb.l ]
  ret i64 %.sroa.0115.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_133MatchArrayElementsKindToArgumentsEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEii(ptr noundef %0, ptr %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = add nsw i32 %i.b, -4
  %i.d = icmp slt i32 %i.b, 6
  br i1 %i.d, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 14
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = lshr i8 %i.k, 2                          ; 2 uses
  %i.m = and i8 %i.k, -8
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %3, 1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.o) ; 2 uses
  %i.p = icmp sgt i32 %.sroa.speculated, 1
  br i1 %i.p, label %.lr.ph, label %_ZN2v88internal11HandleScopeD2Ev.exit

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_:bb.a
  %or.cond.i.i = or i1 %i.cd, %i.cb
  br i1 %or.cond.i.i, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

_ZN2v88internal4Name14AsIntegerIndexEPm.exit:     ; preds = %bb.l
  %i.ce = tail call noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull %i.b) #15
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
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !56, !noundef !57
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cq = load i8, ptr %i.cp, align 8, !range !56
  %i.cr = trunc nuw i8 %i.cq to i1
  %not..i.i.i = xor i1 %i.co, true
  %i.cs = select i1 %not..i.i.i, i1 true, i1 %i.cr
  br i1 %i.cs, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.cu = load i8, ptr %i.ct, align 8, !range !56, !noundef !57
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cx = load ptr, ptr %i.cw, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.m
  %.pn.i.i = phi ptr [ %i.cx, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.m ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.cy = load ptr, ptr %.in.i.i, align 8
  %i.cz = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.0.0.copyload) #15
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread, %_ZNK2v88internal7Isolate12string_tableEv.exit.i
  %.sroa.05.0.i = phi ptr [ %i.cz, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.0.0.copyload, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread ]
  store ptr %.sroa.05.0.i, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33, %_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit, %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  ret void
}

declare i16 @_ZN2v88internal10JSReceiver23DeletePropertyOrElementEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS0_12LanguageModeE(ptr noundef, ptr, ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_117SetLengthPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEm(ptr noundef %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = add i64 %i.l, 9
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.i, !prof !5

_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.i: ; preds = %bb.b
  %i.q = add i64 %i.l, 39
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = and i64 %i.s, 17179869184
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread, label %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit

_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.b, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.i
  %i.u = tail call preserve_mostcc noundef zeroext i1 @_ZN2v88internal7JSArray25HasReadOnlyLengthSlowPathENS0_12DirectHandleIS1_EE(ptr nonnull %1) #15
  br i1 %i.u, label %bb.c, label %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread

_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread: ; preds = %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.i, %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit
  %i.v = trunc i64 %2 to i32
  %i.w = tail call i16 @_ZN2v88internal7JSArray9SetLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EEj(ptr noundef %0, ptr nonnull %1, i32 noundef %i.v) #15
  %i.x = trunc i16 %i.w to i1
  %spec.select = select i1 %i.x, ptr %1, ptr null
  br label %.thread

bb.c:                                             ; preds = %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.z = uitofp i64 %2 to double                  ; 2 uses
  %i.aa = icmp ult i64 %2, 2147483648
  %i.ab = trunc nuw i64 %2 to i32
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fcmp oeq double %i.z, %i.ac
  %or.cond = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.e

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %bb.c
  %i.ae = shl nuw nsw i64 %2, 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.ak = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.ak, %bb.d ], [ %i.ag, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.al = ptrtoint ptr %.0.i.i.i to i64
  %i.am = add i64 %i.al, 8
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.af, align 8
  store i64 %i.ae, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %i.z, ptr %i.as, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.e
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ao, %bb.e ]
  %i.at = tail call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %i.y, ptr nonnull %.sroa.0.0.i, i32 noundef 0, i64 4294967297) #15
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %.sroa.022.1 = phi ptr [ %i.at, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit ], [ %spec.select, %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread ]
  ret ptr %.sroa.022.1
}

declare i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_116Fast_ArrayConcatEPNS0_7IsolateEPNS0_16BuiltinArgumentsE(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 23
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -4294967295
  %i.g = icmp eq i64 %i.f, 4294967296
  br i1 %i.g, label %bb.b, label %.thread90

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = add i32 %i.i, -4                         ; 2 uses
  %.not97 = icmp sgt i32 %i.i, 4
  br i1 %.not97, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %wide.trip.count = zext i32 %i.j to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113IsSimpleArrayEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !60

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.099 = phi i32 [ 0, %.lr.ph ], [ %i.dl, %bb.c ]
  %i.r = add nuw nsw i64 %indvars.iv, 4
  %i.s = load i64, ptr %1, align 8                ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %.not.i = icmp samesign ugt i64 %i.r, %i.t
  br i1 %.not.i, label %bb.e, label %_ZNK2v88internal16BuiltinArgumentsixEi.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArgumentsixEi.exit:      ; preds = %bb.d
  %i.u = shl i64 %indvars.iv, 32
  %sext = sub i64 -21474836480, %i.u
  %i.v = ashr exact i64 %sext, 32
  %i.w = add i64 %i.s, %i.v
  %i.x = shl nsw i64 %i.w, 3
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.x
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8            ; 4 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %.thread90

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal16BuiltinArgumentsixEi.exit
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 6 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 2119
  br i1 %i.ak, label %bb.f, label %.thread90

bb.f:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp ult i16 %i.ao, 1042
  br i1 %i.ap, label %.thread90, label %_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i

_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i: ; preds = %bb.f
  %i.aq = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ar = add i64 %i.aq, 14
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i8, ptr %i.as, align 1
  %i.au = lshr i8 %i.at, 2
  %i.av = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.aw = zext nneg i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 %i.ac) #15, !inline_history !61
  br i1 %i.bc, label %.thread90, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i
  %i.bd = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.be = load i64, ptr %i.l, align 8
  %i.bf = load i64, ptr %i.m, align 8
  %i.bg = load i64, ptr %i.n, align 8
  br label %.critedge18.i.i

.critedge18.i.i:                                  ; preds = %bb.i, %bb.g
  %.sroa.037.0.in.in.in.i.i = phi i64 [ %i.bd, %bb.g ], [ %i.bj, %bb.i ]
  %.sroa.037.0.in.in.i.i = add i64 %.sroa.037.0.in.in.in.i.i, 23
  %.sroa.037.0.in.i.i = inttoptr i64 %.sroa.037.0.in.in.i.i to ptr
  %.sroa.037.0.i.i = load i64, ptr %.sroa.037.0.in.i.i, align 8 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.037.0.i.i, %i.be
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.h

bb.h:                                             ; preds = %.critedge18.i.i
  %i.bh = add i64 %.sroa.037.0.i.i, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8 ; 2 uses
  %i.bk = add i64 %i.bj, 11
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i16, ptr %i.bl monotonic, align 2
  %i.bn = icmp ult i16 %i.bm, 1042
  br i1 %i.bn, label %.thread90, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = add i64 %.sroa.037.0.i.i, 15
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp ne i64 %i.bq, %i.bf
  %i.bs = icmp ne i64 %i.bq, %i.bg
  %or.cond.i.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.i.i, label %.thread90, label %.critedge18.i.i, !llvm.loop !15

_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %.critedge18.i.i
  %i.bt = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.bu = add i64 %i.bt, 14
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp ult i8 %i.bw, 24
  br i1 %i.bx, label %bb.j, label %.thread90

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit
  %i.by = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.bz = load ptr, ptr %i.p, align 8
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.k, label %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.cb = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi ptr [ %i.cb, %bb.k ], [ %i.by, %bb.j ] ; 3 uses
  %i.cc = ptrtoint ptr %.0.i.i to i64
  %i.cd = add i64 %i.cc, 8
  %i.ce = inttoptr i64 %i.cd to ptr
  store ptr %i.ce, ptr %i.o, align 8
  store i64 %i.ac, ptr %.0.i.i, align 8
  %i.cf = load atomic volatile i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.cg = add i64 %i.cf, 23
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.q, align 8
  %i.cj = add i64 %.sroa.0.0.copyload.i.i3.i, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 31
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.cq = load ptr, ptr %i.p, align 8
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.l, label %_ZN2v88internal7Isolate14native_contextEv.exit.i, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cs = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #15
  br label %_ZN2v88internal7Isolate14native_contextEv.exit.i

_ZN2v88internal7Isolate14native_contextEv.exit.i: ; preds = %bb.l, %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.i.i.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.cp, %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %i.ct = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cu = add i64 %i.ct, 8
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %i.cv, ptr %i.o, align 8
  store i64 %i.co, ptr %.0.i.i.i.i, align 8
  %i.cw = add i64 %i.co, 639
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load atomic volatile i64, ptr %i.cx monotonic, align 8
  %i.cz = icmp eq i64 %i.ci, %i.cy
  br i1 %i.cz, label %bb.m, label %.thread90

bb.m:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit.i
  %i.da = add i64 %i.cf, 15
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load atomic volatile i32, ptr %i.db acquire, align 4
  %i.dd = and i32 %i.dc, 1047552
  %i.de = icmp eq i32 %i.dd, 1024
  br i1 %i.de, label %_ZN2v88internal12_GLOBAL__N_113IsSimpleArrayEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit, label %.thread90

_ZN2v88internal12_GLOBAL__N_113IsSimpleArrayEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit: ; preds = %bb.m
  %i.df = load i64, ptr %.0.i.i, align 8
  %i.dg = add i64 %i.df, 23
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = lshr i64 %i.di, 32
  %i.dk = trunc nuw i64 %i.dj to i32
  %i.dl = add nsw i32 %.099, %i.dk                ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 134217728
  br i1 %i.dm, label %bb.n, label %bb.c

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113IsSimpleArrayEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit
  %i.dn = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #15
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.do, ptr noundef null) #15 ; 0 uses
  br label %.thread90

.thread:                                          ; preds = %bb.c, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.dl, %bb.c ]
  %i.dq = tail call ptr @_ZN2v88internal16ElementsAccessor6ConcatEPNS0_7IsolateEPNS0_16BuiltinArgumentsEjj(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.j, i32 noundef %.0.lcssa) #15
  br label %.thread90

.thread90:                                        ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit.i, %bb.m, %_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, %_ZNK2v88internal16BuiltinArgumentsixEi.exit, %_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i, %bb.f, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, %bb.i, %bb.h, %bb.n, %.thread, %bb.a
  %.sroa.063.5 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %i.dq, %.thread ], [ null, %bb.n ], [ null, %bb.h ], [ null, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %bb.f ], [ null, %_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i ], [ null, %_ZNK2v88internal16BuiltinArgumentsixEi.exit ], [ null, %_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit ], [ null, %bb.m ], [ null, %_ZN2v88internal7Isolate14native_contextEv.exit.i ]
  ret ptr %.sroa.063.5
}

declare ptr @_ZN2v88internal6Object23ArraySpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal16ElementsAccessor6ConcatEPNS0_7IsolateEPNS0_16BuiltinArgumentsEjj(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2
end_hunk_4
begin_hunk_5_@_ZN2v88internal12_GLOBAL__N_121CollectElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjPSt6vectorIjSaIjEE:bb.a
  br label %bb.bs

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit188, %_ZNSt6vectorIjSaIjEE5clearEv.exit180
  %.not95 = icmp eq i32 %.081, %2
  br i1 %.not95, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %.loopexit

bb.bs:                                            ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit188
  %i.mp = phi ptr [ %.pre, %.lr.ph ], [ %i.nj, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit188 ] ; 3 uses
  %storemerge360 = phi i32 [ 0, %.lr.ph ], [ %i.nk, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit188 ] ; 3 uses
  %i.mq = load ptr, ptr %i.mo, align 8
  %.not.i181 = icmp eq ptr %i.mp, %i.mq
  br i1 %.not.i181, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 %storemerge360, ptr %i.mp, align 4
  %i.mr = load ptr, ptr %i.mn, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 2 uses
  store ptr %i.ms, ptr %i.mn, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit188

bb.bu:                                            ; preds = %bb.bs
  %i.mt = load ptr, ptr %3, align 8               ; 4 uses
  %i.mu = ptrtoint ptr %i.mp to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv                    ; 6 uses
  %i.mx = icmp eq i64 %i.mw, 9223372036854775804
  br i1 %i.mx, label %bb.bv, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i182

bb.bv:                                            ; preds = %bb.bu
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i182: ; preds = %bb.bu
  %i.my = ashr exact i64 %i.mw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i183 = tail call i64 @llvm.umax.i64(i64 %i.my, i64 1)
  %i.mz = add nsw i64 %.sroa.speculated.i.i.i183, %i.my ; 2 uses
  %i.na = icmp ult i64 %i.mz, %i.my
  %i.nb = tail call i64 @llvm.umin.i64(i64 %i.mz, i64 2305843009213693951)
  %i.nc = select i1 %i.na, i64 2305843009213693951, i64 %i.nb ; 3 uses
  %.not.i.i.i184 = icmp ne i64 %i.nc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i184)
  %i.nd = shl nuw nsw i64 %i.nc, 2
  %i.ne = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nd) #18 ; 4 uses
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 %i.mw ; 2 uses
  store i32 %storemerge360, ptr %i.nf, align 4
  %i.ng = icmp sgt i64 %i.mw, 0
  br i1 %i.ng, label %bb.bw, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i185

bb.bw:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i182
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ne, ptr align 4 %i.mt, i64 %i.mw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i185

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i185: ; preds = %bb.bw, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i182
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 4 ; 2 uses
  %.not.i17.i.i186 = icmp eq ptr %i.mt, null
  br i1 %.not.i17.i.i186, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i187, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i185
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.mw) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i187

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i187: ; preds = %bb.bx, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i185
  store ptr %i.ne, ptr %3, align 8
  store ptr %i.nh, ptr %i.mn, align 8
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nc
  store ptr %i.ni, ptr %i.mo, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit188

_ZNSt6vectorIjSaIjEE9push_backERKj.exit188:       ; preds = %bb.bt, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i187
  %i.nj = phi ptr [ %i.ms, %bb.bt ], [ %i.nh, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i187 ]
  %i.nk = add nuw i32 %storemerge360, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.nk, %.081
  br i1 %exitcond.not, label %._crit_edge, label %bb.bs, !llvm.loop !75

.loopexit.loopexit466.loopexit:                   ; preds = %.critedge.thread
  store i32 %.promoted475, ptr %i.dk, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit177, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit159, %_ZN2v88internal11HandleScopeD2Ev.exit, %bb.v, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit130, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %.loopexit.loopexit466.loopexit, %._crit_edge363, %bb.ar, %bb.t, %_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.b, %bb.a, %._crit_edge, %._crit_edge372, %bb.j
  %i.nl = load i64, ptr %1, align 8
  %i.nm = add i64 %i.nl, -1
  %i.nn = inttoptr i64 %i.nm to ptr               ; 2 uses
  %i.no = load atomic volatile i64, ptr %i.nn monotonic, align 8
  %i.np = add i64 %i.no, 11
  %i.nq = inttoptr i64 %i.np to ptr
  %i.nr = load atomic volatile i16, ptr %i.nq monotonic, align 2
  %i.ns = icmp eq i16 %i.nr, 302
  br i1 %i.ns, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit
  %i.nt = load atomic volatile i64, ptr %i.nn monotonic, align 8
  %i.nu = add i64 %i.nt, 23
  %i.nv = inttoptr i64 %i.nu to ptr
  %i.nw = load i64, ptr %i.nv, align 8            ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ny = load i64, ptr %i.nx, align 8
  %i.nz = icmp eq i64 %i.nw, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8            ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = icmp eq ptr %i.ob, %i.od
  br i1 %i.oe, label %bb.by, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit, !prof !5

bb.by:                                            ; preds = %.thread.i.i
  %i.of = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit: ; preds = %.thread.i.i, %bb.by
  %.0.i.i.i.i.i = phi ptr [ %i.of, %bb.by ], [ %i.ob, %.thread.i.i ] ; 3 uses
  %i.og = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.oh = add i64 %i.og, 8
  %i.oi = inttoptr i64 %i.oh to ptr
  store ptr %i.oi, ptr %i.oa, align 8
  store i64 %i.nw, ptr %.0.i.i.i.i.i, align 8
  br i1 %i.nz, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit
  call fastcc void @_ZN2v88internal12_GLOBAL__N_121CollectElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjPSt6vectorIjSaIjEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i.i.i.i, i32 noundef %2, ptr noundef %3)
  br label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread: ; preds = %.loopexit, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit, %bb.bz, %._crit_edge372, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %i.h)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1)
  br label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit

_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.at, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = load i32, ptr %0, align 4
  store i32 %i.k, ptr %i.i, align 4
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %4 = lshr i64 %i.o, 1
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4
  %i.w = load i32, ptr %i.u, align 4
  %i.x = icmp ult i32 %i.v, %i.w
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.t, i64 %i.r ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !77

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.ak, ptr %i.al, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.j
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.an, ptr %i.ap, align 4
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !78

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.aq, align 4
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !79

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.d, %.lr.ph ]
  %i.at = add nsw i64 %.01841, -1                 ; 3 uses
  %i.au = lshr i64 %i.as, 1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.ax = load i32, ptr %i.f, align 4             ; 5 uses
  %i.ay = load i32, ptr %i.av, align 4            ; 5 uses
  %i.az = icmp ult i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.aw, align 4            ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bb = icmp ult i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %0, align 4
  store i32 %i.ay, ptr %0, align 4
  store i32 %i.bc, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp ult i32 %i.ax, %i.ba
  %i.be = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ba, ptr %0, align 4
  store i32 %i.be, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ax, ptr %0, align 4
  store i32 %i.be, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bf = icmp ult i32 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %0, align 4
  store i32 %i.ax, ptr %0, align 4
  store i32 %i.bg, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp ult i32 %i.ay, %i.ba
  %i.bi = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.ba, ptr %0, align 4
  store i32 %i.bi, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.ay, ptr %0, align 4
  store i32 %i.bi, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bj = load i32, ptr %0, align 4               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i32, ptr %.sroa.012.1.i.i, align 4 ; 2 uses
  %i.bl = icmp ult i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !80

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load i32, ptr %.sroa.0.1.i.i, align 4   ; 2 uses
  %i.bo = icmp ult i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !81

bb.q:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bn, ptr %.sroa.012.1.i.i, align 4
  store i32 %i.bk, ptr %.sroa.0.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !82

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1742, i64 noundef %i.at)
  %i.bp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 16
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !76

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load i32, ptr %.sroa.0.017.i.ptr, align 4 ; 4 uses
  %i.f = load i32, ptr %0, align 4                ; 2 uses
  %i.g = icmp ult i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 4
  store i32 %i.f, ptr %i.i, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.pn16.i, align 4          ; 2 uses
  %i.k = icmp ult i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store i32 %i.l, ptr %.sroa.04.08.i.i, align 4
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.sroa.0.0.i.i, align 4    ; 2 uses
  %i.n = icmp ult i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !83

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 4 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 64
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !84

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
end_hunk_5
