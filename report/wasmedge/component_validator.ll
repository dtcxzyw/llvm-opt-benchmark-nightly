Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/component_validator?download=true
inline.NumInlined: 6073
inline.NumDeleted: 2693
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST9Component13ComponentTypeE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.01224 = phi ptr [ %i.b, %.lr.ph ], [ %i.h, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST9Component13ComponentDeclE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr noundef nonnull align 8 dereferenceable(72) %.01224) #23
  %.val = load i8, ptr %5, align 4, !tbaa !38, !range !39, !noundef !40
  %.val13 = load i32, ptr %i.e, align 4
  %i.f = trunc nuw i8 %.val to i1
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1095
  store i8 54, ptr %4, align 1, !tbaa !153, !noalias !1095
  %i.g = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1095
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1095
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.105, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.h

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.h = getelementptr inbounds nuw i8, ptr %.01224, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1095
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1095
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.val13, ptr %i.i, align 4, !tbaa !47
  br label %bb.g

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !61   ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.n = icmp ne ptr %i.l, %i.m
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.p
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -632
  br label %_ZN8WasmEdge9Validator16ComponentContext13exitComponentEv.exit

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef 632) #26
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !65
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 3 uses
  store ptr %i.u, ptr %i.o, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 632
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 608
  store ptr %i.v, ptr %i.w, align 8, !tbaa !67
  br label %_ZN8WasmEdge9Validator16ComponentContext13exitComponentEv.exit

_ZN8WasmEdge9Validator16ComponentContext13exitComponentEv.exit: ; preds = %bb.e, %bb.f
  %.sink2.i.i = phi ptr [ %i.u, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  store ptr %.sink2.i.i, ptr %i.j, align 8, !tbaa !68
  tail call void @_ZN8WasmEdge9Validator16ComponentContext7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(632) %.sink2.i.i) #23
  store i64 1, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN8WasmEdge9Validator16ComponentContext13exitComponentEv.exit
  ret void

bb.h:                                             ; preds = %.noexc, %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST9Component12InstanceTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %5 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @_ZN8WasmEdge9Validator16ComponentContext19enterTypeDefinitionEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #23
  %i.b = load ptr, ptr %2, align 8, !tbaa !365    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !366  ; 2 uses
  %.not23 = icmp eq ptr %i.b, %i.d
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.01224 = phi ptr [ %i.b, %.lr.ph ], [ %i.h, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST9Component12InstanceDeclE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr noundef nonnull align 8 dereferenceable(64) %.01224) #23
  %.val = load i8, ptr %5, align 4, !tbaa !38, !range !39, !noundef !40
  %.val13 = load i32, ptr %i.e, align 4
  %i.f = trunc nuw i8 %.val to i1
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1108
  store i8 54, ptr %4, align 1, !tbaa !153, !noalias !1108
  %i.g = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1108
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.105, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.h

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.h = getelementptr inbounds nuw i8, ptr %.01224, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.val13, ptr %i.i, align 4, !tbaa !47
  br label %bb.g

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !61   ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.n = icmp ne ptr %i.l, %i.m
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.p
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -632
  br label %_ZN8WasmEdge9Validator16ComponentContext13exitComponentEv.exit

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef 632) #26
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !65
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 3 uses
  store ptr %i.u, ptr %i.o, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 632
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 608
  store ptr %i.v, ptr %i.w, align 8, !tbaa !67
  br label %_ZN8WasmEdge9Validator16ComponentContext13exitComponentEv.exit

_ZN8WasmEdge9Validator16ComponentContext13exitComponentEv.exit: ; preds = %bb.e, %bb.f
  %.sink2.i.i = phi ptr [ %i.u, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  store ptr %.sink2.i.i, ptr %i.j, align 8, !tbaa !68
  tail call void @_ZN8WasmEdge9Validator16ComponentContext7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(632) %.sink2.i.i) #23
  store i64 1, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN8WasmEdge9Validator16ComponentContext13exitComponentEv.exit
  ret void

bb.h:                                             ; preds = %.noexc, %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST9Component12ResourceTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %8 = icmp eq ptr %i.f, %i.g
  br i1 %8, label %_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66, !noalias !1113
  %i.j = icmp eq ptr %i.f, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65, !noalias !1113
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  br label %_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit

_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit: ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.f, %bb.b ]
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -632
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !138
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit.thread

bb.d:                                             ; preds = %_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 675, ptr %i.a, align 4, !tbaa !263
  %i.t = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.105, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.u = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc4 unwind label %bb.o    ; 5 uses

.noexc4:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = icmp slt i32 %i.w, 5                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.z = invoke noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.y)
          to label %.noexc5 unwind label %bb.o    ; 2 uses

.noexc5:                                          ; preds = %.noexc4
  %or.cond.i.i.i.i = or i1 %i.x, %i.z
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, ptr %i.ab, i64 %i.ad, i32 noundef 4, ptr nonnull @.str.96, i64 87)
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %bb.f
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %5, i1 noundef zeroext %i.x, i1 noundef zeroext %i.z)
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.g

bb.g:                                             ; preds = %.noexc7, %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 675, ptr %i.ae, align 4, !tbaa !47
  br label %bb.n

_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit.thread: ; preds = %bb.a, %_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 4 ; 2 uses
  %i.ag = and i64 %.sroa.0.0.copyload.i, 4294967296
  %.not23 = icmp eq i64 %i.ag, 0
  br i1 %.not23, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.sroa.016.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  store i32 %.sroa.016.0.extract.trunc, ptr %i.b, align 4, !tbaa !261
  %9 = icmp ne ptr %i.f, %i.g
  tail call void @llvm.assume(i1 %9)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66, !noalias !1114
  %i.aj = icmp eq ptr %i.f, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65, !noalias !1114
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 632
  br label %_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit

_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi ptr [ %i.ao, %bb.i ], [ %i.f, %bb.h ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -632
  %i.ar = tail call noundef i32 @_ZNK8WasmEdge9Validator16ComponentContext7Context20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE(ptr noundef nonnull align 8 dereferenceable(632) %i.aq, i8 noundef zeroext 0) #23
  %.not.not = icmp ugt i32 %i.ar, %.sroa.016.0.extract.trunc
  br i1 %.not.not, label %.thread, label %bb.j

.thread:                                          ; preds = %_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.m

bb.j:                                             ; preds = %_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 674, ptr %i.c, align 4, !tbaa !263
  %i.as = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc9 unwind label %bb.o

.noexc9:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.105, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.at = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc12 unwind label %bb.o

.noexc12:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.at, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.97, i64 61, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 674, ptr %i.au, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.n

bb.m:                                             ; preds = %.thread, %_ZNK8WasmEdge9Validator16ComponentContext21isTypeDefinitionScopeEv.exit.thread
  store i64 1, ptr %0, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.g
  ret void

bb.o:                                             ; preds = %.noexc12, %bb.k, %.noexc9, %bb.j, %.noexc6, %bb.f, %.noexc4, %bb.e, %.noexc, %bb.d
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge9Validator9Validator17validateCanonLiftERKNS_3AST9Component9CanonicalE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %15 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %18 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %19 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !420  ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !61   ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.p = icmp ne ptr %i.n, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66, !noalias !1121
  %i.s = icmp eq ptr %i.n, %i.r
  br i1 %i.s, label %bb.b, label %_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65, !noalias !1121
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 632
  br label %_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit

_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit: ; preds = %bb.a, %bb.b
  %i.y = phi ptr [ %i.x, %bb.b ], [ %i.n, %bb.a ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -632
  %i.aa = tail call noundef i32 @_ZNK8WasmEdge9Validator16ComponentContext7Context20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE(ptr noundef nonnull align 8 dereferenceable(632) %i.z, i8 noundef zeroext 0) #23 ; 2 uses
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !261
  %.not = icmp ult i32 %i.j, %i.aa
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 674, ptr %i.c, align 4, !tbaa !263
  %i.ab = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ab, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 4, ptr nonnull @.str.105, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ac = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc12 unwind label %bb.aa

.noexc12:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKjS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ac, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 4, ptr nonnull @.str.50, i64 72, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.aa

bb.e:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store i8 61, ptr %15, align 1, !tbaa !153
  %i.ad = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc14 unwind label %bb.aa

.noexc14:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.105, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.f unwind label %bb.aa

bb.f:                                             ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  store i8 0, ptr %0, align 4, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 674, ptr %i.ae, align 4, !tbaa !47
  br label %bb.z

bb.g:                                             ; preds = %_ZNK8WasmEdge9Validator16ComponentContext20getCoreSortIndexSizeENS_3AST9Component4Sort12CoreSortTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !1122 ; 3 uses
  store i32 %i.ag, ptr %i.d, align 4, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !61  ; 3 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.aj = icmp ne ptr %i.ah, %i.ai
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !66, !noalias !1123
  %i.al = icmp eq ptr %i.ah, %i.ak
  br i1 %i.al, label %bb.h, label %_ZNK8WasmEdge9Validator16ComponentContext16getSortIndexSizeENS_3AST9Component4Sort8SortTypeE.exit

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65, !noalias !1123
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 632
  br label %_ZNK8WasmEdge9Validator16ComponentContext16getSortIndexSizeENS_3AST9Component4Sort8SortTypeE.exit

_ZNK8WasmEdge9Validator16ComponentContext16getSortIndexSizeENS_3AST9Component4Sort8SortTypeE.exit: ; preds = %bb.g, %bb.h
end_hunk_0
