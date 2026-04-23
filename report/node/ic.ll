inline.NumInlined: 5609
inline.NumDeleted: 1806
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_133MayHaveTypedArrayInPrototypeChainEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit
  %.sroa.6.038 = phi i64 [ %i.l, %.lr.ph ], [ %2, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ]
  %i.q = add i64 %.sroa.6.038, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_133MayHaveTypedArrayInPrototypeChainEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE:bb.a
  br i1 %i.ag, label %.thread, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit: ; preds = %bb.d
  %i.ah = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.ai = add i64 %i.ah, 23
  %i.aj = inttoptr i64 %i.ai to ptr
  %2 = load i64, ptr %i.aj, align 8               ; 2 uses
  %i.ak = load i64, ptr %i.p, align 8
  %i.al = icmp eq i64 %2, %i.ak
  br i1 %i.al, label %.thread, label %bb.b, !llvm.loop !53

.thread:                                          ; preds = %bb.d, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit, %bb.b, %bb.c, %bb.a, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal36Runtime_StorePropertyWithInterceptorEiPmPNS0_7IsolateE:bb.a
  %3 = alloca %"class.v8::internal::PropertyCallbackArguments", align 8 ; 14 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
end_hunk_2
begin_hunk_3_@_ZN2v88internal36Runtime_StorePropertyWithInterceptorEiPmPNS0_7IsolateE:bb.a
  br i1 %.not132, label %.critedge.i, label %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit..critedge3.i_crit_edge

_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit..critedge3.i_crit_edge: ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit
  %.pre137 = add i64 %.pre135.a, -1
  %.pre138 = inttoptr i64 %.pre137 to ptr
  br label %.critedge3.i

.critedge3.i:                                     ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit..critedge3.i_crit_edge, %bb.d
  %.pre-phi139 = phi ptr [ %.pre138, %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit..critedge3.i_crit_edge ], [ %i.o, %bb.d ]
  %5 = load atomic volatile i64, ptr %.pre-phi139 monotonic, align 8
  %6 = add i64 %5, 23
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8                  ; 2 uses
  %9 = load ptr, ptr %i.a, align 8                ; 2 uses
  %10 = load ptr, ptr %i.c, align 8
  %i.ce = icmp eq ptr %9, %10
  br i1 %i.ce, label %bb.j, label %_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.j:                                             ; preds = %.critedge3.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal36Runtime_StorePropertyWithInterceptorEiPmPNS0_7IsolateE:bb.a
  br label %_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.critedge3.i, %bb.j
  %.0.i.i.i = phi ptr [ %i.cf, %bb.j ], [ %9, %.critedge3.i ] ; 2 uses
  %i.cg = ptrtoint ptr %.0.i.i.i to i64
  %i.ch = add i64 %i.cg, 8
  %i.ci = inttoptr i64 %i.ch to ptr
  store ptr %i.ci, ptr %i.a, align 8
  store i64 %8, ptr %.0.i.i.i, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cj = phi i64 [ %8, %_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.m, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ], [ %.pre135.a, %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit ]
  %i.ck = add i64 %i.cj, -1
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load atomic volatile i64, ptr %i.cl monotonic, align 8 ; 2 uses
end_hunk_4
