inline.NumInlined: 14
begin_hunk_0_@show_proceed:bb.a
  %i.dh = tail call i32 (ptr, i64, i64, ...) @gs_translate_to_fixed(ptr noundef nonnull %i.a, i64 noundef %i.cz, i64 noundef %i.db) #12 ; 0 uses
  %i.di = load <2 x i64>, ptr %i.u, align 8, !tbaa !48
  %i.dj = add nsw <2 x i64> %i.di, splat (i64 2048)
  %i.dk = and <2 x i64> %i.dj, splat (i64 -4096)  ; 3 uses
  %1 = extractelement <2 x i64> %i.dk, i64 0
  %2 = sitofp i64 %1 to double
  %3 = fmul nnan double %2, 0x3F30000000000000
  %4 = fptrunc double %3 to float
  store float %4, ptr %i.v, align 8, !tbaa !101
  store <2 x i64> %i.dk, ptr %i.u, align 8, !tbaa !48
  %5 = extractelement <2 x i64> %i.dk, i64 1
  %6 = sitofp i64 %5 to double
  %7 = fmul nnan double %6, 0x3F30000000000000
  %8 = fptrunc double %7 to float
  store float %8, ptr %i.w, align 8, !tbaa !102
  store i32 0, ptr %i.x, align 8, !tbaa !55
  store ptr @continue_show_update, ptr %i.y, align 8, !tbaa !35
  %i.dl = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
end_hunk_0
