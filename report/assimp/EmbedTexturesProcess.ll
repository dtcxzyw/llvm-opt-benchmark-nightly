inline.NumInlined: 439
inline.NumDeleted: 146
begin_hunk_0_@_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8
end_hunk_0
begin_hunk_1_@_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.l:                                             ; preds = %bb.k
  store ptr %i.bb, ptr %i.ax, align 8
  %7 = load i32, ptr %i.au, align 8
  %8 = add i32 %7, -1
  %i.bc = zext i32 %8 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.ay, i64 %i.bd, i1 false)
  %i.be = icmp eq ptr %i.ay, null
end_hunk_1
begin_hunk_2_@_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dq = call ptr @strncpy(ptr noundef nonnull %i.dp, ptr noundef %i.dn, i64 noundef %spec.store.select) #19 ; 0 uses
  %i.dr = load ptr, ptr %i.ax, align 8
  %9 = zext i32 %i.av to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %9
  store ptr %i.bf, ptr %i.ds, align 8
  %i.dt = load ptr, ptr %5, align 8               ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bo
end_hunk_2
