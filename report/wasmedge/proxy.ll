Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/proxy?download=true
inline.NumInlined: 2418
inline.NumDeleted: 1116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8WasmEdge8Executor8Executor11ProxyHelperIMS1_DoFN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime12StackManagerEjmmEE5proxyIXadL_ZNS1_20proxyMemAtomicNotifyES9_jmmEEEEDajmm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor4ThisE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor12CurrentStackE)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef %0)
          to label %_ZN8WasmEdge8Executor8Executor20proxyMemAtomicNotifyERNS_7Runtime12StackManagerEjmm.exit unwind label %bb.b, !noalias !338 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29, !noalias !338
  unreachable

_ZN8WasmEdge8Executor8Executor20proxyMemAtomicNotifyERNS_7Runtime12StackManagerEjmm.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @_ZN8WasmEdge8Executor8Executor12atomicNotifyERNS_7Runtime8Instance14MemoryInstanceEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.318") align 8 %3, ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 noundef %1, i64 noundef %2) #27
  %i.h = load i8, ptr %3, align 8, !tbaa !77, !range !38, !noundef !39
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN8WasmEdge8Executor8Executor20proxyMemAtomicNotifyERNS_7Runtime12StackManagerEjmm.exit
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  store i32 %i.k, ptr %4, align 4, !tbaa !26
  call void @_ZN8WasmEdge5Fault9emitFaultENS_7ErrCodeE(ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4) #30
  unreachable

bb.d:                                             ; preds = %_ZN8WasmEdge8Executor8Executor20proxyMemAtomicNotifyERNS_7Runtime12StackManagerEjmm.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i64 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN8WasmEdge8Executor8Executor11ProxyHelperIMS1_DoFN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime12StackManagerEjmmljEE5proxyIXadL_ZNS1_18proxyMemAtomicWaitES9_jmmljEEEEDajmmlj(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cxx20::expected.318", align 8 ; 6 uses
  %6 = alloca %"class.WasmEdge::ErrCode", align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor4ThisE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor12CurrentStackE)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef %0)
          to label %bb.b unwind label %bb.e, !noalias !341 ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = icmp eq i32 %4, 64
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN8WasmEdge8Executor8Executor10atomicWaitImEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.318") align 8 %5, ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 noundef %1, i64 %2, i64 noundef %3) #27
  br label %_ZN8WasmEdge8Executor8Executor18proxyMemAtomicWaitERNS_7Runtime12StackManagerEjmmlj.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %4, 32
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc i64 %2 to i32
  call void @_ZN8WasmEdge8Executor8Executor10atomicWaitIjEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.318") align 8 %5, ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 noundef %1, i32 %i.h, i64 noundef %3) #27
  br label %_ZN8WasmEdge8Executor8Executor18proxyMemAtomicWaitERNS_7Runtime12StackManagerEjmmlj.exit

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29, !noalias !341
  unreachable

_ZN8WasmEdge8Executor8Executor18proxyMemAtomicWaitERNS_7Runtime12StackManagerEjmmlj.exit: ; preds = %bb.c, %bb.d
  %i.k = load i8, ptr %5, align 8, !tbaa !77, !range !38, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8WasmEdge8Executor8Executor18proxyMemAtomicWaitERNS_7Runtime12StackManagerEjmmlj.exit
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26
  store i32 %i.n, ptr %6, align 4, !tbaa !26
  call void @_ZN8WasmEdge5Fault9emitFaultENS_7ErrCodeE(ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6) #30
  unreachable

bb.g:                                             ; preds = %_ZN8WasmEdge8Executor8Executor18proxyMemAtomicWaitERNS_7Runtime12StackManagerEjmmlj.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i64 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN8WasmEdge8Executor8Executor11ProxyHelperIMS1_DoFN5cxx208expectedIPvNS_7ErrCodeEEERNS_7Runtime12StackManagerEjjjEE5proxyIXadL_ZNS1_23proxyTableGetFuncSymbolESA_jjjEEEEDajjj(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cxx20::expected.371", align 8 ; 5 uses
  %4 = alloca %"class.WasmEdge::ErrCode", align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor4ThisE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor12CurrentStackE)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  call void @_ZN8WasmEdge8Executor8Executor23proxyTableGetFuncSymbolERNS_7Runtime12StackManagerEjjj(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.371") align 8 %3, ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef %0, i32 noundef %1, i32 noundef %2) #27
  %i.e = load i8, ptr %3, align 8, !tbaa !89, !range !38, !noundef !39
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.h, ptr %4, align 4, !tbaa !26
  call void @_ZN8WasmEdge5Fault9emitFaultENS_7ErrCodeE(ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !342
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN8WasmEdge8Executor8Executor11ProxyHelperIMS1_DoFN5cxx208expectedIPvNS_7ErrCodeEEERNS_7Runtime12StackManagerENS_10RefVariantEEE5proxyIXadL_ZNS1_21proxyRefGetFuncSymbolESA_SB_EEEEDaSB_(<2 x i64> %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.8.vec.extract.extract.i = extractelement <2 x i64> %0, i64 1
  %i.a = inttoptr i64 %.sroa.0.8.vec.extract.extract.i to ptr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load i8, ptr %i.b, align 8, !tbaa !91, !noalias !345
  %.not.i = icmp eq i8 %i.c, 1
  br i1 %.not.i, label %bb.b, label %_ZN8WasmEdge8Executor8Executor21proxyRefGetFuncSymbolERNS_7Runtime12StackManagerENS_10RefVariantE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98, !noalias !345
  br label %_ZN8WasmEdge8Executor8Executor21proxyRefGetFuncSymbolERNS_7Runtime12StackManagerENS_10RefVariantE.exit

_ZN8WasmEdge8Executor8Executor21proxyRefGetFuncSymbolERNS_7Runtime12StackManagerENS_10RefVariantE.exit: ; preds = %bb.b, %bb.a
  %.sink.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sink.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor9proxyTrapERNS_7Runtime12StackManagerEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) initializes((0, 1), (4, 8)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor9proxyCallERNS_7Runtime12StackManagerEjPKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSH_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cxx20::expected.54", align 8 ; 5 uses
  %7 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %i.a = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor16getFuncInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
          to label %bb.b unwind label %.loopexit.split-lp ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107, !nonnull !39, !align !108 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = lshr i64 %i.p, 3                         ; 5 uses
  %i.r = and i64 %i.i, 34359738360
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.s = lshr exact i64 %i.i, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.s, 4294967295
  %.pre.a = load ptr, ptr %i.t, align 8, !tbaa !53
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.w = load i8, ptr %i.v, align 8, !tbaa !91
  %i.x = icmp eq i8 %i.w, 0                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 5
  %.sroa.0.0.i = select i1 %i.x, ptr %i.z, ptr null
  %.sroa.4.0.i = select i1 %i.x, i64 %i.af, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %.sroa.4.0.i ; 2 uses
  invoke void @_ZN8WasmEdge8Executor8Executor13enterFunctionERNS_7Runtime12StackManagerERKNS2_8Instance16FunctionInstanceEPKNS_3AST11InstructionEb(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.54") align 8 %6, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %i.ag, i1 noundef zeroext false)
          to label %bb.h unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit
  %i.ah = phi ptr [ %.pre.a, %.lr.ph ], [ %i.bb, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 2 uses
  %8 = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %9 = load ptr, ptr %i.u, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.ah, %9
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !47
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !53
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %2, align 8, !tbaa !54    ; 5 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775792
  br i1 %i.ao, label %bb.f, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.195) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ap = ashr exact i64 %i.an, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #31
          to label %.noexc27 unwind label %.loopexit ; 5 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !47
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ah
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %.noexc27 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !47, !alias.scope !351
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc27 ], [ %i.ay, %.lr.ph.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #28
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  store ptr %i.av, ptr %2, align 8, !tbaa !54
  store ptr %i.az, ptr %i.t, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at
  store ptr %i.ba, ptr %i.u, align 8, !tbaa !113
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, %bb.d
  %i.bb = phi ptr [ %i.az, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %i.aj, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !349

bb.h:                                             ; preds = %._crit_edge
  %i.bc = load i8, ptr %6, align 8, !tbaa !116, !range !38, !noundef !39
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !26
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN8WasmEdge8Executor8Executor7executeERNS_7Runtime12StackManagerEPKNS_3AST11InstructionES8_(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %7, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.bh, ptr noundef %i.ag)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.bi = load i8, ptr %7, align 4, !tbaa !37, !range !38, !noundef !39
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.n

.critedge:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.bn = and i64 %i.p, 34359738360
  %.not37 = icmp eq i64 %i.bn, 0
  br i1 %.not37, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %.critedge
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.bp = and i64 %i.p, 34359738360
  %i.bq = icmp eq i64 %i.bp, 8
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph35.new

.lr.ph35.new:                                     ; preds = %.lr.ph35
  %unroll_iter = and i64 %i.q, 4294967294
  br label %bb.m

._crit_edge36.loopexit.unr-lcssa:                 ; preds = %bb.m
  %i.br = and i64 %i.p, 8
  %lcmp.mod.not = icmp eq i64 %i.br, 0
  br i1 %lcmp.mod.not, label %._crit_edge36, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge36.loopexit.unr-lcssa, %.lr.ph35
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next40.1, %._crit_edge36.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.q to i1
  call void @llvm.assume(i1 %lcmp.mod48)
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.epil = load i128, ptr %i.bt, align 16, !tbaa !26
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !53
  %i.bu = xor i64 %indvars.iv39.epil.init, -1
  %i.bv = add nsw i64 %i.q, %i.bu
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bw
  store i128 %.sroa.0.0.copyload.i.epil, ptr %i.bx, align 16, !tbaa !26
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %.epil.preheader, %._crit_edge36.loopexit.unr-lcssa, %.critedge
  store i64 1, ptr %0, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph35.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph35.new ], [ %indvars.iv.next40.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph35.new ], [ %niter.next.1, %bb.m ]
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.bz, align 16, !tbaa !26
  store ptr %i.bz, ptr %i.bo, align 8, !tbaa !53
  %i.ca = xor i64 %indvars.iv39, -1
  %i.cb = add nsw i64 %i.q, %i.ca
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.cc
  store i128 %.sroa.0.0.copyload.i, ptr %i.cd, align 16, !tbaa !26
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i128, ptr %i.cf, align 16, !tbaa !26
  store ptr %i.cf, ptr %i.bo, align 8, !tbaa !53
  %i.cg = xor i64 %indvars.iv39, 4294967294
  %i.ch = add nuw i64 %i.q, %i.cg
  %i.ci = and i64 %i.ch, 4294967295
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ci
  store i128 %.sroa.0.0.copyload.i.1, ptr %i.cj, align 16, !tbaa !26
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge36.loopexit.unr-lcssa, label %bb.m, !llvm.loop !350

bb.n:                                             ; preds = %bb.l, %._crit_edge36, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.a, %._crit_edge, %bb.j, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ck = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ck) #29
  unreachable
}

declare noundef ptr @_ZNK8WasmEdge8Executor8Executor16getFuncInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

declare void @_ZN8WasmEdge8Executor8Executor13enterFunctionERNS_7Runtime12StackManagerERKNS2_8Instance16FunctionInstanceEPKNS_3AST11InstructionEb(ptr dead_on_unwind writable sret(%"class.cxx20::expected.54") align 8, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZN8WasmEdge8Executor8Executor7executeERNS_7Runtime12StackManagerEPKNS_3AST11InstructionES8_(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor17proxyCallIndirectERNS_7Runtime12StackManagerEjjjPKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSH_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cxx20::expected.72", align 16 ; 4 uses
  %9 = alloca %"class.cxx20::expected.54", align 8 ; 5 uses
  %10 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %i.a = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor15getTabInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
          to label %bb.b unwind label %.loopexit.split-lp ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = zext i32 %5 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81
  %.not72 = icmp ugt i64 %i.d, %i.b
  br i1 %.not72, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1036, ptr %i.e, align 4, !tbaa !26
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZNK8WasmEdge7Runtime8Instance13TableInstance10getRefAddrEm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.72") align 16 %8, ptr noundef nonnull align 16 dereferenceable(80) %i.a, i64 noundef %i.b) #27
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1035, ptr %i.i, align 4, !tbaa !26
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  br label %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit

_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.p, %bb.g ], [ null, %bb.f ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit
  %i.r = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #27, !noalias !359
  switch i32 %i.r, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i [
    i32 11, label %bb.h
    i32 35, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #30
          to label %.noexc.i unwind label %bb.k, !noalias !359

.noexc.i:                                         ; preds = %bb.i
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i: ; preds = %bb.h
  %i.s = zext i32 %4 to i64                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 152 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69, !noalias !359
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !68, !noalias !359 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %.not.i = icmp ugt i64 %i.aa, %i.s
  br i1 %.not.i, label %bb.j, label %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit

bb.j:                                             ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.s
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !120, !noalias !359
  br label %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #29, !noalias !359
  unreachable

_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i, %bb.j
  %.sroa.369.0 = phi ptr [ %i.ac, %bb.j ], [ inttoptr (i64 1025 to ptr), %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i ] ; 2 uses
  %i.af = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #27, !noalias !359 ; 0 uses
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !78
  %i.ah = inttoptr i64 %i.ag to ptr               ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42 ; 3 uses
  %.not = icmp eq ptr %i.ai, null
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !68  ; 3 uses
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  br i1 %.not, label %bb.l, label %.split

.split:                                           ; preds = %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.369.0, i64 132
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 4
  %.sroa.067.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !121
  %i.ba = call noundef zeroext i1 @_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEEjS8_j(ptr %i.aj, i64 %i.ao, i32 noundef %.sroa.067.0.extract.trunc, ptr %i.ar, i64 %i.ax, i32 noundef %i.az) #27
  br i1 %i.ba, label %bb.n, label %bb.m

bb.l:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.369.0, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !123
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = call noundef zeroext i1 @_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS0_13CompositeTypeESB_(ptr %i.aj, i64 %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, ptr noundef nonnull align 8 dereferenceable(88) %i.be) #27
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split, %bb.l
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1037, ptr %i.bg, align 4, !tbaa !26
  br label %bb.aa

bb.n:                                             ; preds = %.split, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !107, !nonnull !39, !align !108 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !111
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !112
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !111
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !112
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = lshr i64 %i.bv, 3                       ; 5 uses
  %i.bx = and i64 %i.bo, 34359738360
  %.not77 = icmp eq i64 %i.bx, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.by = lshr exact i64 %i.bo, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.by, 4294967295
  %.pre.a = load ptr, ptr %i.bz, align 8, !tbaa !53
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !91
  %i.cd = icmp eq i8 %i.cc, 0                     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 5
  %.sroa.0.0.i = select i1 %i.cd, ptr %i.cf, ptr null
  %.sroa.4.0.i = select i1 %i.cd, i64 %i.cl, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %.sroa.4.0.i ; 2 uses
  invoke void @_ZN8WasmEdge8Executor8Executor13enterFunctionERNS_7Runtime12StackManagerERKNS2_8Instance16FunctionInstanceEPKNS_3AST11InstructionEb(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.54") align 8 %9, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef %i.cm, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit
  %i.cn = phi ptr [ %.pre.a, %.lr.ph ], [ %i.dh, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 2 uses
  %11 = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %12 = load ptr, ptr %i.ca, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.cn, %12
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cn, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !47
  %i.co = load ptr, ptr %i.bz, align 8, !tbaa !53
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  store ptr %i.cp, ptr %i.bz, align 8, !tbaa !53
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

bb.q:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %2, align 8, !tbaa !54    ; 5 uses
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 4 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775792
  br i1 %i.cu, label %bb.r, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.195) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.cv = ashr exact i64 %i.ct, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 576460752303423487)
  %i.cz = select i1 %i.cx, i64 576460752303423487, i64 %i.cy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #31
          to label %.noexc59 unwind label %.loopexit ; 5 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dc, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !47
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.cn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc59, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i ], [ %i.db, %.noexc59 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %i.cq, %.noexc59 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !47, !alias.scope !360
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc59
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.db, %.noexc59 ], [ %i.de, %.lr.ph.i.i.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ct) #28
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  store ptr %i.db, ptr %2, align 8, !tbaa !54
  store ptr %i.df, ptr %i.bz, align 8, !tbaa !53
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dg, ptr %i.ca, align 8, !tbaa !113
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, %bb.p
  %i.dh = phi ptr [ %i.df, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %i.cp, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !357

bb.t:                                             ; preds = %._crit_edge
  %i.di = load i8, ptr %9, align 8, !tbaa !116, !range !38, !noundef !39
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br i1 %i.dj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !26
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN8WasmEdge8Executor8Executor7executeERNS_7Runtime12StackManagerEPKNS_3AST11InstructionES8_(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %10, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.dn, ptr noundef %i.cm)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.do = load i8, ptr %10, align 4, !tbaa !37, !range !38, !noundef !39
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.z

.critedge:                                        ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.dt = and i64 %i.bv, 34359738360
  %.not78 = icmp eq i64 %i.dt, 0
  br i1 %.not78, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %.critedge
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.dv = and i64 %i.bv, 34359738360
  %i.dw = icmp eq i64 %i.dv, 8
  br i1 %i.dw, label %.epil.preheader, label %.lr.ph75.new

.lr.ph75.new:                                     ; preds = %.lr.ph75
  %unroll_iter = and i64 %i.bw, 4294967294
  br label %bb.y

._crit_edge76.loopexit.unr-lcssa:                 ; preds = %bb.y
  %i.dx = and i64 %i.bv, 8
  %lcmp.mod.not = icmp eq i64 %i.dx, 0
  br i1 %lcmp.mod.not, label %._crit_edge76, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge76.loopexit.unr-lcssa, %.lr.ph75
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next81.1, %._crit_edge76.loopexit.unr-lcssa ]
  %lcmp.mod93 = trunc i64 %i.bw to i1
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !118
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i61.epil = load i128, ptr %i.dz, align 16, !tbaa !26
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !53
  %i.ea = xor i64 %indvars.iv80.epil.init, -1
  %i.eb = add nsw i64 %i.bw, %i.ea
  %i.ec = and i64 %i.eb, 4294967295
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.ec
  store i128 %.sroa.0.0.copyload.i61.epil, ptr %i.ed, align 16, !tbaa !26
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %.epil.preheader, %._crit_edge76.loopexit.unr-lcssa, %.critedge
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph75.new
  %indvars.iv80 = phi i64 [ 0, %.lr.ph75.new ], [ %indvars.iv.next81.1, %bb.y ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph75.new ], [ %niter.next.1, %bb.y ]
  %i.ee = load ptr, ptr %i.du, align 8, !tbaa !118
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i61 = load i128, ptr %i.ef, align 16, !tbaa !26
  store ptr %i.ef, ptr %i.du, align 8, !tbaa !53
  %i.eg = xor i64 %indvars.iv80, -1
  %i.eh = add nsw i64 %i.bw, %i.eg
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.ei
  store i128 %.sroa.0.0.copyload.i61, ptr %i.ej, align 16, !tbaa !26
  %i.ek = load ptr, ptr %i.du, align 8, !tbaa !118
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i61.1 = load i128, ptr %i.el, align 16, !tbaa !26
  store ptr %i.el, ptr %i.du, align 8, !tbaa !53
  %i.em = xor i64 %indvars.iv80, 4294967294
  %i.en = add nuw i64 %i.bw, %i.em
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.eo
  store i128 %.sroa.0.0.copyload.i61.1, ptr %i.ep, align 16, !tbaa !26
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge76.loopexit.unr-lcssa, label %bb.y, !llvm.loop !358

bb.z:                                             ; preds = %bb.x, %._crit_edge76, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %bb.z, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.c
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.a, %._crit_edge, %bb.v, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eq = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.eq) #29
  unreachable
}

declare noundef ptr @_ZNK8WasmEdge8Executor8Executor15getTabInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge7Runtime8Instance13TableInstance10getRefAddrEm(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.72") align 16 %0, ptr noundef nonnull align 16 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.WasmEdge::ErrInfo::InfoBoundary", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = load ptr, ptr %i.b, align 16, !tbaa !72  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %.not = icmp ult i64 %2, %i.i
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 1031, ptr %i.a, align 4, !tbaa !125
  %i.j = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.5, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 16, !tbaa !81
  store i8 0, ptr %5, align 8, !tbaa !127
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !128
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %i.n, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.l, ptr %i.o, align 8, !tbaa !130
  %i.p = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.5, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store i8 0, ptr %0, align 16, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1031, ptr %i.q, align 16, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %2
  store i8 1, ptr %0, align 16, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !47
  br label %bb.f
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS0_13CompositeTypeESB_:bb.a

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit [
    i8 96, label %bb.c
    i8 95, label %bb.e
    i8 94, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %.not.i = icmp eq i64 %i.j, %i.q
  br i1 %.not.i, label %.preheader.i, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

.preheader.i:                                     ; preds = %bb.c
  %i.r = icmp eq ptr %i.g, %i.e
  br i1 %i.r, label %.loopexit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add i32 %.0515.i, 1                      ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.not18.i = icmp ugt i64 %i.k, %i.t
  br i1 %.not18.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !361

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.u = phi i64 [ %i.t, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %.0515.i = phi i32 [ %i.s, %bb.d ], [ 0, %.preheader.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.u
  %i.x = tail call noundef zeroext i1 @_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS_7ValTypeES8_SB_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %i.v, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %i.w) #27
  br i1 %i.x, label %bb.d, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

.loopexit:                                        ; preds = %bb.d, %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !112  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !111 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !111
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  %.not.i29 = icmp eq i64 %i.ae, %i.am
  br i1 %.not.i29, label %.preheader.i31, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

.preheader.i31:                                   ; preds = %.loopexit
  %i.an = icmp eq ptr %i.ab, %i.z
  br i1 %i.an, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.preheader.i31, %.lr.ph.i32
  %i.ao = phi i64 [ %i.at, %.lr.ph.i32 ], [ 0, %.preheader.i31 ] ; 2 uses
  %.0515.i33 = phi i32 [ %i.as, %.lr.ph.i32 ], [ 0, %.preheader.i31 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ao
  %i.ar = tail call noundef zeroext i1 @_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS_7ValTypeES8_SB_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %i.ap, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %i.aq) #27 ; 2 uses
  %i.as = add i32 %.0515.i33, 1                   ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %.not18.i34 = icmp ugt i64 %i.af, %i.at
  %or.cond = select i1 %i.ar, i1 %.not18.i34, i1 false
  br i1 %or.cond, label %.lr.ph.i32, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit, !llvm.loop !361

bb.e:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !148
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !149
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !148 ; 2 uses
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !149 ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not2867 = icmp eq ptr %i.bd, %i.be
  br i1 %.not2867, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.bj = phi ptr [ %i.cb, %bb.g ], [ %i.be, %.preheader ]
  %i.bk = phi i64 [ %i.bz, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %.068 = phi i32 [ %i.by, %bb.g ], [ 0, %.preheader ]
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !149
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bk ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !153
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !153
  %i.bs = icmp eq i8 %i.bp, %i.br
  br i1 %i.bs, label %bb.f, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.bt = tail call noundef zeroext i1 @_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS_7ValTypeES8_SB_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(9) %i.bl, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(9) %i.bn) #27 ; 2 uses
  %i.bu = load i8, ptr %i.bo, align 4, !tbaa !153
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %.split, label %_ZZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS0_13CompositeTypeESB_ENKUlRKNS0_9FieldTypeESE_E_clESE_SE_.exit

.split:                                           ; preds = %bb.f
  %i.bw = tail call noundef zeroext i1 @_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS_7ValTypeES8_SB_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(9) %i.bn, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(9) %i.bl) #27
  %i.bx = and i1 %i.bt, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

_ZZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS0_13CompositeTypeESB_ENKUlRKNS0_9FieldTypeESE_E_clESE_SE_.exit: ; preds = %bb.f
  br i1 %i.bt, label %bb.g, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

bb.g:                                             ; preds = %.split, %_ZZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS0_13CompositeTypeESB_ENKUlRKNS0_9FieldTypeESE_E_clESE_SE_.exit
  %i.by = add i32 %.068, 1                        ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !148
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !149 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 12
  %.not28.not = icmp ugt i64 %i.cf, %i.bz
  br i1 %.not28.not, label %.lr.ph, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit, !llvm.loop !362

bb.h:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !149 ; 3 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !149 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !153
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !153
  %i.co = icmp eq i8 %i.cl, %i.cn
  br i1 %i.co, label %bb.i, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

bb.i:                                             ; preds = %bb.h
  %i.cp = tail call noundef zeroext i1 @_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS_7ValTypeES8_SB_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(9) %i.ci, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(9) %i.cj) #27 ; 2 uses
  %i.cq = load i8, ptr %i.ck, align 4, !tbaa !153
  %i.cr = icmp eq i8 %i.cq, 1
  br i1 %i.cr, label %bb.j, label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

bb.j:                                             ; preds = %bb.i
  %i.cs = tail call noundef zeroext i1 @_ZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS_7ValTypeES8_SB_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(9) %i.cj, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(9) %i.ci) #27
  %i.ct = and i1 %i.cp, %i.cs
  br label %_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit

_ZN8WasmEdge3AST11TypeMatcher10matchTypesEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEENS3_IKNS_7ValTypeELm18446744073709551615EEESB_.exit: ; preds = %.lr.ph, %.split, %_ZZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS0_13CompositeTypeESB_ENKUlRKNS0_9FieldTypeESE_E_clESE_SE_.exit, %bb.g, %.lr.ph.i, %.lr.ph.i32, %.preheader, %bb.j, %bb.i, %bb.h, %.preheader.i31, %.loopexit, %bb.c, %bb.b, %bb.e, %bb.a
  %.2 = phi i1 [ false, %bb.b ], [ %i.cp, %bb.i ], [ false, %bb.a ], [ false, %.lr.ph.i ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.c ], [ false, %.loopexit ], [ true, %.preheader.i31 ], [ %i.ar, %.lr.ph.i32 ], [ %i.ct, %bb.j ], [ true, %.preheader ], [ true, %bb.g ], [ false, %.lr.ph ], [ false, %_ZZN8WasmEdge3AST11TypeMatcher9matchTypeEN5cxx204spanIKPKNS0_7SubTypeELm18446744073709551615EEERKNS0_13CompositeTypeESB_ENKUlRKNS0_9FieldTypeESE_E_clESE_SE_.exit ], [ false, %.split ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor12proxyCallRefERNS_7Runtime12StackManagerENS_10RefVariantEPKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dS5_EEEPSH_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, <2 x i64> %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZN8WasmEdge15retrieveFuncRefERKNS_10RefVariantE.exit:
  %6 = alloca %"class.cxx20::expected.54", align 8 ; 5 uses
  %7 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %.sroa.031.8.vec.extract.extract = extractelement <2 x i64> %3, i64 1
  %i.a = inttoptr i64 %.sroa.031.8.vec.extract.extract to ptr ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107, !nonnull !39, !align !108 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = lshr i64 %i.p, 3                         ; 5 uses
  %i.r = and i64 %i.i, 34359738360
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8WasmEdge15retrieveFuncRefERKNS_10RefVariantE.exit
  %i.s = lshr exact i64 %i.i, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.s, 4294967295
  %.pre.a = load ptr, ptr %i.t, align 8, !tbaa !53
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit, %_ZN8WasmEdge15retrieveFuncRefERKNS_10RefVariantE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.w = load i8, ptr %i.v, align 8, !tbaa !91
  %i.x = icmp eq i8 %i.w, 0                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 5
  %.sroa.0.0.i = select i1 %i.x, ptr %i.z, ptr null
  %.sroa.4.0.i = select i1 %i.x, i64 %i.af, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %.sroa.4.0.i ; 2 uses
  invoke void @_ZN8WasmEdge8Executor8Executor13enterFunctionERNS_7Runtime12StackManagerERKNS2_8Instance16FunctionInstanceEPKNS_3AST11InstructionEb(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.54") align 8 %6, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %i.ag, i1 noundef zeroext false)
          to label %bb.f unwind label %.loopexit.split-lp

bb.a:                                             ; preds = %.lr.ph, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit
  %i.ah = phi ptr [ %.pre.a, %.lr.ph ], [ %i.bb, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 2 uses
  %8 = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %9 = load ptr, ptr %i.u, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.ah, %9
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !47
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !53
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %2, align 8, !tbaa !54    ; 5 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775792
  br i1 %i.ao, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.195) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.ap = ashr exact i64 %i.an, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #31
          to label %.noexc25 unwind label %.loopexit ; 5 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !47
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ah
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc25, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %.noexc25 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %.noexc25 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !47, !alias.scope !368
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc25
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc25 ], [ %i.ay, %.lr.ph.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #28
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  store ptr %i.av, ptr %2, align 8, !tbaa !54
  store ptr %i.az, ptr %i.t, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at
  store ptr %i.ba, ptr %i.u, align 8, !tbaa !113
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

_ZN8WasmEdge7Runtime12StackManager4pushIRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, %bb.b
  %i.bb = phi ptr [ %i.az, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %i.aj, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !366

bb.f:                                             ; preds = %._crit_edge
  %i.bc = load i8, ptr %6, align 8, !tbaa !116, !range !38, !noundef !39
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %i.bd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !26
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN8WasmEdge8Executor8Executor7executeERNS_7Runtime12StackManagerEPKNS_3AST11InstructionES8_(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %7, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.bh, ptr noundef %i.ag)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.bi = load i8, ptr %7, align 4, !tbaa !37, !range !38, !noundef !39
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.l

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.bn = and i64 %i.p, 34359738360
  %.not36 = icmp eq i64 %i.bn, 0
  br i1 %.not36, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %.critedge
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.bp = and i64 %i.p, 34359738360
  %i.bq = icmp eq i64 %i.bp, 8
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.lr.ph34
  %unroll_iter = and i64 %i.q, 4294967294
  br label %bb.k

._crit_edge35.loopexit.unr-lcssa:                 ; preds = %bb.k
  %i.br = and i64 %i.p, 8
  %lcmp.mod.not = icmp eq i64 %i.br, 0
  br i1 %lcmp.mod.not, label %._crit_edge35, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge35.loopexit.unr-lcssa, %.lr.ph34
  %indvars.iv38.epil.init = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next39.1, %._crit_edge35.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.q to i1
  call void @llvm.assume(i1 %lcmp.mod47)
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.epil = load i128, ptr %i.bt, align 16, !tbaa !26
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !53
  %i.bu = xor i64 %indvars.iv38.epil.init, -1
  %i.bv = add nsw i64 %i.q, %i.bu
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bw
  store i128 %.sroa.0.0.copyload.i.epil, ptr %i.bx, align 16, !tbaa !26
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %.epil.preheader, %._crit_edge35.loopexit.unr-lcssa, %.critedge
  store i64 1, ptr %0, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph34.new
  %indvars.iv38 = phi i64 [ 0, %.lr.ph34.new ], [ %indvars.iv.next39.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph34.new ], [ %niter.next.1, %bb.k ]
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.bz, align 16, !tbaa !26
  store ptr %i.bz, ptr %i.bo, align 8, !tbaa !53
  %i.ca = xor i64 %indvars.iv38, -1
  %i.cb = add nsw i64 %i.q, %i.ca
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.cc
  store i128 %.sroa.0.0.copyload.i, ptr %i.cd, align 16, !tbaa !26
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i128, ptr %i.cf, align 16, !tbaa !26
  store ptr %i.cf, ptr %i.bo, align 8, !tbaa !53
  %i.cg = xor i64 %indvars.iv38, 4294967294
  %i.ch = add nuw i64 %i.q, %i.cg
  %i.ci = and i64 %i.ch, 4294967295
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ci
  store i128 %.sroa.0.0.copyload.i.1, ptr %i.cj, align 16, !tbaa !26
  %indvars.iv.next39.1 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge35.loopexit.unr-lcssa, label %bb.k, !llvm.loop !367

bb.l:                                             ; preds = %bb.j, %._crit_edge35, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.h, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ck = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ck) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor12proxyRefFuncERNS_7Runtime12StackManagerEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected.72") align 16 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor16getFuncInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, 6553600
  %.sroa.3.0.insert.insert.i = select i1 %.not.i, i64 1885601792, i64 %i.g
  %i.h = ptrtoint ptr %i.a to i64
  store i8 1, ptr %0, align 16, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.insert.insert.i, ptr %i.i, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor14proxyStructNewERNS_7Runtime12StackManagerEjPKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEj(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.72") align 16 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK8WasmEdge8Executor8Executor9structNewERNS_7Runtime12StackManagerEjN5cxx204spanIKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEELm18446744073709551615EEE(ptr dead_on_unwind writable sret(%"class.cxx20::expected.72") align 16 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, ptr null, i64 0) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = zext i32 %5 to i64
  tail call void @_ZNK8WasmEdge8Executor8Executor9structNewERNS_7Runtime12StackManagerEjN5cxx204spanIKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEELm18446744073709551615EEE(ptr dead_on_unwind writable sret(%"class.cxx20::expected.72") align 16 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, ptr nonnull %4, i64 %i.b) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZNK8WasmEdge8Executor8Executor9structNewERNS_7Runtime12StackManagerEjN5cxx204spanIKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEELm18446744073709551615EEE(ptr dead_on_unwind writable sret(%"class.cxx20::expected.72") align 16, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr, i64) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor14proxyStructGetERNS_7Runtime12StackManagerENS_10RefVariantEjjbPNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dS5_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) initializes((0, 1), (4, 8)) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, <2 x i64> %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cxx20::expected.277", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZNK8WasmEdge8Executor8Executor9structGetERNS_7Runtime12StackManagerENS_10RefVariantEjjb(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.277") align 16 %8, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, <2 x i64> %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #27
  %i.a = load i8, ptr %8, align 16, !tbaa !46, !range !38, !noundef !39
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 16, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i128, ptr %i.c, align 16, !tbaa !26
  store i128 %.sroa.0.0.copyload, ptr %7, align 16, !tbaa !26
  store i64 0, ptr %0, align 4
end_hunk_1
