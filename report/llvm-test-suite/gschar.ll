inline.NumInlined: 14
begin_hunk_0_@show_proceed:bb.a
  %i.dh = tail call i32 (ptr, i64, i64, ...) @gs_translate_to_fixed(ptr noundef nonnull %i.a, i64 noundef %i.cz, i64 noundef %i.db) #12 ; 0 uses
  %i.di = load <2 x i64>, ptr %i.u, align 8, !tbaa !48
  %i.dj = add nsw <2 x i64> %i.di, splat (i64 2048)
  %i.dk = and <2 x i64> %i.dj, splat (i64 -4096)  ; 2 uses
  store <2 x i64> %i.dk, ptr %i.u, align 8, !tbaa !48
  %1 = sitofp <2 x i64> %i.dk to <2 x double>
  %2 = fmul nnan <2 x double> %1, splat (double 0x3F30000000000000)
  %3 = fptrunc <2 x double> %2 to <2 x float>     ; 2 uses
  %4 = extractelement <2 x float> %3, i64 0
  store float %4, ptr %i.v, align 8, !tbaa !101
  %5 = extractelement <2 x float> %3, i64 1
  store float %5, ptr %i.w, align 8, !tbaa !102
  store i32 0, ptr %i.x, align 8, !tbaa !55
  store ptr @continue_show_update, ptr %i.y, align 8, !tbaa !35
  %i.dl = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
end_hunk_0
