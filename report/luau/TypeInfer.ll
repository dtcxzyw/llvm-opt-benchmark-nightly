Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13251
inline.NumDeleted: 4924
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau11TypeChecker9checkExprERKSt10shared_ptrINS_5ScopeEERKNS_16AstExprIndexExprE:bb.a
  %i.ck = trunc nuw i8 %i.cj to i1
  store i8 0, ptr %i.b, align 8, !tbaa !933
  br i1 %i.ck, label %bb.o, label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = load i32, ptr %4, align 8, !tbaa !927
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEE9tableDtorE, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !82
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.co(ptr noundef nonnull %i.cp)
          to label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #34
  unreachable

_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %.pn

.critedge19:                                      ; preds = %bb.c
  %.pre = load i8, ptr %i.b, align 8, !tbaa !933, !range !104
  %i.cs = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.b, align 8, !tbaa !933
  br i1 %i.cs, label %bb.q, label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit24

bb.q:                                             ; preds = %.critedge19
  %i.ct = load i32, ptr %4, align 8, !tbaa !927
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEE9tableDtorE, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.cw(ptr noundef nonnull %i.cx)
          to label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit24 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #34
  unreachable

_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit24: ; preds = %bb.a, %.critedge19, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  store ptr %i.a, ptr %0, align 8, !tbaa !642
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  br label %bb.v

bb.s:                                             ; preds = %_ZN4Luau7VariantIJNS_15TruthyPredicateENS_12IsAPredicateENS_18TypeGuardPredicateENS_11EqPredicateENS_12AndPredicateENS_11OrPredicateENS_12NotPredicateEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.db = load i8, ptr %i.b, align 8, !tbaa !933, !range !104, !noundef !105
  %i.dc = trunc nuw i8 %i.db to i1
  store i8 0, ptr %i.b, align 8, !tbaa !933
  br i1 %i.dc, label %bb.t, label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit25

bb.t:                                             ; preds = %bb.s
  %i.dd = load i32, ptr %4, align 8, !tbaa !927
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_6SymbolENS_5FieldEEE9tableDtorE, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !82
  invoke void %i.dg(ptr noundef nonnull %i.k)
          to label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit25 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #34
  unreachable

_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit25: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit25, %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_6SymbolENS0_5FieldEEEELb0ELb0EED2Ev.exit24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau11TypeChecker9checkExprERKSt10shared_ptrINS_5ScopeEERKNS_15AstExprFunctionESt8optionalIPKNS_4TypeEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::WithPredicate.472") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(188) %3, ptr %4, i8 %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::pair.515", align 8    ; 9 uses
  %7 = alloca %"class.std::optional", align 8     ; 2 uses
  %8 = alloca %"class.std::optional.473", align 8
  %9 = alloca %"class.std::optional.473", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !733
  store ptr %4, ptr %9, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 %5, ptr %.sroa.211.0..sroa_idx, align 8
  call void @_ZN4Luau11TypeChecker22checkFunctionSignatureERKSt10shared_ptrINS_5ScopeEEiRKNS_15AstExprFunctionESt8optionalINS_8LocationEES9_IPKNS_4TypeEESF_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.515") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(188) %3, ptr noundef nonnull byval(%"class.std::optional") align 8 %7, ptr noundef nonnull byval(%"class.std::optional.473") align 8 %8, ptr noundef nonnull byval(%"class.std::optional.473") align 8 %9)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !269
  invoke void @_ZN4Luau11TypeChecker17checkFunctionBodyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeERKNS_15AstExprFunctionE(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(188) %3)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %6, align 8, !tbaa !269
  %i.e = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.d)
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN4Luau11TypeChecker8quantifyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeENS_8LocationE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.f = load i32, ptr %i.e, align 8, !tbaa !546
  %i.g = icmp eq i32 %i.f, 8
  br i1 %i.g, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit.i, label %_ZN4Luau11TypeChecker8quantifyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeENS_8LocationE.exit

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !310
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8
  invoke void @_ZN4Luau8quantifyEPKNS_4TypeENS_9TypeLevelE(ptr noundef nonnull %i.e, i64 %.sroa.0.0.copyload.i)
          to label %_ZN4Luau11TypeChecker8quantifyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeENS_8LocationE.exit unwind label %bb.j

_ZN4Luau11TypeChecker8quantifyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeENS_8LocationE.exit: ; preds = %bb.c, %.noexc, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit.i
  store ptr %i.e, ptr %0, align 8, !tbaa !642
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !308  ; 8 uses
  %.not.i.i.i13 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i13, label %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11TypeChecker8quantifyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeENS_8LocationE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.m, align 8, !tbaa !312
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !313
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !292
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #35, !inline_history !22
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !292
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #35, !inline_history !22
  br label %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !289
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.i, label %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit, !prof !314

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #35
  br label %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit

_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit: ; preds = %_ZN4Luau11TypeChecker8quantifyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeENS_8LocationE.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void

bb.j:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit.i, %bb.b, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau11TypeChecker9checkExprERKSt10shared_ptrINS_5ScopeEERKNS_12AstExprTableESt8optionalIPKNS_4TypeEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::WithPredicate.472") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr %4, i8 %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.Luau::RecursionCounter", align 8 ; 6 uses
  %7 = alloca %"class.std::vector.703", align 8   ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"struct.Luau::TypeIterator", align 8 ; 15 uses
  %10 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.Luau::UnionType", align 8 ; 10 uses
  %13 = alloca %"struct.Luau::WithPredicate.472", align 8 ; 8 uses
  %14 = alloca %"struct.Luau::WithPredicate.472", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1896 ; 2 uses
  call void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.c)
  %i.d = load i32, ptr @_ZN4FInt23LuauCheckRecursionLimitE, align 8, !tbaa !456 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 8, !tbaa !287
  %.not = icmp slt i32 %i.f, %i.d
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  invoke void @_ZN4Luau11TypeChecker25reportErrorCodeTooComplexERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.g)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !540
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !644
  store ptr %i.k, ptr %0, align 8, !tbaa !642
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br label %bb.dd

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.f:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !939  ; 4 uses
  %i.q = icmp ugt i64 %i.p, 576460752303423487
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #38
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.f
  store i64 0, ptr %7, align 8
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 4                  ; 3 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #37
          to label %.noexc125 unwind label %bb.m  ; 5 uses

.noexc125:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.s, ptr %7, align 8, !tbaa !941
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.p
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.s, i64 %i.r
  br label %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i

_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, %.noexc125
  %i.u = phi ptr [ %i.s, %.noexc125 ], [ null, %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ]
  %.sink.i = phi ptr [ %i.t, %.noexc125 ], [ null, %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc125 ], [ null, %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sink.i, ptr %i.w, align 8, !tbaa !1557
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1558
  %i.x = trunc nuw i8 %5 to i1
  br i1 %i.x, label %bb.h, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i
  %i.y = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %4)
          to label %bb.i unwind label %bb.n       ; 7 uses

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr %i.y, align 8, !tbaa !546
  %i.aa = icmp eq i32 %i.z, 9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.aa, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, label %bb.o

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !726
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.k:                                             ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !646, !range !104, !noundef !105
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.l, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !269
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !269
  br label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.m:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EED2Ev.exit214

bb.n:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.ao = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %4)
          to label %bb.p unwind label %bb.r       ; 3 uses

bb.p:                                             ; preds = %bb.o
  %.not.i.i126 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i126, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !546
  %i.aq = icmp eq i32 %i.ap, 13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = select i1 %i.aq, ptr %i.ar, ptr null
  br label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.r:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i
  %.sroa.0270.0 = phi ptr [ undef, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.al, %bb.l ], [ undef, %bb.k ], [ undef, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ undef, %bb.q ], [ undef, %bb.p ]
  %.sroa.8.0 = phi i8 [ 0, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ 0, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %.sroa.0275.0 = phi ptr [ undef, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.aj, %bb.l ], [ undef, %bb.k ], [ undef, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ undef, %bb.q ], [ undef, %bb.p ] ; 2 uses
  %.285 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ null, %bb.l ], [ null, %bb.k ], [ null, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ %i.as, %bb.q ], [ null, %bb.p ] ; 3 uses
  %.175 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.ab, %bb.l ], [ %i.ab, %bb.k ], [ null, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ null, %bb.q ], [ null, %bb.p ] ; 3 uses
  %i.au = load i64, ptr %i.o, align 8, !tbaa !939
  %.not376 = icmp eq i64 %i.au, 0
  br i1 %.not376, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %.not95 = icmp eq ptr %.175, null
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.175, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.175, i64 8 ; 6 uses
  %i.az = trunc nuw i8 %.sroa.8.0 to i1
  %.not96 = icmp eq ptr %.285, null
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.s

._crit_edge:                                      ; preds = %bb.cy, %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.bs = phi ptr [ %i.u, %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit ], [ %i.lf, %bb.cy ] ; 3 uses
  %i.bt = invoke noundef ptr @_ZN4Luau11TypeChecker14checkExprTableERKSt10shared_ptrINS_5ScopeEERKNS_12AstExprTableERKSt6vectorISt4pairIPKNS_4TypeESD_ESaISE_EESt8optionalISD_E(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %4, i8 %5)
          to label %bb.cz unwind label %bb.db

bb.s:                                             ; preds = %.lr.ph, %bb.cy
  %.080375 = phi i64 [ 0, %.lr.ph ], [ %i.mb, %bb.cy ] ; 5 uses
  %.sroa.8.1374 = phi i8 [ %.sroa.8.0, %.lr.ph ], [ %.sroa.8.2, %bb.cy ] ; 5 uses
  %.sroa.0270.1373 = phi ptr [ %.sroa.0270.0, %.lr.ph ], [ %.sroa.0270.2, %bb.cy ] ; 5 uses
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !942
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.080375 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !945
  switch i32 %i.bw, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.u:                                             ; preds = %bb.s, %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !946 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !96
  %i.cb = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !75
  %i.cc = icmp ne i32 %i.ca, %i.cb
  %.not94295 = icmp eq ptr %i.by, null
  %.not94 = or i1 %.not94295, %i.cc
  br i1 %.not94, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not95, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !771 ; 4 uses
  store ptr %i.av, ptr %8, align 8, !tbaa !288
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc127 unwind label %.loopexit.split-lp315

.noexc127:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ce) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.cg, ptr %i.b, align 8, !tbaa !609
  %i.ch = icmp ugt i64 %i.cg, 15
  br i1 %i.ch, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc128 unwind label %.loopexit314 ; 2 uses

.noexc128:                                        ; preds = %.noexc.i
  store ptr %i.ci, ptr %8, align 8, !tbaa !81
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !609
  store i64 %i.cj, ptr %i.av, align 8, !tbaa !289
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc128, %bb.y
  %i.ck = phi ptr [ %i.ci, %.noexc128 ], [ %i.av, %bb.y ] ; 2 uses
  switch i64 %i.cg, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.cl = load i8, ptr %i.ce, align 1, !tbaa !289
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !289
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 1 %i.ce, i64 %i.cg, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !609 ; 2 uses
  store i64 %i.cm, ptr %i.aw, align 8, !tbaa !133
  %i.cn = load ptr, ptr %8, align 8, !tbaa !81
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.cp = load ptr, ptr %i.ax, align 8, !tbaa !761 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cp, null
  %.pre = load ptr, ptr %8, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab
  %i.cq = load i64, ptr %i.aw, align 8, !tbaa !133 ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cs) ; 2 uses
  %i.ct = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ct, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !81
  %i.cw = call i32 @memcmp(ptr noundef %i.cv, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ac
  %i.cx = sub i64 %i.cs, %i.cq
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cx, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cy = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.cy, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.cy, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !762 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.ac, !llvm.loop !16

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cz = icmp eq ptr %.19.i.i.i, %i.ay
  br i1 %i.cz, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.db = load i64, ptr %i.da, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.cq) ; 2 uses
  %i.dc = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.dc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.df = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.de, i64 noundef %.sroa.speculated.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ad
  %i.dg = sub i64 %i.cq, %i.db
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dg, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.df, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.dh = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.dh, ptr %i.ay, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.ab
  %.sroa.0.0.i.i = phi ptr [ %i.ay, %bb.ab ], [ %i.ay, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.di = icmp eq ptr %.pre, %i.av
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.dj = load i64, ptr %i.av, align 8, !tbaa !289
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %.not296 = icmp eq ptr %.sroa.0.0.i.i, %i.ay
  br i1 %.not296, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.dm = invoke noundef ptr @_ZNK4Luau8Property15type_DEPRECATEDEv(ptr noundef nonnull align 8 dereferenceable(176) %i.dl)
          to label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit unwind label %bb.ag

.loopexit314:                                     ; preds = %.noexc.i
  %lpad.loopexit316 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp315:                            ; preds = %bb.x
  %lpad.loopexit.split-lp317 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp315, %.loopexit314
  %lpad.phi318 = phi { ptr, i32 } [ %lpad.loopexit316, %.loopexit314 ], [ %lpad.loopexit.split-lp317, %.loopexit.split-lp315 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

bb.ag:                                            ; preds = %bb.ae
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.az, label %bb.ai, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.do = invoke noundef zeroext i1 @_ZN4Luau11maybeStringEPKNS_4TypeE(ptr noundef %.sroa.0275.0)
          to label %bb.aj unwind label %bb.ak     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %spec.select = select i1 %i.do, ptr %.sroa.0270.1373, ptr undef
  %spec.select298 = select i1 %i.do, i8 %.sroa.8.1374, i8 0
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

bb.al:                                            ; preds = %bb.v
  br i1 %.not96, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  invoke void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %9, ptr noundef nonnull %.285)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %10, ptr noundef nonnull %.285)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader unwind label %bb.at

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader: ; preds = %bb.an
  %i.dq = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit:  ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %.sroa.0227.0 = phi ptr [ %.sroa.0227.2, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ null, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 27 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.2, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ null, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 17 uses
  %.sroa.25.0 = phi ptr [ %.sroa.25.2, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ null, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 15 uses
  %i.dr = load i64, ptr %i.ba, align 8, !tbaa !833
  %i.ds = icmp eq i64 %i.dr, 0                    ; 2 uses
  %i.dt = load i64, ptr %i.bb, align 8, !tbaa !833
  %i.du = icmp eq i64 %i.dt, 0                    ; 2 uses
  %brmerge.i.i = select i1 %i.ds, i1 true, i1 %i.du
  br i1 %brmerge.i.i, label %bb.ao, label %.split

.split:                                           ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %i.dv = load ptr, ptr %9, align 8, !tbaa !834
  %i.dw = load i64, ptr %i.bc, align 8, !tbaa !835
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.dy = load ptr, ptr %10, align 8, !tbaa !834
  %i.dz = load i64, ptr %i.bd, align 8, !tbaa !835
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.dz ; 2 uses
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !838
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !838
  %i.ed = icmp eq ptr %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = icmp eq i64 %i.ef, %i.eh
  %i.ej = select i1 %i.ed, i1 %i.ei, i1 false
  br i1 %i.ej, label %bb.ap, label %bb.au

bb.ao:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %.mux.i.i = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %.mux.i.i, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %.split, %bb.ao
  %i.ek = load ptr, ptr %i.bh, align 8, !tbaa !844 ; 2 uses
  %.not.i.i.i132 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i132, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef nonnull %i.ek) #35
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit:  ; preds = %bb.ap, %bb.aq
  %i.el = load ptr, ptr %10, align 8, !tbaa !834
  %i.em = load i64, ptr %i.bi, align 8, !tbaa !840
  %i.en = shl i64 %i.em, 4
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.en) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.eo = load ptr, ptr %i.bj, align 8, !tbaa !844 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i133, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit134, label %bb.ar

bb.ar:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.eo) #35
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit134

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit134: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, %bb.ar
  %i.ep = load ptr, ptr %9, align 8, !tbaa !834
  %i.eq = load i64, ptr %i.bg, align 8, !tbaa !840
  %i.er = shl i64 %i.eq, 4
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.er) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.es = ptrtoint ptr %.sroa.15.0 to i64
  %i.et = ptrtoint ptr %.sroa.0227.0 to i64       ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 6 uses
  %i.ev = icmp eq i64 %i.eu, 8
  br i1 %i.ev, label %.thread287, label %bb.cd

bb.as:                                            ; preds = %bb.am
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.at:                                            ; preds = %bb.an
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit:                                        ; preds = %bb.bx
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp:                               ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.au:                                            ; preds = %.split, %bb.ao
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %.noexc135 unwind label %bb.bl

.noexc135:                                        ; preds = %bb.au
  %i.ey = load ptr, ptr %9, align 8, !tbaa !834
  %i.ez = load i64, ptr %i.bc, align 8, !tbaa !835
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.ez ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.fa, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.fb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc136 unwind label %bb.bl

.noexc136:                                        ; preds = %.noexc135
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !295
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.sroa.4.0.copyload.i
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !269
  %i.ff = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.fe)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %bb.bl

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit:  ; preds = %.noexc136
  %i.fg = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ff)
          to label %bb.av unwind label %bb.bm     ; 7 uses

bb.av:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %.not.i.i138 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i138, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !546
  %i.fi = icmp eq i32 %i.fh, 9
  br i1 %i.fi, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit139, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit139: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.fj = load ptr, ptr %i.dq, align 8, !tbaa !771 ; 4 uses
  store ptr %i.be, ptr %11, align 8, !tbaa !288
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit139
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc142 unwind label %.loopexit.split-lp300

.noexc142:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit139
  %i.fl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fj) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.fl, ptr %i.a, align 8, !tbaa !609
  %i.fm = icmp ugt i64 %i.fl, 15
  br i1 %i.fm, label %.noexc.i141, label %._crit_edge.i.i140

.noexc.i141:                                      ; preds = %bb.ay
  %i.fn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc143 unwind label %.loopexit299 ; 2 uses

.noexc143:                                        ; preds = %.noexc.i141
  store ptr %i.fn, ptr %11, align 8, !tbaa !81
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !609
  store i64 %i.fo, ptr %i.be, align 8, !tbaa !289
  br label %._crit_edge.i.i140

._crit_edge.i.i140:                               ; preds = %.noexc143, %bb.ay
  %i.fp = phi ptr [ %i.fn, %.noexc143 ], [ %i.be, %bb.ay ] ; 2 uses
  switch i64 %i.fl, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i140
  %i.fq = load i8, ptr %i.fj, align 1, !tbaa !289
  store i8 %i.fq, ptr %i.fp, align 1, !tbaa !289
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fp, ptr nonnull align 1 %i.fj, i64 %i.fl, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i140
  %i.fr = load i64, ptr %i.a, align 8, !tbaa !609 ; 2 uses
  store i64 %i.fr, ptr %i.bf, align 8, !tbaa !133
  %i.fs = load ptr, ptr %11, align 8, !tbaa !81
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  store i8 0, ptr %i.ft, align 1, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !761 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 6 uses
  %.not10.i.i.i145 = icmp eq ptr %i.fv, null
  %.pre418 = load ptr, ptr %11, align 8           ; 4 uses
  br i1 %.not10.i.i.i145, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit175, label %.lr.ph.i.i.i146

.lr.ph.i.i.i146:                                  ; preds = %bb.bb
  %i.fx = load i64, ptr %i.bf, align 8, !tbaa !133 ; 4 uses
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i152, %.lr.ph.i.i.i146
  %.012.i.i.i147 = phi ptr [ %i.fv, %.lr.ph.i.i.i146 ], [ %.1.i.i.i157, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i152 ] ; 4 uses
  %.0811.i.i.i148 = phi ptr [ %i.fw, %.lr.ph.i.i.i146 ], [ %.19.i.i.i154, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i152 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i147, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i149 = call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.fz) ; 2 uses
  %i.ga = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i149, 0
  br i1 %i.ga, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i171, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i150

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i150: ; preds = %bb.bc
  %i.gb = getelementptr inbounds nuw i8, ptr %.012.i.i.i147, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !81
  %i.gd = call i32 @memcmp(ptr noundef %i.gc, ptr noundef %.pre418, i64 noundef %.sroa.speculated.i.i.i.i.i.i149) #35 ; 2 uses
  %.not.i.i.i.i.i.i151 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i151, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i171, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i152

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i171: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i150, %bb.bc
  %i.ge = sub i64 %i.fz, %i.fx
  %spec.select7.i.i.i.i.i.i.i172 = call i64 @llvm.smax.i64(i64 %i.ge, i64 -2147483648)
  %.08.i.i.i.i.i.i.i173 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i172, i64 2147483647)
  %.0.i6.i.i.i.i.i.i174 = trunc nsw i64 %.08.i.i.i.i.i.i.i173 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i152

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i152: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i171, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i150
  %.0.i.i.i.i.i.i153 = phi i32 [ %i.gd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i150 ], [ %.0.i6.i.i.i.i.i.i174, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i171 ]
  %i.gf = icmp slt i32 %.0.i.i.i.i.i.i153, 0      ; 2 uses
  %.19.i.i.i154 = select i1 %i.gf, ptr %.0811.i.i.i148, ptr %.012.i.i.i147 ; 5 uses
  %.1.in.v.i.i.i155 = select i1 %i.gf, i64 24, i64 16
  %.1.in.i.i.i156 = getelementptr inbounds nuw i8, ptr %.012.i.i.i147, i64 %.1.in.v.i.i.i155
  %.1.i.i.i157 = load ptr, ptr %.1.in.i.i.i156, align 8, !tbaa !762 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %.1.i.i.i157, null
  br i1 %.not.i.i.i158, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i159, label %bb.bc, !llvm.loop !16

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i159: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i152
  %i.gg = icmp eq ptr %.19.i.i.i154, %i.fw
  br i1 %i.gg, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit175, label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i159
  %i.gh = getelementptr inbounds nuw i8, ptr %.19.i.i.i154, i64 40
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i160 = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.fx) ; 2 uses
  %i.gj = icmp eq i64 %.sroa.speculated.i.i.i.i.i160, 0
  br i1 %i.gj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i167, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i161

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i161: ; preds = %bb.bd
  %i.gk = getelementptr inbounds nuw i8, ptr %.19.i.i.i154, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !81
  %i.gm = call i32 @memcmp(ptr noundef %.pre418, ptr noundef %i.gl, i64 noundef %.sroa.speculated.i.i.i.i.i160) #35 ; 2 uses
  %.not.i.i.i.i.i162 = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i.i.i.i162, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i167, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i163

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i167: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i161, %bb.bd
  %i.gn = sub i64 %i.fx, %i.gi
  %spec.select7.i.i.i.i.i.i168 = call i64 @llvm.smax.i64(i64 %i.gn, i64 -2147483648)
  %.08.i.i.i.i.i.i169 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i168, i64 2147483647)
  %.0.i6.i.i.i.i.i170 = trunc nsw i64 %.08.i.i.i.i.i.i169 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i163

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i163: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i167, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i161
  %.0.i.i.i.i.i164 = phi i32 [ %i.gm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i161 ], [ %.0.i6.i.i.i.i.i170, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i167 ]
  %i.go = icmp slt i32 %.0.i.i.i.i.i164, 0
  %spec.select.i.i165 = select i1 %i.go, ptr %i.fw, ptr %.19.i.i.i154
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit175

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit175: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i163, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i159, %bb.bb
  %.sroa.0.0.i.i166 = phi ptr [ %i.fw, %bb.bb ], [ %i.fw, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i159 ], [ %spec.select.i.i165, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i163 ] ; 2 uses
  %i.gp = icmp eq ptr %.pre418, %i.be
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit175
  %i.gq = load i64, ptr %i.be, align 8, !tbaa !289
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %.pre418, i64 noundef %i.gr) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %.not297 = icmp eq ptr %.sroa.0.0.i.i166, %i.fw
end_hunk_0
begin_hunk_1_@_ZN4Luau11TypeChecker9checkExprERKSt10shared_ptrINS_5ScopeEERKNS_12AstExprTableESt8optionalIPKNS_4TypeEE:bb.a
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp300, %.loopexit299
  %lpad.phi303 = phi { ptr, i32 } [ %lpad.loopexit301, %.loopexit299 ], [ %lpad.loopexit.split-lp302, %.loopexit.split-lp300 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.ca

.loopexit304:                                     ; preds = %bb.be, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.25.0.lcssa381 = phi ptr [ %.sroa.25.0, %bb.be ], [ %.sroa.15.0, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit306 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp305:                            ; preds = %bb.bi
  %lpad.loopexit.split-lp307 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !646, !range !104, !noundef !105
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.bp, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.bp:                                            ; preds = %bb.bo
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !648
  %i.hr = invoke noundef zeroext i1 @_ZN4Luau11maybeStringEPKNS_4TypeE(ptr noundef %i.hq)
          to label %bb.bq unwind label %.loopexit309

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.hr, label %bb.br, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.br:                                            ; preds = %bb.bq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fg, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.15.0, %.sroa.25.0
  br i1 %.not.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !269
  store ptr %i.ht, ptr %.sroa.15.0, align 8, !tbaa !269
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.15.0, i64 8
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.bt:                                            ; preds = %bb.br
  %i.hv = ptrtoint ptr %.sroa.15.0 to i64
  %i.hw = ptrtoint ptr %.sroa.0227.0 to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 6 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775800
  br i1 %i.hy, label %bb.bu, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.174) #38
          to label %.noexc187 unwind label %.loopexit.split-lp310

.noexc187:                                        ; preds = %bb.bu
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bt
  %i.hz = ashr exact i64 %i.hx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 1152921504606846975)
  %i.id = select i1 %i.ib, i64 1152921504606846975, i64 %i.ic ; 3 uses
  %.not.i.i.i186 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i186)
  %i.ie = shl nuw nsw i64 %i.id, 3
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #37
          to label %.noexc188 unwind label %.loopexit309 ; 4 uses

.noexc188:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.hx ; 2 uses
  %i.ih = load ptr, ptr %i.hs, align 8, !tbaa !269
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !269
  %i.ii = icmp sgt i64 %i.hx, 0
  br i1 %i.ii, label %bb.bv, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.bv:                                            ; preds = %.noexc188
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.if, ptr align 8 %.sroa.0227.0, i64 %i.hx, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.bv, %.noexc188
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0227.0, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0227.0, i64 noundef %i.hx) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bw, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.id
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

.loopexit309:                                     ; preds = %bb.bp, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.25.0.lcssa383 = phi ptr [ %.sroa.25.0, %bb.bp ], [ %.sroa.15.0, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit311 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp310:                            ; preds = %bb.bu
  %lpad.loopexit.split-lp312 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.av, %bb.aw, %bb.bq, %bb.bo, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bg, %bb.bs, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0227.2 = phi ptr [ %.sroa.0227.0, %bb.bs ], [ %.sroa.0227.0, %bb.bo ], [ %.sroa.0227.0, %bb.bg ], [ %.sroa.0227.0, %bb.bq ], [ %i.hf, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.if, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0227.0, %bb.aw ], [ %.sroa.0227.0, %bb.av ] ; 3 uses
  %.sroa.15.2 = phi ptr [ %i.hu, %bb.bs ], [ %.sroa.15.0, %bb.bo ], [ %i.gu, %bb.bg ], [ %.sroa.15.0, %bb.bq ], [ %i.hi, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ij, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.15.0, %bb.aw ], [ %.sroa.15.0, %bb.av ]
  %.sroa.25.2 = phi ptr [ %.sroa.25.0, %bb.bs ], [ %.sroa.25.0, %bb.bo ], [ %.sroa.25.0, %bb.bg ], [ %.sroa.25.0, %bb.bq ], [ %i.hj, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ik, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.25.0, %bb.aw ], [ %.sroa.25.0, %bb.av ] ; 3 uses
  %i.il = load i64, ptr %i.ba, align 8, !tbaa !833
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit
  %.pre.i.i = load i64, ptr %i.bc, align 8, !tbaa !835
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.lr.ph.i.i
  %i.in = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.jj, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i ]
  %i.io = load ptr, ptr %9, align 8, !tbaa !834
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.in ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 3 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !609
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !609
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !839
  %i.iu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.it)
          to label %.noexc190 unwind label %.loopexit ; 2 uses

.noexc190:                                        ; preds = %bb.bx
  %i.iv = load i64, ptr %i.iq, align 8, !tbaa !609
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !547
  %i.iy = load ptr, ptr %i.iu, align 8, !tbaa !295
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = ashr exact i64 %i.jb, 3
  %.not.i.i189 = icmp ult i64 %i.iv, %i.jc
  br i1 %.not.i.i189, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.by

bb.by:                                            ; preds = %.noexc190
  %i.jd = load i64, ptr %i.bc, align 8, !tbaa !835
  %i.je = add i64 %i.jd, 1                        ; 3 uses
  store i64 %i.je, ptr %i.bc, align 8, !tbaa !835
  %i.jf = load i64, ptr %i.ba, align 8, !tbaa !833
  %i.jg = add i64 %i.jf, -1                       ; 2 uses
  store i64 %i.jg, ptr %i.ba, align 8, !tbaa !833
  %i.jh = load i64, ptr %i.bg, align 8, !tbaa !840
  %i.ji = icmp eq i64 %i.je, %i.jh
  br i1 %i.ji, label %bb.bz, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

bb.bz:                                            ; preds = %bb.by
  store i64 0, ptr %i.bc, align 8, !tbaa !835
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i: ; preds = %bb.bz, %bb.by
  %i.jj = phi i64 [ 0, %bb.bz ], [ %i.je, %bb.by ]
  %i.jk = icmp eq i64 %i.jg, 0
  br i1 %i.jk, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.bx

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.noexc190, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit unwind label %.loopexit.split-lp

bb.ca:                                            ; preds = %.loopexit309, %.loopexit.split-lp310, %.loopexit304, %.loopexit.split-lp305, %.loopexit, %.loopexit.split-lp, %bb.bn, %bb.bl, %bb.bm
  %.sroa.0227.3 = phi ptr [ %.sroa.0227.0, %bb.bn ], [ %.sroa.0227.0, %bb.bl ], [ %.sroa.0227.0, %bb.bm ], [ %.sroa.0227.0, %.loopexit.split-lp305 ], [ %.sroa.0227.2, %.loopexit.split-lp ], [ %.sroa.0227.2, %.loopexit ], [ %.sroa.0227.0, %.loopexit304 ], [ %.sroa.0227.0, %.loopexit309 ], [ %.sroa.0227.0, %.loopexit.split-lp310 ]
  %.sroa.25.3 = phi ptr [ %.sroa.25.0, %bb.bn ], [ %.sroa.25.0, %bb.bl ], [ %.sroa.25.0, %bb.bm ], [ %.sroa.15.0, %.loopexit.split-lp305 ], [ %.sroa.25.2, %.loopexit.split-lp ], [ %.sroa.25.2, %.loopexit ], [ %.sroa.25.0.lcssa381, %.loopexit304 ], [ %.sroa.25.0.lcssa383, %.loopexit309 ], [ %.sroa.15.0, %.loopexit.split-lp310 ]
  %.pn106 = phi { ptr, i32 } [ %lpad.phi303, %bb.bn ], [ %i.hk, %bb.bl ], [ %i.hl, %bb.bm ], [ %lpad.loopexit.split-lp307, %.loopexit.split-lp305 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit306, %.loopexit304 ], [ %lpad.loopexit311, %.loopexit309 ], [ %lpad.loopexit.split-lp312, %.loopexit.split-lp310 ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #35
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.at
  %.sroa.0227.4 = phi ptr [ %.sroa.0227.3, %bb.ca ], [ null, %bb.at ]
  %.sroa.25.4 = phi ptr [ %.sroa.25.3, %bb.ca ], [ null, %bb.at ]
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %bb.ca ], [ %i.ex, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #35
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.as
  %.sroa.0227.5 = phi ptr [ %.sroa.0227.4, %bb.cb ], [ null, %bb.as ]
  %.sroa.25.5 = phi ptr [ %.sroa.25.4, %bb.cb ], [ null, %bb.as ]
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %bb.cb ], [ %i.ew, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.cl

.thread287:                                       ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit134
  %i.jl = load ptr, ptr %.sroa.0227.0, align 8, !tbaa !269
  br label %bb.ck

bb.cd:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit134
  %i.jm = icmp ugt i64 %i.eu, 8
  br i1 %i.jm, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %15 = icmp ugt i64 %i.eu, 9223372036854775800
  br i1 %15, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !314

.noexc.i.i:                                       ; preds = %bb.ce
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc193 unwind label %.loopexit.split-lp320

.noexc193:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ce
  %i.jn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #37
          to label %.noexc194 unwind label %.loopexit319 ; 4 uses

.noexc194:                                        ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.jn, ptr %12, align 8, !tbaa !295
  store ptr %i.jn, ptr %i.bk, align 8, !tbaa !547
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.eu ; 2 uses
  store ptr %i.jo, ptr %i.bl, align 8, !tbaa !296
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jn, ptr align 8 %.sroa.0227.0, i64 %i.eu, i1 false)
  store ptr %i.jo, ptr %i.bk, align 8, !tbaa !547
  %16 = invoke noundef ptr @_ZN4Luau11TypeChecker7addTypeINS_9UnionTypeEEEPKNS_4TypeERKT_(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %.noexc194
  %i.jp = load ptr, ptr %12, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i.i195 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i195, label %_ZN4Luau9UnionTypeD2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jq = load ptr, ptr %i.bl, align 8, !tbaa !296
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.jt) #36
  br label %_ZN4Luau9UnionTypeD2Ev.exit

_ZN4Luau9UnionTypeD2Ev.exit:                      ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.cj

.loopexit319:                                     ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau9UnionTypeD2Ev.exit197

.loopexit.split-lp320:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau9UnionTypeD2Ev.exit197

bb.ch:                                            ; preds = %.noexc194
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = load ptr, ptr %12, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i.i196 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i196, label %_ZN4Luau9UnionTypeD2Ev.exit197, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jw = load ptr, ptr %i.bl, align 8, !tbaa !296
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.jv to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.jz) #36
  br label %_ZN4Luau9UnionTypeD2Ev.exit197

_ZN4Luau9UnionTypeD2Ev.exit197:                   ; preds = %.loopexit319, %.loopexit.split-lp320, %bb.ci, %bb.ch
  %.pn97 = phi { ptr, i32 } [ %i.ju, %bb.ci ], [ %i.ju, %bb.ch ], [ %lpad.loopexit321, %.loopexit319 ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp320 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cd, %_ZN4Luau9UnionTypeD2Ev.exit
  %.sroa.0254.1 = phi ptr [ undef, %bb.cd ], [ %16, %_ZN4Luau9UnionTypeD2Ev.exit ] ; 2 uses
  %.sroa.10.1 = phi i8 [ 0, %bb.cd ], [ 1, %_ZN4Luau9UnionTypeD2Ev.exit ] ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %.sroa.0227.0, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %.thread287, %bb.cj
  %.sroa.10.1293 = phi i8 [ 1, %.thread287 ], [ %.sroa.10.1, %bb.cj ]
  %.sroa.0254.1291 = phi ptr [ %i.jl, %.thread287 ], [ %.sroa.0254.1, %bb.cj ]
  %i.ka = ptrtoint ptr %.sroa.25.0 to i64
  %i.kb = sub i64 %i.ka, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0227.0, i64 noundef %i.kb) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.cl:                                            ; preds = %_ZN4Luau9UnionTypeD2Ev.exit197, %bb.cc
  %.sroa.0227.6 = phi ptr [ %.sroa.0227.5, %bb.cc ], [ %.sroa.0227.0, %_ZN4Luau9UnionTypeD2Ev.exit197 ] ; 3 uses
  %.sroa.25.6 = phi ptr [ %.sroa.25.5, %bb.cc ], [ %.sroa.25.0, %_ZN4Luau9UnionTypeD2Ev.exit197 ]
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn, %bb.cc ], [ %.pn97, %_ZN4Luau9UnionTypeD2Ev.exit197 ] ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %.sroa.0227.6, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kc = ptrtoint ptr %.sroa.25.6 to i64
  %i.kd = ptrtoint ptr %.sroa.0227.6 to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0227.6, i64 noundef %i.ke) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.aj, %bb.u, %bb.ae, %bb.ck, %bb.cj, %bb.ah, %bb.al, %bb.s, %bb.t
  %.sroa.0254.2 = phi ptr [ undef, %bb.s ], [ %.sroa.0270.1373, %bb.t ], [ %.sroa.0270.1373, %bb.u ], [ undef, %bb.al ], [ undef, %bb.ah ], [ %.sroa.0254.1291, %bb.ck ], [ %i.dm, %bb.ae ], [ %spec.select, %bb.aj ], [ %.sroa.0254.1, %bb.cj ]
  %.sroa.10.2 = phi i8 [ 0, %bb.s ], [ %.sroa.8.1374, %bb.t ], [ %.sroa.8.1374, %bb.u ], [ 0, %bb.al ], [ 0, %bb.ah ], [ %.sroa.10.1293, %bb.ck ], [ 1, %bb.ae ], [ %spec.select298, %bb.aj ], [ %.sroa.10.1, %bb.cj ]
  %.179 = phi i1 [ false, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %bb.ck ], [ false, %bb.ae ], [ false, %bb.aj ], [ false, %bb.cj ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !946
  %.not116.not = icmp eq ptr %i.kg, null
  br i1 %.not116.not, label %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !946
  invoke void @_ZN4Luau11TypeChecker9checkExprERKSt10shared_ptrINS_5ScopeEERKNS_7AstExprESt8optionalIPKNS_4TypeEEb(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::WithPredicate.472") align 8 %13, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.kh, ptr %.sroa.0275.0, i8 %.sroa.8.0, i1 noundef zeroext false)
          to label %bb.co unwind label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.ki = load ptr, ptr %13, align 8, !tbaa !642
  %i.kj = load ptr, ptr %7, align 8, !tbaa !941
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %.080375
  store ptr %i.ki, ptr %i.kk, align 8, !tbaa !1559
  %i.kl = load ptr, ptr %i.bm, align 8, !tbaa !564 ; 3 uses
  %i.km = load ptr, ptr %i.bn, align 8, !tbaa !565 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kl, %i.km
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.co, %_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ku, %_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i ], [ %i.kl, %bb.co ] ; 3 uses
  %i.kn = load i32, ptr %.05.i.i.i.i, align 8, !tbaa !567
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15TruthyPredicateENS_12IsAPredicateENS_18TypeGuardPredicateENS_11EqPredicateENS_12AndPredicateENS_11OrPredicateENS_12NotPredicateEEE9tableDtorE, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !82
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  invoke void %i.kq(ptr noundef nonnull %i.kr)
          to label %_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i unwind label %bb.cp, !inline_history !6

bb.cp:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #34, !inline_history !6
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.ku, %i.km
  br i1 %.not.i.i.i.i201, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bm, align 8, !tbaa !564
  br label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %bb.co
  %i.kv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.kl, %bb.co ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.kw = load ptr, ptr %i.bo, align 8, !tbaa !568
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.kv to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.kz) #36, !inline_history !569
  br label %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit

_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit.thread: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.la = load ptr, ptr %7, align 8, !tbaa !941
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %.080375
  store ptr null, ptr %i.lb, align 8, !tbaa !1559
  br label %.critedge124

_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %.critedge124

.critedge124:                                     ; preds = %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit.thread, %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !947
  invoke void @_ZN4Luau11TypeChecker9checkExprERKSt10shared_ptrINS_5ScopeEERKNS_7AstExprESt8optionalIPKNS_4TypeEEb(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::WithPredicate.472") align 8 %14, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.ld, ptr %.sroa.0254.2, i8 %.sroa.10.2, i1 noundef zeroext false)
          to label %bb.cr unwind label %bb.cx

bb.cr:                                            ; preds = %.critedge124
  %i.le = load ptr, ptr %14, align 8, !tbaa !642
  %i.lf = load ptr, ptr %7, align 8, !tbaa !941   ; 2 uses
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %.080375
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  store ptr %i.le, ptr %i.lh, align 8, !tbaa !1560
  %i.li = load ptr, ptr %i.bp, align 8, !tbaa !564 ; 3 uses
  %i.lj = load ptr, ptr %i.bq, align 8, !tbaa !565 ; 2 uses
  %.not4.i.i.i.i202 = icmp eq ptr %i.li, %i.lj
  br i1 %.not4.i.i.i.i202, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i209, label %.lr.ph.i.i.i.i203

.lr.ph.i.i.i.i203:                                ; preds = %bb.cr, %_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i205
  %.05.i.i.i.i204 = phi ptr [ %i.lr, %_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i205 ], [ %i.li, %bb.cr ] ; 3 uses
  %i.lk = load i32, ptr %.05.i.i.i.i204, align 8, !tbaa !567
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15TruthyPredicateENS_12IsAPredicateENS_18TypeGuardPredicateENS_11EqPredicateENS_12AndPredicateENS_11OrPredicateENS_12NotPredicateEEE9tableDtorE, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !82
  %i.lo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i204, i64 8
  invoke void %i.ln(ptr noundef nonnull %i.lo)
          to label %_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i205 unwind label %bb.cs, !inline_history !6

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i203
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #34, !inline_history !6
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i205: ; preds = %.lr.ph.i.i.i.i203
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i204, i64 120 ; 2 uses
  %.not.i.i.i.i206 = icmp eq ptr %i.lr, %i.lj
  br i1 %.not.i.i.i.i206, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i207, label %.lr.ph.i.i.i.i203, !llvm.loop !7

_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i207: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEEEvPT_.exit.i.i.i.i205
  %.pr.i.i208 = load ptr, ptr %i.bp, align 8, !tbaa !564
  br label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i209

_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i209: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i207, %bb.cr
  %i.ls = phi ptr [ %.pr.i.i208, %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i207 ], [ %i.li, %bb.cr ] ; 3 uses
  %.not.i.i1.i.i210 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i1.i.i210, label %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit211, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i209
  %i.lt = load ptr, ptr %i.br, align 8, !tbaa !568
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lw) #36, !inline_history !569
  br label %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit211

_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit211: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEES9_EvT_SB_RSaIT0_E.exit.i.i209, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br i1 %.179, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit211
  %i.lx = trunc nuw i8 %.sroa.8.1374 to i1
  br i1 %i.lx, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ly = load ptr, ptr %i.lh, align 8, !tbaa !269
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cn
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

bb.cx:                                            ; preds = %.critedge124
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit200

bb.cy:                                            ; preds = %bb.cv, %bb.cu, %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit211
  %.sroa.0270.2 = phi ptr [ %.sroa.0270.1373, %bb.cu ], [ %i.ly, %bb.cv ], [ %.sroa.0270.1373, %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit211 ]
  %.sroa.8.2 = phi i8 [ 1, %bb.cu ], [ 1, %bb.cv ], [ %.sroa.8.1374, %_ZN4Luau13WithPredicateIPKNS_4TypeEED2Ev.exit211 ]
  %i.mb = add nuw i64 %.080375, 1                 ; 2 uses
  %i.mc = load i64, ptr %i.o, align 8, !tbaa !939
  %i.md = icmp ult i64 %i.mb, %i.mc
  br i1 %i.md, label %bb.s, label %._crit_edge, !llvm.loop !1556

bb.cz:                                            ; preds = %._crit_edge
  store ptr %i.bt, ptr %0, align 8, !tbaa !642
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.me, i8 0, i64 24, i1 false)
  %.not.i.i.i212 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i212, label %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mf = ptrtoint ptr %.sink.i to i64
  %i.mg = ptrtoint ptr %i.bs to i64
  %i.mh = sub i64 %i.mf, %i.mg
end_hunk_1
