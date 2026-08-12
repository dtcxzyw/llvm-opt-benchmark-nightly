inline.NumInlined: 1156
inline.NumDeleted: 548
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_17PlaceTableBuilder9add_place:bb.a
  %i.bs = call { i32, i32 } @_RNvXsd_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_15ParentPlaceIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c), !noalias !1515 ; 2 uses
  %i.bt = extractvalue { i32, i32 } %i.bs, 0      ; 2 uses
  %.not.i = icmp eq i32 %i.bt, 2
  br i1 %.not.i, label %._crit_edge.i, label %bb.m

bb.t:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.y, align 8, !alias.scope !1498, !noalias !1515, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.az ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1540, !noalias !1545, !noundef !4 ; 2 uses
  %i.by = icmp ugt i64 %i.bx, 4                   ; 2 uses
  %i.bz = load ptr, ptr %i.bv, align 8, !alias.scope !1540, !noalias !1545, !nonnull !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %.sink9.i.i14.i = select i1 %i.by, ptr %i.bz, ptr %i.bv
  %.sink8.i.i15.i = select i1 %i.by, ptr %i.ca, ptr %i.bw ; 2 uses
  %.sink.i.i16.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 4)
  %i.cb = load i64, ptr %.sink8.i.i15.i, align 8, !alias.scope !1547, !noalias !1515, !noundef !4 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %.sink.i.i16.i
  br i1 %i.cc, label %bb.u, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdj4_E4pushBM_.exit20.i, !prof !13

bb.u:                                             ; preds = %bb.t
  call fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdj4_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv), !noalias !1515
  %i.cd = load ptr, ptr %i.bv, align 8, !alias.scope !1547, !noalias !1515, !nonnull !4, !noundef !4
  %.pre.i19.i = load i64, ptr %i.ca, align 8, !alias.scope !1547, !noalias !1515
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdj4_E4pushBM_.exit20.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdj4_E4pushBM_.exit20.i: ; preds = %bb.u, %bb.t
  %i.ce = phi i64 [ %.pre.i19.i, %bb.u ], [ %i.cb, %bb.t ]
  %.sroa.01.0.i17.i = phi ptr [ %i.ca, %bb.u ], [ %.sink8.i.i15.i, %bb.t ]
  %.sroa.0.0.i18.i = phi ptr [ %i.cd, %bb.u ], [ %.sink9.i.i14.i, %bb.t ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i18.i, i64 %i.ce
  store i32 %i.k, ptr %i.cf, align 4, !noalias !1515
  br label %bb.s

bb.v:                                             ; preds = %bb.n
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.az, i64 noundef %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #35, !noalias !1515
  unreachable

_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_17PlaceTableBuilder10add_member.exit: ; preds = %bb.b, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.cg = icmp ne i32 %i.k, 0
  call void @llvm.assume(i1 %i.cg)
  store i32 1, ptr %0, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = zext i1 %i.l to i8
  store i8 %i.cj, ptr %i.ci, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ck = call { i32, i1 } @_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_17PlaceTableBuilder10add_symbol(ptr noalias noundef nonnull align 8 dereferenceable(176) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f) ; 2 uses
  %i.cl = extractvalue { i32, i1 } %i.ck, 0       ; 2 uses
  %i.cm = extractvalue { i32, i1 } %i.ck, 1
  %i.cn = icmp ne i32 %i.cl, 0
  call void @llvm.assume(i1 %i.cn)
  store i32 0, ptr %0, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cl, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = zext i1 %i.cm to i8
  store i8 %i.cq, ptr %i.cp, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_17PlaceTableBuilder10add_member.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_17PlaceTableBuilder9symbol_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core6symbolNtB5_18SymbolTableBuilder9symbol_id(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs6_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_18ScopedDefinitionId10from_usize(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %0 to i32
  %i.c = add nuw i32 %i.b, 1
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs6_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_18ScopedDefinitionId8from_u32(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = add nuw i32 %0, 1
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs7_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_13ScopedPlaceId13expect_symbol(i32 noundef range(i32 0, 2) %0, i32 noundef returned %1) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i32 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 119 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12into_val_mutCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMsS_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE6kv_mutCs2O29vuvTAEJ_14ty_python_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.d
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsc_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_15ParentPlaceIter10for_member(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_10MemberExpr6as_ref(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1548
  call void @_RNvMs9_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_13MemberExprRef6parent(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b), !noalias !1554
  %i.c = load ptr, ptr %i.a, align 8, !noalias !1548, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.16.copyload = load ptr, ptr %.sroa.7.16..sroa_idx, align 8, !noalias !1555
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.16..sroa_idx, i64 16, i1 false)
  br label %_RNvMsb_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_20ParentPlaceIterState12parent_state.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call { ptr, i64 } @_RNvMs9_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_13MemberExprRef11symbol_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b), !noalias !1554 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  br label %_RNvMsb_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_20ParentPlaceIterState12parent_state.exit

_RNvMsb_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_20ParentPlaceIterState12parent_state.exit: ; preds = %bb.b, %bb.c
  %.sroa.5.0 = phi i64 [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %.sroa.7.0 = phi ptr [ %2, %bb.c ], [ %.sroa.7.16.copyload, %bb.b ]
  %.sink1.i = phi ptr [ %i.f, %bb.c ], [ %3, %bb.b ]
  %.sink.i = phi ptr [ null, %bb.c ], [ %2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1548
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink1.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core10definition10Definitionj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1556, !noalias !1559, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1556, !noalias !1559, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1556, !noalias !1559 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1561
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %i.p = icmp ult i64 %i.k, 1152921504606846975
  br i1 %i.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit.i, label %bb.p, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit.i
  %i.q = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit49.i, label %bb.p, !prof !1564

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1561
  %i.r = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 4) #38, !noalias !1561 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit49.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 3
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 4, i64 noundef %i.o) #38, !noalias !1561 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit49.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit49.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1561
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1561
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1561
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1561
  %i.x = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.x, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBF_.exit.i, label %bb.n, !prof !1564

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1565
  store i64 0, ptr %i.a, align 8, !noalias !1565
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1565
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBF_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4) #38, !noalias !1561
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBH_.exit49.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.o) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core10definition10Definitionj1_E8into_vecBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  store i64 %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %i.j = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.j, ptr %i.a, align 16, !alias.scope !1571
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %i.k, align 16, !alias.scope !1573, !noalias !1568
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_12SpecFromIterBT_INtCsheqz6YZvxwl_8smallvec8IntoIterABT_j1_EE9from_iterBX_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintj4_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1574, !noalias !1577, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1574, !noalias !1577, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1574, !noalias !1577 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1579
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 3 uses
  %i.q = icmp ult i64 %.sroa.02.0, 2305843009213693951
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit.i, label %bb.p, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit.i
  %i.r = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.r, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit44.i, label %bb.p, !prof !1564

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1579
  %i.s = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #38, !noalias !1579 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit44.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 2
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 4, i64 noundef %i.p) #38, !noalias !1579 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1579
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1579
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1579
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1579
  %i.y = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.y, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBF_.exit.i, label %bb.n, !prof !1564

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1582
  store i64 0, ptr %i.a, align 8, !noalias !1582
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1582
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBF_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4) #38, !noalias !1579
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBH_.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdj4_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1585, !noalias !1588, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1585, !noalias !1588, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1585, !noalias !1588 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1590
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 3 uses
  %i.q = icmp ult i64 %.sroa.02.0, 2305843009213693951
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit.i, label %bb.p, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit.i
  %i.r = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.r, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit44.i, label %bb.p, !prof !1564

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1590
  %i.s = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #38, !noalias !1590 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit44.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 2
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 4, i64 noundef %i.p) #38, !noalias !1590 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1590
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1590
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1590
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1590
  %i.y = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.y, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBF_.exit.i, label %bb.n, !prof !1564

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1593
  store i64 0, ptr %i.a, align 8, !noalias !1593
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1593
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBF_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4) #38, !noalias !1590
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBH_.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints30ScopedReachabilityConstraintIdEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1596, !noalias !1599, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1596, !noalias !1599
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_E8into_vecBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  store i64 %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.j = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.j, ptr %i.a, align 16, !alias.scope !1604
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx9, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %i.k, align 16, !alias.scope !1606, !noalias !1601
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEINtB2_12SpecFromIterBT_INtCsheqz6YZvxwl_8smallvec8IntoIterABT_j8_EE9from_iterBX_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1607, !noalias !1610, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 2                    ; 4 uses
  %i.k = icmp ult i64 %1, 2305843009213693952
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit, label %bb.m, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit
  %i.l = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.l, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit45, label %bb.m, !prof !1564

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #38 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit45: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 2
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 4, i64 noundef %i.j) #38 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.s = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.s, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBF_.exit, label %bb.l, !prof !1564

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1612
  store i64 0, ptr %i.a, align 8, !noalias !1612
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1612
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBF_.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 4) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoEBH_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartj8_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1615, !noalias !1618, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1615, !noalias !1618, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1615, !noalias !1618 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1620
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 24                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit.i, !prof !1215

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit45.i, !prof !1215

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1620
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #38, !noalias !1620 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #38, !noalias !1620 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1620
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1620
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1620
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(200) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(200) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1620
  %i.x = mul i64 %.sink.i.i, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBF_.exit.i, !prof !1215

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1623
  store i64 0, ptr %i.a, align 8, !noalias !1623
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !1623
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1623
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #38, !noalias !1620
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdj4_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1626, !noalias !1629, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1626, !noalias !1629, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1626, !noalias !1629 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1631
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 3 uses
  %i.q = icmp ult i64 %.sroa.02.0, 2305843009213693951
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit.i, label %bb.p, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit.i
  %i.r = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.r, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit44.i, label %bb.p, !prof !1564

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1631
  %i.s = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #38, !noalias !1631 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit44.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 2
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 4, i64 noundef %i.p) #38, !noalias !1631 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1631
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1631
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1631
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1631
  %i.y = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.y, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBF_.exit.i, label %bb.n, !prof !1564

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1634
  store i64 0, ptr %i.a, align 8, !noalias !1634
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1634
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBF_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4) #38, !noalias !1631
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBH_.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCapturej1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1637, !noalias !1640, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1637, !noalias !1640, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1637, !noalias !1640 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1642
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 5                  ; 3 uses
  %i.p = icmp ult i64 %i.k, 288230376151711743
  br i1 %i.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit.i, label %bb.p, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit.i
  %i.q = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit45.i, label %bb.p, !prof !1564

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1642
  %i.r = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #38, !noalias !1642 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit45.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 5
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 8, i64 noundef %i.o) #38, !noalias !1642 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1642
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1642
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1642
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(40) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl i64 %i.g, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(40) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1642
  %i.x = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.x, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBF_.exit.i, label %bb.n, !prof !1564

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1645
  store i64 0, ptr %i.a, align 8, !noalias !1645
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1645
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBF_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8) #38, !noalias !1642
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder14PendingCaptureEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_E11try_reserveBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1648, !noalias !1651, !noundef !4 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  %.val = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.val, i64 %i.b      ; 3 uses
  %i.f = sub i64 %.sink.i, %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.e, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.g, 2
  %i.j = add i64 %i.g, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k
  %.sroa.010.0 = select i1 %i.i, i64 0, i64 %i.l  ; 2 uses
  %i.m = icmp eq i64 %.sroa.010.0, -1
  br i1 %i.m, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %.sroa.010.0, 1
  %i.o = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.n) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.sroa.4.0 = phi i64 [ %i.q, %bb.d ], [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.p, %bb.d ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_E13shrink_to_fitBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1653, !noalias !1656, !nonnull !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1653, !noalias !1656 ; 5 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.g, label %bb.c

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.d, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBF_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.d, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.g) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
    i64 0, label %bb.f
  ], !prof !3

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.m = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.e, i64 %i.m, i1 false)
  %i.n = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %i.n, 576460752303423488
  br i1 %i.o, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBF_.exit, label %bb.h, !prof !1564

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1658
  store i64 0, ptr %i.a, align 8, !noalias !1658
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1658
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBF_.exit: ; preds = %bb.g
  %1 = shl nuw nsw i64 %i.n, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 4) #38
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1661, !noalias !1664, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1661, !noalias !1664
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1666, !noalias !1669, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 4                    ; 4 uses
  %i.k = icmp ult i64 %1, 576460752303423488
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit, label %bb.m, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit
  %i.l = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.l, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit44, label %bb.m, !prof !1564

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #38 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit44: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 4
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 4, i64 noundef %i.j) #38 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.s = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.s, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBF_.exit, label %bb.l, !prof !1564

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1671
  store i64 0, ptr %i.a, align 8, !noalias !1671
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1671
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBF_.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 4) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationEBH_.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1674, !noalias !1677, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1674, !noalias !1677, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1674, !noalias !1677 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1679
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = mul i64 %i.m, 12                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 768614336404564649
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit.i, !prof !1215

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit.i
  %or.cond61.not.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond61.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit44.i, !prof !1215

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1679
  %i.p = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 4) #38, !noalias !1679 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit44.i: ; preds = %bb.i
  %i.r = mul nuw i64 %.sink.i.i, 12
  %i.s = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef 4, i64 noundef %i.o) #38, !noalias !1679 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.p, %bb.l ], [ %i.s, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1679
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1679
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1679
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.u = mul nuw nsw i64 %i.c, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.u, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.v = mul i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.v, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1679
  %i.w = mul i64 %.sink.i.i, 12                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBH_.exit.i, !prof !1215

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1682
  store i64 0, ptr %i.a, align 8, !noalias !1682
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.x, align 8, !noalias !1682
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1682
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBH_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.w, i64 noundef 4) #38, !noalias !1679
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.o) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !1685, !noalias !1688, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1685, !noalias !1688
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4   ; 6 uses
  %i.c = icmp ult i64 %i.b, 3                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1690, !noalias !1693, !nonnull !4 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !4 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 3
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 12                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 768614336404564650
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit, !prof !1215

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit
  %i.j = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 768614336404564650
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit45, !prof !1215

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.k = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 4) #38 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 4, i64 noundef %i.i) #38 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 4 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 768614336404564650
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBH_.exit, !prof !1215

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1695
  store i64 0, ptr %i.a, align 8, !noalias !1695
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !1695
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1695
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBH_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 4) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEBJ_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationj2_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1698, !noalias !1701, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1698, !noalias !1701
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationj2_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationj2_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1703, !noalias !1706, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %i.k = icmp ult i64 %1, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit, label %bb.m, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit
  %i.l = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.l, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit44, label %bb.m, !prof !1564

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #38 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit44: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 4, i64 noundef %i.j) #38 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.s = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.s, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBH_.exit, label %bb.l, !prof !1564

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1708
  store i64 0, ptr %i.a, align 8, !noalias !1708
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1708
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBH_.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 4) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationEBJ_.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1711, !noalias !1714, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1711, !noalias !1714
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1716, !noalias !1719, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 2                    ; 4 uses
  %i.k = icmp ult i64 %1, 2305843009213693952
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit, label %bb.m, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit
  %i.l = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.l, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit49, label %bb.m, !prof !1564

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #38 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit49: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 2
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 4, i64 noundef %i.j) #38 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit49, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit49 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.s = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.s, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBH_.exit, label %bb.l, !prof !1564

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1721
  store i64 0, ptr %i.a, align 8, !noalias !1721
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1721
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBH_.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 4) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit49, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit49 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdEBJ_.exit49 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdIBt_ANtNtNtBN_7use_def11place_state18ScopedDefinitionIdj2_EEB2v_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1724, !noalias !1727, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 2
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1724, !noalias !1727, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1724, !noalias !1727 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  %i.n = icmp ult i64 %i.c, 3                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1729
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 3 uses
  %i.q = icmp ult i64 %.sroa.02.0, 288230376151711743
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit.i, label %bb.p, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit.i
  %i.r = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.r, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit45.i, label %bb.p, !prof !1564

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1729
  %i.s = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #38, !noalias !1729 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit45.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 5
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 8, i64 noundef %i.p) #38, !noalias !1729 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1729
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1729
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1729
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 dereferenceable(72) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1729
  %i.y = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.y, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBG_7use_def11place_state18ScopedDefinitionIdj2_EEEBG_.exit.i, label %bb.n, !prof !1564

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1732
  store i64 0, ptr %i.a, align 8, !noalias !1732
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1732
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBG_7use_def11place_state18ScopedDefinitionIdj2_EEEBG_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8) #38, !noalias !1729
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBI_7use_def11place_state18ScopedDefinitionIdj2_EEEBI_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtB2_8SmallVecANtNtNtBG_7use_def11place_state18ScopedDefinitionIdj2_EEEBG_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBN_7ast_ids11ScopedUseIdEEj2_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !1735, !noalias !1738, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1735, !noalias !1738
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBN_7ast_ids11ScopedUseIdEEj2_E8try_growBN_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBN_7ast_ids11ScopedUseIdEEj2_E8try_growBN_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4   ; 6 uses
  %i.c = icmp ult i64 %i.b, 3                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1740, !noalias !1743, !nonnull !4 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !4 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 3
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 12                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 768614336404564650
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit, !prof !1215

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit
  %i.j = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 768614336404564650
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit45, !prof !1215

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.k = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 4) #38 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 4, i64 noundef %i.i) #38 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 4 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 768614336404564650
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBG_7ast_ids11ScopedUseIdEEEBG_.exit, !prof !1215

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1745
  store i64 0, ptr %i.a, align 8, !noalias !1745
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !1745
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1745
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBG_7ast_ids11ScopedUseIdEEEBG_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 4) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBG_7ast_ids11ScopedUseIdEEEBG_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBG_7ast_ids11ScopedUseIdEEEBG_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBG_7ast_ids11ScopedUseIdEEEBG_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBI_7ast_ids11ScopedUseIdEEEBI_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBN_7ast_ids11ScopedUseIdNtNtB1E_8node_key17ExpressionNodeKeyEj2_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1748, !noalias !1751, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 2
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1748, !noalias !1751, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1748, !noalias !1751 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.n = icmp ult i64 %i.c, 3                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #35, !noalias !1753
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %i.q = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit.i, label %bb.p, !prof !1564

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit.i
  %i.r = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.r, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit45.i, label %bb.p, !prof !1564

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1753
  %i.s = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #38, !noalias !1753 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit45.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 4
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 4, i64 noundef %i.p) #38, !noalias !1753 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1753
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1753
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1753
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 8 dereferenceable(40) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(40) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1753
  %i.y = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.y, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBG_7ast_ids11ScopedUseIdNtNtB1x_8node_key17ExpressionNodeKeyEEBG_.exit.i, label %bb.n, !prof !1564

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1756
  store i64 0, ptr %i.a, align 8, !noalias !1756
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1756
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBG_7ast_ids11ScopedUseIdNtNtB1x_8node_key17ExpressionNodeKeyEEBG_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4) #38, !noalias !1753
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBI_7ast_ids11ScopedUseIdNtNtB1z_8node_key17ExpressionNodeKeyEEBI_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #35
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtBG_7ast_ids11ScopedUseIdNtNtB1x_8node_key17ExpressionNodeKeyEEBG_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsf_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_29PossiblyNarrowedPlacesBuilder10expression(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMsf_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_29PossiblyNarrowedPlacesBuilder15expression_node(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsf_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_29PossiblyNarrowedPlacesBuilder11simple_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr captures(address, read_provenance) %.16.val, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 11 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMNtCs2O29vuvTAEJ_14ty_python_core5placeNtB3_9PlaceExpr13try_from_exprRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB5_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.v, %bb.h ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.k, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %i.f = load i8, ptr %i.e, align 1, !range !1759, !noundef !4
  %.not = icmp eq i8 %i.f, -2
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.h = load i8, ptr %i.g, align 1, !range !14, !noundef !4
  %.not6.not = icmp eq i8 %i.h, -1
  br i1 %.not6.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.16.val, i64 64
  %i.j = invoke noundef i32 @_RINvMsh_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_18MemberTableBuilder9member_idRNtB6_10MemberExprEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.l = load i8, ptr %i.k, align 1, !range !9, !alias.scope !1760, !noalias !1763, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1760, !noalias !1763, !noundef !4
  %i.o = and i64 %i.n, 72057594037927935
  %i.p = icmp ult i8 %i.l, -48
  %i.q = zext i8 %i.l to i64
  %i.r = add nsw i64 %i.q, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 16)
  %.sroa.0.0.i.i = select i1 %i.p, i64 %spec.store.select.i.i, i64 %i.o
  %i.s = icmp ugt i8 %i.l, -49
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !1760, !noalias !1763
  %.sroa.01.0.i.i = select i1 %i.s, ptr %i.t, ptr %i.a
  %i.u = invoke noundef i32 @_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core6symbolNtB5_18SymbolTableBuilder9symbol_id(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.16.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i, i64 noundef %.sroa.0.0.i.i)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEBF_(ptr noalias noundef align 8 dereferenceable(40) %i.a) #36
          to label %bb.b unwind label %bb.n

bb.i:                                             ; preds = %bb.f, %bb.g
  %.sink10.i = phi i32 [ %i.j, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %.sink.i = phi i32 [ 1, %bb.f ], [ 0, %bb.g ]
  %.not8.i = icmp eq i32 %.sink10.i, 0
  br i1 %.not8.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIduNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef %.sink.i, i32 noundef %.sink10.i)
          to label %bb.k unwind label %bb.h       ; 0 uses

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEBF_(ptr noalias noundef align 8 dereferenceable(40) %i.a)
          to label %bb.l unwind label %bb.c

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.b, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsf_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_29PossiblyNarrowedPlacesBuilder15expression_node(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.bs, %bb.a
  %.tr41 = phi ptr [ %2, %bb.a ], [ %i.fr, %bb.bs ] ; 23 uses
  %i.u = load i32, ptr %.tr41, align 8, !range !5, !noundef !4
  switch i32 %i.u, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.h
    i32 3, label %bb.i
    i32 5, label %bb.j
    i32 15, label %bb.p
    i32 16, label %bb.ao
    i32 25, label %bb.bk
    i32 26, label %bb.bl
    i32 28, label %bb.bm
  ]

bb.b:                                             ; preds = %bb.i, %tailrecurse
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false)
  br label %bb.bn

bb.c:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false), !noalias !1766
  %i.v = getelementptr inbounds nuw i8, ptr %.tr41, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1766, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.tr41, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noalias !1766, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.y, 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_RNvMsf_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_29PossiblyNarrowedPlacesBuilder12expr_bool_op.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.sroa.0.0.i56 = phi ptr [ %i.ab, %bb.f ], [ %i.w, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i56, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1766
  invoke fastcc void @_RNvMsf_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_29PossiblyNarrowedPlacesBuilder15expression_node(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %.sroa.0.0.i56)
          to label %bb.e unwind label %bb.d, !noalias !1770, !inline_history !1771

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %common.resume unwind label %bb.g

bb.e:                                             ; preds = %.lr.ph
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBO_B1H_EEBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.f unwind label %bb.d, !noalias !1770, !inline_history !1771

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1766
  %i.ad = icmp eq ptr %i.ab, %i.z
end_hunk_0
