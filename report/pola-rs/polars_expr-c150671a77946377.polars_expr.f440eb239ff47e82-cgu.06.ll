inline.NumInlined: 10313
inline.NumDeleted: 5345
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1J_EE7consumeCskY9G75ZWc4U_11polars_expr:bb.a
  store ptr %i.h, ptr %i.p, align 8, !dbg !160204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !dbg !160204
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false), !dbg !160204
  ret void, !dbg !160206
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1J_EE8completeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !158271 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !160207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160207
  invoke void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFoldermEINtNtB7_8plumbing6FoldermE8completeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.g, !dbg !160208

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160210
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !160210
  invoke void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFolderINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB7_8plumbing6FolderB10_E8completeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !160211

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.f unwind label %bb.e, !dbg !160212

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !160215
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !160216
  ret void, !dbg !160217

bb.e:                                             ; preds = %bb.c, %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160218
  unreachable, !dbg !160218

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn5, !dbg !160218

bb.g:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160219
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse67t6KqNqGQ_5rayon4iter6extend13ListVecFolderINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #34
          to label %bb.f unwind label %bb.e, !dbg !160219
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEINtNtNtB7_7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB2k_EE7consumeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !160220 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160222
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160223
  %.sroa.02.0.copyload = load ptr, ptr %i.e, align 8, !dbg !160223 ; 3 uses
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !dbg !160221
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !160223
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160223 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !160223
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8, !dbg !160223 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160224), !dbg !160227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160228, !noalias !160231
  %i.g = load i32, ptr %2, align 8, !dbg !160235, !alias.scope !160224, !noalias !160236, !noundef !14
  invoke void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFoldermEINtNtB7_8plumbing6FoldermE7consumeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.g)
          to label %bb.b unwind label %bb.h, !dbg !160237, !noalias !160238

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160239, !noalias !160231
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160239 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !dbg !160239, !noalias !160236
  %i.i = icmp ult i64 %.sroa.63.0.copyload, %.sroa.5.0.copyload, !dbg !160240
  br i1 %i.i, label %_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !160240, !prof !45

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #36
          to label %bb.e unwind label %bb.d, !dbg !160243, !noalias !160244

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.f, !dbg !160249, !noalias !160251

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160252, !noalias !160251
  unreachable, !dbg !160252

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.d
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.sroa.02.0.copyload, i64 %.sroa.63.0.copyload) #34
          to label %.body.i unwind label %bb.f, !dbg !160253, !noalias !160251

.body.i:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse67t6KqNqGQ_5rayon4iter6extend13ListVecFoldermEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %.critedge.i unwind label %bb.g, !dbg !160254, !noalias !160231

bb.g:                                             ; preds = %bb.i, %bb.h, %.body.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160255, !noalias !160236
  unreachable, !dbg !160255

bb.h:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.sroa.02.0.copyload, i64 %.sroa.63.0.copyload) #34
          to label %bb.i unwind label %bb.g, !dbg !160256, !noalias !160231

.critedge.i:                                      ; preds = %bb.i, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %i.j, %.body.i ], [ %i.m, %bb.i ]
  resume { ptr, i32 } %.pn9.i, !dbg !160255

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160256
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.critedge.i unwind label %bb.g, !dbg !160257, !noalias !160236

_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.0.copyload, i64 %.sroa.63.0.copyload, !dbg !160259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !dbg !160262, !noalias !160236
  %i.p = add nuw i64 %.sroa.63.0.copyload, 1, !dbg !160267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160268, !noalias !160231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160254, !noalias !160231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160270
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160271
  store <2 x ptr> %i.f, ptr %i.q, align 8, !dbg !160271
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !160271
  store i64 %.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !160271
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !160271
  store i64 %i.p, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !160271
  ret void, !dbg !160273
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEINtNtNtB7_7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB2k_EE8completeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !158301 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160274
  invoke void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFoldermEINtNtB7_8plumbing6FoldermE8completeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.e, !dbg !160275

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160276
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160277
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !160277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160279
  ret void, !dbg !160280

bb.c:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160281
  unreachable, !dbg !160281

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.f, !dbg !160281

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160282
  %.val = load ptr, ptr %i.g, align 8, !dbg !160282, !alias.scope !78404, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !160282
  %.val3 = load i64, ptr %i.h, align 8, !dbg !160282, !alias.scope !78404, !noundef !14
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.val, i64 %.val3) #34
          to label %bb.d unwind label %bb.c, !dbg !160282
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtNtB7_7collect8consumer13CollectResultmEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1V_EE7consumeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !160283 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %3 = load ptr, ptr %1, align 8, !dbg !160284, !nonnull !14, !noundef !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !160285
  %.sroa.02.0.copyload = load ptr, ptr %i.b, align 8, !dbg !160285 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !160285
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160285 ; 2 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160285
  %.sroa.65.0.copyload = load i64, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !160285 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160286
  %.sroa.09.0.copyload = load ptr, ptr %i.c, align 8, !dbg !160286 ; 4 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !160286
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !dbg !160286 ; 2 uses
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !160286
  %.sroa.611.0.copyload = load i64, ptr %.sroa.611.0..sroa_idx, align 8, !dbg !160286 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160287), !dbg !160290
  %i.d = icmp ult i64 %.sroa.65.0.copyload, %.sroa.5.0.copyload, !dbg !160291
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !160291, !prof !45

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #36
          to label %.noexc.i unwind label %bb.i, !dbg !160295, !noalias !160296

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 8, !dbg !160300, !alias.scope !160287, !noalias !160301, !noundef !14
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.sroa.02.0.copyload, i64 %.sroa.65.0.copyload, !dbg !160302
  store i32 %i.e, ptr %i.f, align 4, !dbg !160304, !noalias !160307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160311, !noalias !160296
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160311 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !dbg !160311, !noalias !160301
  %i.h = icmp ult i64 %.sroa.611.0.copyload, %.sroa.510.0.copyload, !dbg !160312
  br i1 %i.h, label %_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !160312, !prof !45

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #36
          to label %bb.f unwind label %bb.e, !dbg !160314, !noalias !160315

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.g, !dbg !160320, !noalias !160322

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160323, !noalias !160322
  unreachable, !dbg !160323

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.e
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.sroa.09.0.copyload, i64 %.sroa.611.0.copyload) #34
          to label %.critedge.i unwind label %bb.g, !dbg !160324, !noalias !160322

bb.h:                                             ; preds = %bb.j, %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160325, !noalias !160301
  unreachable, !dbg !160325

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr(ptr %.sroa.09.0.copyload, i64 %.sroa.611.0.copyload) #34
          to label %bb.j unwind label %bb.h, !dbg !160326, !noalias !160296

.critedge.i:                                      ; preds = %bb.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %.pn9.i = phi { ptr, i32 } [ %i.l, %bb.j ], [ %i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i ]
  resume { ptr, i32 } %.pn9.i, !dbg !160325

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160326
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.critedge.i unwind label %bb.h, !dbg !160327, !noalias !160301

_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c
  %i.n = add nuw i64 %.sroa.65.0.copyload, 1, !dbg !160329
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload, i64 %.sroa.611.0.copyload, !dbg !160330
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !dbg !160332, !noalias !160301
  %i.p = add nuw i64 %.sroa.611.0.copyload, 1, !dbg !160335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160336, !noalias !160296
  store ptr %3, ptr %0, align 8, !dbg !160337
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160337
  store ptr %.sroa.02.0.copyload, ptr %4, align 8, !dbg !160337
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160337
  store i64 %.sroa.5.0.copyload, ptr %.sroa.27.0..sroa_idx, align 8, !dbg !160337
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160337
  store i64 %i.n, ptr %.sroa.38.0..sroa_idx, align 8, !dbg !160337
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !160337
  store ptr %.sroa.09.0.copyload, ptr %i.q, align 8, !dbg !160337
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !160337
  store i64 %.sroa.510.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !160337
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !160337
  store i64 %i.p, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !160337
  ret void, !dbg !160339
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtNtB7_7collect8consumer13CollectResultmEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1V_EE8completeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !158314 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !160340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !160340
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160341
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160342
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160341
  ret void, !dbg !160343
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtNtB7_7collect8consumer13CollectResultmEINtNtB7_6extend13ListVecFolderINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB2k_EE8completeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !158331 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !160344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160345
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160346
  call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtB5_13ListVecFolderINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB7_8plumbing6FolderB10_E8completeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !160347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160348
  ret void, !dbg !160349
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtB7_6extend11ListReducerBY_EINtNtB7_8plumbing7ReducerTINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB20_3vec3VecmEEIB1U_IB2X_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !160350 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !160352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !160353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !160354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !160354
  invoke void @_RNvXsg_NtNtCse67t6KqNqGQ_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecmEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.b unwind label %bb.f, !dbg !160355

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !160356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !160356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160358
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !160358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160359
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !160359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !160359
  invoke void @_RNvXsg_NtNtCse67t6KqNqGQ_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !160360

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.critedge unwind label %bb.e, !dbg !160361

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !160364
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !160364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !160365
  ret void, !dbg !160366

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160367
  unreachable, !dbg !160367

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !160368
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.e, !dbg !160369

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160368
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.critedge unwind label %bb.e, !dbg !160371

.critedge:                                        ; preds = %bb.g, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.l, %bb.g ]
  resume { ptr, i32 } %.pn8, !dbg !160367
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtB7_6extend11ListReducerNtNtNtB7_7collect8consumer14CollectReducerEINtNtB7_8plumbing7ReducerTINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB2D_3vec3VecmEEINtB1r_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !160373 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !160375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !160376
  invoke void @_RNvXsg_NtNtCse67t6KqNqGQ_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecmEEE6reduceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.f, !dbg !160377

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160378
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !160379
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !dbg !160379 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !160379
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !160379 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !160379
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !160379 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !160380
  %.sroa.019.0.copyload = load ptr, ptr %i.e, align 8, !dbg !160380 ; 3 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !160380
  %.sroa.520.0.copyload = load i64, ptr %.sroa.520.0..sroa_idx, align 8, !dbg !160380 ; 5 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.8.0.copyload, !dbg !160381
  %i.g = icmp eq ptr %i.f, %.sroa.019.0.copyload, !dbg !160387
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader, !dbg !160387

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader: ; preds = %bb.b
  %i.h = icmp eq i64 %.sroa.520.0.copyload, 0, !dbg !160389
  br i1 %i.h, label %_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph, !dbg !160389

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.sroa.520.0.copyload, !dbg !160389
  br i1 %i.i, label %_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph, !dbg !160389

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i27 = phi i64 [ %i.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.019.0.copyload, i64 %.sroa.0.0.i.i.i.i27, !dbg !160389
  %i.k = add i64 %.sroa.0.0.i.i.i.i27, 1, !dbg !160389 ; 4 uses
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i unwind label %bb.c, !dbg !160393, !noalias !160395

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i: ; preds = %.lr.ph29
  %i.l = add i64 %.sroa.0.1.i.i.i.i28, 1, !dbg !160389 ; 2 uses
  %i.m = icmp eq i64 %i.l, %.sroa.520.0.copyload, !dbg !160389
  br i1 %i.m, label %.body, label %.lr.ph29, !dbg !160389

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.sroa.520.0.copyload, !dbg !160389
  br i1 %i.o, label %.body, label %.lr.ph29, !dbg !160389

.lr.ph29:                                         ; preds = %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i28 = phi i64 [ %i.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.019.0.copyload, i64 %.sroa.0.1.i.i.i.i28, !dbg !160389
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i unwind label %bb.d, !dbg !160402, !noalias !160395

bb.d:                                             ; preds = %.lr.ph29
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !160389, !noalias !160395
  unreachable, !dbg !160389

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i: ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160380
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !160380
  %i.r = add i64 %.sroa.4.0.copyload, %.sroa.6.0.copyload, !dbg !160404
  %i.s = add i64 %.sroa.520.0.copyload, %.sroa.8.0.copyload, !dbg !160405
  br label %_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr.exit, !dbg !160406

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit7.i.i.i.i, %bb.c
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.critedge unwind label %bb.e, !dbg !160407

_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i
  %.sroa.5.0 = phi i64 [ %i.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i ], [ %.sroa.6.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader ], [ %.sroa.6.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], !dbg !160409
  %.sroa.7.0 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEECskY9G75ZWc4U_11polars_expr.exit14.i ], [ %.sroa.8.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.preheader ], [ %.sroa.8.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], !dbg !160409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !160410
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !160410
  store ptr %.sroa.0.0.copyload, ptr %i.t, align 8, !dbg !160410
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !160410
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160410
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !160410
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !160410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160411
  ret void, !dbg !160412

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!160084 = distinct !DILexicalBlock(scope: !160082, file: !52955, line: 91, column: 9)
!160085 = !DILocation(line: 96, column: 13, scope: !160084)
!160086 = !DILocation(line: 961, column: 18, scope: !160087, inlinedAt: !160088)
!160087 = distinct !DISubprogram(name: "add<hashbrown::map::HashMap<u64, polars_utils::idx_vec::UnitVec<u32>, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapyINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160088 = !DILocation(line: 99, column: 46, scope: !160084)
!160089 = !DILocation(line: 99, column: 58, scope: !160084)
!160090 = !DILocation(line: 97, column: 13, scope: !160084)
!160091 = !DILocation(line: 103, column: 6, scope: !160082)
!160092 = distinct !DISubprogram(name: "split_at<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>>", linkageName: "_RNvXs3_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumerINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCskY9G75ZWc4U_11polars_expr", scope: !157590, file: !52955, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160093 = !DILocation(line: 96, column: 21, scope: !160094)
!160094 = distinct !DILexicalBlock(scope: !160092, file: !52955, line: 91, column: 9)
!160095 = !DILocation(line: 96, column: 13, scope: !160094)
!160096 = !DILocation(line: 961, column: 18, scope: !160097, inlinedAt: !160098)
!160097 = distinct !DISubprogram(name: "add<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160098 = !DILocation(line: 99, column: 46, scope: !160094)
!160099 = !DILocation(line: 99, column: 58, scope: !160094)
!160100 = !DILocation(line: 97, column: 13, scope: !160094)
!160101 = !DILocation(line: 103, column: 6, scope: !160092)
!160102 = distinct !DISubprogram(name: "split_at<alloc::vec::Vec<usize, alloc::alloc::Global>>", linkageName: "_RNvXs3_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumerINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCskY9G75ZWc4U_11polars_expr", scope: !157590, file: !52955, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160103 = !DILocation(line: 96, column: 21, scope: !160104)
!160104 = distinct !DILexicalBlock(scope: !160102, file: !52955, line: 91, column: 9)
!160105 = !DILocation(line: 96, column: 13, scope: !160104)
!160106 = !DILocation(line: 961, column: 18, scope: !160107, inlinedAt: !160108)
!160107 = distinct !DISubprogram(name: "add<alloc::vec::Vec<usize, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCsgZ49sUHp3tW_5alloc3vec3VecjE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160108 = !DILocation(line: 99, column: 46, scope: !160104)
!160109 = !DILocation(line: 99, column: 58, scope: !160104)
!160110 = !DILocation(line: 97, column: 13, scope: !160104)
!160111 = !DILocation(line: 103, column: 6, scope: !160102)
!160112 = distinct !DISubprogram(name: "split_at<(either::Either<alloc::vec::Vec<u32, alloc::alloc::Global>, alloc::vec::Vec<polars_utils::index::ChunkId<24>, alloc::alloc::Global>>, either::Either<alloc::vec::Vec<polars_utils::index::NullableIdxSize, alloc::alloc::Global>, alloc::vec::Vec<polars_utils::index::ChunkId<24>, alloc::alloc::Global>>)>", linkageName: "_RNvXs3_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumerTINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEIB1L_INtNtCs2mZqlW55729_12polars_utils5index7ChunkIdKy18_EEEIB1g_IB1L_NtB2r_15NullableIdxSizeEB2j_EEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCskY9G75ZWc4U_11polars_expr", scope: !157590, file: !52955, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160113 = !DILocation(line: 96, column: 21, scope: !160114)
!160114 = distinct !DILexicalBlock(scope: !160112, file: !52955, line: 91, column: 9)
!160115 = !DILocation(line: 96, column: 13, scope: !160114)
!160116 = !DILocation(line: 961, column: 18, scope: !160117, inlinedAt: !160118)
!160117 = distinct !DISubprogram(name: "add<(either::Either<alloc::vec::Vec<u32, alloc::alloc::Global>, alloc::vec::Vec<polars_utils::index::ChunkId<24>, alloc::alloc::Global>>, either::Either<alloc::vec::Vec<polars_utils::index::NullableIdxSize, alloc::alloc::Global>, alloc::vec::Vec<polars_utils::index::ChunkId<24>, alloc::alloc::Global>>)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEIB19_INtNtCs2mZqlW55729_12polars_utils5index7ChunkIdKy18_EEEIBE_IB19_NtB1P_15NullableIdxSizeEB1H_EE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160118 = !DILocation(line: 99, column: 46, scope: !160114)
!160119 = !DILocation(line: 99, column: 58, scope: !160114)
!160120 = !DILocation(line: 97, column: 13, scope: !160114)
!160121 = !DILocation(line: 103, column: 6, scope: !160112)
!160122 = distinct !DISubprogram(name: "split_at<(usize, usize, rayon::slice::sort::MergeSortResult)>", linkageName: "_RNvXs3_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumerTjjNtNtNtBb_5slice4sort15MergeSortResultEEINtNtB9_8plumbing8ConsumerB1e_E8split_atCskY9G75ZWc4U_11polars_expr", scope: !157590, file: !52955, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160123 = !DILocation(line: 96, column: 21, scope: !160124)
!160124 = distinct !DILexicalBlock(scope: !160122, file: !52955, line: 91, column: 9)
!160125 = !DILocation(line: 96, column: 13, scope: !160124)
!160126 = !DILocation(line: 961, column: 18, scope: !160127, inlinedAt: !160128)
!160127 = distinct !DISubprogram(name: "add<(usize, usize, rayon::slice::sort::MergeSortResult)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160128 = !DILocation(line: 99, column: 46, scope: !160124)
!160129 = !DILocation(line: 99, column: 58, scope: !160124)
!160130 = !DILocation(line: 97, column: 13, scope: !160124)
!160131 = !DILocation(line: 103, column: 6, scope: !160122)
!160132 = !DILocation(line: 96, column: 21, scope: !157588)
!160133 = !DILocation(line: 96, column: 13, scope: !157588)
!160134 = !DILocation(line: 961, column: 18, scope: !157613, inlinedAt: !160135)
!160135 = !DILocation(line: 99, column: 46, scope: !157588)
!160136 = !DILocation(line: 99, column: 58, scope: !157588)
!160137 = !DILocation(line: 97, column: 13, scope: !157588)
!160138 = !DILocation(line: 103, column: 6, scope: !157589)
!160139 = distinct !DISubprogram(name: "with_capacity<&polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtB7_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCskY9G75ZWc4U_11polars_expr", scope: !160140, file: !158921, line: 97, type: !13, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160140 = !DINamespace(name: "{impl#6}", scope: !158923)
!160141 = !DILocation(line: 136, column: 30, scope: !160142, inlinedAt: !160143)
!160142 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs0_NtCsk79RHlfmHDk_8foldhash4fastNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !158927, file: !158926, line: 134, type: !13, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160143 = !DILocation(line: 79, column: 17, scope: !160144, inlinedAt: !160145)
!160144 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !158933, file: !158932, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160145 = !DILocation(line: 98, column: 50, scope: !160139)
!160146 = !DILocation(line: 3905, column: 24, scope: !85883, inlinedAt: !160147)
!160147 = distinct !DILocation(line: 2870, column: 26, scope: !160148, inlinedAt: !160149)
!160148 = distinct !DISubprogram(name: "load", linkageName: "_RNvMsO_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomichE4load", scope: !26, file: !20, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160149 = !DILocation(line: 213, column: 42, scope: !160150, inlinedAt: !160151)
!160150 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed3new", scope: !158942, file: !158941, line: 212, type: !13, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160151 = !DILocation(line: 137, column: 26, scope: !160142, inlinedAt: !160143)
!160152 = !DILocation(line: 213, column: 16, scope: !160150, inlinedAt: !160151)
!160153 = !DILocation(line: 214, column: 17, scope: !160150, inlinedAt: !160151)
!160154 = !DILocation(line: 504, column: 18, scope: !160155, inlinedAt: !160159)
!160155 = distinct !DISubprogram(name: "with_capacity_and_hasher<&polars_utils::pl_str::PlSmallStr, foldhash::quality::RandomState>", linkageName: "_RNvMs2_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherCskY9G75ZWc4U_11polars_expr", scope: !160157, file: !160156, line: 502, type: !13, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160156 = !DIFile(filename: "src/set.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "87a602d90a47f26da501afa285c42516")
!160157 = !DINamespace(name: "HashSet", scope: !160158)
!160158 = !DINamespace(name: "set", scope: !58744)
!160159 = !DILocation(line: 98, column: 9, scope: !160139)
!160160 = !DILocation(line: 601, column: 9, scope: !160161, inlinedAt: !160162)
!160161 = distinct !DISubprogram(name: "with_capacity<(&polars_utils::pl_str::PlSmallStr, ())>", linkageName: "_RNvMs5_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE13with_capacityCskY9G75ZWc4U_11polars_expr", scope: !158950, file: !58741, line: 600, type: !13, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160162 = distinct !DILocation(line: 483, column: 20, scope: !160163, inlinedAt: !160164)
!160163 = distinct !DISubprogram(name: "with_capacity_and_hasher<&polars_utils::pl_str::PlSmallStr, (), foldhash::quality::RandomState>", linkageName: "_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherCskY9G75ZWc4U_11polars_expr", scope: !158954, file: !158953, line: 480, type: !13, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160164 = distinct !DILocation(line: 504, column: 18, scope: !160155, inlinedAt: !160159)
!160165 = !DILocation(line: 481, column: 9, scope: !160163, inlinedAt: !160164)
!160166 = !{!160167}
!160167 = distinct !{!160167, !160168, !"_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherCskY9G75ZWc4U_11polars_expr: argument 0"}
!160168 = distinct !{!160168, !"_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherCskY9G75ZWc4U_11polars_expr"}
!160169 = !DILocation(line: 503, column: 9, scope: !160155, inlinedAt: !160159)
!160170 = !DILocation(line: 505, column: 9, scope: !160155, inlinedAt: !160159)
!160171 = !DILocation(line: 99, column: 6, scope: !160139)
!160172 = distinct !DISubprogram(name: "consume<(u32, polars_utils::idx_vec::UnitVec<u32>), rayon::iter::unzip::Unzip, rayon::iter::extend::ListVecFolder<u32>, rayon::iter::extend::ListVecFolder<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1J_EE7consumeCskY9G75ZWc4U_11polars_expr", scope: !86973, file: !84365, line: 374, type: !13, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160173 = !DILocation(line: 375, column: 29, scope: !160172)
!160174 = !DILocation(line: 375, column: 51, scope: !160172)
!160175 = !DILocation(line: 375, column: 62, scope: !160172)
!160176 = !{!160177}
!160177 = distinct !{!160177, !160178, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 1"}
!160178 = distinct !{!160178, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr"}
!160179 = !DILocation(line: 375, column: 37, scope: !160172)
!160180 = !DILocation(line: 103, column: 10, scope: !160181, inlinedAt: !160182)
!160181 = distinct !DISubprogram(name: "consume<u32, polars_utils::idx_vec::UnitVec<u32>, rayon::iter::extend::ListVecFolder<u32>, rayon::iter::extend::ListVecFolder<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr", scope: !86988, file: !84365, line: 98, type: !15001, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160182 = distinct !DILocation(line: 375, column: 37, scope: !160172)
!160183 = !{!160184, !160177, !160185, !160186}
!160184 = distinct !{!160184, !160178, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!160185 = distinct !{!160185, !160178, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 2"}
!160186 = distinct !{!160186, !160178, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 3"}
!160187 = !DILocation(line: 103, column: 23, scope: !160181, inlinedAt: !160182)
!160188 = !{!160184, !160185, !160186}
!160189 = !DILocation(line: 103, column: 15, scope: !160181, inlinedAt: !160182)
!160190 = !{!160184, !160177, !160186}
!160191 = !DILocation(line: 103, column: 32, scope: !160181, inlinedAt: !160182)
!160192 = !DILocation(line: 103, column: 46, scope: !160181, inlinedAt: !160182)
!160193 = !DILocation(line: 103, column: 38, scope: !160181, inlinedAt: !160182)
!160194 = !DILocation(line: 103, column: 53, scope: !160181, inlinedAt: !160182)
!160195 = !DILocation(line: 98, column: 5, scope: !160181, inlinedAt: !160182)
!160196 = !{!160184, !160185}
!160197 = !DILocation(line: 104, column: 5, scope: !160181, inlinedAt: !160182)
!160198 = !{!160184, !160177, !160185}
!160199 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160200)
!160200 = distinct !DILocation(line: 104, column: 5, scope: !160181, inlinedAt: !160182)
!160201 = !DILocation(line: 103, column: 52, scope: !160181, inlinedAt: !160182)
!160202 = !DILocation(line: 103, column: 9, scope: !160181, inlinedAt: !160182)
!160203 = !DILocation(line: 375, column: 72, scope: !160172)
!160204 = !DILocation(line: 376, column: 9, scope: !160205)
!160205 = distinct !DILexicalBlock(scope: !160172, file: !84365, line: 375, column: 9)
!160206 = !DILocation(line: 381, column: 6, scope: !160172)
!160207 = !DILocation(line: 384, column: 10, scope: !158271)
!160208 = !DILocation(line: 384, column: 20, scope: !158271)
!160209 = !DILocation(line: 384, column: 29, scope: !158271)
!160210 = !DILocation(line: 384, column: 32, scope: !158271)
!160211 = !DILocation(line: 384, column: 43, scope: !158271)
!160212 = !DILocation(line: 810, column: 1, scope: !54139, inlinedAt: !160213)
!160213 = distinct !DILocation(line: 384, column: 53, scope: !158271)
!160214 = !DILocation(line: 384, column: 52, scope: !158271)
!160215 = !DILocation(line: 384, column: 9, scope: !158271)
!160216 = !DILocation(line: 384, column: 53, scope: !158271)
!160217 = !DILocation(line: 385, column: 6, scope: !158271)
!160218 = !DILocation(line: 383, column: 5, scope: !158271)
!160219 = !DILocation(line: 385, column: 5, scope: !158271)
!160220 = distinct !DISubprogram(name: "consume<(u32, polars_utils::idx_vec::UnitVec<u32>), rayon::iter::unzip::Unzip, rayon::iter::extend::ListVecFolder<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtB7_6extend13ListVecFoldermEINtNtNtB7_7collect8consumer13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB2k_EE7consumeCskY9G75ZWc4U_11polars_expr", scope: !86973, file: !84365, line: 374, type: !13, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160221 = !DILocation(line: 375, column: 29, scope: !160220)
!160222 = !DILocation(line: 375, column: 51, scope: !160220)
!160223 = !DILocation(line: 375, column: 62, scope: !160220)
!160224 = !{!160225}
!160225 = distinct !{!160225, !160226, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr: argument 1"}
!160226 = distinct !{!160226, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr"}
!160227 = !DILocation(line: 375, column: 37, scope: !160220)
!160228 = !DILocation(line: 103, column: 10, scope: !160229, inlinedAt: !160230)
!160229 = distinct !DISubprogram(name: "consume<u32, polars_utils::idx_vec::UnitVec<u32>, rayon::iter::extend::ListVecFolder<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr", scope: !86988, file: !84365, line: 98, type: !15001, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160230 = distinct !DILocation(line: 375, column: 37, scope: !160220)
!160231 = !{!160232, !160225, !160233, !160234}
!160232 = distinct !{!160232, !160226, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!160233 = distinct !{!160233, !160226, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr: argument 2"}
!160234 = distinct !{!160234, !160226, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtB5_6extend13ListVecFoldermEINtNtNtB5_7collect8consumer13CollectResultB13_EECskY9G75ZWc4U_11polars_expr: argument 3"}
!160235 = !DILocation(line: 103, column: 23, scope: !160229, inlinedAt: !160230)
!160236 = !{!160232, !160233, !160234}
!160237 = !DILocation(line: 103, column: 15, scope: !160229, inlinedAt: !160230)
!160238 = !{!160232, !160225, !160234}
!160239 = !DILocation(line: 103, column: 46, scope: !160229, inlinedAt: !160230)
!160240 = !DILocation(line: 126, column: 13, scope: !160241, inlinedAt: !160242)
!160241 = distinct !DISubprogram(name: "consume<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr", scope: !86985, file: !52955, line: 124, type: !13, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160242 = distinct !DILocation(line: 103, column: 38, scope: !160229, inlinedAt: !160230)
!160243 = !DILocation(line: 125, column: 9, scope: !160241, inlinedAt: !160242)
!160244 = !{!160245, !160247, !160248, !160232, !160225, !160233, !160234}
!160245 = distinct !{!160245, !160246, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 0"}
!160246 = distinct !{!160246, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr"}
!160247 = distinct !{!160247, !160246, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 1"}
!160248 = distinct !{!160248, !160246, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 2"}
!160249 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160250)
!160250 = distinct !DILocation(line: 139, column: 5, scope: !160241, inlinedAt: !160242)
!160251 = !{!160245, !160247, !160232, !160225, !160233, !160234}
!160252 = !DILocation(line: 124, column: 5, scope: !160241, inlinedAt: !160242)
!160253 = !DILocation(line: 139, column: 5, scope: !160241, inlinedAt: !160242)
!160254 = !DILocation(line: 103, column: 53, scope: !160229, inlinedAt: !160230)
!160255 = !DILocation(line: 98, column: 5, scope: !160229, inlinedAt: !160230)
!160256 = !DILocation(line: 104, column: 5, scope: !160229, inlinedAt: !160230)
!160257 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160258)
!160258 = distinct !DILocation(line: 104, column: 5, scope: !160229, inlinedAt: !160230)
!160259 = !DILocation(line: 961, column: 18, scope: !160260, inlinedAt: !160261)
!160260 = distinct !DISubprogram(name: "add<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160261 = distinct !DILocation(line: 134, column: 26, scope: !160241, inlinedAt: !160242)
!160262 = !DILocation(line: 1921, column: 41, scope: !160263, inlinedAt: !160264)
!160263 = distinct !DISubprogram(name: "write<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr", scope: !153, file: !152, line: 1898, type: !13, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160264 = distinct !DILocation(line: 1418, column: 18, scope: !160265, inlinedAt: !160266)
!160265 = distinct !DISubprogram(name: "write<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmE5writeCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 1413, type: !13, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160266 = distinct !DILocation(line: 134, column: 52, scope: !160241, inlinedAt: !160242)
!160267 = !DILocation(line: 135, column: 13, scope: !160241, inlinedAt: !160242)
!160268 = !DILocation(line: 103, column: 52, scope: !160229, inlinedAt: !160230)
!160269 = !DILocation(line: 103, column: 9, scope: !160229, inlinedAt: !160230)
!160270 = !DILocation(line: 375, column: 72, scope: !160220)
!160271 = !DILocation(line: 376, column: 9, scope: !160272)
!160272 = distinct !DILexicalBlock(scope: !160220, file: !84365, line: 375, column: 9)
!160273 = !DILocation(line: 381, column: 6, scope: !160220)
!160274 = !DILocation(line: 384, column: 10, scope: !158301)
!160275 = !DILocation(line: 384, column: 20, scope: !158301)
!160276 = !DILocation(line: 384, column: 29, scope: !158301)
!160277 = !DILocation(line: 384, column: 32, scope: !158301)
!160278 = !DILocation(line: 384, column: 9, scope: !158301)
!160279 = !DILocation(line: 384, column: 53, scope: !158301)
!160280 = !DILocation(line: 385, column: 6, scope: !158301)
!160281 = !DILocation(line: 383, column: 5, scope: !158301)
!160282 = !DILocation(line: 385, column: 5, scope: !158301)
!160283 = distinct !DISubprogram(name: "consume<(u32, polars_utils::idx_vec::UnitVec<u32>), rayon::iter::unzip::Unzip, rayon::iter::collect::consumer::CollectResult<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_11UnzipFolderNtB5_5UnzipINtNtNtB7_7collect8consumer13CollectResultmEIB19_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtNtB7_8plumbing6FolderTmB1V_EE7consumeCskY9G75ZWc4U_11polars_expr", scope: !86973, file: !84365, line: 374, type: !13, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160284 = !DILocation(line: 375, column: 29, scope: !160283)
!160285 = !DILocation(line: 375, column: 51, scope: !160283)
!160286 = !DILocation(line: 375, column: 62, scope: !160283)
!160287 = !{!160288}
!160288 = distinct !{!160288, !160289, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 1"}
!160289 = distinct !{!160289, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr"}
!160290 = !DILocation(line: 375, column: 37, scope: !160283)
!160291 = !DILocation(line: 126, column: 13, scope: !86984, inlinedAt: !160292)
!160292 = distinct !DILocation(line: 103, column: 15, scope: !160293, inlinedAt: !160294)
!160293 = distinct !DISubprogram(name: "consume<u32, polars_utils::idx_vec::UnitVec<u32>, rayon::iter::collect::consumer::CollectResult<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>>", linkageName: "_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr", scope: !86988, file: !84365, line: 98, type: !15001, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160294 = distinct !DILocation(line: 375, column: 37, scope: !160283)
!160295 = !DILocation(line: 125, column: 9, scope: !86984, inlinedAt: !160292)
!160296 = !{!160297, !160288, !160298, !160299}
!160297 = distinct !{!160297, !160289, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!160298 = distinct !{!160298, !160289, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 2"}
!160299 = distinct !{!160299, !160289, !"_RINvXNtNtCse67t6KqNqGQ_5rayon4iter5unzipNtB3_5UnzipINtB3_7UnzipOpTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE7consumeINtNtNtB5_7collect8consumer13CollectResultmEIB23_B13_EECskY9G75ZWc4U_11polars_expr: argument 3"}
!160300 = !DILocation(line: 103, column: 23, scope: !160293, inlinedAt: !160294)
!160301 = !{!160297, !160298, !160299}
!160302 = !DILocation(line: 961, column: 18, scope: !87005, inlinedAt: !160303)
!160303 = distinct !DILocation(line: 134, column: 26, scope: !86984, inlinedAt: !160292)
!160304 = !DILocation(line: 1921, column: 41, scope: !87008, inlinedAt: !160305)
!160305 = distinct !DILocation(line: 1418, column: 18, scope: !87010, inlinedAt: !160306)
!160306 = distinct !DILocation(line: 134, column: 52, scope: !86984, inlinedAt: !160292)
!160307 = !{!160308, !160310, !160297, !160288, !160298, !160299}
!160308 = distinct !{!160308, !160309, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultmEINtNtB9_8plumbing6FoldermE7consumeCskY9G75ZWc4U_11polars_expr: argument 0"}
!160309 = distinct !{!160309, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultmEINtNtB9_8plumbing6FoldermE7consumeCskY9G75ZWc4U_11polars_expr"}
!160310 = distinct !{!160310, !160309, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultmEINtNtB9_8plumbing6FoldermE7consumeCskY9G75ZWc4U_11polars_expr: argument 1"}
!160311 = !DILocation(line: 103, column: 46, scope: !160293, inlinedAt: !160294)
!160312 = !DILocation(line: 126, column: 13, scope: !160241, inlinedAt: !160313)
!160313 = distinct !DILocation(line: 103, column: 38, scope: !160293, inlinedAt: !160294)
!160314 = !DILocation(line: 125, column: 9, scope: !160241, inlinedAt: !160313)
!160315 = !{!160316, !160318, !160319, !160297, !160288, !160298, !160299}
!160316 = distinct !{!160316, !160317, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 0"}
!160317 = distinct !{!160317, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr"}
!160318 = distinct !{!160318, !160317, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 1"}
!160319 = distinct !{!160319, !160317, !"_RNvXs4_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtB9_8plumbing6FolderB1c_E7consumeCskY9G75ZWc4U_11polars_expr: argument 2"}
!160320 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160321)
!160321 = distinct !DILocation(line: 139, column: 5, scope: !160241, inlinedAt: !160313)
!160322 = !{!160316, !160318, !160297, !160288, !160298, !160299}
!160323 = !DILocation(line: 124, column: 5, scope: !160241, inlinedAt: !160313)
!160324 = !DILocation(line: 139, column: 5, scope: !160241, inlinedAt: !160313)
!160325 = !DILocation(line: 98, column: 5, scope: !160293, inlinedAt: !160294)
!160326 = !DILocation(line: 104, column: 5, scope: !160293, inlinedAt: !160294)
!160327 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160328)
!160328 = distinct !DILocation(line: 104, column: 5, scope: !160293, inlinedAt: !160294)
!160329 = !DILocation(line: 135, column: 13, scope: !86984, inlinedAt: !160292)
!160330 = !DILocation(line: 961, column: 18, scope: !160260, inlinedAt: !160331)
!160331 = distinct !DILocation(line: 134, column: 26, scope: !160241, inlinedAt: !160313)
!160332 = !DILocation(line: 1921, column: 41, scope: !160263, inlinedAt: !160333)
!160333 = distinct !DILocation(line: 1418, column: 18, scope: !160265, inlinedAt: !160334)
!160334 = distinct !DILocation(line: 134, column: 52, scope: !160241, inlinedAt: !160313)
!160335 = !DILocation(line: 135, column: 13, scope: !160241, inlinedAt: !160313)
!160336 = !DILocation(line: 103, column: 52, scope: !160293, inlinedAt: !160294)
!160337 = !DILocation(line: 376, column: 9, scope: !160338)
!160338 = distinct !DILexicalBlock(scope: !160283, file: !84365, line: 375, column: 9)
!160339 = !DILocation(line: 381, column: 6, scope: !160283)
!160340 = !DILocation(line: 384, column: 10, scope: !158314)
!160341 = !DILocation(line: 384, column: 32, scope: !158314)
!160342 = !DILocation(line: 384, column: 9, scope: !158314)
!160343 = !DILocation(line: 385, column: 6, scope: !158314)
!160344 = !DILocation(line: 384, column: 10, scope: !158331)
!160345 = !DILocation(line: 384, column: 32, scope: !158331)
!160346 = !DILocation(line: 384, column: 9, scope: !158331)
!160347 = !DILocation(line: 384, column: 43, scope: !158331)
!160348 = !DILocation(line: 384, column: 52, scope: !158331)
!160349 = !DILocation(line: 385, column: 6, scope: !158331)
!160350 = distinct !DISubprogram(name: "reduce<alloc::collections::linked_list::LinkedList<alloc::vec::Vec<u32, alloc::alloc::Global>, alloc::alloc::Global>, alloc::collections::linked_list::LinkedList<alloc::vec::Vec<polars_utils::idx_vec::UnitVec<u32>, alloc::alloc::Global>, alloc::alloc::Global>, rayon::iter::extend::ListReducer, rayon::iter::extend::ListReducer>", linkageName: "_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtB7_6extend11ListReducerBY_EINtNtB7_8plumbing7ReducerTINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB20_3vec3VecmEEIB1U_IB2X_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160351, file: !84365, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160351 = !DINamespace(name: "{impl#8}", scope: !84366)
!160352 = !DILocation(line: 406, column: 13, scope: !160350)
!160353 = !DILocation(line: 406, column: 30, scope: !160350)
!160354 = !DILocation(line: 406, column: 38, scope: !160350)
!160355 = !DILocation(line: 406, column: 23, scope: !160350)
!160356 = !DILocation(line: 406, column: 45, scope: !160350)
!160357 = !DILocation(line: 407, column: 13, scope: !160350)
!160358 = !DILocation(line: 407, column: 31, scope: !160350)
!160359 = !DILocation(line: 407, column: 39, scope: !160350)
!160360 = !DILocation(line: 407, column: 24, scope: !160350)
!160361 = !DILocation(line: 810, column: 1, scope: !54139, inlinedAt: !160362)
!160362 = distinct !DILocation(line: 408, column: 9, scope: !160350)
!160363 = !DILocation(line: 407, column: 46, scope: !160350)
!160364 = !DILocation(line: 405, column: 9, scope: !160350)
!160365 = !DILocation(line: 408, column: 9, scope: !160350)
!160366 = !DILocation(line: 409, column: 6, scope: !160350)
!160367 = !DILocation(line: 404, column: 5, scope: !160350)
!160368 = !DILocation(line: 409, column: 5, scope: !160350)
!160369 = !DILocation(line: 810, column: 1, scope: !54192, inlinedAt: !160370)
!160370 = distinct !DILocation(line: 409, column: 5, scope: !160350)
!160371 = !DILocation(line: 810, column: 1, scope: !54192, inlinedAt: !160372)
!160372 = distinct !DILocation(line: 409, column: 5, scope: !160350)
!160373 = distinct !DISubprogram(name: "reduce<alloc::collections::linked_list::LinkedList<alloc::vec::Vec<u32, alloc::alloc::Global>, alloc::alloc::Global>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>, rayon::iter::extend::ListReducer, rayon::iter::collect::consumer::CollectReducer>", linkageName: "_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtB7_6extend11ListReducerNtNtNtB7_7collect8consumer14CollectReducerEINtNtB7_8plumbing7ReducerTINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB2D_3vec3VecmEEINtB1r_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160351, file: !84365, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160374 = !DILocation(line: 406, column: 13, scope: !160373)
!160375 = !DILocation(line: 406, column: 30, scope: !160373)
!160376 = !DILocation(line: 406, column: 38, scope: !160373)
!160377 = !DILocation(line: 406, column: 23, scope: !160373)
!160378 = !DILocation(line: 406, column: 45, scope: !160373)
!160379 = !DILocation(line: 407, column: 31, scope: !160373)
!160380 = !DILocation(line: 407, column: 39, scope: !160373)
!160381 = !DILocation(line: 961, column: 18, scope: !160382, inlinedAt: !160383)
!160382 = distinct !DISubprogram(name: "add<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160383 = distinct !DILocation(line: 177, column: 41, scope: !160384, inlinedAt: !160386)
!160384 = distinct !DISubprogram(name: "reduce<polars_utils::idx_vec::UnitVec<u32>>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160385, file: !52955, line: 168, type: !13, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160385 = !DINamespace(name: "{impl#8}", scope: !52957)
!160386 = distinct !DILocation(line: 407, column: 24, scope: !160373)
!160387 = !DILocation(line: 178, column: 16, scope: !160388, inlinedAt: !160386)
!160388 = distinct !DILexicalBlock(scope: !160384, file: !52955, line: 177, column: 13)
!160389 = !DILocation(line: 810, column: 1, scope: !54940, inlinedAt: !160390)
!160390 = distinct !DILocation(line: 77, column: 13, scope: !54942, inlinedAt: !160391)
!160391 = distinct !DILocation(line: 810, column: 1, scope: !54944, inlinedAt: !160392)
!160392 = distinct !DILocation(line: 184, column: 5, scope: !160384, inlinedAt: !160386)
!160393 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160394)
!160394 = distinct !DILocation(line: 810, column: 1, scope: !54940, inlinedAt: !160390)
!160395 = !{!160396, !160398, !160400, !160401}
!160396 = distinct !{!160396, !160397, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!160397 = distinct !{!160397, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!160398 = distinct !{!160398, !160399, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 0"}
!160399 = distinct !{!160399, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr"}
!160400 = distinct !{!160400, !160399, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 1"}
!160401 = distinct !{!160401, !160399, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 2"}
!160402 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160403)
!160403 = distinct !DILocation(line: 810, column: 1, scope: !54940, inlinedAt: !160390)
!160404 = !DILocation(line: 179, column: 17, scope: !160388, inlinedAt: !160386)
!160405 = !DILocation(line: 180, column: 17, scope: !160388, inlinedAt: !160386)
!160406 = !DILocation(line: 184, column: 5, scope: !160384, inlinedAt: !160386)
!160407 = !DILocation(line: 810, column: 1, scope: !54139, inlinedAt: !160408)
!160408 = distinct !DILocation(line: 408, column: 9, scope: !160373)
!160409 = !DILocation(line: 182, column: 13, scope: !160388, inlinedAt: !160386)
!160410 = !DILocation(line: 405, column: 9, scope: !160373)
!160411 = !DILocation(line: 408, column: 9, scope: !160373)
!160412 = !DILocation(line: 409, column: 6, scope: !160373)
!160413 = !DILocation(line: 404, column: 5, scope: !160373)
!160414 = !DILocation(line: 409, column: 5, scope: !160373)
!160415 = distinct !DISubprogram(name: "reduce<rayon::iter::collect::consumer::CollectResult<u32>, rayon::iter::collect::consumer::CollectResult<polars_utils::idx_vec::UnitVec<u32>>, rayon::iter::collect::consumer::CollectReducer, rayon::iter::collect::consumer::CollectReducer>", linkageName: "_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtNtB7_7collect8consumer14CollectReducerBY_EINtNtB7_8plumbing7ReducerTINtB10_13CollectResultmEIB29_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160351, file: !84365, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160416 = !DILocation(line: 406, column: 30, scope: !160415)
!160417 = !DILocation(line: 406, column: 38, scope: !160415)
!160418 = !DILocation(line: 407, column: 31, scope: !160415)
!160419 = !DILocation(line: 407, column: 39, scope: !160415)
!160420 = !DILocation(line: 961, column: 18, scope: !160382, inlinedAt: !160421)
!160421 = distinct !DILocation(line: 177, column: 41, scope: !160384, inlinedAt: !160422)
!160422 = distinct !DILocation(line: 407, column: 24, scope: !160415)
!160423 = !DILocation(line: 178, column: 16, scope: !160388, inlinedAt: !160422)
!160424 = !DILocation(line: 810, column: 1, scope: !54940, inlinedAt: !160425)
!160425 = distinct !DILocation(line: 77, column: 13, scope: !54942, inlinedAt: !160426)
!160426 = distinct !DILocation(line: 810, column: 1, scope: !54944, inlinedAt: !160427)
!160427 = distinct !DILocation(line: 184, column: 5, scope: !160384, inlinedAt: !160422)
!160428 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160429)
!160429 = distinct !DILocation(line: 810, column: 1, scope: !54940, inlinedAt: !160425)
!160430 = !{!160431, !160433, !160435, !160436}
!160431 = distinct !{!160431, !160432, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!160432 = distinct !{!160432, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!160433 = distinct !{!160433, !160434, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 0"}
!160434 = distinct !{!160434, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr"}
!160435 = distinct !{!160435, !160434, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 1"}
!160436 = distinct !{!160436, !160434, !"_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE6reduceCskY9G75ZWc4U_11polars_expr: argument 2"}
!160437 = !DILocation(line: 810, column: 1, scope: !54949, inlinedAt: !160438)
!160438 = distinct !DILocation(line: 810, column: 1, scope: !54940, inlinedAt: !160425)
!160439 = !DILocation(line: 179, column: 17, scope: !160388, inlinedAt: !160422)
!160440 = !DILocation(line: 180, column: 17, scope: !160388, inlinedAt: !160422)
!160441 = !DILocation(line: 184, column: 5, scope: !160384, inlinedAt: !160422)
!160442 = !DILocation(line: 182, column: 13, scope: !160388, inlinedAt: !160422)
!160443 = !DILocation(line: 961, column: 18, scope: !160444, inlinedAt: !160445)
!160444 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160445 = distinct !DILocation(line: 177, column: 41, scope: !160446, inlinedAt: !160447)
!160446 = distinct !DISubprogram(name: "reduce<u32>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultmEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160385, file: !52955, line: 168, type: !13, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160447 = distinct !DILocation(line: 406, column: 23, scope: !160415)
!160448 = !DILocation(line: 178, column: 16, scope: !160449, inlinedAt: !160447)
!160449 = distinct !DILexicalBlock(scope: !160446, file: !52955, line: 177, column: 13)
!160450 = !DILocation(line: 405, column: 9, scope: !160415)
!160451 = !DILocation(line: 409, column: 6, scope: !160415)
!160452 = !DILocation(line: 404, column: 5, scope: !160415)
!160453 = distinct !DISubprogram(name: "reduce<rayon::iter::collect::consumer::CollectResult<u32>, alloc::collections::linked_list::LinkedList<alloc::vec::Vec<polars_utils::idx_vec::UnitVec<u32>, alloc::alloc::Global>, alloc::alloc::Global>, rayon::iter::collect::consumer::CollectReducer, rayon::iter::extend::ListReducer>", linkageName: "_RNvXs6_NtNtCse67t6KqNqGQ_5rayon4iter5unzipINtB5_12UnzipReducerNtNtNtB7_7collect8consumer14CollectReducerNtNtB7_6extend11ListReducerEINtNtB7_8plumbing7ReducerTINtB10_13CollectResultmEINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list10LinkedListINtNtB31_3vec3VecINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160351, file: !84365, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160454 = !DILocation(line: 406, column: 30, scope: !160453)
!160455 = !DILocation(line: 406, column: 38, scope: !160453)
!160456 = !DILocation(line: 407, column: 31, scope: !160453)
!160457 = !DILocation(line: 407, column: 39, scope: !160453)
!160458 = !DILocation(line: 405, column: 9, scope: !160453)
!160459 = !DILocation(line: 407, column: 24, scope: !160453)
!160460 = !DILocation(line: 407, column: 46, scope: !160453)
!160461 = !DILocation(line: 961, column: 18, scope: !160444, inlinedAt: !160462)
!160462 = distinct !DILocation(line: 177, column: 41, scope: !160446, inlinedAt: !160463)
!160463 = distinct !DILocation(line: 406, column: 23, scope: !160453)
!160464 = !DILocation(line: 178, column: 16, scope: !160449, inlinedAt: !160463)
!160465 = !DILocation(line: 409, column: 6, scope: !160453)
!160466 = distinct !DISubprogram(name: "reduce<hashbrown::map::HashMap<polars_utils::total_ord::TotalOrdWrap<core::option::Option<&polars_utils::float16::pf16>>, polars_utils::idx_vec::UnitVec<u32>, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtB2G_7float164pf16EEINtNtB2G_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE6reduceCskY9G75ZWc4U_11polars_expr", scope: !160385, file: !52955, line: 168, type: !13, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160467 = !DILocation(line: 177, column: 28, scope: !160466)
!160468 = !DILocation(line: 177, column: 45, scope: !160466)
!160469 = !DILocation(line: 961, column: 18, scope: !160470, inlinedAt: !160471)
!160470 = distinct !DISubprogram(name: "add<hashbrown::map::HashMap<polars_utils::total_ord::TotalOrdWrap<core::option::Option<&polars_utils::float16::pf16>>, polars_utils::idx_vec::UnitVec<u32>, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapINtNtB6_6option6OptionRNtNtB1m_7float164pf16EEINtNtB1m_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3addCskY9G75ZWc4U_11polars_expr", scope: !14514, file: !14513, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!160471 = !DILocation(line: 177, column: 41, scope: !160466)
!160472 = !DILocation(line: 178, column: 28, scope: !160473)
!160473 = distinct !DILexicalBlock(scope: !160466, file: !52955, line: 177, column: 13)
!160474 = !DILocation(line: 178, column: 16, scope: !160473)
!160475 = !DILocation(line: 182, column: 13, scope: !160473)
!160476 = !DILocation(line: 184, column: 5, scope: !160466)
!160477 = !DILocation(line: 810, column: 1, scope: !58733, inlinedAt: !160478)
!160478 = distinct !DILocation(line: 77, column: 13, scope: !58735, inlinedAt: !160479)
!160479 = distinct !DILocation(line: 810, column: 1, scope: !58737, inlinedAt: !160480)
!160480 = distinct !DILocation(line: 184, column: 5, scope: !160466)
!160481 = !DILocation(line: 3513, column: 43, scope: !58740, inlinedAt: !160482)
!160482 = distinct !DILocation(line: 810, column: 1, scope: !58746, inlinedAt: !160483)
!160483 = distinct !DILocation(line: 810, column: 1, scope: !58748, inlinedAt: !160484)
!160484 = distinct !DILocation(line: 810, column: 1, scope: !58733, inlinedAt: !160478)
!160485 = !DILocation(line: 3513, column: 18, scope: !58740, inlinedAt: !160482)
end_hunk_1
