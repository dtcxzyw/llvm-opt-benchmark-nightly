Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.05?download=true
inline.NumInlined: 4400
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtBa_6option6OptionNtB2c_13ExternCrateIdEEENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyB1u_NCNvMs0_NtB2c_8resolverNtB4s_8Resolver14names_in_scopes0_0E0EB2c_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i43107, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false)
  %i.dt = icmp eq ptr %i.du, %2
  br i1 %i.dt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.sroa.0.0.i43107 = phi ptr [ %i.du, %bb.q ], [ %i.do, %bb.p ] ; 4 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.0.0.i43107, i64 -16 ; 4 uses
  %.val8.i44 = load ptr, ptr %i.du, align 8
  %i.dv = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1i_13ExternCrateIdEEE11sort_by_keyBA_NCNvMs0_NtB1i_8resolverNtB3a_8Resolver14names_in_scopes0_0E0B1i_(ptr %.val9.i42, ptr %.val8.i44)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %.lr.ph
  br i1 %i.dv, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.0.0.i43.lcssa = phi ptr [ %2, %bb.p ], [ %2, %bb.q ], [ %.sroa.0.0.i43107, %bb.r ] ; 2 uses
  store ptr %.val9.i42, ptr %.sroa.0.0.i43.lcssa, align 8, !noalias !2244
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i43.lcssa, i64 8
  store ptr %i.dr, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !2244
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtBa_6option6OptionNtB1S_13ExternCrateIdEEENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvMs0_NtB1S_8resolverNtB48_8Resolver14names_in_scopes0_0E0EB1S_.exit

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp69:                             ; preds = %.lr.ph112
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp69, %.loopexit
  %.val9.i42.lcssa = phi ptr [ %.val9.i42, %.loopexit ], [ %.val9.i42.1, %.loopexit.split-lp69 ]
  %.lcssa65 = phi ptr [ %i.dr, %.loopexit ], [ %i.cc, %.loopexit.split-lp69 ]
  %.sroa.0.0.i43.lcssa64 = phi ptr [ %.sroa.0.0.i43107, %.loopexit ], [ %.sroa.0.0.i43.1110, %.loopexit.split-lp69 ] ; 2 uses
  %lpad.phi75 = phi { ptr, i32 } [ %lpad.loopexit74, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp69 ]
  store ptr %.val9.i42.lcssa, ptr %.sroa.0.0.i43.lcssa64, align 8, !noalias !2249
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i43.lcssa64, i64 8
  store ptr %.lcssa65, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !2249
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtBa_6option6OptionNtB1S_13ExternCrateIdEEENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvMs0_NtB1S_8resolverNtB48_8Resolver14names_in_scopes0_0E0EB1S_.exit: ; preds = %._crit_edge, %.noexc45
  %i.dw = add nuw nsw i64 %.sroa.05.056, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %i.d
  br i1 %exitcond.not, label %.loopexit49, label %.noexc45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs3_NtCsjJXvCMGntp8_6syntax3ptrINtB6_6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB8_3ast9generated5nodes5LabelNtB1h_9BlockExprEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 !guid !2254 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !range !47, !noundef !16
  %i.c = zext nneg i16 %i.b to i64
  %i.d = load i64, ptr %1, align 8, !alias.scope !2255, !noundef !16
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %0, align 4, !noundef !16
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !16
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  store i64 %i.o, ptr %1, align 8, !alias.scope !2256
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs3_NtCsjJXvCMGntp8_6syntax3ptrINtB6_6AstPtrNtNtNtNtB8_3ast9generated5nodes3PatENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 !guid !2261 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !range !47, !noundef !16
  %i.c = zext nneg i16 %i.b to i64
  %i.d = load i64, ptr %1, align 8, !alias.scope !2262, !noundef !16
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %0, align 4, !noundef !16
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !16
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  store i64 %i.o, ptr %1, align 8, !alias.scope !2263
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs3_NtCsjJXvCMGntp8_6syntax3ptrINtB6_6AstPtrNtNtNtNtB8_3ast9generated5nodes4ExprENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 !guid !2268 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !range !47, !noundef !16
  %i.c = zext nneg i16 %i.b to i64
  %i.d = load i64, ptr %1, align 8, !alias.scope !2269, !noundef !16
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %0, align 4, !noundef !16
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !16
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  store i64 %i.o, ptr %1, align 8, !alias.scope !2270
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs3_NtCsjJXvCMGntp8_6syntax3ptrINtB6_6AstPtrNtNtNtNtB8_3ast9generated5nodes4TypeENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 !guid !2275 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !range !47, !noundef !16
  %i.c = zext nneg i16 %i.b to i64
  %i.d = load i64, ptr %1, align 8, !alias.scope !2276, !noundef !16
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %0, align 4, !noundef !16
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !16
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  store i64 %i.o, ptr %1, align 8, !alias.scope !2277
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs3_NtCsjJXvCMGntp8_6syntax3ptrINtB6_6AstPtrNtNtNtNtB8_3ast9generated5nodes8LifetimeENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 !guid !2282 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !range !47, !noundef !16
  %i.c = zext nneg i16 %i.b to i64
  %i.d = load i64, ptr %1, align 8, !alias.scope !2283, !noundef !16
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %0, align 4, !noundef !16
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !16
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  store i64 %i.o, ptr %1, align 8, !alias.scope !2284
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs3_NtCsjJXvCMGntp8_6syntax3ptrINtB6_6AstPtrNtNtNtNtB8_3ast9generated5nodes9MacroCallENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 !guid !2289 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !range !47, !noundef !16
  %i.c = zext nneg i16 %i.b to i64
  %i.d = load i64, ptr %1, align 8, !alias.scope !2290, !noundef !16
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %0, align 4, !noundef !16
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !16
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  store i64 %i.o, ptr %1, align 8, !alias.scope !2291
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvXsr_CsbdtVtHYmo6x_8thin_vecINtB6_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtCsbSS6DM8SDEO_5alloc3vec3VecBH_EEB1h_(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !2307 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = invoke noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE13with_capacityB1g_(i64 noundef 0)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.0.0.copyload5 = load i64, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2309
  %i.e = icmp ult i64 %.sroa.5.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  store ptr %.sroa.4.0.copyload, ptr %i.b, align 8, !alias.scope !2310, !noalias !2309
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.0.copyload5, ptr %i.g, align 8, !alias.scope !2310, !noalias !2309
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.4.0.copyload, ptr %i.h, align 8, !alias.scope !2310, !noalias !2309
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.f, ptr %i.i, align 8, !alias.scope !2310, !noalias !2309
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE14push_uncheckedB1g_.exit.i, %.preheader.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !2309
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE7reserveB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %.sroa.5.0.copyload)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2311

.preheader.i:                                     ; preds = %bb.c, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE14push_uncheckedB1g_.exit.i
  %1 = phi ptr [ %i.l, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE14push_uncheckedB1g_.exit.i ], [ %.sroa.4.0.copyload, %bb.c ] ; 3 uses
  %.sroa.0.034.i = phi i64 [ %2, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE14push_uncheckedB1g_.exit.i ], [ %.sroa.5.0.copyload, %bb.c ]
  %2 = add nsw i64 %.sroa.0.034.i, -1             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  %3 = icmp eq ptr %1, %i.f
  br i1 %3, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store ptr %i.l, ptr %i.h, align 8, !alias.scope !2312, !noalias !2309
  %i.m = load i32, ptr %1, align 4, !noalias !2313, !noundef !16
  call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !2315, !nonnull !16, !noundef !16
  %i.o = load i64, ptr %i.n, align 8, !noalias !2316, !noundef !16 ; 2 uses
  %i.p = invoke noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE8data_rawB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE14push_uncheckedB1g_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2311

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE14push_uncheckedB1g_.exit.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  store i32 %i.m, ptr %i.q, align 4, !noalias !2311
  %i.r = add i64 %i.o, 1
  %i.s = load ptr, ptr %i.c, align 8, !alias.scope !2315, !nonnull !16, !noundef !16
  store i64 %i.r, ptr %i.s, align 8, !noalias !2311
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %.loopexit.i, label %.preheader.i

bb.e:                                             ; preds = %bb.g, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  %i.u = load ptr, ptr %i.j, align 8, !alias.scope !2317, !noalias !2309, !nonnull !16, !noundef !16
  %i.v = load ptr, ptr %i.k, align 8, !alias.scope !2317, !noalias !2309, !nonnull !16, !noundef !16 ; 3 uses
  %i.w = icmp eq ptr %i.v, %i.u
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEEB1Z_.exit16.i, label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.h, !noalias !2311

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.y, ptr %i.k, align 8, !alias.scope !2317, !noalias !2309
  %i.z = load i32, ptr %i.v, align 4, !noalias !2318, !noundef !16
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE4pushB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.z)
          to label %bb.e unwind label %bb.f, !noalias !2311

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEEB1Z_.exit16.i: ; preds = %bb.e
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !2311
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.c
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.h, !noalias !2311

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEEB1Z_.exit16.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.x, %bb.f ] ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8, !alias.scope !2319, !nonnull !16, !noundef !16
  %i.ad = icmp eq ptr %i.ac, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.ad, label %.noexc, label %bb.j, !prof !26

bb.j:                                             ; preds = %.body
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #37
          to label %.noexc unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEEB1Z_.exit16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2309
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.copyload

bb.l:                                             ; preds = %bb.j, %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

.noexc:                                           ; preds = %bb.j, %.body, %bb.m
  %.pn8 = phi { ptr, i32 } [ %i.af, %bb.m ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.j ]
  resume { ptr, i32 } %.pn8

bb.m:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEEB1I_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #39
          to label %.noexc unwind label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvXsr_CsbdtVtHYmo6x_8thin_vecINtB6_7ThinVecNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB1z_8adapters10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3p_9generated5nodes15RecordExprFieldENCNvMs2_NtNtBL_10expr_store5lowerNtB4T_13ExprCollector18maybe_collect_exprsm_0EEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !2373 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [24 x i8], align 4                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 16               ; 5 uses
  %i.g = alloca [48 x i8], align 16               ; 5 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [24 x i8], align 4                ; 3 uses
  %i.j = alloca [24 x i8], align 4                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = invoke noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldE13with_capacityBK_(i64 noundef 0)
          to label %bb.c unwind label %bb.bc

bb.b:                                             ; preds = %bb.ax
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  store i64 %i.o, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2374
  store ptr %0, ptr %i.m, align 8, !noalias !2374
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %1, ptr %i.p, align 8, !noalias !2374
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.au, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  %i.u = load ptr, ptr %i.m, align 8, !alias.scope !2375, !nonnull !16, !align !17 ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 640
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1016 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 392 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 408 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 400
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtBW_13ExprCollector18maybe_collect_exprsm_0INtB7_5FnMutTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldEE8call_mutB10_.exit.i, %bb.d
  %i.ae = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes15RecordExprFieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2325 ; 2 uses

.noexc53:                                         ; preds = %bb.e
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.av, label %bb.f

bb.f:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2376
  store ptr %i.ae, ptr %i.l, align 8, !noalias !2377
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = load ptr, ptr %i.aa, align 8, !alias.scope !2378, !noalias !2379, !nonnull !16, !align !17, !noundef !16
  invoke void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB2_8Expander14is_cfg_enabled(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1120) %i.u, ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @55, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %.noexc59 unwind label %bb.q

.noexc59:                                         ; preds = %bb.f
  %i.ag = load i64, ptr %i.b, align 8, !range !48, !noalias !2380, !noundef !16
  %.not.i58 = icmp eq i64 %i.ag, -1
  br i1 %.not.i58, label %bb.s, label %bb.g

bb.g:                                             ; preds = %.noexc59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2380
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.h unwind label %bb.o, !noalias !2379

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.y, i64 12, i1 false), !noalias !2381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !2380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2380
  %i.ah = load ptr, ptr %i.aa, align 8, !alias.scope !2378, !noalias !2379, !nonnull !16, !align !17, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2380
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah)
          to label %bb.j unwind label %bb.i, !noalias !2379

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsileJQcQObtj_7hir_def.exit13.i unwind label %bb.n, !noalias !2379

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !2380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 4 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = load i64, ptr %i.ac, align 8, !alias.scope !2382, !noalias !2379, !noundef !16 ; 3 uses
  %i.ak = load i64, ptr %i.ab, align 8, !range !21, !alias.scope !2382, !noalias !2379, !noundef !16
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.r unwind label %bb.l, !noalias !2383

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsileJQcQObtj_7hir_def.exit13.i unwind label %bb.m, !noalias !2379

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !2379
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.i
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector20lower_for_binder_opt:bb.a

bb.an:                                            ; preds = %bb.am
  %i.bx = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !noalias !5884, !noundef !16
  %i.bz = add i32 %i.by, -1                       ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 4, !noalias !5884
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB23_9generated5nodes12GenericParamENCNvMsO_NtB23_8node_extNtB2J_16GenericParamList15lifetime_params0ENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB4y_13ExprCollector16lower_for_binder0EEEB4C_.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i.i.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB23_9generated5nodes12GenericParamENCNvMsO_NtB23_8node_extNtB2J_16GenericParamList15lifetime_params0ENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB4y_13ExprCollector16lower_for_binder0EEEB4C_.exit.i.i.i.i.i.i unwind label %bb.ap, !noalias !5884

bb.ap:                                            ; preds = %bb.ao
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.e, align 8, !alias.scope !5883, !noalias !5884
  br label %.body8.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB23_9generated5nodes12GenericParamENCNvMsO_NtB23_8node_extNtB2J_16GenericParamList15lifetime_params0ENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB4y_13ExprCollector16lower_for_binder0EEEB4C_.exit.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  store i64 0, ptr %i.e, align 8, !alias.scope !5883, !noalias !5884
  br label %.loopexit16.i.i

.noexc7.i.i:                                      ; preds = %bb.ak, %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsileJQcQObtj_7hir_def.exit13.i.i.i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1B_9generated5nodes12GenericParamENCNvMsO_NtB1B_8node_extNtB2h_16GenericParamList15lifetime_params0EINtNtBb_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB57_13ExprCollector16lower_for_binder0ENtNtNtB9_6traits8iterator8Iterator4nextB5b_.exit.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.p, %bb.ak, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1B_9generated5nodes12GenericParamENCNvMsO_NtB1B_8node_extNtB2h_16GenericParamList15lifetime_params0EINtNtBb_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB57_13ExprCollector16lower_for_binder0ENtNtNtB9_6traits8iterator8Iterator4nextB5b_.exit.i.i
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i

.body8.i.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap, %bb.t, %.body.i.i.i.i.i.i.i.i.i
  %eh.lpad-body9.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %bb.t ], [ %i.cb, %bb.ap ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1O_9generated5nodes12GenericParamENCNvMsO_NtB1O_8node_extNtB2u_16GenericParamList15lifetime_params0EINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5k_13ExprCollector16lower_for_binder0EEB5o_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #39
          to label %.body.i.i unwind label %bb.aq, !noalias !5884

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1B_9generated5nodes12GenericParamENCNvMsO_NtB1B_8node_extNtB2h_16GenericParamList15lifetime_params0EINtNtBb_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB57_13ExprCollector16lower_for_binder0ENtNtNtB9_6traits8iterator8Iterator4nextB5b_.exit.i.i: ; preds = %.noexc7.i.i
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameE4pushCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %.sroa.0.0.i.i.i.i.i.i.i.i.i)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5884

.loopexit16.i.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsileJQcQObtj_7hir_def.exit13.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB23_9generated5nodes12GenericParamENCNvMsO_NtB23_8node_extNtB2J_16GenericParamList15lifetime_params0ENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB4y_13ExprCollector16lower_for_binder0EEEB4C_.exit.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1O_9generated5nodes12GenericParamENCNvMsO_NtB1O_8node_extNtB2u_16GenericParamList15lifetime_params0EINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5k_13ExprCollector16lower_for_binder0EEB5o_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
          to label %bb.av unwind label %bb.ar, !noalias !5875

bb.aq:                                            ; preds = %.body8.i.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !5884
  unreachable

bb.ar:                                            ; preds = %.loopexit16.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ar, %.body8.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cd, %bb.ar ], [ %eh.lpad-body9.i.i, %.body8.i.i ] ; 2 uses
  %i.ce = load ptr, ptr %i.f, align 8, !alias.scope !5892, !noalias !5875, !nonnull !16, !noundef !16
  %i.cf = icmp eq ptr %i.ce, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.cf, label %.body.i, label %bb.as, !prof !26

bb.as:                                            ; preds = %.body.i.i
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #37
          to label %.body.i unwind label %bb.at, !noalias !5875

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !5875
  unreachable

bb.au:                                            ; preds = %bb.l
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1O_9generated5nodes12GenericParamENCNvMsO_NtB1O_8node_extNtB2u_16GenericParamList15lifetime_params0EINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5k_13ExprCollector16lower_for_binder0EEB5o_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.g) #39
          to label %.body.i unwind label %bb.at

bb.av:                                            ; preds = %.loopexit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5876
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !noundef !16
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListECsileJQcQObtj_7hir_def.exit17.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListECsileJQcQObtj_7hir_def.exit17.i unwind label %bb.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListECsileJQcQObtj_7hir_def.exit17.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

bb.ax:                                            ; preds = %bb.k, %bb.c
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ForBinderECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListECsileJQcQObtj_7hir_def.exit.i
  resume { ptr, i32 } %.pn.i

bb.ay:                                            ; preds = %bb.a
  %i.cn = tail call noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameE13with_capacityCsileJQcQObtj_7hir_def(i64 noundef 0)
  br label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector16lower_for_binder.exit

_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector16lower_for_binder.exit: ; preds = %bb.i, %bb.h, %bb.ay
  %.sroa.02.0 = phi i64 [ %i.cn, %bb.ay ], [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.0.i, %bb.i ]
  ret i64 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector20type_bounds_from_ast(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5915 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !16 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.h, align 4
  %i.l = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %1)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #40
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = tail call noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE13with_capacityBM_(i64 noundef 0)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def.exit12

bb.f:                                             ; preds = %bb.d, %bb.c, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.u, %bb.w, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.bb, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.u ]
  %i.o = load i32, ptr %i.h, align 4, !noundef !16
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.h, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def.exit

bb.g:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def.exit unwind label %bb.z

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.l, ptr %i.r, align 8
  store ptr %0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3c_9generated5nodes9TypeBoundENCNvMs2_NtNtB17_10expr_store5lowerNtB4z_13ExprCollector20type_bounds_from_ast0EE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !5916)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5916
  %i.s = invoke noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE13with_capacityBM_(i64 noundef 0)
          to label %bb.i unwind label %bb.w, !noalias !5916

bb.i:                                             ; preds = %bb.h
  store i64 %i.s, ptr %i.e, align 8, !noalias !5916
  %.sroa.0.0.copyload5.i = load i64, ptr %i.g, align 8, !alias.scope !5916
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5916, !nonnull !16, !noundef !16 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5916 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5918
  %i.t = icmp ult i64 %.sroa.5.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i ; 2 uses
  store ptr %.sroa.4.0.copyload.i, ptr %i.d, align 8, !alias.scope !5919, !noalias !5918
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.0.0.copyload5.i, ptr %i.v, align 8, !alias.scope !5919, !noalias !5918
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.4.0.copyload.i, ptr %i.w, align 8, !alias.scope !5919, !noalias !5918
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.u, ptr %i.x, align 8, !alias.scope !5919, !noalias !5918
  %.not.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i.i, label %bb.j

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i.i: ; preds = %bb.s, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !5918
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !alias.scope !5920, !noalias !5918, !nonnull !16, !noundef !16
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !5920, !noalias !5918, !nonnull !16, !noundef !16 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.aa
  br i1 %i.ac, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.lr.ph.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.lr.ph.i.i: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i.i
  %.sroa.718.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE7reserveBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %.sroa.5.0.copyload.i)
          to label %.preheader.i.i unwind label %.thread27.i.i, !noalias !5921

.preheader.i.i:                                   ; preds = %bb.j
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.k

.thread27.i.i:                                    ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.thread23.i.i

bb.k:                                             ; preds = %bb.s, %.preheader.i.i
  %i.ae = phi ptr [ %.sroa.4.0.copyload.i, %.preheader.i.i ], [ %4, %bb.s ] ; 4 uses
  %.sroa.0.033.i.i = phi i64 [ %.sroa.5.0.copyload.i, %.preheader.i.i ], [ %i.af, %bb.s ]
  %i.af = add nsw i64 %.sroa.0.033.i.i, -1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5922)
  %i.ag = icmp eq ptr %i.ae, %i.u
  br i1 %i.ag, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i: ; preds = %bb.k
  %4 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %4, ptr %i.w, align 8, !alias.scope !5922, !noalias !5918
  %.sroa.013.0.copyload14.i.i = load i8, ptr %i.ae, align 8, !noalias !5923 ; 2 uses
  %.not6.i.i = icmp eq i8 %.sroa.013.0.copyload14.i.i, -1
  br i1 %.not6.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i
  %.sroa.7.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5918
  store i8 %.sroa.013.0.copyload14.i.i, ptr %i.c, align 8, !noalias !5918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.0..sroa_idx15.i.i, i64 15, i1 false), !noalias !5921
  call void @llvm.experimental.noalias.scope.decl(metadata !5924)
  %i.ah = load ptr, ptr %i.e, align 8, !alias.scope !5925, !noalias !5916, !nonnull !16, !noundef !16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !5926, !noundef !16 ; 2 uses
  %i.aj = invoke noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE8data_rawBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.s unwind label %bb.m, !noalias !5927

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #39
          to label %.thread23.i.i unwind label %bb.n, !noalias !5921

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !5921
  unreachable

bb.o:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.i unwind label %bb.r, !noalias !5921

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.i.i: ; preds = %bb.q, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.lr.ph.i.i
  %i.an = phi ptr [ %i.ab, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.lr.ph.i.i ], [ %i.aq, %bb.q ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5928)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.z, align 8, !alias.scope !5928, !noalias !5918
  %.sroa.016.0.copyload17.i.i = load i8, ptr %i.an, align 8, !noalias !5929 ; 2 uses
  %.not7.i.i = icmp eq i8 %.sroa.016.0.copyload17.i.i, -1
  br i1 %.not7.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.thread.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.i.i
  %.sroa.718.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5918
  store i8 %.sroa.016.0.copyload17.i.i, ptr %i.a, align 8, !noalias !5918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.718.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.718.0..sroa_idx19.i.i, i64 15, i1 false), !noalias !5921
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE4pushBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.q unwind label %bb.o, !noalias !5921

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.thread.i.i: ; preds = %bb.q, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.i.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.x unwind label %bb.t, !noalias !5916

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5918
  %i.ap = load ptr, ptr %i.y, align 8, !alias.scope !5930, !noalias !5918, !nonnull !16, !noundef !16
  %i.aq = load ptr, ptr %i.z, align 8, !alias.scope !5930, !noalias !5918, !nonnull !16, !noundef !16 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.i.i

bb.r:                                             ; preds = %.thread23.i.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !5921
  unreachable

bb.s:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !5921
  %i.au = add i64 %i.ai, 1
  %i.av = load ptr, ptr %i.e, align 8, !alias.scope !5925, !noalias !5916, !nonnull !16, !noundef !16
  store i64 %i.au, ptr %i.av, align 8, !noalias !5927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5918
  %i.aw = icmp eq i64 %i.af, 0
  br i1 %i.aw, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i.i, label %bb.k

.thread23.i.i:                                    ; preds = %bb.m, %.thread27.i.i
  %eh.lpad-body26.i.i = phi { ptr, i32 } [ %i.ad, %.thread27.i.i ], [ %i.ak, %bb.m ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body.i unwind label %bb.r, !noalias !5921

bb.t:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.thread.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %.thread23.i.i, %bb.o
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ax, %bb.t ], [ %eh.lpad-body26.i.i, %.thread23.i.i ], [ %i.am, %bb.o ] ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8, !alias.scope !5931, !noalias !5916, !nonnull !16, !noundef !16
  %i.az = icmp eq ptr %i.ay, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.az, label %.body, label %bb.u, !prof !26

bb.u:                                             ; preds = %.body.i
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #37
          to label %.body unwind label %bb.v, !noalias !5916

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.w:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #39
          to label %.body unwind label %bb.v

bb.x:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit10.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5918
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !5916 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bc = load i32, ptr %i.h, align 4, !noundef !16
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.h, align 4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def.exit12

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def.exit12: ; preds = %bb.y, %bb.x, %bb.e
  %.sroa.02.0 = phi i64 [ %i.m, %bb.e ], [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.0.0.copyload.i, %bb.y ]
  ret i64 %.sroa.02.0

bb.z:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector21collect_macro_as_stmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5977 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [24 x i8], align 4                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [112 x i8], align 8               ; 4 uses
  %i.n = alloca [16 x i8], align 4                ; 5 uses
  %i.o = alloca [24 x i8], align 4                ; 6 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [12 x i8], align 4                ; 4 uses
  %i.r = alloca [12 x i8], align 4                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [12 x i8], align 4                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.x = invoke noundef nonnull ptr @_RNvXsd7_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9MacroExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i17, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i13, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit19, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store ptr %i.x, ptr %i.z, align 8
  store i64 20, ptr %i.v, align 8
  %i.aa = invoke noundef zeroext i1 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector9check_cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @109)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5978)
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !5978, !nonnull !16, !noundef !16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !5978, !noundef !16
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !noalias !5978
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i, label %bb.bw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i: ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i) #37
          to label %bb.bw unwind label %bb.bu

bb.e:                                             ; preds = %bb.c
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !5979)
  %.val.i12 = load ptr, ptr %i.z, align 8, !alias.scope !5979, !nonnull !16, !noundef !16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i12, i64 48 ; 2 uses
end_hunk_1
