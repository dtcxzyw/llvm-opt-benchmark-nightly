Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/tableInstr?download=true
inline.NumInlined: 1616
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8WasmEdge7Runtime8Instance13TableInstance7setRefsEN5cxx204spanIKNS_10RefVariantELm18446744073709551615EEEmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.j = load i64, ptr %i.c, align 16, !tbaa !64
  store i8 0, ptr %11, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %4, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %6, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.j, ptr %i.m, align 8, !tbaa !69
  %i.n = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc27 unwind label %bb.p

.noexc27:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  store i8 0, ptr %0, align 4, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1031, ptr %i.o, align 4, !tbaa !24
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.p = xor i64 %5, -1
  %i.q = icmp ugt i64 %6, %i.p
  %i.r = add i64 %6, %5
  %i.s = icmp ugt i64 %i.r, %3
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 1031, ptr %i.b, align 4, !tbaa !63
  %i.t = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc29 unwind label %bb.p

.noexc29:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store i8 0, ptr %12, align 8, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %5, ptr %i.u, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %6, ptr %i.v, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %3, ptr %i.w, align 8, !tbaa !69
  %i.x = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc32 unwind label %bb.p

.noexc32:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  store i8 0, ptr %0, align 4, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1031, ptr %i.y, align 4, !tbaa !24
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %.not = icmp ugt i64 %4, %5
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !70
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %4 ; 2 uses
  %i.ad = icmp ugt i64 %6, 1
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !219

bb.k:                                             ; preds = %bb.j
  %.idx = shl nuw nsw i64 %6, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.ac, ptr align 16 %i.z, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKN8WasmEdge10RefVariantEN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp eq i64 %6, 1
  br i1 %i.ae, label %bb.m, label %_ZSt4copyIPKN8WasmEdge10RefVariantEN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, ptr noundef nonnull align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !50
  br label %_ZSt4copyIPKN8WasmEdge10RefVariantEN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEET0_T_SC_SB_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %6, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN8WasmEdge10RefVariantEN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !70
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.f ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %5
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %6 ; 2 uses
  %xtraiter = and i64 %6, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.02.0.i.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.prol ], [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.0.0.i.i.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ]
  %.02.i.i.i.i.i.prol = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %6, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.al = getelementptr inbounds i8, ptr %.sroa.02.0.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.prol, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.am, ptr noundef nonnull align 16 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !50, !noalias !220
  %i.an = add nsw i64 %.02.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !217

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.02.0.i.i.i.i.unr = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.0.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %.02.i.i.i.i.i.unr = phi i64 [ %6, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i64 %6, 4
  br i1 %i.ao, label %_ZSt4copyIPKN8WasmEdge10RefVariantEN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.02.0.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.02.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.02.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.02.0.i.i.i.i, i64 -16
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !50, !noalias !220
  %i.ar = getelementptr inbounds i8, ptr %.sroa.02.0.i.i.i.i, i64 -32
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.as, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !50, !noalias !220
  %i.at = getelementptr inbounds i8, ptr %.sroa.02.0.i.i.i.i, i64 -48
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.au, ptr noundef nonnull align 16 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !50, !noalias !220
  %i.av = getelementptr inbounds i8, ptr %.sroa.02.0.i.i.i.i, i64 -64 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i, i64 -64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !50, !noalias !220
  %i.ax = add nsw i64 %.02.i.i.i.i.i, -4
  %i.ay = icmp sgt i64 %.02.i.i.i.i.i, 4
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN8WasmEdge10RefVariantEN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEET0_T_SC_SB_.exit, !llvm.loop !218

_ZSt4copyIPKN8WasmEdge10RefVariantEN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.n, %bb.k, %bb.l, %bb.m
  store i64 1, ptr %0, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIPKN8WasmEdge10RefVariantEN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEET0_T_SC_SB_.exit, %bb.h, %bb.d
  ret void

bb.p:                                             ; preds = %.noexc32, %bb.g, %.noexc29, %bb.f, %.noexc27, %bb.c, %.noexc, %bb.b
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #22
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor13runElemDropOpERNS_7Runtime8Instance15ElementInstanceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN8WasmEdge7Runtime8Instance15ElementInstance5clearEv.exit, label %_ZSt8_DestroyIPN8WasmEdge10RefVariantES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8WasmEdge10RefVariantES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  br label %_ZN8WasmEdge7Runtime8Instance15ElementInstance5clearEv.exit

_ZN8WasmEdge7Runtime8Instance15ElementInstance5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN8WasmEdge10RefVariantES1_EvT_S3_RSaIT0_E.exit.i.i.i
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor14runTableCopyOpERNS_7Runtime12StackManagerERNS2_8Instance13TableInstanceES7_RKNS_3AST11InstructionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(80) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(26) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 11 uses
  %8 = alloca %"class.cxx20::expected", align 4   ; 7 uses
  %9 = alloca %"class.cxx20::expected.55", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20    ; 2 uses
  %i.c = icmp ugt i8 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !20    ; 2 uses
  %i.f = icmp ugt i8 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.i, align 16, !tbaa !24
  store ptr %i.i, ptr %i.g, align 8, !tbaa !26
  %.sroa.020.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i64 ; 2 uses
  %.sroa.020.sroa.5.0.insert.shift = and i64 %.sroa.020.sroa.0.0.extract.trunc, -4294967296
  %i.j = and i1 %i.c, %i.f
  %i.k = and i64 %.sroa.020.sroa.0.0.extract.trunc, 4294967295
  %.sroa.020.sroa.0.0.insert.insert = select i1 %i.j, i64 %.sroa.020.sroa.5.0.insert.shift, i64 0
  %.0.i = or disjoint i64 %.sroa.020.sroa.0.0.insert.insert, %i.k ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i10 = load i128, ptr %i.l, align 16, !tbaa !24
  store ptr %i.l, ptr %i.g, align 8, !tbaa !26
  %.sroa.017.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i10 to i64 ; 2 uses
  %.sroa.017.sroa.5.0.insert.shift = and i64 %.sroa.017.sroa.0.0.extract.trunc, -4294967296
  %10 = icmp ult i8 %i.e, 4
  %i.m = and i64 %.sroa.017.sroa.0.0.extract.trunc, 4294967295
  %.sroa.017.sroa.0.0.insert.insert = select i1 %10, i64 0, i64 %.sroa.017.sroa.5.0.insert.shift
  %.0.i11 = or disjoint i64 %.sroa.017.sroa.0.0.insert.insert, %i.m ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -48 ; 2 uses
  %.sroa.0.0.copyload.i12 = load i128, ptr %i.n, align 16, !tbaa !24
  store ptr %i.n, ptr %i.g, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.o = add i64 %.0.i11, %.0.i
  call void @_ZNK8WasmEdge7Runtime8Instance13TableInstance7getRefsEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.55") align 8 %9, ptr noundef nonnull align 16 dereferenceable(80) %4, i64 noundef 0, i64 noundef %i.o) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.p = load i8, ptr %9, align 8, !tbaa !73, !range !30, !noalias !239, !noundef !31
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br i1 %i.q, label %"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit", label %"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit.thread"

"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit.thread": ; preds = %bb.a
  store i8 0, ptr %8, align 4, !tbaa !57, !alias.scope !239
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.t = load i32, ptr %i.r, align 8, !tbaa !24, !noalias !239 ; 2 uses
  store i32 %i.t, ptr %i.s, align 4, !tbaa !24, !alias.scope !239
  br label %bb.c

"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit": ; preds = %bb.a
  %11 = icmp ult i8 %i.b, 4
  %.sroa.015.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i12 to i64 ; 2 uses
  %i.u = and i64 %.sroa.015.sroa.0.0.extract.trunc, 4294967295
  %.sroa.015.sroa.5.0.insert.shift = and i64 %.sroa.015.sroa.0.0.extract.trunc, -4294967296
  %.sroa.015.sroa.0.0.insert.insert = select i1 %11, i64 0, i64 %.sroa.015.sroa.5.0.insert.shift
  %.0.i13 = or disjoint i64 %.sroa.015.sroa.0.0.insert.insert, %i.u
  %.val.i.i = load ptr, ptr %i.r, align 8, !noalias !239
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val4.i.i = load i64, ptr %i.v, align 8, !noalias !239
  call void @_ZN8WasmEdge7Runtime8Instance13TableInstance7setRefsEN5cxx204spanIKNS_10RefVariantELm18446744073709551615EEEmmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %8, ptr noundef nonnull align 16 dereferenceable(80) %3, ptr %.val.i.i, i64 %.val4.i.i, i64 noundef %.0.i13, i64 noundef %.0.i11, i64 noundef %.0.i) #20
  %.val.pre = load i8, ptr %8, align 4, !tbaa !57, !range !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.val8.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.w = trunc nuw i8 %.val.pre to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit"
  store i64 1, ptr %0, align 4, !alias.scope !242
  br label %"_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runTableCopyOpERNS1_7Runtime12StackManagerERNS7_8Instance13TableInstanceESC_RKNS1_3AST11InstructionEE3$_1EEDaOT_.exit"

bb.c:                                             ; preds = %"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit.thread", %"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit"
  %.val841 = phi i32 [ %i.t, %"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit.thread" ], [ %.val8.pre, %"_ZNO5cxx208expectedINS_4spanIKN8WasmEdge10RefVariantELm18446744073709551615EEENS2_7ErrCodeEE8and_thenIZNS2_8Executor8Executor14runTableCopyOpERNS2_7Runtime12StackManagerERNSB_8Instance13TableInstanceESG_RKNS2_3AST11InstructionEE3$_0EEDaOT_.exit" ]
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val.val.i.i = load i32, ptr %i.x, align 16, !tbaa !35, !noalias !242
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.val.val4.i.i = load i32, ptr %i.y, align 4, !tbaa !36, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !243
  %i.z = zext i32 %.val.val.i.i to i64
  store i32 %.val.val4.i.i, ptr %7, align 8, !tbaa !46, !noalias !243
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !47, !noalias !243
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ab, i8 0, i64 49, i1 false), !noalias !243
  %i.af = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i.i.i.i.i.i, !noalias !243

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !243
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %7)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i.i.i.i.i.i, !noalias !243

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !243
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !51, !noalias !243 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !52, !noalias !243
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #23, !noalias !243
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !48, !noalias !243 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %"_ZSt6invokeIZN8WasmEdge8Executor8Executor14runTableCopyOpERNS0_7Runtime12StackManagerERNS3_8Instance13TableInstanceES8_RKNS0_3AST11InstructionEE3$_1JNS0_7ErrCodeEEENSt13invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i", label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !49, !noalias !243
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #23, !noalias !243
  br label %"_ZSt6invokeIZN8WasmEdge8Executor8Executor14runTableCopyOpERNS0_7Runtime12StackManagerERNS3_8Instance13TableInstanceES8_RKNS0_3AST11InstructionEE3$_1JNS0_7ErrCodeEEENSt13invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i"

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit7.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %7) #20, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !243
  resume { ptr, i32 } %i.aq

"_ZSt6invokeIZN8WasmEdge8Executor8Executor14runTableCopyOpERNS0_7Runtime12StackManagerERNS3_8Instance13TableInstanceES8_RKNS0_3AST11InstructionEE3$_1JNS0_7ErrCodeEEENSt13invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i": ; preds = %bb.f, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !243
  store i8 0, ptr %0, align 4, !tbaa !57, !alias.scope !242
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.val841, ptr %i.ar, align 4, !tbaa !24, !alias.scope !242
  br label %"_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runTableCopyOpERNS1_7Runtime12StackManagerERNS7_8Instance13TableInstanceESC_RKNS1_3AST11InstructionEE3$_1EEDaOT_.exit"

"_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runTableCopyOpERNS1_7Runtime12StackManagerERNS7_8Instance13TableInstanceESC_RKNS1_3AST11InstructionEE3$_1EEDaOT_.exit": ; preds = %bb.b, %"_ZSt6invokeIZN8WasmEdge8Executor8Executor14runTableCopyOpERNS0_7Runtime12StackManagerERNS3_8Instance13TableInstanceES8_RKNS0_3AST11InstructionEE3$_1JNS0_7ErrCodeEEENSt13invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge7Runtime8Instance13TableInstance7getRefsEmm(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.55") align 8 %0, ptr noundef nonnull align 16 dereferenceable(80) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"struct.WasmEdge::ErrInfo::InfoBoundary", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 16, !tbaa !64
  %i.d = xor i64 %2, -1
  %.not.i = icmp ule i64 %3, %i.d
  %i.e = add i64 %3, %2
  %i.f = icmp ule i64 %i.e, %i.c
  %i.g = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1031, ptr %i.a, align 4, !tbaa !63
  %i.h = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.i = load i64, ptr %i.b, align 16, !tbaa !64
  store i8 0, ptr %6, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.k, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.i, ptr %i.l, align 8, !tbaa !69
  %i.m = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  store i8 0, ptr %0, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1031, ptr %i.n, align 8, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !70
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %2
  store i8 1, ptr %0, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %.noexc7, %bb.c, %.noexc, %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor14runTableGrowOpERNS_7Runtime12StackManagerERNS2_8Instance13TableInstanceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(80) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20    ; 2 uses
  %i.c = icmp ult i8 %i.b, 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.f, align 16, !tbaa !24
  store ptr %i.f, ptr %i.d, align 8, !tbaa !26
  %.sroa.036.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i64 ; 2 uses
  %.sroa.036.sroa.5.0.insert.shift = and i64 %.sroa.036.sroa.0.0.extract.trunc, -4294967296
  %i.g = and i64 %.sroa.036.sroa.0.0.extract.trunc, 4294967295
  %.sroa.036.sroa.0.0.insert.insert = select i1 %i.c, i64 0, i64 %.sroa.036.sroa.5.0.insert.shift
  %.0.i = or disjoint i64 %.sroa.036.sroa.0.0.insert.insert, %i.g ; 7 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 8 uses
  %.sroa.0.0.copyload.i11 = load i128, ptr %i.h, align 16, !tbaa !24 ; 9 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 16, !tbaa !64  ; 5 uses
  %i.k = icmp eq i64 %.0.i, 0
  br i1 %i.k, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i = select i1 %i.c, i64 4294967295, i64 -1 ; 3 uses
  %i.l = icmp uge i64 %spec.select.i.i, %i.j
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc i8 %i.b to i1
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i.i, i64 %i.o)
end_hunk_0
