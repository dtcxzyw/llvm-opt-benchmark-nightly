Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/HazptrDomain?download=true
inline.NumInlined: 186
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly6detail26hazptr_inline_executor_addENS_8FunctionIFvvEEE:bb.a
  %i.bi = call noundef i64 %i.be(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.ba, ptr noundef null) #19, !inline_history !46 ; 0 uses
  br label %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_pop_front_auxEv.exit.i.i

_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_pop_front_auxEv.exit.i.i: ; preds = %bb.r, %bb.q
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !47
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef 512) #22
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.ar, align 8, !tbaa !49
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50 ; 3 uses
  store ptr %i.bm, ptr %i.aq, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 512
  store ptr %i.bn, ptr %i.ap, align 8, !tbaa !52
  br label %_ZNSt5queueIN5folly8FunctionIFvvEEESt5dequeIS3_SaIS3_EEE3popEv.exit

_ZNSt5queueIN5folly8FunctionIFvvEEESt5dequeIS3_SaIS3_EEE3popEv.exit: ; preds = %_ZSt10destroy_atIN5folly8FunctionIFvvEEEEvPT_.exit.i.i, %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_pop_front_auxEv.exit.i.i
  %storemerge.i.i = phi ptr [ %i.bh, %_ZSt10destroy_atIN5folly8FunctionIFvvEEEEvPT_.exit.i.i ], [ %i.bm, %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_pop_front_auxEv.exit.i.i ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.al, align 8, !tbaa !43
  %i.bo = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.bp = icmp eq ptr %i.bo, %storemerge.i.i
  br i1 %i.bp, label %"_ZN5folly6detail14ScopeGuardImplIZNS0_26hazptr_inline_executor_addENS_8FunctionIFvvEEEE3$_0Lb1EED2Ev.exit", label %bb.l, !llvm.loop !53

"_ZN5folly6detail14ScopeGuardImplIZNS0_26hazptr_inline_executor_addENS_8FunctionIFvvEEEE3$_0Lb1EED2Ev.exit": ; preds = %_ZNSt5queueIN5folly8FunctionIFvvEEESt5dequeIS3_SaIS3_EEE3popEv.exit, %_ZN5folly8FunctionIFvvEED2Ev.exit3
  store ptr null, ptr %i.a, align 8, !tbaa !12
  call void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZNSt5queueIN5folly8FunctionIFvvEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

_ZNSt5queueIN5folly8FunctionIFvvEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %bb.e, %_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i, %"_ZN5folly6detail14ScopeGuardImplIZNS0_26hazptr_inline_executor_addENS_8FunctionIFvvEEEE3$_0Lb1EED2Ev.exit"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55
  %i.ag = load ptr, ptr %0, align 8, !tbaa !56
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
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !50
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  store ptr null, ptr %i.ap, align 16, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load <2 x ptr>, ptr %i.ar, align 16, !tbaa !24
  store <2 x ptr> %i.au, ptr %i.aq, align 16, !tbaa !24
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.ar, align 16, !tbaa !25
  store ptr null, ptr %i.at, align 8, !tbaa !27
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE22_M_reserve_map_at_backEm.exit
  %i.aw = tail call noundef i64 %i.av(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.ap) #19, !inline_history !58 ; 0 uses
  br label %_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE22_M_reserve_map_at_backEm.exit, %bb.e
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !49
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !50 ; 3 uses
  store ptr %i.az, ptr %i.o, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !52
  store ptr %i.az, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #8
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !59
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #23
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !56
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
  br i1 %i.y, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !50
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !61

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
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !50
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !50
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !48     ; 3 uses
  %4 = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = ptrtoint ptr %i.aw to i64
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = sub i64 %5, %i.ax                       ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !61

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %3, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %3, align 8, !tbaa !50
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !50
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !56
  %6 = load i64, ptr %i.k, align 8, !tbaa !55
  %i.bd = shl i64 %6, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #22
  store ptr %i.aq, ptr %0, align 8, !tbaa !56
  store i64 %i.am, ptr %i.k, align 8, !tbaa !55
  br label %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5folly8FunctionIFvvEEES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !49
  %i.be = load ptr, ptr %.0, align 8, !tbaa !50   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !49
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !51
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !52
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !55
  %i.d = icmp ugt i64 %1, 9223372036854775783
  br i1 %i.d, label %bb.b, label %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, -25
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.g = shl nuw nsw i64 %.sroa.speculated, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !56
  %2 = load i64, ptr %i.c, align 8, !tbaa !55
  %i.i = sub i64 %2, %i.f
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j ; 6 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.n, %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_allocate_nodeEv.exit.i ], [ %i.k, %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24
          to label %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_allocate_nodeEv.exit.i unwind label %bb.e

_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %.011.i, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_create_nodesEPPS3_S7_.exit, !llvm.loop !62

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #19 ; 0 uses
  %i.s = icmp ult ptr %i.k, %.011.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i, align 8, !tbaa !50
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 512) #22
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %.011.i
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i, !llvm.loop !63

_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #21
  unreachable

bb.h:                                             ; preds = %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  unreachable

.body:                                            ; preds = %bb.f
  %i.z = extractvalue { ptr, i32 } %i.w, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #19 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !56
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !55
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ae

_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE15_M_create_nodesEPPS3_S7_.exit: ; preds = %_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE16_M_allocate_nodeEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !49
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !50  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.am, ptr %i.an, align 8, !tbaa !49
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !50 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !52
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !43
  %i.as = and i64 %1, 7
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %i.as
  store ptr %i.at, ptr %i.al, align 8, !tbaa !15
  ret void

bb.k:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #21
  unreachable

bb.l:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define internal fastcc void @"_ZN5folly11invoke_coldIRZNS_6detail26hazptr_inline_executor_addENS_8FunctionIFvvEEEE3$_1JES5_TnNSt9enable_ifIXntsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_"() unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %1 = alloca %"class.folly::basic_fbstring", align 8 ; 8 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.2, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #19
  invoke void @_ZN5folly12exceptionStrERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.folly::basic_fbstring") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.c = load ptr, ptr %1, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 23 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !23    ; 3 uses
  %i.f = icmp ult i8 %i.e, 64
  %i.g = select i1 %i.f, ptr %1, ptr %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23
  %i.j = zext i8 %i.e to i64
  %i.k = sub nsw i64 23, %i.j
  %i.l = icmp ult i8 %i.e, 24
  %i.m = select i1 %i.l, i64 %i.k, i64 %i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.g, i64 noundef %i.m)
          to label %_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_.exit.i unwind label %bb.g ; 0 uses

_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_.exit.i: ; preds = %bb.d
  %i.o = load i8, ptr %i.d, align 1, !tbaa !23
  %i.p = icmp ult i8 %i.o, 64
  br i1 %i.p, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_.exit.i
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i: ; preds = %bb.e, %_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_.exit.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !64
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %"_ZZN5folly6detail26hazptr_inline_executor_addENS_8FunctionIFvvEEEENK3$_1clEv.exit", label %bb.f

bb.f:                                             ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %"_ZZN5folly6detail26hazptr_inline_executor_addENS_8FunctionIFvvEEEENK3$_1clEv.exit"

bb.g:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.c, %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21
  unreachable

"_ZZN5folly6detail26hazptr_inline_executor_addENS_8FunctionIFvvEEEENK3$_1clEv.exit": ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void
}

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #13

declare void @_ZN5folly12exceptionStrERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind writable sret(%"class.folly::basic_fbstring") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13
end_hunk_0
