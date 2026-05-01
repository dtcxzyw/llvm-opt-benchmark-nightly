inline.NumInlined: 88
inline.NumDeleted: 12
begin_hunk_0_@activeDefragCycle:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  store i32 %i.an, ptr %i.am, align 8, !tbaa !167
  %i.ao = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #14, !inline_history !196 ; 4 uses
  store ptr @defragStageDbKeys, ptr %i.ao, align 8, !tbaa !79
  %1 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @freeDefragKeysContext, ptr %1, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !82
  %i.aq = load ptr, ptr @defrag.5, align 8, !tbaa !197
end_hunk_0
begin_hunk_1_@activeDefragCycle:bb.a
  store i64 0, ptr %.sroa.425.0..sroa_idx.i, align 8, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 %i.an, ptr %i.av, align 8, !tbaa !167
  %i.aw = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #14, !inline_history !196 ; 4 uses
  store ptr @defragStageExpiresKvstore, ptr %i.aw, align 8, !tbaa !79
  %2 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @freeDefragKeysContext, ptr %2, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !82
  %i.ay = load ptr, ptr @defrag.5, align 8, !tbaa !197
end_hunk_1
begin_hunk_2_@activeDefragCycle:bb.a
  store i64 0, ptr %i.be, align 8, !tbaa !207
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 %i.an, ptr %i.bf, align 4, !tbaa !208
  %i.bg = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #14, !inline_history !196 ; 4 uses
  store ptr @defragStageSubexpires, ptr %i.bg, align 8, !tbaa !79
  %3 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @zfree, ptr %3, align 8, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.ba, ptr %i.bh, align 8, !tbaa !82
  %i.bi = load ptr, ptr @defrag.5, align 8, !tbaa !197
end_hunk_2
begin_hunk_3_@activeDefragCycle:bb.a
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !216
  %i.bx = call ptr @sdsnew(ptr noundef %i.bw) #12, !inline_history !196
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !217
  %i.by = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #14, !inline_history !196 ; 4 uses
  store ptr @defragModuleGlobals, ptr %i.by, align 8, !tbaa !79
  %4 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @freeDefragModelContext, ptr %4, align 8, !tbaa !81
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bt, ptr %i.bz, align 8, !tbaa !82
  %i.ca = load ptr, ptr @defrag.5, align 8, !tbaa !197
end_hunk_3
