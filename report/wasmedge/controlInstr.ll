Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/controlInstr?download=true
inline.NumInlined: 2074
inline.NumDeleted: 932
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0
@.str.810 = private unnamed_addr constant [14 x i8] c"external type\00", align 1
@.str.811 = private unnamed_addr constant [14 x i8] c"function type\00", align 1
@.str.812 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.813 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.814 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.815 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.816 = private unnamed_addr constant [24 x i8] c"component function type\00", align 1
@_ZN8WasmEdgeL9ValMutStrE = internal unnamed_addr constant %"class.WasmEdge::DenseEnumMap.442" { %"struct.std::array.443" { [2 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 5, ptr @.str.817 }, %"class.std::basic_string_view" { i64 3, ptr @.str.818 }] } }, align 8
@.str.817 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.818 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@_ZN8WasmEdgeL15ExternalTypeStrE = internal unnamed_addr constant %"class.WasmEdge::DenseEnumMap.445" { %"struct.std::array.446" { [5 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 8, ptr @.str.819 }, %"class.std::basic_string_view" { i64 5, ptr @.str.812 }, %"class.std::basic_string_view" { i64 6, ptr @.str.813 }, %"class.std::basic_string_view" { i64 6, ptr @.str.814 }, %"class.std::basic_string_view" { i64 3, ptr @.str.820 }] } }, align 8
@.str.819 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.820 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.821 = private unnamed_addr constant [10 x i8] c"Limit{{{}\00", align 1
@.str.822 = private unnamed_addr constant [6 x i8] c" , {}\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor11runIfElseOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.c, align 16, !tbaa !19
  store ptr %i.c, ptr %i.a, align 8, !tbaa !21
  %.sroa.011.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i32
  %i.d = icmp eq i32 %.sroa.011.0.extract.trunc, 0
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19   ; 3 uses
  %i.g = load i32, ptr %3, align 16, !tbaa !19
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.f, -1
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !221  ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !221  ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !223
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !231  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.u = load atomic i64, ptr %i.t monotonic, align 8 ; 2 uses
  %i.v = add i64 %i.u, %i.q                       ; 2 uses
  %.not.i.i = icmp ugt i64 %i.v, %i.s
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.i, %bb.e
  %i.w = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = icmp slt i32 %i.y, 5                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ab = invoke noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.aa)
          to label %.noexc8 unwind label %bb.j    ; 2 uses

.noexc8:                                          ; preds = %.noexc
  %or.cond.i.i.i.i.i.i = or i1 %i.z, %i.ab
  br i1 %or.cond.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !32
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, ptr %i.ad, i64 %i.af, i32 noundef 4, ptr nonnull @.str.2, i64 51)
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %bb.f
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %5, i1 noundef zeroext %i.z, i1 noundef zeroext %i.ab)
          to label %.noexc10 unwind label %bb.j

.noexc10:                                         ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.g

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.i
  %i.ag = phi i64 [ %i.ak, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.i ], [ %i.v, %bb.e ]
  %.0812.i.i = phi i64 [ %i.aj, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.i ], [ %i.u, %bb.e ]
  %i.ah = cmpxchg weak ptr %i.t, i64 %.0812.i.i, i64 %i.ag monotonic monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN8WasmEdge10Statistics10Statistics12addInstrCostENS_6OpCodeE.exit.loopexit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %i.ak = add i64 %i.aj, %i.q                     ; 2 uses
  %.not13.i.i = icmp ugt i64 %i.ak, %i.s
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !185

bb.g:                                             ; preds = %.noexc8, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i8 0, ptr %0, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %i.al, align 4, !tbaa !19
  br label %bb.i

_ZN8WasmEdge10Statistics10Statistics12addInstrCostENS_6OpCodeE.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i32, ptr %i.e, align 4, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %_ZN8WasmEdge10Statistics10Statistics12addInstrCostENS_6OpCodeE.exit.loopexit, %bb.c
  %.sink = phi i32 [ %i.i, %bb.c ], [ %.pre, %_ZN8WasmEdge10Statistics10Statistics12addInstrCostENS_6OpCodeE.exit.loopexit ], [ %i.f, %bb.d ]
  %i.am = load ptr, ptr %4, align 8, !tbaa !37
  %i.an = zext i32 %.sink to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.an
  store ptr %i.ao, ptr %4, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  store i64 1, ptr %0, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void

bb.j:                                             ; preds = %.noexc9, %bb.f, %.noexc, %._crit_edge.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor10runThrowOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 16, !tbaa !19
  %i.b = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor15getTagInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8WasmEdge8Executor8Executor14throwExceptionERNS_7Runtime12StackManagerERNS2_8Instance11TagInstanceERPKNS_3AST11InstructionEPKNS5_17ExceptionInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

declare noundef ptr @_ZNK8WasmEdge8Executor8Executor15getTagInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN8WasmEdge8Executor8Executor14throwExceptionERNS_7Runtime12StackManagerERNS2_8Instance11TagInstanceERPKNS_3AST11InstructionEPKNS5_17ExceptionInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor13runThrowRefOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.d, align 16, !tbaa !19
  store ptr %i.d, ptr %i.b, align 8, !tbaa !21
  %.sroa.3.0.extract.shift = lshr i128 %.sroa.0.0.copyload.i, 64 ; 2 uses
  %i.e = icmp eq i128 %.sroa.3.0.extract.shift, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 1047, ptr %i.a, align 4, !tbaa !39
  %i.f = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.5, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.h

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !44
  %i.k = zext i32 %i.j to i64
  store i32 %i.h, ptr %7, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.m, i8 0, i64 49, i1 false)
  %i.q = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc12 unwind label %bb.h

.noexc12:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.5, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %7)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #20
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  store i8 0, ptr %0, align 4, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1047, ptr %i.ab, align 4, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.sroa.3.0.extract.trunc = trunc nuw i128 %.sroa.3.0.extract.shift to i64
  %i.ac = inttoptr i64 %.sroa.3.0.extract.trunc to ptr ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !234
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18
  %i.ai = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.aj = ptrtoint ptr %i.d to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  invoke void @_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKSD_SF_EEEEvNSI_IPSD_SF_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %i.am, ptr %i.af, ptr %i.ah)
          to label %_ZN8WasmEdge7Runtime12StackManager10pushValVecERKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISF_EE.exit unwind label %bb.h

_ZN8WasmEdge7Runtime12StackManager10pushValVecERKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISF_EE.exit: ; preds = %bb.f
  tail call void @_ZN8WasmEdge8Executor8Executor14throwExceptionERNS_7Runtime12StackManagerERNS2_8Instance11TagInstanceERPKNS_3AST11InstructionEPKNS5_17ExceptionInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ac) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZN8WasmEdge7Runtime12StackManager10pushValVecERKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISF_EE.exit, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.h:                                             ; preds = %bb.f, %.noexc12, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit, %.noexc, %bb.b
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor7runBrOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN8WasmEdge8Executor8Executor13branchToLabelERNS_7Runtime12StackManagerERKNS_3AST11Instruction14JumpDescriptorERPKS6_(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  ret void
}

; Function Attrs: nounwind
declare void @_ZN8WasmEdge8Executor8Executor13branchToLabelERNS_7Runtime12StackManagerERKNS_3AST11Instruction14JumpDescriptorERPKS6_(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor9runBrIfOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.c, align 16, !tbaa !19
  store ptr %i.c, ptr %i.a, align 8, !tbaa !21
  %.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i32
  %.not = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8WasmEdge8Executor8Executor13branchToLabelERNS_7Runtime12StackManagerERKNS_3AST11Instruction14JumpDescriptorERPKS6_(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor13runBrOnNullOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !21
  tail call void @_ZN8WasmEdge8Executor8Executor13branchToLabelERNS_7Runtime12StackManagerERKNS_3AST11Instruction14JumpDescriptorERPKS6_(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor16runBrOnNonNullOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8WasmEdge8Executor8Executor13branchToLabelERNS_7Runtime12StackManagerERKNS_3AST11Instruction14JumpDescriptorERPKS6_(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !21
  store i64 1, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor12runBrTableOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.c, align 16, !tbaa !19 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !21
  %.sroa.012.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.g = load i8, ptr %i.f, align 1
  %i.h = trunc i8 %i.g to i1
  %i.i = load i32, ptr %3, align 16
  %i.j = add i32 %i.i, -1
  %i.k = select i1 %i.h, i32 %i.j, i32 -1         ; 2 uses
  %i.l = icmp ugt i32 %i.k, %.sroa.012.0.extract.trunc
  %i.m = zext i32 %i.k to i64
  %i.n = trunc i128 %.sroa.0.0.copyload.i to i64
  %i.o = and i64 %i.n, 4294967295
  %.sink13 = select i1 %i.l, i64 %i.o, i64 %i.m
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sink13
  tail call void @_ZN8WasmEdge8Executor8Executor13branchToLabelERNS_7Runtime12StackManagerERKNS_3AST11Instruction14JumpDescriptorERPKS6_(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor13runBrOnCastOpERNS_7Runtime12StackManagerERKNS_3AST11InstructionERPS7_b(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit:
  %6 = alloca %"class.WasmEdge::ValType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = icmp ne ptr %i.b, %i.d
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 -14
  %i.s = load i8, ptr %i.r, align 2, !tbaa !19
  %.off.i.i = add i8 %i.s, -99
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -13
  %i.u = load i8, ptr %i.t, align 1
  %.off.i = add i8 %i.u, -105
  %switch.i = icmp ult i8 %.off.i, 12
  %.0.i19 = select i1 %switch.i.i, i1 %switch.i, i1 false
  br i1 %.0.i19, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit
  %i.v = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit
  %.sroa.025.0 = phi ptr [ %i.l, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit ], [ %i.l, %bb.a ], [ %i.aa, %bb.b ]
  %.sroa.526.0.in = phi i64 [ %i.q, %_ZNK8WasmEdge7Runtime12StackManager9getModuleEv.exit ], [ %i.q, %bb.a ], [ %i.af, %bb.b ]
  %.sroa.526.0 = ashr exact i64 %.sroa.526.0.in, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ag = load i64, ptr %i.j, align 4             ; 3 uses
  %i.ah = and i64 %i.ag, 65280
  %.not27 = icmp eq i64 %i.ah, 0
end_hunk_0
