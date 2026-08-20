inline.NumInlined: 10313
inline.NumDeleted: 5345
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1J_EE7consumeCskY9G75ZWc4U_11polars_expr:bb.a
  store ptr %i.h, ptr %i.p, align 8, !dbg !160205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !dbg !160205
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false), !dbg !160205
  ret void, !dbg !160207
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1J_EE8completeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !158272 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !160208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160208
  invoke void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFoldermEINtNtB7_8plumbing6FoldermE8completeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.g, !dbg !160209

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160211
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !160211
  invoke void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFolderINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB7_8plumbing6FolderB10_E8completeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !160212

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.f unwind label %bb.e, !dbg !160213

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !160216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !160217
  ret void, !dbg !160218

bb.e:                                             ; preds = %bb.c, %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160219
  unreachable, !dbg !160219

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn5, !dbg !160219

bb.g:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160220
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse67t6KqNqGQ_5rayon4iter6extend13ListVecFolderINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #34
          to label %bb.f unwind label %bb.e, !dbg !160220
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEINtNtNtB7_7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB2k_EE7consumeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !160221 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160223
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160224
  %.sroa.02.0.copyload = load ptr, ptr %i.e, align 8, !dbg !160224 ; 3 uses
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !dbg !160222
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !160224
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160224 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !160224
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8, !dbg !160224 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160225), !dbg !160228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160229, !noalias !160232
  %i.g = load i32, ptr %2, align 8, !dbg !160236, !alias.scope !160225, !noalias !160237, !noundef !14
  invoke void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFoldermEINtNtB7_8plumbing6FoldermE7consumeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.g)
          to label %bb.b unwind label %bb.h, !dbg !160238, !noalias !160239

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160240, !noalias !160232
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !dbg !160240, !noalias !160237
  %i.i = icmp ult i64 %.sroa.63.0.copyload, %.sroa.5.0.copyload, !dbg !160241
  br i1 %i.i, label %_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !160241, !prof !45

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #36
          to label %bb.e unwind label %bb.d, !dbg !160244, !noalias !160245

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.f, !dbg !160250, !noalias !160252

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160253, !noalias !160252
  unreachable, !dbg !160253

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.d
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.sroa.02.0.copyload, i64 %.sroa.63.0.copyload) #34
          to label %.body.i unwind label %bb.f, !dbg !160254, !noalias !160252

.body.i:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse67t6KqNqGQ_5rayon4iter6extend13ListVecFoldermEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %.critedge.i unwind label %bb.g, !dbg !160255, !noalias !160232

bb.g:                                             ; preds = %bb.i, %bb.h, %.body.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160256, !noalias !160237
  unreachable, !dbg !160256

bb.h:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.sroa.02.0.copyload, i64 %.sroa.63.0.copyload) #34
          to label %bb.i unwind label %bb.g, !dbg !160257, !noalias !160232

.critedge.i:                                      ; preds = %bb.i, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %i.j, %.body.i ], [ %i.m, %bb.i ]
  resume { ptr, i32 } %.pn9.i, !dbg !160256

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160257
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.critedge.i unwind label %bb.g, !dbg !160258, !noalias !160237

_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.0.copyload, i64 %.sroa.63.0.copyload, !dbg !160260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !dbg !160263, !noalias !160237
  %i.p = add nuw i64 %.sroa.63.0.copyload, 1, !dbg !160268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160269, !noalias !160232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160255, !noalias !160232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160271
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160272
  store <2 x ptr> %i.f, ptr %i.q, align 8, !dbg !160272
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !160272
  store i64 %.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !160272
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !160272
  store i64 %i.p, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !160272
  ret void, !dbg !160274
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEINtNtNtB7_7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB2k_EE8completeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !158302 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160275
  invoke void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFoldermEINtNtB7_8plumbing6FoldermE8completeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.e, !dbg !160276

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160278
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !160278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160280
  ret void, !dbg !160281

bb.c:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160282
  unreachable, !dbg !160282

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.f, !dbg !160282

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160283
  %.val = load ptr, ptr %i.g, align 8, !dbg !160283, !alias.scope !78405, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !160283
  %.val3 = load i64, ptr %i.h, align 8, !dbg !160283, !alias.scope !78405, !noundef !14
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.val, i64 %.val3) #34
          to label %bb.d unwind label %bb.c, !dbg !160283
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtNtB7_7collect8consumer13CollectResultmEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1V_EE7consumeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !160284 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !160285
  %.sroa.02.0.copyload = load ptr, ptr %i.b, align 8, !dbg !160285
  %3 = load <2 x ptr>, ptr %1, align 8, !dbg !160286
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !160285
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160285 ; 2 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160285
  %.sroa.65.0.copyload = load i64, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !160285 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160287
  %.sroa.09.0.copyload = load ptr, ptr %i.c, align 8, !dbg !160287 ; 4 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !160287
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !dbg !160287 ; 2 uses
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !160287
  %.sroa.611.0.copyload = load i64, ptr %.sroa.611.0..sroa_idx, align 8, !dbg !160287 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160288), !dbg !160291
  %i.d = icmp ult i64 %.sroa.65.0.copyload, %.sroa.5.0.copyload, !dbg !160292
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !160292, !prof !45

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #36
          to label %.noexc.i unwind label %bb.i, !dbg !160296, !noalias !160297

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 8, !dbg !160301, !alias.scope !160288, !noalias !160302, !noundef !14
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.sroa.02.0.copyload, i64 %.sroa.65.0.copyload, !dbg !160303
  store i32 %i.e, ptr %i.f, align 4, !dbg !160305, !noalias !160308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160312, !noalias !160297
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160312 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !dbg !160312, !noalias !160302
  %i.h = icmp ult i64 %.sroa.611.0.copyload, %.sroa.510.0.copyload, !dbg !160313
  br i1 %i.h, label %_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !160313, !prof !45

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #36
          to label %bb.f unwind label %bb.e, !dbg !160315, !noalias !160316

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.g, !dbg !160321, !noalias !160323

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160324, !noalias !160323
  unreachable, !dbg !160324

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.e
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.sroa.09.0.copyload, i64 %.sroa.611.0.copyload) #34
          to label %.critedge.i unwind label %bb.g, !dbg !160325, !noalias !160323

bb.h:                                             ; preds = %bb.j, %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160326, !noalias !160302
  unreachable, !dbg !160326

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.sroa.09.0.copyload, i64 %.sroa.611.0.copyload) #34
          to label %bb.j unwind label %bb.h, !dbg !160327, !noalias !160297

.critedge.i:                                      ; preds = %bb.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %.pn9.i = phi { ptr, i32 } [ %i.l, %bb.j ], [ %i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i ]
  resume { ptr, i32 } %.pn9.i, !dbg !160326

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160327
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.critedge.i unwind label %bb.h, !dbg !160328, !noalias !160302

_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c
  %i.n = add nuw i64 %.sroa.65.0.copyload, 1, !dbg !160330
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload, i64 %.sroa.611.0.copyload, !dbg !160331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !dbg !160333, !noalias !160302
  %i.p = add nuw i64 %.sroa.611.0.copyload, 1, !dbg !160336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160337, !noalias !160297
  store <2 x ptr> %3, ptr %0, align 8, !dbg !160338
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160338
  store i64 %.sroa.5.0.copyload, ptr %.sroa.27.0..sroa_idx, align 8, !dbg !160338
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160338
  store i64 %i.n, ptr %.sroa.38.0..sroa_idx, align 8, !dbg !160338
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !160338
  store ptr %.sroa.09.0.copyload, ptr %i.q, align 8, !dbg !160338
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !160338
  store i64 %.sroa.510.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !160338
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !160338
  store i64 %i.p, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !160338
  ret void, !dbg !160340
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtNtB7_7collect8consumer13CollectResultmEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1V_EE8completeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !158315 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !160341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !160341
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160342
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160343
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160342
  ret void, !dbg !160344
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtNtB7_7collect8consumer13CollectResultmEINtNtB7_6extend13ListVecFolderINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB2k_EE8completeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !158332 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160345
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160346
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160347
  call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFolderINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB7_8plumbing6FolderB10_E8completeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !160348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160349
  ret void, !dbg !160350
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtB7_6extend11ListReducerBY_EINtNtB7_8plumbing7ReducerTINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB20_3vec3VecmEEIB1U_IB2X_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !160351 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !160353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !160354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !160355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !160355
  invoke void @_RNvXsg_NtNtCse67t6KqNqGQ_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecmEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.b unwind label %bb.f, !dbg !160356

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !160357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !160357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160359
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !160359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160360
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !160360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !160360
  invoke void @_RNvXsg_NtNtCse67t6KqNqGQ_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !160361

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.critedge unwind label %bb.e, !dbg !160362

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !160365
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !160365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !160366
  ret void, !dbg !160367

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160368
  unreachable, !dbg !160368

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !160369
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.e, !dbg !160370

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160369
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.critedge unwind label %bb.e, !dbg !160372

.critedge:                                        ; preds = %bb.g, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.l, %bb.g ]
  resume { ptr, i32 } %.pn8, !dbg !160368
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtB7_6extend11ListReducerNtNtNtB7_7collect8consumer14CollectReducerEINtNtB7_8plumbing7ReducerTINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB2D_3vec3VecmEEINtB1r_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !160374 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !160377
  invoke void @_RNvXsg_NtNtCse67t6KqNqGQ_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecmEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.f, !dbg !160378

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160379
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160380
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !dbg !160380 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160380
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !160380 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !160380
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !160380 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !160381
  %.sroa.019.0.copyload = load ptr, ptr %i.e, align 8, !dbg !160381 ; 3 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !160381
  %.sroa.520.0.copyload = load i64, ptr %.sroa.520.0..sroa_idx, align 8, !dbg !160381 ; 5 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.8.0.copyload, !dbg !160382
  %i.g = icmp eq ptr %i.f, %.sroa.019.0.copyload, !dbg !160388
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader, !dbg !160388

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader: ; preds = %bb.b
  %i.h = icmp eq i64 %.sroa.520.0.copyload, 0, !dbg !160390
  br i1 %i.h, label %_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph, !dbg !160390

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.sroa.520.0.copyload, !dbg !160390
  br i1 %i.i, label %_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph, !dbg !160390

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i27 = phi i64 [ %i.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.019.0.copyload, i64 %.sroa.0.0.i.i.i.i27, !dbg !160390
  %i.k = add i64 %.sroa.0.0.i.i.i.i27, 1, !dbg !160390 ; 4 uses
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i unwind label %bb.c, !dbg !160394, !noalias !160396

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i: ; preds = %.lr.ph29
  %i.l = add i64 %.sroa.0.1.i.i.i.i28, 1, !dbg !160390 ; 2 uses
  %i.m = icmp eq i64 %i.l, %.sroa.520.0.copyload, !dbg !160390
  br i1 %i.m, label %.body, label %.lr.ph29, !dbg !160390

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.sroa.520.0.copyload, !dbg !160390
  br i1 %i.o, label %.body, label %.lr.ph29, !dbg !160390

.lr.ph29:                                         ; preds = %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i28 = phi i64 [ %i.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.019.0.copyload, i64 %.sroa.0.1.i.i.i.i28, !dbg !160390
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i unwind label %bb.d, !dbg !160403, !noalias !160396

bb.d:                                             ; preds = %.lr.ph29
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160390, !noalias !160396
  unreachable, !dbg !160390

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i: ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160381
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !160381
  %i.r = add i64 %.sroa.4.0.copyload, %.sroa.6.0.copyload, !dbg !160405
  %i.s = add i64 %.sroa.520.0.copyload, %.sroa.8.0.copyload, !dbg !160406
  br label %_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr.exit, !dbg !160407

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i, %bb.c
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.critedge unwind label %bb.e, !dbg !160408

_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i
  %.sroa.7.0 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i ], [ %.sroa.8.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader ], [ %.sroa.8.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], !dbg !160410
  %.sroa.5.0 = phi i64 [ %i.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i ], [ %.sroa.6.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader ], [ %.sroa.6.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], !dbg !160410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !160411
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160411
  store ptr %.sroa.0.0.copyload, ptr %i.t, align 8, !dbg !160411
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !160411
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160411
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !160411
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !160411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160412
  ret void, !dbg !160413

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!160085 = distinct !DILexicalBlock(scope: !160083, file: !52956, line: 91, column: 9)
!160086 = !DILocation(line: 96, column: 13, scope: !160085)
!160087 = !DILocation(line: 961, column: 18, scope: !160088, inlinedAt: !160089)
!160088 = distinct !DISubprogram(name: "add<hashbrown::map::HashMap<u64, polars_utils::idx_vec::UnitVec<u32>, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapyINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160089 = !DILocation(line: 99, column: 46, scope: !160085)
!160090 = !DILocation(line: 99, column: 58, scope: !160085)
!160091 = !DILocation(line: 97, column: 13, scope: !160085)
!160092 = !DILocation(line: 103, column: 6, scope: !160083)
!160093 = distinct !DISubprogram(name: "split_at<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>>", linkageName: "_RNvXs3_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumerINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCskY9G75ZWc4U_11polars_expr", scope: !157591, file: !52956, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160094 = !DILocation(line: 96, column: 21, scope: !160095)
!160095 = distinct !DILexicalBlock(scope: !160093, file: !52956, line: 91, column: 9)
!160096 = !DILocation(line: 96, column: 13, scope: !160095)
!160097 = !DILocation(line: 961, column: 18, scope: !160098, inlinedAt: !160099)
!160098 = distinct !DISubprogram(name: "add<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160099 = !DILocation(line: 99, column: 46, scope: !160095)
!160100 = !DILocation(line: 99, column: 58, scope: !160095)
!160101 = !DILocation(line: 97, column: 13, scope: !160095)
!160102 = !DILocation(line: 103, column: 6, scope: !160093)
!160103 = distinct !DISubprogram(name: "split_at<alloc::vec::Vec<usize, alloc::alloc::Global>>", linkageName: "_RNvXs3_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumerINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCskY9G75ZWc4U_11polars_expr", scope: !157591, file: !52956, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160104 = !DILocation(line: 96, column: 21, scope: !160105)
!160105 = distinct !DILexicalBlock(scope: !160103, file: !52956, line: 91, column: 9)
!160106 = !DILocation(line: 96, column: 13, scope: !160105)
!160107 = !DILocation(line: 961, column: 18, scope: !160108, inlinedAt: !160109)
!160108 = distinct !DISubprogram(name: "add<alloc::vec::Vec<usize, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCsgZ49sUHp3tW_5alloc3vec3VecjE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160109 = !DILocation(line: 99, column: 46, scope: !160105)
!160110 = !DILocation(line: 99, column: 58, scope: !160105)
!160111 = !DILocation(line: 97, column: 13, scope: !160105)
!160112 = !DILocation(line: 103, column: 6, scope: !160103)
!160113 = distinct !DISubprogram(name: "split_at<(either::Either<alloc::vec::Vec<u32, alloc::alloc::Global>, alloc::vec::Vec<polars_utils::index::ChunkId<24>, alloc::alloc::Global>>, either::Either<alloc::vec::Vec<polars_utils::index::NullableIdxSize, alloc::alloc::Global>, alloc::vec::Vec<polars_utils::index::ChunkId<24>, alloc::alloc::Global>>)>", linkageName: "_RNvXs3_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumerTINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEIB1L_INtNtCs2mZqlW55729_12polars_utils5index7ChunkIdKy18_EEEIB1g_IB1L_NtB2r_15NullableIdxSizeEB2j_EEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCskY9G75ZWc4U_11polars_expr", scope: !157591, file: !52956, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160114 = !DILocation(line: 96, column: 21, scope: !160115)
!160115 = distinct !DILexicalBlock(scope: !160113, file: !52956, line: 91, column: 9)
!160116 = !DILocation(line: 96, column: 13, scope: !160115)
!160117 = !DILocation(line: 961, column: 18, scope: !160118, inlinedAt: !160119)
!160118 = distinct !DISubprogram(name: "add<(either::Either<alloc::vec::Vec<u32, alloc::alloc::Global>, alloc::vec::Vec<polars_utils::index::ChunkId<24>, alloc::alloc::Global>>, either::Either<alloc::vec::Vec<polars_utils::index::NullableIdxSize, alloc::alloc::Global>, alloc::vec::Vec<polars_utils::index::ChunkId<24>, alloc::alloc::Global>>)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEIB19_INtNtCs2mZqlW55729_12polars_utils5index7ChunkIdKy18_EEEIBE_IB19_NtB1P_15NullableIdxSizeEB1H_EE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160119 = !DILocation(line: 99, column: 46, scope: !160115)
!160120 = !DILocation(line: 99, column: 58, scope: !160115)
!160121 = !DILocation(line: 97, column: 13, scope: !160115)
!160122 = !DILocation(line: 103, column: 6, scope: !160113)
!160123 = distinct !DISubprogram(name: "split_at<(usize, usize, rayon::slice::sort::MergeSortResult)>", linkageName: "_RNvXs3_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumerTjjNtNtNtBb_5slice4sort15MergeSortResultEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCskY9G75ZWc4U_11polars_expr", scope: !157591, file: !52956, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160124 = !DILocation(line: 96, column: 21, scope: !160125)
!160125 = distinct !DILexicalBlock(scope: !160123, file: !52956, line: 91, column: 9)
!160126 = !DILocation(line: 96, column: 13, scope: !160125)
!160127 = !DILocation(line: 961, column: 18, scope: !160128, inlinedAt: !160129)
!160128 = distinct !DISubprogram(name: "add<(usize, usize, rayon::slice::sort::MergeSortResult)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160129 = !DILocation(line: 99, column: 46, scope: !160125)
!160130 = !DILocation(line: 99, column: 58, scope: !160125)
!160131 = !DILocation(line: 97, column: 13, scope: !160125)
!160132 = !DILocation(line: 103, column: 6, scope: !160123)
!160133 = !DILocation(line: 96, column: 21, scope: !157589)
!160134 = !DILocation(line: 96, column: 13, scope: !157589)
!160135 = !DILocation(line: 961, column: 18, scope: !157614, inlinedAt: !160136)
!160136 = !DILocation(line: 99, column: 46, scope: !157589)
!160137 = !DILocation(line: 99, column: 58, scope: !157589)
!160138 = !DILocation(line: 97, column: 13, scope: !157589)
!160139 = !DILocation(line: 103, column: 6, scope: !157590)
!160140 = distinct !DISubprogram(name: "with_capacity<&polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtB7_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCskY9G75ZWc4U_11polars_expr", scope: !160141, file: !158922, line: 97, type: !13, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160141 = !DINamespace(name: "{impl#6}", scope: !158924)
!160142 = !DILocation(line: 136, column: 30, scope: !160143, inlinedAt: !160144)
!160143 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs0_NtCsk79RHlfmHDk_8foldhash4fastNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !158928, file: !158927, line: 134, type: !13, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160144 = !DILocation(line: 79, column: 17, scope: !160145, inlinedAt: !160146)
!160145 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !158934, file: !158933, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160146 = !DILocation(line: 98, column: 50, scope: !160140)
!160147 = !DILocation(line: 3905, column: 24, scope: !85884, inlinedAt: !160148)
!160148 = distinct !DILocation(line: 2870, column: 26, scope: !160149, inlinedAt: !160150)
!160149 = distinct !DISubprogram(name: "load", linkageName: "_RNvMsO_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomichE4load", scope: !26, file: !20, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160150 = !DILocation(line: 213, column: 42, scope: !160151, inlinedAt: !160152)
!160151 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed3new", scope: !158943, file: !158942, line: 212, type: !13, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160152 = !DILocation(line: 137, column: 26, scope: !160143, inlinedAt: !160144)
!160153 = !DILocation(line: 213, column: 16, scope: !160151, inlinedAt: !160152)
!160154 = !DILocation(line: 214, column: 17, scope: !160151, inlinedAt: !160152)
!160155 = !DILocation(line: 504, column: 18, scope: !160156, inlinedAt: !160160)
!160156 = distinct !DISubprogram(name: "with_capacity_and_hasher<&polars_utils::pl_str::PlSmallStr, foldhash::quality::RandomState>", linkageName: "_RNvMs2_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherCskY9G75ZWc4U_11polars_expr", scope: !160158, file: !160157, line: 502, type: !13, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160157 = !DIFile(filename: "src/set.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "87a602d90a47f26da501afa285c42516")
!160158 = !DINamespace(name: "HashSet", scope: !160159)
!160159 = !DINamespace(name: "set", scope: !58745)
!160160 = !DILocation(line: 98, column: 9, scope: !160140)
!160161 = !DILocation(line: 601, column: 9, scope: !160162, inlinedAt: !160163)
!160162 = distinct !DISubprogram(name: "with_capacity<(&polars_utils::pl_str::PlSmallStr, ())>", linkageName: "_RNvMs5_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE13with_capacityCskY9G75ZWc4U_11polars_expr", scope: !158951, file: !58742, line: 600, type: !13, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160163 = distinct !DILocation(line: 483, column: 20, scope: !160164, inlinedAt: !160165)
!160164 = distinct !DISubprogram(name: "with_capacity_and_hasher<&polars_utils::pl_str::PlSmallStr, (), foldhash::quality::RandomState>", linkageName: "_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherCskY9G75ZWc4U_11polars_expr", scope: !158955, file: !158954, line: 480, type: !13, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160165 = distinct !DILocation(line: 504, column: 18, scope: !160156, inlinedAt: !160160)
!160166 = !DILocation(line: 481, column: 9, scope: !160164, inlinedAt: !160165)
!160167 = !{!160168}
!160168 = distinct !{!160168, !160169, !"_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherCskY9G75ZWc4U_11polars_expr: argument 0"}
!160169 = distinct !{!160169, !"_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherCskY9G75ZWc4U_11polars_expr"}
!160170 = !DILocation(line: 503, column: 9, scope: !160156, inlinedAt: !160160)
!160171 = !DILocation(line: 505, column: 9, scope: !160156, inlinedAt: !160160)
!160172 = !DILocation(line: 99, column: 6, scope: !160140)
!160173 = distinct !DISubprogram(name: "consume<(u32, polars_utils::idx_vec::UnitVec<u32>), rayon::iter::unzip::Unzip, rayon::iter::extend::ListVecFolder<u32>, rayon::iter::extend::ListVecFolder<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1J_EE7consumeCskY9G75ZWc4U_11polars_expr", scope: !86974, file: !84366, line: 374, type: !13, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160174 = !DILocation(line: 375, column: 29, scope: !160173)
!160175 = !DILocation(line: 375, column: 51, scope: !160173)
!160176 = !DILocation(line: 375, column: 62, scope: !160173)
!160177 = !{!160178}
!160178 = distinct !{!160178, !160179, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 1"}
!160179 = distinct !{!160179, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr"}
!160180 = !DILocation(line: 375, column: 37, scope: !160173)
!160181 = !DILocation(line: 103, column: 10, scope: !160182, inlinedAt: !160183)
!160182 = distinct !DISubprogram(name: "consume<u32, polars_utils::idx_vec::UnitVec<u32>, rayon::iter::extend::ListVecFolder<u32>, rayon::iter::extend::ListVecFolder<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr", scope: !86989, file: !84366, line: 98, type: !15001, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160183 = distinct !DILocation(line: 375, column: 37, scope: !160173)
!160184 = !{!160185, !160178, !160186, !160187}
!160185 = distinct !{!160185, !160179, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!160186 = distinct !{!160186, !160179, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 2"}
!160187 = distinct !{!160187, !160179, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 3"}
!160188 = !DILocation(line: 103, column: 23, scope: !160182, inlinedAt: !160183)
!160189 = !{!160185, !160186, !160187}
!160190 = !DILocation(line: 103, column: 15, scope: !160182, inlinedAt: !160183)
!160191 = !{!160185, !160178, !160187}
!160192 = !DILocation(line: 103, column: 32, scope: !160182, inlinedAt: !160183)
!160193 = !DILocation(line: 103, column: 46, scope: !160182, inlinedAt: !160183)
!160194 = !DILocation(line: 103, column: 38, scope: !160182, inlinedAt: !160183)
!160195 = !DILocation(line: 103, column: 53, scope: !160182, inlinedAt: !160183)
!160196 = !DILocation(line: 98, column: 5, scope: !160182, inlinedAt: !160183)
!160197 = !{!160185, !160186}
!160198 = !DILocation(line: 104, column: 5, scope: !160182, inlinedAt: !160183)
!160199 = !{!160185, !160178, !160186}
!160200 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160201)
!160201 = distinct !DILocation(line: 104, column: 5, scope: !160182, inlinedAt: !160183)
!160202 = !DILocation(line: 103, column: 52, scope: !160182, inlinedAt: !160183)
!160203 = !DILocation(line: 103, column: 9, scope: !160182, inlinedAt: !160183)
!160204 = !DILocation(line: 375, column: 72, scope: !160173)
!160205 = !DILocation(line: 376, column: 9, scope: !160206)
!160206 = distinct !DILexicalBlock(scope: !160173, file: !84366, line: 375, column: 9)
!160207 = !DILocation(line: 381, column: 6, scope: !160173)
!160208 = !DILocation(line: 384, column: 10, scope: !158272)
!160209 = !DILocation(line: 384, column: 20, scope: !158272)
!160210 = !DILocation(line: 384, column: 29, scope: !158272)
!160211 = !DILocation(line: 384, column: 32, scope: !158272)
!160212 = !DILocation(line: 384, column: 43, scope: !158272)
!160213 = !DILocation(line: 810, column: 1, scope: !54140, inlinedAt: !160214)
!160214 = distinct !DILocation(line: 384, column: 53, scope: !158272)
!160215 = !DILocation(line: 384, column: 52, scope: !158272)
!160216 = !DILocation(line: 384, column: 9, scope: !158272)
!160217 = !DILocation(line: 384, column: 53, scope: !158272)
!160218 = !DILocation(line: 385, column: 6, scope: !158272)
!160219 = !DILocation(line: 383, column: 5, scope: !158272)
!160220 = !DILocation(line: 385, column: 5, scope: !158272)
!160221 = distinct !DISubprogram(name: "consume<(u32, polars_utils::idx_vec::UnitVec<u32>), rayon::iter::unzip::Unzip, rayon::iter::extend::ListVecFolder<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEINtNtNtB7_7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB2k_EE7consumeCskY9G75ZWc4U_11polars_expr", scope: !86974, file: !84366, line: 374, type: !13, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160222 = !DILocation(line: 375, column: 29, scope: !160221)
!160223 = !DILocation(line: 375, column: 51, scope: !160221)
!160224 = !DILocation(line: 375, column: 62, scope: !160221)
!160225 = !{!160226}
!160226 = distinct !{!160226, !160227, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr: argument 1"}
!160227 = distinct !{!160227, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr"}
!160228 = !DILocation(line: 375, column: 37, scope: !160221)
!160229 = !DILocation(line: 103, column: 10, scope: !160230, inlinedAt: !160231)
!160230 = distinct !DISubprogram(name: "consume<u32, polars_utils::idx_vec::UnitVec<u32>, rayon::iter::extend::ListVecFolder<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr", scope: !86989, file: !84366, line: 98, type: !15001, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160231 = distinct !DILocation(line: 375, column: 37, scope: !160221)
!160232 = !{!160233, !160226, !160234, !160235}
!160233 = distinct !{!160233, !160227, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!160234 = distinct !{!160234, !160227, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr: argument 2"}
!160235 = distinct !{!160235, !160227, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr: argument 3"}
!160236 = !DILocation(line: 103, column: 23, scope: !160230, inlinedAt: !160231)
!160237 = !{!160233, !160234, !160235}
!160238 = !DILocation(line: 103, column: 15, scope: !160230, inlinedAt: !160231)
!160239 = !{!160233, !160226, !160235}
!160240 = !DILocation(line: 103, column: 46, scope: !160230, inlinedAt: !160231)
!160241 = !DILocation(line: 126, column: 13, scope: !160242, inlinedAt: !160243)
!160242 = distinct !DISubprogram(name: "consume<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr", scope: !86986, file: !52956, line: 124, type: !13, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160243 = distinct !DILocation(line: 103, column: 38, scope: !160230, inlinedAt: !160231)
!160244 = !DILocation(line: 125, column: 9, scope: !160242, inlinedAt: !160243)
!160245 = !{!160246, !160248, !160249, !160233, !160226, !160234, !160235}
!160246 = distinct !{!160246, !160247, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 0"}
!160247 = distinct !{!160247, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr"}
!160248 = distinct !{!160248, !160247, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 1"}
!160249 = distinct !{!160249, !160247, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 2"}
!160250 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160251)
!160251 = distinct !DILocation(line: 139, column: 5, scope: !160242, inlinedAt: !160243)
!160252 = !{!160246, !160248, !160233, !160226, !160234, !160235}
!160253 = !DILocation(line: 124, column: 5, scope: !160242, inlinedAt: !160243)
!160254 = !DILocation(line: 139, column: 5, scope: !160242, inlinedAt: !160243)
!160255 = !DILocation(line: 103, column: 53, scope: !160230, inlinedAt: !160231)
!160256 = !DILocation(line: 98, column: 5, scope: !160230, inlinedAt: !160231)
!160257 = !DILocation(line: 104, column: 5, scope: !160230, inlinedAt: !160231)
!160258 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160259)
!160259 = distinct !DILocation(line: 104, column: 5, scope: !160230, inlinedAt: !160231)
!160260 = !DILocation(line: 961, column: 18, scope: !160261, inlinedAt: !160262)
!160261 = distinct !DISubprogram(name: "add<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160262 = distinct !DILocation(line: 134, column: 26, scope: !160242, inlinedAt: !160243)
!160263 = !DILocation(line: 1921, column: 41, scope: !160264, inlinedAt: !160265)
!160264 = distinct !DISubprogram(name: "write<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr", scope: !153, file: !152, line: 1898, type: !13, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160265 = distinct !DILocation(line: 1418, column: 18, scope: !160266, inlinedAt: !160267)
!160266 = distinct !DISubprogram(name: "write<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmE5writeCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 1413, type: !13, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160267 = distinct !DILocation(line: 134, column: 52, scope: !160242, inlinedAt: !160243)
!160268 = !DILocation(line: 135, column: 13, scope: !160242, inlinedAt: !160243)
!160269 = !DILocation(line: 103, column: 52, scope: !160230, inlinedAt: !160231)
!160270 = !DILocation(line: 103, column: 9, scope: !160230, inlinedAt: !160231)
!160271 = !DILocation(line: 375, column: 72, scope: !160221)
!160272 = !DILocation(line: 376, column: 9, scope: !160273)
!160273 = distinct !DILexicalBlock(scope: !160221, file: !84366, line: 375, column: 9)
!160274 = !DILocation(line: 381, column: 6, scope: !160221)
!160275 = !DILocation(line: 384, column: 10, scope: !158302)
!160276 = !DILocation(line: 384, column: 20, scope: !158302)
!160277 = !DILocation(line: 384, column: 29, scope: !158302)
!160278 = !DILocation(line: 384, column: 32, scope: !158302)
!160279 = !DILocation(line: 384, column: 9, scope: !158302)
!160280 = !DILocation(line: 384, column: 53, scope: !158302)
!160281 = !DILocation(line: 385, column: 6, scope: !158302)
!160282 = !DILocation(line: 383, column: 5, scope: !158302)
!160283 = !DILocation(line: 385, column: 5, scope: !158302)
!160284 = distinct !DISubprogram(name: "consume<(u32, polars_utils::idx_vec::UnitVec<u32>), rayon::iter::unzip::Unzip, rayon::iter::collect::consumer::CollectResult<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtNtB7_7collect8consumer13CollectResultmEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1V_EE7consumeCskY9G75ZWc4U_11polars_expr", scope: !86974, file: !84366, line: 374, type: !13, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160285 = !DILocation(line: 375, column: 51, scope: !160284)
!160286 = !DILocation(line: 375, column: 29, scope: !160284)
!160287 = !DILocation(line: 375, column: 62, scope: !160284)
!160288 = !{!160289}
!160289 = distinct !{!160289, !160290, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 1"}
!160290 = distinct !{!160290, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr"}
!160291 = !DILocation(line: 375, column: 37, scope: !160284)
!160292 = !DILocation(line: 126, column: 13, scope: !86985, inlinedAt: !160293)
!160293 = distinct !DILocation(line: 103, column: 15, scope: !160294, inlinedAt: !160295)
!160294 = distinct !DISubprogram(name: "consume<u32, polars_utils::idx_vec::UnitVec<u32>, rayon::iter::collect::consumer::CollectResult<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr", scope: !86989, file: !84366, line: 98, type: !15001, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160295 = distinct !DILocation(line: 375, column: 37, scope: !160284)
!160296 = !DILocation(line: 125, column: 9, scope: !86985, inlinedAt: !160293)
!160297 = !{!160298, !160289, !160299, !160300}
!160298 = distinct !{!160298, !160290, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!160299 = distinct !{!160299, !160290, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 2"}
!160300 = distinct !{!160300, !160290, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 3"}
!160301 = !DILocation(line: 103, column: 23, scope: !160294, inlinedAt: !160295)
!160302 = !{!160298, !160299, !160300}
!160303 = !DILocation(line: 961, column: 18, scope: !87006, inlinedAt: !160304)
!160304 = distinct !DILocation(line: 134, column: 26, scope: !86985, inlinedAt: !160293)
!160305 = !DILocation(line: 1921, column: 41, scope: !87009, inlinedAt: !160306)
!160306 = distinct !DILocation(line: 1418, column: 18, scope: !87011, inlinedAt: !160307)
!160307 = distinct !DILocation(line: 134, column: 52, scope: !86985, inlinedAt: !160293)
!160308 = !{!160309, !160311, !160298, !160289, !160299, !160300}
!160309 = distinct !{!160309, !160310, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultmEINtNtB9_8plumbing6FoldermE7consumeCskY9G75ZWc4U_11polars_expr: argument 0"}
!160310 = distinct !{!160310, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultmEINtNtB9_8plumbing6FoldermE7consumeCskY9G75ZWc4U_11polars_expr"}
!160311 = distinct !{!160311, !160310, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultmEINtNtB9_8plumbing6FoldermE7consumeCskY9G75ZWc4U_11polars_expr: argument 1"}
!160312 = !DILocation(line: 103, column: 46, scope: !160294, inlinedAt: !160295)
!160313 = !DILocation(line: 126, column: 13, scope: !160242, inlinedAt: !160314)
!160314 = distinct !DILocation(line: 103, column: 38, scope: !160294, inlinedAt: !160295)
!160315 = !DILocation(line: 125, column: 9, scope: !160242, inlinedAt: !160314)
!160316 = !{!160317, !160319, !160320, !160298, !160289, !160299, !160300}
!160317 = distinct !{!160317, !160318, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 0"}
!160318 = distinct !{!160318, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr"}
!160319 = distinct !{!160319, !160318, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 1"}
!160320 = distinct !{!160320, !160318, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 2"}
!160321 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160322)
!160322 = distinct !DILocation(line: 139, column: 5, scope: !160242, inlinedAt: !160314)
!160323 = !{!160317, !160319, !160298, !160289, !160299, !160300}
!160324 = !DILocation(line: 124, column: 5, scope: !160242, inlinedAt: !160314)
!160325 = !DILocation(line: 139, column: 5, scope: !160242, inlinedAt: !160314)
!160326 = !DILocation(line: 98, column: 5, scope: !160294, inlinedAt: !160295)
!160327 = !DILocation(line: 104, column: 5, scope: !160294, inlinedAt: !160295)
!160328 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160329)
!160329 = distinct !DILocation(line: 104, column: 5, scope: !160294, inlinedAt: !160295)
!160330 = !DILocation(line: 135, column: 13, scope: !86985, inlinedAt: !160293)
!160331 = !DILocation(line: 961, column: 18, scope: !160261, inlinedAt: !160332)
!160332 = distinct !DILocation(line: 134, column: 26, scope: !160242, inlinedAt: !160314)
!160333 = !DILocation(line: 1921, column: 41, scope: !160264, inlinedAt: !160334)
!160334 = distinct !DILocation(line: 1418, column: 18, scope: !160266, inlinedAt: !160335)
!160335 = distinct !DILocation(line: 134, column: 52, scope: !160242, inlinedAt: !160314)
!160336 = !DILocation(line: 135, column: 13, scope: !160242, inlinedAt: !160314)
!160337 = !DILocation(line: 103, column: 52, scope: !160294, inlinedAt: !160295)
!160338 = !DILocation(line: 376, column: 9, scope: !160339)
!160339 = distinct !DILexicalBlock(scope: !160284, file: !84366, line: 375, column: 9)
!160340 = !DILocation(line: 381, column: 6, scope: !160284)
!160341 = !DILocation(line: 384, column: 10, scope: !158315)
!160342 = !DILocation(line: 384, column: 32, scope: !158315)
!160343 = !DILocation(line: 384, column: 9, scope: !158315)
!160344 = !DILocation(line: 385, column: 6, scope: !158315)
!160345 = !DILocation(line: 384, column: 10, scope: !158332)
!160346 = !DILocation(line: 384, column: 32, scope: !158332)
!160347 = !DILocation(line: 384, column: 9, scope: !158332)
!160348 = !DILocation(line: 384, column: 43, scope: !158332)
!160349 = !DILocation(line: 384, column: 52, scope: !158332)
!160350 = !DILocation(line: 385, column: 6, scope: !158332)
!160351 = distinct !DISubprogram(name: "reduce<alloc::collections::linked_list::LinkedList<alloc::vec::Vec<u32, alloc::alloc::Global>, alloc::alloc::Global>, alloc::collections::linked_list::LinkedList<alloc::vec::Vec<polars_utils::idx_vec::UnitVec<u32>, alloc::alloc::Global>, alloc::alloc::Global>, rayon::iter::extend::ListReducer, rayon::iter::extend::ListReducer>", linkageName: "_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtB7_6extend11ListReducerBY_EINtNtB7_8plumbing7ReducerTINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB20_3vec3VecmEEIB1U_IB2X_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160352, file: !84366, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160352 = !DINamespace(name: "{impl#8}", scope: !84367)
!160353 = !DILocation(line: 406, column: 13, scope: !160351)
!160354 = !DILocation(line: 406, column: 30, scope: !160351)
!160355 = !DILocation(line: 406, column: 38, scope: !160351)
!160356 = !DILocation(line: 406, column: 23, scope: !160351)
!160357 = !DILocation(line: 406, column: 45, scope: !160351)
!160358 = !DILocation(line: 407, column: 13, scope: !160351)
!160359 = !DILocation(line: 407, column: 31, scope: !160351)
!160360 = !DILocation(line: 407, column: 39, scope: !160351)
!160361 = !DILocation(line: 407, column: 24, scope: !160351)
!160362 = !DILocation(line: 810, column: 1, scope: !54140, inlinedAt: !160363)
!160363 = distinct !DILocation(line: 408, column: 9, scope: !160351)
!160364 = !DILocation(line: 407, column: 46, scope: !160351)
!160365 = !DILocation(line: 405, column: 9, scope: !160351)
!160366 = !DILocation(line: 408, column: 9, scope: !160351)
!160367 = !DILocation(line: 409, column: 6, scope: !160351)
!160368 = !DILocation(line: 404, column: 5, scope: !160351)
!160369 = !DILocation(line: 409, column: 5, scope: !160351)
!160370 = !DILocation(line: 810, column: 1, scope: !54193, inlinedAt: !160371)
!160371 = distinct !DILocation(line: 409, column: 5, scope: !160351)
!160372 = !DILocation(line: 810, column: 1, scope: !54193, inlinedAt: !160373)
!160373 = distinct !DILocation(line: 409, column: 5, scope: !160351)
!160374 = distinct !DISubprogram(name: "reduce<alloc::collections::linked_list::LinkedList<alloc::vec::Vec<u32, alloc::alloc::Global>, alloc::alloc::Global>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>, rayon::iter::extend::ListReducer, rayon::iter::collect::consumer::CollectReducer>", linkageName: "_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtB7_6extend11ListReducerNtNtNtB7_7collect8consumer14CollectReducerEINtNtB7_8plumbing7ReducerTINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB2D_3vec3VecmEEINtB1r_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160352, file: !84366, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160375 = !DILocation(line: 406, column: 13, scope: !160374)
!160376 = !DILocation(line: 406, column: 30, scope: !160374)
!160377 = !DILocation(line: 406, column: 38, scope: !160374)
!160378 = !DILocation(line: 406, column: 23, scope: !160374)
!160379 = !DILocation(line: 406, column: 45, scope: !160374)
!160380 = !DILocation(line: 407, column: 31, scope: !160374)
!160381 = !DILocation(line: 407, column: 39, scope: !160374)
!160382 = !DILocation(line: 961, column: 18, scope: !160383, inlinedAt: !160384)
!160383 = distinct !DISubprogram(name: "add<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160384 = distinct !DILocation(line: 177, column: 41, scope: !160385, inlinedAt: !160387)
!160385 = distinct !DISubprogram(name: "reduce<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160386, file: !52956, line: 168, type: !13, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160386 = !DINamespace(name: "{impl#8}", scope: !52958)
!160387 = distinct !DILocation(line: 407, column: 24, scope: !160374)
!160388 = !DILocation(line: 178, column: 16, scope: !160389, inlinedAt: !160387)
!160389 = distinct !DILexicalBlock(scope: !160385, file: !52956, line: 177, column: 13)
!160390 = !DILocation(line: 810, column: 1, scope: !54941, inlinedAt: !160391)
!160391 = distinct !DILocation(line: 77, column: 13, scope: !54943, inlinedAt: !160392)
!160392 = distinct !DILocation(line: 810, column: 1, scope: !54945, inlinedAt: !160393)
!160393 = distinct !DILocation(line: 184, column: 5, scope: !160385, inlinedAt: !160387)
!160394 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160395)
!160395 = distinct !DILocation(line: 810, column: 1, scope: !54941, inlinedAt: !160391)
!160396 = !{!160397, !160399, !160401, !160402}
!160397 = distinct !{!160397, !160398, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!160398 = distinct !{!160398, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!160399 = distinct !{!160399, !160400, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 0"}
!160400 = distinct !{!160400, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr"}
!160401 = distinct !{!160401, !160400, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 1"}
!160402 = distinct !{!160402, !160400, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 2"}
!160403 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160404)
!160404 = distinct !DILocation(line: 810, column: 1, scope: !54941, inlinedAt: !160391)
!160405 = !DILocation(line: 179, column: 17, scope: !160389, inlinedAt: !160387)
!160406 = !DILocation(line: 180, column: 17, scope: !160389, inlinedAt: !160387)
!160407 = !DILocation(line: 184, column: 5, scope: !160385, inlinedAt: !160387)
!160408 = !DILocation(line: 810, column: 1, scope: !54140, inlinedAt: !160409)
!160409 = distinct !DILocation(line: 408, column: 9, scope: !160374)
!160410 = !DILocation(line: 182, column: 13, scope: !160389, inlinedAt: !160387)
!160411 = !DILocation(line: 405, column: 9, scope: !160374)
!160412 = !DILocation(line: 408, column: 9, scope: !160374)
!160413 = !DILocation(line: 409, column: 6, scope: !160374)
!160414 = !DILocation(line: 404, column: 5, scope: !160374)
!160415 = !DILocation(line: 409, column: 5, scope: !160374)
!160416 = distinct !DISubprogram(name: "reduce<rayon::iter::collect::consumer::CollectResult<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>, rayon::iter::collect::consumer::CollectReducer, rayon::iter::collect::consumer::CollectReducer>", linkageName: "_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtNtB7_7collect8consumer14CollectReducerBY_EINtNtB7_8plumbing7ReducerTINtB10_13CollectResultmEIB29_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160352, file: !84366, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160417 = !DILocation(line: 406, column: 30, scope: !160416)
!160418 = !DILocation(line: 406, column: 38, scope: !160416)
!160419 = !DILocation(line: 407, column: 31, scope: !160416)
!160420 = !DILocation(line: 407, column: 39, scope: !160416)
!160421 = !DILocation(line: 961, column: 18, scope: !160383, inlinedAt: !160422)
!160422 = distinct !DILocation(line: 177, column: 41, scope: !160385, inlinedAt: !160423)
!160423 = distinct !DILocation(line: 407, column: 24, scope: !160416)
!160424 = !DILocation(line: 178, column: 16, scope: !160389, inlinedAt: !160423)
!160425 = !DILocation(line: 810, column: 1, scope: !54941, inlinedAt: !160426)
!160426 = distinct !DILocation(line: 77, column: 13, scope: !54943, inlinedAt: !160427)
!160427 = distinct !DILocation(line: 810, column: 1, scope: !54945, inlinedAt: !160428)
!160428 = distinct !DILocation(line: 184, column: 5, scope: !160385, inlinedAt: !160423)
!160429 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160430)
!160430 = distinct !DILocation(line: 810, column: 1, scope: !54941, inlinedAt: !160426)
!160431 = !{!160432, !160434, !160436, !160437}
!160432 = distinct !{!160432, !160433, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!160433 = distinct !{!160433, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!160434 = distinct !{!160434, !160435, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 0"}
!160435 = distinct !{!160435, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr"}
!160436 = distinct !{!160436, !160435, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 1"}
!160437 = distinct !{!160437, !160435, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 2"}
!160438 = !DILocation(line: 810, column: 1, scope: !54950, inlinedAt: !160439)
!160439 = distinct !DILocation(line: 810, column: 1, scope: !54941, inlinedAt: !160426)
!160440 = !DILocation(line: 179, column: 17, scope: !160389, inlinedAt: !160423)
!160441 = !DILocation(line: 180, column: 17, scope: !160389, inlinedAt: !160423)
!160442 = !DILocation(line: 184, column: 5, scope: !160385, inlinedAt: !160423)
!160443 = !DILocation(line: 182, column: 13, scope: !160389, inlinedAt: !160423)
!160444 = !DILocation(line: 961, column: 18, scope: !160445, inlinedAt: !160446)
!160445 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160446 = distinct !DILocation(line: 177, column: 41, scope: !160447, inlinedAt: !160448)
!160447 = distinct !DISubprogram(name: "reduce<u32>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultmEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160386, file: !52956, line: 168, type: !13, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160448 = distinct !DILocation(line: 406, column: 23, scope: !160416)
!160449 = !DILocation(line: 178, column: 16, scope: !160450, inlinedAt: !160448)
!160450 = distinct !DILexicalBlock(scope: !160447, file: !52956, line: 177, column: 13)
!160451 = !DILocation(line: 405, column: 9, scope: !160416)
!160452 = !DILocation(line: 409, column: 6, scope: !160416)
!160453 = !DILocation(line: 404, column: 5, scope: !160416)
!160454 = distinct !DISubprogram(name: "reduce<rayon::iter::collect::consumer::CollectResult<u32>, alloc::collections::linked_list::LinkedList<alloc::vec::Vec<polars_utils::idx_vec::UnitVec<u32>, alloc::alloc::Global>, alloc::alloc::Global>, rayon::iter::collect::consumer::CollectReducer, rayon::iter::extend::ListReducer>", linkageName: "_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtNtB7_7collect8consumer14CollectReducerNtNtB7_6extend11ListReducerEINtNtB7_8plumbing7ReducerTINtB10_13CollectResultmEINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB31_3vec3VecINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160352, file: !84366, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160455 = !DILocation(line: 406, column: 30, scope: !160454)
!160456 = !DILocation(line: 406, column: 38, scope: !160454)
!160457 = !DILocation(line: 407, column: 31, scope: !160454)
!160458 = !DILocation(line: 407, column: 39, scope: !160454)
!160459 = !DILocation(line: 405, column: 9, scope: !160454)
!160460 = !DILocation(line: 407, column: 24, scope: !160454)
!160461 = !DILocation(line: 407, column: 46, scope: !160454)
!160462 = !DILocation(line: 961, column: 18, scope: !160445, inlinedAt: !160463)
!160463 = distinct !DILocation(line: 177, column: 41, scope: !160447, inlinedAt: !160464)
!160464 = distinct !DILocation(line: 406, column: 23, scope: !160454)
!160465 = !DILocation(line: 178, column: 16, scope: !160450, inlinedAt: !160464)
!160466 = !DILocation(line: 409, column: 6, scope: !160454)
!160467 = distinct !DISubprogram(name: "reduce<hashbrown::map::HashMap<polars_utils::total_ord::TotalOrdWrap<core::option::Option<&polars_utils::float16::pf16>>, polars_utils::idx_vec::UnitVec<u32>, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtB2G_7float164pf16EEINtNtB2G_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160386, file: !52956, line: 168, type: !13, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160468 = !DILocation(line: 177, column: 28, scope: !160467)
!160469 = !DILocation(line: 177, column: 45, scope: !160467)
!160470 = !DILocation(line: 961, column: 18, scope: !160471, inlinedAt: !160472)
!160471 = distinct !DISubprogram(name: "add<hashbrown::map::HashMap<polars_utils::total_ord::TotalOrdWrap<core::option::Option<&polars_utils::float16::pf16>>, polars_utils::idx_vec::UnitVec<u32>, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtB6_6option6OptionRNtNtB1m_7float164pf16EEINtNtB1m_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160472 = !DILocation(line: 177, column: 41, scope: !160467)
!160473 = !DILocation(line: 178, column: 28, scope: !160474)
!160474 = distinct !DILexicalBlock(scope: !160467, file: !52956, line: 177, column: 13)
!160475 = !DILocation(line: 178, column: 16, scope: !160474)
!160476 = !DILocation(line: 182, column: 13, scope: !160474)
!160477 = !DILocation(line: 184, column: 5, scope: !160467)
!160478 = !DILocation(line: 810, column: 1, scope: !58734, inlinedAt: !160479)
!160479 = distinct !DILocation(line: 77, column: 13, scope: !58736, inlinedAt: !160480)
!160480 = distinct !DILocation(line: 810, column: 1, scope: !58738, inlinedAt: !160481)
!160481 = distinct !DILocation(line: 184, column: 5, scope: !160467)
!160482 = !DILocation(line: 3513, column: 43, scope: !58741, inlinedAt: !160483)
!160483 = distinct !DILocation(line: 810, column: 1, scope: !58747, inlinedAt: !160484)
!160484 = distinct !DILocation(line: 810, column: 1, scope: !58749, inlinedAt: !160485)
!160485 = distinct !DILocation(line: 810, column: 1, scope: !58734, inlinedAt: !160479)
!160486 = !DILocation(line: 3513, column: 18, scope: !58741, inlinedAt: !160483)
end_hunk_1
