Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/helper?download=true
inline.NumInlined: 2210
inline.NumDeleted: 1224
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8WasmEdge8Executor8Executor16SavedThreadLocalC2ERS1_RNS_7Runtime12StackManagerERKNS4_8Instance16FunctionInstanceE:bb.a

_ZTWN8WasmEdge8Executor8Executor4ThisE.exit13:    ; preds = %_ZTWN8WasmEdge8Executor8Executor4ThisE.exit.thread, %bb.b
  %i.f = phi ptr [ %i.b, %_ZTWN8WasmEdge8Executor8Executor4ThisE.exit.thread ], [ %i.d, %bb.b ]
  store ptr %1, ptr %i.f, align 8, !tbaa !23
  %.not.i14 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE, null
  br i1 %.not.i14, label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit20, label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit20.thread

_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit20: ; preds = %_ZTWN8WasmEdge8Executor8Executor4ThisE.exit13
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor16ExecutionContextE) ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !tbaa.struct !42
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !265
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !267
  store ptr %i.l, ptr %i.g, align 8, !tbaa !268
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !271
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80   ; 5 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit26.thread

_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit20.thread: ; preds = %_ZTWN8WasmEdge8Executor8Executor4ThisE.exit13
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor16ExecutionContextE) ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false), !tbaa.struct !42
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.t, ptr %i.u, align 8, !tbaa !265
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !267
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  store ptr %i.w, ptr %i.r, align 8, !tbaa !268
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !270
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !271
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %.not32 = icmp eq ptr %i.ab, null
  br i1 %.not32, label %bb.d, label %bb.c

_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit26.thread: ; preds = %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !272
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !273
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !274
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !275
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !89
  br label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit28

bb.c:                                             ; preds = %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit20.thread
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !272
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !273
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !274
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !275
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !89
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  br label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit28

_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit28: ; preds = %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit26.thread, %bb.c
  %i.au = phi ptr [ %i.g, %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit26.thread ], [ %i.r, %bb.c ]
  %i.av = phi i64 [ %i.aj, %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit26.thread ], [ %i.at, %bb.c ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !276
  br label %bb.d

bb.d:                                             ; preds = %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit20.thread, %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit28, %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit20
  %.not.i29 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor12CurrentStackE, null
  br i1 %.not.i29, label %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit.thread, label %bb.e

_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit.thread: ; preds = %bb.d
  %i.ax = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor12CurrentStackE) ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !91
  br label %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit31

bb.e:                                             ; preds = %bb.d
  tail call void @_ZTHN8WasmEdge8Executor8Executor12CurrentStackE() #29
  %i.ba = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor12CurrentStackE) ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !91
  tail call void @_ZTHN8WasmEdge8Executor8Executor12CurrentStackE() #29
  br label %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit31

_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit31: ; preds = %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit.thread, %bb.e
  %i.bd = phi ptr [ %i.ax, %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit.thread ], [ %i.ba, %bb.e ]
  store ptr %2, ptr %i.bd, align 8, !tbaa !90
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor16SavedThreadLocalD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %.not.i = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor12CurrentStackE, null
  br i1 %.not.i, label %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN8WasmEdge8Executor8Executor12CurrentStackE() #29
  br label %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit

_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit: ; preds = %bb.a, %bb.b
  %i.c = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor12CurrentStackE)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i1 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE, null
  br i1 %.not.i1, label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit, label %bb.c

bb.c:                                             ; preds = %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit
  tail call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE() #29
  br label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit

_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit: ; preds = %_ZTWN8WasmEdge8Executor8Executor12CurrentStackE.exit, %bb.c
  %i.e = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor16ExecutionContextE)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !tbaa.struct !42
  %i.f = load ptr, ptr %0, align 8, !tbaa !35
  %.not.i2 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor4ThisE, null
  br i1 %.not.i2, label %_ZTWN8WasmEdge8Executor8Executor4ThisE.exit, label %bb.d

bb.d:                                             ; preds = %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit
  tail call void @_ZTHN8WasmEdge8Executor8Executor4ThisE() #29
  br label %_ZTWN8WasmEdge8Executor8Executor4ThisE.exit

_ZTWN8WasmEdge8Executor8Executor4ThisE.exit:      ; preds = %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit, %bb.d
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor4ThisE)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor13enterFunctionERNS_7Runtime12StackManagerERKNS2_8Instance16FunctionInstanceEPKNS_3AST11InstructionEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"class.std::thread::id", align 8   ; 4 uses
  %9 = alloca %"class.std::chrono::time_point.374", align 8 ; 4 uses
  %10 = alloca %"class.std::thread::id", align 8  ; 4 uses
  %11 = alloca %"class.std::chrono::time_point.374", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.WasmEdge::Runtime::CallingFrame", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.cxx20::expected.263", align 4 ; 6 uses
  %18 = alloca %"struct.cxx20::span.242", align 8 ; 3 uses
  %19 = alloca %"struct.WasmEdge::Executor::Executor::SavedThreadLocal", align 8 ; 8 uses
  %20 = alloca %"class.WasmEdge::ErrCode", align 4 ; 8 uses
  %21 = alloca %"class.WasmEdge::Fault", align 8  ; 9 uses
  %22 = alloca %"struct.std::array.278", align 8  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = atomicrmw xchg ptr %i.c, i32 0 monotonic, align 4
  %.not300 = icmp eq i32 %i.d, 0
  br i1 %.not300, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 7, ptr %i.a, align 4, !tbaa !93
  %i.e = call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 4, ptr nonnull @.str.6, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %0, align 8, !tbaa !306
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.f, align 8, !tbaa !94
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit187

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !316, !nonnull !95, !align !96 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr i64 %i.n, 3                         ; 4 uses
  %i.p = trunc i64 %i.o to i32                    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 5 uses
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %.not301 = icmp eq ptr %4, null
  br i1 %.not301, label %_ZN8WasmEdge7Runtime12StackManager21removeInactiveHandlerEPKNS_3AST11InstructionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %4, i64 -32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102 ; 3 uses
  %i.ae = icmp ne ptr %i.ab, %i.ad
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -16 ; 2 uses
  %.promoted.i = load ptr, ptr %i.ah, align 8, !tbaa !104 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %.promoted.i
  br i1 %i.ai, label %_ZN8WasmEdge7Runtime12StackManager21removeInactiveHandlerEPKNS_3AST11InstructionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.aj = phi ptr [ %i.ak, %bb.f ], [ %.promoted.i, %bb.d ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -32 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !110 ; 3 uses
  %i.am = icmp ult ptr %i.z, %i.al
  br i1 %i.am, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.an = load ptr, ptr %i.al, align 16, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !117
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aq
  %i.as = icmp ugt ptr %i.z, %i.ar
  br i1 %i.as, label %bb.f, label %_ZN8WasmEdge7Runtime12StackManager21removeInactiveHandlerEPKNS_3AST11InstructionE.exit

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !119
  %i.at = icmp eq ptr %i.ag, %i.ak
  br i1 %i.at, label %_ZN8WasmEdge7Runtime12StackManager21removeInactiveHandlerEPKNS_3AST11InstructionE.exit, label %.lr.ph.i

_ZN8WasmEdge7Runtime12StackManager21removeInactiveHandlerEPKNS_3AST11InstructionE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !317
  switch i8 %i.av, label %bb.ca [
    i8 2, label %bb.g
    i8 1, label %bb.ar
  ]

bb.g:                                             ; preds = %_ZN8WasmEdge7Runtime12StackManager21removeInactiveHandlerEPKNS_3AST11InstructionE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !319 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !102 ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit.thread, label %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit

_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit: ; preds = %bb.g
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !124 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit.thread, label %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit._crit_edge

_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit._crit_edge: ; preds = %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !21
  br label %bb.h

_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit.thread: ; preds = %bb.g, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit
  %i.bg = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit._crit_edge, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit.thread
  %i.bh = phi ptr [ %i.bg, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit.thread ], [ %.pre, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit._crit_edge ]
  %.0103 = phi ptr [ %i.bg, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit.thread ], [ %i.be, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  store ptr %1, ptr %16, align 8, !tbaa !321
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.0103, ptr %i.bi, align 8, !tbaa !322
  call void @_ZN8WasmEdge7Runtime12StackManager9pushFrameEPKNS0_8Instance14ModuleInstanceEPKNS_3AST11InstructionEjjb(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.bh, ptr noundef %4, i32 noundef %i.p, i32 noundef %i.y, i1 noundef zeroext %5) #29
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 3 uses
  %.not120 = icmp eq ptr %i.bk, null
  br i1 %.not120, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !338 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !89 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bq = load atomic i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = add i64 %i.bq, %i.bm                    ; 2 uses
  %.not.i = icmp ugt i64 %i.br, %i.bo
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i128

._crit_edge.i:                                    ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %bb.i
  %i.bs = call noundef ptr @_ZN6spdlog18default_logger_rawEv() ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 4
  %i.bv = icmp slt i32 %i.bu, 5                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.bx = call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.bw) ; 2 uses
  %or.cond.i.i.i.i.i = or i1 %i.bv, %i.bx
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !137
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !138
  call void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, ptr %i.bz, i64 %i.cb, i32 noundef 4, ptr nonnull @.str.3, i64 51)
  call void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.bs, ptr noundef nonnull align 8 dereferenceable(96) %13, i1 noundef zeroext %i.bv, i1 noundef zeroext %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.k

.lr.ph.i128:                                      ; preds = %bb.i, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %i.cc = phi i64 [ %i.cg, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.br, %bb.i ]
  %.0812.i = phi i64 [ %i.cf, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.bq, %bb.i ]
  %i.cd = cmpxchg weak ptr %i.bp, i64 %.0812.i, i64 %i.cc monotonic monotonic, align 8 ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  br i1 %i.ce, label %_ZN8WasmEdge10Statistics10Statistics7addCostEm.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i128
  %i.cf = extractvalue { i64, i1 } %i.cd, 0       ; 2 uses
  %i.cg = add i64 %i.cf, %i.bm                    ; 2 uses
  %.not13.i = icmp ugt i64 %i.cg, %i.bo
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i128, !llvm.loop !277

bb.k:                                             ; preds = %._crit_edge.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 3, ptr %i.b, align 4, !tbaa !93
  %i.ch = call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ch, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.6, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  store i8 0, ptr %0, align 8, !tbaa !306
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.ci, align 8, !tbaa !94
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZN8WasmEdge10Statistics10Statistics7addCostEm.exit: ; preds = %.lr.ph.i128
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  call void @_ZN8WasmEdge5Timer5Timer10stopRecordENS0_8TimerTagE(ptr noundef nonnull align 8 dereferenceable(184) %i.ck, i32 noundef 0) #29
  %i.cl = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 2 uses
  %i.cn = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(184) %i.cm) #29
  %i.co = icmp eq i32 %i.cn, 35
  br i1 %i.co, label %bb.l, label %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i.i

bb.l:                                             ; preds = %_ZN8WasmEdge10Statistics10Statistics7addCostEm.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #31
          to label %.noexc.i.i unwind label %bb.m
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge8Executor8Executor13enterFunctionERNS_7Runtime12StackManagerERKNS2_8Instance16FunctionInstanceEPKNS_3AST11InstructionEb:bb.a
  %i.gw = phi ptr [ %.pre354, %.lr.ph324 ], [ %i.hr, %_ZN8WasmEdge7Runtime12StackManager4pushINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 2 uses
  %.sroa.0277.0323 = phi ptr [ %.sroa.0285.0, %.lr.ph324 ], [ %i.hs, %_ZN8WasmEdge7Runtime12StackManager4pushINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.gw, %i.gv
  br i1 %.not.i.i.i134, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gw, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0277.0323, i64 16, i1 false), !tbaa.struct !160
  %i.gx = load ptr, ptr %i.cx, align 8, !tbaa !153
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  store ptr %i.gy, ptr %i.cx, align 8, !tbaa !153
  %.pre352 = load ptr, ptr %i.fb, align 8, !tbaa !154
  br label %_ZN8WasmEdge7Runtime12StackManager4pushINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.gz = load ptr, ptr %2, align 8, !tbaa !157   ; 5 uses
  %i.ha = ptrtoint ptr %i.gv to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 4 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775792
  br i1 %i.hd, label %bb.al, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #31
          to label %.noexc136 unwind label %.loopexit.split-lp

.noexc136:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ak
  %i.he = ashr exact i64 %i.hc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %i.hf = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.he ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.he
  %i.hh = call i64 @llvm.umin.i64(i64 %i.hf, i64 576460752303423487)
  %i.hi = select i1 %i.hg, i64 576460752303423487, i64 %i.hh ; 3 uses
  %.not.i.i.i.i.i135 = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i135)
  %i.hj = shl nuw nsw i64 %i.hi, 4
  %i.hk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #33
          to label %.noexc137 unwind label %.loopexit305 ; 5 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hl, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0277.0323, i64 16, i1 false), !tbaa.struct !160
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.gz, %i.gv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc137, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i.i ], [ %i.hk, %.noexc137 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gz, %.noexc137 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !160, !alias.scope !345
  %i.hm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hm, %i.gv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc137
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.hk, %.noexc137 ], [ %i.hn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hc) #34
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i.i: ; preds = %bb.am, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i.i
  store ptr %i.hk, ptr %2, align 8, !tbaa !157
  store ptr %i.ho, ptr %i.cx, align 8, !tbaa !153
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.hi ; 2 uses
  store ptr %i.hp, ptr %i.fb, align 8, !tbaa !154
  br label %_ZN8WasmEdge7Runtime12StackManager4pushINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

_ZN8WasmEdge7Runtime12StackManager4pushINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i.i, %bb.aj
  %i.hq = phi ptr [ %i.hp, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i.i ], [ %.pre352, %bb.aj ]
  %i.hr = phi ptr [ %i.ho, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i.i ], [ %i.gy, %bb.aj ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0277.0323, i64 16 ; 2 uses
  %.not302 = icmp eq ptr %i.hs, %.0.lcssa.i.i.i.i.i
  br i1 %.not302, label %._crit_edge325, label %bb.ai

.loopexit305:                                     ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.an:                                            ; preds = %_ZN8WasmEdge7Runtime12StackManager8popFrameEv.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %.not.i.i.i138 = icmp eq ptr %.sroa.0285.0, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ht = sub i64 %.sroa.13290.0, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0285.0, i64 noundef %i.ht) #34
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

bb.ap:                                            ; preds = %.loopexit305, %.loopexit.split-lp, %bb.aa
  %.pn123 = phi { ptr, i32 } [ %i.ey, %bb.aa ], [ %lpad.loopexit, %.loopexit305 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %.not.i.i.i139 = icmp eq ptr %.sroa.0285.0, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit140, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hu = sub i64 %.sroa.13290.0, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0285.0, i64 noundef %i.hu) #34
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit140

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit140: ; preds = %bb.aq, %bb.ap, %bb.z
  %.pn123.pn = phi { ptr, i32 } [ %i.ex, %bb.z ], [ %.pn123, %bb.ap ], [ %.pn123, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit189

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %bb.ao, %bb.an, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit187

bb.ar:                                            ; preds = %_ZN8WasmEdge7Runtime12StackManager21removeInactiveHandlerEPKNS_3AST11InstructionE.exit
  %i.hv = load ptr, ptr %3, align 8, !tbaa !21
  call void @_ZN8WasmEdge7Runtime12StackManager9pushFrameEPKNS0_8Instance14ModuleInstanceEPKNS_3AST11InstructionEjjb(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.hv, ptr noundef %4, i32 noundef %i.p, i32 noundef %i.y, i1 noundef zeroext %5) #29
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !141
  %i.hy = and i64 %i.o, 4294967295
  %i.hz = sub nsw i64 0, %i.hy
  %i.ia = getelementptr inbounds [16 x i8], ptr %i.hx, i64 %i.hz
  %i.ib = and i64 %i.x, 4294967295                ; 6 uses
  %.not.i.i.i.i143 = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152, label %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144

_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144: ; preds = %bb.ar
  %i.ic = shl nuw nsw i64 %i.ib, 4
  %i.id = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #33 ; 4 uses
  %xtraiter = and i64 %i.x, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i145.prol.loopexit, label %.lr.ph.i.i.i.i.i145.prol

.lr.ph.i.i.i.i.i145.prol:                         ; preds = %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144, %.lr.ph.i.i.i.i.i145.prol
  %.08.i.i.i.i.i146.prol = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i145.prol ], [ %i.id, %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144 ] ; 2 uses
  %.057.i.i.i.i.i147.prol = phi i64 [ %i.ie, %.lr.ph.i.i.i.i.i145.prol ], [ %i.ib, %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i145.prol ], [ 0, %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144 ]
  store i32 0, ptr %.08.i.i.i.i.i146.prol, align 16, !tbaa !94
  %i.ie = add nsw i64 %.057.i.i.i.i.i147.prol, -1 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i145.prol.loopexit, label %.lr.ph.i.i.i.i.i145.prol, !llvm.loop !286

.lr.ph.i.i.i.i.i145.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i145.prol, %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144
  %.lcssa445.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144 ], [ %i.if, %.lr.ph.i.i.i.i.i145.prol ]
  %.08.i.i.i.i.i146.unr = phi ptr [ %i.id, %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144 ], [ %i.if, %.lr.ph.i.i.i.i.i145.prol ]
  %.057.i.i.i.i.i147.unr = phi i64 [ %i.ib, %_ZNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit.i144 ], [ %i.ie, %.lr.ph.i.i.i.i.i145.prol ]
  %i.ig = icmp samesign ult i64 %i.ib, 8
  br i1 %i.ig, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152.loopexit, label %.lr.ph.i.i.i.i.i145

.lr.ph.i.i.i.i.i145:                              ; preds = %.lr.ph.i.i.i.i.i145.prol.loopexit, %.lr.ph.i.i.i.i.i145
  %.08.i.i.i.i.i146 = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i145 ], [ %.08.i.i.i.i.i146.unr, %.lr.ph.i.i.i.i.i145.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.i147 = phi i64 [ %i.io, %.lr.ph.i.i.i.i.i145 ], [ %.057.i.i.i.i.i147.unr, %.lr.ph.i.i.i.i.i145.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i146, align 16, !tbaa !94
  %i.ih = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146, i64 16
  store i32 0, ptr %i.ih, align 16, !tbaa !94
  %i.ii = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146, i64 32
  store i32 0, ptr %i.ii, align 16, !tbaa !94
  %i.ij = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146, i64 48
  store i32 0, ptr %i.ij, align 16, !tbaa !94
  %i.ik = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146, i64 64
  store i32 0, ptr %i.ik, align 16, !tbaa !94
  %i.il = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146, i64 80
  store i32 0, ptr %i.il, align 16, !tbaa !94
  %i.im = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146, i64 96
  store i32 0, ptr %i.im, align 16, !tbaa !94
  %i.in = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146, i64 112
  store i32 0, ptr %i.in, align 16, !tbaa !94
  %i.io = add nsw i64 %.057.i.i.i.i.i147, -8      ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i146, i64 128 ; 2 uses
  %.not.i.i.i.i.i148.7 = icmp eq i64 %i.io, 0
  br i1 %.not.i.i.i.i.i148.7, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152.loopexit, label %.lr.ph.i.i.i.i.i145, !llvm.loop !279

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152.loopexit: ; preds = %.lr.ph.i.i.i.i.i145, %.lr.ph.i.i.i.i.i145.prol.loopexit
  %.lcssa445 = phi ptr [ %.lcssa445.unr, %.lr.ph.i.i.i.i.i145.prol.loopexit ], [ %i.ip, %.lr.ph.i.i.i.i.i145 ]
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.ib
  %i.ir = ptrtoint ptr %i.iq to i64
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152.loopexit, %bb.ar
  %.sroa.13.0 = phi i64 [ 0, %bb.ar ], [ %i.ir, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152.loopexit ] ; 2 uses
  %.sroa.0267.0 = phi ptr [ null, %bb.ar ], [ %i.id, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152.loopexit ] ; 10 uses
  %.0.lcssa.i.i.i.i.i149 = phi ptr [ null, %bb.ar ], [ %.lcssa445, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @_ZN8WasmEdge8Executor8Executor16SavedThreadLocalC2ERS1_RNS_7Runtime12StackManagerERKNS4_8Instance16FunctionInstanceE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(88) %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  store i32 0, ptr %20, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  invoke void @_ZN8WasmEdge5FaultC1Ev(ptr noundef nonnull align 8 dereferenceable(2264) %21)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152
  %i.is = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.it = call i32 @_setjmp(ptr noundef nonnull %i.is) #35 ; 3 uses
  %.not117 = icmp eq i32 %i.it, 0
  br i1 %.not117, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iu = getelementptr inbounds nuw i8, ptr %21, i64 208 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %21, i64 2256
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !349 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.ix = call { ptr, i64 } @_ZN8WasmEdge10stackTraceEN5cxx204spanIPvLm18446744073709551615EEE(ptr nonnull %22, i64 256) #29 ; 2 uses
  %i.iy = extractvalue { ptr, i64 } %i.ix, 0
  %i.iz = extractvalue { ptr, i64 } %i.ix, 1      ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 0
  %i.jb = icmp eq i64 %i.iw, 0
  %or.cond299428 = select i1 %i.ja, i1 true, i1 %i.jb
  br i1 %or.cond299428, label %.critedge2, label %.lr.ph432

bb.au:                                            ; preds = %.lr.ph432
  %i.jc = icmp eq i64 %i.jh, 0
  %i.jd = icmp eq i64 %i.je, 0
  %or.cond299 = or i1 %i.jc, %i.jd
  br i1 %or.cond299, label %.critedge2, label %.lr.ph432, !llvm.loop !287

.lr.ph432:                                        ; preds = %bb.at, %bb.au
  %.pn119430 = phi i64 [ %i.jh, %bb.au ], [ %i.iz, %bb.at ]
  %.sroa.7.0429 = phi i64 [ %i.je, %bb.au ], [ %i.iw, %bb.at ] ; 2 uses
  %i.je = add i64 %.sroa.7.0429, -1               ; 4 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !166
  %i.jh = add i64 %.pn119430, -1                  ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !166
  %i.jk = icmp eq ptr %i.jg, %i.jj
  br i1 %i.jk, label %bb.au, label %..critedge2_crit_edge433, !llvm.loop !287

bb.av:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EEC2EmRKSE_.exit152
  %i.jl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8WasmEdge7ErrCodeE
  br label %bb.bb

..critedge2_crit_edge433:                         ; preds = %.lr.ph432
  br label %.critedge2, !llvm.loop !287

.critedge2:                                       ; preds = %bb.au, %..critedge2_crit_edge433, %bb.at
  %.sroa.7.0.lcssa = phi i64 [ %i.iw, %bb.at ], [ %.sroa.7.0429, %..critedge2_crit_edge433 ], [ %i.je, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %.not.i157 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor10StackTraceE, null
  br i1 %.not.i157, label %_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit, label %bb.aw

bb.aw:                                            ; preds = %.critedge2
  call void @_ZTHN8WasmEdge8Executor8Executor10StackTraceE()
  br label %_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit

_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit: ; preds = %.critedge2, %bb.aw
  %i.jm = call noundef align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8WasmEdge8Executor8Executor10StackTraceE)
  %i.jn = call { ptr, i64 } @_ZN8WasmEdge18compiledStackTraceERKNS_7Runtime12StackManagerEN5cxx204spanIKPvLm18446744073709551615EEENS5_IjLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull %i.iu, i64 %.sroa.7.0.lcssa, ptr nonnull %i.jm, i64 256) #29
  %i.jo = extractvalue { ptr, i64 } %i.jn, 1
  %.not.i158 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor14StackTraceSizeE, null
  br i1 %.not.i158, label %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit
  call void @_ZTHN8WasmEdge8Executor8Executor14StackTraceSizeE()
  br label %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit

_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit: ; preds = %_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit, %bb.ax
  %i.jp = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor14StackTraceSizeE)
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !40
  store i32 %i.it, ptr %20, align 4, !tbaa !94
  br label %_ZNK8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EEclIJPNS_8Executor8Executor22ExecutionContextStructES1_SH_SH_EEEDaDpT_.exit

bb.ay:                                            ; preds = %bb.as
  %.not.i159 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE, null
  br i1 %.not.i159, label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZTHN8WasmEdge8Executor8Executor16ExecutionContextE()
  br label %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit

_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit: ; preds = %bb.ay, %bb.az
  %i.jq = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor16ExecutionContextE)
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !356
  %i.jt = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !358
  invoke void %i.ju(ptr noundef nonnull %i.jq, ptr noundef %i.js, ptr noundef %i.ia, ptr noundef %.sroa.0267.0)
          to label %_ZNK8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EEclIJPNS_8Executor8Executor22ExecutionContextStructES1_SH_SH_EEEDaDpT_.exit unwind label %bb.ba, !inline_history !288

bb.ba:                                            ; preds = %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8WasmEdge7ErrCodeE
  call void @_ZN8WasmEdge5FaultD1Ev(ptr noundef nonnull align 8 dead_on_return(2264) dereferenceable(2264) %21) #29
  br label %bb.bb

_ZNK8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EEclIJPNS_8Executor8Executor22ExecutionContextStructES1_SH_SH_EEEDaDpT_.exit: ; preds = %_ZTWN8WasmEdge8Executor8Executor16ExecutionContextE.exit, %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit
  call void @_ZN8WasmEdge5FaultD1Ev(ptr noundef nonnull align 8 dead_on_return(2264) dereferenceable(2264) %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %bb.av
  %.pn = phi { ptr, i32 } [ %i.jv, %bb.ba ], [ %i.jl, %bb.av ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.jw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8WasmEdge7ErrCodeE) #29
  %i.jx = icmp eq i32 %.2, %i.jw
  br i1 %i.jx, label %bb.bc, label %bb.by

bb.bc:                                            ; preds = %bb.bb
  %.2108 = extractvalue { ptr, i32 } %.pn, 0
  %i.jy = call ptr @__cxa_begin_catch(ptr %.2108) #29
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !94 ; 2 uses
  store i32 %i.jz, ptr %20, align 4, !tbaa !94
  invoke void @__cxa_end_catch()
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc, %_ZNK8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EEclIJPNS_8Executor8Executor22ExecutionContextStructES1_SH_SH_EEEDaDpT_.exit
  %23 = phi i32 [ %i.jz, %bb.bc ], [ %i.it, %_ZNK8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EEclIJPNS_8Executor8Executor22ExecutionContextStructES1_SH_SH_EEEDaDpT_.exit ]
  switch i32 %23, label %bb.be [
    i32 0, label %.preheader306
    i32 1, label %bb.bh
  ]

.preheader306:                                    ; preds = %bb.bd
  %i.ka = ptrtoint ptr %.0.lcssa.i.i.i.i.i149 to i64
  %i.kb = ptrtoint ptr %.sroa.0267.0 to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 4
  %.not336 = icmp eq ptr %.0.lcssa.i.i.i.i.i149, %.sroa.0267.0
  %.pre349 = load ptr, ptr %i.hw, align 8, !tbaa !153 ; 2 uses
  br i1 %.not336, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader306
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.pre348 = load ptr, ptr %i.ke, align 8, !tbaa !154
  br label %bb.bo

bb.be:                                            ; preds = %bb.bd
  %i.kf = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc161 unwind label %bb.bg

.noexc161:                                        ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.kf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.6, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %20)
          to label %_ZN6spdlog5errorIN8WasmEdge7ErrCodeEEEvRKT_.exit163 unwind label %bb.bg

_ZN6spdlog5errorIN8WasmEdge7ErrCodeEEEvRKT_.exit163: ; preds = %.noexc161
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bc
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bg:                                            ; preds = %.noexc161, %bb.be
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bh:                                            ; preds = %bb.bd, %_ZN6spdlog5errorIN8WasmEdge7ErrCodeEEEvRKT_.exit163
  %.not.i164 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor10StackTraceE, null
  br i1 %.not.i164, label %_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit165, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZTHN8WasmEdge8Executor8Executor10StackTraceE()
  br label %_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit165

_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit165: ; preds = %bb.bh, %bb.bi
  %i.ki = call noundef align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8WasmEdge8Executor8Executor10StackTraceE) ; 2 uses
  %.not.i166 = icmp eq ptr @_ZTHN8WasmEdge8Executor8Executor14StackTraceSizeE, null
  br i1 %.not.i166, label %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit167.thread, label %bb.bj

_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit167.thread: ; preds = %_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit165
  %i.kj = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor14StackTraceSizeE) ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !40 ; 2 uses
  %i.kl = sub i64 256, %i.kk
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kk
  %i.kn = call { ptr, i64 } @_ZN8WasmEdge21interpreterStackTraceERKNS_7Runtime12StackManagerEN5cxx204spanIjLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull %i.km, i64 %i.kl) #29
  br label %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit171

bb.bj:                                            ; preds = %_ZTWN8WasmEdge8Executor8Executor10StackTraceE.exit165
  call void @_ZTHN8WasmEdge8Executor8Executor14StackTraceSizeE()
  %i.ko = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8WasmEdge8Executor8Executor14StackTraceSizeE) ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !40 ; 2 uses
  %i.kq = sub i64 256, %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kp
  %i.ks = call { ptr, i64 } @_ZN8WasmEdge21interpreterStackTraceERKNS_7Runtime12StackManagerEN5cxx204spanIjLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull %i.kr, i64 %i.kq) #29
  call void @_ZTHN8WasmEdge8Executor8Executor14StackTraceSizeE()
  br label %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit171

_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit171: ; preds = %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit167.thread, %bb.bj
  %.pn419 = phi { ptr, i64 } [ %i.kn, %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit167.thread ], [ %i.ks, %bb.bj ]
  %i.kt = phi ptr [ %i.kj, %_ZTWN8WasmEdge8Executor8Executor14StackTraceSizeE.exit167.thread ], [ %i.ko, %bb.bj ] ; 2 uses
  %i.ku = extractvalue { ptr, i64 } %.pn419, 1
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !40
  %i.kw = add i64 %i.kv, %i.ku
  store i64 %i.kw, ptr %i.kt, align 8, !tbaa !40
  %i.kx = load i32, ptr %20, align 4, !tbaa !94, !noalias !359
  store i8 0, ptr %0, align 8, !tbaa !306
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.kx, ptr %i.ky, align 8, !tbaa !94
  br label %bb.bt

._crit_edge:                                      ; preds = %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit, %.preheader306
  %i.kz = phi ptr [ %.pre349, %.preheader306 ], [ %i.nm, %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ]
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !102
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !102 ; 4 uses
  %i.le = icmp ne ptr %i.lb, %i.ld
  call void @llvm.assume(i1 %i.le)
  %i.lf = getelementptr inbounds i8, ptr %i.ld, i64 -32
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !155 ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.ld, i64 -40
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !156 ; 2 uses
  %i.lj = icmp uge i32 %i.lg, %i.li
  call void @llvm.assume(i1 %i.lj)
  %i.lk = load ptr, ptr %2, align 8, !tbaa !157   ; 3 uses
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = getelementptr inbounds i8, ptr %i.ld, i64 -36
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !158 ; 2 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = zext i32 %i.lg to i64
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.lp
  %i.lr = zext i32 %i.li to i64
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds [16 x i8], ptr %i.lq, i64 %i.ls ; 4 uses
  %.neg.i172 = mul nsw i64 %i.lo, -16             ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %i.kz, i64 %.neg.i172 ; 2 uses
  %i.lv = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.lw = sub i64 %i.lv, %i.ll
  %i.lx = getelementptr inbounds i8, ptr %i.lk, i64 %i.lw ; 2 uses
  %.not.i.i.i173 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSD_SF_EESK_.exit.i177, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge
  switch i32 %i.ln, label %bb.bl [
    i32 0, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS2_10RefVariantEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i.i.i174
    i32 1, label %bb.bm
  ], !prof !159

bb.bl:                                            ; preds = %bb.bk
  %gepdiff.i179 = sub nsw i64 0, %.neg.i172
  call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.lt, ptr align 16 %i.lx, i64 %gepdiff.i179, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS2_10RefVariantEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i.i.i174

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.lt, ptr noundef nonnull align 16 dereferenceable(16) %i.lx, i64 16, i1 false), !tbaa.struct !160
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS2_10RefVariantEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i.i.i174

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS2_10RefVariantEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i.i.i174: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.ly = load ptr, ptr %i.hw, align 8, !tbaa !141 ; 2 uses
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = sub i64 %i.lz, %i.lv
  %i.mb = getelementptr inbounds i8, ptr %i.lt, i64 %i.ma ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.ly, %i.mb
  br i1 %.not.i.i.i.i175, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSD_SF_EESK_.exit.i177, label %_ZSt8_DestroyIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_EvT_SF_RSaIT0_E.exit.i.i.i.i176

_ZSt8_DestroyIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_EvT_SF_RSaIT0_E.exit.i.i.i.i176: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS2_10RefVariantEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i.i.i174
  store ptr %i.mb, ptr %i.hw, align 8, !tbaa !153
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSD_SF_EESK_.exit.i177

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSD_SF_EESK_.exit.i177: ; preds = %_ZSt8_DestroyIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_EvT_SF_RSaIT0_E.exit.i.i.i.i176, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS2_10RefVariantEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i.i.i174, %._crit_edge
  %i.mc = load ptr, ptr %i.lc, align 8, !tbaa !102 ; 4 uses
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -56
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 -48
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !161
  store ptr %i.md, ptr %i.lc, align 8, !tbaa !163
  %i.mg = getelementptr inbounds i8, ptr %i.mc, i64 -24
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i.i.i178 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i.i.i.i178, label %_ZN8WasmEdge7Runtime12StackManager8popFrameEv.exit180, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSD_SF_EESK_.exit.i177
  %i.mi = getelementptr inbounds i8, ptr %i.mc, i64 -8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !165
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = ptrtoint ptr %i.mh to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.mm) #34
  br label %_ZN8WasmEdge7Runtime12StackManager8popFrameEv.exit180

_ZN8WasmEdge7Runtime12StackManager8popFrameEv.exit180: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSD_SF_EESK_.exit.i177, %bb.bn
  store i8 1, ptr %0, align 8, !tbaa !306
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mf, ptr %i.mn, align 8, !tbaa !94
  br label %bb.bt

bb.bo:                                            ; preds = %.lr.ph, %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit
  %i.mo = phi ptr [ %.pre348, %.lr.ph ], [ %i.nl, %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 4 uses
  %i.mp = phi ptr [ %.pre349, %.lr.ph ], [ %i.nm, %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ] ; 2 uses
  %i.mq = phi i64 [ 0, %.lr.ph ], [ %i.no, %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ]
  %.0102317 = phi i32 [ 0, %.lr.ph ], [ %i.nn, %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit ]
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0267.0, i64 %i.mq ; 2 uses
  %.not.i.i = icmp eq ptr %i.mp, %i.mo
  br i1 %.not.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.mp, ptr noundef nonnull align 16 dereferenceable(16) %i.mr, i64 16, i1 false), !tbaa.struct !160
  %i.ms = load ptr, ptr %i.hw, align 8, !tbaa !153
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  store ptr %i.mt, ptr %i.hw, align 8, !tbaa !153
  %.pre347 = load ptr, ptr %i.ke, align 8, !tbaa !154
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.mu = load ptr, ptr %2, align 8, !tbaa !157   ; 5 uses
  %i.mv = ptrtoint ptr %i.mo to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw                    ; 4 uses
  %i.my = icmp eq i64 %i.mx, 9223372036854775792
  br i1 %i.my, label %bb.br, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #31
          to label %.noexc183 unwind label %.loopexit.split-lp308
end_hunk_1
