Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypePath?download=true
inline.NumInlined: 1540
inline.NumDeleted: 626
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZN4LuauL8fnVisitRIRZNS_L8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEE3$_0bKNS4_9TypeFieldEEEvRT_RT0_PNSt11conditionalIXsr3stdE10is_const_vIT1_EEKvvE4typeE":bb.a
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  tail call void @__clang_call_terminate(ptr %i.dc) #27
  unreachable

bb.ae:                                            ; preds = %_ZN4Luau3getINS_16VariadicTypePackETnNSt9enable_ifIXsr15TypePackVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i
  store i32 0, ptr %.val, align 8, !tbaa !84
  store ptr %i.cw, ptr %i.cq, align 8, !tbaa !22
  br label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9TypeFieldEEEDaOT_.exit"

"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9TypeFieldEEEDaOT_.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %.critedge.i.i, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %_ZN4Luau3getINS_9TableTypeETnNSt9enable_ifIXsr11TypeVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread.i.i, %bb.s, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit87.i.i, %_ZN4Luau3getINS_10ExternTypeETnNSt9enable_ifIXsr11TypeVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i, %_ZN4Luau12_GLOBAL__N_114TraversalState13updateCurrentEPKNS_4TypeE.exit91.i.i, %bb.v, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ae
  %.8.i.i = phi i8 [ 1, %_ZN4Luau12_GLOBAL__N_114TraversalState13updateCurrentEPKNS_4TypeE.exit91.i.i ], [ 0, %bb.w ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %_ZN4Luau3getINS_10ExternTypeETnNSt9enable_ifIXsr11TypeVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i ], [ 1, %bb.g ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %.critedge.i.i ], [ 0, %bb.h ], [ 1, %bb.n ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread.i.i ], [ 0, %bb.ab ], [ 0, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit87.i.i ], [ 1, %bb.z ], [ 0, %bb.v ], [ 0, %bb.x ], [ 1, %bb.ae ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.s ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %_ZN4Luau3getINS_9TableTypeETnNSt9enable_ifIXsr11TypeVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i ]
  store i8 %.8.i.i, ptr %1, align 1, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4LuauL8fnVisitRIRZNS_L8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEE3$_0bKNS4_9PackFieldEEEvRT_RT0_PNSt11conditionalIXsr3stdE10is_const_vIT1_EEKvvE4typeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef readonly captures(none) %2) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::TypePackIterator", align 8 ; 8 uses
  %4 = alloca %"struct.Luau::TypePackIterator", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !118   ; 9 uses
  %.val3 = load i32, ptr %2, align 4, !tbaa !58   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !92
  %i.d = load i32, ptr @_ZN5DFInt32LuauTypePathMaximumTraverseStepsE, align 8, !tbaa !121
  %.not28.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not28.i.i, label %bb.b, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit"

bb.b:                                             ; preds = %bb.a
  switch i32 %.val3, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit" [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = load i32, ptr %.val, align 8, !tbaa !84
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %bb.d, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit"

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.g, align 8, !tbaa !123
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %_ZN4Luau3getINS_12FunctionTypeETnNSt9enable_ifIXsr11TypeVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit"

_ZN4Luau3getINS_12FunctionTypeETnNSt9enable_ifIXsr11TypeVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i: ; preds = %bb.e
  %i.j = icmp eq i32 %.val3, 0
  %.in.v.i.i = select i1 %i.j, i64 216, i64 224
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.in.v.i.i
  %i.k = load ptr, ptr %.in.i.i, align 8, !tbaa !60
  %i.l = tail call noundef ptr @_ZN4Luau6followEPKNS_11TypePackVarE(ptr noundef %i.k)
  %i.m = load i32, ptr %.val, align 8, !tbaa !84
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  invoke void %i.p(ptr noundef nonnull %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeETnNSt9enable_ifIXsr11TypeVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeETnNSt9enable_ifIXsr11TypeVariantE12is_part_of_vIT_EEbE4typeELb1EEEPKS3_RKNS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.i.i
  store i32 1, ptr %.val, align 8, !tbaa !84
  store ptr %i.l, ptr %i.f, align 8, !tbaa !22
  br label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit"

bb.h:                                             ; preds = %bb.b
  %i.s = load i32, ptr %.val, align 8, !tbaa !84
  %.not.i.i = icmp eq i32 %i.s, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 5 uses
  br i1 %.not.i.i, label %bb.i, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit"

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60
  call void @_ZN4Luau5beginEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %3, ptr noundef %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !60
  call void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %4, ptr noundef %i.v)
  %i.w = call noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.x = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau16TypePackIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !60
  call void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %4, ptr noundef %i.y)
  %i.z = call noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !210

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  %i.aa = call { ptr, i8 } @_ZN4Luau16TypePackIterator4tailEv(ptr noundef nonnull align 8 dereferenceable(40) %3) ; 2 uses
  %i.ab = extractvalue { ptr, i8 } %i.aa, 1
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ad = extractvalue { ptr, i8 } %i.aa, 0
  %i.ae = call noundef ptr @_ZN4Luau6followEPKNS_11TypePackVarE(ptr noundef %i.ad)
  %i.af = load i32, ptr %.val, align 8, !tbaa !84
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  invoke void %i.ai(ptr noundef nonnull %i.t)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #27
  unreachable

.critedge.i.i:                                    ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit"

bb.l:                                             ; preds = %bb.j
  store i32 1, ptr %.val, align 8, !tbaa !84
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit"

"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackFieldEEEDaOT_.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %.critedge.i.i, %bb.l
  %.4.i.i = phi i8 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.l ], [ 0, %.critedge.i.i ], [ 0, %bb.h ]
  store i8 %.4.i.i, ptr %1, align 1, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4LuauL8fnVisitRIRZNS_L8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEE3$_0bKNS4_9PackSliceEEEvRT_RT0_PNSt11conditionalIXsr3stdE10is_const_vIT1_EEKvvE4typeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef readonly captures(none) %2) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.156", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.57", align 8    ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !118   ; 7 uses
  %.val3 = load i64, ptr %2, align 8, !tbaa !52   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !92
  %i.d = load i32, ptr @_ZN5DFInt32LuauTypePathMaximumTraverseStepsE, align 8, !tbaa !121
  %.not75.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not75.i.i, label %bb.b, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackSliceEEEDaOT_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %.val, align 8, !tbaa !84
  %.not.i.i = icmp eq i32 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  br i1 %.not.i.i, label %bb.c, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackSliceEEEDaOT_.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  call void @_ZN4Luau7flattenEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.156") align 8 %3, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %.not26.i.i = icmp ugt i64 %i.o, %.val3         ; 2 uses
  br i1 %.not26.i.i, label %bb.d, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit39.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = sub nuw i64 %i.o, %.val3                 ; 3 uses
  %i.q = icmp ugt i64 %i.p, 1152921504606846975
  br i1 %i.q, label %bb.e, label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
          to label %.noexc.i.i unwind label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.thread.i.i

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.d
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #30
          to label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i unwind label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.thread.i.i ; 5 uses

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !213    ; 3 uses
  %i.v = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.w = icmp ne i64 %.val3, 0
  %i.x = icmp ne ptr %i.u, %i.v
  %or.cond90.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond90.i.i, label %.lr.ph.i.i, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i
  %.sroa.048.0.lcssa.i.i = phi ptr [ %i.u, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %.not7793.i.i = icmp eq ptr %.sroa.048.0.lcssa.i.i, %i.v
  br i1 %.not7793.i.i, label %.critedge._crit_edge.thread.i.i, label %.lr.ph98.i.i

.critedge._crit_edge.thread.i.i:                  ; preds = %.critedge.preheader.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89
  %i.aa = ptrtoint ptr %i.s to i64
  br label %.thread.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.thread.i.i: ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i.i.i, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit43.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i, %.lr.ph.i.i
  %.01792.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ 0, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i ]
  %.sroa.048.091.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.u, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.048.091.i.i, i64 8 ; 3 uses
  %i.ad = add nuw i64 %.01792.i.i, 1              ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %.val3
  %i.af = icmp ne ptr %i.ac, %i.v
  %or.cond.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.preheader.i.i, !llvm.loop !211

.lr.ph98.i.i:                                     ; preds = %.critedge.preheader.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i
  %5 = phi ptr [ %6, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i ], [ %i.v, %.critedge.preheader.i.i ]
  %.sroa.053.097.i.i = phi ptr [ %.sroa.053.3.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i ], [ %i.s, %.critedge.preheader.i.i ] ; 6 uses
  %.sroa.048.196.i.i = phi ptr [ %i.aw, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i ], [ %.sroa.048.0.lcssa.i.i, %.critedge.preheader.i.i ] ; 3 uses
  %.sroa.21.095.i.i = phi ptr [ %.sroa.21.3.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i ], [ %i.t, %.critedge.preheader.i.i ] ; 5 uses
  %.sroa.13.094.i.i = phi ptr [ %.sroa.13.2.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i ], [ %i.s, %.critedge.preheader.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.13.094.i.i, %.sroa.21.095.i.i
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph98.i.i
  %i.ag = load ptr, ptr %.sroa.048.196.i.i, align 8, !tbaa !59
  store ptr %i.ag, ptr %.sroa.13.094.i.i, align 8, !tbaa !59
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i

bb.g:                                             ; preds = %.lr.ph98.i.i
  %i.ah = ptrtoint ptr %.sroa.21.095.i.i to i64
  %i.ai = ptrtoint ptr %.sroa.053.097.i.i to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #29
          to label %.noexc32.i.i unwind label %.loopexit.split-lp.i.i

.noexc32.i.i:                                     ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.g
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #30
          to label %.noexc33.i.i unwind label %.loopexit.i.i ; 4 uses

.noexc33.i.i:                                     ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  %i.at = load ptr, ptr %.sroa.048.196.i.i, align 8, !tbaa !59
  store ptr %i.at, ptr %i.as, align 8, !tbaa !59
  %i.au = icmp sgt i64 %i.aj, 0
  br i1 %i.au, label %bb.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

bb.i:                                             ; preds = %.noexc33.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %.sroa.053.097.i.i, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %.noexc33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.097.i.i, i64 noundef %i.aj) #28
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !213
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.f
  %6 = phi ptr [ %.pre.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %5, %bb.f ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.as, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.13.094.i.i, %bb.f ]
  %.sroa.21.3.i.i = phi ptr [ %i.av, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.21.095.i.i, %bb.f ] ; 7 uses
  %.sroa.053.3.i.i = phi ptr [ %i.ar, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.053.097.i.i, %bb.f ] ; 11 uses
  %.sroa.13.2.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.048.196.i.i, i64 8 ; 2 uses
  %.not77.i.i = icmp eq ptr %i.aw, %6
  br i1 %.not77.i.i, label %.critedge._crit_edge.i.i, label %.lr.ph98.i.i, !llvm.loop !212

.critedge._crit_edge.i.i:                         ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89 ; 4 uses
  %i.az = ptrtoint ptr %.sroa.13.2.i.i to i64
  %i.ba = ptrtoint ptr %.sroa.053.3.i.i to i64    ; 5 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.13.2.i.i, %.sroa.053.3.i.i
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i, label %bb.j

.thread.i.i:                                      ; preds = %.critedge._crit_edge.i.i, %.critedge._crit_edge.thread.i.i
  %i.bc = phi i64 [ %i.aa, %.critedge._crit_edge.thread.i.i ], [ %i.ba, %.critedge._crit_edge.i.i ]
  %i.bd = phi ptr [ %i.z, %.critedge._crit_edge.thread.i.i ], [ %i.ay, %.critedge._crit_edge.i.i ]
  %.sroa.053.0.lcssa124.i.i.a = phi ptr [ %i.s, %.critedge._crit_edge.thread.i.i ], [ %.sroa.053.3.i.i, %.critedge._crit_edge.i.i ]
  %.sroa.21.0.lcssa122.i.i.a = phi ptr [ %i.t, %.critedge._crit_edge.thread.i.i ], [ %.sroa.21.3.i.i, %.critedge._crit_edge.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.n

bb.j:                                             ; preds = %.critedge._crit_edge.i.i
  %i.bg = icmp ugt i64 %i.bb, 9223372036854775800
  br i1 %i.bg, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !49

.noexc.i.i.i.i:                                   ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc34.i.i unwind label %.loopexit.split-lp.i.i

.noexc34.i.i:                                     ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #30
          to label %.noexc35.i.i unwind label %.loopexit.split-lp.i.i ; 5 uses

.noexc35.i.i:                                     ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.bh, ptr %4, align 8, !tbaa !104
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !103
  %i.bl = icmp samesign ugt i64 %i.bb, 8
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !106

bb.k:                                             ; preds = %.noexc35.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %.sroa.053.3.i.i, i64 %i.bb, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %.noexc35.i.i
  %i.bm = icmp eq i64 %i.bb, 8
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %.sroa.053.3.i.i, align 8, !tbaa !59
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.thread.i.i
  %i.bo = phi i64 [ %i.ba, %bb.k ], [ %i.ba, %bb.l ], [ %i.ba, %bb.m ], [ %i.bc, %.thread.i.i ]
  %i.bp = phi ptr [ %i.ay, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ], [ %i.bd, %.thread.i.i ]
  %.sroa.053.0.lcssa123.i.i = phi ptr [ %.sroa.053.3.i.i, %bb.k ], [ %.sroa.053.3.i.i, %bb.l ], [ %.sroa.053.3.i.i, %bb.m ], [ %.sroa.053.0.lcssa124.i.i.a, %.thread.i.i ] ; 4 uses
  %.sroa.21.0.lcssa121.i.i = phi ptr [ %.sroa.21.3.i.i, %bb.k ], [ %.sroa.21.3.i.i, %bb.l ], [ %.sroa.21.3.i.i, %bb.m ], [ %.sroa.21.0.lcssa122.i.i.a, %.thread.i.i ] ; 4 uses
  %i.bq = phi ptr [ %i.bk, %bb.k ], [ %i.bk, %bb.l ], [ %i.bk, %bb.m ], [ %i.bf, %.thread.i.i ] ; 2 uses
  %i.br = phi ptr [ %i.bj, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.m ], [ null, %.thread.i.i ]
  %i.bs = phi ptr [ %i.bi, %bb.k ], [ %i.bi, %bb.l ], [ %i.bi, %bb.m ], [ %i.be, %.thread.i.i ]
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !105
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bt = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackESt6vectorIPKNS_4TypeESaIS4_EESt8optionalIPKNS_11TypePackVarEE(ptr noundef nonnull align 8 dereferenceable(184) %i.bp, ptr noundef nonnull align 8 %4, ptr %.sroa.0.0.copyload.i.i, i8 %.sroa.2.0.copyload.i.i)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i36.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i36.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !103
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #28
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i: ; preds = %bb.p, %bb.o
  %i.bz = invoke noundef ptr @_ZN4Luau6followEPKNS_11TypePackVarE(ptr noundef %i.bt)
          to label %.noexc37.i.i unwind label %.loopexit.split-lp.i.i

.noexc37.i.i:                                     ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i
  %i.ca = load i32, ptr %.val, align 8, !tbaa !84
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !22
  invoke void %i.cd(ptr noundef nonnull %i.f)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %.noexc37.i.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #27
  unreachable

bb.r:                                             ; preds = %.noexc37.i.i
  store i32 1, ptr %.val, align 8, !tbaa !84
  store ptr %i.bz, ptr %i.f, align 8, !tbaa !22
  %i.cg = ptrtoint ptr %.sroa.21.0.lcssa121.i.i to i64
  %i.ch = sub i64 %i.cg, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.lcssa123.i.i, i64 noundef %i.ch) #28
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !104
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit39.i.i

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.i.i

.loopexit.split-lp.i.i:                           ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %bb.h
  %.sroa.21.087.i.i = phi ptr [ %.sroa.21.095.i.i, %bb.h ], [ %.sroa.21.3.i.i, %.noexc.i.i.i.i ], [ %.sroa.21.3.i.i, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %.sroa.21.0.lcssa121.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i ]
  %.sroa.053.082.i.i = phi ptr [ %.sroa.053.097.i.i, %bb.h ], [ %.sroa.053.3.i.i, %.noexc.i.i.i.i ], [ %.sroa.053.3.i.i, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %.sroa.053.0.lcssa123.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.i.i

bb.s:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i40.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i40.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %i.bq, align 8, !tbaa !103
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #28
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.i.i: ; preds = %bb.t, %bb.s, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.sroa.21.085.i.i = phi ptr [ %.sroa.21.0.lcssa121.i.i, %bb.t ], [ %.sroa.21.0.lcssa121.i.i, %bb.s ], [ %.sroa.21.095.i.i, %.loopexit.i.i ], [ %.sroa.21.087.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.053.080.i.i = phi ptr [ %.sroa.053.0.lcssa123.i.i, %bb.t ], [ %.sroa.053.0.lcssa123.i.i, %bb.s ], [ %.sroa.053.097.i.i, %.loopexit.i.i ], [ %.sroa.053.082.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.pn28.pn.i.i = phi { ptr, i32 } [ %i.ci, %bb.t ], [ %i.ci, %bb.s ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.co = ptrtoint ptr %.sroa.21.085.i.i to i64
  %i.cp = ptrtoint ptr %.sroa.053.080.i.i to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.080.i.i, i64 noundef %i.cq) #28
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit43.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit43.i.i: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.thread.i.i
  %.pn28.pn73.i.i = phi { ptr, i32 } [ %i.ab, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.thread.i.i ], [ %.pn28.pn.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit41.i.i ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i.i44.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i44.i.i, label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit43.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !103
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #28
  br label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit.i.i

_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit43.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn28.pn73.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit39.i.i: ; preds = %bb.r, %bb.c
  %i.cx = phi ptr [ %.pre.i, %bb.r ], [ %i.k, %bb.c ] ; 3 uses
  %.not.i.i.i.i45.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i45.i.i, label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit46.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit39.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !103
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #28
  br label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit46.i.i

_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit46.i.i: ; preds = %bb.v, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit39.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.dd = zext i1 %.not26.i.i to i8
  br label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackSliceEEEDaOT_.exit"

"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9PackSliceEEEDaOT_.exit": ; preds = %bb.a, %bb.b, %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit46.i.i
  %.2.i.i = phi i8 [ 0, %bb.a ], [ %i.dd, %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit46.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i8 %.2.i.i, ptr %1, align 1, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4LuauL8fnVisitRIRZNS_L8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEE3$_0bKNS4_9ReductionEEEvRT_RT0_PNSt11conditionalIXsr3stdE10is_const_vIT1_EEKvvE4typeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef readonly captures(none) %2) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !118   ; 4 uses
  %.val3 = load ptr, ptr %2, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !92
  %i.d = load i32, ptr @_ZN5DFInt32LuauTypePathMaximumTraverseStepsE, align 8, !tbaa !121
  %.not.i.i = icmp slt i32 %i.b, %i.d             ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9ReductionEEEDaOT_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.val3)
  %i.f = load i32, ptr %.val, align 8, !tbaa !84
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  invoke void %i.i(ptr noundef nonnull %i.j)
          to label %_ZN4Luau12_GLOBAL__N_114TraversalState13updateCurrentEPKNS_4TypeE.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN4Luau12_GLOBAL__N_114TraversalState13updateCurrentEPKNS_4TypeE.exit.i.i: ; preds = %bb.b
  store i32 0, ptr %.val, align 8, !tbaa !84
  store ptr %i.e, ptr %i.j, align 8, !tbaa !22
  br label %"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9ReductionEEEDaOT_.exit"

"_ZZN4LuauL8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEENK3$_0clIRKNS3_9ReductionEEEDaOT_.exit": ; preds = %bb.a, %_ZN4Luau12_GLOBAL__N_114TraversalState13updateCurrentEPKNS_4TypeE.exit.i.i
  %i.m = zext i1 %.not.i.i to i8
  store i8 %i.m, ptr %1, align 1, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4LuauL8fnVisitRIRZNS_L8traverseERNS_12_GLOBAL__N_114TraversalStateERKNS_8TypePath4PathEE3$_0bKNS4_18GenericPackMappingEEEvRT_RT0_PNSt11conditionalIXsr3stdE10is_const_vIT1_EEKvvE4typeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef readonly captures(none) %2) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !118   ; 4 uses
  %.val3 = load ptr, ptr %2, align 8, !tbaa !60
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !92
  %i.d = load i32, ptr @_ZN5DFInt32LuauTypePathMaximumTraverseStepsE, align 8, !tbaa !121
end_hunk_0
