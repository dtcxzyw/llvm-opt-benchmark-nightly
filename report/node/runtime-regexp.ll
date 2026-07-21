inline.NumInlined: 3452
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal19Runtime_RegExpSplitEiPmPNS0_7IsolateE:bb.a
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = icmp eq i32 %.0242.i378, %i.hy
  br i1 %i.hz, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, label %.critedge.i18

.critedge.i18:                                    ; preds = %bb.ag, %bb.af
  %i.ia = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.j, i32 noundef %.0248.i377, i32 noundef %.0242.i378) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.ag, %.critedge.i18
  %.sroa.07.0.i19 = phi ptr [ %i.ia, %.critedge.i18 ], [ %i.j, %bb.ag ]
  %i.ib = add i32 %.0234.i379, 1                  ; 4 uses
  %i.ic = call ptr @_ZN2v88internal10FixedArray10SetAndGrowINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_iNS3_INS0_6ObjectEEE(ptr noundef nonnull %2, ptr %.sroa.063.0376, i32 noundef %.0234.i379, ptr %.sroa.07.0.i19) #21 ; 4 uses
  %.not.i = icmp eq i32 %i.ib, %.0.ph266
  br i1 %.not.i, label %bb.ah, label %.critedge282.i

bb.ah:                                            ; preds = %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit
  %i.id = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122NewJSArrayWithElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi(ptr noundef nonnull %2, ptr %i.ic, i32 noundef %.0.ph266)
  %i.ie = load i64, ptr %i.id, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge282.i:                                   ; preds = %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit
  %i.if = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE(ptr noundef nonnull %2, ptr nonnull %i.gi, ptr nonnull %i.ga) ; 2 uses
  %.not325 = icmp eq ptr %i.if, null
  br i1 %.not325, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit6, label %.critedge284.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit6: ; preds = %.critedge282.i
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ih = load i64, ptr %i.ig, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge284.i:                                   ; preds = %.critedge282.i
  %i.ii = call ptr @_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %i.if) ; 2 uses
  %.not326 = icmp eq ptr %i.ii, null
  br i1 %.not326, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit7, label %.critedge286.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit7: ; preds = %.critedge284.i
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ik = load i64, ptr %i.ij, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge286.i:                                   ; preds = %.critedge284.i
  %i.il = load i64, ptr %i.ii, align 8            ; 3 uses
  %i.im = and i64 %i.il, 1
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge286.i
  %i.io = lshr i64 %i.il, 32
  %i.ip = trunc nuw i64 %i.io to i32
  %..i24 = call i32 @llvm.smax.i32(i32 %i.ip, i32 0)
  br label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25

bb.aj:                                            ; preds = %.critedge286.i
  %i.iq = add nsw i64 %i.il, -1
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.0.copyload.i.i.i.i.i20 = load double, ptr %i.is, align 1 ; 3 uses
  %i.it = fcmp ult double %.0.copyload.i.i.i.i.i20, 1.000000e+00
  br i1 %i.it, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iu = fcmp olt double %.0.copyload.i.i.i.i.i20, f0x41EFFFFFFFE00000
  %.116.i21 = select i1 %i.iu, double %.0.copyload.i.i.i.i.i20, double f0x41EFFFFFFFE00000
  %.1.i22 = fptoui double %.116.i21 to i32
  br label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25

_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25: ; preds = %bb.ai, %bb.ak
  %.3.i23 = phi i32 [ %..i24, %bb.ai ], [ %.1.i22, %bb.ak ] ; 2 uses
  %.not258.i371 = icmp ugt i32 %.3.i23, 1
  br i1 %.not258.i371, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25
  %wide.trip.count = zext i32 %.3.i23 to i64
  br label %.lr.ph

bb.al:                                            ; preds = %.critedge288.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !118

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.al
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.al ] ; 2 uses
  %.1235.i374 = phi i32 [ %i.ib, %.lr.ph.preheader ], [ %i.jb, %bb.al ] ; 2 uses
  %.sroa.063.4372 = phi ptr [ %i.ic, %.lr.ph.preheader ], [ %i.jc, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %2, ptr nonnull %i.gi, ptr null, i64 noundef %indvars.iv, ptr nonnull %i.gi, i32 noundef 3)
  %i.iv = load i32, ptr %i.gb, align 4
  %.not.i26 = icmp eq i32 %i.iv, 0
  br i1 %.not.i26, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread: ; preds = %.lr.ph
  %i.iw = load ptr, ptr %i.gc, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.critedge288.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit: ; preds = %.lr.ph
  %i.iy = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not327 = icmp eq ptr %i.iy, null
  br i1 %.not327, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit8, label %.critedge288.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit8: ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ja = load i64, ptr %i.iz, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge288.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread
  %.sroa.0.0.i284 = phi ptr [ %i.ix, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread ], [ %i.iy, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit ]
  %i.jb = add i32 %.1235.i374, 1                  ; 3 uses
  %i.jc = call ptr @_ZN2v88internal10FixedArray10SetAndGrowINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_iNS3_INS0_6ObjectEEE(ptr noundef nonnull %2, ptr %.sroa.063.4372, i32 noundef %.1235.i374, ptr nonnull %.sroa.0.0.i284) #21 ; 3 uses
  %i.jd = icmp eq i32 %i.jb, %.0.ph266
  br i1 %i.jd, label %bb.am, label %bb.al

bb.am:                                            ; preds = %.critedge288.i
  %i.je = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122NewJSArrayWithElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi(ptr noundef nonnull %2, ptr %i.jc, i32 noundef %.0.ph266)
  %i.jf = load i64, ptr %i.je, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.thread.sink.split:                               ; preds = %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, %.critedge276.i
  %i.jg = load i64, ptr %i.j, align 8
  %i.jh = call noundef i64 @_ZN2v88internal11RegExpUtils18AdvanceStringIndexENS0_6TaggedINS0_6StringEEEmb(i64 %i.jg, i64 noundef %i.gd, i1 noundef zeroext %i.cn) #21
  %i.ji = trunc i64 %i.jh to i32
  br label %.thread

.thread:                                          ; preds = %bb.al, %.thread.sink.split, %bb.aj, %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25
  %.sroa.063.1 = phi ptr [ %i.ic, %bb.aj ], [ %.sroa.063.0376, %.thread.sink.split ], [ %i.ic, %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25 ], [ %i.jc, %bb.al ] ; 2 uses
  %.3251.i = phi i32 [ %.sroa.speculated, %bb.aj ], [ %.0248.i377, %.thread.sink.split ], [ %.sroa.speculated, %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25 ], [ %.sroa.speculated, %bb.al ] ; 3 uses
  %.5247.i = phi i32 [ %.sroa.speculated, %bb.aj ], [ %i.ji, %.thread.sink.split ], [ %.sroa.speculated, %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25 ], [ %.sroa.speculated, %bb.al ] ; 2 uses
  %.7241.i = phi i32 [ %i.ib, %bb.aj ], [ %.0234.i379, %.thread.sink.split ], [ %i.ib, %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit25 ], [ %i.jb, %bb.al ] ; 3 uses
  %i.jj = icmp ult i32 %.5247.i, %i.ez
  br i1 %i.jj, label %bb.w, label %bb.an

bb.an:                                            ; preds = %.thread
  %i.jk = icmp eq i32 %.3251.i, 0
  br i1 %i.jk, label %bb.ao, label %.critedge.i27

bb.ao:                                            ; preds = %bb.an
  %i.jl = load i64, ptr %i.j, align 8
  %i.jm = add i64 %i.jl, -1
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = icmp eq i32 %i.ez, %i.jp
  br i1 %i.jq, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit29, label %.critedge.i27

.critedge.i27:                                    ; preds = %bb.ao, %bb.an
  %i.jr = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.j, i32 noundef %.3251.i, i32 noundef %i.ez) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit29

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit29: ; preds = %bb.ao, %.critedge.i27
  %.sroa.07.0.i28 = phi ptr [ %i.jr, %.critedge.i27 ], [ %i.j, %bb.ao ]
  %i.js = add i32 %.7241.i, 1
  %i.jt = call ptr @_ZN2v88internal10FixedArray10SetAndGrowINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_iNS3_INS0_6ObjectEEE(ptr noundef nonnull %2, ptr %.sroa.063.1, i32 noundef %.7241.i, ptr %.sroa.07.0.i28) #21
  %i.ju = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122NewJSArrayWithElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi(ptr noundef nonnull %2, ptr %i.jt, i32 noundef %i.js)
  %i.jv = load i64, ptr %i.ju, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit8, %bb.am, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit6, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit7, %bb.ah, %bb.ab, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit9, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_12DirectHandleIT_EE.exit, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit10, %.critedge268.i, %.critedge270.i.thread, %bb.u, %bb.t, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit29, %bb.x, %_ZN2v88internal12_GLOBAL__N_18ToUint32EPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPj.exit, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0128.15 = phi i64 [ %i.ad, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.by, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.ck, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit10 ], [ %i.ct, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.cx, %.critedge268.i ], [ %i.ev, %_ZN2v88internal12_GLOBAL__N_18ToUint32EPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPj.exit ], [ %i.ey, %.critedge270.i.thread ], [ %i.fd, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %i.fx, %bb.u ], [ %i.fj, %bb.t ], [ %i.gh, %bb.x ], [ %i.gk, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.jv, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit29 ], [ %i.ih, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit6 ], [ %i.ik, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit7 ], [ %i.hh, %bb.ab ], [ %i.gq, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit9 ], [ %i.ie, %bb.ah ], [ %i.jf, %bb.am ], [ %i.ja, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit8 ]
  store ptr %i.b, ptr %i.a, align 8
  %i.jw = load i32, ptr %i.e, align 8
  %i.jx = add nsw i32 %i.jw, -1
  store i32 %i.jx, ptr %i.e, align 8
  %i.jy = load ptr, ptr %i.c, align 8
  %.not.i2 = icmp eq ptr %i.jy, %i.d
  br i1 %.not.i2, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ap, !prof !31

bb.ap:                                            ; preds = %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ap, %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.0128.15
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 7 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %7 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %9 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %10 = alloca %"class.v8::internal::CompiledReplacement", align 8 ; 15 uses
  %11 = alloca %"class.v8::internal::RegExpGlobalExecRunner", align 8 ; 9 uses
  %12 = alloca %"class.v8::internal::ReplacementStringBuilder", align 8 ; 11 uses
  %13 = alloca %"class.v8::internal::RegExpGlobalExecRunner", align 8 ; 8 uses
  %14 = alloca %"class.v8::internal::RegExpGlobalExecRunner", align 8 ; 8 uses
  %15 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 8 uses
  %16 = alloca %"class.v8::internal::(anonymous namespace)::MatchInfoBackedMatch", align 8 ; 12 uses
  %17 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %19 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 5 uses
  %20 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 11 uses
  %21 = alloca %"class.v8::internal::DirectHandleSmallVector.628", align 8 ; 23 uses
  %22 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 9 uses
  %23 = alloca %"class.v8::internal::DirectHandleSmallVector.630", align 8 ; 12 uses
  %24 = alloca %"class.v8::internal::(anonymous namespace)::VectorBackedMatch", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 53 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 38 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 22 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #22
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %.not810 = icmp eq i32 %0, 1
  br i1 %.not810, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !30

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #22
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = load i64, ptr %i.j, align 8              ; 2 uses
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2 ; 3 uses
  %i.t = and i16 %i.s, -127
  %.not811 = icmp eq i16 %i.t, 1
  br i1 %.not811, label %bb.d, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit6, !prof !30

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.u = and i16 %i.s, 7
  %i.v = icmp eq i16 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = add i64 %i.ae, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag acquire, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %2, ptr nonnull %i.j, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit6

bb.g:                                             ; preds = %.thread, %bb.d
  %.sroa.0456.0 = phi i16 [ %i.ak, %.thread ], [ %i.s, %bb.d ]
  %.sroa.012.1.i2 = phi i64 [ %i.ae, %.thread ], [ %i.m, %bb.d ] ; 2 uses
  %i.am = and i16 %.sroa.0456.0, -121
  %i.an = icmp eq i16 %i.am, 5
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = add i64 %.sroa.012.1.i2, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.012.2.i3 = phi i64 [ %i.ar, %bb.h ], [ %.sroa.012.1.i2, %bb.g ]
  %i.as = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.at = load ptr, ptr %i.c, align 8
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit12, !prof !30

bb.j:                                             ; preds = %bb.i
  %i.av = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit12

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit12: ; preds = %bb.i, %bb.j
  %.0.i.i11 = phi ptr [ %i.av, %bb.j ], [ %i.as, %bb.i ] ; 3 uses
  %i.aw = ptrtoint ptr %.0.i.i11 to i64
  %i.ax = add i64 %i.aw, 8
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.a, align 8
  store i64 %.sroa.012.2.i3, ptr %.0.i.i11, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit6

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit6: ; preds = %bb.f, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit12
  %.sroa.0461.1 = phi ptr [ %i.al, %bb.f ], [ %.0.i.i11, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit12 ], [ %i.j, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ] ; 53 uses
  %i.az = load i64, ptr %i.l, align 8             ; 2 uses
  %i.ba = trunc i64 %i.az to i1
  br i1 %i.ba, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit6
  %i.bb = add nsw i64 %i.az, -1
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, 13
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i8, ptr %i.bf monotonic, align 1
  %i.bh = and i8 %i.bg, 2
  %.not812 = icmp eq i8 %i.bh, 0
  br i1 %.not812, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.critedge.i.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bi = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = icmp ult i16 %i.bl, 128
  br i1 %i.bm, label %.critedge.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit6
  %i.bn = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.l) #21 ; 2 uses
  %.not813 = icmp eq ptr %i.bn, null
  br i1 %.not813, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bp = load i64, ptr %i.bo, align 8
  br label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge.i:                                      ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.0296.0 = phi ptr [ %i.l, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.bn, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ] ; 4 uses
  %i.bq = tail call noundef zeroext i1 @_ZN2v88internal11RegExpUtils18IsUnmodifiedRegExpEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull %2, ptr %1) #21
  br i1 %i.bq, label %bb.m, label %bb.el

.critedge.i.thread:                               ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.br = tail call noundef zeroext i1 @_ZN2v88internal11RegExpUtils18IsUnmodifiedRegExpEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull %2, ptr %1) #21
  br i1 %i.br, label %bb.l, label %bb.el

bb.l:                                             ; preds = %.critedge.i.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.20) #22
  unreachable

bb.m:                                             ; preds = %.critedge.i
  %i.bs = load i64, ptr %1, align 8
  %i.bt = add i64 %i.bs, 39
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = trunc nuw i64 %i.bw to i32              ; 2 uses
  %i.by = and i32 %i.bx, 1
  %.not.i44 = icmp eq i32 %i.by, 0
  %i.bz = and i32 %i.bx, 8
  %.not100.i = icmp eq i32 %i.bz, 0               ; 3 uses
  %i.ca = load i64, ptr %.sroa.0296.0, align 8    ; 2 uses
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = load atomic volatile i64, ptr %i.cc acquire, align 8
  %i.ce = add i64 %i.cd, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i16, ptr %i.cf monotonic, align 2 ; 3 uses
  %i.ch = and i16 %i.cg, -127
  %.not329.i = icmp eq i16 %i.ch, 1
  br i1 %.not329.i, label %bb.n, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.ci = and i16 %i.cg, 7
  %i.cj = icmp eq i16 %i.ci, 1
  br i1 %i.cj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cl, -1
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cs = load i64, ptr %i.cr, align 8            ; 2 uses
  %i.ct = add i64 %i.cs, -1
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load atomic volatile i64, ptr %i.cu acquire, align 8
  %i.cw = add i64 %i.cv, 11
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load atomic volatile i16, ptr %i.cx monotonic, align 2
  br label %bb.q
end_hunk_0
begin_hunk_1_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
  %i.amt = load atomic volatile i16, ptr %i.ams monotonic, align 2
  %i.amu = icmp ult i16 %i.amt, 128
  br i1 %i.amu, label %.critedge352.i.us, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i79.us, %.critedge350.i.us
  %i.amv = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i725.us) #21 ; 2 uses
  %.not819.us = icmp eq ptr %i.amv, null
  br i1 %.not819.us, label %.critedge354.i.us.sink.split, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us..critedge352.i.us_crit_edge

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us..critedge352.i.us_crit_edge: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us
  %.pre899 = load i64, ptr %i.amv, align 8
  %.pre910 = add i64 %.pre899, -1
  %.pre912 = inttoptr i64 %.pre910 to ptr
  br label %.critedge352.i.us

.critedge352.i.us:                                ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us..critedge352.i.us_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i79.us
  %.pre-phi913 = phi ptr [ %.pre912, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us..critedge352.i.us_crit_edge ], [ %i.amp, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i79.us ]
  %i.amw = getelementptr inbounds nuw i8, ptr %.pre-phi913, i64 12
  %i.amx = load i32, ptr %i.amw, align 4
  %i.amy = icmp eq i32 %i.amx, 0
  br i1 %i.amy, label %bb.gp, label %.critedge354.i.us

bb.gp:                                            ; preds = %.critedge352.i.us
  %i.amz = call ptr @_ZN2v88internal11RegExpUtils22SetAdvancedStringIndexEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEEb(ptr noundef nonnull %2, ptr %1, ptr nonnull %.sroa.0461.1, i1 noundef zeroext %.0318.i.ph) #21
  %i.ana = icmp eq ptr %i.amz, null
  br i1 %i.ana, label %.critedge354.i.us.sink.split, label %.critedge354.i.us

.critedge354.i.us.sink.split:                     ; preds = %bb.gp, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.us
  %i.anb = load i64, ptr %i.alg, align 8
  br label %.critedge354.i.us

.critedge354.i.us:                                ; preds = %.critedge354.i.us.sink.split, %bb.gp, %.critedge352.i.us
  %.sroa.0309.17.us = phi i64 [ %.sroa.0309.1.us, %bb.gp ], [ %.sroa.0309.1.us, %.critedge352.i.us ], [ %i.anb, %.critedge354.i.us.sink.split ] ; 2 uses
  %cond.us = phi i1 [ true, %bb.gp ], [ true, %.critedge352.i.us ], [ false, %.critedge354.i.us.sink.split ]
  store ptr %i.ame, ptr %i.a, align 8
  %i.anc = load i32, ptr %i.e, align 8
  %i.and = add nsw i32 %i.anc, -1
  store i32 %i.and, ptr %i.e, align 8
  %i.ane = load ptr, ptr %i.c, align 8
  %.not.i23.us = icmp eq ptr %i.ane, %i.amf
  br i1 %.not.i23.us, label %bb.gr, label %bb.gq, !prof !31

bb.gq:                                            ; preds = %.critedge354.i.us
  store ptr %i.amf, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %.critedge354.i.us
  br i1 %cond.us, label %.critedge344.i.split.us, label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread806

.critedge344.i.split:                             ; preds = %bb.fp, %bb.fr, %bb.fn, %bb.fl, %_ZN2v88internal12_GLOBAL__N_113IsContainFlagEPNS0_7IsolateERNS0_6String11FlatContentEPKcRNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.anf = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.anf, i8 0, i64 64, i1 false)
  store ptr %i.anf, ptr %21, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  store ptr %i.anf, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %21, i64 88
  store ptr %i.ani, ptr %i.anh, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.anl = getelementptr inbounds nuw i8, ptr %2, i64 912 ; 3 uses
  %i.anm = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.ann = load ptr, ptr %i.c, align 8            ; 4 uses
  %i.ano = load i32, ptr %i.e, align 8
  %i.anp = add nsw i32 %i.ano, 1
  store i32 %i.anp, ptr %i.e, align 8
  %i.anq = call ptr @_ZN2v88internal11RegExpUtils10RegExpExecEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEE(ptr noundef nonnull %2, ptr %1, ptr nonnull %.sroa.0461.1, ptr nonnull %i.anj) #21 ; 2 uses
  %.not817 = icmp eq ptr %i.anq, null
  br i1 %.not817, label %.split.us, label %.critedge346.i

.split.us:                                        ; preds = %.critedge344.i.split.us, %.critedge344.i.split
  %i.anr = phi ptr [ %i.anl, %.critedge344.i.split ], [ %i.alg, %.critedge344.i.split.us ]
  %.us-phi = phi ptr [ %i.anm, %.critedge344.i.split ], [ %i.alh, %.critedge344.i.split.us ]
  %.us-phi855 = phi ptr [ %i.ann, %.critedge344.i.split ], [ %i.ali, %.critedge344.i.split.us ] ; 2 uses
  %i.ans = load i64, ptr %i.anr, align 8          ; 2 uses
  store ptr %.us-phi, ptr %i.a, align 8
  %i.ant = load i32, ptr %i.e, align 8
  %i.anu = add nsw i32 %i.ant, -1
  store i32 %i.anu, ptr %i.e, align 8
  %i.anv = load ptr, ptr %i.c, align 8
  %.not.i14 = icmp eq ptr %i.anv, %.us-phi855
  br i1 %.not.i14, label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread806, label %bb.gs, !prof !31

bb.gs:                                            ; preds = %.split.us
  store ptr %.us-phi855, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread806

.critedge346.i:                                   ; preds = %.critedge344.i.split
  %i.anw = load i64, ptr %i.anq, align 8          ; 2 uses
  store ptr %i.anm, ptr %i.a, align 8
  %i.anx = load i32, ptr %i.e, align 8
  %i.any = add nsw i32 %i.anx, -1
  store i32 %i.any, ptr %i.e, align 8
  %i.anz = load ptr, ptr %i.c, align 8
  %.not.i.i74 = icmp eq ptr %i.anz, %i.ann
  br i1 %.not.i.i74, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.gt, !prof !31

bb.gt:                                            ; preds = %.critedge346.i
  store ptr %i.ann, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  %.pre895 = load ptr, ptr %i.a, align 8
  %.pre896 = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.gt, %.critedge346.i
  %i.aoa = phi ptr [ %.pre896, %bb.gt ], [ %i.ann, %.critedge346.i ]
  %i.aob = phi ptr [ %.pre895, %bb.gt ], [ %i.anm, %.critedge346.i ] ; 2 uses
  %i.aoc = icmp eq ptr %i.aob, %i.aoa
  br i1 %i.aoc, label %bb.gu, label %_ZN2v88internal11HandleScopeD2Ev.exit7, !prof !30

bb.gu:                                            ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.aod = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit7

_ZN2v88internal11HandleScopeD2Ev.exit7:           ; preds = %bb.gu, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %.0.i.i.i75 = phi ptr [ %i.aod, %bb.gu ], [ %i.aob, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ] ; 2 uses
  %i.aoe = ptrtoint ptr %.0.i.i.i75 to i64        ; 2 uses
  %i.aof = add i64 %i.aoe, 8
  %i.aog = inttoptr i64 %i.aof to ptr
  store ptr %i.aog, ptr %i.a, align 8
  store i64 %i.anw, ptr %.0.i.i.i75, align 8
  %i.aoh = load i64, ptr %i.ank, align 8
  %i.aoi = icmp eq i64 %i.anw, %i.aoh
  br i1 %i.aoi, label %.thread733, label %bb.gv

bb.gv:                                            ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit7
  %i.aoj = load ptr, ptr %i.ang, align 8          ; 2 uses
  %i.aok = load ptr, ptr %i.anh, align 8
  %i.aol = icmp eq ptr %i.aoj, %i.aok
  br i1 %i.aol, label %bb.gw, label %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit, !prof !30

bb.gw:                                            ; preds = %bb.gv
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %21)
  %.pre.i.i = load ptr, ptr %i.ang, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit

_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit: ; preds = %bb.gv, %bb.gw
  %i.aom = phi ptr [ %.pre.i.i, %bb.gw ], [ %i.aoj, %bb.gv ] ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store ptr %i.aon, ptr %i.ang, align 8
  store i64 %i.aoe, ptr %i.aom, align 8
  br label %.thread733

.thread733:                                       ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit7.us, %_ZN2v88internal11HandleScopeD2Ev.exit7, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit
  %i.aoo = phi ptr [ %i.anl, %_ZN2v88internal11HandleScopeD2Ev.exit7 ], [ %i.anl, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit ], [ %i.alg, %_ZN2v88internal11HandleScopeD2Ev.exit7.us ] ; 14 uses
  %i.aop = phi ptr [ %i.anj, %_ZN2v88internal11HandleScopeD2Ev.exit7 ], [ %i.anj, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit ], [ %i.akt, %_ZN2v88internal11HandleScopeD2Ev.exit7.us ] ; 3 uses
  %i.aoq = phi ptr [ %i.ang, %_ZN2v88internal11HandleScopeD2Ev.exit7 ], [ %i.ang, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit ], [ %i.akq, %_ZN2v88internal11HandleScopeD2Ev.exit7.us ]
  %.us-phi856 = phi i64 [ undef, %_ZN2v88internal11HandleScopeD2Ev.exit7 ], [ undef, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit ], [ %.sroa.0309.1.us, %_ZN2v88internal11HandleScopeD2Ev.exit7.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull %2) #21
  %i.aor = load ptr, ptr %21, align 8             ; 2 uses
  %i.aos = load ptr, ptr %i.aoq, align 8          ; 2 uses
  %i.aot = icmp eq ptr %i.aor, %i.aos
  br i1 %i.aot, label %._crit_edge871.thread, label %.lr.ph870

.lr.ph870:                                        ; preds = %.thread733
  %i.aou = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aox = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.aoy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aoz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.apb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.apc = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.apd = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ape = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.apf = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.apg = getelementptr inbounds nuw i8, ptr %2, i64 55448 ; 3 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %2, i64 64088 ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %2, i64 64080 ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.apl = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.apm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.apn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.app = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.apq = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.apr = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aps = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.apu = getelementptr inbounds nuw i8, ptr %2, i64 6352 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.apx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.apy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.apz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aqb = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aqc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aqd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aqe = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aqf = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.aqg = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.aqk = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aqm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aqn = getelementptr inbounds nuw i8, ptr %2, i64 6256 ; 3 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aqq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aqr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aqs = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aqu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aqv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aqw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aqx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aqy = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aqz = ptrtoint ptr %.sroa.0461.1 to i64
  %i.ara = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.arb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.ard = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.are = getelementptr inbounds nuw i8, ptr %24, i64 40
  %.sroa.41155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.arf = getelementptr inbounds nuw i8, ptr %24, i64 64 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.arh = getelementptr inbounds nuw i8, ptr %24, i64 56
  br label %bb.gy

bb.gx:                                            ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit8
  %i.ari = getelementptr inbounds nuw i8, ptr %.sroa.0239.0866, i64 8 ; 2 uses
  %i.arj = icmp eq ptr %i.ari, %i.aos
  br i1 %i.arj, label %._crit_edge871, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph870, %bb.gx
  %.0319.i868 = phi i32 [ 0, %.lr.ph870 ], [ %.8327.i, %bb.gx ] ; 18 uses
  %.sroa.0309.3867 = phi i64 [ %.us-phi856, %.lr.ph870 ], [ %.sroa.0309.4, %bb.gx ] ; 2 uses
  %.sroa.0239.0866 = phi ptr [ %i.aor, %.lr.ph870 ], [ %i.ari, %bb.gx ] ; 6 uses
  %i.ark = load ptr, ptr %i.a, align 8
  %i.arl = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.arm = load i32, ptr %i.e, align 8
  %i.arn = add nsw i32 %i.arm, 1
  store i32 %i.arn, ptr %i.e, align 8
  %.sroa.0133.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %.pre.pre.i81 = load i64, ptr %i.aou, align 8
  %i.aro = add i64 %.pre.pre.i81, -1
  %i.arp = inttoptr i64 %i.aro to ptr             ; 3 uses
  %i.arq = load atomic volatile i64, ptr %i.arp monotonic, align 8
  %i.arr = add i64 %i.arq, 11
  %i.ars = inttoptr i64 %i.arr to ptr
  %i.art = load atomic volatile i16, ptr %i.ars monotonic, align 2
  %i.aru = icmp eq i16 %i.art, 128
  br i1 %i.aru, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93:  ; preds = %bb.gy
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arp, i64 12
  %i.arw = load i32, ptr %i.arv, align 4
  %i.arx = trunc i32 %i.arw to i1
  br i1 %i.arx, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93, %bb.gy
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93
  %i.ary = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93 ]
  store i32 %i.ary, ptr %7, align 8
  store i32 0, ptr %i.aov, align 4
  store i8 0, ptr %i.aow, align 8
  store i32 0, ptr %i.aox, align 4
  store i32 0, ptr %i.aoy, align 8
  store ptr %2, ptr %i.aoz, align 8
  store ptr null, ptr %i.apb, align 8
  store ptr %.sroa.0133.0.copyload.i, ptr %i.apc, align 8
  store ptr null, ptr %i.apd, align 8
  %i.arz = ptrtoint ptr %.sroa.0133.0.copyload.i to i64
  store i64 %i.arz, ptr %i.ape, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apf, i8 -1, i64 16, i1 false)
  %i.asa = load atomic volatile i64, ptr %i.arp monotonic, align 8
  %i.asb = add i64 %i.asa, 11
  %i.asc = inttoptr i64 %i.asb to ptr
  %i.asd = load atomic volatile i16, ptr %i.asc monotonic, align 2
  %i.ase = and i16 %i.asd, -96
  %.not.i21.i.i.i84 = icmp eq i16 %i.ase, 32
  br i1 %.not.i21.i.i.i84, label %bb.gz, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.gz:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83
  %i.asf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.asg = trunc nuw i8 %i.asf to i1
  %i.ash = load i8, ptr %i.apg, align 8, !range !28
  %i.asi = trunc nuw i8 %i.ash to i1
  %not..i.i.i23.i.i.i88 = xor i1 %i.asg, true
  %i.asj = select i1 %not..i.i.i23.i.i.i88, i1 true, i1 %i.asi
  br i1 %i.asj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ask = load i8, ptr %i.aph, align 8, !range !28, !noundef !29
  %i.asl = trunc nuw i8 %i.ask to i1
  br i1 %i.asl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i89, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i89: ; preds = %bb.ha
  %i.asm = load ptr, ptr %i.api, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i89, %bb.gz
  %.pn.i.i26.i.i.i91 = phi ptr [ %i.asm, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i89 ], [ %2, %bb.gz ]
  %.in.i.i27.i.i.i92 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i91, i64 58464
  %i.asn = load ptr, ptr %.in.i.i27.i.i.i92, align 8
  %i.aso = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.asn, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.aou) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83
  %.sroa.05.0.i22.i.i.i85 = phi ptr [ %i.aso, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90 ], [ %i.aou, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83 ]
  store ptr %.sroa.05.0.i22.i.i.i85, ptr %i.apa, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %7) #21
  %i.asp = load i32, ptr %i.aov, align 4
  %.not.i86 = icmp eq i32 %i.asp, 0
  br i1 %.not.i86, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.asq = load ptr, ptr %i.aoz, align 8
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.critedge356.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.ass = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %7, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not820 = icmp eq ptr %i.ass, null
  br i1 %.not820, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit28, label %.critedge356.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit28: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit
  %i.ast = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge356.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i87741 = phi ptr [ %i.asr, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.ass, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.asu = load i64, ptr %.sroa.0.0.i87741, align 8 ; 2 uses
  %i.asv = and i64 %i.asu, 1
  %i.asw = icmp eq i64 %i.asv, 0
  br i1 %i.asw, label %bb.hc, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

bb.hc:                                            ; preds = %.critedge356.i
  %i.asx = lshr i64 %i.asu, 32
  %i.asy = trunc nuw i64 %i.asx to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.asy, i32 0)
  %i.asz = zext nneg i32 %.sroa.speculated.i to i64
  %i.ata = shl nuw nsw i64 %i.asz, 32             ; 2 uses
  %i.atb = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.atc = load ptr, ptr %i.c, align 8
  %i.atd = icmp eq ptr %i.atb, %i.atc
  br i1 %i.atd, label %bb.hd, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29, !prof !30

bb.hd:                                            ; preds = %bb.hc
  %i.ate = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %.critedge356.i
  %i.atf = call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i87741) #21 ; 2 uses
  %.not821 = icmp eq ptr %i.atf, null
  br i1 %.not821, label %bb.he, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge358.i_crit_edge

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge358.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %.pre900 = load i64, ptr %i.atf, align 8
  br label %.critedge358.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29: ; preds = %bb.hc, %bb.hd
  %.0.i.i.i94 = phi ptr [ %i.ate, %bb.hd ], [ %i.atb, %bb.hc ] ; 2 uses
  %i.atg = ptrtoint ptr %.0.i.i.i94 to i64
  %i.ath = add i64 %i.atg, 8
  %i.ati = inttoptr i64 %i.ath to ptr
  store ptr %i.ati, ptr %i.a, align 8
  store i64 %i.ata, ptr %.0.i.i.i94, align 8
  br label %.critedge358.i

bb.he:                                            ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.atj = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge358.i:                                   ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge358.i_crit_edge, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29
  %i.atk = phi i64 [ %i.ata, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29 ], [ %.pre900, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge358.i_crit_edge ] ; 3 uses
  %i.atl = and i64 %i.atk, 1
  %i.atm = icmp eq i64 %i.atl, 0
  br i1 %i.atm, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %.critedge358.i
  %i.atn = lshr i64 %i.atk, 32
  %i.ato = trunc nuw i64 %i.atn to i32
  %..i = call i32 @llvm.smax.i32(i32 %i.ato, i32 0)
  br label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.hg:                                            ; preds = %.critedge358.i
  %i.atp = add nsw i64 %i.atk, -1
  %i.atq = inttoptr i64 %i.atp to ptr
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.atr, align 1 ; 3 uses
  %i.ats = fcmp ult double %.0.copyload.i.i.i.i.i, 1.000000e+00
  br i1 %i.ats, label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.att = fcmp olt double %.0.copyload.i.i.i.i.i, f0x41EFFFFFFFE00000
  %.116.i = select i1 %i.att, double %.0.copyload.i.i.i.i.i, double f0x41EFFFFFFFE00000
  %.1.i95 = fptoui double %.116.i to i32
  br label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.hf, %bb.hg, %bb.hh
  %.3.i = phi i32 [ %..i, %bb.hf ], [ %.1.i95, %bb.hh ], [ 0, %bb.hg ] ; 2 uses
  %.sroa.0122.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 3, ptr %6, align 8
  store i32 0, ptr %i.apj, align 4
  store i8 0, ptr %i.apk, align 8
  store i32 0, ptr %i.apl, align 4
  store i32 0, ptr %i.apm, align 8
  store ptr %2, ptr %i.apn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apo, i8 0, i64 16, i1 false)
  store ptr %.sroa.0122.0.copyload.i, ptr %i.app, align 8
  store ptr null, ptr %i.apq, align 8
  %i.atu = ptrtoint ptr %.sroa.0122.0.copyload.i to i64
  store i64 %i.atu, ptr %i.apr, align 8
  store i64 0, ptr %i.aps, align 8
  store i64 -1, ptr %i.apt, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #21
end_hunk_1
begin_hunk_2_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
  br i1 %.not.i96, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98.thread, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98.thread: ; preds = %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.atw = load ptr, ptr %i.apn, align 8
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.critedge360.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98: ; preds = %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aty = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.not822 = icmp eq ptr %i.aty, null
  br i1 %.not822, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit30, label %.critedge360.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit30: ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98
  %i.atz = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge360.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98.thread
  %.sroa.0.0.i97751 = phi ptr [ %i.atx, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98.thread ], [ %i.aty, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98 ] ; 3 uses
  %i.aua = load i64, ptr %.sroa.0.0.i97751, align 8 ; 2 uses
  %i.aub = trunc i64 %i.aua to i1
  br i1 %i.aub, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101: ; preds = %.critedge360.i
  %i.auc = add nsw i64 %i.aua, -1
  %i.aud = inttoptr i64 %i.auc to ptr             ; 2 uses
  %i.aue = load atomic volatile i64, ptr %i.aud monotonic, align 8
  %i.auf = add i64 %i.aue, 11
  %i.aug = inttoptr i64 %i.auf to ptr
  %i.auh = load atomic volatile i16, ptr %i.aug monotonic, align 2
  %i.aui = icmp ult i16 %i.auh, 128
  br i1 %i.aui, label %.critedge362.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102: ; preds = %.critedge360.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101
  %i.auj = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i97751) #21 ; 3 uses
  %.not823 = icmp eq ptr %i.auj, null
  br i1 %.not823, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102
  %.pre901 = load i64, ptr %i.auj, align 8
  %.pre906 = add i64 %.pre901, -1
  %.pre908 = inttoptr i64 %.pre906 to ptr
  br label %.critedge362.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102
  %i.auk = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge362.i:                                   ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101
  %.pre-phi909 = phi ptr [ %.pre908, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge ], [ %i.aud, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101 ]
  %.sroa.07.0.i100755 = phi ptr [ %i.auj, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge ], [ %.sroa.0.0.i97751, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101 ] ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.pre-phi909, i64 12
  %i.aum = load i32, ptr %i.aul, align 4
  %.sroa.0113.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %.pre.pre.i103 = load i64, ptr %i.apu, align 8
  %i.aun = add i64 %.pre.pre.i103, -1
  %i.auo = inttoptr i64 %i.aun to ptr             ; 3 uses
  %i.aup = load atomic volatile i64, ptr %i.auo monotonic, align 8
  %i.auq = add i64 %i.aup, 11
  %i.aur = inttoptr i64 %i.auq to ptr
  %i.aus = load atomic volatile i16, ptr %i.aur monotonic, align 2
  %i.aut = icmp eq i16 %i.aus, 128
  br i1 %i.aut, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116: ; preds = %.critedge362.i
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auo, i64 12
  %i.auv = load i32, ptr %i.auu, align 4
  %i.auw = trunc i32 %i.auv to i1
  br i1 %i.auw, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116, %.critedge362.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116
  %i.aux = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116 ]
  store i32 %i.aux, ptr %5, align 8
  store i32 0, ptr %i.apv, align 4
  store i8 0, ptr %i.apw, align 8
  store i32 0, ptr %i.apx, align 4
  store i32 0, ptr %i.apy, align 8
  store ptr %2, ptr %i.apz, align 8
  store ptr null, ptr %i.aqb, align 8
  store ptr %.sroa.0113.0.copyload.i, ptr %i.aqc, align 8
  store ptr null, ptr %i.aqd, align 8
  %i.auy = ptrtoint ptr %.sroa.0113.0.copyload.i to i64
  store i64 %i.auy, ptr %i.aqe, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqf, i8 -1, i64 16, i1 false)
  %i.auz = load atomic volatile i64, ptr %i.auo monotonic, align 8
  %i.ava = add i64 %i.auz, 11
  %i.avb = inttoptr i64 %i.ava to ptr
  %i.avc = load atomic volatile i16, ptr %i.avb monotonic, align 2
  %i.avd = and i16 %i.avc, -96
  %.not.i21.i.i.i106 = icmp eq i16 %i.avd, 32
  br i1 %.not.i21.i.i.i106, label %bb.hi, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107

bb.hi:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105
  %i.ave = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.avf = trunc nuw i8 %i.ave to i1
  %i.avg = load i8, ptr %i.apg, align 8, !range !28
  %i.avh = trunc nuw i8 %i.avg to i1
  %not..i.i.i23.i.i.i111 = xor i1 %i.avf, true
  %i.avi = select i1 %not..i.i.i23.i.i.i111, i1 true, i1 %i.avh
  br i1 %i.avi, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.avj = load i8, ptr %i.aph, align 8, !range !28, !noundef !29
  %i.avk = trunc nuw i8 %i.avj to i1
  br i1 %i.avk, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i112, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i112: ; preds = %bb.hj
  %i.avl = load ptr, ptr %i.api, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i112, %bb.hi
  %.pn.i.i26.i.i.i114 = phi ptr [ %i.avl, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i112 ], [ %2, %bb.hi ]
  %.in.i.i27.i.i.i115 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i114, i64 58464
  %i.avm = load ptr, ptr %.in.i.i27.i.i.i115, align 8
  %i.avn = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.avm, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.apu) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105
  %.sroa.05.0.i22.i.i.i108 = phi ptr [ %i.avn, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113 ], [ %i.apu, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105 ]
  store ptr %.sroa.05.0.i22.i.i.i108, ptr %i.aqa, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #21
  %i.avo = load i32, ptr %i.apv, align 4
  %.not.i109 = icmp eq i32 %i.avo, 0
  br i1 %.not.i109, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107
  %i.avp = load ptr, ptr %i.apz, align 8
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.critedge364.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107
  %i.avr = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not824 = icmp eq ptr %i.avr, null
  br i1 %.not824, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit31, label %.critedge364.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit31: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117
  %i.avs = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge364.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117.thread
  %.sroa.0.0.i110759 = phi ptr [ %i.avq, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117.thread ], [ %i.avr, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117 ] ; 2 uses
  %i.avt = load i64, ptr %.sroa.0.0.i110759, align 8 ; 2 uses
  %i.avu = and i64 %i.avt, 1
  %i.avv = icmp eq i64 %i.avu, 0
  br i1 %i.avv, label %.critedge366.i, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %.critedge364.i
  %i.avw = call ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i110759) #21 ; 2 uses
  %.not825 = icmp eq ptr %i.avw, null
  br i1 %.not825, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge366.i_crit_edge

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge366.i_crit_edge: ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre902 = load i64, ptr %i.avw, align 8
  br label %.critedge366.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.avx = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge366.i:                                   ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge366.i_crit_edge, %.critedge364.i
  %i.avy = phi i64 [ %.pre902, %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge366.i_crit_edge ], [ %i.avt, %.critedge364.i ] ; 3 uses
  %i.avz = and i64 %i.avy, 1
  %i.awa = icmp eq i64 %i.avz, 0
  br i1 %i.awa, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %.critedge366.i
  %i.awb = lshr i64 %i.avy, 32
  %i.awc = trunc nuw i64 %i.awb to i32
  %..i123 = call i32 @llvm.smax.i32(i32 %i.awc, i32 0)
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit

bb.hm:                                            ; preds = %.critedge366.i
  %i.awd = add nsw i64 %i.avy, -1
  %i.awe = inttoptr i64 %i.awd to ptr
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  %.0.copyload.i.i.i.i.i119 = load double, ptr %i.awf, align 1 ; 3 uses
  %i.awg = fcmp ult double %.0.copyload.i.i.i.i.i119, 1.000000e+00
  br i1 %i.awg, label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.awh = fcmp olt double %.0.copyload.i.i.i.i.i119, f0x41EFFFFFFFE00000
  %.116.i120 = select i1 %i.awh, double %.0.copyload.i.i.i.i.i119, double f0x41EFFFFFFFE00000
  %.1.i121 = fptoui double %.116.i120 to i32
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit

_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit: ; preds = %bb.hn, %bb.hm, %bb.hl
  %.3.i122 = phi i32 [ %..i123, %bb.hl ], [ %.1.i121, %bb.hn ], [ 0, %bb.hm ]
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.aaf, i32 %.3.i122) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqk, i8 0, i64 56, i1 false)
  store ptr %i.aqg, ptr %23, align 8
  store ptr %i.aqj, ptr %i.aqi, align 8
  store ptr %i.aqk, ptr %i.aqh, align 8
  %i.awi = ptrtoint ptr %.sroa.07.0.i100755 to i64
  store i64 %i.awi, ptr %i.aqg, align 8
  %.not.i859 = icmp ugt i32 %.3.i, 1
  br i1 %.not.i859, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit
  %wide.trip.count = zext i32 %.3.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit ] ; 2 uses
  %.sroa.095.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %2, ptr %.sroa.095.0.copyload.i, ptr null, i64 noundef %indvars.iv, ptr %.sroa.095.0.copyload.i, i32 noundef 3)
  %i.awj = load i32, ptr %i.aql, align 4
  %.not.i128 = icmp eq i32 %i.awj, 0
  br i1 %.not.i128, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130.thread, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130.thread: ; preds = %.lr.ph
  %i.awk = load ptr, ptr %i.aqm, align 8
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge368.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130: ; preds = %.lr.ph
  %i.awm = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not832 = icmp eq ptr %i.awm, null
  br i1 %.not832, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit34, label %.critedge368.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit34: ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130
  %i.awn = load i64, ptr %i.aoo, align 8
  br label %.thread774

.critedge368.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130.thread
  %.sroa.0.0.i129767 = phi ptr [ %i.awl, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130.thread ], [ %i.awm, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130 ] ; 4 uses
  %i.awo = load i64, ptr %.sroa.0.0.i129767, align 8 ; 3 uses
  %i.awp = load i64, ptr %i.aop, align 8
  %i.awq = icmp eq i64 %i.awo, %i.awp
  br i1 %i.awq, label %.critedge372.i, label %bb.ho

bb.ho:                                            ; preds = %.critedge368.i
  %i.awr = trunc i64 %i.awo to i1
  br i1 %i.awr, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133: ; preds = %bb.ho
  %i.aws = add nsw i64 %i.awo, -1
  %i.awt = inttoptr i64 %i.aws to ptr
  %i.awu = load atomic volatile i64, ptr %i.awt monotonic, align 8
  %i.awv = add i64 %i.awu, 11
  %i.aww = inttoptr i64 %i.awv to ptr
  %i.awx = load atomic volatile i16, ptr %i.aww monotonic, align 2
  %i.awy = icmp ult i16 %i.awx, 128
  br i1 %i.awy, label %.critedge372.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134: ; preds = %bb.ho, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133
  %i.awz = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i129767) #21 ; 2 uses
  %.not833 = icmp eq ptr %i.awz, null
  br i1 %.not833, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit42, label %.critedge372.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit42: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134
  %i.axa = load i64, ptr %i.aoo, align 8
  br label %.thread774

.critedge372.i:                                   ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134, %.critedge368.i
  %.sroa.0208.0 = phi ptr [ %.sroa.0.0.i129767, %.critedge368.i ], [ %i.awz, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134 ], [ %.sroa.0.0.i129767, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133 ]
  %i.axb = load ptr, ptr %i.aqh, align 8          ; 2 uses
  %i.axc = load ptr, ptr %i.aqi, align 8
  %i.axd = icmp eq ptr %i.axb, %i.axc
  br i1 %i.axd, label %bb.hp, label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit, !prof !30

bb.hp:                                            ; preds = %.critedge372.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %23)
  %.pre.i.i135 = load ptr, ptr %i.aqh, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit

_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit: ; preds = %.critedge372.i, %bb.hp
  %i.axe = phi ptr [ %.pre.i.i135, %bb.hp ], [ %i.axb, %.critedge372.i ] ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  store ptr %i.axf, ptr %i.aqh, align 8
  %i.axg = ptrtoint ptr %.sroa.0208.0 to i64
  store i64 %i.axg, ptr %i.axe, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge:                                      ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit, %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit
  %.sroa.085.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.pre.pre.i136 = load i64, ptr %i.aqn, align 8
  %i.axh = add i64 %.pre.pre.i136, -1
  %i.axi = inttoptr i64 %i.axh to ptr             ; 3 uses
  %i.axj = load atomic volatile i64, ptr %i.axi monotonic, align 8
  %i.axk = add i64 %i.axj, 11
  %i.axl = inttoptr i64 %i.axk to ptr
  %i.axm = load atomic volatile i16, ptr %i.axl monotonic, align 2
  %i.axn = icmp eq i16 %i.axm, 128
  br i1 %i.axn, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149: ; preds = %._crit_edge
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axi, i64 12
  %i.axp = load i32, ptr %i.axo, align 4
  %i.axq = trunc i32 %i.axp to i1
  br i1 %i.axq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149, %._crit_edge
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149
  %i.axr = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149 ]
  store i32 %i.axr, ptr %3, align 8
  store i32 0, ptr %i.aqo, align 4
  store i8 0, ptr %i.aqp, align 8
  store i32 0, ptr %i.aqq, align 4
  store i32 0, ptr %i.aqr, align 8
  store ptr %2, ptr %i.aqs, align 8
  store ptr null, ptr %i.aqu, align 8
  store ptr %.sroa.085.0.copyload.i, ptr %i.aqv, align 8
  store ptr null, ptr %i.aqw, align 8
  %i.axs = ptrtoint ptr %.sroa.085.0.copyload.i to i64
  store i64 %i.axs, ptr %i.aqx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqy, i8 -1, i64 16, i1 false)
  %i.axt = load atomic volatile i64, ptr %i.axi monotonic, align 8
  %i.axu = add i64 %i.axt, 11
  %i.axv = inttoptr i64 %i.axu to ptr
  %i.axw = load atomic volatile i16, ptr %i.axv monotonic, align 2
  %i.axx = and i16 %i.axw, -96
  %.not.i21.i.i.i139 = icmp eq i16 %i.axx, 32
  br i1 %.not.i21.i.i.i139, label %bb.hq, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140

bb.hq:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138
  %i.axy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.axz = trunc nuw i8 %i.axy to i1
  %i.aya = load i8, ptr %i.apg, align 8, !range !28
  %i.ayb = trunc nuw i8 %i.aya to i1
  %not..i.i.i23.i.i.i144 = xor i1 %i.axz, true
  %i.ayc = select i1 %not..i.i.i23.i.i.i144, i1 true, i1 %i.ayb
  br i1 %i.ayc, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ayd = load i8, ptr %i.aph, align 8, !range !28, !noundef !29
  %i.aye = trunc nuw i8 %i.ayd to i1
  br i1 %i.aye, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i145, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i145: ; preds = %bb.hr
  %i.ayf = load ptr, ptr %i.api, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i145, %bb.hq
  %.pn.i.i26.i.i.i147 = phi ptr [ %i.ayf, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i145 ], [ %2, %bb.hq ]
  %.in.i.i27.i.i.i148 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i147, i64 58464
  %i.ayg = load ptr, ptr %.in.i.i27.i.i.i148, align 8
  %i.ayh = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ayg, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.aqn) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138
  %.sroa.05.0.i22.i.i.i141 = phi ptr [ %i.ayh, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146 ], [ %i.aqn, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138 ]
  store ptr %.sroa.05.0.i22.i.i.i141, ptr %i.aqt, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.ayi = load i32, ptr %i.aqo, align 4
  %.not.i142 = icmp eq i32 %i.ayi, 0
  br i1 %.not.i142, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140
  %i.ayj = load ptr, ptr %i.aqs, align 8
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.critedge374.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140
  %i.ayl = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not826 = icmp eq ptr %i.ayl, null
  br i1 %.not826, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit32, label %.critedge374.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit32: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150
  %i.aym = load i64, ptr %i.aoo, align 8
  br label %.thread774

.critedge374.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150.thread
  %.sroa.0.0.i143778 = phi ptr [ %i.ayk, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150.thread ], [ %i.ayl, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150 ] ; 5 uses
  %i.ayn = load i64, ptr %.sroa.0.0.i143778, align 8 ; 3 uses
  %i.ayo = load i64, ptr %i.aop, align 8
  %.not829 = icmp eq i64 %i.ayn, %i.ayo           ; 3 uses
  br i1 %i.aaa, label %bb.ht, label %bb.hy

bb.ht:                                            ; preds = %.critedge374.i
  %i.ayp = load ptr, ptr %i.aqh, align 8          ; 2 uses
  %i.ayq = load ptr, ptr %23, align 8             ; 8 uses
  %i.ayr = ptrtoint ptr %i.ayp to i64
  %i.ays = ptrtoint ptr %i.ayq to i64             ; 2 uses
  %i.ayt = sub i64 %i.ayr, %i.ays                 ; 2 uses
  %i.ayu = lshr exact i64 %i.ayt, 3
  %i.ayv = trunc i64 %i.ayu to i32                ; 2 uses
  %i.ayw = icmp ugt i32 %i.ayv, 65526
  %.v.i = select i1 %.not829, i32 2, i32 3
  %i.ayx = add nuw nsw i32 %.v.i, %i.ayv          ; 2 uses
  %i.ayy = icmp ugt i32 %i.ayx, 65526
  %i.ayz = select i1 %i.ayw, i1 true, i1 %i.ayy
  br i1 %i.ayz, label %.critedge378.i, label %bb.hu

.critedge378.i:                                   ; preds = %bb.ht
  %i.aza = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 396, ptr null, i64 0) #21
  %i.azb = load i64, ptr %i.aza, align 8
  %i.azc = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.azb, ptr noundef null) #21
  br label %.thread774

bb.hu:                                            ; preds = %bb.ht
  %i.azd = zext nneg i32 %i.ayx to i64            ; 2 uses
  %i.aze = shl nuw nsw i64 %i.azd, 3              ; 5 uses
  %i.azf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aze) #24 ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.azf, i8 0, i64 %i.aze, i1 false)
  %.not873 = icmp eq ptr %i.ayp, %i.ayq
  br i1 %.not873, label %._crit_edge865, label %.lr.ph864.preheader

.lr.ph864.preheader:                              ; preds = %bb.hu
  %i.azg = ptrtoaddr ptr %i.azf to i64
  %i.azh = ashr exact i64 %i.ayt, 3               ; 9 uses
  %min.iters.check = icmp ult i64 %i.azh, 4
  %i.azi = sub i64 %i.ays, %i.azg
  %diff.check = icmp ugt i64 %i.azi, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph864.preheader1359, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph864.preheader
  %n.vec = and i64 %i.azh, -4                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.azj = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %index ; 2 uses
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %index ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azj, i64 16
  %wide.load = load <2 x i64>, ptr %i.azj, align 8
  %wide.load1354 = load <2 x i64>, ptr %i.azl, align 8
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azk, i64 16
  store <2 x i64> %wide.load, ptr %i.azk, align 8
  store <2 x i64> %wide.load1354, ptr %i.azm, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.azn = icmp eq i64 %index.next, %n.vec
  br i1 %i.azn, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.azh, %n.vec
  br i1 %cmp.n, label %._crit_edge865, label %.lr.ph864.preheader1359

.lr.ph864.preheader1359:                          ; preds = %.lr.ph864.preheader, %middle.block
  %indvars.iv890.ph = phi i64 [ 0, %.lr.ph864.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.azh, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph864.prol.loopexit, label %.lr.ph864.prol

.lr.ph864.prol:                                   ; preds = %.lr.ph864.preheader1359, %.lr.ph864.prol
  %indvars.iv890.prol = phi i64 [ %indvars.iv.next891.prol, %.lr.ph864.prol ], [ %indvars.iv890.ph, %.lr.ph864.preheader1359 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph864.prol ], [ 0, %.lr.ph864.preheader1359 ]
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv890.prol
  %indvars.iv.next891.prol = add nuw i64 %indvars.iv890.prol, 1 ; 2 uses
  %i.azp = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv890.prol
  %i.azq = load i64, ptr %i.azo, align 8
  store i64 %i.azq, ptr %i.azp, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph864.prol.loopexit, label %.lr.ph864.prol, !llvm.loop !149

.lr.ph864.prol.loopexit:                          ; preds = %.lr.ph864.prol, %.lr.ph864.preheader1359
  %indvars.iv890.unr = phi i64 [ %indvars.iv890.ph, %.lr.ph864.preheader1359 ], [ %indvars.iv.next891.prol, %.lr.ph864.prol ]
  %i.azr = sub nsw i64 %indvars.iv890.ph, %i.azh
  %i.azs = icmp ugt i64 %i.azr, -4
  br i1 %i.azs, label %._crit_edge865, label %.lr.ph864

._crit_edge865:                                   ; preds = %.lr.ph864.prol.loopexit, %.lr.ph864, %middle.block, %bb.hu
  %.0330.i.lcssa = phi i64 [ 0, %bb.hu ], [ %i.azh, %middle.block ], [ %i.azh, %.lr.ph864 ], [ %i.azh, %.lr.ph864.prol.loopexit ]
  %i.azt = sext i32 %.sroa.speculated to i64
  %i.azu = shl nsw i64 %i.azt, 32
  %i.azv = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.azw = load ptr, ptr %i.c, align 8
  %i.azx = icmp eq ptr %i.azv, %i.azw
  br i1 %i.azx, label %bb.hv, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !30

bb.hv:                                            ; preds = %._crit_edge865
  %i.azy = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %._crit_edge865, %bb.hv
  %.0.i.i.i = phi ptr [ %i.azy, %bb.hv ], [ %i.azv, %._crit_edge865 ] ; 2 uses
  %i.azz = ptrtoint ptr %.0.i.i.i to i64          ; 2 uses
  %i.baa = add i64 %i.azz, 8
  %i.bab = inttoptr i64 %i.baa to ptr
  store ptr %i.bab, ptr %i.a, align 8
  store i64 %i.azu, ptr %.0.i.i.i, align 8
  %i.bac = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %.0330.i.lcssa ; 3 uses
  store i64 %i.azz, ptr %i.bac, align 8
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 8
  store i64 %i.aqz, ptr %i.bad, align 8
  br i1 %.not829, label %bb.hx, label %bb.hw

.lr.ph864:                                        ; preds = %.lr.ph864.prol.loopexit, %.lr.ph864
  %indvars.iv890 = phi i64 [ %indvars.iv.next891.3, %.lr.ph864 ], [ %indvars.iv890.unr, %.lr.ph864.prol.loopexit ] ; 6 uses
  %i.bae = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv890
  %indvars.iv.next891 = add nuw i64 %indvars.iv890, 1 ; 2 uses
  %i.baf = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv890
  %i.bag = load i64, ptr %i.bae, align 8
  store i64 %i.bag, ptr %i.baf, align 8
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv.next891
  %indvars.iv.next891.1 = add nuw i64 %indvars.iv890, 2 ; 2 uses
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv.next891
  %i.baj = load i64, ptr %i.bah, align 8
  store i64 %i.baj, ptr %i.bai, align 8
  %i.bak = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv.next891.1
  %indvars.iv.next891.2 = add nuw i64 %indvars.iv890, 3 ; 2 uses
  %i.bal = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv.next891.1
  %i.bam = load i64, ptr %i.bak, align 8
  store i64 %i.bam, ptr %i.bal, align 8
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv.next891.2
  %indvars.iv.next891.3 = add nuw i64 %indvars.iv890, 4 ; 2 uses
  %i.bao = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv.next891.2
  %i.bap = load i64, ptr %i.ban, align 8
  store i64 %i.bap, ptr %i.bao, align 8
  %exitcond.not1305.3 = icmp eq i64 %indvars.iv.next891.3, %i.azh
  br i1 %exitcond.not1305.3, label %._crit_edge865, label %.lr.ph864, !llvm.loop !150

bb.hw:                                            ; preds = %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bac, i64 16
  %i.bar = ptrtoint ptr %.sroa.0.0.i143778 to i64
  store i64 %i.bar, ptr %i.baq, align 8
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bas = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %2, ptr nonnull %i.l, ptr nonnull %i.aop, ptr nonnull %i.azf, i64 %i.azd) #21 ; 4 uses
  %.not830 = icmp eq ptr %i.bas, null
  br i1 %.not830, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit, label %.critedge376.i

_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit: ; preds = %bb.hx
  %i.bat = load i64, ptr %i.aoo, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.azf, i64 noundef %i.aze) #25
  br label %.thread774

.critedge376.i:                                   ; preds = %bb.hx
  %i.bau = load i64, ptr %i.bas, align 8          ; 2 uses
  %i.bav = trunc i64 %i.bau to i1
  br i1 %i.bav, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i154, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit155

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i154: ; preds = %.critedge376.i
  %i.baw = add nsw i64 %i.bau, -1
  %i.bax = inttoptr i64 %i.baw to ptr
  %i.bay = load atomic volatile i64, ptr %i.bax monotonic, align 8
  %i.baz = add i64 %i.bay, 11
  %i.bba = inttoptr i64 %i.baz to ptr
  %i.bbb = load atomic volatile i16, ptr %i.bba monotonic, align 2
  %i.bbc = icmp ult i16 %i.bbb, 128
  br i1 %i.bbc, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit162, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit155

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit155: ; preds = %.critedge376.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i154
  %i.bbd = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.bas) #21 ; 2 uses
  %.not831 = icmp eq ptr %i.bbd, null
  br i1 %.not831, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit157, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit162

_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit157: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit155
  %i.bbe = load i64, ptr %i.aoo, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.azf, i64 noundef %i.aze) #25
  br label %.thread774

bb.hy:                                            ; preds = %.critedge374.i
  br i1 %.not829, label %.critedge380.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.bbf = trunc i64 %i.ayn to i1
  br i1 %i.bbf, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !100

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.hz
  %i.bbg = add nsw i64 %i.ayn, -1
  %i.bbh = inttoptr i64 %i.bbg to ptr
  %i.bbi = load atomic volatile i64, ptr %i.bbh monotonic, align 8
  %i.bbj = add i64 %i.bbi, 11
  %i.bbk = inttoptr i64 %i.bbj to ptr
  %i.bbl = load atomic volatile i16, ptr %i.bbk monotonic, align 2
  %i.bbm = icmp ugt i16 %i.bbl, 299
  br i1 %i.bbm, label %.critedge380.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !151

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit: ; preds = %bb.hz, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bbn = call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i143778, ptr noundef null) #21 ; 2 uses
  %.not827 = icmp eq ptr %i.bbn, null
  br i1 %.not827, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %.critedge380.i

_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit
  %i.bbo = load i64, ptr %i.aoo, align 8
  br label %.thread774

.critedge380.i:                                   ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, %bb.hy
  %.sroa.0200.0 = phi ptr [ %.sroa.0.0.i143778, %bb.hy ], [ %i.bbn, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit ], [ %.sroa.0.0.i143778, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.bbp = load ptr, ptr %23, align 8             ; 2 uses
  %i.bbq = load ptr, ptr %i.aqh, align 8
  %i.bbr = ptrtoint ptr %i.bbq to i64
  %i.bbs = ptrtoint ptr %i.bbp to i64
  %i.bbt = sub i64 %i.bbr, %i.bbs
  %i.bbu = ashr exact i64 %i.bbt, 3
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_117VectorBackedMatchE, i64 16), ptr %24, align 8
  store ptr %2, ptr %i.ara, align 8
  store ptr null, ptr %i.arb, align 8
  store ptr %.sroa.07.0.i100755, ptr %i.arc, align 8
  store i32 %.sroa.speculated, ptr %i.ard, align 8
  store ptr %i.bbp, ptr %i.are, align 8
  store i64 %i.bbu, ptr %.sroa.41155.0..sroa_idx, align 8
  store ptr null, ptr %i.arf, align 8
  %i.bbv = load i64, ptr %.sroa.0461.1, align 8   ; 2 uses
  %i.bbw = add i64 %i.bbv, -1
  %i.bbx = inttoptr i64 %i.bbw to ptr             ; 3 uses
  %i.bby = load atomic volatile i64, ptr %i.bbx acquire, align 8
  %i.bbz = add i64 %i.bby, 11
  %i.bca = inttoptr i64 %i.bbz to ptr
  %i.bcb = load atomic volatile i16, ptr %i.bca monotonic, align 2 ; 3 uses
  %i.bcc = and i16 %i.bcb, -127
  %.not.i1106 = icmp eq i16 %i.bcc, 1
  br i1 %.not.i1106, label %bb.ia, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i1107, !prof !30

bb.ia:                                            ; preds = %.critedge380.i
  %i.bcd = and i16 %i.bcb, 7
  %i.bce = icmp eq i16 %i.bcd, 1
  br i1 %i.bce, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbx, i64 24
  %i.bcg = load i64, ptr %i.bcf, align 8
  %i.bch = add i64 %i.bcg, -1
  %i.bci = inttoptr i64 %i.bch to ptr
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 12
  %i.bck = load i32, ptr %i.bcj, align 4
  %i.bcl = icmp eq i32 %i.bck, 0
  br i1 %i.bcl, label %.thread.i1112, label %bb.ic

.thread.i1112:                                    ; preds = %bb.ib
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16
  %i.bcn = load i64, ptr %i.bcm, align 8          ; 2 uses
  %i.bco = add i64 %i.bcn, -1
  %i.bcp = inttoptr i64 %i.bco to ptr
  %i.bcq = load atomic volatile i64, ptr %i.bcp acquire, align 8
  %i.bcr = add i64 %i.bcq, 11
  %i.bcs = inttoptr i64 %i.bcr to ptr
  %i.bct = load atomic volatile i16, ptr %i.bcs monotonic, align 2
  br label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.bcu = call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %2, ptr nonnull %.sroa.0461.1, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i1107

bb.id:                                            ; preds = %.thread.i1112, %bb.ia
  %.sroa.016.0.i = phi i16 [ %i.bct, %.thread.i1112 ], [ %i.bcb, %bb.ia ]
  %.sroa.012.1.i.i1108 = phi i64 [ %i.bcn, %.thread.i1112 ], [ %i.bbv, %bb.ia ] ; 2 uses
  %i.bcv = and i16 %.sroa.016.0.i, -121
  %i.bcw = icmp eq i16 %i.bcv, 5
  br i1 %i.bcw, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.bcx = add i64 %.sroa.012.1.i.i1108, -1
  %i.bcy = inttoptr i64 %i.bcx to ptr
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 16
  %i.bda = load i64, ptr %i.bcz, align 8
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.sroa.012.2.i.i1109 = phi i64 [ %i.bda, %bb.ie ], [ %.sroa.012.1.i.i1108, %bb.id ]
  %i.bdb = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bdc = load ptr, ptr %i.c, align 8
  %i.bdd = icmp eq ptr %i.bdb, %i.bdc
  br i1 %i.bdd, label %bb.ig, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i1110, !prof !30

bb.ig:                                            ; preds = %bb.if
  %i.bde = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i1110

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i1110: ; preds = %bb.ig, %bb.if
  %.0.i.i.i1111 = phi ptr [ %i.bde, %bb.ig ], [ %i.bdb, %bb.if ] ; 3 uses
  %i.bdf = ptrtoint ptr %.0.i.i.i1111 to i64
  %i.bdg = add i64 %i.bdf, 8
  %i.bdh = inttoptr i64 %i.bdg to ptr
  store ptr %i.bdh, ptr %i.a, align 8
  store i64 %.sroa.012.2.i.i1109, ptr %.0.i.i.i1111, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i1107

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i1107: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i1110, %bb.ic, %.critedge380.i
  %.sroa.021.1.i = phi ptr [ %i.bcu, %bb.ic ], [ %.0.i.i.i1111, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i1110 ], [ %.sroa.0461.1, %.critedge380.i ]
  store ptr %.sroa.021.1.i, ptr %i.arb, align 8
  %i.bdi = load i64, ptr %.sroa.0200.0, align 8
  %i.bdj = load i64, ptr %i.arg, align 8
  %i.bdk = icmp ne i64 %i.bdi, %i.bdj             ; 2 uses
  %i.bdl = zext i1 %i.bdk to i8
  store i8 %i.bdl, ptr %i.arh, align 8
  br i1 %i.bdk, label %bb.ih, label %_ZN2v88internal12_GLOBAL__N_117VectorBackedMatchC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEES7_jNS_4base6VectorINS5_INS0_6ObjectEEEEESB_.exit

bb.ih:                                            ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i1107
  store ptr %.sroa.0200.0, ptr %i.arf, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117VectorBackedMatchC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEES7_jNS_4base6VectorINS5_INS0_6ObjectEEEEESB_.exit

_ZN2v88internal12_GLOBAL__N_117VectorBackedMatchC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEES7_jNS_4base6VectorINS5_INS0_6ObjectEEEEESB_.exit: ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i1107, %bb.ih
  %i.bdm = call ptr @_ZN2v88internal6String15GetSubstitutionEPNS0_7IsolateEPNS1_5MatchENS0_12DirectHandleIS1_EEj(ptr noundef nonnull %2, ptr noundef nonnull %24, ptr %.sroa.0296.01008, i32 noundef 0) #21 ; 2 uses
  %.not828 = icmp eq ptr %i.bdm, null
  br i1 %.not828, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37, label %.critedge382.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37: ; preds = %_ZN2v88internal12_GLOBAL__N_117VectorBackedMatchC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEES7_jNS_4base6VectorINS5_INS0_6ObjectEEEEESB_.exit
  %i.bdn = load i64, ptr %i.aoo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.thread774

.critedge382.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_117VectorBackedMatchC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEES7_jNS_4base6VectorINS5_INS0_6ObjectEEEEESB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.ii

_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit162: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i154, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit155
  %.sroa.07.0.i153784788 = phi ptr [ %i.bbd, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit155 ], [ %i.bas, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i154 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.azf, i64 noundef %i.aze) #25
  br label %bb.ii

bb.ii:                                            ; preds = %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit162, %.critedge382.i
  %.sroa.0195.0 = phi ptr [ %.sroa.07.0.i153784788, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit162 ], [ %i.bdm, %.critedge382.i ]
  %.not336.i = icmp ult i32 %.sroa.speculated, %.0319.i868
  br i1 %.not336.i, label %.thread774, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bdo = icmp eq i32 %.0319.i868, 0
  br i1 %i.bdo, label %bb.ik, label %.critedge.i163

bb.ik:                                            ; preds = %bb.ij
  %i.bdp = load i64, ptr %.sroa.0461.1, align 8
  %i.bdq = add i64 %i.bdp, -1
  %i.bdr = inttoptr i64 %i.bdq to ptr
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 12
  %i.bdt = load i32, ptr %i.bds, align 4
  %i.bdu = icmp eq i32 %.sroa.speculated, %i.bdt
  br i1 %i.bdu, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, label %.critedge.i163

.critedge.i163:                                   ; preds = %bb.ik, %bb.ij
  %i.bdv = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.sroa.0461.1, i32 noundef %.0319.i868, i32 noundef %.sroa.speculated) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.ik, %.critedge.i163
  %.sroa.07.0.i164 = phi ptr [ %i.bdv, %.critedge.i163 ], [ %.sroa.0461.1, %bb.ik ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr %.sroa.07.0.i164) #21
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr nonnull %.sroa.0195.0) #21
  %i.bdw = add i32 %.sroa.speculated, %i.aum
  br label %.thread774

.thread774:                                       ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit42, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit34, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit32, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, %bb.ii, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit157, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit, %.critedge378.i
  %.sroa.0309.14 = phi i64 [ %i.bbo, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %i.aym, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit32 ], [ %i.azc, %.critedge378.i ], [ %.sroa.0309.3867, %bb.ii ], [ %.sroa.0309.3867, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit ], [ %i.bbe, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit157 ], [ %i.bat, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit ], [ %i.bdn, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37 ], [ %i.awn, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit34 ], [ %i.axa, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit42 ]
  %.4323.i = phi i32 [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit32 ], [ %.0319.i868, %.critedge378.i ], [ %.0319.i868, %bb.ii ], [ %i.bdw, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit ], [ %.0319.i868, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit157 ], [ %.0319.i868, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit ], [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37 ], [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit34 ], [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit42 ]
  %i.bdx = phi i1 [ false, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit32 ], [ false, %.critedge378.i ], [ true, %bb.ii ], [ true, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit ], [ false, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit157 ], [ false, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37 ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit34 ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit42 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.il

bb.il:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit28, %bb.he, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38, %.thread774, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit31, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit30
  %.sroa.0309.4 = phi i64 [ %i.ast, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit28 ], [ %i.atj, %bb.he ], [ %i.atz, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit30 ], [ %i.auk, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38 ], [ %.sroa.0309.14, %.thread774 ], [ %i.avx, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %i.avs, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit31 ] ; 2 uses
  %.8327.i = phi i32 [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit28 ], [ %.0319.i868, %bb.he ], [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit30 ], [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38 ], [ %.4323.i, %.thread774 ], [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %.0319.i868, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit31 ] ; 4 uses
  %.36.i = phi i1 [ false, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit28 ], [ false, %bb.he ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit30 ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38 ], [ %i.bdx, %.thread774 ], [ false, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ false, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit31 ]
  store ptr %i.ark, ptr %i.a, align 8
  %i.bdy = load i32, ptr %i.e, align 8
  %i.bdz = add nsw i32 %i.bdy, -1
  store i32 %i.bdz, ptr %i.e, align 8
  %i.bea = load ptr, ptr %i.c, align 8
  %.not.i17 = icmp eq ptr %i.bea, %i.arl
  br i1 %.not.i17, label %_ZN2v88internal11HandleScopeD2Ev.exit8, label %bb.im, !prof !31

bb.im:                                            ; preds = %bb.il
  store ptr %i.arl, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit8

_ZN2v88internal11HandleScopeD2Ev.exit8:           ; preds = %bb.im, %bb.il
  br i1 %.36.i, label %bb.gx, label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread1019

_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread1019: ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

._crit_edge871:                                   ; preds = %bb.gx
  %i.beb = icmp ult i32 %.8327.i, %i.aaf
  br i1 %i.beb, label %bb.in, label %bb.io

._crit_edge871.thread:                            ; preds = %.thread733
  %.not1035 = icmp eq i32 %i.aaf, 0
  br i1 %.not1035, label %bb.io, label %.thread1015

bb.in:                                            ; preds = %._crit_edge871
  %i.bec = icmp eq i32 %.8327.i, 0
  br i1 %i.bec, label %.thread1015, label %.critedge.i165

.thread1015:                                      ; preds = %._crit_edge871.thread, %bb.in
  %i.bed = load i64, ptr %.sroa.0461.1, align 8
  %i.bee = add i64 %i.bed, -1
  %i.bef = inttoptr i64 %i.bee to ptr
end_hunk_2
