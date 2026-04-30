inline.NumInlined: 10
begin_hunk_0_@InsertSym:bb.a
  store ptr %i.lv, ptr @xx_link, align 8, !tbaa !14
  store ptr %i.lv, ptr @zz_res, align 8, !tbaa !14
  store ptr %i.jn, ptr @zz_hold, align 8, !tbaa !14
  %i.ma = load ptr, ptr %i.jn, align 16, !tbaa !15 ; 3 uses
  store ptr %i.ma, ptr @zz_tmp, align 8, !tbaa !14
  %i.mb = load ptr, ptr %i.lv, align 8, !tbaa !15 ; 2 uses
  store ptr %i.mb, ptr %i.jn, align 16, !tbaa !15
end_hunk_0
begin_hunk_1_@InsertSym:bb.a
  store ptr %i.jn, ptr %i.mc, align 8, !tbaa !15
  store ptr %i.ma, ptr %i.lv, align 8, !tbaa !15
  %i.md = load ptr, ptr @zz_res, align 8, !tbaa !14
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %i.md, ptr %i.me, align 8, !tbaa !15
  %i.mf = load ptr, ptr @xx_link, align 8, !tbaa !14 ; 4 uses
  store ptr %i.mf, ptr @zz_res, align 8, !tbaa !14
end_hunk_1
begin_hunk_2_@InsertAlternativeName:bb.a
  store ptr %i.ch, ptr @xx_link, align 8, !tbaa !14
  store ptr %i.ch, ptr @zz_res, align 8, !tbaa !14
  store ptr %i.z, ptr @zz_hold, align 8, !tbaa !14
  %i.cm = load ptr, ptr %i.z, align 16, !tbaa !15 ; 3 uses
  store ptr %i.cm, ptr @zz_tmp, align 8, !tbaa !14
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !15 ; 2 uses
  store ptr %i.cn, ptr %i.z, align 16, !tbaa !15
end_hunk_2
begin_hunk_3_@InsertAlternativeName:bb.a
  store ptr %i.z, ptr %i.co, align 8, !tbaa !15
  store ptr %i.cm, ptr %i.ch, align 8, !tbaa !15
  %i.cp = load ptr, ptr @zz_res, align 8, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !15
  %i.cr = load ptr, ptr @xx_link, align 8, !tbaa !14 ; 4 uses
  store ptr %i.cr, ptr @zz_res, align 8, !tbaa !14
end_hunk_3
