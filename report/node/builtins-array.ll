inline.NumInlined: 2118
inline.NumDeleted: 818
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor5visitEjNS0_12DirectHandleINS0_6ObjectEEE:bb.a
  br label %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.aq, %bb.n ] ; 5 uses
  %i.av = ptrtoint ptr %.0.i.i to i64
  %i.aw = add i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr %i.ax, ptr %i.ap, align 8
  store i64 %i.an, ptr %.0.i.i, align 8
  %i.ay = load ptr, ptr %0, align 8
  %i.az = tail call ptr @_ZN2v88internal16NumberDictionary3SetINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_jNS3_INS0_6ObjectEEENS3_INS0_8JSObjectEEENS0_15PropertyDetailsE(ptr noundef %i.ay, ptr nonnull %.0.i.i, i32 noundef %i.c, ptr %2, ptr null, i32 0) #15 ; 4 uses
  %i.ba = icmp eq ptr %i.az, %.0.i.i
  br i1 %i.ba, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread55, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.p
  %i.bc = load i64, ptr %i.az, align 8
  %i.bd = load i64, ptr %.0.i.i, align 8
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread55

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread55: ; preds = %bb.p, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %.val28 = load ptr, ptr %i.al, align 8
  tail call void @_ZN2v88internal13GlobalHandles7DestroyEPm(ptr noundef %.val28) #15
  %i.bf = load i64, ptr %i.az, align 8
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 58848
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call ptr @_ZN2v88internal13GlobalHandles6CreateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.bi, i64 %i.bf) #15
  %i.bk = ptrtoint ptr %i.bj to i64
  store i64 %i.bk, ptr %i.al, align 8
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread55, %bb.l, %bb.k, %bb.g, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.d ], [ true, %bb.l ], [ true, %bb.g ], [ true, %bb.k ], [ true, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit ], [ true, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread55 ], [ true, %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  ret i1 %.0
}

declare ptr @_ZN2v88internal13GlobalHandles6CreateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(104), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10JSReceiver19HasProxyInPrototypeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Runtime17GetObjectPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_6ObjectEEESG_Pb(ptr noundef, ptr, ptr, ptr, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64, ptr noundef) local_unnamed_addr #2

declare i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_119IterateElementsSlowEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEjPNS1_18ArrayConcatVisitorE(ptr noundef %0, ptr %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 7 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = icmp eq ptr %0, null
  %i.g = zext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %.split, %_ZN2v88internal11HandleScopeD2Ev.exit
  %.139.lcssa104110 = phi i32 [ %.139.lcssa103, %.split ], [ %.139.lcssa104, %_ZN2v88internal11HandleScopeD2Ev.exit ]
  %.242108109 = phi i1 [ %.242107, %.split ], [ %.242108, %_ZN2v88internal11HandleScopeD2Ev.exit ]
  %i.h = add i32 %.04791, 1024
  br i1 %.242108109, label %._crit_edge, label %bb.c, !llvm.loop !62

bb.c:                                             ; preds = %.lr.ph94, %bb.b
  %.03893 = phi i32 [ 0, %.lr.ph94 ], [ %.139.lcssa104110, %bb.b ] ; 4 uses
  %.04791 = phi i32 [ 1024, %.lr.ph94 ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = load i32, ptr %i.c, align 8
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.c, align 8
  %i.m = icmp uge i32 %.03893, %2                 ; 2 uses
  %i.n = icmp uge i32 %.03893, %.04791
  %or.cond.not75 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.not75, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.o = zext i32 %.03893 to i64
  %i.p = zext i32 %.04791 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %0, ptr %1, ptr null, i64 noundef %indvars.iv, ptr %1, i32 noundef 3)
  %i.q = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %5) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.r = trunc i16 %i.q to i1
  %i.s = trunc nuw i64 %indvars.iv to i32         ; 4 uses
  br i1 %i.r, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %.critedge

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %.lr.ph
  %i.t = and i16 %i.q, 256
  %.not71 = icmp eq i16 %i.t, 0
  br i1 %.not71, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %0, ptr %1, ptr null, i64 noundef %indvars.iv, ptr %1, i32 noundef 3)
  %i.u = load i32, ptr %i.d, align 4
  %.not.i52 = icmp eq i32 %i.u, 0
  br i1 %.not.i52, label %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread, label %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit

_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread: ; preds = %bb.d
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.e

_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit: ; preds = %bb.d
  %i.x = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not72 = icmp eq ptr %i.x, null
  br i1 %.not72, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread
  %.sroa.05.0.i64 = phi ptr [ %i.w, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread ], [ %i.x, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit ]
  %i.y = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor5visitEjNS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.s, ptr nonnull %.sroa.05.0.i64)
  br i1 %i.y, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.z = icmp samesign uge i64 %indvars.iv.next, %i.g ; 2 uses
  %i.aa = icmp samesign uge i64 %indvars.iv.next, %i.p
  %or.cond.not = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.not, label %.critedge.split.loop.exit, label %.lr.ph, !llvm.loop !63

.critedge.split.loop.exit:                        ; preds = %bb.f
  %indvars.le = trunc i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.lr.ph, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit, %.critedge.split.loop.exit
  %.139.lcssa = phi i32 [ %indvars.le, %.critedge.split.loop.exit ], [ %i.s, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit ], [ %i.s, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %or.cond.not.lcssa = phi i1 [ true, %.critedge.split.loop.exit ], [ false, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit ], [ false, %.lr.ph ], [ false, %bb.e ] ; 2 uses
  %.242 = phi i1 [ %i.z, %.critedge.split.loop.exit ], [ true, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit ], [ true, %.lr.ph ], [ true, %bb.e ] ; 2 uses
  br i1 %i.f, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %.critedge.thread, !prof !64

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  %.242107 = phi i1 [ %.242, %.critedge ], [ %i.m, %bb.c ] ; 2 uses
  %or.cond.not.lcssa105 = phi i1 [ %or.cond.not.lcssa, %.critedge ], [ true, %bb.c ] ; 2 uses
  %.139.lcssa103 = phi i32 [ %.139.lcssa, %.critedge ], [ %.03893, %bb.c ] ; 2 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.ab = load i32, ptr %i.c, align 8
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.c, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.ad, %i.j
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %.split, !prof !8

.split:                                           ; preds = %.critedge.thread
  store ptr %i.j, ptr %i.b, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br i1 %or.cond.not.lcssa105, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor21increase_index_offsetEj.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %.critedge.thread, %.critedge
  %.242108 = phi i1 [ %.242, %.critedge ], [ %.242107, %.critedge.thread ]
  %or.cond.not.lcssa106 = phi i1 [ %or.cond.not.lcssa, %.critedge ], [ %or.cond.not.lcssa105, %.critedge.thread ]
  %.139.lcssa104 = phi i32 [ %.139.lcssa, %.critedge ], [ %.139.lcssa103, %.critedge.thread ]
  br i1 %or.cond.not.lcssa106, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor21increase_index_offsetEj.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %storemerge.i = call i32 @llvm.uadd.sat.i32(i32 %i.af, i32 %2) ; 2 uses
  store i32 %storemerge.i, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.val.i = load i32, ptr %i.ag, align 4
  %i.ah = trunc i32 %.val.i to i1
  br i1 %i.ah, label %bb.g, label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor21increase_index_offsetEj.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = icmp ugt i32 %storemerge.i, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor21increase_index_offsetEj.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor17SetDictionaryModeEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor21increase_index_offsetEj.exit

_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor21increase_index_offsetEj.exit: ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %.split, %bb.h, %bb.g, %._crit_edge
  %.04074 = phi i1 [ true, %._crit_edge ], [ true, %bb.h ], [ true, %bb.g ], [ false, %.split ], [ false, %_ZN2v88internal11HandleScopeD2Ev.exit ]
  ret i1 %.04074
}

declare void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIjSaIjEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit:  ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 3 uses
  %i.n = shl nuw nsw i64 %1, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #18 ; 4 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.d, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit, %bb.d
  %.not.i8 = icmp eq ptr %i.d, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #17
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.q, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %1
  store ptr %i.r, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_121CollectElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjPSt6vectorIjSaIjEE(ptr noundef %0, ptr nofree readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.628", align 8 ; 5 uses
  %i.b = load i64, ptr %1, align 8                ; 12 uses
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 14
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i8, ptr %i.g, align 1
  %i.i = lshr i8 %i.h, 2
  switch i8 %i.i, label %.loopexit [
    i8 0, label %bb.b
    i8 2, label %bb.b
    i8 10, label %bb.b
    i8 8, label %bb.b
    i8 6, label %bb.b
    i8 1, label %bb.b
    i8 11, label %bb.b
    i8 9, label %bb.b
    i8 7, label %bb.b
    i8 3, label %bb.b
    i8 5, label %bb.j
    i8 4, label %bb.j
    i8 13, label %bb.t
    i8 18, label %bb.ae
    i8 19, label %bb.ae
    i8 20, label %bb.ae
    i8 21, label %bb.ae
    i8 22, label %bb.ae
    i8 23, label %bb.ae
    i8 24, label %bb.ae
    i8 25, label %bb.ae
    i8 26, label %bb.ae
    i8 27, label %bb.ae
    i8 28, label %bb.ae
    i8 29, label %bb.ae
    i8 30, label %bb.ae
    i8 31, label %bb.ae
    i8 32, label %bb.ae
    i8 33, label %bb.ae
    i8 34, label %bb.ae
    i8 35, label %bb.ae
    i8 36, label %bb.ae
    i8 37, label %bb.ae
    i8 38, label %bb.ae
    i8 39, label %bb.ae
    i8 40, label %bb.ae
    i8 41, label %bb.ae
    i8 14, label %bb.aq
    i8 15, label %bb.aq
    i8 16, label %bb.ay
    i8 17, label %bb.ay
    i8 42, label %bb.bn
    i8 12, label %bb.bo
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.j = add i64 %i.b, 15
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.r) ; 2 uses
  %.not393 = icmp eq i32 %spec.select, 0
  br i1 %.not393, label %.loopexit, label %.lr.ph387

.lr.ph387:                                        ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph387, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %storemerge102385 = phi i32 [ 0, %.lr.ph387 ], [ %i.av, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.w = sext i32 %storemerge102385 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.w
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = load i64, ptr %i.t, align 8
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.ac = load ptr, ptr %i.v, align 8
  %.not.i119 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i119, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %storemerge102385, ptr %i.ab, align 4
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.ae, ptr %i.u, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %3, align 8               ; 4 uses
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ak = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 2305843009213693951)
  %i.ao = select i1 %i.am, i64 2305843009213693951, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store i32 %storemerge102385, ptr %i.ar, align 4
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %i.af, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.not.i17.i.i = icmp eq ptr %i.af, null
end_hunk_0
