Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ManualExecutor?download=true
inline.NumInlined: 683
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E4postEv:bb.a
  %i.aa = cmpxchg ptr %0, i64 %i.a, i64 %.sroa.0.0.i13.i seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit, label %.split.i.backedge

.split.i.backedge:                                ; preds = %_ZNK5folly6detail11LifoSemHead13withValueIncrEj.exit.i, %_ZNK5folly6detail11LifoSemHead7withPopEj.exit.i, %bb.b
  br label %.split.i, !llvm.loop !1560

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9incrOrPopEjb.exit: ; preds = %_ZNK5folly6detail11LifoSemHead7withPopEj.exit.i
  %.not.not = icmp eq i64 %i.j, 0
  br i1 %.not.not, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9incrOrPopEjb.exit
  %i.ac = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit, !prof !1550

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit: ; preds = %bb.j, %bb.k
  %i.ae = phi ptr [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 64, !tbaa !1551
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.j ; 2 uses
  %i.ai = cmpxchg ptr %i.ah, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit
  %i.ak = extractvalue { i32, i1 } %i.ai, 0
  tail call void @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postSlowWaiterMayBlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.ah, i32 noundef %i.ak) #24
  br label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit: ; preds = %_ZNK5folly6detail11LifoSemHead13withValueIncrEj.exit.i, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit, %bb.l, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9incrOrPopEjb.exit
  %.not7 = phi i1 [ true, %bb.l ], [ false, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9incrOrPopEjb.exit ], [ true, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit ], [ false, %_ZNK5folly6detail11LifoSemHead13withValueIncrEj.exit.i ]
  ret i1 %.not7
}

; Function Attrs: uwtable
define void @_ZTv0_n32_N5folly14ManualExecutor3addENS_8FunctionIFvvEEE(ptr noundef %0, ptr noundef align 16 %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 64, !tbaa !30
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN5folly14ManualExecutor3addENS_8FunctionIFvvEEE(ptr noundef nonnull align 64 dereferenceable(304) %i.d, ptr noundef align 16 %1)
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1544 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1544
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1511
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1549
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1547
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1511
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1543
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1539
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1541
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !1532
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !13  ; 4 uses
  store ptr null, ptr %i.ap, align 16, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load <2 x ptr>, ptr %i.ar, align 16, !tbaa !23
  store <2 x ptr> %i.au, ptr %i.aq, align 16, !tbaa !23
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.ar, align 16, !tbaa !24
  store ptr null, ptr %i.at, align 8, !tbaa !26
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE22_M_reserve_map_at_backEm.exit
  %i.aw = tail call noundef i64 %i.av(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.ap) #24, !inline_history !1561 ; 0 uses
  br label %_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE22_M_reserve_map_at_backEm.exit, %bb.e
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !1541
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !1544
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1532 ; 3 uses
  store ptr %i.az, ptr %i.o, align 8, !tbaa !1549
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !1547
  store ptr %i.az, ptr %i.a, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #3 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #13
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !30
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !30
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #26
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1541 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1540 ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1543 ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !1539
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !1559

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !1532
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !1532
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !1559

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !1532
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !1532
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit, !prof !1550

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !1540   ; 3 uses
  %4 = load ptr, ptr %i.a, align 8, !tbaa !1541
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = ptrtoint ptr %i.aw to i64
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = sub i64 %5, %i.ax                       ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !1559

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %3, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %3, align 8, !tbaa !1532
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !1532
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1539
  %6 = load i64, ptr %i.k, align 8, !tbaa !1543
  %i.bd = shl i64 %6, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #25
  store ptr %i.aq, ptr %0, align 8, !tbaa !1539
  store i64 %i.am, ptr %i.k, align 8, !tbaa !1543
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !1544
  %i.be = load ptr, ptr %.0, align 8, !tbaa !1532 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1549
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !1547
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !1544
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1532 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !1549
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !1547
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #2

declare noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS0_14LifoSemRawNodeISt6atomicE8PoolImplEJEEEPvDpT0_() #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull align 64 dereferenceable(2240) ptr @_ZnwmSt11align_val_t(i64 noundef 2240, i64 noundef 64) #27 ; 3 uses
  invoke void @_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEEC2Ej(ptr noundef nonnull align 64 dereferenceable(2184) %i.a, i32 noundef 1048576)
          to label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE8PoolImplC2Ev.exit unwind label %bb.b

_ZN5folly6detail14LifoSemRawNodeISt6atomicE8PoolImplC2Ev.exit: ; preds = %bb.a
  ret ptr %i.a

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %i.a, i64 noundef 64) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEEC2Ej(ptr noundef nonnull align 64 dereferenceable(2184) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @llvm.umin.i32(i32 %1, i32 -6202)
  %narrow.i = add nuw i32 %i.b, 6200
  store i32 %narrow.i, ptr %i.a, align 8, !tbaa !1562
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !1563
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %.ptr, align 64, !tbaa !1564
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %.ptr.1, align 64, !tbaa !1564
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %.ptr.2, align 64, !tbaa !1564
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %.ptr.3, align 64, !tbaa !1564
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 0, ptr %.ptr.4, align 64, !tbaa !1564
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 0, ptr %.ptr.5, align 64, !tbaa !1564
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %.ptr.6, align 64, !tbaa !1564
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 0, ptr %.ptr.7, align 64, !tbaa !1564
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i64 0, ptr %.ptr.8, align 64, !tbaa !1564
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 0, ptr %.ptr.9, align 64, !tbaa !1564
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i64 0, ptr %.ptr.10, align 64, !tbaa !1564
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 0, ptr %.ptr.11, align 64, !tbaa !1564
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i64 0, ptr %.ptr.12, align 64, !tbaa !1564
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 0, ptr %.ptr.13, align 64, !tbaa !1564
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i64 0, ptr %.ptr.14, align 64, !tbaa !1564
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 0, ptr %.ptr.15, align 64, !tbaa !1564
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i64 0, ptr %.ptr.16, align 64, !tbaa !1564
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store i64 0, ptr %.ptr.17, align 64, !tbaa !1564
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i64 0, ptr %.ptr.18, align 64, !tbaa !1564
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 0, ptr %.ptr.19, align 64, !tbaa !1564
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i64 0, ptr %.ptr.20, align 64, !tbaa !1564
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %0, i64 1472
  store i64 0, ptr %.ptr.21, align 64, !tbaa !1564
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %0, i64 1536
  store i64 0, ptr %.ptr.22, align 64, !tbaa !1564
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i64 0, ptr %.ptr.23, align 64, !tbaa !1564
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store i64 0, ptr %.ptr.24, align 64, !tbaa !1564
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %0, i64 1728
  store i64 0, ptr %.ptr.25, align 64, !tbaa !1564
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %0, i64 1792
  store i64 0, ptr %.ptr.26, align 64, !tbaa !1564
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i64 0, ptr %.ptr.27, align 64, !tbaa !1564
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %0, i64 1920
  store i64 0, ptr %.ptr.28, align 64, !tbaa !1564
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store i64 0, ptr %.ptr.29, align 64, !tbaa !1564
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  store i64 0, ptr %.ptr.30, align 64, !tbaa !1564
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %0, i64 2112
  store i64 0, ptr %.ptr.31, align 64, !tbaa !1564
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2176
  store i64 0, ptr %i.d, align 64, !tbaa !1564
  %i.e = tail call i32 @llvm.uadd.sat.i32(i32 %1, i32 6201)
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 24
  %i.h = tail call i64 @sysconf(i32 noundef 30) #24 ; 2 uses
  %i.i = add nsw i64 %i.g, -1
  %i.j = sub i64 0, %i.h
  %i.k = and i64 %i.i, %i.j
  %i.l = add i64 %i.k, %i.h                       ; 2 uses
  store i64 %i.l, ptr %0, align 64, !tbaa !1565
  %i.m = tail call ptr @mmap(ptr noundef null, i64 noundef %i.l, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.m, ptr %i.n, align 64, !tbaa !1551
  %i.o = icmp eq ptr %i.m, inttoptr (i64 -1 to ptr)
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !30
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postSlowWaiterMayBlockEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 2 uses
  %i.a = icmp eq i32 %.0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.b = cmpxchg ptr %0, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit1

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit1: ; preds = %bb.b
  %i.d = extractvalue { i32, i1 } %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit1, %.backedge
  %.1 = phi i32 [ %i.d, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit1 ], [ %.0, %.backedge ] ; 2 uses
  %i.e = icmp eq i32 %.1, 1
end_hunk_0
