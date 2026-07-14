inline.NumInlined: 3691
inline.NumDeleted: 1854
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_PN2v88internal15FunctionLiteralEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E:bb.a
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_PN2v88internal15FunctionLiteralEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_115FunctionDataMap11VisitThreadEPNS0_7IsolateEPNS0_14ThreadLocalTopE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.596", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.596", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 6 uses
  %6 = alloca %"class.std::vector.826", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateEPNS0_14ThreadLocalTopE(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef %1, ptr noundef %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge14, label %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateEPNS0_14ThreadLocalTopE.exit

_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateEPNS0_14ThreadLocalTopE.exit: ; preds = %bb.a
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %5) #17
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.d = icmp eq ptr %.pre, null
  br i1 %i.d, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateEPNS0_14ThreadLocalTopE.exit
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

._crit_edge14:                                    ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EED2Ev.exit, %bb.a, %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateEPNS0_14ThreadLocalTopE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.b:                                             ; preds = %.lr.ph13, %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EED2Ev.exit
  %i.i = phi ptr [ %.pre, %.lr.ph13 ], [ %i.r, %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZNK2v88internal15JavaScriptFrame12GetFunctionsEPSt6vectorINS0_6HandleINS0_18SharedFunctionInfoEEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull %6) #17
  %i.j = load ptr, ptr %6, align 8                ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread
  %.pre15 = load ptr, ptr %6, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.m = phi ptr [ %.pre15, %._crit_edge.loopexit ], [ %i.j, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #20
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %5) #17
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %._crit_edge14, label %bb.b, !llvm.loop !117

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread
  %.sroa.06.012 = phi ptr [ %i.bg, %_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread ], [ %i.j, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.06.012, align 8
  %i.u = load i64, ptr %i.t, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i64 %i.u, ptr %4, align 8
  %i.v = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.w = add i64 %i.u, 39
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x acquire, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = icmp eq i16 %i.ae, 165
  %i.ag = icmp ne i32 %i.v, -1
  %.not7.i = and i1 %i.ag, %i.af
  br i1 %.not7.i, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %i.ah = load atomic volatile i64, ptr %i.x acquire, align 8
  %i.ai = add i64 %i.ah, 63
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %i.u, ptr %3, align 8
  %i.al = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.am = add i64 %i.u, 55
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i32, ptr %i.an monotonic, align 4
  %i.ap = and i32 %i.ao, 134217728
  %.not.i.i = icmp eq i32 %i.ap, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.al, i32 -1 ; 2 uses
  %.sroa.04.0.insert.insert.i.i = lshr i64 %i.ak, 32
  %.sroa.08.0.extract.trunc.i.i = trunc nuw i64 %.sroa.04.0.insert.insert.i.i to i32 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 2 uses
  %.not2.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not2.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.04.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val.i.i.i.i, %bb.d ] ; 4 uses
  %.083.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = icmp eq i32 %i.ar, %.sroa.08.0.extract.trunc.i.i
  %i.at = icmp slt i32 %i.ar, %.sroa.08.0.extract.trunc.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 36
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp slt i32 %i.av, %spec.select.i.i
  %.sroa.05.0.i.i.i.i.i.i.i = select i1 %i.as, i1 %i.aw, i1 %i.at ; 2 uses
  %.19.i.i.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i.i.i, ptr %.083.i.i.i.i.i, ptr %.04.i.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = icmp eq ptr %.19.i.i.i.i.i, %i.g
  br i1 %i.ax, label %_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread, label %_ZNSt3mapISt4pairIiiEN2v88internal12_GLOBAL__N_112FunctionDataESt4lessIS1_ESaIS0_IKS1_S5_EEE4findERS8_.exit.i.i

_ZNSt3mapISt4pairIiiEN2v88internal12_GLOBAL__N_112FunctionDataESt4lessIS1_ESaIS0_IKS1_S5_EEE4findERS8_.exit.i.i: ; preds = %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = icmp eq i32 %i.az, %.sroa.08.0.extract.trunc.i.i
  %i.bb = icmp sgt i32 %i.az, %.sroa.08.0.extract.trunc.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp sgt i32 %i.bd, %spec.select.i.i
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.ba, i1 %i.be, i1 %i.bb
  br i1 %.sroa.05.0.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapISt4pairIiiEN2v88internal12_GLOBAL__N_112FunctionDataESt4lessIS1_ESaIS0_IKS1_S5_EEE4findERS8_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 104
  store i32 2, ptr %i.bf, align 8
  br label %_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread

_ZN2v88internal12_GLOBAL__N_115FunctionDataMap6LookupENS0_6TaggedINS0_18SharedFunctionInfoEEEPPNS1_12FunctionDataE.exit.thread: ; preds = %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i, %bb.d, %_ZNSt3mapISt4pairIiiEN2v88internal12_GLOBAL__N_112FunctionDataESt4lessIS1_ESaIS0_IKS1_S5_EEE4findERS8_.exit.i.i, %.lr.ph, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 8 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.k
  br i1 %i.bh, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_115FunctionDataMapD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_115FunctionDataMapE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8
  tail call fastcc void @_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef %.val.i), !inline_history !53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #20
  ret void
}

declare void @_ZNK2v88internal15JavaScriptFrame12GetFunctionsEPSt6vectorINS0_6HandleINS0_18SharedFunctionInfoEEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateEPNS0_14ThreadLocalTopE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal18HeapObjectIteratorC1EPNS0_4HeapENS1_20HeapObjectsFilteringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) unnamed_addr #2

declare i64 @_ZN2v88internal18HeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal18HeapObjectIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #4

declare void @_ZN2v88internal13ThreadManager22IterateArchivedThreadsEPNS0_13ThreadVisitorE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE17_M_realloc_insertIJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19
  br label %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8
  %i.t = load ptr, ptr %3, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 560 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_ZSt12construct_atIN2v88internal6HandleINS1_10JSFunctionEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit, !prof !5

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_M_allocateEm.exit
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.t) #17
  br label %_ZSt12construct_atIN2v88internal6HandleINS1_10JSFunctionEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit

_ZSt12construct_atIN2v88internal6HandleINS1_10JSFunctionEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit: ; preds = %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_M_allocateEm.exit, %bb.d
  %.0.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.v, %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_M_allocateEm.exit ] ; 3 uses
  %i.aa = ptrtoint ptr %.0.i.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.u, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %.0.i.i.i, align 8
  store ptr %.0.i.i.i, ptr %i.s, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt12construct_atIN2v88internal6HandleINS1_10JSFunctionEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.e                     ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 72
  %i.ah = sub i64 %i.e, %i.r
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.al ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.c, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.am = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep38, align 8, !alias.scope !121, !noalias !118
  %wide.load39 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !121, !noalias !118
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !118, !noalias !121
  store <2 x i64> %wide.load39, ptr %i.an, align 8, !alias.scope !118, !noalias !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.ap = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !121, !noalias !118
  store i64 %i.ap, ptr %.012.i.i.i, align 8, !alias.scope !118, !noalias !121
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !126

_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZSt12construct_atIN2v88internal6HandleINS1_10JSFunctionEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZSt12construct_atIN2v88internal6HandleINS1_10JSFunctionEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit ], [ %i.aj, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i42 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.at = add i64 %i.d, -8
  %i.au = sub i64 %i.at, %i.m                     ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.au, 104
  br i1 %min.iters.check45, label %.lr.ph.i.i.i18.preheader60, label %vector.memcheck41

vector.memcheck41:                                ; preds = %.lr.ph.i.i.i18.preheader
  %i.ax = sub i64 %.0.lcssa.i.i.i42, %i.m
  %i.ay = add i64 %i.ax, 7
  %diff.check43 = icmp ult i64 %i.ay, 31
  br i1 %diff.check43, label %.lr.ph.i.i.i18.preheader60, label %vector.ph46

vector.ph46:                                      ; preds = %vector.memcheck41
  %n.vec48 = and i64 %i.aw, 4611686018427387900   ; 3 uses
  %i.az = shl i64 %n.vec48, 3                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.as, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %i.az
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph46
  %index50 = phi i64 [ 0, %vector.ph46 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.bc = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.as, i64 %i.bc ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.bc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.bd = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !alias.scope !130, !noalias !127
  %wide.load54 = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !130, !noalias !127
  %i.be = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !alias.scope !127, !noalias !130
  store <2 x i64> %wide.load54, ptr %i.be, align 8, !alias.scope !127, !noalias !130
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.bf, label %middle.block56, label %vector.body49, !llvm.loop !132

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.aw, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18.preheader60

.lr.ph.i.i.i18.preheader60:                       ; preds = %vector.memcheck41, %.lr.ph.i.i.i18.preheader, %middle.block56
  %.012.i.i.i19.ph = phi ptr [ %i.as, %vector.memcheck41 ], [ %i.as, %.lr.ph.i.i.i18.preheader ], [ %i.ba, %middle.block56 ]
  %.0911.i.i.i20.ph = phi ptr [ %1, %vector.memcheck41 ], [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.bb, %middle.block56 ]
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader60, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.bi, %.lr.ph.i.i.i18 ], [ %.012.i.i.i19.ph, %.lr.ph.i.i.i18.preheader60 ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.bh, %.lr.ph.i.i.i18 ], [ %.0911.i.i.i20.ph, %.lr.ph.i.i.i18.preheader60 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.bg = load i64, ptr %.0911.i.i.i20, align 8, !alias.scope !130, !noalias !127
  store i64 %i.bg, ptr %.012.i.i.i19, align 8, !alias.scope !127, !noalias !130
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !133

_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %middle.block56, %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.as, %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ba, %middle.block56 ], [ %i.bi, %.lr.ph.i.i.i18 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bm) #20
  br label %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.e
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bn, ptr %i.bj, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE17_M_realloc_insertIJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19
  br label %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8
  %i.t = load ptr, ptr %3, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 560 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_ZSt12construct_atIN2v88internal6HandleINS1_17JSGeneratorObjectEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit, !prof !5

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_M_allocateEm.exit
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.t) #17
  br label %_ZSt12construct_atIN2v88internal6HandleINS1_17JSGeneratorObjectEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit

_ZSt12construct_atIN2v88internal6HandleINS1_17JSGeneratorObjectEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit: ; preds = %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_M_allocateEm.exit, %bb.d
  %.0.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.v, %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_M_allocateEm.exit ] ; 3 uses
  %i.aa = ptrtoint ptr %.0.i.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.u, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %.0.i.i.i, align 8
  store ptr %.0.i.i.i, ptr %i.s, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt12construct_atIN2v88internal6HandleINS1_17JSGeneratorObjectEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.e                     ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 72
  %i.ah = sub i64 %i.e, %i.r
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.al ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.c, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.am = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep38, align 8, !alias.scope !137, !noalias !134
  %wide.load39 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !137, !noalias !134
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !134, !noalias !137
  store <2 x i64> %wide.load39, ptr %i.an, align 8, !alias.scope !134, !noalias !137
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.ap = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !137, !noalias !134
  store i64 %i.ap, ptr %.012.i.i.i, align 8, !alias.scope !134, !noalias !137
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !140

_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZSt12construct_atIN2v88internal6HandleINS1_17JSGeneratorObjectEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZSt12construct_atIN2v88internal6HandleINS1_17JSGeneratorObjectEEEJRNS1_6TaggedIS3_EERPNS1_7IsolateEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit ], [ %i.aj, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i42 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.at = add i64 %i.d, -8
  %i.au = sub i64 %i.at, %i.m                     ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.au, 104
  br i1 %min.iters.check45, label %.lr.ph.i.i.i18.preheader60, label %vector.memcheck41

vector.memcheck41:                                ; preds = %.lr.ph.i.i.i18.preheader
  %i.ax = sub i64 %.0.lcssa.i.i.i42, %i.m
  %i.ay = add i64 %i.ax, 7
  %diff.check43 = icmp ult i64 %i.ay, 31
  br i1 %diff.check43, label %.lr.ph.i.i.i18.preheader60, label %vector.ph46

vector.ph46:                                      ; preds = %vector.memcheck41
  %n.vec48 = and i64 %i.aw, 4611686018427387900   ; 3 uses
  %i.az = shl i64 %n.vec48, 3                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.as, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %i.az
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph46
  %index50 = phi i64 [ 0, %vector.ph46 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.bc = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.as, i64 %i.bc ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.bc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.bd = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !alias.scope !144, !noalias !141
  %wide.load54 = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !144, !noalias !141
  %i.be = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !alias.scope !141, !noalias !144
  store <2 x i64> %wide.load54, ptr %i.be, align 8, !alias.scope !141, !noalias !144
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.bf, label %middle.block56, label %vector.body49, !llvm.loop !146

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.aw, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18.preheader60

.lr.ph.i.i.i18.preheader60:                       ; preds = %vector.memcheck41, %.lr.ph.i.i.i18.preheader, %middle.block56
  %.012.i.i.i19.ph = phi ptr [ %i.as, %vector.memcheck41 ], [ %i.as, %.lr.ph.i.i.i18.preheader ], [ %i.ba, %middle.block56 ]
  %.0911.i.i.i20.ph = phi ptr [ %1, %vector.memcheck41 ], [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.bb, %middle.block56 ]
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader60, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.bi, %.lr.ph.i.i.i18 ], [ %.012.i.i.i19.ph, %.lr.ph.i.i.i18.preheader60 ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.bh, %.lr.ph.i.i.i18 ], [ %.0911.i.i.i20.ph, %.lr.ph.i.i.i18.preheader60 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.bg = load i64, ptr %.0911.i.i.i20, align 8, !alias.scope !144, !noalias !141
  store i64 %i.bg, ptr %.012.i.i.i19, align 8, !alias.scope !141, !noalias !144
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !147

_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %middle.block56, %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.as, %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ba, %middle.block56 ], [ %i.bi, %.lr.ph.i.i.i18 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bm) #20
  br label %_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.e
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bn, ptr %i.bj, align 8
  ret void
}

declare void @_ZN2v88internal23DebugStackTraceIteratorC1EPNS0_7IsolateEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal23DebugStackTraceIterator4DoneEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #2

declare ptr @_ZNK2v88internal23DebugStackTraceIterator21GetSharedFunctionInfoEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal23DebugStackTraceIterator14CanBeRestartedEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #2

declare void @_ZN2v88internal23DebugStackTraceIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal23DebugStackTraceIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #4

declare void @_ZN2v88internal18SharedFunctionInfo36UpdateFromFunctionLiteralForLiveEditENS0_17IsolateForSandboxEPNS0_15FunctionLiteralE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal26SourcePositionTableBuilderC1EPNS0_4ZoneENS1_13RecordingModeE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) unnamed_addr #2

declare void @_ZN2v88internal27SourcePositionTableIteratorC1ENS0_6TaggedINS0_16TrustedByteArrayEEENS1_15IterationFilterENS1_19FunctionEntryFilterE(ptr noundef nonnull align 8 dereferenceable(56), i64, i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, i64, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare ptr @_ZN2v88internal26SourcePositionTableBuilder21ToSourcePositionTableINS0_7IsolateEEENS0_6HandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal12V8FileLogger26CodeLinePosInfoRecordEventEmNS0_6TaggedINS0_16TrustedByteArrayEEENS_12JitCodeEvent8CodeTypeE(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap24NotifyObjectLayoutChangeENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_23InvalidateRecordedSlotsENS0_30InvalidateExternalPointerSlotsEi(ptr noundef nonnull align 8 dereferenceable(2992), i64, ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap22NotifyObjectSizeChangeENS0_6TaggedINS0_10HeapObjectEEEiiNS0_18ClearRecordedSlotsE(ptr noundef nonnull align 8 dereferenceable(2992), i64, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap28NotifyObjectLayoutChangeDoneENS0_6TaggedINS0_10HeapObjectEEE(i64) local_unnamed_addr #2

declare i32 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewJSDispatchHandleEtNS0_12DirectHandleINS0_4CodeEEEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportE(ptr noundef nonnull align 1 dereferenceable(1), i16 noundef zeroext, ptr, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(i64, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef %0) unnamed_addr #0 align 2 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit
  %.02 = phi ptr [ %.0.val6, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val = load ptr, ptr %i.a, align 8
  tail call fastcc void @_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef %.0.val)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val6 = load ptr, ptr %i.b, align 8          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.02, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.02, i64 56
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EED2Ev.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_17JSGeneratorObjectEEESaIS4_EED2Ev.exit.i.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 112) #20
  %.not = icmp eq ptr %.0.val6, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_N2v88internal12_GLOBAL__N_112FunctionDataEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
