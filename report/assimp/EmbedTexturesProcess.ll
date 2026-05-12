inline.NumInlined: 439
inline.NumDeleted: 146
begin_hunk_0_@_ZN6Assimp20EmbedTexturesProcess7ExecuteEP7aiScene:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.aiString, align 4           ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.o, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN6Assimp20EmbedTexturesProcess7ExecuteEP7aiScene:bb.a
  br label %bb.o

bb.d:                                             ; preds = %.lr.ph42, %bb.e
  %4 = phi i32 [ 0, %.lr.ph42 ], [ %6, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
end_hunk_1
begin_hunk_2_@_ZN6Assimp20EmbedTexturesProcess7ExecuteEP7aiScene:bb.a
  br i1 %i.w, label %bb.d, label %._crit_edge43, !llvm.loop !7

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %5 = phi i32 [ %4, %bb.d ], [ %6, %._crit_edge ] ; 2 uses
  %.02939 = phi i32 [ 1, %bb.d ], [ %i.y, %._crit_edge ] ; 4 uses
  %i.x = call noundef i32 @aiGetMaterialTextureCount(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i32 noundef %.02939) ; 2 uses
  %.not44 = icmp eq i32 %i.x, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.f
  %6 = phi i32 [ %5, %bb.f ], [ %8, %bb.n ]       ; 2 uses
  %i.y = add nuw nsw i32 %.02939, 1               ; 2 uses
  %exitcond45.not = icmp eq i32 %i.y, 27
  br i1 %exitcond45.not, label %bb.e, label %bb.f, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.f, %bb.n
  %7 = phi i32 [ %8, %bb.n ], [ %5, %bb.f ]       ; 3 uses
  %.02838 = phi i32 [ %i.ba, %bb.n ], [ 0, %bb.f ] ; 3 uses
  %i.z = call noundef i32 @aiGetMaterialTexture(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i32 noundef %.02939, i32 noundef %.02838, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.aa = load i8, ptr %i.m, align 4
end_hunk_2
begin_hunk_3_@_ZN6Assimp20EmbedTexturesProcess7ExecuteEP7aiScene:bb.a
  %i.as = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.ar) #19
  store i32 %i.as, ptr %2, align 4
  %i.at = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef %.02939, i32 noundef %.02838) ; 0 uses
  %i.au = add i32 %7, 1                           ; 2 uses
  store i32 %i.au, ptr %i.b, align 4
  br label %bb.n

end_hunk_3
begin_hunk_4_@_ZN6Assimp20EmbedTexturesProcess7ExecuteEP7aiScene:bb.a
  resume { ptr, i32 } %i.av

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l, %.lr.ph
  %8 = phi i32 [ %7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.au, %bb.l ], [ %7, %.lr.ph ] ; 2 uses
  %i.ba = add nuw i32 %.02838, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10
end_hunk_4
begin_hunk_5_@_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8
end_hunk_5
begin_hunk_6_@_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.l:                                             ; preds = %bb.k
  store ptr %i.bb, ptr %i.ax, align 8
  %i.bc = zext i32 %i.av to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.ay, i64 %i.bd, i1 false)
  %i.be = icmp eq ptr %i.ay, null
end_hunk_6
begin_hunk_7_@_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dq = call ptr @strncpy(ptr noundef nonnull %i.dp, ptr noundef %i.dn, i64 noundef %spec.store.select) #19 ; 0 uses
  %i.dr = load ptr, ptr %i.ax, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.bc
  store ptr %i.bf, ptr %i.ds, align 8
  %i.dt = load ptr, ptr %5, align 8               ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bo
end_hunk_7
