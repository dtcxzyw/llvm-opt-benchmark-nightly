Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/section?download=true
inline.NumInlined: 3914
inline.NumDeleted: 1733
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST11TypeSectionE:bb.a
  %14 = alloca %"class.cxx20::unexpected", align 4 ; 4 uses
  %15 = alloca %class.anon.339, align 1           ; 3 uses
  %16 = alloca %"class.cxx20::unexpected", align 4 ; 4 uses
  %17 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %18 = alloca %"class.cxx20::expected.127", align 4 ; 6 uses
  %19 = alloca %"class.cxx20::unexpected", align 4 ; 4 uses
  %20 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %21 = alloca %"class.cxx20::expected.127", align 4 ; 3 uses
  %22 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %23 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %24 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %25 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %26 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %27 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %28 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %29 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %30 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %31 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %32 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %33 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %34 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %35 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %36 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %37 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !366
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !34, !noalias !366
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21, !noalias !366
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %35, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !366
  %.val.i = load i8, ptr %35, align 4, !tbaa !36, !range !37, !noalias !366, !noundef !38
  %i.e = getelementptr inbounds nuw i8, ptr %35, i64 4
  %.val10.i = load i32, ptr %i.e, align 4, !noalias !366 ; 2 uses
  %i.f = trunc nuw i8 %.val.i to i1
  br i1 %i.f, label %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !39, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !368
  store i32 %.val10.i, ptr %34, align 4, !tbaa !40, !noalias !369
  %i.h = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !370

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %31), !noalias !370
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false), !noalias !370
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %31, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %34)
          to label %bb.c unwind label %bb.e, !noalias !370

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31), !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21, !noalias !370
  store i64 %.val.val.i.i.i, ptr %32, align 8, !tbaa !42, !noalias !370
  %i.i = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !370

.noexc3.i.i.i.i.i.i.i.i:                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %30), !noalias !370
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false), !noalias !370
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.i, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %30, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.d unwind label %bb.e, !noalias !370

bb.d:                                             ; preds = %.noexc3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30), !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21, !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21, !noalias !370
  store i8 2, ptr %33, align 1, !tbaa !45, !noalias !370
  %i.j = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !370

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !370
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false), !noalias !370
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %29, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.f unwind label %bb.e, !noalias !370

bb.e:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i, %bb.d, %.noexc3.i.i.i.i.i.i.i.i, %bb.c, %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #22, !noalias !370
  unreachable

bb.f:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21, !noalias !370
  %i.m = load i32, ptr %34, align 4, !tbaa !40, !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21, !noalias !366
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !366
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !40, !alias.scope !366
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST11TypeSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21, !noalias !366
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !366
  %i.q = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !366 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = zext i32 %.val10.i to i64                ; 2 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i
  store i32 263, ptr %36, align 4, !tbaa !40, !noalias !366
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !366
  %i.w = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i unwind label %bb.j, !noalias !372

.noexc.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false), !noalias !372
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %26, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %36)
          to label %bb.h unwind label %bb.j, !noalias !372

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21, !noalias !372
  store i64 %i.v, ptr %27, align 8, !tbaa !42, !noalias !372
  %i.x = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i unwind label %bb.j, !noalias !372

.noexc3.i.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !noalias !372
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %25, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.i unwind label %bb.j, !noalias !372

bb.i:                                             ; preds = %.noexc3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21, !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21, !noalias !372
  store i8 2, ptr %28, align 1, !tbaa !45, !noalias !372
  %i.y = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i unwind label %bb.j, !noalias !372

.noexc5.i.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false), !noalias !372
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %24, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i unwind label %bb.j, !noalias !372

bb.j:                                             ; preds = %.noexc5.i.i, %bb.i, %.noexc3.i.i, %bb.h, %.noexc.i.i, %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #22, !noalias !372
  unreachable

_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i: ; preds = %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21, !noalias !372
  %i.ab = load i32, ptr %36, align 4, !tbaa !40, !noalias !373
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !366
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !40, !alias.scope !366
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST11TypeSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

bb.k:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i
  store i64 %i.s, ptr %2, align 8, !tbaa !49, !noalias !366
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !366
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21, !noalias !374
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %17, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !374
  %i.ad = load i8, ptr %17, align 4, !tbaa !36, !range !37, !noalias !374, !noundef !38
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40, !noalias !374 ; 4 uses
  br i1 %i.ae, label %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i, label %bb.l

_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i: ; preds = %bb.k
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !374
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !374
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, %i.ai
  br i1 %i.am, label %bb.l, label %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i

bb.l:                                             ; preds = %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i, %bb.k
  %.sroa.698.0.ph.i.i = phi i32 [ 278, %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i ], [ %i.ag, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21, !noalias !375
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !39, !noalias !375
  call fastcc void @"_ZSt6invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST11TypeSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_"(ptr dead_on_unwind noalias writable align 4 %16, i64 %.val.val.i.i.i.i, i32 %.sroa.698.0.ph.i.i), !noalias !375
  %i.ao = load i32, ptr %16, align 4, !tbaa !40, !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !375
  br label %bb.ah

_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i: ; preds = %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !374
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64, !noalias !376 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65, !noalias !376 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i, %_ZSt8_DestroyIN8WasmEdge3AST7SubTypeEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyIN8WasmEdge3AST7SubTypeEEvPT_.exit.i.i.i.i.i.i ], [ %i.aq, %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 112
  %i.au = load i8, ptr %i.at, align 8, !tbaa !67, !noalias !376
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.m, !prof !68

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21, !noalias !376
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS6_EENS5_12FunctionTypeEEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(73) %i.av)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !376

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !376
  br label %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #22, !noalias !376
  unreachable

_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !71, !noalias !376 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN8WasmEdge3AST7SubTypeEEvPT_.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72, !noalias !376
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #23, !noalias !376
  br label %_ZSt8_DestroyIN8WasmEdge3AST7SubTypeEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN8WasmEdge3AST7SubTypeEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.o, %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST7SubTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !325

_ZSt8_DestroyIPN8WasmEdge3AST7SubTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN8WasmEdge3AST7SubTypeEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !65, !noalias !376
  br label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE5clearEv.exit.i.i

_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST7SubTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i
  %.not37131.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not37131.not.i.i, label %.critedge.i, label %.lr.ph134.i.i

.lr.ph134.i.i:                                    ; preds = %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE5clearEv.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.i.i, %.lr.ph134.i.i
  %.027133.i.i = phi i32 [ 0, %.lr.ph134.i.i ], [ %i.dn, %.loopexit.i.i ]
  %.028132.i.i = phi i32 [ 0, %.lr.ph134.i.i ], [ %.3.i.i, %.loopexit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21, !noalias !376
  call void @_ZN8WasmEdge7FileMgr8peekByteEv(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.127") align 4 %18, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !376
  %i.bk = load i8, ptr %18, align 4, !tbaa !75, !range !37, !noalias !377, !noundef !38
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZNR5cxx208expectedIhNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21, !noalias !377
  %.val4.i.i.i.i = load i32, ptr %i.bg, align 4, !tbaa !40, !noalias !377
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i54.i.i = load i64, ptr %i.bm, align 8, !tbaa !39, !noalias !377
  call fastcc void @"_ZSt6invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST11TypeSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_"(ptr dead_on_unwind noalias writable align 4 %14, i64 %.val.val.i.i54.i.i, i32 %.val4.i.i.i.i), !noalias !377
  %i.bn = load i32, ptr %14, align 4, !tbaa !40, !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21, !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !376
  br label %bb.ah

_ZNR5cxx208expectedIhNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i: ; preds = %bb.p
  %i.bo = load i8, ptr %i.bg, align 4, !tbaa !40, !noalias !377 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !376
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZNR5cxx208expectedIhNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i
  %i.bp = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %1) #21, !noalias !376
  switch i32 %i.bp, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit.i.i [
    i32 11, label %bb.r
    i32 35, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #24
          to label %.noexc.i.i.i unwind label %bb.t, !noalias !376

.noexc.i.i.i:                                     ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #22, !noalias !376
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit.i.i: ; preds = %bb.r
  %i.bs = load i64, ptr %i.bh, align 8, !tbaa !379, !noalias !376
  %i.bt = and i64 %i.bs, 1024
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %1) #21, !noalias !376 ; 0 uses
  %i.bw = icmp eq i8 %i.bo, 96
  %or.cond.not.i.i = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %or.cond.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21, !noalias !376
  store i32 278, ptr %20, align 4, !tbaa !40, !noalias !376
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !376
  call void @_ZNK8WasmEdge6Loader6Loader15logNeedProposalENS_7ErrCodeENS_8ProposalEmNS_11ASTNodeAttrE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::unexpected") align 4 %19, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %20, i8 noundef zeroext 10, i64 noundef %i.bx, i8 noundef zeroext 2) #21, !noalias !376
  %i.by = load i32, ptr %19, align 4, !tbaa !40, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !376
  br label %bb.ah

bb.v:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit.i.i
  %i.bz = icmp eq i8 %i.bo, 78
  br i1 %i.bz, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21, !noalias !376
  call void @_ZN8WasmEdge7FileMgr8readByteEv(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.127") align 4 %21, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21, !noalias !380
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %13, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !380
  %i.ca = load i8, ptr %13, align 4, !tbaa !36, !range !37, !noalias !380, !noundef !38
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load i32, ptr %i.bi, align 4, !tbaa !40, !noalias !380 ; 4 uses
  br i1 %i.cb, label %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i56.i.i, label %bb.x

_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i56.i.i: ; preds = %bb.w
  %i.cd = lshr i32 %i.cc, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !380
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !380
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.ce
  br i1 %i.ci, label %bb.x, label %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit62.i.i

bb.x:                                             ; preds = %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i56.i.i, %bb.w
  %.sroa.682.0.ph.i.i = phi i32 [ 278, %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i56.i.i ], [ %i.cc, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21, !noalias !380
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21, !noalias !381
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i58.i.i = load i64, ptr %i.cj, align 8, !tbaa !39, !noalias !381
  call fastcc void @"_ZSt6invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST11TypeSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_"(ptr dead_on_unwind noalias writable align 4 %12, i64 %.val.val.i.i58.i.i, i32 %.sroa.682.0.ph.i.i), !noalias !381
  %i.ck = load i32, ptr %12, align 4, !tbaa !40, !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21, !noalias !381
  br label %bb.ah

_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit62.i.i: ; preds = %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21, !noalias !380
  %.not.not128.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.not128.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit62.i.i
  %.sroa.4.0.insert.ext.i.i.i = zext i32 %i.cc to i64 ; 2 uses
  %.sroa.4.0.insert.shift.i.i.i = shl nuw i64 %.sroa.4.0.insert.ext.i.i.i, 32
  br label %bb.y

bb.y:                                             ; preds = %_ZN8WasmEdge3AST7SubType16setRecursiveInfoEjj.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN8WasmEdge3AST7SubType16setRecursiveInfoEjj.exit.i.i ] ; 2 uses
  %.1129.i.i = phi i32 [ %.028132.i.i, %.lr.ph.i.i ], [ %i.da, %_ZN8WasmEdge3AST7SubType16setRecursiveInfoEjj.exit.i.i ] ; 2 uses
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !65, !noalias !376 ; 3 uses
  %i.cm = load ptr, ptr %i.bj, align 8, !tbaa !76, !noalias !376
  %.not.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.cl, i8 0, i64 144, i1 false), !noalias !376
  %i.cn = load ptr, ptr %i.ar, align 8, !tbaa !65, !noalias !376
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 144 ; 2 uses
  store ptr %i.co, ptr %i.ar, align 8, !tbaa !65, !noalias !376
  br label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i

bb.aa:                                            ; preds = %bb.y
  call void @_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr %i.cl), !noalias !376
  %.pre18.i = load ptr, ptr %i.ar, align 8, !tbaa !77, !noalias !376
  br label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i: ; preds = %bb.aa, %bb.z
  %i.cp = phi ptr [ %.pre18.i, %bb.aa ], [ %i.co, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21, !noalias !376
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -144
  call void @_ZN8WasmEdge6Loader6Loader8loadTypeERNS_3AST7SubTypeE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %22, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(140) %i.cq), !noalias !376
  %.val50.i.i = load i8, ptr %22, align 4, !tbaa !47, !range !37, !noalias !376, !noundef !38
  %i.cr = trunc nuw i8 %.val50.i.i to i1
  br i1 %i.cr, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %22, i64 4
  %.val51.i.i = load i32, ptr %i.cs, align 4, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21, !noalias !382
  store i8 2, ptr %11, align 1, !tbaa !45, !noalias !382
  %i.ct = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !382
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ct, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %11), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21, !noalias !376
  br label %bb.ah

.critedge.i.i:                                    ; preds = %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21, !noalias !376
  %i.cu = load ptr, ptr %i.ar, align 8, !tbaa !77, !noalias !376 ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !383, !range !37, !noalias !376, !noundef !38
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZN8WasmEdge3AST7SubType16setRecursiveInfoEjj.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i.i
  store i8 1, ptr %i.cv, align 4, !tbaa !383, !noalias !376
  br label %_ZN8WasmEdge3AST7SubType16setRecursiveInfoEjj.exit.i.i

_ZN8WasmEdge3AST7SubType16setRecursiveInfoEjj.exit.i.i: ; preds = %bb.ac, %.critedge.i.i
  %.sroa.0.0.insert.insert.i.i.i = add nuw nsw i64 %indvars.iv.i.i, %.sroa.4.0.insert.shift.i.i.i
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 -24
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.cy, align 4, !tbaa !79, !noalias !376
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 -12
  %.sroa.0.0.insert.ext.i64.i.i = zext i32 %.1129.i.i to i64
  %.sroa.0.0.insert.insert.i65.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i64.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i65.i.i, ptr %i.cz, align 4, !noalias !376
  %i.da = add i32 %.1129.i.i, 1                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.sroa.4.0.insert.ext.i.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.y, !llvm.loop !348

bb.ad:                                            ; preds = %bb.v
  %i.db = load ptr, ptr %i.ar, align 8, !tbaa !65, !noalias !376 ; 3 uses
  %i.dc = load ptr, ptr %i.bj, align 8, !tbaa !76, !noalias !376
  %.not.i66.i.i = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i66.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.db, i8 0, i64 144, i1 false), !noalias !376
  %i.dd = load ptr, ptr %i.ar, align 8, !tbaa !65, !noalias !376
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144 ; 2 uses
  store ptr %i.de, ptr %i.ar, align 8, !tbaa !65, !noalias !376
  br label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit68.i.i

bb.af:                                            ; preds = %bb.ad
  call void @_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr %i.db), !noalias !376
  %.pre.i = load ptr, ptr %i.ar, align 8, !tbaa !77, !noalias !376
  br label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit68.i.i

_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit68.i.i: ; preds = %bb.af, %bb.ae
  %i.df = phi ptr [ %.pre.i, %bb.af ], [ %i.de, %bb.ae ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -12
  %.sroa.0.0.insert.ext.i69.i.i = zext i32 %.028132.i.i to i64
  %.sroa.0.0.insert.insert.i70.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i69.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i70.i.i, ptr %i.dg, align 4, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21, !noalias !376
  %i.dh = load ptr, ptr %i.ar, align 8, !tbaa !77, !noalias !376
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -144
  call void @_ZN8WasmEdge6Loader6Loader8loadTypeERNS_3AST7SubTypeE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %23, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(140) %i.di), !noalias !376
  %.val52.i.i = load i8, ptr %23, align 4, !tbaa !47, !range !37, !noalias !376, !noundef !38
  %i.dj = trunc nuw i8 %.val52.i.i to i1
  br i1 %i.dj, label %.critedge39.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit68.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %23, i64 4
  %.val53.i.i = load i32, ptr %i.dk, align 4, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !384
  store i8 2, ptr %9, align 1, !tbaa !45, !noalias !384
  %i.dl = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !384
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21, !noalias !376
  br label %bb.ah

.critedge39.i.i:                                  ; preds = %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit68.i.i
  %i.dm = add i32 %.028132.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21, !noalias !376
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN8WasmEdge3AST7SubType16setRecursiveInfoEjj.exit.i.i, %.critedge39.i.i, %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit62.i.i
  %.3.i.i = phi i32 [ %i.dm, %.critedge39.i.i ], [ %.028132.i.i, %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit62.i.i ], [ %i.da, %_ZN8WasmEdge3AST7SubType16setRecursiveInfoEjj.exit.i.i ]
  %i.dn = add nuw i32 %.027133.i.i, 1             ; 2 uses
  %exitcond136.not.i.i = icmp eq i32 %i.dn, %i.ag
  br i1 %exitcond136.not.i.i, label %.critedge.i, label %bb.p, !llvm.loop !361

bb.ah:                                            ; preds = %bb.ag, %bb.ab, %bb.x, %bb.u, %bb.q, %bb.l
  %.sroa.113.0.ph.i = phi i32 [ %i.by, %bb.u ], [ %.val53.i.i, %bb.ag ], [ %.val51.i.i, %bb.ab ], [ %i.ck, %bb.x ], [ %i.bn, %bb.q ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !366
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !366
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.113.0.ph.i, ptr %i.do, align 4, !tbaa !40, !alias.scope !366
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST11TypeSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

.critedge.i:                                      ; preds = %.loopexit.i.i, %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !366
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !366 ; 2 uses
  %i.dq = sub i64 %i.dp, %i.q
  %i.dr = load i64, ptr %2, align 8, !tbaa !49, !noalias !366
  %.not.i = icmp eq i64 %i.dq, %i.dr
  br i1 %.not.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  store i32 262, ptr %37, align 4, !tbaa !40, !noalias !366
  %i.ds = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i12.i unwind label %bb.al, !noalias !385

.noexc.i12.i:                                     ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !385
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !385
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ds, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %37)
          to label %bb.aj unwind label %bb.al, !noalias !385

bb.aj:                                            ; preds = %.noexc.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !385
  store i64 %i.dp, ptr %6, align 8, !tbaa !42, !noalias !385
  %i.dt = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i13.i unwind label %bb.al, !noalias !385

.noexc3.i13.i:                                    ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !385
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !385
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dt, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ak unwind label %bb.al, !noalias !385

bb.ak:                                            ; preds = %.noexc3.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !385
  store i8 2, ptr %7, align 1, !tbaa !45, !noalias !385
  %i.du = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i14.i unwind label %bb.al, !noalias !385

.noexc5.i14.i:                                    ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !385
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !385
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.du, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit15.i unwind label %bb.al, !noalias !385

bb.al:                                            ; preds = %.noexc5.i14.i, %bb.ak, %.noexc3.i13.i, %bb.aj, %.noexc.i12.i, %bb.ai
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #22, !noalias !385
  unreachable

_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit15.i: ; preds = %.noexc5.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !385
  %i.dx = load i32, ptr %37, align 4, !tbaa !40, !noalias !386
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !366
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !40, !alias.scope !366
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST11TypeSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

bb.am:                                            ; preds = %.critedge.i
  store i64 1, ptr %0, align 4, !alias.scope !366
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST11TypeSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST11TypeSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit": ; preds = %bb.f, %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i, %bb.ah, %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit15.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13ImportSectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 16)) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %14 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %15 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %16 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %17 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %18 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %19 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %20 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %21 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %22 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %23 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %24 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %25 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %26 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %27 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %28 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %29 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %30 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %31 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !451
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !34, !noalias !451
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21, !noalias !451
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %29, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !451
  %.val.i = load i8, ptr %29, align 4, !tbaa !36, !range !37, !noalias !451, !noundef !38
  %i.e = getelementptr inbounds nuw i8, ptr %29, i64 4
  %.val10.i = load i32, ptr %i.e, align 4, !noalias !451 ; 2 uses
  %i.f = trunc nuw i8 %.val.i to i1
  br i1 %i.f, label %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !39, !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !453
  store i32 %.val10.i, ptr %28, align 4, !tbaa !40, !noalias !454
  %i.h = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !455

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !455
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !noalias !455
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %25, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %28)
          to label %bb.c unwind label %bb.e, !noalias !455

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21, !noalias !455
  store i64 %.val.val.i.i.i, ptr %26, align 8, !tbaa !42, !noalias !455
  %i.i = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !455

.noexc3.i.i.i.i.i.i.i.i:                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !455
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false), !noalias !455
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.i, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %24, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.d unwind label %bb.e, !noalias !455

bb.d:                                             ; preds = %.noexc3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21, !noalias !455
  store i8 3, ptr %27, align 1, !tbaa !45, !noalias !455
  %i.j = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !455

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %23), !noalias !455
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false), !noalias !455
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %23, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.f unwind label %bb.e, !noalias !455

bb.e:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i, %bb.d, %.noexc3.i.i.i.i.i.i.i.i, %bb.c, %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #22, !noalias !455
  unreachable

bb.f:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21, !noalias !455
  %i.m = load i32, ptr %28, align 4, !tbaa !40, !noalias !456
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21, !noalias !451
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !451
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !40, !alias.scope !451
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13ImportSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21, !noalias !451
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !451
  %i.q = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !451 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = zext i32 %.val10.i to i64                ; 2 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i
  store i32 263, ptr %30, align 4, !tbaa !40, !noalias !451
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !451
  %i.w = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i unwind label %bb.j, !noalias !457

.noexc.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !457
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false), !noalias !457
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %20, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %30)
          to label %bb.h unwind label %bb.j, !noalias !457

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !457
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21, !noalias !457
  store i64 %i.v, ptr %21, align 8, !tbaa !42, !noalias !457
  %i.x = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i unwind label %bb.j, !noalias !457

.noexc3.i.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !457
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !noalias !457
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %19, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.i unwind label %bb.j, !noalias !457

bb.i:                                             ; preds = %.noexc3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21, !noalias !457
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21, !noalias !457
  store i8 3, ptr %22, align 1, !tbaa !45, !noalias !457
  %i.y = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i unwind label %bb.j, !noalias !457

.noexc5.i.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !457
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !457
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i unwind label %bb.j, !noalias !457

bb.j:                                             ; preds = %.noexc5.i.i, %bb.i, %.noexc3.i.i, %bb.h, %.noexc.i.i, %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #22, !noalias !457
  unreachable

_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i: ; preds = %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21, !noalias !457
  %i.ab = load i32, ptr %30, align 4, !tbaa !40, !noalias !458
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !451
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !40, !alias.scope !451
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13ImportSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

bb.k:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i
  store i64 %i.s, ptr %2, align 8, !tbaa !49, !noalias !451
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21, !noalias !459
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %16, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !459
  %i.ae = load i8, ptr %16, align 4, !tbaa !36, !range !37, !noalias !459, !noundef !38
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40, !noalias !459 ; 4 uses
  br i1 %i.af, label %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i, label %bb.l

_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !459
  %i.al = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !459
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, %i.aj
  br i1 %i.an, label %bb.l, label %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i, %bb.k
  %.sroa.626.0.ph.i.i.i.i = phi i32 [ 278, %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !459
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !39, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !461
  store i32 %.sroa.626.0.ph.i.i.i.i, ptr %15, align 4, !tbaa !40, !noalias !462
  %i.ap = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !463

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !463
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ap, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %15)
          to label %bb.m unwind label %bb.o, !noalias !463

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21, !noalias !463
  store i64 %.val.val.i.i.i.i.i.i, ptr %13, align 8, !tbaa !42, !noalias !463
  %i.aq = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !463

.noexc3.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !463
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.n unwind label %bb.o, !noalias !463

bb.n:                                             ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21, !noalias !463
  store i8 3, ptr %14, align 1, !tbaa !45, !noalias !463
  %i.ar = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !463

.noexc5.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !463
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ar, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.p unwind label %bb.o, !noalias !463

bb.o:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %.noexc3.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #22, !noalias !463
  unreachable

bb.p:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21, !noalias !463
  %i.au = load i32, ptr %15, align 4, !tbaa !40, !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !461
  br label %"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13ImportSectionEENK3$_0clEv.exit.i"

_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i.i.i: ; preds = %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !459
  %i.av = zext i32 %i.ah to i64                   ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !82, !noalias !465 ; 3 uses
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !83, !noalias !465 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 168               ; 3 uses
  %i.bd = icmp ult i64 %i.bc, %i.av
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i.i.i
  %i.be = sub nuw nsw i64 %i.av, %i.bc
  call void @_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.be), !noalias !465
  br label %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE6resizeEm.exit.i.i.i.i

bb.r:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i.i.i
  %i.bf = icmp ugt i64 %i.bc, %i.av
  br i1 %i.bf, label %bb.s, label %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE6resizeEm.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw [168 x i8], ptr %i.ay, i64 %i.av ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE6resizeEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.s, %_ZSt8_DestroyIN8WasmEdge3AST10ImportDescEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN8WasmEdge3AST10ImportDescEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.bg, %bb.s ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53, !noalias !465 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !40, !noalias !465
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #23, !noalias !465
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53, !noalias !465 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZSt8_DestroyIN8WasmEdge3AST10ImportDescEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !40, !noalias !465
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #23, !noalias !465
  br label %_ZSt8_DestroyIN8WasmEdge3AST10ImportDescEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN8WasmEdge3AST10ImportDescEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.ax
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST10ImportDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !433

_ZSt8_DestroyIPN8WasmEdge3AST10ImportDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN8WasmEdge3AST10ImportDescEEvPT_.exit.i.i.i.i.i.i.i.i
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !82, !noalias !465
  br label %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE6resizeEm.exit.i.i.i.i

_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE6resizeEm.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST10ImportDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i, %bb.s, %bb.r, %bb.q
  %.not40.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not40.not.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE6resizeEm.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ 0, %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE6resizeEm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21, !noalias !465
  %i.bu = load ptr, ptr %i.ad, align 8, !tbaa !83, !noalias !465
  %i.bv = getelementptr inbounds nuw [168 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.i
  call void @_ZN8WasmEdge6Loader6Loader8loadDescERNS_3AST10ImportDescE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %17, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(168) %i.bv), !noalias !465
  %.val17.i.i.i.i = load i8, ptr %17, align 4, !tbaa !47, !range !37, !noalias !465, !noundef !38
  %i.bw = trunc nuw i8 %.val17.i.i.i.i to i1
  br i1 %i.bw, label %.critedge.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 4
  %.val18.i.i.i.i = load i32, ptr %i.bx, align 4, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !466
  store i8 3, ptr %9, align 1, !tbaa !45, !noalias !466
  %i.by = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !466
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.by, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !465
  br label %"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13ImportSectionEENK3$_0clEv.exit.i"

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !465
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.av
  br i1 %exitcond.not.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i, !llvm.loop !446

"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13ImportSectionEENK3$_0clEv.exit.i": ; preds = %bb.t, %bb.p
  %.sroa.73.0.i = phi i32 [ %i.au, %bb.p ], [ %.val18.i.i.i.i, %bb.t ]
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !451
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.73.0.i, ptr %i.bz, align 4, !tbaa !40, !alias.scope !451
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13ImportSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

.critedge.i:                                      ; preds = %.critedge.i.i.i.i, %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE6resizeEm.exit.i.i.i.i
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !451 ; 2 uses
  %i.cb = sub i64 %i.ca, %i.q
  %i.cc = load i64, ptr %2, align 8, !tbaa !49, !noalias !451
  %.not.i = icmp eq i64 %i.cb, %i.cc
  br i1 %.not.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.critedge.i
  store i32 262, ptr %31, align 4, !tbaa !40, !noalias !451
  %i.cd = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i14.i unwind label %bb.x, !noalias !467

.noexc.i14.i:                                     ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !467
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !467
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %31)
          to label %bb.v unwind label %bb.x, !noalias !467

bb.v:                                             ; preds = %.noexc.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !467
  store i64 %i.ca, ptr %6, align 8, !tbaa !42, !noalias !467
  %i.ce = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i15.i unwind label %bb.x, !noalias !467

.noexc3.i15.i:                                    ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !467
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !467
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.w unwind label %bb.x, !noalias !467

bb.w:                                             ; preds = %.noexc3.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !467
  store i8 3, ptr %7, align 1, !tbaa !45, !noalias !467
  %i.cf = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i16.i unwind label %bb.x, !noalias !467

.noexc5.i16.i:                                    ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !467
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !467
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit17.i unwind label %bb.x, !noalias !467

bb.x:                                             ; preds = %.noexc5.i16.i, %bb.w, %.noexc3.i15.i, %bb.v, %.noexc.i14.i, %bb.u
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #22, !noalias !467
  unreachable

_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit17.i: ; preds = %.noexc5.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !467
  %i.ci = load i32, ptr %31, align 4, !tbaa !40, !noalias !468
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !451
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !40, !alias.scope !451
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13ImportSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

bb.y:                                             ; preds = %.critedge.i
  store i64 1, ptr %0, align 4, !alias.scope !451
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13ImportSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13ImportSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit": ; preds = %bb.f, %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i, %"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13ImportSectionEENK3$_0clEv.exit.i", %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit17.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST15FunctionSectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 16)) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %14 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %15 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %16 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %17 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %18 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %19 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %20 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %21 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %22 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %23 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %24 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %25 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %26 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %27 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %28 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %29 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %30 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %31 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %32 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %33 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %34 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %35 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %36 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %37 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !550
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !34, !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21, !noalias !550
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %35, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !550
  %.val.i = load i8, ptr %35, align 4, !tbaa !36, !range !37, !noalias !550, !noundef !38
  %i.e = getelementptr inbounds nuw i8, ptr %35, i64 4
  %.val10.i = load i32, ptr %i.e, align 4, !noalias !550 ; 2 uses
  %i.f = trunc nuw i8 %.val.i to i1
  br i1 %i.f, label %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !39, !noalias !551
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !552
  store i32 %.val10.i, ptr %34, align 4, !tbaa !40, !noalias !553
  %i.h = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !554

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %31), !noalias !554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false), !noalias !554
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %31, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %34)
          to label %bb.c unwind label %bb.e, !noalias !554

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31), !noalias !554
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21, !noalias !554
  store i64 %.val.val.i.i.i, ptr %32, align 8, !tbaa !42, !noalias !554
  %i.i = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !554

.noexc3.i.i.i.i.i.i.i.i:                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %30), !noalias !554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false), !noalias !554
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.i, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %30, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.d unwind label %bb.e, !noalias !554

bb.d:                                             ; preds = %.noexc3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30), !noalias !554
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21, !noalias !554
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21, !noalias !554
  store i8 4, ptr %33, align 1, !tbaa !45, !noalias !554
  %i.j = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !554

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false), !noalias !554
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %29, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.f unwind label %bb.e, !noalias !554

bb.e:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i, %bb.d, %.noexc3.i.i.i.i.i.i.i.i, %bb.c, %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #22, !noalias !554
  unreachable

bb.f:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !554
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21, !noalias !554
  %i.m = load i32, ptr %34, align 4, !tbaa !40, !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21, !noalias !550
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !550
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !40, !alias.scope !550
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST15FunctionSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21, !noalias !550
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !550
  %i.q = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !550 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = zext i32 %.val10.i to i64                ; 2 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i
  store i32 263, ptr %36, align 4, !tbaa !40, !noalias !550
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !550
  %i.w = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i unwind label %bb.j, !noalias !556

.noexc.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false), !noalias !556
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %26, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %36)
          to label %bb.h unwind label %bb.j, !noalias !556

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !556
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21, !noalias !556
  store i64 %i.v, ptr %27, align 8, !tbaa !42, !noalias !556
  %i.x = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i unwind label %bb.j, !noalias !556

.noexc3.i.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !noalias !556
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %25, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.i unwind label %bb.j, !noalias !556

bb.i:                                             ; preds = %.noexc3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21, !noalias !556
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21, !noalias !556
  store i8 4, ptr %28, align 1, !tbaa !45, !noalias !556
  %i.y = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i unwind label %bb.j, !noalias !556

.noexc5.i.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false), !noalias !556
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %24, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i unwind label %bb.j, !noalias !556

bb.j:                                             ; preds = %.noexc5.i.i, %bb.i, %.noexc3.i.i, %bb.h, %.noexc.i.i, %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #22, !noalias !556
  unreachable

_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i: ; preds = %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21, !noalias !556
  %i.ab = load i32, ptr %36, align 4, !tbaa !40, !noalias !557
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !550
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !40, !alias.scope !550
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST15FunctionSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

bb.k:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i
  store i64 %i.s, ptr %2, align 8, !tbaa !49, !noalias !550
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21, !noalias !558
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %23, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !558
  %i.ae = load i8, ptr %23, align 4, !tbaa !36, !range !37, !noalias !558, !noundef !38
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40, !noalias !558 ; 4 uses
  br i1 %i.af, label %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i, label %bb.l

_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !558
  %i.al = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !558
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, %i.aj
  br i1 %i.an, label %bb.l, label %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i, %bb.k
  %.sroa.628.0.ph.i.i.i.i = phi i32 [ 278, %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21, !noalias !558
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !39, !noalias !559
  call void @llvm.lifetime.start.p0(ptr nonnull %22), !noalias !560
  store i32 %.sroa.628.0.ph.i.i.i.i, ptr %22, align 4, !tbaa !40, !noalias !561
  %i.ap = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !562

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !noalias !562
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ap, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %19, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %22)
          to label %bb.m unwind label %bb.o, !noalias !562

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !562
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21, !noalias !562
  store i64 %.val.val.i.i.i.i.i.i, ptr %20, align 8, !tbaa !42, !noalias !562
  %i.aq = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !562

.noexc3.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !562
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.n unwind label %bb.o, !noalias !562

bb.n:                                             ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !562
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !562
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21, !noalias !562
  store i8 4, ptr %21, align 1, !tbaa !45, !noalias !562
  %i.ar = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !562

.noexc5.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !562
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ar, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %17, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.p unwind label %bb.o, !noalias !562

bb.o:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %.noexc3.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #22, !noalias !562
  unreachable

bb.p:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !562
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21, !noalias !562
  %i.au = load i32, ptr %22, align 4, !tbaa !40, !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %22), !noalias !560
  br label %"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST15FunctionSectionEENK3$_0clEv.exit.i"

_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i.i.i: ; preds = %_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21, !noalias !558
  %i.av = zext i32 %i.ah to i64                   ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !84, !noalias !564 ; 2 uses
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !71, !noalias !564 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2                 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, %i.av
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i.i.i
  %i.be = sub nuw nsw i64 %i.av, %i.bc
  call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.be), !noalias !564
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i.i.i

bb.r:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i.i.i.i
  %i.bf = icmp ugt i64 %i.bc, %i.av
  br i1 %i.bf, label %bb.s, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i.i.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %bb.s
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !84, !noalias !564
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i.i.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i.i.i:       ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i.i.i.i, %bb.s, %bb.r, %bb.q
  %.not44.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not44.not.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 4
  br label %bb.t

bb.t:                                             ; preds = %.critedge.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ] ; 2 uses
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !71, !noalias !564
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21, !noalias !565
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %16, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !565
  %.val.i.i.i.i.i = load i8, ptr %16, align 4, !tbaa !36, !range !37, !noalias !565, !noundef !38
  %.val2.i.i.i.i.i = load i32, ptr %i.bh, align 4, !noalias !565 ; 2 uses
  %i.bj = trunc nuw i8 %.val.i.i.i.i.i to i1
  br i1 %i.bj, label %.critedge.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !39, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !567
  store i32 %.val2.i.i.i.i.i, ptr %15, align 4, !tbaa !40, !noalias !568
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !569

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !569
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !569
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %15)
          to label %bb.v unwind label %bb.x, !noalias !569

bb.v:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21, !noalias !569
  store i64 %.val.val.i.i.i.i.i.i.i, ptr %13, align 8, !tbaa !42, !noalias !569
  %i.bm = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !569

.noexc3.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !569
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !569
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bm, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.x, !noalias !569

bb.w:                                             ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21, !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21, !noalias !569
  store i8 4, ptr %14, align 1, !tbaa !45, !noalias !569
  %i.bn = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !569

.noexc5.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !569
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !569
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.y unwind label %bb.x, !noalias !569

bb.x:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w, %.noexc3.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #22, !noalias !569
  unreachable

bb.y:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21, !noalias !569
  %i.bq = load i32, ptr %15, align 4, !tbaa !40, !noalias !570
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !567
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !571
  store i8 4, ptr %9, align 1, !tbaa !45, !noalias !571
  %i.br = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !571
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !571
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.br, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !571
  br label %"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST15FunctionSectionEENK3$_0clEv.exit.i"

.critedge.i.i.i.i:                                ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !565
  store i32 %.val2.i.i.i.i.i, ptr %i.bs, align 4, !tbaa !79, !noalias !565
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.av
  br i1 %exitcond.not.i.i.i.i, label %.critedge.i, label %bb.t, !llvm.loop !545

"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST15FunctionSectionEENK3$_0clEv.exit.i": ; preds = %bb.y, %bb.p
  %.sroa.73.0.i = phi i32 [ %i.au, %bb.p ], [ %i.bq, %bb.y ]
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !550
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.73.0.i, ptr %i.bt, align 4, !tbaa !40, !alias.scope !550
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST15FunctionSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

.critedge.i:                                      ; preds = %.critedge.i.i.i.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i.i.i
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !550 ; 2 uses
  %i.bv = sub i64 %i.bu, %i.q
  %i.bw = load i64, ptr %2, align 8, !tbaa !49, !noalias !550
  %.not.i = icmp eq i64 %i.bv, %i.bw
  br i1 %.not.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.critedge.i
  store i32 262, ptr %37, align 4, !tbaa !40, !noalias !550
  %i.bx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i14.i unwind label %bb.ac, !noalias !572

.noexc.i14.i:                                     ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !572
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %37)
          to label %bb.aa unwind label %bb.ac, !noalias !572

bb.aa:                                            ; preds = %.noexc.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !572
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !572
  store i64 %i.bu, ptr %6, align 8, !tbaa !42, !noalias !572
  %i.by = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i15.i unwind label %bb.ac, !noalias !572

.noexc3.i15.i:                                    ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !572
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.by, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ac, !noalias !572

bb.ab:                                            ; preds = %.noexc3.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !572
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !572
  store i8 4, ptr %7, align 1, !tbaa !45, !noalias !572
  %i.bz = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i16.i unwind label %bb.ac, !noalias !572

.noexc5.i16.i:                                    ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !572
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit17.i unwind label %bb.ac, !noalias !572

bb.ac:                                            ; preds = %.noexc5.i16.i, %bb.ab, %.noexc3.i15.i, %bb.aa, %.noexc.i14.i, %bb.z
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #22, !noalias !572
  unreachable

_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit17.i: ; preds = %.noexc5.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !572
  %i.cc = load i32, ptr %37, align 4, !tbaa !40, !noalias !573
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !550
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !40, !alias.scope !550
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST15FunctionSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

bb.ad:                                            ; preds = %.critedge.i
  store i64 1, ptr %0, align 4, !alias.scope !550
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST15FunctionSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST15FunctionSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit": ; preds = %bb.f, %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit.i, %"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST15FunctionSectionEENK3$_0clEv.exit.i", %_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE.exit17.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST12TableSectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 16)) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %14 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %15 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %16 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %17 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %18 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %19 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %20 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %21 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %22 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %23 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %24 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %25 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %26 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %27 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %28 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %29 = alloca %"class.cxx20::expected.103", align 4 ; 6 uses
  %30 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  %31 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !637
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !34, !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21, !noalias !637
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %29, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !637
  %.val.i = load i8, ptr %29, align 4, !tbaa !36, !range !37, !noalias !637, !noundef !38
  %i.e = getelementptr inbounds nuw i8, ptr %29, i64 4
  %.val10.i = load i32, ptr %i.e, align 4, !noalias !637 ; 2 uses
  %i.f = trunc nuw i8 %.val.i to i1
  br i1 %i.f, label %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !39, !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !639
  store i32 %.val10.i, ptr %28, align 4, !tbaa !40, !noalias !640
  %i.h = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !641

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !noalias !641
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %25, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %28)
          to label %bb.c unwind label %bb.e, !noalias !641

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21, !noalias !641
  store i64 %.val.val.i.i.i, ptr %26, align 8, !tbaa !42, !noalias !641
  %i.i = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !641

.noexc3.i.i.i.i.i.i.i.i:                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false), !noalias !641
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.i, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %24, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.d unwind label %bb.e, !noalias !641

bb.d:                                             ; preds = %.noexc3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21, !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21, !noalias !641
  store i8 5, ptr %27, align 1, !tbaa !45, !noalias !641
  %i.j = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !641

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %23), !noalias !641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false), !noalias !641
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %23, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.f unwind label %bb.e, !noalias !641

bb.e:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i, %bb.d, %.noexc3.i.i.i.i.i.i.i.i, %bb.c, %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #22, !noalias !641
  unreachable

bb.f:                                             ; preds = %.noexc5.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23), !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21, !noalias !641
  %i.m = load i32, ptr %28, align 4, !tbaa !40, !noalias !642
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !639
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21, !noalias !637
  store i8 0, ptr %0, align 4, !tbaa !47, !alias.scope !637
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !40, !alias.scope !637
  br label %"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST12TableSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_.exit"

_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21, !noalias !637
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !637
  %i.q = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !637 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = zext i32 %.val10.i to i64                ; 2 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNR5cxx208expectedIjNS_10unexpectedIN8WasmEdge7ErrCodeEEEE5valueEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge6Loader6Loader11loadSectionERNS_7FileMgrERNS_3AST10AOTSectionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  call void @_ZN8WasmEdge7FileMgr7readU64Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.144") align 8 %27, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call fastcc void @"_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE3$_5EEDaOT_"(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.bw = load i8, ptr %26, align 8, !tbaa !126, !range !37, !noundef !38
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !40
  store i8 0, ptr %0, align 4, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !40
  br label %bb.bi

bb.r:                                             ; preds = %bb.p
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5cxx208expectedImN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %26)
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !127 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !48
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !32
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 278, ptr %i.d, align 4, !tbaa !124
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrCode5ValueEEEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store i64 28, ptr %28, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @.str.3, ptr %i.cj, align 8
  call void @_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  store i8 0, ptr %0, align 4, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 278, ptr %i.ck, align 4, !tbaa !40
  br label %bb.bi

bb.t:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @_ZNSt6vectorImSaImEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 noundef %i.cc)
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !128
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !129
  %.not192.not = icmp eq ptr %i.cn, %i.co
  br i1 %.not192.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.081193 = phi i64 [ %i.cv, %bb.u ], [ 0, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  call void @_ZN8WasmEdge7FileMgr7readU64Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.144") align 8 %30, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call fastcc void @"_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE3$_6EEDaOT_"(ptr dead_on_unwind noalias writable align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.cp = load i8, ptr %29, align 8, !tbaa !126, !range !37, !noundef !38
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5cxx208expectedImN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %29)
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !127
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !129 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.081193
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.cv = add nuw i64 %.081193, 1                 ; 2 uses
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !128
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.ct to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  %.not = icmp ult i64 %i.cv, %i.da
  br i1 %.not, label %.lr.ph, label %.critedge, !llvm.loop !1379

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !40
  store i8 0, ptr %0, align 4, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.bi

.critedge:                                        ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @_ZN8WasmEdge7FileMgr7readU64Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.144") align 8 %32, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call fastcc void @"_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE3$_7EEDaOT_"(ptr dead_on_unwind noalias writable align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.de = load i8, ptr %31, align 8, !tbaa !126, !range !37, !noundef !38
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.dg = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !40
  store i8 0, ptr %0, align 4, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !40
  br label %bb.bh

bb.x:                                             ; preds = %.critedge
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5cxx208expectedImN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !127 ; 2 uses
  %i.dl = load i64, ptr %i.cd, align 8, !tbaa !48
  %i.dm = load i64, ptr %i.cf, align 8, !tbaa !32
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = icmp ugt i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 278, ptr %i.e, align 4, !tbaa !124
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrCode5ValueEEEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  store i64 27, ptr %33, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr @.str.4, ptr %i.dp, align 8
  call void @_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  store i8 0, ptr %0, align 4, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 278, ptr %i.dq, align 4, !tbaa !40
  br label %bb.bh

bb.z:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  call void @_ZNSt6vectorImSaImEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 noundef %i.dk)
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !128
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !129
  %.not86194.not = icmp eq ptr %i.dt, %i.du
  br i1 %.not86194.not, label %.critedge89, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.z, %bb.aa
  %.080195 = phi i64 [ %i.eb, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @_ZN8WasmEdge7FileMgr7readU64Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.144") align 8 %35, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call fastcc void @"_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE3$_8EEDaOT_"(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef nonnull align 8 dereferenceable(16) %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  %i.dv = load i8, ptr %34, align 8, !tbaa !126, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph196
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5cxx208expectedImN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !127
  %i.dz = load ptr, ptr %i.dr, align 8, !tbaa !129 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.080195
  store i64 %i.dy, ptr %i.ea, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.eb = add nuw i64 %.080195, 1                 ; 2 uses
  %i.ec = load ptr, ptr %i.ds, align 8, !tbaa !128
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.dz to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 3
  %.not86 = icmp ult i64 %i.eb, %i.eg
  br i1 %.not86, label %.lr.ph196, label %.critedge89, !llvm.loop !1380

bb.ab:                                            ; preds = %.lr.ph196
  %i.eh = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !40
  store i8 0, ptr %0, align 4, !tbaa !47
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.bh

.critedge89:                                      ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %37, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.val101 = load i8, ptr %37, align 4, !tbaa !36, !range !37, !noundef !38
  %i.ek = getelementptr inbounds nuw i8, ptr %37, i64 4
  %.val102 = load i32, ptr %i.ek, align 4
  call fastcc void @"_ZNO5cxx208expectedIjN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE3$_9EEDaOT_"(ptr dead_on_unwind noalias writable align 4 %36, i8 %.val101, i32 %.val102)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  %i.el = load i8, ptr %36, align 4, !tbaa !36, !range !37, !noundef !38
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge89
  %i.en = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !40
  store i8 0, ptr %0, align 4, !tbaa !47
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !40
  br label %bb.bg

bb.ad:                                            ; preds = %.critedge89
  %i.eq = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 4 dereferenceable(8) %36)
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !79
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = load i64, ptr %i.cd, align 8, !tbaa !48
  %i.eu = load i64, ptr %i.cf, align 8, !tbaa !32
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp ult i64 %i.ev, %i.es
  br i1 %i.ew, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 278, ptr %i.f, align 4, !tbaa !124
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrCode5ValueEEEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  store i64 31, ptr %38, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr @.str.5, ptr %i.ex, align 8
  call void @_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  store i8 0, ptr %0, align 4, !tbaa !47
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 278, ptr %i.ey, align 4, !tbaa !40
  br label %bb.bg

bb.af:                                            ; preds = %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  call void @_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 noundef %i.es)
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1404 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1404 ; 2 uses
  %.promoted = load i8, ptr %0, align 4           ; 2 uses
  %.not191206 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not191206, label %.critedge93, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %46, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 2 uses
  %.promoted209 = load i32, ptr %i.fh, align 4    ; 2 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ba, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0129.0207, i64 48 ; 2 uses
  %.not191 = icmp eq ptr %i.fk, %i.fc
  br i1 %.not191, label %.critedge93, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph208, %bb.ag
  %.sroa.0129.0207 = phi ptr [ %i.fa, %.lr.ph208 ], [ %i.fk, %bb.ag ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  call void @_ZN8WasmEdge7FileMgr8readByteEv(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.127") align 4 %40, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call fastcc void @"_ZNO5cxx208expectedIhN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE4$_10EEDaOT_"(ptr dead_on_unwind noalias writable align 4 %39, ptr noundef nonnull align 4 dereferenceable(8) %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.fl = load i8, ptr %39, align 4, !tbaa !75, !range !37, !noundef !38
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ai, label %.critedge91

.critedge91:                                      ; preds = %bb.ah
  %i.fn = getelementptr inbounds nuw i8, ptr %39, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !40
  store i8 0, ptr %0, align 4, !tbaa !47
  store i32 %i.fo, ptr %i.fh, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.bg

bb.ai:                                            ; preds = %bb.ah
  %i.fp = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNR5cxx208expectedIhN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 4 dereferenceable(8) %39)
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0129.0207, i64 40
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  call void @_ZN8WasmEdge7FileMgr7readU64Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.144") align 8 %42, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call fastcc void @"_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE4$_11EEDaOT_"(ptr dead_on_unwind noalias writable align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.fs = load i8, ptr %41, align 8, !tbaa !126, !range !37, !noundef !38
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.aj, label %.critedge95

.critedge95:                                      ; preds = %bb.ai
  %i.fu = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !40
  store i8 0, ptr %0, align 4, !tbaa !47
  store i32 %i.fv, ptr %i.fh, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ai
  %i.fw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5cxx208expectedImN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %41)
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !127
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0129.0207, i64 32
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  call void @_ZN8WasmEdge7FileMgr7readU64Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.144") align 8 %44, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call fastcc void @"_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE4$_12EEDaOT_"(ptr dead_on_unwind noalias writable align 8 %43, ptr noundef nonnull align 8 dereferenceable(16) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  %i.fz = load i8, ptr %43, align 8, !tbaa !126, !range !37, !noundef !38
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ak, label %.critedge97

.critedge97:                                      ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !40
  store i8 0, ptr %0, align 4, !tbaa !47
  store i32 %i.gc, ptr %i.fh, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.bg

bb.ak:                                            ; preds = %bb.aj
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5cxx208expectedImN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %43)
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !127
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0129.0207, i64 24 ; 2 uses
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  call void @_ZN8WasmEdge7FileMgr7readU32Ev(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.103") align 4 %46, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.val103 = load i8, ptr %46, align 4, !tbaa !36, !range !37, !noundef !38
  %.val104 = load i32, ptr %i.fd, align 4
  call fastcc void @"_ZNO5cxx208expectedIjN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader11loadSectionERNS1_7FileMgrERNS1_3AST10AOTSectionEE4$_13EEDaOT_"(ptr dead_on_unwind noalias writable align 4 %45, i8 %.val103, i32 %.val104)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.gg = load i8, ptr %45, align 4, !tbaa !36, !range !37, !noundef !38
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %45, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !40
  br label %.critedge99

bb.am:                                            ; preds = %bb.ak
  %i.gk = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNR5cxx208expectedIjN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 4 dereferenceable(8) %45)
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !79
  %i.gm = zext i32 %i.gl to i64                   ; 3 uses
  %i.gn = load i64, ptr %i.cd, align 8, !tbaa !48
  %i.go = load i64, ptr %i.cf, align 8, !tbaa !32
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = icmp ult i64 %i.gp, %i.gm
  br i1 %i.gq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i32 278, ptr %i.g, align 4, !tbaa !124
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrCode5ValueEEEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  store i64 38, ptr %47, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr @.str.6, ptr %i.gr, align 8
  call void @_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %.critedge99

bb.ao:                                            ; preds = %bb.am
  %i.gs = load i64, ptr %i.gf, align 8, !tbaa !127
  %i.gt = icmp ult i64 %i.gs, %i.gm
  br i1 %i.gt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i32 278, ptr %i.h, align 4, !tbaa !124
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrCode5ValueEEEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  store i64 53, ptr %48, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr @.str.7, ptr %i.gu, align 8
  call void @_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  br label %.critedge99

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  call void @_ZN8WasmEdge7FileMgr9readBytesEm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.185") align 8 %50, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %i.gm)
  invoke fastcc void @"_ZNO5cxx208expectedISt6vectorIhSaIhEEN8WasmEdge7ErrCodeEE9map_errorIZNS4_6Loader6Loader11loadSectionERNS4_7FileMgrERNS4_3AST10AOTSectionEE4$_14EEDaOT_"(ptr dead_on_unwind noalias writable align 8 %49, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.gv = load i8, ptr %50, align 8, !tbaa !56, !range !37, !noundef !38
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.as, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit

bb.as:                                            ; preds = %bb.ar
  %i.gx = load ptr, ptr %i.fe, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gy = load ptr, ptr %i.ff, align 8, !tbaa !59
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hb) #23
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit: ; preds = %bb.ar, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  %i.hc = load i8, ptr %49, align 8, !tbaa !56, !range !37, !noundef !38
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.ax, label %.loopexit

bb.au:                                            ; preds = %bb.aq
  %i.he = landingpad { ptr, i32 }
          cleanup
  store i32 %.promoted209, ptr %i.fh, align 4
  store i8 %.promoted, ptr %0, align 4
  %i.hf = load i8, ptr %50, align 8, !tbaa !56, !range !37, !noundef !38
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.av, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit112

bb.av:                                            ; preds = %bb.au
  %i.hh = load ptr, ptr %i.fe, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i111, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit112, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hi = load ptr, ptr %i.ff, align 8, !tbaa !59
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hl) #23
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit112

_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit112: ; preds = %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit116

bb.ax:                                            ; preds = %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  %i.hm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNR5cxx208expectedISt6vectorIhSaIhEEN8WasmEdge7ErrCodeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(32) %49)
          to label %bb.ay unwind label %bb.bd     ; 3 uses

bb.ay:                                            ; preds = %bb.ax
  %i.hn = load <2 x ptr>, ptr %i.hm, align 8, !tbaa !61
  store <2 x ptr> %i.hn, ptr %51, align 16, !tbaa !61
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !59
  store ptr %i.hp, ptr %i.fi, align 16, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false)
  %i.hq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0129.0207, ptr noundef nonnull align 8 dereferenceable(24) %51) #21 ; 0 uses
  %i.hr = load ptr, ptr %51, align 16, !tbaa !58  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hs = load ptr, ptr %i.fi, align 16, !tbaa !59
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.hv) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  %.pre = load i8, ptr %49, align 8, !tbaa !56, !range !37
  %i.hw = trunc nuw i8 %.pre to i1
  br i1 %i.hw, label %bb.bb, label %bb.ag

bb.bb:                                            ; preds = %bb.ba
  %i.hx = load ptr, ptr %i.fg, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i113, label %bb.ag, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hy = load ptr, ptr %i.fj, align 8, !tbaa !59
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #23
  br label %bb.ag

bb.bd:                                            ; preds = %bb.ax
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i32 %.promoted209, ptr %i.fh, align 4
  store i8 %.promoted, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  %i.id = load i8, ptr %49, align 8, !tbaa !56, !range !37, !noundef !38
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.be, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit116

bb.be:                                            ; preds = %bb.bd
  %i.if = load ptr, ptr %i.fg, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i115 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i115, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit116, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ig = load ptr, ptr %i.fj, align 8, !tbaa !59
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ij) #23
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit116

_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit116: ; preds = %bb.bf, %bb.be, %bb.bd, %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit112
  %.pn = phi { ptr, i32 } [ %i.he, %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit112 ], [ %i.ic, %bb.bd ], [ %i.ic, %bb.be ], [ %i.ic, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  resume { ptr, i32 } %.pn

.critedge99:                                      ; preds = %bb.ap, %bb.an, %bb.al
  %.sink = phi i32 [ 278, %bb.ap ], [ 278, %bb.an ], [ %i.gj, %bb.al ]
  store i8 0, ptr %0, align 4, !tbaa !47
  store i32 %.sink, ptr %i.fh, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.bg

.critedge93:                                      ; preds = %bb.ag, %bb.af
  store i64 1, ptr %0, align 4
  br label %bb.bg

.loopexit:                                        ; preds = %_ZN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EED2Ev.exit
  %i.ik = load i32, ptr %i.fg, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  store i32 %i.ik, ptr %i.fh, align 4
  store i8 0, ptr %0, align 4
  br label %bb.bg
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE:bb.a

bb.bv:                                            ; preds = %bb.d
  %i.cq = load i8, ptr %.0195, align 1, !tbaa !40 ; 3 uses
  %i.cr = icmp eq i8 %i.cq, 125
  br i1 %i.cr, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cs = lshr i8 %i.cq, 2
  %i.ct = and i8 %i.cs, 62
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = lshr i64 4203265827220226048, %i.cu
  %i.cw = and i64 %i.cv, 3                        ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0195, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.a, %i.cz
  %i.db = icmp slt i64 %i.da, 1
  br i1 %i.db, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.14) #24
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.dc = icmp eq i8 %i.cq, 123
  br i1 %i.dc, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.15) #24
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.dd = load i8, ptr %i.cy, align 1, !tbaa !40
  switch i8 %i.dd, label %_ZN3fmt3v116detail11parse_alignEc.exit97.thread [
    i8 60, label %_ZN3fmt3v116detail11parse_alignEc.exit97
    i8 62, label %bb.cb
    i8 94, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  br label %_ZN3fmt3v116detail11parse_alignEc.exit97

bb.cc:                                            ; preds = %bb.ca
  br label %_ZN3fmt3v116detail11parse_alignEc.exit97

_ZN3fmt3v116detail11parse_alignEc.exit97:         ; preds = %bb.ca, %bb.cb, %bb.cc
  %.0.i96 = phi i16 [ 1, %bb.ca ], [ 3, %bb.cc ], [ 2, %bb.cb ]
  %i.de = icmp eq i32 %.sroa.0146.0, 0
  br i1 %i.de, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit99, label %_ZN3fmt3v116detail11parse_alignEc.exit97.thread

_ZN3fmt3v116detail11parse_alignEc.exit97.thread:  ; preds = %bb.ca, %_ZN3fmt3v116detail11parse_alignEc.exit97
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit99: ; preds = %_ZN3fmt3v116detail11parse_alignEc.exit97
  %i.df = trunc nuw nsw i64 %i.cw to i8
  %i.dg = add nuw nsw i8 %i.df, 1
  store i8 %i.dg, ptr %i.s, align 1, !tbaa !149
  %cond = icmp eq i64 %i.cw, 0
  br i1 %cond, label %bb.cd, label %.lr.ph.i

bb.cd:                                            ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit99
  %i.dh = load i8, ptr %.0195, align 1, !tbaa !40
  store i8 %i.dh, ptr %i.r, align 1, !tbaa !40
  store i8 0, ptr %i.v, align 4, !tbaa !40
  br label %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit99
  %i.di = load i8, ptr %.0195, align 1, !tbaa !40
  store i8 %i.di, ptr %i.r, align 1, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %.0195, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !40
  store i8 %i.dk, ptr %i.w, align 4, !tbaa !40
  %exitcond.not.i.1 = icmp eq i64 %i.cw, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.0195, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !40
  store i8 %i.dm, ptr %i.x, align 1, !tbaa !40
  %exitcond.not.i.2 = icmp eq i64 %i.cw, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.dn = getelementptr inbounds nuw i8, ptr %.0195, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !40
  store i8 %i.do, ptr %i.y, align 2, !tbaa !40
  br label %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.cd
  %i.dp = load i16, ptr %i.l, align 1
  %i.dq = and i16 %i.dp, -16
  %i.dr = or disjoint i16 %i.dq, %.0.i96
  store i16 %i.dr, ptr %i.l, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit72, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE.exit, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit68, %bb.y, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit64, %bb.o, %_ZN3fmt3v116detail11parse_alignEc.exit61
  %.1196 = phi ptr [ %i.ds, %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ad, %_ZN3fmt3v116detail11parse_alignEc.exit61 ], [ %i.ai, %bb.o ], [ %i.am, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit64 ], [ %i.as, %bb.y ], [ %i.au, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit68 ], [ %i.ba, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE.exit ], [ %i.be, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit72 ] ; 4 uses
  %.sroa.0146.1 = phi i32 [ 1, %_ZN3fmt3v116detail6fill_taSIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v116detail11parse_alignEc.exit61 ], [ 2, %bb.o ], [ 3, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit64 ], [ 4, %bb.y ], [ 5, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit68 ], [ 6, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit72 ]
  %i.dt = icmp eq ptr %.1196, %1
  br i1 %i.dt, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.du = load i8, ptr %.1196, align 1, !tbaa !40
  br label %bb.d, !llvm.loop !1583

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit.sink.split: ; preds = %bb.bs, %bb.bp, %bb.bm, %bb.bj, %.loopexit204, %.loopexit203, %.loopexit202, %.loopexit201, %.loopexit200, %bb.ap, %.loopexit, %bb.aj
  %.sink = phi i8 [ 3, %bb.bp ], [ 3, %bb.aj ], [ 4, %.loopexit ], [ 5, %bb.ap ], [ 6, %.loopexit200 ], [ 1, %.loopexit201 ], [ 2, %.loopexit202 ], [ 3, %.loopexit203 ], [ 4, %.loopexit204 ], [ 7, %bb.bj ], [ 2, %bb.bm ], [ 1, %bb.bs ]
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.sink, ptr %i.dv, align 8, !tbaa !155
  %i.dw = getelementptr inbounds nuw i8, ptr %.0195, i64 1
  br label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit: ; preds = %bb.bv, %bb.ce, %bb.j, %bb.p, %bb.ab, %bb.ag, %bb.d, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit.sink.split, %bb.u, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.aw, %bb.az, %bb.bc, %bb.bf, %bb.bk, %bb.bn, %bb.bq, %bb.bt, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %.0195, %bb.bt ], [ %.0195, %bb.bc ], [ %.0195, %bb.bf ], [ %.0195, %bb.bk ], [ %.0195, %bb.bn ], [ %.0195, %bb.u ], [ %.0195, %bb.bq ], [ %i.dw, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit.sink.split ], [ %.0195, %bb.ak ], [ %.0195, %bb.an ], [ %.0195, %bb.aq ], [ %.0195, %bb.at ], [ %.0195, %bb.aw ], [ %.0195, %bb.az ], [ %.0195, %bb.ab ], [ %.0195, %bb.p ], [ %.0195, %bb.j ], [ %.1196, %bb.ce ], [ %.0195, %bb.bv ], [ %.0195, %bb.d ], [ %.0195, %bb.ag ]
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1112report_errorEPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v116detail18parse_dynamic_specIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::dynamic_spec_id_handler", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !40      ; 3 uses
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.g = sub i64 %i.c, %i.d
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.a to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i31 = icmp eq ptr %i.j, %1
  br i1 %.not34.i31, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %.0.i33 = phi ptr [ %i.p, %bb.c ], [ %0, %bb.b ]
  %.027.i32 = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !40    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !0

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i32, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.q, %bb.c ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i33, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.e, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !40
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ugt i64 %i.ae, 2147483647
  %.not16 = icmp eq i32 %.lcssa, -1
  %or.cond25 = select i1 %i.af, i1 true, i1 %.not16
  br i1 %or.cond25, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.not16.old = icmp eq i32 %.lcssa, -1
  br i1 %.not16.old, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !79
  br label %bb.p

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.17) #24
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.ag = icmp eq i8 %i.a, 123
  br i1 %i.ag, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %4, ptr %5, align 8, !tbaa !1584
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ai, align 8, !tbaa !1585
  %.not = icmp eq ptr %i.ah, %1
  br i1 %.not, label %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !40
  switch i8 %i.aj, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = call noundef ptr @_ZN3fmt3v116detail15do_parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_(ptr noundef nonnull %i.ah, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !159 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE7on_autoEv.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE7on_autoEv.exit.i: ; preds = %bb.k
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !159
  store i32 1, ptr %3, align 8, !tbaa !161
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.am, ptr %.sroa.42.0..sroa_idx.i.i, align 8
  br label %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit

_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit: ; preds = %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE7on_autoEv.exit.i, %bb.j, %bb.h
  %.022 = phi ptr [ %i.ah, %bb.h ], [ %i.ak, %bb.j ], [ %i.ah, %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE7on_autoEv.exit.i ] ; 3 uses
  %.not15 = icmp eq ptr %.022, %1
  br i1 %.not15, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit
  %i.ap = load i8, ptr %.022, align 1, !tbaa !40
  %i.aq = icmp eq i8 %i.ap, 125
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.022, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %_ZN3fmt3v116detail12parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_.exit
  call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.18) #24
  unreachable

bb.p:                                             ; preds = %bb.f, %bb.g, %bb.n
  %.0 = phi ptr [ %i.ar, %bb.n ], [ %.lcssa.i, %bb.f ], [ %0, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v116detail15do_parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !40      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !0

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !40    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !0

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !40
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !40
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.18) #24
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1588, !nonnull !38, !align !1589 ; 2 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !161
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %.021, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.al = load ptr, ptr %2, align 8, !tbaa !1590, !nonnull !38, !align !1589
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !159
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.19) #24
  unreachable

_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.am, align 8, !tbaa !159
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ap = and i8 %i.c, -33
  %i.aq = add i8 %i.ap, -65
  %or.cond10.i = icmp ult i8 %i.aq, 26
  %i.ar = icmp eq i8 %i.c, 95
  %i.as = or i1 %i.ar, %or.cond10.i
  br i1 %i.as, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.at = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.at  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.au, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.18) #24
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.av, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1586

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.aw = phi ptr [ %i.av, %.critedge4 ], [ %i.au, %.critedge4.preheader ] ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !40  ; 3 uses
  %i.ay = and i8 %i.ax, -33
  %i.az = add i8 %i.ay, -65
  %or.cond10.i32 = icmp ult i8 %i.az, 26
  %i.ba = icmp eq i8 %i.ax, 95
  %i.bb = or i1 %i.ba, %or.cond10.i32
  %i.bc = add i8 %i.ax, -48
  %or.cond31 = icmp ult i8 %i.bc, 10
  %or.cond38 = or i1 %or.cond31, %i.bb
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1586

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1586

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.aw, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bd = ptrtoint ptr %.lcssa40 to i64
  %i.be = ptrtoint ptr %0 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1588, !nonnull !38, !align !1589 ; 3 uses
  store i32 2, ptr %i.bh, align 8, !tbaa !161
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %0, ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.bf, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !40
  %i.bi = load ptr, ptr %2, align 8, !tbaa !1590, !nonnull !38, !align !1589
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 -1, ptr %i.bj, align 8, !tbaa !159
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v119formatterISt17basic_string_viewIcSt11char_traitsIcEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES5_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::basic_format_arg", align 16 ; 7 uses
  %5 = alloca %"class.fmt::v11::basic_format_arg", align 16 ; 4 uses
  %6 = alloca %"class.fmt::v11::basic_format_arg", align 16 ; 6 uses
  %7 = alloca %"class.fmt::v11::basic_format_arg", align 16 ; 4 uses
  %8 = alloca %"struct.fmt::v11::detail::dynamic_format_specs", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1606
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !1608
  %i.g = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i, ptr %2, i64 %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.022.0.copyload = load i32, ptr %i.h, align 8, !tbaa !161
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8 ; 2 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  switch i32 %.sroa.022.0.copyload, label %_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit [
    i32 2, label %bb.h
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %.sroa.524.0.copyload to i64 ; 4 uses
  %.sroa.421.0.extract.trunc = trunc i64 %i.i to i32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !164, !noalias !1612 ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = trunc i64 %i.l to i32
  %i.o = icmp slt i32 %.sroa.421.0.extract.trunc, %i.n
  br i1 %i.o, label %_ZNK3fmt3v117context3argEi.exit.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp ugt i32 %.sroa.421.0.extract.trunc, 14
  br i1 %i.p, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = shl i64 %i.i, 2
  %i.r = and i64 %i.q, 60
  %i.s = lshr i64 %i.l, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 15                         ; 2 uses
  store i32 %i.u, ptr %i.k, align 16, !tbaa !168, !alias.scope !1612
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread7.i.i

_ZNK3fmt3v117context3argEi.exit.thread7.i.i:      ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40, !noalias !1612
  %i.y = and i64 %i.i, 15
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !169
  br label %_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i

_ZNK3fmt3v117context3argEi.exit.i.i:              ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !1612
  %sext = shl i64 %i.i, 32
  %i.ac = ashr exact i64 %sext, 27
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %6, ptr noundef nonnull align 16 dereferenceable(20) %i.ad, i64 20, i1 false), !tbaa.struct !171
  %.pr.pre.i.i = load i32, ptr %i.k, align 16, !tbaa !168, !alias.scope !1609
  %i.ae = icmp eq i32 %.pr.pre.i.i, 0
  br i1 %i.ae, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i, label %_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i

_ZNK3fmt3v117context3argEi.exit.thread.i.i:       ; preds = %_ZNK3fmt3v117context3argEi.exit.i.i, %bb.g, %bb.f, %bb.e
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.195) #24, !noalias !1609
  unreachable

_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i: ; preds = %_ZNK3fmt3v117context3argEi.exit.i.i, %_ZNK3fmt3v117context3argEi.exit.thread7.i.i
  %i.af = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_(ptr noundef nonnull byval(%"class.fmt::v11::basic_format_arg") align 16 %6)
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.c
  call void @_ZN3fmt3v116detail7get_argINS0_7contextENS0_17basic_string_viewIcEEEEDTcldtfp_3argfp0_EERT_T0_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v11::basic_format_arg") align 16 %7, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.524.0.copyload, i64 %.sroa.625.0.copyload)
  %i.ag = call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_(ptr noundef nonnull byval(%"class.fmt::v11::basic_format_arg") align 16 %7)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i
  %.sink.i = phi i32 [ %i.ag, %bb.h ], [ %i.af, %_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i ]
  store i32 %.sink.i, ptr %8, align 8, !tbaa !79
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit

_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit: ; preds = %bb.c, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.030.0.copyload = load i32, ptr %i.ai, align 8, !tbaa !161
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.532.0.copyload = load ptr, ptr %.sroa.532.0..sroa_idx, align 8 ; 2 uses
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.sroa.633.0.copyload = load i64, ptr %.sroa.633.0..sroa_idx, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  switch i32 %.sroa.030.0.copyload, label %_ZN3fmt3v116detail19handle_dynamic_specINS1_17precision_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit [
    i32 2, label %bb.m
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit
  %i.aj = ptrtoint ptr %.sroa.532.0.copyload to i64 ; 4 uses
  %.sroa.428.0.extract.trunc = trunc i64 %i.aj to i32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !164, !noalias !1616 ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = trunc i64 %i.am to i32
  %i.ap = icmp slt i32 %.sroa.428.0.extract.trunc, %i.ao
  br i1 %i.ap, label %_ZNK3fmt3v117context3argEi.exit.i.i7, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i6

bb.k:                                             ; preds = %bb.i
  %i.aq = icmp ugt i32 %.sroa.428.0.extract.trunc, 14
  br i1 %i.aq, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = shl i64 %i.aj, 2
  %i.as = and i64 %i.ar, 60
  %i.at = lshr i64 %i.am, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 15                       ; 2 uses
  store i32 %i.av, ptr %i.al, align 16, !tbaa !168, !alias.scope !1616
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i6, label %_ZNK3fmt3v117context3argEi.exit.thread7.i.i12

_ZNK3fmt3v117context3argEi.exit.thread7.i.i12:    ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40, !noalias !1616
  %i.az = and i64 %i.aj, 15
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !169
  br label %.sink.split.i10

_ZNK3fmt3v117context3argEi.exit.i.i7:             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40, !noalias !1616
  %sext34 = shl i64 %i.aj, 32
  %i.bd = ashr exact i64 %sext34, 27
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.be, i64 20, i1 false), !tbaa.struct !171
  %.pr.pre.i.i8 = load i32, ptr %i.al, align 16, !tbaa !168, !alias.scope !1613
  %i.bf = icmp eq i32 %.pr.pre.i.i8, 0
  br i1 %i.bf, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i6, label %.sink.split.i10

_ZNK3fmt3v117context3argEi.exit.thread.i.i6:      ; preds = %_ZNK3fmt3v117context3argEi.exit.i.i7, %bb.l, %bb.k, %bb.j
  call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.195) #24, !noalias !1613
  unreachable

bb.m:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit
  call void @_ZN3fmt3v116detail7get_argINS0_7contextENS0_17basic_string_viewIcEEEEDTcldtfp_3argfp0_EERT_T0_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v11::basic_format_arg") align 16 %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.532.0.copyload, i64 %.sroa.633.0.copyload)
  br label %.sink.split.i10

.sink.split.i10:                                  ; preds = %_ZNK3fmt3v117context3argEi.exit.thread7.i.i12, %_ZNK3fmt3v117context3argEi.exit.i.i7, %bb.m
  %.sink = phi ptr [ %5, %bb.m ], [ %4, %_ZNK3fmt3v117context3argEi.exit.i.i7 ], [ %4, %_ZNK3fmt3v117context3argEi.exit.thread7.i.i12 ]
  %i.bg = call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_(ptr noundef nonnull byval(%"class.fmt::v11::basic_format_arg") align 16 %.sink)
  store i32 %i.bg, ptr %i.ah, align 4, !tbaa !79
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS1_17precision_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit

_ZN3fmt3v116detail19handle_dynamic_specINS1_17precision_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit: ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit, %.sink.split.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.0.0.copyload.i16 = load ptr, ptr %3, align 8, !tbaa !1608
  %i.bh = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i16, ptr %2, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS1_17precision_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit
  %.sroa.015.0.i = phi ptr [ %i.g, %bb.b ], [ %i.bh, %_ZN3fmt3v116detail19handle_dynamic_specINS1_17precision_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit ]
  ret ptr %.sroa.015.0.i
}

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge9WasmPhaseENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.222", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.a, align 4, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i16 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 32, ptr %i.c, align 1, !tbaa !40
  %scevgep.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %scevgep.i.i.i.i.i.i.i, i8 0, i64 3, i1 false), !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 1, ptr %i.d, align 1, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !40
  %i.g = load ptr, ptr %1, align 8, !tbaa !151    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !152  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = icmp samesign eq i64 %i.i, 0
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.g, align 1, !tbaa !40
  %i.m = icmp eq i8 %i.l, 125
  br i1 %i.m, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !151
  %.pre6 = load i64, ptr %i.h, align 8, !tbaa !152
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i64 [ %.pre6, %bb.c ], [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  store ptr %i.t, ptr %1, align 8, !tbaa !151
  %i.u = sub i64 %i.o, %i.s
  store i64 %i.u, ptr %i.h, align 8, !tbaa !152
  %i.v = load i8, ptr %0, align 1, !tbaa !154
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @_ZN8WasmEdgeL12WasmPhaseStrE, i64 %i.w ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 8, !tbaa !127
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !61
  %i.y = invoke ptr @_ZNK3fmt3v119formatterISt17basic_string_viewIcSt11char_traitsIcEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES5_RT_(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK3fmt3v119formatterIN8WasmEdge9WasmPhaseEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #22
  unreachable

_ZNK3fmt3v119formatterIN8WasmEdge9WasmPhaseEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_.exit: ; preds = %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::find_escape_result", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %6 = alloca %class.anon.226, align 8            ; 6 uses
  %7 = alloca %class.anon.225, align 8            ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !148  ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %i.j, ptr %i.e, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i64 %2, ptr %i.f, align 8, !tbaa !127
  store ptr %1, ptr %6, align 8, !tbaa !1627
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.e, ptr %i.l, align 8, !tbaa !172
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.f, ptr %i.m, align 8, !tbaa !172
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.226) align 8 %6)
  %i.n = load i64, ptr %i.f, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %i.n, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i8, ptr %i.o, align 4, !tbaa !155
  %i.q = icmp eq i8 %i.p, 1                       ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = ptrtoint ptr %i.r to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.019.0.i = phi i64 [ 1, %bb.e ], [ %i.ac, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ %1, %bb.e ], [ %i.ab, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.r, ptr %5, align 8, !tbaa !174, !alias.scope !1628
  store ptr null, ptr %i.s, align 8, !tbaa !175, !alias.scope !1628
  store i32 0, ptr %i.t, align 8, !tbaa !176, !alias.scope !1628
  %i.v = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0.i, i64 %i.w, ptr nonnull align 8 %5)
  %i.x = load ptr, ptr %5, align 8, !tbaa !174    ; 2 uses
  %.not6.i.i = icmp eq ptr %.0.i, %i.x
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = sub i64 %.sroa.019.0.i, %i.v
  %i.aa = add i64 %i.z, %i.y
  %.sroa.04.0.lcssa.i.i = select i1 %.not6.i.i, i64 %.sroa.019.0.i, i64 %i.aa ; 2 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !175 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = call i64 @_ZN3fmt3v116detail16write_escaped_cpINS1_17counting_iteratorEcEET_S4_RKNS1_18find_escape_resultIT0_EE(i64 %.sroa.04.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not12.i = icmp eq ptr %i.ab, %i.r
  br i1 %.not12.i, label %_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit, label %bb.f, !llvm.loop !1619

_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit: ; preds = %bb.g, %.thread.i
  %.sroa.019.127.i = phi i64 [ %.sroa.04.0.lcssa.i.i, %.thread.i ], [ %i.ac, %bb.g ]
  %i.ad = add i64 %.sroa.019.127.i, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit, %bb.d
  %.1 = phi i64 [ %i.ad, %_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit ], [ %.0, %bb.d ] ; 7 uses
  %i.ae = load i32, ptr %3, align 4, !tbaa !177
  %.not = icmp eq i32 %i.ae, 0                    ; 2 uses
  %brmerge = or i1 %i.q, %.not
  %.mux = select i1 %.not, i64 0, i64 %.1
  br i1 %brmerge, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 0, ptr %i.d, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %i.d, ptr %4, align 8, !tbaa !172
  %i.af = icmp ugt i64 %.1, 3
  br i1 %i.af, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -3
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.028.i.i = phi ptr [ %1, %bb.j ], [ %i.ai, %bb.l ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN3fmt3v116detail12write_paddedIcLNS0_5align4typeE1ENS0_14basic_appenderIcEEZNS1_5writeIcS6_EET0_S8_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS6_E_EET1_SG_SE_mmOT2_:bb.a
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !tbaa !141
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph27.i.i.i
  %i.ap = phi i64 [ %.pre.i.i.i, %.lr.ph27.i.i.i ], [ %i.bu, %._crit_edge.i.i.i ] ; 2 uses
  %.01925.i.i.i = phi ptr [ %i.ah, %.lr.ph27.i.i.i ], [ %i.bv, %._crit_edge.i.i.i ] ; 9 uses
  %i.aq = ptrtoint ptr %.01925.i.i.i to i64       ; 2 uses
  %i.ar = sub i64 %i.al, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !140 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !138
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.as), !inline_history !1630
  %.pre30.i.i.i = load i64, ptr %i.an, align 8, !tbaa !140
  %.pre31.i.i.i = load i64, ptr %i.am, align 8, !tbaa !141
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.aw = phi i64 [ %i.ap, %bb.g ], [ %.pre31.i.i.i, %bb.h ] ; 4 uses
  %i.ax = phi i64 [ %i.at, %bb.g ], [ %.pre30.i.i.i, %bb.h ]
  %i.ay = sub i64 %i.ax, %i.aw
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ar) ; 13 uses
  %i.az = load ptr, ptr %.sroa.09.0, align 8, !tbaa !139 ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw ; 7 uses
  %.not29.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.aw, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %spec.select.i.i.i, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %spec.select.i.i.i, 28
  %n.vec = and i64 %spec.select.i.i.i, -32        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !40
  %wide.load37 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !40
  store <16 x i8> %wide.load37, ptr %i.bi, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1631

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !186

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %spec.select.i.i.i, -4       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index39
  store <4 x i8> %wide.load40, ptr %i.bl, align 1, !tbaa !40
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1632

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %spec.select.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.023.i.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.prol ], [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %.023.i.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !40
  %i.bq = add nuw i64 %.023.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1633

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.023.i.i.i.unr = phi i64 [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.prol ]
  %i.br = sub i64 %.023.i.i.i.ph, %spec.select.i.i.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i = load i64, ptr %i.am, align 8, !tbaa !141
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.bt = phi i64 [ %.pre32.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i ]
  %i.bu = add i64 %i.bt, %spec.select.i.i.i       ; 2 uses
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !141
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %spec.select.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %i.ak
  br i1 %.not.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.023.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ %.023.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %.023.i.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !40
  %i.bz = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !40
  %i.cd = add nuw i64 %.023.i.i.i, 2              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !40
  %i.ch = add nuw i64 %.023.i.i.i, 3              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !40
  %i.cl = add nuw i64 %.023.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cl, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1634

_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.04.0.i = phi ptr [ %i.af, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.c, %i.l
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cm = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS1_6fill_tE(ptr %.sroa.04.0.i, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cm, %bb.i ], [ %.sroa.04.0.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %0, i64 %1, ptr noundef byval(%class.anon.226) align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !61 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !172 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !172 ; 2 uses
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %bb.b
  %.028 = phi ptr [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit ] ; 8 uses
  %.not36 = icmp ult ptr %.028, %i.f
  br i1 %.not36, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %.028, align 1, !tbaa !40
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 3                         ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.189, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !40
  %i.n = sext i8 %i.m to i64                      ; 5 uses
  %i.o = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !40    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.028, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40    ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.n
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79
  %i.y = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79
  %i.aa = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.n
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79
  %i.ac = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !127 ; 2 uses
  %.not.i8.not.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i8.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %.sroa.5.0.copyload, align 8, !tbaa !127
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %.028 to i64
  %i.af = sub i64 %i.ae, %i.g
  store i64 %i.af, ptr %.sroa.7.0.copyload, align 8, !tbaa !127
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit: ; preds = %bb.e, %bb.f
  %i.ag = and i8 %i.t, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %i.aj = and i8 %i.r, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 12
  %i.am = and i32 %i.p, %i.i
  %i.an = shl nuw nsw i32 %i.am, 18
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ai, %i.ao
  %i.aq = and i8 %i.v, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.as, %i.x                    ; 3 uses
  %i.au = icmp ult i32 %i.at, %i.z
  %i.av = select i1 %i.au, i32 64, i32 0
  %i.aw = lshr i8 %i.t, 4
  %i.ax = and i8 %i.aw, 12
  %i.ay = lshr i8 %i.r, 2
  %i.az = and i8 %i.ay, 48
  %i.ba = or disjoint i8 %i.ax, %i.az
  %i.bb = lshr i8 %i.v, 6
  %i.bc = or disjoint i8 %i.ba, %i.bb
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.av, %i.bd
  %i.bf = icmp samesign ugt i32 %i.at, 1114111
  %i.bg = select i1 %i.bf, i32 256, i32 0
  %i.bh = or disjoint i32 %i.be, %i.bg
  %.mask.i.i = and i32 %i.at, 2147481600
  %i.bi = icmp eq i32 %.mask.i.i, 55296
  %i.bj = select i1 %i.bi, i32 128, i32 0
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = xor i32 %i.bk, 42
  %i.bm = lshr i32 %i.bl, %i.ab
  %.not.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds i8, ptr %.028, i64 %i.n
  %.not.i.i = lshr i32 -2130771968, %i.j
  %i.bo = and i32 %.not.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = select i1 %.not.i, ptr %i.bq, ptr %i.q
  br i1 %.not.i8.not.i, label %.thread, label %bb.c, !llvm.loop !1635

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.230 = phi ptr [ %0, %bb.a ], [ %.028, %bb.c ] ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.230 to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %.not37 = icmp eq ptr %i.bs, %.230
  br i1 %.not37, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %i.bw = sub i64 %i.bu, %i.c
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check66 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.bv, 24
  %n.vec = and i64 %i.bv, -32                     ; 5 uses
  %i.by = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.bz = getelementptr i8, ptr %.230, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep67 = getelementptr i8, ptr %.230, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep67, align 1, !tbaa !40
  %wide.load68 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !40
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !40
  store <16 x i8> %wide.load68, ptr %i.cb, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !180

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.bv, -8                    ; 4 uses
  %i.cd = getelementptr i8, ptr %i.b, i64 %n.vec70
  %i.ce = getelementptr i8, ptr %.230, i64 %n.vec70
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 3 uses
  %next.gep72 = getelementptr i8, ptr %i.b, i64 %index71
  %next.gep73 = getelementptr i8, ptr %.230, i64 %index71
  %wide.load74 = load <8 x i8>, ptr %next.gep73, align 1, !tbaa !40
  store <8 x i8> %wide.load74, ptr %next.gep72, align 1, !tbaa !40
  %index.next75 = add nuw i64 %index71, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1637

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.bv, %n.vec70
  br i1 %cmp.n76, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.230, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 3 uses
  %i.cg = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph80 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.ch = sub i64 %i.cg, %.057.i.ph80
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ci, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.057.i.prol, align 1, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cj, ptr %.08.i.prol, align 1, !tbaa !40
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1638

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ci, %.lr.ph.i.prol ]
  %i.cl = sub i64 %.057.i.ph80, %i.cg
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.di, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.co = load i8, ptr %.057.i, align 1, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.co, ptr %.08.i, align 1, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !40
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !40
  %i.ct = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !40
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !40
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !40
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !40
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !40
  %i.di = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !40
  %.not.i39.7 = icmp eq ptr %i.di, %i.bs
  br i1 %.not.i39.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1639

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dl = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.dm = ptrtoint ptr %i.b to i64
  %.sroa.5.0.copyload.promoted = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !127 ; 2 uses
  %.not.i8.not.i4063 = icmp eq i64 %.sroa.5.0.copyload.promoted, 0
  br i1 %.not.i8.not.i4063, label %.critedge, label %.lr.ph

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %.lr.ph
  %i.dn = ptrtoint ptr %.065 to i64
  %i.do = sub i64 %i.fz, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.33164, i64 %i.do ; 2 uses
  %.not.i8.not.i40 = icmp eq i64 %i.em, 0
  br i1 %.not.i8.not.i40, label %.critedge, label %.lr.ph, !llvm.loop !1640

.lr.ph:                                           ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %.065 = phi ptr [ %i.fy, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %.33164 = phi ptr [ %i.dp, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %.230, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ]
  %i.dq = phi i64 [ %i.em, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %.sroa.5.0.copyload.promoted, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ]
  %i.dr = load i8, ptr %.065, align 1, !tbaa !40
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.ds, 3                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @.str.189, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !40
  %i.dx = sext i8 %i.dw to i64                    ; 5 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !79
  %i.ea = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dx
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !79
  %i.ec = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dx
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !79
  %i.ee = getelementptr inbounds nuw i8, ptr %.065, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !40  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.065, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !40  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.065, i64 1 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !40  ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dx
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !79
  %i.em = add i64 %i.dq, -1                       ; 3 uses
  store i64 %i.em, ptr %.sroa.5.0.copyload, align 8, !tbaa !127
  %i.en = and i8 %i.eh, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 6
  %i.eq = and i8 %i.ej, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 12
  %i.et = and i32 %i.el, %i.ds
  %i.eu = shl nuw nsw i32 %i.et, 18
  %i.ev = or disjoint i32 %i.es, %i.eu
  %i.ew = or disjoint i32 %i.ep, %i.ev
  %i.ex = and i8 %i.ef, 63
  %i.ey = zext nneg i8 %i.ex to i32
  %i.ez = or disjoint i32 %i.ew, %i.ey
  %i.fa = lshr i32 %i.ez, %i.ed                   ; 3 uses
  %i.fb = icmp ult i32 %i.fa, %i.eb
  %i.fc = select i1 %i.fb, i32 64, i32 0
  %i.fd = lshr i8 %i.eh, 4
  %i.fe = and i8 %i.fd, 12
  %i.ff = lshr i8 %i.ej, 2
  %i.fg = and i8 %i.ff, 48
  %i.fh = or disjoint i8 %i.fe, %i.fg
  %i.fi = lshr i8 %i.ef, 6
  %i.fj = or disjoint i8 %i.fh, %i.fi
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.fc, %i.fk
  %i.fm = icmp samesign ugt i32 %i.fa, 1114111
  %i.fn = select i1 %i.fm, i32 256, i32 0
  %i.fo = or disjoint i32 %i.fl, %i.fn
  %.mask.i.i41 = and i32 %i.fa, 2147481600
  %i.fp = icmp eq i32 %.mask.i.i41, 55296
  %i.fq = select i1 %i.fp, i32 128, i32 0
  %i.fr = or disjoint i32 %i.fo, %i.fq
  %i.fs = xor i32 %i.fr, 42
  %i.ft = lshr i32 %i.fs, %i.dz
  %.not.i42 = icmp eq i32 %i.ft, 0
  %i.fu = getelementptr inbounds i8, ptr %.065, i64 %i.dx
  %.not.i.i43 = lshr i32 -2130771968, %i.dt
  %i.fv = and i32 %.not.i.i43, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fw
  %i.fy = select i1 %.not.i42, ptr %i.fx, ptr %i.ei ; 2 uses
  %i.fz = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.ga = sub i64 %i.fz, %i.dm
  %i.gb = icmp slt i64 %i.ga, %i.bv
  br i1 %i.gb, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, label %.thread.sink.split, !llvm.loop !1640

.critedge:                                        ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader
  %.331.lcssa = phi ptr [ %.230, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ], [ %i.dp, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ]
  %i.gc = ptrtoint ptr %.331.lcssa to i64
  %i.gd = sub i64 %i.gc, %i.dl
  store i64 %i.gd, ptr %.sroa.7.0.copyload, align 8, !tbaa !127
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %.lr.ph, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %.thread.sink.split, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN3fmt3v116detail16write_escaped_cpINS1_17counting_iteratorEcEET_S4_RKNS1_18find_escape_resultIT0_EE(i64 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  %i.b = alloca [4 x i8], align 1                 ; 4 uses
  %i.c = alloca [2 x i8], align 1                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !176  ; 7 uses
  switch i32 %i.e, label %bb.b [
    i32 10, label %bb.l
    i32 13, label %bb.l
    i32 9, label %bb.l
    i32 34, label %bb.l
    i32 39, label %bb.l
    i32 92, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.e, 256
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.09.i.i = phi i32 [ %i.e, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %i.l, %bb.d ]
  %i.h = and i32 %.09.i.i, 15
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.191, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !40
  %i.l = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.k, ptr %i.l, align 1, !tbaa !40
  %i.m = lshr i32 %.09.i.i, 4                     ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit, label %bb.d, !llvm.loop !2

_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit: ; preds = %bb.d
  %i.n = add i64 %0, 2
  %i.o = ptrtoaddr ptr %i.g to i64
  %i.p = ptrtoaddr ptr %i.c to i64
  %i.q = sub i64 %i.n, %i.p
  %i.r = add i64 %i.q, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp ult i32 %i.e, 65536
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.09.i.i27 = phi i32 [ %i.e, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %.0.i.i28 = phi ptr [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %i.u = and i32 %.09.i.i27, 15
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.191, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = getelementptr inbounds i8, ptr %.0.i.i28, i64 -1 ; 2 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !40
  %i.z = lshr i32 %.09.i.i27, 4                   ; 2 uses
  %.not.i.i29 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i29, label %_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit, label %bb.g, !llvm.loop !2

_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit: ; preds = %bb.g
  %i.aa = add i64 %0, 2
  %i.ab = ptrtoaddr ptr %i.t to i64
  %i.ac = ptrtoaddr ptr %i.b to i64
  %i.ad = sub i64 %i.aa, %i.ac
  %i.ae = add i64 %i.ad, %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.af = icmp ult i32 %i.e, 1114112
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.09.i.i30 = phi i32 [ %i.e, %bb.i ], [ %i.am, %bb.j ] ; 2 uses
  %.0.i.i31 = phi ptr [ %i.ag, %bb.i ], [ %i.al, %bb.j ]
  %i.ah = and i32 %.09.i.i30, 15
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @.str.191, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !40
  %i.al = getelementptr inbounds i8, ptr %.0.i.i31, i64 -1 ; 2 uses
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !40
  %i.am = lshr i32 %.09.i.i30, 4                  ; 2 uses
  %.not.i.i32 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i32, label %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit, label %bb.j, !llvm.loop !2

_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit: ; preds = %bb.j
  %i.an = add i64 %0, 2
  %i.ao = ptrtoaddr ptr %i.ag to i64
  %i.ap = ptrtoaddr ptr %i.a to i64
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = add i64 %i.aq, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %1, align 8, !tbaa !174   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !175 ; 2 uses
  %.not63 = icmp eq ptr %i.as, %i.au
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.065 = phi ptr [ %i.ax, %.lr.ph ], [ %i.as, %bb.k ] ; 2 uses
  %.sroa.049.064 = phi i64 [ %i.aw, %.lr.ph ], [ %0, %bb.k ]
  %i.av = load i8, ptr %.065, align 1, !tbaa !40
  %.not.i.i35 = icmp ult i8 %i.av, 16             ; 0 uses
  %i.aw = add i64 %.sroa.049.064, 4               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.065, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.au
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ay = add i64 %0, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.l, %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit, %_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit, %_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit
  %.sroa.021.0 = phi i64 [ %i.r, %_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ae, %_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ar, %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ay, %bb.l ], [ %0, %bb.k ], [ %i.aw, %.lr.ph ]
  ret i64 %.sroa.021.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 12 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3669 = icmp sgt i64 %1, 3
  br i1 %.not3669, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02870 = phi ptr [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02870, align 1, !tbaa !40
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.189, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !40
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02870, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !79
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02870, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02870, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !40  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02870, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !79
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !79
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !79
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02870, i64 %i.bq
  store ptr %.02870, ptr %2, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !61
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !79
  br label %.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not36 = icmp ult ptr %i.bs, %i.f
  br i1 %.not36, label %.lr.ph, label %.loopexit, !llvm.loop !1641

.loopexit:                                        ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.230 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.230 to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %.not37 = icmp eq ptr %i.bt, %.230
  br i1 %.not37, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.bx = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.230, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep127 = getelementptr i8, ptr %.230, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep127, align 1, !tbaa !40
  %wide.load128 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !40
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !40
  store <16 x i8> %wide.load128, ptr %i.cc, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !180

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.bw, -8                   ; 4 uses
  %i.ce = getelementptr i8, ptr %i.b, i64 %n.vec130
  %i.cf = getelementptr i8, ptr %.230, i64 %n.vec130
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 3 uses
  %next.gep132 = getelementptr i8, ptr %i.b, i64 %index131
  %next.gep133 = getelementptr i8, ptr %.230, i64 %index131
  %wide.load134 = load <8 x i8>, ptr %next.gep133, align 1, !tbaa !40
  store <8 x i8> %wide.load134, ptr %next.gep132, align 1, !tbaa !40
  %index.next135 = add nuw i64 %index131, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next135, %n.vec130
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1643

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n136 = icmp eq i64 %i.bw, %n.vec130
  br i1 %cmp.n136, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.230, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 3 uses
  %i.ch = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph155 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.ci = sub i64 %i.ch, %.057.i.ph155
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cl, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.057.i.prol, align 1, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.08.i.prol, align 1, !tbaa !40
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1644

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cm = sub i64 %.057.i.ph155, %i.ch
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cp = load i8, ptr %.057.i, align 1, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cp, ptr %.08.i, align 1, !tbaa !40
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !40
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !40
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !40
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !40
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !40
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !40
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.de = load i8, ptr %i.da, align 1, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !40
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !40
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !40
  %.not.i39.7 = icmp eq ptr %i.dj, %i.bt
  br i1 %.not.i39.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1645

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dm = ptrtoint ptr %i.b to i64
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48
  %.331 = phi ptr [ %i.gd, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48 ], [ %.230, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.fz, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %i.dn = load i8, ptr %.0, align 1, !tbaa !40
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = lshr i32 %i.do, 3                       ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @.str.189, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !40
  %i.dt = sext i8 %i.ds to i64                    ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %.0, i64 %i.dt
  %.not.i.i40 = lshr i32 -2130771968, %i.dp
  %i.dv = and i32 %.not.i.i40, 1
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !79
  %i.ea = and i32 %i.dz, %i.do
  %i.eb = shl nuw nsw i32 %i.ea, 18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !40  ; 2 uses
  %i.ee = and i8 %i.ed, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 12
  %i.eh = or disjoint i32 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !40  ; 2 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 6
  %i.en = or disjoint i32 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !40  ; 2 uses
  %i.eq = and i8 %i.ep, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.en, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dt
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !79
  %i.ev = lshr i32 %i.es, %i.eu                   ; 4 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dt
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !79
  %i.ey = icmp ult i32 %i.ev, %i.ex
  %i.ez = select i1 %i.ey, i32 64, i32 0
  %.mask.i.i41 = and i32 %i.ev, 2147481600
  %i.fa = icmp eq i32 %.mask.i.i41, 55296
  %i.fb = select i1 %i.fa, i32 128, i32 0
  %i.fc = icmp samesign ugt i32 %i.ev, 1114111
  %i.fd = select i1 %i.fc, i32 256, i32 0
  %i.fe = lshr i8 %i.ed, 2
  %i.ff = and i8 %i.fe, 48
  %i.fg = lshr i8 %i.ej, 4
  %i.fh = and i8 %i.fg, 12
  %i.fi = lshr i8 %i.ep, 6
  %i.fj = or disjoint i8 %i.fh, %i.ff
  %i.fk = or disjoint i8 %i.fj, %i.fi
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.ez, %i.fl
  %i.fn = or disjoint i32 %i.fm, %i.fd
  %i.fo = or disjoint i32 %i.fn, %i.fb
  %i.fp = xor i32 %i.fo, 42
  %i.fq = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dt
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !79
  %i.fs = lshr i32 %i.fp, %i.fr
  %.not.i42 = icmp eq i32 %i.fs, 0                ; 3 uses
  %i.ft = select i1 %.not.i42, i32 %i.ev, i32 -1  ; 4 uses
  %i.fu = icmp ult i32 %i.ft, 32
  br i1 %i.fu, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread, label %switch.early.test.i.i.i43

switch.early.test.i.i.i43:                        ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  switch i32 %i.ft, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i47 [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i47:    ; preds = %switch.early.test.i.i.i43
  %i.fv = call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.ft)
  br i1 %i.fv, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, %switch.early.test.i.i.i43, %switch.early.test.i.i.i43, %switch.early.test.i.i.i43, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i47
  %i.fw = add nsw i64 %i.dw, %i.dt
  %i.fx = select i1 %.not.i42, i64 %i.fw, i64 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.331, i64 %i.fx
  store ptr %.331, ptr %2, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fy, ptr %.sroa.4.0..sroa_idx.i.i45, align 8, !tbaa !61
  %.sroa.5.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ft, ptr %.sroa.5.0..sroa_idx.i.i46, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48: ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i47
  %i.fz = select i1 %.not.i42, ptr %i.dx, ptr %i.ec ; 2 uses
  %i.ga = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gb = ptrtoint ptr %.0 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = getelementptr inbounds i8, ptr %.331, i64 %i.gc
  %i.ge = sub i64 %i.ga, %i.dm
  %i.gf = icmp slt i64 %i.ge, %i.bw
  br i1 %i.gf, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, label %bb.c, !llvm.loop !1646

bb.c:                                             ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, %bb.c, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread, %.loopexit
  ret void
}

declare noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !40
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @.str.189, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !40
  %i.g = sext i8 %i.f to i64                      ; 5 uses
  %i.h = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !79
  %i.j = and i32 %i.i, %i.b
  %i.k = shl nuw nsw i32 %i.j, 18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !40    ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 12
  %i.q = or disjoint i32 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !40    ; 2 uses
  %i.t = and i8 %i.s, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 6
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !40    ; 2 uses
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.w, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.g
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !79
  %i.ae = lshr i32 %i.ab, %i.ad                   ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.g
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79
  %i.ah = icmp ult i32 %i.ae, %i.ag
  %i.ai = select i1 %i.ah, i32 64, i32 0
  %.mask.i = and i32 %i.ae, 2147481600
  %i.aj = icmp eq i32 %.mask.i, 55296
  %i.ak = select i1 %i.aj, i32 128, i32 0
  %i.al = icmp samesign ugt i32 %i.ae, 1114111
  %i.am = select i1 %i.al, i32 256, i32 0
  %i.an = lshr i8 %i.m, 2
  %i.ao = and i8 %i.an, 48
  %i.ap = lshr i8 %i.s, 4
  %i.aq = and i8 %i.ap, 12
  %i.ar = lshr i8 %i.y, 6
  %i.as = or disjoint i8 %i.aq, %i.ao
  %i.at = or disjoint i8 %i.as, %i.ar
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.ai, %i.au
  %i.aw = or disjoint i32 %i.av, %i.am
  %i.ax = or disjoint i32 %i.aw, %i.ak
  %i.ay = xor i32 %i.ax, 42
  %i.az = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.g
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !79
  %i.bb = lshr i32 %i.ay, %i.ba
  %.not = icmp eq i32 %i.bb, 0                    ; 2 uses
  %i.bc = select i1 %.not, i32 %i.ae, i32 -1      ; 7 uses
  %i.bd = icmp ugt i32 %i.bc, 4351
  br i1 %i.bd, label %bb.b, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.be = icmp ult i32 %i.bc, 4448
  %i.bf = add nsw i32 %i.bc, -9001
  %i.bg = icmp ult i32 %i.bf, 2
  %or.cond3.i = or i1 %i.be, %i.bg
  br i1 %or.cond3.i, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = add nsw i32 %i.bc, -11904
  %or.cond5.i = icmp ult i32 %i.bh, 30288
  %i.bi = icmp ne i32 %i.bc, 12351
  %or.cond7.i = and i1 %i.bi, %or.cond5.i
  %i.bj = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bk = shufflevector <2 x i32> %i.bj, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bl = and <8 x i32> %i.bk, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -65538, i32 -1>
  %i.bm = add <8 x i32> %i.bl, <i32 -44032, i32 -63744, i32 -65040, i32 -65072, i32 -65280, i32 -65504, i32 -131072, i32 -127744>
  %i.bn = icmp ult <8 x i32> %i.bm, <i32 11172, i32 512, i32 10, i32 64, i32 97, i32 7, i32 65534, i32 848>
  %i.bo = bitcast <8 x i1> %i.bn to i8
  %i.bp = icmp ne i8 %i.bo, 0
  %op.rdx = or i1 %i.bp, %or.cond7.i
  br i1 %op.rdx, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = and i32 %i.bc, -256
  %i.br = icmp eq i32 %i.bq, 129280
  %i.bs = select i1 %i.br, i64 2, i64 1
  br label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.bt = phi i64 [ 1, %bb.a ], [ 2, %bb.c ], [ 2, %bb.b ], [ %i.bs, %bb.d ]
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.g
  %.not.i = lshr i32 -2130771968, %i.c
  %i.bv = and i32 %.not.i, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !1648  ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !127
  %i.ca = add i64 %i.bz, %i.bt
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !127
  %i.cb = select i1 %.not, ptr %i.bx, ptr %i.l
  ret ptr %i.cb
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS1_6fill_tE(ptr %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(5) %2) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !149   ; 3 uses
  %i.c = zext i8 %i.b to i64
  %i.d = icmp eq i8 %i.b, 1
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %.not24.i.i = icmp eq i8 %i.b, 0
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.g, align 8, !tbaa !141
  br label %.lr.ph27.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %2, align 1, !tbaa !40
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.v, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  %i.n = load i64, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !140
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !138
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o), !inline_history !1649
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !141 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.o, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.s = phi i64 [ %i.n, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !139
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !141
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %i.j, ptr %i.u, align 1, !tbaa !40
  %i.v = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !1650

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.preheader, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.bb, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph27.i.i.preheader ]
  %.018 = phi i64 [ %i.bt, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit ], [ 0, %.lr.ph27.i.i.preheader ]
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.w = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bb, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %2, %.lr.ph27.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 9 uses
  %i.x = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.y = sub i64 %i.f, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !140 ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !138
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z), !inline_history !3
  %.pre30.i.i = load i64, ptr %i.h, align 8, !tbaa !140
  %.pre31.i.i = load i64, ptr %i.g, align 8, !tbaa !141
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ad = phi i64 [ %i.w, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.ae = phi i64 [ %i.aa, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.af = sub i64 %i.ae, %i.ad
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y) ; 13 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !139   ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = add i64 %i.ad, %i.ah
  %i.ak = sub i64 %i.x, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !40
  %wide.load32 = load <16 x i8>, ptr %i.an, align 1, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %wide.load, ptr %i.ao, align 1, !tbaa !40
  store <16 x i8> %wide.load32, ptr %i.ap, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1651

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !186

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index34
  store <4 x i8> %wide.load35, ptr %i.as, align 1, !tbaa !40
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1652
end_hunk_3
begin_hunk_4_@llvm.memmove.p0.p0.i64
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare void @_ZN8WasmEdge7FileMgr8peekByteEv(ptr dead_on_unwind writable sret(%"class.cxx20::expected.127") align 4, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge6Loader6Loader15logNeedProposalENS_7ErrCodeENS_8ProposalEmNS_11ASTNodeAttrE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::unexpected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %2, i8 noundef zeroext %3, i64 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %i.a = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i8 %3, ptr %10, align 1, !tbaa !189
  %i.b = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store i64 %4, ptr %11, align 8, !tbaa !42
  %i.c = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i8 %5, ptr %12, align 1, !tbaa !45
  %i.d = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.e = load i32, ptr %2, align 4, !tbaa !40, !noalias !1705
  store i32 %i.e, ptr %0, align 4, !tbaa !40, !alias.scope !1705
  ret void

bb.f:                                             ; preds = %.noexc8, %bb.d, %.noexc6, %bb.c, %.noexc4, %bb.b, %.noexc, %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #22
  unreachable
}

declare void @_ZN8WasmEdge6Loader6Loader8loadTypeERNS_3AST7SubTypeE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZSt6invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST11TypeSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) %0, i64 %.0.val.184.val, i32 %.0.val1) unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.WasmEdge::ErrInfo::InfoLoading", align 8 ; 4 uses
  %5 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %6 = alloca %"class.WasmEdge::ErrCode", align 4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1719
  store i32 %.0.val1, ptr %6, align 4, !tbaa !40, !noalias !1720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %i.a = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !1722

.noexc.i.i.i.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1722
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1722
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.b unwind label %bb.d, !noalias !1722

bb.b:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1722
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1722
  store i64 %.0.val.184.val, ptr %4, align 8, !tbaa !42, !noalias !1722
  %i.b = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i.i.i.i unwind label %bb.d, !noalias !1722

.noexc3.i.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !1722
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !1722
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo11InfoLoadingEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.d, !noalias !1722

bb.c:                                             ; preds = %.noexc3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !1722
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1722
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1722
  store i8 2, ptr %5, align 1, !tbaa !45, !noalias !1722
  %i.c = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i.i.i.i unwind label %bb.d, !noalias !1722

.noexc5.i.i.i.i:                                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !1722
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !1722
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 4, ptr nonnull @.str.11, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %"_ZSt8__invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST11TypeSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt15__invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_.exit" unwind label %bb.d, !noalias !1722

bb.d:                                             ; preds = %.noexc5.i.i.i.i, %bb.c, %.noexc3.i.i.i.i, %bb.b, %.noexc.i.i.i.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #22, !noalias !1722
  unreachable

"_ZSt8__invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST11TypeSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt15__invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_.exit": ; preds = %.noexc5.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !1722
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1722
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.f = load i32, ptr %6, align 4, !tbaa !40, !noalias !1724
  store i32 %i.f, ptr %0, align 4, !tbaa !40, !alias.scope !1724
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1719
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS6_EENS5_12FunctionTypeEEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !67
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !1726   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS7_EENS6_12FunctionTypeEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS7_EENS6_12FunctionTypeEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !194  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EED2Ev.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !196
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !197
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !1725
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !1725
  br label %_ZN8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EED2Ev.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZN8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EED2Ev.exit.i.i.i.i.i.i, !prof !68

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21
  br label %_ZN8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EED2Ev.exit.i.i.i.i.i.i

_ZN8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.e, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EED2Ev.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !201
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #23
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.j, %_ZN8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EED2Ev.exit.i.i.i.i.i.i
  %i.ac = load ptr, ptr %1, align 8, !tbaa !200   ; 2 uses
  %.not.i.i.i2.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i2.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS7_EENS6_12FunctionTypeEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS7_EENS6_12FunctionTypeEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit.sink.split

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS7_EENS6_12FunctionTypeEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit.sink.split: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i, %bb.b
  %.sink12 = phi ptr [ %i.d, %bb.b ], [ %i.ac, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !202
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %.sink12 to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink12, i64 noundef %i.ah) #23
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS7_EENS6_12FunctionTypeEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS7_EENS6_12FunctionTypeEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS7_EENS6_12FunctionTypeEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit.sink.split, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !1727
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !79   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !1727
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %8 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !138
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !139
  store i64 250, ptr %i.f, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.j = ptrtoint ptr %5 to i64
  %.sroa.2.0.insert.ext.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrInfo12InfoProposalENS0_9formatterIS8_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.j to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %7, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %3, i64 %4, i64 15, ptr nonnull %7, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54
  %i.o = load ptr, ptr %6, align 8, !tbaa !139
  %i.p = load i64, ptr %i.h, align 8, !tbaa !141
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.l, i64 %i.n, i32 noundef %2, ptr %i.o, i64 %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.q = load ptr, ptr %6, align 8, !tbaa !139    ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !140
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #23
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.u = load ptr, ptr %6, align 8, !tbaa !139    ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !140
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #23
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrInfo12InfoProposalENS0_9formatterIS8_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.354", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.a, align 4, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i16 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 32, ptr %i.c, align 1, !tbaa !40
  %scevgep.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %scevgep.i.i.i.i.i.i.i, i8 0, i64 3, i1 false), !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 1, ptr %i.d, align 1, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !40
  %i.g = load ptr, ptr %1, align 8, !tbaa !151    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !152  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = icmp samesign eq i64 %i.i, 0
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.g, align 1, !tbaa !40
  %i.m = icmp eq i8 %i.l, 125
  br i1 %i.m, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !151
  %.pre6 = load i64, ptr %i.h, align 8, !tbaa !152
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i64 [ %.pre6, %bb.c ], [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  store ptr %i.t, ptr %1, align 8, !tbaa !151
  %i.u = sub i64 %i.o, %i.s
  store i64 %i.u, ptr %i.h, align 8, !tbaa !152
  %i.v = call ptr @_ZNK3fmt3v119formatterIN8WasmEdge7ErrInfo12InfoProposalEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v119formatterIN8WasmEdge7ErrInfo12InfoProposalEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.362", align 16 ; 4 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.361", align 16 ; 4 uses
  %5 = alloca %"class.fmt::v11::basic_memory_buffer.253", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !139
  store i64 500, ptr %i.a, align 8, !tbaa !140
  %i.e = load i8, ptr %1, align 1, !tbaa !189     ; 3 uses
  %i.f = icmp ult i8 %i.e, 18
  br i1 %i.f, label %.noexc, label %.noexc7

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !64     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.325) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 144                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 64051194700380387)
  %i.l = select i1 %i.j, i64 64051194700380387, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 144
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 0, i64 144, i1 false)
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN8WasmEdge3AST7SubTypeES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1731

_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 144 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.v, %.lr.ph.i.i.i16 ], [ %i.t, %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.u, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN8WasmEdge3AST7SubTypeES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i17, ptr noundef %.0911.i.i.i18, ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 144 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 144 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !1731

_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.t, %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i16 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN8WasmEdge3AST7SubTypeESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST7SubTypeESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST7SubTypeESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN8WasmEdge3AST7SubTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !64
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !76
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt19__relocate_object_aIN8WasmEdge3AST7SubTypeES2_SaIS2_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.339, align 1            ; 3 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !1751, !range !37, !noundef !38
  store i8 %i.a, ptr %0, align 8, !tbaa !1751
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !1752
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !1752
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  store ptr %i.g, ptr %i.e, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !1753
  store i8 %i.j, ptr %i.h, align 8, !tbaa !1753
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i8, ptr %i.n, align 8, !tbaa !67    ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 -1, label %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = load <2 x ptr>, ptr %i.l, align 8, !tbaa !1754
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !1754
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1755
  store ptr %i.s, ptr %i.q, align 8, !tbaa !1755
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.l, i8 0, i64 24, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = load <2 x ptr>, ptr %i.l, align 8, !tbaa !1756
  store <2 x ptr> %i.t, ptr %i.k, align 8, !tbaa !1756
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.l, i8 0, i64 24, i1 false)
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !200
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !1756
  %i.ab = insertelement <4 x ptr> poison, ptr %i.y, i64 0
  %i.ac = insertelement <4 x ptr> %i.ab, ptr %i.z, i64 1
  %i.ad = shufflevector <2 x ptr> %i.aa, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x ptr> %i.ac, <4 x ptr> %i.ad, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ae, ptr %i.u, align 8, !tbaa !1756
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !202
  store ptr null, ptr %i.ah, align 8, !tbaa !194
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !202
  store ptr null, ptr %i.ag, align 8, !tbaa !205
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1758
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1758
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  unreachable

_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.thread: ; preds = %bb.a
  store i8 -1, ptr %i.m, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.an, i64 20, i1 false)
  br label %_ZN8WasmEdge3AST7SubTypeD2Ev.exit

bb.e:                                             ; preds = %bb.b, %bb.c
  store i8 %i.o, ptr %i.m, align 8, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, ptr noundef nonnull align 8 dereferenceable(20) %i.ap, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS6_EENS5_12FunctionTypeEEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(73) %i.l)
          to label %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #22
  unreachable

_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i:       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !71  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i1.i, label %_ZN8WasmEdge3AST7SubTypeD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %.pre to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.av) #23
  br label %_ZN8WasmEdge3AST7SubTypeD2Ev.exit

_ZN8WasmEdge3AST7SubTypeD2Ev.exit:                ; preds = %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.thread, %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 16 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !83     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 168                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1764
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 168                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 54901024028897476
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 54901024028897475, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, i8 0, i64 168, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.q, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.s, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  store i8 99, ptr %i.t, align 2, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 83
  store i8 112, ptr %i.u, align 1, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.v, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.x, align 2, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 139
  store i8 64, ptr %i.y, align 1, !tbaa !40
  %i.z = add nsw i64 %1, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.prol ]
  %i.ab = icmp eq i64 %1, 1
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 23 uses
  %.057.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.08.i.i.i, i8 0, i64 168, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 82
  store i8 99, ptr %i.ag, align 2, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 83
  store i8 112, ptr %i.ah, align 1, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ai, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.ak, align 2, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 139
  store i8 64, ptr %i.al, align 1, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.am, i8 0, i64 168, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 250
  store i8 99, ptr %i.ar, align 2, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 251
  store i8 112, ptr %i.as, align 1, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 264
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.at, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.av, align 2, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 307
  store i8 64, ptr %i.aw, align 1, !tbaa !40
  %i.ax = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 336 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1759

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ay, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !82
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.az = icmp ult i64 %i.n, %1
  br i1 %i.az, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ba = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 54901024028897475) ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 168
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #25 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.f ; 14 uses
  %xtraiter51 = and i64 %1, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.be, i8 0, i64 168, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 82
  store i8 99, ptr %i.bj, align 2, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 83
  store i8 112, ptr %i.bk, align 1, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bl, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.bn, align 2, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 139
  store i8 64, ptr %i.bo, align 1, !tbaa !40
  %i.bp = add nsw i64 %1, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.be, %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bp, %.lr.ph.i.i.i30.prol ]
  %i.br = icmp eq i64 %1, 1
  br i1 %i.br, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.co, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 23 uses
  %.057.i.i.i32 = phi i64 [ %i.cn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.08.i.i.i31, i8 0, i64 168, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 82
  store i8 99, ptr %i.bw, align 2, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 83
  store i8 112, ptr %i.bx, align 1, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.by, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.ca, align 2, !tbaa !40
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 139
  store i8 64, ptr %i.cb, align 1, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cc, i8 0, i64 168, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 176
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 250
  store i8 99, ptr %i.ch, align 2, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 251
  store i8 112, ptr %i.ci, align 1, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 264
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cj, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.cl, align 2, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 307
  store i8 64, ptr %i.cm, align 1, !tbaa !40
  %i.cn = add i64 %.057.i.i.i32, -2               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 336
  %.not.i.i.i33.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1759

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.dv, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.bd, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.du, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.cp = load i8, ptr %.0911.i.i.i, align 8, !tbaa !209, !alias.scope !1766, !noalias !1765
  store i8 %i.cp, ptr %.012.i.i.i, align 8, !tbaa !209, !alias.scope !1765, !noalias !1766
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !51, !alias.scope !1765, !noalias !1766
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !53, !alias.scope !1766, !noalias !1765 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.cx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.cz, i1 false), !alias.scope !1767
  br label %_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !53, !alias.scope !1765, !noalias !1766
  %i.da = load i64, ptr %i.cu, align 8, !tbaa !40, !alias.scope !1766, !noalias !1765
  store i64 %i.da, ptr %i.cs, align 8, !tbaa !40, !alias.scope !1765, !noalias !1766
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765
  br label %_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i

_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i:      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.db = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.cx, %bb.e ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !54, !alias.scope !1765, !noalias !1766
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !53, !alias.scope !1766, !noalias !1765
  store i64 0, ptr %i.dc, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765
  store i8 0, ptr %i.cu, align 8, !tbaa !40, !alias.scope !1766, !noalias !1765
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 3 uses
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !51, !alias.scope !1765, !noalias !1766
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !53, !alias.scope !1766, !noalias !1765 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 5 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 16
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.di, i64 %i.dn, i1 false), !alias.scope !1767
  br label %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !53, !alias.scope !1765, !noalias !1766
  %i.do = load i64, ptr %i.di, align 8, !tbaa !40, !alias.scope !1766, !noalias !1765
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !40, !alias.scope !1765, !noalias !1766
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765
  br label %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.dp = phi i64 [ %i.dl, %bb.f ], [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !54, !alias.scope !1765, !noalias !1766
  store ptr %i.di, ptr %i.df, align 8, !tbaa !53, !alias.scope !1766, !noalias !1765
  store i64 0, ptr %i.dq, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765
  store i8 0, ptr %i.di, align 8, !tbaa !40, !alias.scope !1766, !noalias !1765
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ds, ptr noundef nonnull align 8 dereferenceable(96) %i.dt, i64 96, i1 false), !alias.scope !1767
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 168 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 168
  %.not.i.i.i38 = icmp eq ptr %i.du, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1763

_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !1764
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dy) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.bd, ptr %0, align 8, !tbaa !83
  %i.dz = getelementptr inbounds nuw [168 x i8], ptr %i.be, i64 %1
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw [168 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.ea, ptr %i.h, align 8, !tbaa !1764
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader8loadDescERNS_3AST10ImportDescE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !71     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !79
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !84
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #25 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !79
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !79
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #23
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1775
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i.prol, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.p, align 2, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 27
  store i8 112, ptr %i.q, align 1, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1768

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.v, align 2, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 27
  store i8 112, ptr %i.w, align 1, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.z, align 2, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 83
  store i8 112, ptr %i.aa, align 1, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.ad, align 2, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 139
  store i8 112, ptr %i.ae, align 1, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.ah, align 2, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 195
  store i8 112, ptr %i.ai, align 1, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1769

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !87
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 164703072086692425) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 56
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #25 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i31.prol, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.as, align 2, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 27
  store i8 112, ptr %i.at, align 1, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 56 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1770

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i31, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.ay, align 2, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 27
  store i8 112, ptr %i.az, align 1, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.bc, align 2, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 83
  store i8 112, ptr %i.bd, align 1, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.bg, align 2, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 139
  store i8 112, ptr %i.bh, align 1, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.bk, align 2, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 195
  store i8 112, ptr %i.bl, align 1, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1769

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %i.bp = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !1777, !noalias !1776
  store <2 x ptr> %i.bp, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !1776, !noalias !1777
end_hunk_5
begin_hunk_6_@_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST10ExpressionEEEvT_S6_:bb.a

_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 40) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

_ZN8WasmEdge3AST11Instruction5resetEv.exit:       ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i
  %i.aa = load i8, ptr %i.d, align 1
  %i.ab = and i8 %i.aa, -16
  store i8 %i.ab, ptr %i.d, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.pr.i.i.i = load ptr, ptr %.06, align 8, !tbaa !216
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph
  %i.ad = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.a, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyIN8WasmEdge3AST10ExpressionEEvPT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !213
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #23
  br label %_ZSt8_DestroyIN8WasmEdge3AST10ExpressionEEvPT_.exit

_ZSt8_DestroyIN8WasmEdge3AST10ExpressionEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.06, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1836

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN8WasmEdge3AST10ExpressionEEvPT_.exit, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader11loadSegmentERNS_3AST14ElementSegmentE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !108    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 80                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1841
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 80                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 115292150460684697, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11CodeSegmentEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11CodeSegmentEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 80                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !107
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 115292150460684697) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 80
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 80
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !1843, !noalias !1842
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !1842, !noalias !1843
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213, !alias.scope !1843, !noalias !1842
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !213, !alias.scope !1842, !noalias !1843
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1843, !noalias !1842
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1849, !alias.scope !1843, !noalias !1842
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !1849, !alias.scope !1842, !noalias !1843
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !1850, !alias.scope !1843, !noalias !1842
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !1850, !alias.scope !1842, !noalias !1843
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !232, !alias.scope !1843, !noalias !1842
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !1843, !noalias !1842
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !205, !alias.scope !1843, !noalias !1842
  %i.an = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !202, !alias.scope !1843, !noalias !1842
  store ptr null, ptr %i.ak, align 8, !tbaa !194, !alias.scope !1843, !noalias !1842
  store ptr null, ptr %i.aj, align 8, !tbaa !205, !alias.scope !1843, !noalias !1842
  %i.ao = insertelement <4 x ptr> poison, ptr %i.al, i64 0
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %i.am, i64 1
  %i.aq = shufflevector <2 x ptr> %i.an, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x ptr> %i.ap, <4 x ptr> %i.aq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ar, ptr %i.ah, align 8, !tbaa !202, !alias.scope !1842, !noalias !1843
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %.not.i.i.i = icmp eq ptr %i.as, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1840

_ZNSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11CodeSegmentESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !1841
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST11CodeSegmentESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN8WasmEdge3AST11CodeSegmentESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !108
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.v, i64 %1
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !107
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.h, align 8, !tbaa !1841
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11CodeSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST11CodeSegmentESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST11CodeSegmentEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5 = icmp eq ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit
  %.06 = phi ptr [ %i.bh, %_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !197
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !1851
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !1851
  br label %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i, !prof !68

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i

_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i:              ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.06, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1853 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.06, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !232
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #23
  br label %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i: ; preds = %bb.h, %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i
  %i.y = load ptr, ptr %.06, align 8, !tbaa !216  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !217 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i, %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZN8WasmEdge3AST11Instruction5resetEv.exit ], [ %i.y, %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i ] ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 25 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1             ; 4 uses
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  store i32 0, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ah = and i8 %i.ac, 2
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.n:                                             ; preds = %bb.k
  %i.al = and i8 %i.ac, 4
  %.not4.i = icmp eq i8 %i.al, 0
  br i1 %.not4.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 32) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = and i8 %i.ac, 8
  %.not5.i = icmp eq i8 %i.ao, 0
  br i1 %.not5.i, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !220 ; 3 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i4, label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !221
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #23
  br label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i

_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i: ; preds = %bb.t, %bb.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 40) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

_ZN8WasmEdge3AST11Instruction5resetEv.exit:       ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i
  %i.ay = load i8, ptr %i.ab, align 1
  %i.az = and i8 %i.ay, -16
  store i8 %i.az, ptr %i.ab, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.pr.i.i.i.i.i = load ptr, ptr %.06, align 8, !tbaa !216
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i
  %i.bb = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.y, %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !213
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #23
  br label %_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit

_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %.06, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.bh, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1852

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader11loadSegmentERNS_3AST11CodeSegmentE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1861
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.prol, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.p, align 8, !tbaa !1864
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1854

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE17_M_default_appendEm:bb.a
  %.08.i.i.i31 = phi ptr [ %i.as, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 9 uses
  %.057.i.i.i32 = phi i64 [ %i.ar, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.08.i.i.i31, i8 0, i64 41, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ak, i8 0, i64 41, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.al, i8 0, i64 41, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.am, i8 0, i64 41, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.an, i8 0, i64 41, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ao, i8 0, i64 41, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ap, i8 0, i64 41, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.aq, i8 0, i64 41, i1 false)
  %i.ar = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 384
  %.not.i.i.i33.7 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1875

_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i37 ], [ %i.af, %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.at = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !61, !alias.scope !1883, !noalias !1882
  store <2 x ptr> %i.at, ptr %.012.i.i.i, align 8, !tbaa !61, !alias.scope !1882, !noalias !1883
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !59, !alias.scope !1883, !noalias !1882
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !59, !alias.scope !1882, !noalias !1883
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1883, !noalias !1882
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.az = load <2 x i64>, ptr %i.ay, align 8, !tbaa !127, !alias.scope !1883, !noalias !1882
  store <2 x i64> %i.az, ptr %i.ax, align 8, !tbaa !127, !alias.scope !1882, !noalias !1883
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !40, !alias.scope !1883, !noalias !1882
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !40, !alias.scope !1882, !noalias !1883
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1880

_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !1881
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #23
  br label %_ZNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.af, ptr %0, align 8, !tbaa !136
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %1
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !135
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !1881
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !73}
!1 = distinct !{!1, !73}
!2 = distinct !{!2, !73}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{!6, !73}
!7 = !{i32 1, !"long-double-type", !"x86_fp80"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"_ZTSN8WasmEdge7ErrCode5ValueE", !12, i64 0}
!17 = !{!"long", !12, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"bool", !12, i64 0}
!21 = !{!"_ZTSSt22_Optional_payload_baseIN8WasmEdge4MMapEE", !12, i64 0, !20, i64 8}
!22 = !{!"_ZTSSt17_Optional_payloadIN8WasmEdge4MMapELb1ELb0ELb0EE", !21, i64 0}
!23 = !{!"_ZTSSt17_Optional_payloadIN8WasmEdge4MMapELb0ELb0ELb0EE", !22, i64 0}
!24 = !{!"_ZTSSt14_Optional_baseIN8WasmEdge4MMapELb0ELb0EE", !23, i64 0}
!25 = !{!"_ZTSSt8optionalIN8WasmEdge4MMapEE", !24, i64 0}
!26 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIhSaIhEEE", !12, i64 0, !20, i64 24}
!27 = !{!"_ZTSSt17_Optional_payloadISt6vectorIhSaIhEELb1ELb0ELb0EE", !26, i64 0}
!28 = !{!"_ZTSSt17_Optional_payloadISt6vectorIhSaIhEELb0ELb0ELb0EE", !27, i64 0}
!29 = !{!"_ZTSSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EE", !28, i64 0}
!30 = !{!"_ZTSSt8optionalISt6vectorIhSaIhEEE", !29, i64 0}
!31 = !{!"_ZTSN8WasmEdge7FileMgrE", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !19, i64 32, !25, i64 40, !30, i64 56}
!32 = !{!31, !17, i64 16}
!33 = !{!"_ZTSN8WasmEdge3AST7SectionE", !17, i64 0, !17, i64 8}
!34 = !{!33, !17, i64 8}
!35 = !{!"_ZTSN5cxx206detail21expected_storage_baseIjN8WasmEdge7ErrCodeELb1ELb1EEE", !20, i64 0, !12, i64 4}
!36 = !{!35, !20, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!31, !17, i64 8}
!40 = !{!12, !12, i64 0}
!41 = !{!"_ZTSN8WasmEdge7ErrInfo11InfoLoadingE", !17, i64 0}
!42 = !{!41, !17, i64 0}
!43 = !{!"_ZTSN8WasmEdge11ASTNodeAttrE", !12, i64 0}
!44 = !{!"_ZTSN8WasmEdge7ErrInfo7InfoASTE", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!"_ZTSN5cxx206detail21expected_storage_baseIvN8WasmEdge7ErrCodeELb0ELb1EEE", !20, i64 0, !12, i64 4}
!47 = !{!46, !20, i64 0}
!48 = !{!31, !17, i64 24}
!49 = !{!33, !17, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!51 = !{!50, !19, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !17, i64 8, !12, i64 16}
!53 = !{!52, !19, i64 0}
!54 = !{!52, !17, i64 8}
!55 = !{!"_ZTSN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EEE", !20, i64 0, !12, i64 8}
!56 = !{!55, !20, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!58 = !{!57, !19, i64 0}
!59 = !{!57, !19, i64 16}
!60 = !{!57, !19, i64 8}
!61 = !{!19, !19, i64 0}
!62 = !{!"p1 _ZTSN8WasmEdge3AST7SubTypeE", !18, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST7SubTypeESaIS2_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!63, !62, i64 0}
!65 = !{!63, !62, i64 8}
!66 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEE", !12, i64 0, !12, i64 72}
!67 = !{!66, !12, i64 72}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = !{!"p1 int", !18, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!70, !69, i64 0}
!72 = !{!70, !69, i64 16}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"_ZTSN5cxx206detail21expected_storage_baseIhN8WasmEdge7ErrCodeELb1ELb1EEE", !20, i64 0, !12, i64 4}
!75 = !{!74, !20, i64 0}
!76 = !{!63, !62, i64 16}
!77 = !{!62, !62, i64 0}
!78 = !{!"_ZTSSt22_Optional_payload_baseIN8WasmEdge3AST7SubType7RecInfoEE", !12, i64 0, !20, i64 8}
!79 = !{!13, !13, i64 0}
!80 = !{!"p1 _ZTSN8WasmEdge3AST10ImportDescE", !18, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!81, !80, i64 8}
!83 = !{!81, !80, i64 0}
!84 = !{!70, !69, i64 8}
!85 = !{!"p1 _ZTSN8WasmEdge3AST12TableSegmentE", !18, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST12TableSegmentESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 8}
!88 = !{!86, !85, i64 0}
!89 = !{!"p1 _ZTSN8WasmEdge3AST10MemoryTypeE", !18, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST10MemoryTypeESaIS2_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!90, !89, i64 8}
!92 = !{!90, !89, i64 0}
!93 = !{!"p1 _ZTSN8WasmEdge3AST13GlobalSegmentE", !18, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!94, !93, i64 8}
!96 = !{!94, !93, i64 0}
!97 = !{!"p1 _ZTSN8WasmEdge3AST10ExportDescE", !18, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST10ExportDescESaIS2_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!99 = !{!98, !97, i64 8}
!100 = !{!98, !97, i64 0}
!101 = !{!"p1 _ZTSN8WasmEdge3AST14ElementSegmentE", !18, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST14ElementSegmentESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!103 = !{!102, !101, i64 8}
!104 = !{!102, !101, i64 0}
!105 = !{!"p1 _ZTSN8WasmEdge3AST11CodeSegmentE", !18, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST11CodeSegmentESaIS2_EE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!107 = !{!106, !105, i64 8}
!108 = !{!106, !105, i64 0}
!109 = !{!"p1 _ZTSN8WasmEdge3AST11DataSegmentE", !18, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST11DataSegmentESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!111 = !{!110, !109, i64 8}
!112 = !{!110, !109, i64 0}
!113 = !{!"p1 _ZTSN8WasmEdge3AST7TagTypeE", !18, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST7TagTypeESaIS2_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!114, !113, i64 8}
!116 = !{!114, !113, i64 0}
!117 = !{!"p1 long", !18, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!119 = !{!"p1 _ZTSSt5tupleIJhmmSt6vectorIhSaIhEEEE", !18, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !57, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIhSaIhEE", !122, i64 0}
!124 = !{!16, !16, i64 0}
!125 = !{!"_ZTSN5cxx206detail21expected_storage_baseImN8WasmEdge7ErrCodeELb1ELb1EEE", !20, i64 0, !12, i64 8}
!126 = !{!125, !20, i64 0}
!127 = !{!17, !17, i64 0}
!128 = !{!118, !117, i64 8}
!129 = !{!118, !117, i64 0}
!130 = !{!"vtable pointer", !11, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !17, i64 0, !19, i64 8}
!133 = !{!132, !19, i64 8}
!134 = !{!132, !17, i64 0}
!135 = !{!120, !119, i64 8}
!136 = !{!120, !119, i64 0}
!137 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !19, i64 0, !17, i64 8, !17, i64 16, !18, i64 24}
!138 = !{!137, !18, i64 24}
!139 = !{!137, !19, i64 0}
!140 = !{!137, !17, i64 16}
!141 = !{!137, !17, i64 8}
!142 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!143 = !{!"_ZTSN3fmt3v1117presentation_typeE", !12, i64 0}
!144 = !{!"_ZTSN3fmt3v115align4typeE", !12, i64 0}
!145 = !{!"_ZTSN3fmt3v114sign4typeE", !12, i64 0}
!146 = !{!"_ZTSN3fmt3v116detail6fill_tE", !12, i64 0, !12, i64 4}
!147 = !{!"_ZTSN3fmt3v1112format_specsE", !13, i64 0, !13, i64 4, !143, i64 8, !144, i64 9, !145, i64 9, !20, i64 9, !20, i64 10, !20, i64 10, !146, i64 11}
!148 = !{!147, !13, i64 4}
!149 = !{!146, !12, i64 4}
!150 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !19, i64 0, !17, i64 8}
!151 = !{!150, !19, i64 0}
!152 = !{!150, !17, i64 8}
!153 = !{!"_ZTSN8WasmEdge9WasmPhaseE", !12, i64 0}
!154 = !{!153, !153, i64 0}
!155 = !{!147, !143, i64 8}
!156 = !{!"p1 _ZTSN3fmt3v1126basic_format_parse_contextIcEE", !18, i64 0}
!157 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !18, i64 0}
!158 = !{!"_ZTSN3fmt3v1126basic_format_parse_contextIcEE", !150, i64 0, !13, i64 16}
!159 = !{!158, !13, i64 16}
!160 = !{!"_ZTSN3fmt3v116detail11arg_id_kindE", !12, i64 0}
!161 = !{!160, !160, i64 0}
!162 = !{!"long long", !12, i64 0}
!163 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !162, i64 0, !12, i64 8}
!164 = !{!163, !162, i64 0}
!165 = !{!"_ZTSN3fmt3v116detail5valueINS0_7contextEEE", !12, i64 0}
!166 = !{!"_ZTSN3fmt3v116detail4typeE", !12, i64 0}
!167 = !{!"_ZTSN3fmt3v1116basic_format_argINS0_7contextEEE", !165, i64 0, !166, i64 16}
!168 = !{!167, !166, i64 16}
!169 = !{i64 0, i64 16, !40}
!170 = !{!166, !166, i64 0}
!171 = !{i64 0, i64 16, !40, i64 16, i64 4, !170}
!172 = !{!117, !117, i64 0}
!173 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !19, i64 0, !19, i64 8, !13, i64 16}
!174 = !{!173, !19, i64 0}
!175 = !{!173, !19, i64 8}
!176 = !{!173, !13, i64 16}
!177 = !{!147, !13, i64 0}
!178 = !{!"llvm.loop.isvectorized", i32 1}
!179 = !{!"llvm.loop.unroll.runtime.disable"}
!180 = !{!"branch_weights", i32 8, i32 24}
!181 = !{!"llvm.loop.unroll.disable"}
!182 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !20, i64 0, !150, i64 8, !19, i64 24, !17, i64 32}
!183 = !{!182, !20, i64 0}
!184 = !{!182, !19, i64 24}
!185 = !{!182, !17, i64 32}
!186 = !{!"branch_weights", i32 4, i32 28}
!187 = !{!"_ZTSN8WasmEdge8ProposalE", !12, i64 0}
!188 = !{!"_ZTSN8WasmEdge7ErrInfo12InfoProposalE", !187, i64 0}
!189 = !{!188, !187, i64 0}
!190 = !{!"p1 _ZTSN8WasmEdge3AST9FieldTypeE", !18, i64 0}
!191 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST9FieldTypeESaIS2_EE17_Vector_impl_dataE", !190, i64 0, !190, i64 8, !190, i64 16}
!192 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!193 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !192, i64 0}
!194 = !{!193, !192, i64 0}
!195 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!196 = !{!195, !13, i64 8}
!197 = !{!195, !13, i64 12}
!198 = !{!"p1 _ZTSN8WasmEdge7ValTypeE", !18, i64 0}
!199 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EE17_Vector_impl_dataE", !198, i64 0, !198, i64 8, !198, i64 16}
!200 = !{!199, !198, i64 0}
!201 = !{!199, !198, i64 16}
!202 = !{!18, !18, i64 0}
!203 = !{!"p1 _ZTSN8WasmEdge10ExecutableE", !18, i64 0}
!204 = !{!"_ZTSSt12__shared_ptrIKN8WasmEdge10ExecutableELN9__gnu_cxx12_Lock_policyE2EE", !203, i64 0, !193, i64 8}
!205 = !{!204, !203, i64 0}
!206 = !{!"_ZTSSt10shared_ptrIKN8WasmEdge10ExecutableEE", !204, i64 0}
!207 = !{!"_ZTSN8WasmEdge12ExternalTypeE", !12, i64 0}
!208 = !{!"_ZTSN8WasmEdge3AST4DescE", !207, i64 0, !52, i64 8}
!209 = !{!208, !207, i64 0}
!210 = !{!"p1 _ZTSN8WasmEdge3AST11InstructionE", !18, i64 0}
!211 = !{!210, !210, i64 0}
!212 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE17_Vector_impl_dataE", !210, i64 0, !210, i64 8, !210, i64 16}
!213 = !{!212, !210, i64 16}
!214 = !{!"_ZTSN8WasmEdge3AST5Limit9LimitTypeE", !12, i64 0}
!215 = !{!214, !214, i64 0}
!216 = !{!212, !210, i64 0}
!217 = !{!212, !210, i64 8}
!218 = !{!"p1 _ZTSN8WasmEdge3AST11Instruction15CatchDescriptorE", !18, i64 0}
!219 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST11Instruction15CatchDescriptorESaIS3_EE17_Vector_impl_dataE", !218, i64 0, !218, i64 8, !218, i64 16}
!220 = !{!219, !218, i64 0}
!221 = !{!219, !218, i64 16}
!222 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE12_Vector_implE", !212, i64 0}
!223 = !{!"_ZTSSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE", !222, i64 0}
!224 = !{!"_ZTSSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE", !223, i64 0}
!225 = !{!"_ZTSN8WasmEdge3AST10ExpressionE", !224, i64 0}
!226 = !{!"_ZTSN8WasmEdge3AST7SegmentE", !225, i64 0}
!227 = !{!"p1 _ZTSN8WasmEdge3AST10ExpressionE", !18, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST10ExpressionESaIS2_EE17_Vector_impl_dataE", !227, i64 0, !227, i64 8, !227, i64 16}
!229 = !{!228, !227, i64 16}
!230 = !{!"p1 _ZTSSt4pairIjN8WasmEdge7ValTypeEE", !18, i64 0}
!231 = !{!"_ZTSNSt12_Vector_baseISt4pairIjN8WasmEdge7ValTypeEESaIS3_EE17_Vector_impl_dataE", !230, i64 0, !230, i64 8, !230, i64 16}
!232 = !{!231, !230, i64 16}
!233 = distinct !{!233, !"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13CustomSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_"}
!234 = distinct !{!234, !233, !"_ZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13CustomSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_: argument 0"}
!235 = distinct !{!235, !"_ZNO5cxx208expectedIjN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader18loadSectionContentINS1_3AST13CustomSectionEZNS6_11loadSectionERS9_E3$_0EENS0_IvS2_EERT_OT0_EUlSD_E_EEDaOSD_"}
!236 = distinct !{!236, !235, !"_ZNO5cxx208expectedIjN8WasmEdge7ErrCodeEE9map_errorIZNS1_6Loader6Loader18loadSectionContentINS1_3AST13CustomSectionEZNS6_11loadSectionERS9_E3$_0EENS0_IvS2_EERT_OT0_EUlSD_E_EEDaOSD_: argument 0"}
!237 = distinct !{!237, !"_ZN5cxx206detail23expected_map_error_implINS_8expectedIjN8WasmEdge7ErrCodeEEEZNS3_6Loader6Loader18loadSectionContentINS3_3AST13CustomSectionEZNS7_11loadSectionERSA_E3$_0EENS2_IvS4_EERT_OT0_EUlSE_E_jTnPNSt9enable_ifIXnt9is_void_vIT1_EEvE4typeELPv0ENS_10unexpectedIS4_EETnPNSJ_IXnt9is_void_vIT3_EEvE4typeELSO_0ENS2_IjSQ_EEEET5_OSE_SH_"}
!238 = distinct !{!238, !237, !"_ZN5cxx206detail23expected_map_error_implINS_8expectedIjN8WasmEdge7ErrCodeEEEZNS3_6Loader6Loader18loadSectionContentINS3_3AST13CustomSectionEZNS7_11loadSectionERSA_E3$_0EENS2_IvS4_EERT_OT0_EUlSE_E_jTnPNSt9enable_ifIXnt9is_void_vIT1_EEvE4typeELPv0ENS_10unexpectedIS4_EETnPNSJ_IXnt9is_void_vIT3_EEvE4typeELSO_0ENS2_IjSQ_EEEET5_OSE_SH_: argument 0"}
!239 = distinct !{!239, !"_ZSt6invokeIZN8WasmEdge6Loader6Loader18loadSectionContentINS0_3AST13CustomSectionEZNS2_11loadSectionERS5_E3$_0EEN5cxx208expectedIvNS0_7ErrCodeEEERT_OT0_EUlSC_E_JSA_EENSt13invoke_resultISC_JDpT0_EE4typeEOSC_DpOSI_"}
!240 = distinct !{!240, !239, !"_ZSt6invokeIZN8WasmEdge6Loader6Loader18loadSectionContentINS0_3AST13CustomSectionEZNS2_11loadSectionERS5_E3$_0EEN5cxx208expectedIvNS0_7ErrCodeEEERT_OT0_EUlSC_E_JSA_EENSt13invoke_resultISC_JDpT0_EE4typeEOSC_DpOSI_: argument 0"}
!241 = distinct !{!241, !"_ZSt8__invokeIZN8WasmEdge6Loader6Loader18loadSectionContentINS0_3AST13CustomSectionEZNS2_11loadSectionERS5_E3$_0EEN5cxx208expectedIvNS0_7ErrCodeEEERT_OT0_EUlSC_E_JSA_EENSt15__invoke_resultISC_JDpT0_EE4typeEOSC_DpOSI_"}
!242 = distinct !{!242, !241, !"_ZSt8__invokeIZN8WasmEdge6Loader6Loader18loadSectionContentINS0_3AST13CustomSectionEZNS2_11loadSectionERS5_E3$_0EEN5cxx208expectedIvNS0_7ErrCodeEEERT_OT0_EUlSC_E_JSA_EENSt15__invoke_resultISC_JDpT0_EE4typeEOSC_DpOSI_: argument 0"}
!243 = distinct !{!243, !"_ZSt13__invoke_implIN5cxx2010unexpectedIN8WasmEdge7ErrCodeEEEZNS2_6Loader6Loader18loadSectionContentINS2_3AST13CustomSectionEZNS6_11loadSectionERS9_E3$_0EENS0_8expectedIvS3_EERT_OT0_EUlSE_E_JS3_EESE_St14__invoke_otherSH_DpOT1_"}
!244 = distinct !{!244, !243, !"_ZSt13__invoke_implIN5cxx2010unexpectedIN8WasmEdge7ErrCodeEEEZNS2_6Loader6Loader18loadSectionContentINS2_3AST13CustomSectionEZNS6_11loadSectionERS9_E3$_0EENS0_8expectedIvS3_EERT_OT0_EUlSE_E_JS3_EESE_St14__invoke_otherSH_DpOT1_: argument 0"}
!245 = distinct !{!245, !"_ZZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13CustomSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_ENKUlSB_E_clIS9_EEDaSB_"}
!246 = distinct !{!246, !245, !"_ZZN8WasmEdge6Loader6Loader18loadSectionContentINS_3AST13CustomSectionEZNS1_11loadSectionERS4_E3$_0EEN5cxx208expectedIvNS_7ErrCodeEEERT_OT0_ENKUlSB_E_clIS9_EEDaSB_: argument 0"}
!247 = distinct !{!247, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE"}
!248 = distinct !{!248, !247, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE: argument 0"}
!249 = distinct !{!249, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
!250 = distinct !{!250, !249, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE: argument 0"}
!251 = distinct !{!251, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE"}
!252 = distinct !{!252, !251, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE: argument 0"}
!253 = distinct !{!253, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
!254 = distinct !{!254, !253, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE: argument 0"}
!255 = distinct !{!255, !"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13CustomSectionEENK3$_0clEv"}
!256 = distinct !{!256, !255, !"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13CustomSectionEENK3$_0clEv: argument 0"}
!257 = distinct !{!257, !"_ZNO5cxx208expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7ErrCodeEE9map_errorIRZZNS7_6Loader6Loader11loadSectionERNS7_3AST13CustomSectionEENK3$_0clEvEUlT_E_EEDaOSH_"}
!258 = distinct !{!258, !257, !"_ZNO5cxx208expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7ErrCodeEE9map_errorIRZZNS7_6Loader6Loader11loadSectionERNS7_3AST13CustomSectionEENK3$_0clEvEUlT_E_EEDaOSH_: argument 0"}
!259 = distinct !{!259, !"_ZN5cxx206detail23expected_map_error_implINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7ErrCodeEEERZZNS9_6Loader6Loader11loadSectionERNS9_3AST13CustomSectionEENK3$_0clEvEUlT_E_S8_TnPNSt9enable_ifIXnt9is_void_vIT1_EEvE4typeELPv0ENS_10unexpectedISA_EETnPNSL_IXnt9is_void_vIT3_EEvE4typeELSQ_0ENS2_IS8_SS_EEEET5_OSI_OT0_"}
!260 = distinct !{!260, !259, !"_ZN5cxx206detail23expected_map_error_implINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7ErrCodeEEERZZNS9_6Loader6Loader11loadSectionERNS9_3AST13CustomSectionEENK3$_0clEvEUlT_E_S8_TnPNSt9enable_ifIXnt9is_void_vIT1_EEvE4typeELPv0ENS_10unexpectedISA_EETnPNSL_IXnt9is_void_vIT3_EEvE4typeELSQ_0ENS2_IS8_SS_EEEET5_OSI_OT0_: argument 0"}
!261 = distinct !{!261, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE"}
!262 = distinct !{!262, !261, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE: argument 0"}
!263 = distinct !{!263, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
!264 = distinct !{!264, !263, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE: argument 0"}
!265 = distinct !{!265, !"_ZNO5cxx208expectedISt6vectorIhSaIhEEN8WasmEdge7ErrCodeEE9map_errorIRZZNS4_6Loader6Loader11loadSectionERNS4_3AST13CustomSectionEENK3$_0clEvEUlT_E_EEDaOSE_"}
!266 = distinct !{!266, !265, !"_ZNO5cxx208expectedISt6vectorIhSaIhEEN8WasmEdge7ErrCodeEE9map_errorIRZZNS4_6Loader6Loader11loadSectionERNS4_3AST13CustomSectionEENK3$_0clEvEUlT_E_EEDaOSE_: argument 0"}
!267 = distinct !{!267, !"_ZN5cxx206detail23expected_map_error_implINS_8expectedISt6vectorIhSaIhEEN8WasmEdge7ErrCodeEEERZZNS6_6Loader6Loader11loadSectionERNS6_3AST13CustomSectionEENK3$_0clEvEUlT_E_S5_TnPNSt9enable_ifIXnt9is_void_vIT1_EEvE4typeELPv0ENS_10unexpectedIS7_EETnPNSI_IXnt9is_void_vIT3_EEvE4typeELSN_0ENS2_IS5_SP_EEEET5_OSF_OT0_"}
!268 = distinct !{!268, !267, !"_ZN5cxx206detail23expected_map_error_implINS_8expectedISt6vectorIhSaIhEEN8WasmEdge7ErrCodeEEERZZNS6_6Loader6Loader11loadSectionERNS6_3AST13CustomSectionEENK3$_0clEvEUlT_E_S5_TnPNSt9enable_ifIXnt9is_void_vIT1_EEvE4typeELPv0ENS_10unexpectedIS7_EETnPNSI_IXnt9is_void_vIT3_EEvE4typeELSN_0ENS2_IS5_SP_EEEET5_OSF_OT0_: argument 0"}
!269 = distinct !{!269, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE"}
!270 = distinct !{!270, !269, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE: argument 0"}
!271 = distinct !{!271, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
!272 = distinct !{!272, !271, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE: argument 0"}
!273 = !{!234}
!274 = !{!238, !236, !234}
!275 = !{!244, !242, !240, !238, !236, !234}
!276 = !{!246, !244, !242, !240, !238, !236, !234}
!277 = !{!248, !246, !244, !242, !240, !238, !236, !234}
!278 = !{!250, !248, !246, !244, !242, !240, !238, !236, !234}
!279 = !{!252, !234}
!280 = !{!254, !252, !234}
!281 = !{!256, !234}
!282 = !{!258}
!283 = !{!260}
!284 = !{!"_ZTSN5cxx206detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7ErrCodeELb0ELb1EEE", !20, i64 0, !12, i64 8}
end_hunk_7
begin_hunk_8_@bcmp
!1564 = distinct !{!1564, !"_ZSt8__invokeIZN8WasmEdge6Loader6Loader11loadSectionERNS0_7FileMgrERNS0_3AST10AOTSectionEE4$_14JNS0_7ErrCodeEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_"}
!1565 = distinct !{!1565, !1564, !"_ZSt8__invokeIZN8WasmEdge6Loader6Loader11loadSectionERNS0_7FileMgrERNS0_3AST10AOTSectionEE4$_14JNS0_7ErrCodeEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_: argument 0"}
!1566 = distinct !{!1566, !"_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_6Loader6Loader11loadSectionERNS0_7FileMgrERNS0_3AST10AOTSectionEE4$_14JS1_EET_St14__invoke_otherOT0_DpOT1_"}
!1567 = distinct !{!1567, !1566, !"_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_6Loader6Loader11loadSectionERNS0_7FileMgrERNS0_3AST10AOTSectionEE4$_14JS1_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!1568 = distinct !{!1568, !"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_7FileMgrERNS_3AST10AOTSectionEENK4$_14clINS_7ErrCodeEEEDaT_"}
!1569 = distinct !{!1569, !1568, !"_ZZN8WasmEdge6Loader6Loader11loadSectionERNS_7FileMgrERNS_3AST10AOTSectionEENK4$_14clINS_7ErrCodeEEEDaT_: argument 0"}
!1570 = !{!1561}
!1571 = !{!1565, !1563, !1561}
!1572 = !{!1567, !1565, !1563, !1561}
!1573 = !{!1569, !1567, !1565, !1563, !1561}
!1574 = distinct !{!1574, !73}
!1575 = distinct !{!1575, !"_ZN3fmt3v116formatIJN8WasmEdge9WasmPhaseERKSt17basic_string_viewIcSt11char_traitsIcEEjEEENSt7__cxx1112basic_stringIcS6_SaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSG_"}
!1576 = distinct !{!1576, !1575, !"_ZN3fmt3v116formatIJN8WasmEdge9WasmPhaseERKSt17basic_string_viewIcSt11char_traitsIcEEjEEENSt7__cxx1112basic_stringIcS6_SaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSG_: argument 0"}
!1577 = distinct !{!1577, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJN8WasmEdge9WasmPhaseEKSt17basic_string_viewIcSt11char_traitsIcEEjELm3ELm0ELy735ETnNSt9enable_ifIXeqT2_Li0EEiE4typeELi0EEENS0_6detail16format_arg_storeIT_XT1_ELm0EXT3_EEEDpRT0_"}
!1578 = distinct !{!1578, !1577, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJN8WasmEdge9WasmPhaseEKSt17basic_string_viewIcSt11char_traitsIcEEjELm3ELm0ELy735ETnNSt9enable_ifIXeqT2_Li0EEiE4typeELi0EEENS0_6detail16format_arg_storeIT_XT1_ELm0EXT3_EEEDpRT0_: argument 0"}
!1579 = !{!"_ZTSSt4pairIN8WasmEdge7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE", !16, i64 0, !132, i64 8}
!1580 = !{!1579, !16, i64 0}
!1581 = !{!1576}
!1582 = !{!1578}
!1583 = distinct !{!1583, !73}
!1584 = !{!156, !156, i64 0}
!1585 = !{!157, !157, i64 0}
!1586 = distinct !{!1586, !73}
!1587 = !{!"_ZTSN3fmt3v116detail23dynamic_spec_id_handlerIcEE", !156, i64 0, !157, i64 8}
!1588 = !{!1587, !157, i64 8}
!1589 = !{i64 8}
!1590 = !{!1587, !156, i64 0}
!1591 = distinct !{!1591, !"_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_"}
!1592 = distinct !{!1592, !1591, !"_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_: argument 0"}
!1593 = distinct !{!1593, !"_ZNK3fmt3v117context3argEi"}
!1594 = distinct !{!1594, !1593, !"_ZNK3fmt3v117context3argEi: argument 0"}
!1595 = distinct !{!1595, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!1596 = distinct !{!1596, !1595, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!1597 = distinct !{!1597, !"_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_"}
!1598 = distinct !{!1598, !1597, !"_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_: argument 0"}
!1599 = distinct !{!1599, !"_ZNK3fmt3v117context3argEi"}
!1600 = distinct !{!1600, !1599, !"_ZNK3fmt3v117context3argEi: argument 0"}
!1601 = distinct !{!1601, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!1602 = distinct !{!1602, !1601, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!1603 = !{!"_ZTSN3fmt3v116detail7arg_refIcEE", !160, i64 0, !12, i64 8}
!1604 = !{!"_ZTSN3fmt3v116detail20dynamic_format_specsIcEE", !147, i64 0, !1603, i64 16, !1603, i64 40}
!1605 = !{!"_ZTSN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EEE", !1604, i64 0}
!1606 = !{!1605, !160, i64 16}
!1607 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !18, i64 0}
!1608 = !{!1607, !1607, i64 0}
!1609 = !{!1592}
!1610 = !{!1594}
!1611 = !{!1596}
!1612 = !{!1596, !1594, !1592}
!1613 = !{!1598}
!1614 = !{!1600}
!1615 = !{!1602}
!1616 = !{!1602, !1600, !1598}
!1617 = distinct !{!1617, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!1618 = distinct !{!1618, !1617, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!1619 = distinct !{!1619, !73}
!1620 = distinct !{!1620, !73}
!1621 = distinct !{!1621, !73, !178, !179}
!1622 = distinct !{!1622, !73, !178, !179}
!1623 = distinct !{!1623, !181}
!1624 = distinct !{!1624, !73, !178}
!1625 = distinct !{!1625, !73}
!1626 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !19, i64 0, !117, i64 8, !117, i64 16}
!1627 = !{!1626, !19, i64 0}
!1628 = !{!1618}
!1629 = distinct !{null, null}
!1630 = distinct !{null, null, null, null}
!1631 = distinct !{!1631, !73, !178, !179}
!1632 = distinct !{!1632, !73, !178, !179}
!1633 = distinct !{!1633, !181}
!1634 = distinct !{!1634, !73, !178}
!1635 = distinct !{!1635, !73}
!1636 = distinct !{!1636, !73, !178, !179}
!1637 = distinct !{!1637, !73, !178, !179}
!1638 = distinct !{!1638, !181}
!1639 = distinct !{!1639, !73, !178}
!1640 = distinct !{!1640, !73}
!1641 = distinct !{!1641, !73}
!1642 = distinct !{!1642, !73, !178, !179}
!1643 = distinct !{!1643, !73, !178, !179}
!1644 = distinct !{!1644, !181}
!1645 = distinct !{!1645, !73, !178}
!1646 = distinct !{!1646, !73}
!1647 = !{!"_ZTSZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEE17count_code_points", !117, i64 0}
!1648 = !{!1647, !117, i64 0}
!1649 = distinct !{null, null, null, null}
!1650 = distinct !{!1650, !73}
!1651 = distinct !{!1651, !73, !178, !179}
!1652 = distinct !{!1652, !73, !178, !179}
!1653 = distinct !{!1653, !181}
!1654 = distinct !{!1654, !73, !178}
!1655 = distinct !{!1655, !73}
!1656 = distinct !{!1656, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!1657 = distinct !{!1657, !1656, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!1658 = distinct !{!1658, !73, !178, !179}
!1659 = distinct !{!1659, !73, !178, !179}
!1660 = distinct !{!1660, !181}
!1661 = distinct !{!1661, !73, !178}
!1662 = distinct !{!1662, !73}
!1663 = !{!1657}
!1664 = distinct !{!1664, !"_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE"}
!1665 = distinct !{!1665, !1664, !"_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE: argument 0"}
!1666 = distinct !{!1666, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!1667 = distinct !{!1667, !1666, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!1668 = distinct !{!1668, !73}
!1669 = distinct !{!1669, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!1670 = distinct !{!1670, !1669, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!1671 = !{!1665}
!1672 = !{!1667}
!1673 = !{!1667, !1665}
!1674 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !18, i64 0}
!1675 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !1674, i64 0, !17, i64 8}
!1676 = !{!1675, !17, i64 8}
!1677 = !{!1675, !1674, i64 0}
!1678 = !{!"_ZTSN3fmt3v116detail14named_arg_infoIcEE", !19, i64 0, !13, i64 8}
!1679 = !{!1678, !19, i64 0}
!1680 = !{!1678, !13, i64 8}
!1681 = !{!1670, !1667, !1665}
!1682 = !{!43, !43, i64 0}
!1683 = distinct !{!1683, !"_ZSt8__invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST13CustomSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt15__invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_"}
!1684 = distinct !{!1684, !1683, !"_ZSt8__invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST13CustomSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt15__invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_: argument 0"}
!1685 = distinct !{!1685, !"_ZSt13__invoke_implIN5cxx2010unexpectedIN8WasmEdge7ErrCodeEEERZZNS2_6Loader6Loader11loadSectionERNS2_3AST13CustomSectionEENK3$_0clEvEUlT_E_JS3_EESB_St14__invoke_otherOT0_DpOT1_"}
!1686 = distinct !{!1686, !1685, !"_ZSt13__invoke_implIN5cxx2010unexpectedIN8WasmEdge7ErrCodeEEERZZNS2_6Loader6Loader11loadSectionERNS2_3AST13CustomSectionEENK3$_0clEvEUlT_E_JS3_EESB_St14__invoke_otherOT0_DpOT1_: argument 0"}
!1687 = distinct !{!1687, !"_ZZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13CustomSectionEENK3$_0clEvENKUlT_E_clINS_7ErrCodeEEEDaS6_"}
!1688 = distinct !{!1688, !1687, !"_ZZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST13CustomSectionEENK3$_0clEvENKUlT_E_clINS_7ErrCodeEEEDaS6_: argument 0"}
!1689 = distinct !{!1689, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE"}
!1690 = distinct !{!1690, !1689, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE: argument 0"}
!1691 = distinct !{!1691, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
!1692 = distinct !{!1692, !1691, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE: argument 0"}
!1693 = !{!1684}
!1694 = !{!1686}
!1695 = !{!1688}
!1696 = !{!1686, !1684}
!1697 = !{!1688, !1686, !1684}
!1698 = !{!1690}
!1699 = !{!1690, !1688, !1686, !1684}
!1700 = !{!1692}
!1701 = !{!1692, !1690, !1688, !1686, !1684}
!1702 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1703 = distinct !{!1703, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
!1704 = distinct !{!1704, !1703, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE: argument 0"}
!1705 = !{!1704}
!1706 = distinct !{!1706, !"_ZSt8__invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST11TypeSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt15__invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_"}
!1707 = distinct !{!1707, !1706, !"_ZSt8__invokeIRZZN8WasmEdge6Loader6Loader11loadSectionERNS0_3AST11TypeSectionEENK3$_0clEvEUlT_E_JNS0_7ErrCodeEEENSt15__invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_: argument 0"}
!1708 = distinct !{!1708, !"_ZSt13__invoke_implIN5cxx2010unexpectedIN8WasmEdge7ErrCodeEEERZZNS2_6Loader6Loader11loadSectionERNS2_3AST11TypeSectionEENK3$_0clEvEUlT_E_JS3_EESB_St14__invoke_otherOT0_DpOT1_"}
!1709 = distinct !{!1709, !1708, !"_ZSt13__invoke_implIN5cxx2010unexpectedIN8WasmEdge7ErrCodeEEERZZNS2_6Loader6Loader11loadSectionERNS2_3AST11TypeSectionEENK3$_0clEvEUlT_E_JS3_EESB_St14__invoke_otherOT0_DpOT1_: argument 0"}
!1710 = distinct !{!1710, !"_ZZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST11TypeSectionEENK3$_0clEvENKUlT_E_clINS_7ErrCodeEEEDaS6_"}
!1711 = distinct !{!1711, !1710, !"_ZZZN8WasmEdge6Loader6Loader11loadSectionERNS_3AST11TypeSectionEENK3$_0clEvENKUlT_E_clINS_7ErrCodeEEEDaS6_: argument 0"}
!1712 = distinct !{!1712, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE"}
!1713 = distinct !{!1713, !1712, !"_ZNK8WasmEdge6Loader6Loader12logLoadErrorENS_7ErrCodeEmNS_11ASTNodeAttrE: argument 0"}
!1714 = distinct !{!1714, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
!1715 = distinct !{!1715, !1714, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE: argument 0"}
!1716 = !{!1707}
!1717 = !{!1709}
!1718 = !{!1711}
!1719 = !{!1709, !1707}
!1720 = !{!1711, !1709, !1707}
!1721 = !{!1713}
!1722 = !{!1713, !1711, !1709, !1707}
!1723 = !{!1715}
!1724 = !{!1715, !1713, !1711, !1709, !1707}
!1725 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1726 = !{!191, !190, i64 0}
!1727 = distinct !{null}
!1728 = distinct !{!1728, !"_ZNK8WasmEdge12DenseEnumMapILm18ENS_8ProposalESt17basic_string_viewIcSt11char_traitsIcEEE4findES1_"}
!1729 = distinct !{!1729, !1728, !"_ZNK8WasmEdge12DenseEnumMapILm18ENS_8ProposalESt17basic_string_viewIcSt11char_traitsIcEEE4findES1_: argument 0"}
!1730 = !{!1729}
!1731 = distinct !{!1731, !73}
!1732 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !70, i64 0}
!1733 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !1732, i64 0}
!1734 = !{!"_ZTSSt6vectorIjSaIjEE", !1733, i64 0}
!1735 = !{!"_ZTSN8WasmEdge8TypeCodeE", !12, i64 0}
!1736 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEE", !66, i64 0}
!1737 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEE", !1736, i64 0}
!1738 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEE", !1737, i64 0}
!1739 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEE", !1738, i64 0}
!1740 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEE", !1739, i64 0}
!1741 = !{!"_ZTSSt7variantIJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS3_EENS2_12FunctionTypeEEE", !1740, i64 0}
!1742 = !{!"_ZTSN8WasmEdge3AST13CompositeTypeE", !1735, i64 0, !1741, i64 8}
!1743 = !{!"_ZTSSt17_Optional_payloadIN8WasmEdge3AST7SubType7RecInfoELb1ELb1ELb1EE", !78, i64 0}
!1744 = !{!"_ZTSSt14_Optional_baseIN8WasmEdge3AST7SubType7RecInfoELb1ELb1EE", !1743, i64 0}
!1745 = !{!"_ZTSSt8optionalIN8WasmEdge3AST7SubType7RecInfoEE", !1744, i64 0}
!1746 = !{!"_ZTSSt22_Optional_payload_baseIjE", !12, i64 0, !20, i64 4}
!1747 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !1746, i64 0}
!1748 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !1747, i64 0}
!1749 = !{!"_ZTSSt8optionalIjE", !1748, i64 0}
!1750 = !{!"_ZTSN8WasmEdge3AST7SubTypeE", !20, i64 0, !1734, i64 8, !1742, i64 32, !1745, i64 120, !1749, i64 132}
!1751 = !{!1750, !20, i64 0}
!1752 = !{!69, !69, i64 0}
!1753 = !{!1742, !1735, i64 0}
!1754 = !{!190, !190, i64 0}
!1755 = !{!191, !190, i64 16}
!1756 = !{!198, !198, i64 0}
!1757 = !{!"_ZTSN8WasmEdge6SymbolIFvPvS1_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSE_EEE", !206, i64 0, !18, i64 16}
!1758 = !{!1757, !18, i64 16}
!1759 = distinct !{!1759, !73}
!1760 = distinct !{!1760, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_"}
!1761 = distinct !{!1761, !1760, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1762 = distinct !{!1762, !1760, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1763 = distinct !{!1763, !73}
!1764 = !{!81, !80, i64 16}
!1765 = !{!1761}
!1766 = !{!1762}
!1767 = !{!1761, !1762}
!1768 = distinct !{!1768, !181}
!1769 = distinct !{!1769, !73}
!1770 = distinct !{!1770, !181}
!1771 = distinct !{!1771, !"_ZSt19__relocate_object_aIN8WasmEdge3AST12TableSegmentES2_SaIS2_EEvPT_PT0_RT1_"}
!1772 = distinct !{!1772, !1771, !"_ZSt19__relocate_object_aIN8WasmEdge3AST12TableSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1773 = distinct !{!1773, !1771, !"_ZSt19__relocate_object_aIN8WasmEdge3AST12TableSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1774 = distinct !{!1774, !73}
!1775 = !{!86, !85, i64 16}
!1776 = !{!1772}
!1777 = !{!1773}
!1778 = !{i64 0, i64 8, !40, i64 8, i64 1, !215, i64 16, i64 8, !127, i64 24, i64 8, !127}
!1779 = !{!1772, !1773}
!1780 = distinct !{!1780, !73}
!1781 = distinct !{!1781, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10MemoryTypeES2_SaIS2_EEvPT_PT0_RT1_"}
!1782 = distinct !{!1782, !1781, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10MemoryTypeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1783 = distinct !{!1783, !1781, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10MemoryTypeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1784 = distinct !{!1784, !73}
!1785 = !{!90, !89, i64 16}
!1786 = !{i64 0, i64 1, !215, i64 8, i64 8, !127, i64 16, i64 8, !127}
!1787 = !{!1783, !1782}
!1788 = distinct !{!1788, !181}
!1789 = distinct !{!1789, !73}
!1790 = distinct !{!1790, !181}
!1791 = distinct !{!1791, !"_ZSt19__relocate_object_aIN8WasmEdge3AST13GlobalSegmentES2_SaIS2_EEvPT_PT0_RT1_"}
!1792 = distinct !{!1792, !1791, !"_ZSt19__relocate_object_aIN8WasmEdge3AST13GlobalSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1793 = distinct !{!1793, !1791, !"_ZSt19__relocate_object_aIN8WasmEdge3AST13GlobalSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1794 = distinct !{!1794, !73}
!1795 = !{!94, !93, i64 16}
!1796 = !{!1792}
!1797 = !{!1793}
!1798 = !{!"_ZTSN8WasmEdge6ValMutE", !12, i64 0}
!1799 = !{!1798, !1798, i64 0}
!1800 = !{i64 0, i64 8, !40, i64 8, i64 1, !1799}
!1801 = !{!1792, !1793}
!1802 = distinct !{!1802, !73}
!1803 = distinct !{!1803, !181}
!1804 = distinct !{!1804, !73}
!1805 = distinct !{!1805, !181}
!1806 = distinct !{!1806, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_"}
!1807 = distinct !{!1807, !1806, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1808 = distinct !{!1808, !1806, !"_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1809 = distinct !{!1809, !73}
!1810 = !{!98, !97, i64 16}
!1811 = !{!1807}
!1812 = !{!1808}
!1813 = !{!1807, !1808}
!1814 = !{!"_ZTSN8WasmEdge3AST10ExportDescE", !208, i64 0, !13, i64 40}
!1815 = !{!1814, !13, i64 40}
!1816 = distinct !{!1816, !73}
!1817 = distinct !{!1817, !"_ZSt19__relocate_object_aIN8WasmEdge3AST14ElementSegmentES2_SaIS2_EEvPT_PT0_RT1_"}
!1818 = distinct !{!1818, !1817, !"_ZSt19__relocate_object_aIN8WasmEdge3AST14ElementSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1819 = distinct !{!1819, !1817, !"_ZSt19__relocate_object_aIN8WasmEdge3AST14ElementSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1820 = distinct !{!1820, !73}
!1821 = !{!102, !101, i64 16}
!1822 = !{!"_ZTSN8WasmEdge3AST14ElementSegment8ElemModeE", !12, i64 0}
!1823 = !{!"_ZTSN8WasmEdge7ValTypeE", !12, i64 0}
!1824 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST10ExpressionESaIS2_EE12_Vector_implE", !228, i64 0}
!1825 = !{!"_ZTSSt12_Vector_baseIN8WasmEdge3AST10ExpressionESaIS2_EE", !1824, i64 0}
!1826 = !{!"_ZTSSt6vectorIN8WasmEdge3AST10ExpressionESaIS2_EE", !1825, i64 0}
!1827 = !{!"_ZTSN8WasmEdge3AST14ElementSegmentE", !226, i64 0, !1822, i64 24, !1823, i64 28, !13, i64 36, !1826, i64 40}
!1828 = !{!1827, !1822, i64 24}
!1829 = !{!1818}
!1830 = !{!1819}
!1831 = !{!1818, !1819}
!1832 = !{!227, !227, i64 0}
!1833 = distinct !{!1833, !73}
!1834 = !{!228, !227, i64 0}
!1835 = !{!228, !227, i64 8}
!1836 = distinct !{!1836, !73}
!1837 = distinct !{!1837, !"_ZSt19__relocate_object_aIN8WasmEdge3AST11CodeSegmentES2_SaIS2_EEvPT_PT0_RT1_"}
!1838 = distinct !{!1838, !1837, !"_ZSt19__relocate_object_aIN8WasmEdge3AST11CodeSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1839 = distinct !{!1839, !1837, !"_ZSt19__relocate_object_aIN8WasmEdge3AST11CodeSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1840 = distinct !{!1840, !73}
!1841 = !{!106, !105, i64 16}
!1842 = !{!1838}
!1843 = !{!1839}
!1844 = !{!"_ZTSNSt12_Vector_baseISt4pairIjN8WasmEdge7ValTypeEESaIS3_EE12_Vector_implE", !231, i64 0}
!1845 = !{!"_ZTSSt12_Vector_baseISt4pairIjN8WasmEdge7ValTypeEESaIS3_EE", !1844, i64 0}
!1846 = !{!"_ZTSSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EE", !1845, i64 0}
!1847 = !{!"_ZTSN8WasmEdge6SymbolIvEE", !206, i64 0, !18, i64 16}
!1848 = !{!"_ZTSN8WasmEdge3AST11CodeSegmentE", !226, i64 0, !13, i64 24, !1846, i64 32, !1847, i64 56}
!1849 = !{!1848, !13, i64 24}
!1850 = !{!230, !230, i64 0}
!1851 = distinct !{null, null, null, null, null, null}
!1852 = distinct !{!1852, !73}
!1853 = !{!231, !230, i64 0}
!1854 = distinct !{!1854, !181}
!1855 = distinct !{!1855, !73}
!1856 = distinct !{!1856, !181}
!1857 = distinct !{!1857, !"_ZSt19__relocate_object_aIN8WasmEdge3AST11DataSegmentES2_SaIS2_EEvPT_PT0_RT1_"}
!1858 = distinct !{!1858, !1857, !"_ZSt19__relocate_object_aIN8WasmEdge3AST11DataSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1859 = distinct !{!1859, !1857, !"_ZSt19__relocate_object_aIN8WasmEdge3AST11DataSegmentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1860 = distinct !{!1860, !73}
!1861 = !{!110, !109, i64 16}
!1862 = !{!"_ZTSN8WasmEdge3AST11DataSegment8DataModeE", !12, i64 0}
!1863 = !{!"_ZTSN8WasmEdge3AST11DataSegmentE", !226, i64 0, !1862, i64 24, !13, i64 28, !123, i64 32}
!1864 = !{!1863, !1862, i64 24}
!1865 = !{!1858}
!1866 = !{!1859}
!1867 = distinct !{!1867, !73}
!1868 = distinct !{!1868, !181}
!1869 = distinct !{!1869, !73}
!1870 = distinct !{!1870, !181}
!1871 = !{!114, !113, i64 16}
!1872 = !{i64 0, i64 4, !79, i64 8, i64 8, !77}
!1873 = !{!118, !117, i64 16}
!1874 = distinct !{!1874, !181}
!1875 = distinct !{!1875, !73}
!1876 = distinct !{!1876, !181}
!1877 = distinct !{!1877, !"_ZSt19__relocate_object_aISt5tupleIJhmmSt6vectorIhSaIhEEEES4_SaIS4_EEvPT_PT0_RT1_"}
!1878 = distinct !{!1878, !1877, !"_ZSt19__relocate_object_aISt5tupleIJhmmSt6vectorIhSaIhEEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!1879 = distinct !{!1879, !1877, !"_ZSt19__relocate_object_aISt5tupleIJhmmSt6vectorIhSaIhEEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!1880 = distinct !{!1880, !73}
!1881 = !{!120, !119, i64 16}
!1882 = !{!1878}
!1883 = !{!1879}
end_hunk_8
