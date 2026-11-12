Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/refInstr?download=true
inline.NumInlined: 2718
inline.NumDeleted: 1210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK8WasmEdge8Executor8Executor13runArrayGetOpERNS_7Runtime12StackManagerEjRKNS_3AST11InstructionEb:bb.a
  %i.o = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.k, !noalias !331

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !331
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %11)
          to label %bb.d unwind label %bb.k, !noalias !331

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !331
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %11, align 4, !tbaa !26, !noalias !331
  %i.p = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 1033
  br i1 %i.p, label %bb.e, label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = inttoptr i64 %.sroa.3.0.copyload to ptr  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !331
  %i.r = trunc i128 %.sroa.0.0.copyload.i to i64
  %i.s = and i64 %i.r, 4294967295
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24, !noalias !331
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !27, !noalias !331
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = and i64 %i.aa, 4294967295
  store i8 0, ptr %8, align 8, !tbaa !83, !noalias !331
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.s, ptr %i.ac, align 8, !tbaa !84, !noalias !331
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 1, ptr %i.ad, align 8, !tbaa !85, !noalias !331
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !86, !noalias !331
  %i.af = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !331

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !331
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.g, !noalias !331

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !331
  br label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #23, !noalias !331
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !331
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !42, !noalias !331
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !43, !noalias !331
  %i.am = zext i32 %i.al to i64
  store i32 %i.aj, ptr %10, align 8, !tbaa !53, !noalias !331
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !54, !noalias !331
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ao, i8 0, i64 49, i1 false), !noalias !331
  %i.as = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc6.i.i.i.i.i.i.i unwind label %bb.k, !noalias !331

.noexc6.i.i.i.i.i.i.i:                            ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !331
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.h unwind label %bb.k, !noalias !331

bb.h:                                             ; preds = %.noexc6.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !331
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !55, !noalias !331 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !56, !noalias !331
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #22, !noalias !331
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !27, !noalias !331 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ap, align 8, !tbaa !25, !noalias !331
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #22, !noalias !331
  br label %bb.l

bb.k:                                             ; preds = %.noexc6.i.i.i.i.i.i.i, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i, %bb.c
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #23, !noalias !331
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !331
  %i.bf = load i32, ptr %11, align 4, !tbaa !26, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !329
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !26
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.bh = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK8WasmEdge8Executor8Executor24getArrayStorageTypeByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3) #24, !noalias !328
  %i.bi = trunc i128 %.sroa.0.0.copyload.i to i64
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = load ptr, ptr %i.f, align 8, !tbaa !27, !noalias !328
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = tail call i128 @_ZNK8WasmEdge8Executor8Executor9unpackValERKNS_7ValTypeERKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEb(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.bh, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i1 noundef zeroext %5) #24, !noalias !328
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  store i128 %i.bm, ptr %i.bo, align 16, !tbaa !26
  store i64 1, ptr %0, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor8arrayGetERNS_7Runtime12StackManagerERKNS_10RefVariantEjjb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected.99") align 16 captures(none) initializes((0, 1), (16, 20)) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 16, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1045, ptr %i.d, align 16, !tbaa !26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32
  %.not = icmp ult i32 %5, %i.n
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 16, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1033, ptr %i.o, align 16, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK8WasmEdge8Executor8Executor24getArrayStorageTypeByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %4) #24
  %i.q = zext i32 %5 to i64
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q
  %i.t = tail call i128 @_ZNK8WasmEdge8Executor8Executor9unpackValERKNS_7ValTypeERKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEb(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i1 noundef zeroext %6) #24
  store i8 1, ptr %0, align 16, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.t, ptr %i.u, align 16, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor13runArraySetOpERNS_7Runtime12StackManagerERKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEjRKNS_3AST11InstructionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.WasmEdge::ErrInfo::InfoBoundary", align 8 ; 7 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 9 uses
  %11 = alloca %"class.WasmEdge::ErrCode", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.c, align 16, !tbaa !26 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !24
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i8 = load i128, ptr %i.d, align 16, !tbaa !26
  store ptr %i.d, ptr %i.a, align 8, !tbaa !24
  %.sroa.3.0.extract.shift = lshr i128 %.sroa.0.0.copyload.i8, 64 ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i128 %.sroa.3.0.extract.shift to i64 ; 2 uses
  %i.e = icmp eq i128 %.sroa.3.0.extract.shift, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.017.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i32
  %i.f = inttoptr i64 %.sroa.3.0.extract.trunc to ptr ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24, !noalias !348
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !27, !noalias !348
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4
  %i.o = trunc i64 %i.n to i32
  %.not.i = icmp ult i32 %.sroa.017.0.extract.trunc, %i.o
  br i1 %.not.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.612.0.ph = phi i32 [ 1033, %bb.b ], [ 1045, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !349
  store i32 %.sroa.612.0.ph, ptr %11, align 4, !tbaa !26, !noalias !350
  %i.p = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.k, !noalias !351

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !351
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !351
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %11)
          to label %bb.d unwind label %bb.k, !noalias !351

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !351
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %11, align 4, !tbaa !26, !noalias !351
  %i.q = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 1033
  br i1 %i.q, label %bb.e, label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = inttoptr i64 %.sroa.3.0.extract.trunc to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !351
  %i.s = trunc i128 %.sroa.0.0.copyload.i to i64
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24, !noalias !351
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !27, !noalias !351
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 4
  %i.ac = and i64 %i.ab, 4294967295
  store i8 0, ptr %8, align 8, !tbaa !83, !noalias !351
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.t, ptr %i.ad, align 8, !tbaa !84, !noalias !351
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 1, ptr %i.ae, align 8, !tbaa !85, !noalias !351
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !86, !noalias !351
  %i.ag = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !351

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !351
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !351
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.g, !noalias !351

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !351
  br label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #23, !noalias !351
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !351
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !42, !noalias !351
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = load i32, ptr %i.al, align 16, !tbaa !43, !noalias !351
  %i.an = zext i32 %i.am to i64
  store i32 %i.ak, ptr %10, align 8, !tbaa !53, !noalias !351
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !54, !noalias !351
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ap, i8 0, i64 49, i1 false), !noalias !351
  %i.at = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc6.i.i.i.i.i.i.i unwind label %bb.k, !noalias !351

.noexc6.i.i.i.i.i.i.i:                            ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !351
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !351
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.at, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.h unwind label %bb.k, !noalias !351

bb.h:                                             ; preds = %.noexc6.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !351
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !55, !noalias !351 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !56, !noalias !351
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #22, !noalias !351
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.az = load ptr, ptr %i.ap, align 8, !tbaa !27, !noalias !351 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !25, !noalias !351
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #22, !noalias !351
  br label %bb.l

bb.k:                                             ; preds = %.noexc6.i.i.i.i.i.i.i, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i, %bb.c
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #23, !noalias !351
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !351
  %i.bg = load i32, ptr %11, align 4, !tbaa !26, !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !349
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !26
  br label %bb.m

.critedge:                                        ; preds = %bb.b
  %i.bi = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK8WasmEdge8Executor8Executor24getArrayStorageTypeByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %4) #24, !noalias !348
  %i.bj = tail call i128 @_ZNK8WasmEdge8Executor8Executor7packValERKNS_7ValTypeERKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.bi, ptr noundef nonnull align 16 dereferenceable(16) %3) #24, !noalias !348
  %i.bk = trunc i128 %.sroa.0.0.copyload.i to i64
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !27, !noalias !348
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl
  store i128 %i.bj, ptr %i.bn, align 16, !tbaa !26, !noalias !348
  store i64 1, ptr %0, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor8arraySetERNS_7Runtime12StackManagerERKNS_10RefVariantERKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dS5_EEEjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) initializes((0, 1), (4, 8)) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1045, ptr %i.d, align 4, !tbaa !26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32
  %.not = icmp ult i32 %6, %i.n
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1033, ptr %i.o, align 4, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK8WasmEdge8Executor8Executor24getArrayStorageTypeByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %5) #24
  %i.q = tail call i128 @_ZNK8WasmEdge8Executor8Executor7packValERKNS_7ValTypeERKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %4) #24
  %i.r = zext i32 %6 to i64
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.r
  store i128 %i.q, ptr %i.t, align 16, !tbaa !26
  store i64 1, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor13runArrayLenOpERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKNS_3AST11InstructionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.WasmEdge::ErrCode", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1045, ptr %4, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call fastcc void @_ZN8WasmEdge8Executor12_GLOBAL__N_18logErrorERKNS_7ErrCodeERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable align 4 %i.d, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 16 dereferenceable(26) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %2, align 16, !tbaa !32
  store i64 0, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  store i8 %.sink, ptr %0, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor14runArrayFillOpERNS_7Runtime12StackManagerEjRKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEjRKNS_3AST11InstructionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, ptr noundef nonnull align 16 dereferenceable(16) %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoBoundary", align 8 ; 7 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 9 uses
  %12 = alloca %"class.WasmEdge::ErrCode", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.c, align 16, !tbaa !26
  store ptr %i.c, ptr %i.a, align 8, !tbaa !24
  %.sroa.017.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i8 = load i128, ptr %i.d, align 16, !tbaa !26
  store ptr %i.d, ptr %i.a, align 8, !tbaa !24
  %.sroa.3.0.extract.shift = lshr i128 %.sroa.0.0.copyload.i8, 64 ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i128 %.sroa.3.0.extract.shift to i64 ; 2 uses
  %i.e = icmp eq i128 %.sroa.3.0.extract.shift, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %.sroa.3.0.extract.trunc to ptr ; 2 uses
  %i.g = and i64 %.sroa.017.0.extract.trunc, 4294967295 ; 2 uses
  %i.h = zext i32 %3 to i64                       ; 2 uses
  %i.i = add nuw nsw i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24, !noalias !369
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !27, !noalias !369
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 4
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp samesign ugt i64 %i.i, %i.r
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK8WasmEdge8Executor8Executor24getArrayStorageTypeByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %5) #24, !noalias !369
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !27, !noalias !369
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.g ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.h, 4               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i
  %i.x = tail call i128 @_ZNK8WasmEdge8Executor8Executor7packValERKNS_7ValTypeERKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %4) #24, !noalias !369 ; 9 uses
  %.not5.i.i.i.i = icmp eq i32 %3, 0
  br i1 %.not5.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.y = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.z = lshr exact i64 %i.y, 4
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.06.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i128 %i.x, ptr %.06.i.i.i.i.prol, align 16, !tbaa !26, !noalias !369
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !354

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.06.i.i.i.i.unr = phi ptr [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.prol ]
  %i.ac = icmp ult i64 %i.y, 112
  br i1 %i.ac, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  store i128 %i.x, ptr %.06.i.i.i.i, align 16, !tbaa !26, !noalias !369
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  store i128 %i.x, ptr %i.ad, align 16, !tbaa !26, !noalias !369
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  store i128 %i.x, ptr %i.ae, align 16, !tbaa !26, !noalias !369
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 48
  store i128 %i.x, ptr %i.af, align 16, !tbaa !26, !noalias !369
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 64
  store i128 %i.x, ptr %i.ag, align 16, !tbaa !26, !noalias !369
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 80
  store i128 %i.x, ptr %i.ah, align 16, !tbaa !26, !noalias !369
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 96
  store i128 %i.x, ptr %i.ai, align 16, !tbaa !26, !noalias !369
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 112
  store i128 %i.x, ptr %i.aj, align 16, !tbaa !26, !noalias !369
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.7 = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i.i.i.i.7, label %.critedge, label %.lr.ph.i.i.i.i, !llvm.loop !2

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sroa.612.0 = phi i32 [ 1033, %bb.b ], [ 1045, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !370
  store i32 %.sroa.612.0, ptr %12, align 4, !tbaa !26, !noalias !371
  %i.al = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.l, !noalias !372

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !372
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.al, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %12)
          to label %bb.e unwind label %bb.l, !noalias !372

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !372
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %12, align 4, !tbaa !26, !noalias !372
  %i.am = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 1033
  br i1 %i.am, label %bb.f, label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.an = inttoptr i64 %.sroa.3.0.extract.trunc to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !372
  %i.ao = and i64 %.sroa.017.0.extract.trunc, 4294967295
  %i.ap = zext i32 %3 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24, !noalias !372
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !27, !noalias !372
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 4
  %i.ay = and i64 %i.ax, 4294967295
  store i8 0, ptr %9, align 8, !tbaa !83, !noalias !372
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ao, ptr %i.az, align 8, !tbaa !84, !noalias !372
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ap, ptr %i.ba, align 8, !tbaa !85, !noalias !372
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !86, !noalias !372
  %i.bc = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.h, !noalias !372

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !372
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.h, !noalias !372

bb.g:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !372
  br label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %bb.f
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #23, !noalias !372
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !372
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !42, !noalias !372
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !43, !noalias !372
  %i.bj = zext i32 %i.bi to i64
  store i32 %i.bg, ptr %11, align 8, !tbaa !53, !noalias !372
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !54, !noalias !372
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.bl, i8 0, i64 49, i1 false), !noalias !372
  %i.bp = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc6.i.i.i.i.i.i.i unwind label %bb.l, !noalias !372

.noexc6.i.i.i.i.i.i.i:                            ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !372
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.i unwind label %bb.l, !noalias !372

bb.i:                                             ; preds = %.noexc6.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !372
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !55, !noalias !372 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !56, !noalias !372
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #22, !noalias !372
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !27, !noalias !372 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !25, !noalias !372
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #22, !noalias !372
  br label %bb.m

bb.l:                                             ; preds = %.noexc6.i.i.i.i.i.i.i, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23, !noalias !372
  unreachable

bb.m:                                             ; preds = %bb.k, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !372
  %i.cc = load i32, ptr %12, align 4, !tbaa !26, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !370
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !26
  br label %bb.n

end_hunk_0
begin_hunk_1_@_ZNK8WasmEdge8Executor8Executor18runArrayInitDataOpERNS_7Runtime12StackManagerEjjjRKNS_3AST11InstructionE:bb.a
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !56, !noalias !413
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #22, !noalias !413
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !27, !noalias !413 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !25, !noalias !413
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #22, !noalias !413
  br label %bb.n

bb.m:                                             ; preds = %.noexc10.i.i.i.i.i.i.i, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i, %.noexc
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #23, !noalias !413
  unreachable

bb.n:                                             ; preds = %bb.l, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !413
  %i.by = load i32, ptr %14, align 4, !tbaa !26, !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !410
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !26
  br label %bb.o

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  store i64 1, ptr %0, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  ret void

bb.p:                                             ; preds = %bb.b
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor13arrayInitDataERNS_7Runtime12StackManagerERKNS_10RefVariantEjjjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca i128, align 16              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1045, ptr %i.d, align 4, !tbaa !26
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = zext i32 %6 to i64
  %i.g = zext i32 %8 to i64                       ; 3 uses
  %i.h = add nuw nsw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 4
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp samesign ugt i64 %i.h, %i.q
  br i1 %i.r, label %bb.d, label %switch.lookup

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1033, ptr %i.s, align 4, !tbaa !26
  br label %bb.h

switch.lookup:                                    ; preds = %bb.c
  %i.t = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK8WasmEdge8Executor8Executor24getArrayStorageTypeByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %4) #24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 2, !tbaa !26
  %i.w = sext i8 %i.v to i64
  %i.x = getelementptr i8, ptr @switch.table._ZNK8WasmEdge8Executor8Executor13arrayInitDataERNS_7Runtime12StackManagerERKNS_10RefVariantEjjjjj, i64 %i.w
  %switch.gep = getelementptr i8, ptr %i.x, i64 -119
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i32
  %i.y = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor16getDataInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %5)
          to label %bb.e unwind label %bb.i       ; 3 uses

bb.e:                                             ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = zext i32 %7 to i64
  %i.aa = zext i8 %switch.load to i64             ; 3 uses
  %i.ab = mul nuw nsw i64 %i.aa, %i.g
  %i.ac = add nuw nsw i64 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1032, ptr %i.al, align 4, !tbaa !26
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNK8WasmEdge7Runtime8Instance12DataInstance9loadValueEmj.exit, %.preheader
  store i64 1, ptr %0, align 4
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader, %_ZNK8WasmEdge7Runtime8Instance12DataInstance9loadValueEmj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK8WasmEdge7Runtime8Instance12DataInstance9loadValueEmj.exit ], [ 0, %.preheader ] ; 2 uses
  %i.am = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.an = mul i32 %switch.ext, %i.am
  %i.ao = add i32 %i.an, %7
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, %i.aa
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !89 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %_ZNK8WasmEdge7Runtime8Instance12DataInstance9loadValueEmj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, i64 %i.aa, i1 false)
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i = load i128, ptr %.sroa.0.i, align 16, !tbaa !93 ; 2 uses
  %.sroa.08.0.extract.trunc.i = trunc i128 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i to i32
  %.sroa.3.0.extract.shift.i = lshr i128 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i128 %.sroa.3.0.extract.shift.i to i96
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZNK8WasmEdge7Runtime8Instance12DataInstance9loadValueEmj.exit

_ZNK8WasmEdge7Runtime8Instance12DataInstance9loadValueEmj.exit: ; preds = %.lr.ph, %bb.g
  %.sroa.08.0.i = phi i32 [ %.sroa.08.0.extract.trunc.i, %bb.g ], [ 0, %.lr.ph ]
  %.sroa.3.sroa.0.0.i = phi i96 [ %.sroa.3.0.extract.trunc.i, %bb.g ], [ undef, %.lr.ph ]
  %.sroa.3.0.insert.ext.i = zext i96 %.sroa.3.sroa.0.0.i to i128
  %.sroa.3.0.insert.shift.i = shl nuw i128 %.sroa.3.0.insert.ext.i, 32
  %.sroa.08.0.insert.ext.i = zext i32 %.sroa.08.0.i to i128
  %.sroa.08.0.insert.insert.i = or disjoint i128 %.sroa.3.0.insert.shift.i, %.sroa.08.0.insert.ext.i
  %i.ay = add i32 %6, %i.am
  %i.az = zext i32 %i.ay to i64
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.az
  store i128 %.sroa.08.0.insert.insert.i, ptr %i.bb, align 16, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !414

bb.h:                                             ; preds = %bb.f, %._crit_edge, %bb.d, %bb.b
  ret void

bb.i:                                             ; preds = %switch.lookup
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor18runArrayInitElemOpERNS_7Runtime12StackManagerEjjjRKNS_3AST11InstructionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoBoundary", align 8 ; 7 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoBoundary", align 8 ; 7 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 9 uses
  %14 = alloca %"class.WasmEdge::ErrCode", align 4 ; 7 uses
  %15 = alloca %"class.WasmEdge::Variant", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.c, align 16, !tbaa !26
  store ptr %i.c, ptr %i.a, align 8, !tbaa !24
  %.sroa.020.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i9 = load i128, ptr %i.d, align 16, !tbaa !26
  store ptr %i.d, ptr %i.a, align 8, !tbaa !24
  %.sroa.018.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i9 to i64 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -48 ; 2 uses
  %.sroa.0.0.copyload.i10 = load i128, ptr %i.e, align 16, !tbaa !26
  store ptr %i.e, ptr %i.a, align 8, !tbaa !24
  %.sroa.3.0.extract.shift = lshr i128 %.sroa.0.0.copyload.i10, 64 ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i128 %.sroa.3.0.extract.shift to i64 ; 2 uses
  %i.f = icmp eq i128 %.sroa.3.0.extract.shift, 0
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %.sroa.3.0.extract.trunc to ptr ; 2 uses
  %i.h = and i64 %.sroa.018.0.extract.trunc, 4294967295 ; 2 uses
  %i.i = zext i32 %3 to i64                       ; 3 uses
  %i.j = add nuw nsw i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !431
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !27, !noalias !431
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 4
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp samesign ugt i64 %i.j, %i.s
  br i1 %i.t, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK8WasmEdge8Executor8Executor24getArrayStorageTypeByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %4) #24, !noalias !431
  %i.v = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor16getElemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %5)
          to label %bb.d unwind label %bb.f, !noalias !431 ; 3 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96, !noalias !431 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97, !noalias !431
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 4
  %i.ae = and i64 %.sroa.020.0.extract.trunc, 4294967295 ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, %i.i
  %i.ag = icmp ugt i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.i, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
  %.not9.i.i = icmp eq i32 %3, 0
  br i1 %.not9.i.i, label %.critedge, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !27, !noalias !431
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.h
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.011.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.ah, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0710.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.ak, %.lr.ph.i.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull readonly align 16 dereferenceable(16) %.011.i.i, i64 16, i1 false), !tbaa.struct !28, !noalias !431
  %i.al = call i128 @_ZNK8WasmEdge8Executor8Executor7packValERKNS_7ValTypeERKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %15) #24, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !431
  store i128 %i.al, ptr %.0710.i.i, align 16, !tbaa !26, !noalias !431
  %i.am = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 16
  %.not.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #23, !noalias !431
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.713.0.ph = phi i32 [ 1033, %bb.b ], [ 1045, %bb.a ], [ 1031, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !432
  store i32 %.sroa.713.0.ph, ptr %14, align 4, !tbaa !26, !noalias !433
  %i.aq = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor16getElemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %5)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.ar = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.r, !noalias !434

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !434
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ar, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %14)
          to label %bb.h unwind label %bb.r, !noalias !434

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !434
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %14, align 4, !tbaa !26, !noalias !434 ; 2 uses
  %i.as = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 1033
  br i1 %i.as, label %bb.i, label %"_ZZZNK8WasmEdge8Executor8Executor18runArrayInitElemOpERNS_7Runtime12StackManagerEjjjRKNS_3AST11InstructionEENK3$_0clINS_7ErrCodeEEEDaT_ENKUlvE_clEv.exit.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %bb.h
  %i.at = inttoptr i64 %.sroa.3.0.extract.trunc to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !434
  %i.au = and i64 %.sroa.018.0.extract.trunc, 4294967295
  %i.av = zext i32 %3 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24, !noalias !434
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !27, !noalias !434
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = lshr exact i64 %i.bc, 4
  %i.be = and i64 %i.bd, 4294967295
  store i8 0, ptr %11, align 8, !tbaa !83, !noalias !434
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.au, ptr %i.bf, align 8, !tbaa !84, !noalias !434
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.av, ptr %i.bg, align 8, !tbaa !85, !noalias !434
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.be, ptr %i.bh, align 8, !tbaa !86, !noalias !434
  %i.bi = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.k, !noalias !434

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !434
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bi, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.j unwind label %bb.k, !noalias !434

bb.j:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !434
  %.val.i7.i.pr.i.i.i.i.i.i = load i32, ptr %14, align 4, !tbaa !26, !noalias !434
  br label %"_ZZZNK8WasmEdge8Executor8Executor18runArrayInitElemOpERNS_7Runtime12StackManagerEjjjRKNS_3AST11InstructionEENK3$_0clINS_7ErrCodeEEEDaT_ENKUlvE_clEv.exit.i.i.i.i.i.i.i"

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %bb.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #23, !noalias !434
  unreachable

"_ZZZNK8WasmEdge8Executor8Executor18runArrayInitElemOpERNS_7Runtime12StackManagerEjjjRKNS_3AST11InstructionEENK3$_0clINS_7ErrCodeEEEDaT_ENKUlvE_clEv.exit.i.i.i.i.i.i.i": ; preds = %bb.j, %bb.h
  %.val.i7.i.i.i.i.i.i.i = phi i32 [ %.val.i7.i.pr.i.i.i.i.i.i, %bb.j ], [ %.val.i.i.i.i.i.i.i.i, %bb.h ]
  %i.bl = icmp eq i32 %.val.i7.i.i.i.i.i.i.i, 1031
  br i1 %i.bl, label %bb.l, label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %"_ZZZNK8WasmEdge8Executor8Executor18runArrayInitElemOpERNS_7Runtime12StackManagerEjjjRKNS_3AST11InstructionEENK3$_0clINS_7ErrCodeEEEDaT_ENKUlvE_clEv.exit.i.i.i.i.i.i.i"
  %i.bm = getelementptr i8, ptr %i.aq, i64 24
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !434
  %i.bn = getelementptr i8, ptr %i.aq, i64 16
  %.val1.i8.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !noalias !434
  %i.bo = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i to i64
  %i.bp = ptrtoint ptr %.val1.i8.i.i.i.i.i.i.i to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !434
  %i.bs = and i64 %.sroa.020.0.extract.trunc, 4294967295
  %i.bt = zext i32 %3 to i64
  %i.bu = and i64 %i.br, 4294967295
  store i8 0, ptr %9, align 8, !tbaa !83, !noalias !434
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bs, ptr %i.bv, align 8, !tbaa !84, !noalias !434
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.bt, ptr %i.bw, align 8, !tbaa !85, !noalias !434
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.bu, ptr %i.bx, align 8, !tbaa !86, !noalias !434
  %i.by = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i9.i.i.i.i.i.i.i unwind label %bb.n, !noalias !434

.noexc.i.i9.i.i.i.i.i.i.i:                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !434
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.by, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.n, !noalias !434

bb.m:                                             ; preds = %.noexc.i.i9.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !434
  br label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc.i.i9.i.i.i.i.i.i.i, %bb.l
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #23, !noalias !434
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %"_ZZZNK8WasmEdge8Executor8Executor18runArrayInitElemOpERNS_7Runtime12StackManagerEjjjRKNS_3AST11InstructionEENK3$_0clINS_7ErrCodeEEEDaT_ENKUlvE_clEv.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !434
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !42, !noalias !434
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ce = load i32, ptr %i.cd, align 16, !tbaa !43, !noalias !434
  %i.cf = zext i32 %i.ce to i64
  store i32 %i.cc, ptr %13, align 8, !tbaa !53, !noalias !434
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !54, !noalias !434
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ch, i8 0, i64 49, i1 false), !noalias !434
  %i.cl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc10.i.i.i.i.i.i.i unwind label %bb.r, !noalias !434
end_hunk_1
