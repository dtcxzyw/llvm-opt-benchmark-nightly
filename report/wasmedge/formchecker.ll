Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/formchecker?download=true
inline.NumInlined: 4832
inline.NumDeleted: 1344
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8WasmEdge9Validator11FormChecker10VTypeToASTERKSt8optionalINS_7ValTypeEE:bb.a
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i64, ptr %1, align 4
  %spec.select = select i1 %i.c, i64 %i.d, i64 1082064896
  ret i64 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge9Validator11FormChecker8pushCtrlEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_PKNS_3AST11InstructionENS_6OpCodeE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"struct.cxx20::span.45", align 8   ; 4 uses
  %8 = alloca %"struct.cxx20::span.45", align 8   ; 3 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  store ptr %1, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %2, ptr %i.e, align 8
  store ptr %3, ptr %8, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %4, ptr %i.f, align 8
  store ptr %5, ptr %i.a, align 8, !tbaa !103
  store i32 %6, ptr %i.b, align 4, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 12
  store i64 %i.o, ptr %i.c, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  store i64 %i.w, ptr %i.d, align 8, !tbaa !106
  %i.x = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN8WasmEdge9Validator11FormChecker9CtrlFrameESaIS3_EE12emplace_backIJRN5cxx204spanIKNS0_7ValTypeELm18446744073709551615EEESC_RPKNS0_3AST11InstructionEmmRNS0_6OpCodeEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.y = load ptr, ptr %7, align 8, !tbaa !108
  %i.z = load i64, ptr %i.e, align 8, !tbaa !109
  call void @_ZN8WasmEdge9Validator11FormChecker9pushTypesEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr %i.y, i64 %i.z)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge9Validator11FormChecker11checkInstrsEN5cxx204spanIKNS_3AST11InstructionELm18446744073709551615EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %2, i64 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 11 uses
  %6 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %.idx = shl nuw nsw i64 %3, 5
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not24 = icmp eq i64 %3, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.01225 = phi ptr [ %2, %.lr.ph ], [ %i.x, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %6, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 16 dereferenceable(26) %.01225)
  %.val = load i8, ptr %6, align 4, !tbaa !119, !range !139, !noundef !140
  %.val13 = load i32, ptr %i.b, align 4
  %i.c = trunc nuw i8 %.val to i1
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.01225, i64 16
  %.val.val.i.i = load i32, ptr %i.d, align 16, !tbaa !314, !noalias !315
  %i.e = getelementptr i8, ptr %.01225, i64 20
  %.val.val4.i.i = load i32, ptr %i.e, align 4, !tbaa !143, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !316
  %i.f = zext i32 %.val.val.i.i to i64
  store i32 %.val.val4.i.i, ptr %5, align 8, !tbaa !150, !noalias !316
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !317, !noalias !316
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i8 0, i64 49, i1 false), !noalias !316
  %i.l = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i.i.i.i.i.i, !noalias !316

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !316
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.3, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %5)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i.i.i.i.i.i, !noalias !316

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !316
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !31, !noalias !316 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !32, !noalias !316
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #22, !noalias !316
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !151, !noalias !316 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !152, !noalias !316
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #22, !noalias !316
  br label %bb.g

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %5) #25, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !316
  resume { ptr, i32 } %i.w

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.x = getelementptr inbounds nuw i8, ptr %.01225, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.val13, ptr %i.y, align 4, !tbaa !101
  br label %bb.h

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store i64 1, ptr %0, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 16 dereferenceable(26) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cxx20::expected.129", align 4 ; 10 uses
  %4 = alloca %"class.cxx20::expected.129", align 4 ; 10 uses
  %5 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %6 = alloca %"class.cxx20::expected.129", align 4 ; 10 uses
  %7 = alloca %"class.cxx20::expected.129", align 4 ; 10 uses
  %8 = alloca %"class.cxx20::expected.129", align 4 ; 14 uses
  %9 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %10 = alloca %class.anon.104, align 8           ; 104 uses
  %11 = alloca %"class.std::vector.20", align 8   ; 7 uses
  %12 = alloca %"class.cxx20::expected.114", align 8 ; 7 uses
  %13 = alloca %"class.cxx20::expected.129", align 4 ; 7 uses
  %14 = alloca %"class.cxx20::expected", align 4  ; 7 uses
  %15 = alloca %"class.cxx20::expected", align 4  ; 7 uses
  %16 = alloca %"class.cxx20::expected.142", align 4 ; 8 uses
  %17 = alloca %"class.std::vector.20", align 8   ; 12 uses
  %18 = alloca %"class.WasmEdge::ValType", align 4 ; 8 uses
  %19 = alloca %"class.cxx20::expected.155", align 8 ; 9 uses
  %20 = alloca %"class.cxx20::expected", align 4  ; 7 uses
  %21 = alloca %"class.cxx20::expected.155", align 8 ; 9 uses
  %22 = alloca %"struct.WasmEdge::Validator::FormChecker::CtrlFrame", align 8 ; 13 uses
  %23 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %24 = alloca %"class.cxx20::expected.168", align 8 ; 7 uses
  %25 = alloca %"class.std::vector.20", align 8   ; 10 uses
  %26 = alloca %"class.cxx20::expected", align 4  ; 7 uses
  %27 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %28 = alloca %"class.cxx20::expected.155", align 8 ; 9 uses
  %29 = alloca %"struct.WasmEdge::Validator::FormChecker::CtrlFrame", align 16 ; 13 uses
  %30 = alloca %"class.cxx20::expected.142", align 4 ; 6 uses
  %31 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %32 = alloca %"class.cxx20::expected.142", align 4 ; 6 uses
  %33 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %34 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %35 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %36 = alloca %"class.cxx20::expected.142", align 4 ; 7 uses
  %37 = alloca %"class.cxx20::expected.142", align 4 ; 10 uses
  %38 = alloca %"class.std::vector.40", align 8   ; 12 uses
  %39 = alloca %"class.std::allocator.42", align 1 ; 4 uses
  %40 = alloca %"class.cxx20::expected.129", align 4 ; 3 uses
  %41 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %42 = alloca %"class.cxx20::expected.142", align 4 ; 6 uses
  %43 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %44 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %45 = alloca %"class.cxx20::expected.142", align 4 ; 7 uses
  %46 = alloca %"class.std::vector.20", align 8   ; 12 uses
  %47 = alloca %"class.std::allocator.22", align 1 ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %48 = alloca %"class.cxx20::expected", align 4  ; 7 uses
  %49 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %50 = alloca %"class.cxx20::unexpected", align 4 ; 4 uses
  %51 = alloca %"class.WasmEdge::ErrCode", align 4 ; 2 uses
  %52 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %53 = alloca %"class.WasmEdge::ValType", align 4 ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %54 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %55 = alloca %"class.cxx20::expected.168", align 8 ; 6 uses
  %56 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %57 = alloca %"struct.WasmEdge::ErrInfo::InfoForbidIndex", align 4 ; 6 uses
  %58 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %59 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %60 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %61 = alloca %"class.WasmEdge::ValType", align 4 ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %62 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %63 = alloca %"class.cxx20::expected.168", align 8 ; 6 uses
  %64 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %65 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %66 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %67 = alloca %"class.cxx20::expected.168", align 8 ; 7 uses
  %68 = alloca %"class.std::vector.20", align 8   ; 11 uses
  %69 = alloca %"class.WasmEdge::ValType", align 4 ; 8 uses
  %70 = alloca %"class.cxx20::expected.168", align 8 ; 6 uses
  %71 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %72 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %73 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %74 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %75 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %76 = alloca %"class.cxx20::expected.129", align 4 ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %77 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %78 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %79 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %80 = alloca [2 x %"class.WasmEdge::ValType"], align 4 ; 11 uses
  %81 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %82 = alloca %"class.cxx20::expected.129", align 4 ; 7 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %83 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %84 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %85 = alloca %"class.cxx20::expected.168", align 8 ; 7 uses
  %86 = alloca %"class.std::vector.20", align 8   ; 12 uses
  %87 = alloca %"class.WasmEdge::ValType", align 8 ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %88 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %89 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 8 uses
  %90 = alloca %"class.cxx20::expected.168", align 8 ; 6 uses
  %91 = alloca %"class.cxx20::unexpected", align 4 ; 4 uses
  %92 = alloca %"class.WasmEdge::ErrCode", align 4 ; 2 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %93 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 12 uses
  %94 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 5 uses
  %95 = alloca %"class.cxx20::expected.168", align 8 ; 6 uses
  %96 = alloca %"class.cxx20::unexpected", align 4 ; 4 uses
  %97 = alloca %"class.WasmEdge::ErrCode", align 4 ; 2 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %98 = alloca [2 x %"class.WasmEdge::ValType"], align 4 ; 8 uses
  %99 = alloca %"class.cxx20::expected.168", align 8 ; 7 uses
  %100 = alloca [2 x %"class.WasmEdge::ValType"], align 8 ; 8 uses
  %101 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %102 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %103 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %104 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %105 = alloca %"class.std::vector.20", align 8  ; 10 uses
  %106 = alloca %"class.WasmEdge::ValType", align 8 ; 5 uses
  %107 = alloca %"class.std::allocator.22", align 1 ; 4 uses
  %108 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 8 uses
  %109 = alloca %"class.cxx20::expected.168", align 8 ; 6 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %110 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %111 = alloca [2 x %"class.WasmEdge::ValType"], align 4 ; 11 uses
  %112 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %113 = alloca [4 x %"class.WasmEdge::ValType"], align 4 ; 19 uses
  %114 = alloca %"class.cxx20::expected.168", align 8 ; 7 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %115 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %116 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %117 = alloca [2 x %"class.WasmEdge::ValType"], align 4 ; 11 uses
  %118 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %119 = alloca [4 x %"class.WasmEdge::ValType"], align 4 ; 19 uses
  %120 = alloca %"class.cxx20::expected.168", align 8 ; 6 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %121 = alloca [2 x %"class.WasmEdge::ValType"], align 4 ; 11 uses
  %122 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %123 = alloca %"class.cxx20::expected.168", align 8 ; 7 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %124 = alloca %"class.std::vector.20", align 8  ; 10 uses
  %125 = alloca %"class.WasmEdge::ValType", align 4 ; 8 uses
  %126 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %127 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %128 = alloca %"class.cxx20::expected.168", align 8 ; 7 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %129 = alloca %"class.cxx20::expected.168", align 8 ; 7 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %130 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %131 = alloca [5 x %"class.WasmEdge::ValType"], align 4 ; 23 uses
  %132 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %133 = alloca %"class.cxx20::expected.129", align 4 ; 7 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %134 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %135 = alloca %"class.WasmEdge::ValType", align 8 ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %136 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %137 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %138 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %139 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %140 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %141 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %142 = alloca %"class.cxx20::expected.142", align 4 ; 7 uses
  %143 = alloca %"class.std::vector.20", align 8  ; 13 uses
  %144 = alloca %"class.std::allocator.22", align 1 ; 4 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %145 = alloca %"class.WasmEdge::ValType", align 8 ; 6 uses
  %i.ad = alloca i32, align 4                     ; 5 uses
  %146 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %147 = alloca %"class.cxx20::expected", align 4 ; 7 uses
  %148 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %149 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %150 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %151 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %152 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %153 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %154 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %155 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %156 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %157 = alloca %"class.cxx20::expected.129", align 4 ; 7 uses
  %158 = alloca %"class.cxx20::expected.129", align 4 ; 7 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %159 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %160 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %161 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %i.ah = alloca i32, align 4                     ; 4 uses
  %162 = alloca %"class.WasmEdge::ValType", align 8 ; 4 uses
  %163 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %164 = alloca %"class.cxx20::unexpected", align 4 ; 4 uses
  %165 = alloca %"class.WasmEdge::ErrCode", align 4 ; 2 uses
  %i.ai = alloca i32, align 4                     ; 4 uses
  %166 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %i.aj = alloca i32, align 4                     ; 4 uses
  %167 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %168 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %169 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %170 = alloca %"class.cxx20::unexpected", align 4 ; 4 uses
  %171 = alloca %"class.WasmEdge::ErrCode", align 4 ; 2 uses
  %172 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %173 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %174 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %175 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %176 = alloca [1 x %"class.WasmEdge::ValType"], align 8 ; 4 uses
  %177 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %178 = alloca [2 x %"class.WasmEdge::ValType"], align 4 ; 8 uses
  %179 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %180 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %i.am = alloca i32, align 4                     ; 4 uses
  %181 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %182 = alloca [3 x %"class.WasmEdge::ValType"], align 4 ; 15 uses
  %183 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %184 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %185 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %186 = alloca %"struct.WasmEdge::ErrInfo::InfoMismatch", align 8 ; 10 uses
  %187 = alloca [3 x %"class.WasmEdge::ValType"], align 4 ; 15 uses
  %188 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %189 = alloca [2 x %"class.WasmEdge::ValType"], align 8 ; 8 uses
  %190 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %191 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %192 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %193 = alloca %"class.cxx20::expected", align 4 ; 6 uses
  %194 = alloca [3 x %"class.WasmEdge::ValType"], align 4 ; 12 uses
  %195 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %196 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %197 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %198 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %199 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
  %200 = alloca [1 x %"class.WasmEdge::ValType"], align 4 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionE:bb.a
  %i.qe = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  br label %bb.de

.critedge1403:                                    ; preds = %.critedge1401
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.qh = trunc i64 %.sroa.3.0.i1891 to i32       ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !24
  %i.ql = load ptr, ptr %i.qi, align 8, !tbaa !23
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = sdiv exact i64 %i.qo, 12
  %i.qq = load ptr, ptr %i.pa, align 8, !tbaa !27
  %i.qr = getelementptr inbounds nuw [80 x i8], ptr %i.qq, i64 %i.po ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 56
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !167
  %i.qu = sub i64 %i.qp, %i.qt
  %i.qv = trunc i64 %i.qu to i32
  %i.qw = add i32 %i.qv, %i.qh
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.qw, ptr %i.qx, align 4, !tbaa !366
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.qh, ptr %i.qy, align 8, !tbaa !367
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !168
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %2 to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = lshr exact i64 %i.rd, 5
  %i.rf = trunc i64 %i.re to i32
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.rf, ptr %i.rg, align 4, !tbaa !368
  call void @_ZN8WasmEdge9Validator11FormChecker9pushTypesEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %.sink4.i1889, i64 %.sroa.3.0.i1891)
  store i64 1, ptr %0, align 4
  br label %bb.de

bb.de:                                            ; preds = %.critedge1403, %bb.dd, %bb.dc, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %_ZN8WasmEdge9Validator11FormChecker10StackTransEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_.exit2144

bb.df:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  call void @_ZN8WasmEdge9Validator11FormChecker7popTypeENS_7ValTypeE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.129") align 4 %35, ptr noundef nonnull align 8 dereferenceable(376) %1, i64 1082064896)
  %i.rh = load i8, ptr %35, align 4, !tbaa !160, !range !139, !noundef !140
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %.critedge1405, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rj = getelementptr inbounds nuw i8, ptr %35, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.rk, ptr %i.rl, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  br label %_ZN8WasmEdge9Validator11FormChecker10StackTransEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_.exit2144

.critedge1405:                                    ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  %i.rm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !101 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.rp = load i8, ptr %i.ro, align 1
  %i.rq = trunc i8 %i.rp to i1
  %i.rr = load i32, ptr %2, align 16
  %i.rs = add i32 %i.rr, -1
  %i.rt = select i1 %i.rq, i32 %i.rs, i32 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  %i.ru = zext i32 %i.rt to i64                   ; 2 uses
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.ru ; 4 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !369
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 7 uses
  %.val1545.val = load ptr, ptr %i.rx, align 8, !tbaa !27
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %.val1545.val1552 = load ptr, ptr %i.ry, align 8, !tbaa !28
  call fastcc void @"_ZZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionEENK3$_7clEj"(ptr dead_on_unwind noalias writable align 4 %36, ptr %.val1545.val, ptr %.val1545.val1552, i32 noundef %i.rw)
  %i.rz = load i8, ptr %36, align 4, !tbaa !162, !range !139, !noundef !140
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.critedge1405
  %i.sb = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !101
  br label %bb.ec

bb.di:                                            ; preds = %.critedge1405
  %i.se = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 4 dereferenceable(8) %36)
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !123
  %i.sg = zext i32 %i.sf to i64                   ; 4 uses
  %i.sh = load ptr, ptr %i.rx, align 8, !tbaa !27 ; 2 uses
  %i.si = getelementptr inbounds nuw [80 x i8], ptr %i.sh, i64 %i.sg ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 76
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !164 ; 2 uses
  %i.sl = icmp eq i32 %i.sk, 3                    ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8            ; 2 uses
  %i.so = load ptr, ptr %i.si, align 8            ; 2 uses
  %.sink6.i1896 = select i1 %i.sl, i64 8, i64 32
  %.sink4.i1897 = select i1 %i.sl, ptr %i.so, ptr %i.sn ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sink6.i1896
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !38
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = ptrtoint ptr %.sink4.i1897 to i64
  %i.st = sub i64 %i.sr, %i.ss
  %.sroa.3.0.i1899 = ashr exact i64 %i.st, 3      ; 5 uses
  %.not13593584.not = icmp eq i32 %i.rt, 0
  br i1 %.not13593584.not, label %.critedge1411, label %.lr.ph3586

.lr.ph3586:                                       ; preds = %bb.di
  %i.su = getelementptr inbounds nuw i8, ptr %40, i64 4 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.sx = ptrtoint ptr %2 to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  %i.ta = trunc i64 %.sroa.3.0.i1899 to i32       ; 3 uses
  %.not13533581 = icmp eq i32 %i.ta, 0
  %i.tb = and i64 %.sroa.3.0.i1899, 4294967295
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph3586, %bb.dw
  %indvars.iv3604 = phi i64 [ 0, %.lr.ph3586 ], [ %indvars.iv.next3605, %bb.dw ] ; 2 uses
  %i.tc = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %indvars.iv3604 ; 4 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  %.val1544.val = load ptr, ptr %i.rx, align 8, !tbaa !27
  %.val1544.val1553 = load ptr, ptr %i.ry, align 8, !tbaa !28
  call fastcc void @"_ZZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionEENK3$_7clEj"(ptr dead_on_unwind noalias writable align 4 %37, ptr %.val1544.val, ptr %.val1544.val1553, i32 noundef %i.td)
  %i.te = load i8, ptr %37, align 4, !tbaa !162, !range !139, !noundef !140
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %bb.dk, label %.critedge1409

.critedge1409:                                    ; preds = %bb.dj
  %i.tg = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.th, ptr %i.ti, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  br label %bb.ec

bb.dk:                                            ; preds = %bb.dj
  %i.tj = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 4 dereferenceable(8) %37)
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !123
  %i.tl = zext i32 %i.tk to i64                   ; 2 uses
  %i.tm = load ptr, ptr %i.rx, align 8, !tbaa !27
  %i.tn = getelementptr inbounds nuw [80 x i8], ptr %i.tm, i64 %i.tl ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 76
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !164
  %i.tq = icmp eq i32 %i.tp, 3                    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = load ptr, ptr %i.tn, align 8
  %.sink6.i1902 = select i1 %i.tq, i64 8, i64 32
  %.sink4.i1903 = select i1 %i.tq, ptr %i.tt, ptr %i.ts ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tn, i64 %.sink6.i1902
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !38
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = ptrtoint ptr %.sink4.i1903 to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %.sroa.3.0.i1905 = ashr exact i64 %i.ty, 3      ; 2 uses
  %.not1352 = icmp eq i64 %.sroa.3.0.i1899, %.sroa.3.0.i1905
  br i1 %.not1352, label %bb.dl, label %.critedge1503

.critedge1503:                                    ; preds = %bb.dk
  %.val1576.val = load ptr, ptr %1, align 8, !tbaa !42
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1576.val1579 = load ptr, ptr %i.tz, align 8, !tbaa !43
  call fastcc void @"_ZZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionEENK4$_10clEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEESB_"(ptr dead_on_unwind noalias writable align 4 %0, ptr %.val1576.val, ptr %.val1576.val1579, ptr %.sink4.i1897, i64 %.sroa.3.0.i1899, ptr %.sink4.i1903, i64 %.sroa.3.0.i1905)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  br label %bb.ec

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  invoke void @_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %38, i64 noundef %.sroa.3.0.i1899, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  br i1 %.not13533581, label %.critedge1407, label %.lr.ph3583

bb.dn:                                            ; preds = %bb.dl
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  br label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit1910

.lr.ph3583:                                       ; preds = %bb.dm, %bb.ds
  %indvars.iv = phi i64 [ %i.ub, %bb.ds ], [ %i.tb, %bb.dm ]
  %i.ub = add nsw i64 %indvars.iv, -1             ; 4 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %.sink4.i1903, i64 %i.ub
  %.sroa.0945.0.copyload = load i64, ptr %i.uc, align 4, !tbaa !101
  invoke void @_ZN8WasmEdge9Validator11FormChecker7popTypeENS_7ValTypeE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.129") align 4 %40, ptr noundef nonnull align 8 dereferenceable(376) %1, i64 %.sroa.0945.0.copyload)
          to label %bb.do unwind label %bb.dt

bb.do:                                            ; preds = %.lr.ph3583
  %i.ud = load i8, ptr %40, align 4, !range !139, !noundef !140
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.dp, label %.critedge1505

bb.dp:                                            ; preds = %bb.do
  %i.uf = load ptr, ptr %i.ry, align 8, !tbaa !175
  %i.ug = getelementptr inbounds i8, ptr %i.uf, i64 -8
  %i.uh = load i8, ptr %i.ug, align 8, !tbaa !170, !range !139, !noundef !140
  %i.ui = trunc nuw i8 %i.uh to i1
  %i.uj = load ptr, ptr %38, align 8, !tbaa !23
  %i.uk = getelementptr inbounds nuw [12 x i8], ptr %i.uj, i64 %i.ub ; 2 uses
  br i1 %i.ui, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %.sroa.4943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  store i8 0, ptr %.sroa.4943.0..sroa_idx, align 4
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.uk, ptr noundef nonnull align 4 dereferenceable(12) %i.su, i64 12, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %.not1353.wide = icmp eq i64 %i.ub, 0
  br i1 %.not1353.wide, label %.critedge1407, label %.lr.ph3583, !llvm.loop !318

bb.dt:                                            ; preds = %.lr.ph3583
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.critedge1407:                                    ; preds = %bb.ds, %bb.dm
  %i.um = load ptr, ptr %i.sw, align 8, !tbaa !24
  %i.un = load ptr, ptr %i.sv, align 8, !tbaa !23
  %i.uo = ptrtoint ptr %i.um to i64
  %i.up = ptrtoint ptr %i.un to i64
  %i.uq = sub i64 %i.uo, %i.up
  %i.ur = sdiv exact i64 %i.uq, 12
  %i.us = load ptr, ptr %i.rx, align 8, !tbaa !27
  %i.ut = getelementptr inbounds nuw [80 x i8], ptr %i.us, i64 %i.tl ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 56
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !167
  %i.uw = sub i64 %i.ur, %i.uv
  %i.ux = trunc i64 %i.uw to i32
  %i.uy = add i32 %i.ux, %i.ta
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  store i32 %i.uy, ptr %i.uz, align 4, !tbaa !366
  %i.va = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store i32 %i.ta, ptr %i.va, align 4, !tbaa !367
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 48
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !168
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = sub i64 %i.vd, %i.sx
  %i.vf = lshr exact i64 %i.ve, 5
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  store i32 %i.vg, ptr %i.vh, align 4, !tbaa !368
  %i.vi = load ptr, ptr %38, align 8, !tbaa !23   ; 2 uses
  %i.vj = load ptr, ptr %i.sy, align 8, !tbaa !24
  %i.vk = ptrtoint ptr %i.vj to i64
  %i.vl = ptrtoint ptr %i.vi to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = sdiv exact i64 %i.vm, 12
  invoke void @_ZN8WasmEdge9Validator11FormChecker9pushTypesEN5cxx204spanIKSt8optionalINS_7ValTypeEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %i.vi, i64 %i.vn)
          to label %bb.du unwind label %bb.dx

bb.du:                                            ; preds = %.critedge1407
  %i.vo = load ptr, ptr %38, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i1908 = icmp eq ptr %i.vo, null
  br i1 %.not.i.i.i1908, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vp = load ptr, ptr %i.sz, align 8, !tbaa !176
  %i.vq = ptrtoint ptr %i.vp to i64
  %i.vr = ptrtoint ptr %i.vo to i64
  %i.vs = sub i64 %i.vq, %i.vr
  call void @_ZdlPvm(ptr noundef nonnull %i.vo, i64 noundef %i.vs) #22
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  %indvars.iv.next3605 = add nuw nsw i64 %indvars.iv3604, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next3605, %i.ru
  br i1 %exitcond.not, label %.critedge1411.loopexit, label %bb.dj, !llvm.loop !319

bb.dx:                                            ; preds = %.critedge1407
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dt
  %.pn1356 = phi { ptr, i32 } [ %i.vt, %bb.dx ], [ %i.ul, %bb.dt ] ; 2 uses
  %i.vu = load ptr, ptr %38, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i1909 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i1909, label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit1910, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vv = load ptr, ptr %i.sz, align 8, !tbaa !176
  %i.vw = ptrtoint ptr %i.vv to i64
  %i.vx = ptrtoint ptr %i.vu to i64
  %i.vy = sub i64 %i.vw, %i.vx
  call void @_ZdlPvm(ptr noundef nonnull %i.vu, i64 noundef %i.vy) #22
  br label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit1910

_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit1910: ; preds = %bb.dz, %bb.dy, %bb.dn
  %.pn1356.pn = phi { ptr, i32 } [ %i.ua, %bb.dn ], [ %.pn1356, %bb.dy ], [ %.pn1356, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.zw

.critedge1505:                                    ; preds = %bb.do
  %i.vz = load i32, ptr %i.su, align 4
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.vz, ptr %i.wa, align 4, !tbaa !101
  %i.wb = load ptr, ptr %38, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i1911 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i.i1911, label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit1912, label %bb.ea

bb.ea:                                            ; preds = %.critedge1505
  %i.wc = load ptr, ptr %i.sz, align 8, !tbaa !176
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = ptrtoint ptr %i.wb to i64
  %i.wf = sub i64 %i.wd, %i.we
  call void @_ZdlPvm(ptr noundef nonnull %i.wb, i64 noundef %i.wf) #22
  br label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit1912

_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit1912: ; preds = %.critedge1505, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  br label %bb.ec

.critedge1411.loopexit:                           ; preds = %bb.dw
  %.pre3632 = load ptr, ptr %i.rx, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert3633 = getelementptr inbounds nuw [80 x i8], ptr %.pre3632, i64 %i.sg ; 3 uses
  %.phi.trans.insert3634 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert3633, i64 76
  %.pre3635 = load i32, ptr %.phi.trans.insert3634, align 4, !tbaa !164
  %.phi.trans.insert3636 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert3633, i64 24
  %.pre3637 = load ptr, ptr %.phi.trans.insert3636, align 8
  %.pre3638 = load ptr, ptr %.phi.trans.insert3633, align 8
  br label %.critedge1411

.critedge1411:                                    ; preds = %.critedge1411.loopexit, %bb.di
  %i.wg = phi ptr [ %.pre3638, %.critedge1411.loopexit ], [ %i.so, %bb.di ]
  %i.wh = phi ptr [ %.pre3637, %.critedge1411.loopexit ], [ %i.sn, %bb.di ]
  %i.wi = phi i32 [ %.pre3635, %.critedge1411.loopexit ], [ %i.sk, %bb.di ]
  %i.wj = phi ptr [ %.pre3632, %.critedge1411.loopexit ], [ %i.sh, %bb.di ]
  %i.wk = getelementptr inbounds nuw [80 x i8], ptr %i.wj, i64 %i.sg
  %i.wl = icmp eq i32 %i.wi, 3                    ; 2 uses
  %.sink6.i1913 = select i1 %i.wl, i64 8, i64 32
  %.sink4.i1914 = select i1 %i.wl, ptr %i.wg, ptr %i.wh ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.sink6.i1913
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !38
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %.sink4.i1914 to i64
  %i.wq = sub i64 %i.wo, %i.wp
  %.sroa.3.0.i1916 = ashr exact i64 %i.wq, 3      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  call void @_ZN8WasmEdge9Validator11FormChecker8popTypesEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %41, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %.sink4.i1914, i64 %.sroa.3.0.i1916)
  %i.wr = load i8, ptr %41, align 4, !tbaa !119, !range !139, !noundef !140
  %i.ws = trunc nuw i8 %i.wr to i1
  br i1 %i.ws, label %.critedge1413, label %bb.eb

bb.eb:                                            ; preds = %.critedge1411
  %i.wt = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  br label %bb.ec

.critedge1413:                                    ; preds = %.critedge1411
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %i.ww = trunc i64 %.sroa.3.0.i1916 to i32       ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !24
  %i.xa = load ptr, ptr %i.wx, align 8, !tbaa !23
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = sub i64 %i.xb, %i.xc
  %i.xe = sdiv exact i64 %i.xd, 12
  %i.xf = load ptr, ptr %i.rx, align 8, !tbaa !27
  %i.xg = getelementptr inbounds nuw [80 x i8], ptr %i.xf, i64 %i.sg ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 56
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !167
  %i.xj = sub i64 %i.xe, %i.xi
  %i.xk = trunc i64 %i.xj to i32
  %i.xl = add i32 %i.xk, %i.ww
  %i.xm = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  store i32 %i.xl, ptr %i.xm, align 4, !tbaa !366
  %i.xn = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  store i32 %i.ww, ptr %i.xn, align 4, !tbaa !367
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xg, i64 48
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !168
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = ptrtoint ptr %2 to i64
  %i.xs = sub i64 %i.xq, %i.xr
  %i.xt = lshr exact i64 %i.xs, 5
  %i.xu = trunc i64 %i.xt to i32
  %i.xv = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  store i32 %i.xu, ptr %i.xv, align 4, !tbaa !368
  call void @_ZN8WasmEdge9Validator11FormChecker11unreachableEv(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(376) %1)
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit1912, %.critedge1503, %.critedge1409, %bb.eb, %.critedge1413, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %_ZN8WasmEdge9Validator11FormChecker10StackTransEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_.exit2144

bb.ed:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  %i.xw = load i32, ptr %2, align 16, !tbaa !369
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %.val1543.val = load ptr, ptr %i.xx, align 8, !tbaa !27
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.val1543.val1554 = load ptr, ptr %i.xy, align 8, !tbaa !28
  call fastcc void @"_ZZN8WasmEdge9Validator11FormChecker10checkInstrERKNS_3AST11InstructionEENK3$_7clEj"(ptr dead_on_unwind noalias writable align 4 %42, ptr %.val1543.val, ptr %.val1543.val1554, i32 noundef %i.xw)
  %i.xz = load i8, ptr %42, align 4, !tbaa !162, !range !139, !noundef !140
  %i.ya = trunc nuw i8 %i.xz to i1
  br i1 %i.ya, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.yb = getelementptr inbounds nuw i8, ptr %42, i64 4
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.yc, ptr %i.yd, align 4, !tbaa !101
  br label %bb.ep

bb.ef:                                            ; preds = %bb.ed
  %i.ye = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 4 dereferenceable(8) %42)
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !123
  %i.yg = zext i32 %i.yf to i64                   ; 2 uses
  %i.yh = load ptr, ptr %i.xx, align 8, !tbaa !27
  %i.yi = getelementptr inbounds nuw [80 x i8], ptr %i.yh, i64 %i.yg ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 76
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !164
  %i.yl = icmp eq i32 %i.yk, 3                    ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %i.yn = load ptr, ptr %i.ym, align 8
  %i.yo = load ptr, ptr %i.yi, align 8
  %.sink6.i1919 = select i1 %i.yl, i64 8, i64 32
  %.sink4.i1920 = select i1 %i.yl, ptr %i.yo, ptr %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yi, i64 %.sink6.i1919
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !38
  %i.yr = ptrtoint ptr %i.yq to i64
  %i.ys = ptrtoint ptr %.sink4.i1920 to i64
  %i.yt = sub i64 %i.yr, %i.ys
  %.sroa.3.0.i1922 = ashr exact i64 %i.yt, 3      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  call void @_ZN8WasmEdge9Validator11FormChecker7popTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.129") align 4 %43, ptr noundef nonnull align 8 dereferenceable(376) %1)
  %i.yu = load i8, ptr %43, align 4, !tbaa !160, !range !139, !noundef !140
  %i.yv = trunc nuw i8 %i.yu to i1
  br i1 %i.yv, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.yw = getelementptr inbounds nuw i8, ptr %43, i64 4
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.yx, ptr %i.yy, align 4, !tbaa !101
  br label %bb.eo

bb.eh:                                            ; preds = %bb.ef
  %i.yz = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNR5cxx208expectedISt8optionalIN8WasmEdge7ValTypeEENS2_7ErrCodeEE5valueEv(ptr noundef nonnull align 4 dereferenceable(16) %43) ; 2 uses
  %.sroa.03399.0.copyload = load i64, ptr %i.yz, align 4 ; 2 uses
  %.sroa.03399.sroa.4.0.extract.shift = lshr i64 %.sroa.03399.0.copyload, 16
  %.sroa.03399.sroa.4.0.extract.trunc = trunc i64 %.sroa.03399.sroa.4.0.extract.shift to i8 ; 2 uses
  %.sroa.73403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %.sroa.73403.0.copyload = load i8, ptr %.sroa.73403.0..sroa_idx, align 4
  %i.za = trunc nuw i8 %.sroa.73403.0.copyload to i1 ; 2 uses
  %i.zb = add i8 %.sroa.03399.sroa.4.0.extract.trunc, -101
  %switch.i = icmp ult i8 %i.zb, -2
  %or.cond.not = select i1 %i.za, i1 %switch.i, i1 false
  br i1 %or.cond.not, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 546, ptr %i.a, align 4, !tbaa !111
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrCode5ValueEEEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 546, ptr %i.zc, align 4, !tbaa !101
  br label %bb.eo

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  call void @_ZN8WasmEdge9Validator11FormChecker8popTypesEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %44, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr %.sink4.i1920, i64 %.sroa.3.0.i1922)
  %i.zd = load i8, ptr %44, align 4, !tbaa !119, !range !139, !noundef !140
  %i.ze = trunc nuw i8 %i.zd to i1
  br i1 %i.ze, label %.critedge1415, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.zf = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !101
  store i8 0, ptr %0, align 4, !tbaa !119
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  br label %bb.eo

.critedge1415:                                    ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  %i.zi = trunc i64 %.sroa.3.0.i1922 to i32       ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !24
  %i.zm = load ptr, ptr %i.zj, align 8, !tbaa !23
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = sub i64 %i.zn, %i.zo
  %i.zq = sdiv exact i64 %i.zp, 12
  %i.zr = load ptr, ptr %i.xx, align 8, !tbaa !27
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_:bb.a

_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit.thread, label %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit

_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit.thread: ; preds = %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit: ; preds = %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.b = mul nuw nsw i64 %1, 12
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #24 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !176
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.c, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit ] ; 2 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.g, %.lr.ph.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  store i8 0, ptr %i.f, align 4, !tbaa !138
  %i.g = add i64 %.057.i.i.i.i.prol, -1           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !418

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.c, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit ], [ %i.g, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %1, 8
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  store i8 0, ptr %i.j, align 4, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 20
  store i8 0, ptr %i.k, align 4, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i8 0, ptr %i.l, align 4, !tbaa !138
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i8 0, ptr %i.m, align 4, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  store i8 0, ptr %i.n, align 4, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 68
  store i8 0, ptr %i.o, align 4, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i8 0, ptr %i.p, align 4, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i8 0, ptr %i.q, align 4, !tbaa !138
  %i.r = add i64 %.057.i.i.i.i, -8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.7 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !419

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt8optionalIN8WasmEdge7ValTypeEESaIS3_EEC2EmRKS4_.exit.thread ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.t, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(12) ptr @_ZNR5cxx208expectedISt8optionalIN8WasmEdge7ValTypeEENS2_7ErrCodeEE5valueEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !160, !range !139, !noundef !140
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5cxx2019bad_expected_accessIN8WasmEdge7ErrCodeEEE, i64 16), ptr %i.c, align 8, !tbaa !189
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !101
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN5cxx2019bad_expected_accessIN8WasmEdge7ErrCodeEEE, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge9Validator11FormChecker9pushTypesEN5cxx204spanIKSt8optionalINS_7ValTypeEELm18446744073709551615EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(376) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.idx = mul nuw nsw i64 %2, 12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN8WasmEdge9Validator11FormChecker8pushTypeESt8optionalINS_7ValTypeEE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN8WasmEdge9Validator11FormChecker8pushTypeESt8optionalINS_7ValTypeEE.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.z, %_ZN8WasmEdge9Validator11FormChecker8pushTypeESt8optionalINS_7ValTypeEE.exit ] ; 6 uses
  %.013 = phi ptr [ %1, %.lr.ph ], [ %i.aa, %_ZN8WasmEdge9Validator11FormChecker8pushTypeESt8optionalINS_7ValTypeEE.exit ] ; 3 uses
  %.sroa.04.0.copyload = load i64, ptr %.013, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !176
  %.not.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %.sroa.04.0.copyload, ptr %i.e, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %.sroa.4.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 4
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !24
  br label %_ZN8WasmEdge9Validator11FormChecker8pushTypeESt8optionalINS_7ValTypeEE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !23   ; 5 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.807) #23
  unreachable

_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.n = sdiv exact i64 %i.l, 12                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 768614336404564650)
  %i.r = select i1 %i.p, i64 768614336404564650, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = mul nuw nsw i64 %i.r, 12
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 2 uses
  store i64 %.sroa.04.0.copyload, ptr %i.u, align 4
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %.sroa.4.0.copyload, ptr %.sroa.3.0..sroa_idx2.i, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !423
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #22
  br label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !23
  store ptr %i.x, ptr %i.c, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.r
  store ptr %i.y, ptr %i.d, align 8, !tbaa !176
  br label %_ZN8WasmEdge9Validator11FormChecker8pushTypeESt8optionalINS_7ValTypeEE.exit

_ZN8WasmEdge9Validator11FormChecker8pushTypeESt8optionalINS_7ValTypeEE.exit: ; preds = %bb.c, %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.z = phi ptr [ %i.h, %bb.c ], [ %i.x, %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.013, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge9Validator11FormChecker7popTypeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected.129") align 4 captures(none) initializes((0, 1)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(376) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167
  %i.n = icmp eq i64 %i.i, %i.m
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !170, !range !139, !noundef !140
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %0, align 4, !tbaa !160
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.44.0..sroa_idx, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 514, ptr %i.a, align 4, !tbaa !111
  %i.r = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.3, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.s = call noundef ptr @_ZN6spdlog18default_logger_rawEv() ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = icmp slt i32 %i.u, 5                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.x = call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.w) ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.v, %i.x
  br i1 %or.cond.i.i.i.i, label %bb.e, label %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !195
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !196
  call void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, ptr %i.z, i64 %i.ab, i32 noundef 4, ptr nonnull @.str.1, i64 26)
  call void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.s, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext %i.v, i1 noundef zeroext %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit

_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i8 0, ptr %0, align 4, !tbaa !160
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 514, ptr %i.ac, align 4, !tbaa !101
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %5 = getelementptr inbounds i8, ptr %i.d, i64 -12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store ptr %5, ptr %i.c, align 8, !tbaa !24
  store i8 1, ptr %0, align 4, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge9Validator11FormChecker8pushTypeESt8optionalINS_7ValTypeEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(376) %0, i64 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %2, ptr %.sroa.3.0..sroa_idx, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store ptr %i.g, ptr %i.b, align 8, !tbaa !24
  br label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.807) #23
  unreachable

_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = sdiv exact i64 %i.k, 12                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 768614336404564650)
  %i.q = select i1 %i.o, i64 768614336404564650, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = mul nuw nsw i64 %i.q, 12
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #24 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k ; 2 uses
  store i64 %1, ptr %i.t, align 4
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %2, ptr %.sroa.3.0..sroa_idx2, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.h, %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !427
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #22
  br label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !23
  store ptr %i.w, ptr %i.b, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.q
  store ptr %i.x, ptr %i.d, align 8, !tbaa !176
  br label %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt8optionalIN8WasmEdge7ValTypeEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EEC2IPKS1_vEET_S7_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #23
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i, label %.thread.i, label %_ZNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EE11_M_allocateEm.exit.i

.thread.i:                                        ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !32
  br label %bb.f

_ZNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24
          to label %.noexc4 unwind label %bb.g    ; 4 uses

.noexc4:                                          ; preds = %_ZNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EE11_M_allocateEm.exit.i
  store ptr %i.g, ptr %0, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !32
  %i.j = icmp samesign ugt i64 %i.c, 8
  br i1 %i.j, label %bb.c, label %bb.d, !prof !200

bb.c:                                             ; preds = %.noexc4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4
  %i.k = icmp eq i64 %i.c, 8
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %1, align 4, !tbaa !101
  store i64 %i.l, ptr %i.g, align 4, !tbaa !101
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.thread.i
  %i.m = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.e, %.thread.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !38
  ret void

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8WasmEdge9Validator12_GLOBAL__N_113logOutOfRangeENS_7ErrCodeENS_7ErrInfo13IndexCategoryEjj(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 4)) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext range(i8 0, 14) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoForbidIndex", align 4 ; 6 uses
  %i.a = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.3, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i8 %2, ptr %7, align 4, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %3, ptr %i.b, align 4, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %4, ptr %i.c, align 4, !tbaa !116
  %i.d = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoForbidIndexEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.3, i64 2, ptr noundef nonnull align 4 dereferenceable(12) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.e = load i32, ptr %1, align 4, !tbaa !101, !noalias !430
  store i32 %i.e, ptr %0, align 4, !tbaa !101, !alias.scope !430
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge9Validator11FormChecker10StackTransEN5cxx204spanIKNS_7ValTypeELm18446744073709551615EEES6_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(376) %1, ptr nofree readonly captures(address) %2, i64 %3, ptr nofree readonly captures(address) %4, i64 %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cxx20::expected.129", align 4 ; 6 uses
  %.not9.i = icmp eq i64 %3, 0
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.preheader.i

end_hunk_2
