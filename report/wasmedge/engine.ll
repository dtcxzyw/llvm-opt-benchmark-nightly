Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/engine?download=true
inline.NumInlined: 11004
inline.NumDeleted: 2646
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK8WasmEdge8Executor8Executor8runRemOpIlEENSt9enable_ifIX10IsWasmIntVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSR_:bb.a

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1028, ptr %i.aj, align 4, !tbaa !93
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit22: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %7) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %i.ak

bb.f:                                             ; preds = %bb.a
  %i.al = load i64, ptr %3, align 16, !tbaa !94
  %i.am = srem i64 %i.al, %i.b
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %storemerge = phi i64 [ %i.am, %bb.f ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %3, align 16, !tbaa !94
  store i64 1, ptr %0, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor8runRemOpImEENSt9enable_ifIX10IsWasmIntVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSR_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %8 = alloca [2 x %"class.WasmEdge::Variant"], align 16 ; 6 uses
  %i.b = load i64, ptr %4, align 16, !tbaa !94    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i, label %bb.f

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1028, ptr %i.a, align 4, !tbaa !130
  %i.d = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i32, ptr %i.g, align 16, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !112
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !112
  %i.j = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 5 uses
  %i.k = zext i32 %i.h to i64
  store i64 1081999360, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1081999360, ptr %.sroa.5.0..sroa_idx, align 4
  store i32 %i.f, ptr %7, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc5.i unwind label %bb.b  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.n, ptr %i.m, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, ptr noundef nonnull align 16 dereferenceable(32) %8, i64 32, i1 false)
  store ptr %i.p, ptr %i.o, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.s = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.s, ptr %i.r, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !126
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i8 0, ptr %i.y, align 8, !tbaa !128
  %i.z = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit20

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.z, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %7)
          to label %bb.c unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit20

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !90
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1028, ptr %i.ak, align 4, !tbaa !93
  br label %bb.g

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit20: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %7) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %i.al

bb.f:                                             ; preds = %bb.a
  %i.am = load i64, ptr %3, align 16, !tbaa !94
  %i.an = urem i64 %i.am, %i.b
  store i64 %i.an, ptr %3, align 16, !tbaa !94
  store i64 1, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor8runMinOpIfEENSt9enable_ifIX12IsWasmFloatVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSN_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load float, ptr %2, align 16             ; 4 uses
  %i.b = fcmp uno float %i.a, 0.000000e+00
  %i.c = bitcast float %i.a to i32                ; 2 uses
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %3, align 16, !tbaa !135 ; 5 uses
  %i.e = fcmp uno float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = bitcast float %i.d to i32
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %.0.copyload = phi i32 [ %i.c, %bb.a ], [ %i.f, %bb.c ]
  %i.g = or i32 %.0.copyload, 4194304
  store i32 %i.g, ptr %2, align 16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp oeq float %i.a, 0.000000e+00
  %i.i = fcmp oeq float %i.d, 0.000000e+00
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = bitcast float %i.d to i32
  %i.k = xor i32 %i.j, %i.c
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float -0.000000e+00, ptr %2, align 16, !tbaa !135
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.m = fcmp olt float %i.d, %i.a
  %..i = select i1 %i.m, ptr %3, ptr %2
  %4 = load float, ptr %..i, align 16, !tbaa !135
  store float %4, ptr %2, align 16, !tbaa !135
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.thread
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor8runMaxOpIfEENSt9enable_ifIX12IsWasmFloatVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSN_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load float, ptr %2, align 16             ; 4 uses
  %i.b = fcmp uno float %i.a, 0.000000e+00
  %i.c = bitcast float %i.a to i32                ; 2 uses
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %3, align 16, !tbaa !135 ; 5 uses
  %i.e = fcmp uno float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = bitcast float %i.d to i32
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %.0.copyload = phi i32 [ %i.c, %bb.a ], [ %i.f, %bb.c ]
  %i.g = or i32 %.0.copyload, 4194304
  store i32 %i.g, ptr %2, align 16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp oeq float %i.a, 0.000000e+00
  %i.i = fcmp oeq float %i.d, 0.000000e+00
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = bitcast float %i.d to i32
  %i.k = xor i32 %i.j, %i.c
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float 0.000000e+00, ptr %2, align 16, !tbaa !135
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.m = fcmp olt float %i.a, %i.d
  %..i = select i1 %i.m, ptr %3, ptr %2
  %4 = load float, ptr %..i, align 16, !tbaa !135
  store float %4, ptr %2, align 16, !tbaa !135
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.thread
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor8runMinOpIdEENSt9enable_ifIX12IsWasmFloatVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSN_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %2, align 16            ; 4 uses
  %i.b = fcmp uno double %i.a, 0.000000e+00
  %i.c = bitcast double %i.a to i64               ; 2 uses
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %3, align 16, !tbaa !137 ; 5 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = bitcast double %i.d to i64
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %.0.copyload = phi i64 [ %i.c, %bb.a ], [ %i.f, %bb.c ]
  %i.g = or i64 %.0.copyload, 2251799813685248
  store i64 %i.g, ptr %2, align 16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp oeq double %i.a, 0.000000e+00
  %i.i = fcmp oeq double %i.d, 0.000000e+00
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = bitcast double %i.d to i64
  %i.k = xor i64 %i.j, %i.c
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double -0.000000e+00, ptr %2, align 16, !tbaa !137
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.m = fcmp olt double %i.d, %i.a
  %..i = select i1 %i.m, ptr %3, ptr %2
  %4 = load double, ptr %..i, align 16, !tbaa !137
  store double %4, ptr %2, align 16, !tbaa !137
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.thread
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor8runMaxOpIdEENSt9enable_ifIX12IsWasmFloatVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSN_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %2, align 16            ; 4 uses
  %i.b = fcmp uno double %i.a, 0.000000e+00
  %i.c = bitcast double %i.a to i64               ; 2 uses
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %3, align 16, !tbaa !137 ; 5 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = bitcast double %i.d to i64
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %.0.copyload = phi i64 [ %i.c, %bb.a ], [ %i.f, %bb.c ]
  %i.g = or i64 %.0.copyload, 2251799813685248
  store i64 %i.g, ptr %2, align 16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp oeq double %i.a, 0.000000e+00
  %i.i = fcmp oeq double %i.d, 0.000000e+00
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = bitcast double %i.d to i64
  %i.k = xor i64 %i.j, %i.c
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %2, align 16, !tbaa !137
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.m = fcmp olt double %i.a, %i.d
  %..i = select i1 %i.m, ptr %3, ptr %2
  %4 = load double, ptr %..i, align 16, !tbaa !137
  store double %4, ptr %2, align 16, !tbaa !137
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.thread
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor9runLoadOpIoLj128EEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %6 = alloca %"class.cxx20::expected", align 4   ; 5 uses
  %7 = alloca %class.anon.252, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 4 uses
  %i.d = load i8, ptr %3, align 8, !tbaa !158
  %i.e = icmp ult i8 %i.d, 4
  %i.f = load i32, ptr %i.c, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = load i64, ptr %i.c, align 8
  %.0.i = select i1 %i.e, i64 %i.g, i64 %i.h      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 16) #25
  %i.i = load i8, ptr %5, align 4, !tbaa !92, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93
  %i.p = add i64 %i.o, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i128 0, ptr %i.c, align 16, !tbaa !134
  call void @_ZNK8WasmEdge7Runtime8Instance14MemoryInstance9loadValueIoLj16EEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERS5_m(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %6, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 noundef %i.p) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %4, ptr %7, align 8, !tbaa !21
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.q = load i8, ptr %6, align 4, !tbaa !92, !range !71, !noalias !1539, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  store i64 0, ptr %0, align 4, !alias.scope !1539
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor9runLoadOpIoLj128EEENSt9enable_ifIX10IsWasmNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit

bb.d:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor9runLoadOpIoLj128EEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvS1_EEE4typeERNS0_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlS6_E_JS1_EES6_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.t, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor9runLoadOpIoLj128EEENSt9enable_ifIX10IsWasmNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit

_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor9runLoadOpIoLj128EEENSt9enable_ifIX10IsWasmNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i.i, ptr %0, align 4, !tbaa !92, !alias.scope !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor9runLoadOpIoLj128EEENSt9enable_ifIX10IsWasmNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor15runLoadExpandOpIasEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.cxx20::expected", align 4   ; 3 uses
  %7 = alloca %"class.cxx20::expected", align 4   ; 5 uses
  %8 = alloca %class.anon.254, align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %i.e = load i8, ptr %3, align 8, !tbaa !158
  %i.f = icmp ult i8 %i.e, 4
  %i.g = load i32, ptr %i.d, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = load i64, ptr %i.d, align 8
  %.0.i = select i1 %i.f, i64 %i.h, i64 %i.i      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 8) #25
  %i.j = load i8, ptr %5, align 4, !tbaa !92, !range !71, !noundef !72
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !93
  %i.q = add i64 %i.p, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNK8WasmEdge7Runtime8Instance14MemoryInstance9loadValueImLj8EEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERS5_m(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %7, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.q) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %4, ptr %8, align 8, !tbaa !21
  %i.r = load i8, ptr %7, align 4, !tbaa !92, !range !71, !noalias !1548, !noundef !72
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.t = load <8 x i8>, ptr %i.a, align 8, !noalias !1549
  %i.u = sext <8 x i8> %i.t to <8 x i16>
  store <8 x i16> %i.u, ptr %i.d, align 16, !tbaa !93, !noalias !1549
  store i64 0, ptr %0, align 4, !alias.scope !1549
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runLoadExpandOpIasEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlvE_EEDaOT_.exit

bb.d:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  call void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor15runLoadExpandOpIasEEN5cxx208expectedIvS1_EERNS0_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlT_E_JS1_EESI_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.w, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !93, !noalias !1549
  store i32 %i.y, ptr %i.x, align 4, !tbaa !93, !alias.scope !1549
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runLoadExpandOpIasEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlvE_EEDaOT_.exit

_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runLoadExpandOpIasEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlvE_EEDaOT_.exit: ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 4, !tbaa !92, !alias.scope !1549
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runLoadExpandOpIasEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlvE_EEDaOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor15runLoadExpandOpIhtEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.cxx20::expected", align 4   ; 3 uses
  %7 = alloca %"class.cxx20::expected", align 4   ; 5 uses
  %8 = alloca %class.anon.256, align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %i.e = load i8, ptr %3, align 8, !tbaa !158
  %i.f = icmp ult i8 %i.e, 4
  %i.g = load i32, ptr %i.d, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = load i64, ptr %i.d, align 8
  %.0.i = select i1 %i.f, i64 %i.h, i64 %i.i      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 8) #25
  %i.j = load i8, ptr %5, align 4, !tbaa !92, !range !71, !noundef !72
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !93
  %i.q = add i64 %i.p, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNK8WasmEdge7Runtime8Instance14MemoryInstance9loadValueImLj8EEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERS5_m(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %7, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.q) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %4, ptr %8, align 8, !tbaa !21
  %i.r = load i8, ptr %7, align 4, !tbaa !92, !range !71, !noalias !1560, !noundef !72
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

end_hunk_0
begin_hunk_1_@_ZN8WasmEdge7Runtime8Instance14MemoryInstance10storeValueIKmLj8EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKS6_m:bb.a
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1032, ptr %i.n, align 4, !tbaa !93
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = load i64, ptr %2, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !220
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %3
  store i64 %i.o, ptr %i.r, align 1
  store i64 1, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %.noexc5, %bb.c, %.noexc, %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvS1_EERNS0_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlT_E_JS1_EESI_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind noalias writable sret(%"class.WasmEdge::ErrCode") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !2129
  %i.b = load ptr, ptr %1, align 8, !tbaa !2131, !noalias !2129, !nonnull !72, !align !221 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70, !noalias !2129
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i32, ptr %i.e, align 16, !tbaa !73, !noalias !2129
  %i.g = zext i32 %i.f to i64
  store i32 %i.d, ptr %4, align 8, !tbaa !85, !noalias !2129
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !86, !noalias !2129
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.i, i8 0, i64 49, i1 false), !noalias !2129
  %i.m = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i, !noalias !2129

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !2129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !2129
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %4)
          to label %bb.b unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i, !noalias !2129

bb.b:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !2129
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !87, !noalias !2129 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !88, !noalias !2129
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #26, !noalias !2129
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !89, !noalias !2129 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZZN8WasmEdge8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionEENKUlT_E_clIS5_EEDaSH_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !90, !noalias !2129
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26, !noalias !2129
  br label %_ZZN8WasmEdge8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionEENKUlT_E_clIS5_EEDaSH_.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i: ; preds = %.noexc.i, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %4) #25, !noalias !2129
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !2129
  resume { ptr, i32 } %i.x

_ZZN8WasmEdge8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionEENKUlT_E_clIS5_EEDaSH_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !2129
  store i32 %i.a, ptr %0, align 4, !tbaa !93, !alias.scope !2129
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor10atomicWaitIiEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.291") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 noundef %3, i32 %4, i64 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, WasmEdge::Runtime::Instance::MemoryInstance::Waiter>, std::allocator<std::pair<const unsigned long, WasmEdge::Runtime::Instance::MemoryInstance::Waiter>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, false>>::_Scoped_node", align 8 ; 6 uses
  %8 = alloca %"struct.std::__detail::_Node_iterator.308", align 8 ; 11 uses
  %9 = alloca %"class.cxx20::scope_exit", align 8 ; 8 uses
  %10 = alloca %"class.std::unique_lock.310", align 8 ; 14 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !158
  %i.b = and i8 %i.a, 2
  %.not50 = icmp eq i8 %i.b, 0
  br i1 %.not50, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1041, ptr %i.c, align 8, !tbaa !93
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !161
  %.not.i.i = icmp ugt i64 %3, -5
  %i.f = shl i64 %i.e, 16
  %i.g = add nuw i64 %3, 4                        ; 2 uses
  %i.h = icmp ugt i64 %i.g, %i.f
  %.not3.i = select i1 %.not.i.i, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not51 = icmp eq ptr %i.j, null
  %.not = select i1 %.not3.i, i1 true, i1 %.not51
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 8, !tbaa !160
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1032, ptr %i.k, align 8, !tbaa !93
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %5, -1                      ; 2 uses
  br i1 %i.l, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25
  %i.o = add nsw i64 %i.n, %5
  %.pre = load i64, ptr %i.d, align 8, !tbaa !161
  %.pre89 = load ptr, ptr %i.i, align 8
  %.pre92 = shl i64 %.pre, 16
  %i.p = icmp ugt i64 %i.g, %.pre92
  %i.q = getelementptr inbounds nuw i8, ptr %.pre89, i64 %3
  %cond.fr = freeze i1 %i.p
  %spec.select = select i1 %cond.fr, ptr null, ptr %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.042.0107 = phi i64 [ undef, %.thread ], [ %i.o, %bb.f ] ; 3 uses
  %i.r = phi ptr [ %i.m, %.thread ], [ %spec.select, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load atomic i32, ptr %i.r seq_cst, align 4
  %.not17 = icmp eq i32 %i.s, %4
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %0, align 8, !tbaa !160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.t, align 8, !tbaa !93
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr null, ptr %8, align 8, !tbaa !224
  %i.w = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %.invoke

.invoke:                                          ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit28, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us, %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.i
  %i.x = phi i32 [ %i.w, %bb.i ], [ %i.ar, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.bm, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us ], [ %i.cf, %_ZNSt11unique_lockISt5mutexED2Ev.exit28 ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.x) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.v, ptr %7, align 8, !tbaa !227
  %i.y = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #30
          to label %.noexc21 unwind label %.loopexit.split-lp ; 7 uses

.noexc21:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store i64 %3, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i8 0, i64 96, i1 false)
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store i8 0, ptr %i.ad, align 8, !tbaa !233
  store ptr %i.y, ptr %i.z, align 8, !tbaa !234
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !235
  %.not.not.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.j, label %.thread22.i.i.i.i.i

bb.j:                                             ; preds = %.noexc21
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !139 ; 4 uses
  %.not27.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %.not27.i.i.i.i.i, label %.thread22.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %11 = load i64, ptr %i.aa, align 8, !tbaa !94   ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !94
  %i.aj = icmp eq i64 %11, %i.ai
  br i1 %i.aj, label %.loopexit.i.i.i.i, label %bb.k, !llvm.loop !8

.thread22.i.i.i.i.i:                              ; preds = %bb.k, %.noexc21
  %12 = load i64, ptr %i.aa, align 8, !tbaa !94
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.l, %.thread22.i.i.i.i.i
  %.sroa.019.3.i.i.i.i.i = phi ptr [ null, %.thread22.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ]
  %.sroa.4.3.i.i.i.i.i = phi i64 [ %12, %.thread22.i.i.i.i.i ], [ %11, %bb.l ]
  %i.ak = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS9_10_Hash_nodeIS7_Lb0EEEmSN_(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef %.sroa.019.3.i.i.i.i.i, i64 noundef %.sroa.4.3.i.i.i.i.i, ptr noundef nonnull %i.y)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.m ; 2 uses

bb.m:                                             ; preds = %.loopexit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store ptr %i.ak, ptr %8, align 8
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #25 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  store atomic ptr %2, ptr %i.an release, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %1, ptr %9, align 8, !tbaa !236
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !238
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !242
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 1, ptr %i.ao, align 8, !tbaa !2134
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.aq, ptr %10, align 8, !tbaa !244
  store i8 0, ptr %i.ap, align 8, !tbaa !245
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #25 ; 2 uses
  %.not.i.i.i2367 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i2367, label %.lr.ph, label %.invoke

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.at = sdiv i64 %.sroa.042.0107, 1000000000    ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.at, -1000000000
  %i.au = add i64 %.neg.i.i.i.i, %.sroa.042.0107
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us
  store i8 1, ptr %i.ap, align 8, !tbaa !245
  %i.aw = load atomic i32, ptr %i.as acquire, align 8
  %.not52.us = icmp eq i32 %i.aw, 0
  br i1 %.not52.us, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.ax = load ptr, ptr %8, align 8, !tbaa !224
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 %i.at, ptr %6, align 8, !tbaa !247
  store i64 %i.au, ptr %i.av, align 8, !tbaa !248
  %i.az = load ptr, ptr %10, align 8, !tbaa !244  ; 2 uses
  %i.ba = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.o unwind label %.loopexit.split.us ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bb = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25
  %.not79 = icmp slt i64 %i.bb, %.sroa.042.0107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bc = load atomic i32, ptr %i.as monotonic, align 8
  %.not53.us = icmp eq i32 %i.bc, 0
  br i1 %.not53.us, label %bb.p, label %.split70.us

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %8, align 8, !tbaa !224   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !249, !range !71, !noundef !72
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.split73.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not79, label %bb.r, label %.split76.us

bb.r:                                             ; preds = %bb.q
  %i.bh = load i8, ptr %i.ap, align 8, !tbaa !245, !range !71, !noundef !72
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.s, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us

bb.s:                                             ; preds = %bb.r
  %i.bj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #25 ; 0 uses
  %.pre91 = load ptr, ptr %8, align 8, !tbaa !224
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us

_ZNSt11unique_lockISt5mutexED2Ev.exit28.us:       ; preds = %bb.s, %bb.r
  %i.bk = phi ptr [ %i.bd, %bb.r ], [ %.pre91, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bl, ptr %10, align 8, !tbaa !244
  store i8 0, ptr %i.ap, align 8, !tbaa !245
  %i.bm = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #25 ; 2 uses
  %.not.i.i.i23.us = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i23.us, label %.lr.ph.split.us, label %.invoke, !llvm.loop !2132

.loopexit.split.us:                               ; preds = %bb.n
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.lr.ph.split.split:                               ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexED2Ev.exit28
  store i8 1, ptr %i.ap, align 8, !tbaa !245
  %i.bn = load atomic i32, ptr %i.as acquire, align 8
  %.not52 = icmp eq i32 %i.bn, 0
  br i1 %.not52, label %bb.t, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  store i8 0, ptr %0, align 8, !tbaa !160
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bo, align 8, !tbaa !93
  br label %.critedge

bb.t:                                             ; preds = %.lr.ph.split.split
  %i.bp = load ptr, ptr %8, align 8, !tbaa !224
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(9) %10)
          to label %bb.u unwind label %.loopexit.split

bb.u:                                             ; preds = %bb.t
  %i.br = load atomic i32, ptr %i.as monotonic, align 8
  %.not53 = icmp eq i32 %i.br, 0
  br i1 %.not53, label %bb.v, label %.split70.us

.split70.us:                                      ; preds = %bb.u, %bb.o
  store i8 0, ptr %0, align 8, !tbaa !160
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bs, align 8, !tbaa !93
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %8, align 8, !tbaa !224   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !249, !range !71, !noundef !72
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.split73.us, label %bb.w

.split73.us:                                      ; preds = %bb.v, %bb.p
  store i8 1, ptr %0, align 8, !tbaa !160
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !93
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.by = load i8, ptr %i.ap, align 8, !tbaa !245, !range !71, !noundef !72
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.x, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

.split76.us:                                      ; preds = %bb.q
  store i8 1, ptr %0, align 8, !tbaa !160
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ca, align 8, !tbaa !93
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %10, align 8, !tbaa !244  ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cb) #25 ; 0 uses
  %.pre90 = load ptr, ptr %8, align 8, !tbaa !224
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

_ZNSt11unique_lockISt5mutexED2Ev.exit28:          ; preds = %bb.w, %bb.x, %bb.y
  %i.cd = phi ptr [ %i.bt, %bb.w ], [ %i.bt, %bb.x ], [ %.pre90, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  store ptr %i.ce, ptr %10, align 8, !tbaa !244
  store i8 0, ptr %i.ap, align 8, !tbaa !245
  %i.cf = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #25 ; 2 uses
  %.not.i.i.i23 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i23, label %.lr.ph.split.split, label %.invoke, !llvm.loop !2132

.critedge:                                        ; preds = %.split76.us, %.split73.us, %.split70.us, %.split.us
  %i.cg = load i8, ptr %i.ap, align 8, !tbaa !245, !range !71, !noundef !72
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.z, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

bb.z:                                             ; preds = %.critedge
  %i.ci = load ptr, ptr %10, align 8, !tbaa !244  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i29, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ci) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

_ZNSt11unique_lockISt5mutexED2Ev.exit30:          ; preds = %.critedge, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ck = load i8, ptr %i.ao, align 8, !tbaa !2134, !range !71, !noundef !72
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ab, label %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitIiEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit

bb.ab:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit30
  call void @_ZZN8WasmEdge8Executor8Executor10atomicWaitIiEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EElENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #25
  br label %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitIiEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit

end_hunk_1
begin_hunk_2_@_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.q = load ptr, ptr %6, align 8, !tbaa !152    ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !153
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #26
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.u = load ptr, ptr %6, align 8, !tbaa !152    ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !153
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #26
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrCodeENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.192", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.a, align 4, !tbaa !167
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i16 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 32, ptr %i.c, align 1, !tbaa !93
  %scevgep.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %scevgep.i.i.i.i.i.i.i, i8 0, i64 3, i1 false), !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 1, ptr %i.d, align 1, !tbaa !168
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !93
  %i.g = load ptr, ptr %1, align 8, !tbaa !170    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !171  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = icmp samesign eq i64 %i.i, 0
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.g, align 1, !tbaa !93
  %i.m = icmp eq i8 %i.l, 125
  br i1 %i.m, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !170
  %.pre6 = load i64, ptr %i.h, align 8, !tbaa !171
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i64 [ %.pre6, %bb.c ], [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  store ptr %i.t, ptr %1, align 8, !tbaa !170
  %i.u = sub i64 %i.o, %i.s
  store i64 %i.u, ptr %i.h, align 8, !tbaa !171
  %i.v = call ptr @_ZNK3fmt3v119formatterIN8WasmEdge7ErrCodeEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor10atomicWaitIlEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.291") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 noundef %3, i64 %4, i64 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, WasmEdge::Runtime::Instance::MemoryInstance::Waiter>, std::allocator<std::pair<const unsigned long, WasmEdge::Runtime::Instance::MemoryInstance::Waiter>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, false>>::_Scoped_node", align 8 ; 6 uses
  %8 = alloca %"struct.std::__detail::_Node_iterator.308", align 8 ; 11 uses
  %9 = alloca %"class.cxx20::scope_exit.344", align 8 ; 8 uses
  %10 = alloca %"class.std::unique_lock.310", align 8 ; 14 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !158
  %i.b = and i8 %i.a, 2
  %.not50 = icmp eq i8 %i.b, 0
  br i1 %.not50, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1041, ptr %i.c, align 8, !tbaa !93
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !161
  %.not.i.i = icmp ugt i64 %3, -9
  %i.f = shl i64 %i.e, 16
  %i.g = add nuw i64 %3, 8                        ; 2 uses
  %i.h = icmp ugt i64 %i.g, %i.f
  %.not3.i = select i1 %.not.i.i, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not51 = icmp eq ptr %i.j, null
  %.not = select i1 %.not3.i, i1 true, i1 %.not51
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 8, !tbaa !160
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1032, ptr %i.k, align 8, !tbaa !93
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %5, -1                      ; 2 uses
  br i1 %i.l, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25
  %i.o = add nsw i64 %i.n, %5
  %.pre = load i64, ptr %i.d, align 8, !tbaa !161
  %.pre89 = load ptr, ptr %i.i, align 8
  %.pre92 = shl i64 %.pre, 16
  %i.p = icmp ugt i64 %i.g, %.pre92
  %i.q = getelementptr inbounds nuw i8, ptr %.pre89, i64 %3
  %cond.fr = freeze i1 %i.p
  %spec.select = select i1 %cond.fr, ptr null, ptr %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.042.0107 = phi i64 [ undef, %.thread ], [ %i.o, %bb.f ] ; 3 uses
  %i.r = phi ptr [ %i.m, %.thread ], [ %spec.select, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load atomic i64, ptr %i.r seq_cst, align 8
  %.not17 = icmp eq i64 %i.s, %4
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %0, align 8, !tbaa !160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.t, align 8, !tbaa !93
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr null, ptr %8, align 8, !tbaa !224
  %i.w = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %.invoke

.invoke:                                          ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit28, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us, %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.i
  %i.x = phi i32 [ %i.w, %bb.i ], [ %i.ar, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.bm, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us ], [ %i.cf, %_ZNSt11unique_lockISt5mutexED2Ev.exit28 ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.x) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.v, ptr %7, align 8, !tbaa !227
  %i.y = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #30
          to label %.noexc21 unwind label %.loopexit.split-lp ; 7 uses

.noexc21:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store i64 %3, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i8 0, i64 96, i1 false)
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store i8 0, ptr %i.ad, align 8, !tbaa !233
  store ptr %i.y, ptr %i.z, align 8, !tbaa !234
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !235
  %.not.not.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.j, label %.thread22.i.i.i.i.i

bb.j:                                             ; preds = %.noexc21
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !139 ; 4 uses
  %.not27.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %.not27.i.i.i.i.i, label %.thread22.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %11 = load i64, ptr %i.aa, align 8, !tbaa !94   ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !94
  %i.aj = icmp eq i64 %11, %i.ai
  br i1 %i.aj, label %.loopexit.i.i.i.i, label %bb.k, !llvm.loop !8

.thread22.i.i.i.i.i:                              ; preds = %bb.k, %.noexc21
  %12 = load i64, ptr %i.aa, align 8, !tbaa !94
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.l, %.thread22.i.i.i.i.i
  %.sroa.019.3.i.i.i.i.i = phi ptr [ null, %.thread22.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ]
  %.sroa.4.3.i.i.i.i.i = phi i64 [ %12, %.thread22.i.i.i.i.i ], [ %11, %bb.l ]
  %i.ak = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS9_10_Hash_nodeIS7_Lb0EEEmSN_(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef %.sroa.019.3.i.i.i.i.i, i64 noundef %.sroa.4.3.i.i.i.i.i, ptr noundef nonnull %i.y)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.m ; 2 uses

bb.m:                                             ; preds = %.loopexit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store ptr %i.ak, ptr %8, align 8
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #25 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  store atomic ptr %2, ptr %i.an release, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %1, ptr %9, align 8, !tbaa !236
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !238
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !242
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 1, ptr %i.ao, align 8, !tbaa !2148
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.aq, ptr %10, align 8, !tbaa !244
  store i8 0, ptr %i.ap, align 8, !tbaa !245
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #25 ; 2 uses
  %.not.i.i.i2367 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i2367, label %.lr.ph, label %.invoke

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.at = sdiv i64 %.sroa.042.0107, 1000000000    ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.at, -1000000000
  %i.au = add i64 %.neg.i.i.i.i, %.sroa.042.0107
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us
  store i8 1, ptr %i.ap, align 8, !tbaa !245
  %i.aw = load atomic i32, ptr %i.as acquire, align 8
  %.not52.us = icmp eq i32 %i.aw, 0
  br i1 %.not52.us, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.ax = load ptr, ptr %8, align 8, !tbaa !224
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 %i.at, ptr %6, align 8, !tbaa !247
  store i64 %i.au, ptr %i.av, align 8, !tbaa !248
  %i.az = load ptr, ptr %10, align 8, !tbaa !244  ; 2 uses
  %i.ba = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.o unwind label %.loopexit.split.us ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bb = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25
  %.not79 = icmp slt i64 %i.bb, %.sroa.042.0107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bc = load atomic i32, ptr %i.as monotonic, align 8
  %.not53.us = icmp eq i32 %i.bc, 0
  br i1 %.not53.us, label %bb.p, label %.split70.us

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %8, align 8, !tbaa !224   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !249, !range !71, !noundef !72
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.split73.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not79, label %bb.r, label %.split76.us

bb.r:                                             ; preds = %bb.q
  %i.bh = load i8, ptr %i.ap, align 8, !tbaa !245, !range !71, !noundef !72
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.s, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us

bb.s:                                             ; preds = %bb.r
  %i.bj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #25 ; 0 uses
  %.pre91 = load ptr, ptr %8, align 8, !tbaa !224
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us

_ZNSt11unique_lockISt5mutexED2Ev.exit28.us:       ; preds = %bb.s, %bb.r
  %i.bk = phi ptr [ %i.bd, %bb.r ], [ %.pre91, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bl, ptr %10, align 8, !tbaa !244
  store i8 0, ptr %i.ap, align 8, !tbaa !245
  %i.bm = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #25 ; 2 uses
  %.not.i.i.i23.us = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i23.us, label %.lr.ph.split.us, label %.invoke, !llvm.loop !2146

.loopexit.split.us:                               ; preds = %bb.n
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.lr.ph.split.split:                               ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexED2Ev.exit28
  store i8 1, ptr %i.ap, align 8, !tbaa !245
  %i.bn = load atomic i32, ptr %i.as acquire, align 8
  %.not52 = icmp eq i32 %i.bn, 0
  br i1 %.not52, label %bb.t, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  store i8 0, ptr %0, align 8, !tbaa !160
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bo, align 8, !tbaa !93
  br label %.critedge

bb.t:                                             ; preds = %.lr.ph.split.split
  %i.bp = load ptr, ptr %8, align 8, !tbaa !224
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(9) %10)
          to label %bb.u unwind label %.loopexit.split

bb.u:                                             ; preds = %bb.t
  %i.br = load atomic i32, ptr %i.as monotonic, align 8
  %.not53 = icmp eq i32 %i.br, 0
  br i1 %.not53, label %bb.v, label %.split70.us

.split70.us:                                      ; preds = %bb.u, %bb.o
  store i8 0, ptr %0, align 8, !tbaa !160
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bs, align 8, !tbaa !93
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %8, align 8, !tbaa !224   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !249, !range !71, !noundef !72
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.split73.us, label %bb.w

.split73.us:                                      ; preds = %bb.v, %bb.p
  store i8 1, ptr %0, align 8, !tbaa !160
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !93
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.by = load i8, ptr %i.ap, align 8, !tbaa !245, !range !71, !noundef !72
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.x, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

.split76.us:                                      ; preds = %bb.q
  store i8 1, ptr %0, align 8, !tbaa !160
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ca, align 8, !tbaa !93
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %10, align 8, !tbaa !244  ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cb) #25 ; 0 uses
  %.pre90 = load ptr, ptr %8, align 8, !tbaa !224
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

_ZNSt11unique_lockISt5mutexED2Ev.exit28:          ; preds = %bb.w, %bb.x, %bb.y
  %i.cd = phi ptr [ %i.bt, %bb.w ], [ %i.bt, %bb.x ], [ %.pre90, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  store ptr %i.ce, ptr %10, align 8, !tbaa !244
  store i8 0, ptr %i.ap, align 8, !tbaa !245
  %i.cf = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #25 ; 2 uses
  %.not.i.i.i23 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i23, label %.lr.ph.split.split, label %.invoke, !llvm.loop !2146

.critedge:                                        ; preds = %.split76.us, %.split73.us, %.split70.us, %.split.us
  %i.cg = load i8, ptr %i.ap, align 8, !tbaa !245, !range !71, !noundef !72
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.z, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

bb.z:                                             ; preds = %.critedge
  %i.ci = load ptr, ptr %10, align 8, !tbaa !244  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i29, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ci) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

_ZNSt11unique_lockISt5mutexED2Ev.exit30:          ; preds = %.critedge, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ck = load i8, ptr %i.ao, align 8, !tbaa !2148, !range !71, !noundef !72
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ab, label %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitIlEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit

bb.ab:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit30
  call void @_ZZN8WasmEdge8Executor8Executor10atomicWaitIlEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EElENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #25
  br label %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitIlEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit

end_hunk_2
