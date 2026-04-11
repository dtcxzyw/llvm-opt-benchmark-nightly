inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_face_load_hhea:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %i.b(ptr noundef %0, i64 noundef 1986553185, ptr noundef %1, ptr noundef null) #27 ; 2 uses
  %.not25 = icmp eq i32 %i.c, 0
  br i1 %.not25, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 %i.b(ptr noundef %0, i64 noundef 1751672161, ptr noundef %1, ptr noundef null) #27 ; 2 uses
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi i64 [ 504, %bb.b ], [ 400, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn ; 2 uses
  %i.e = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_hhea.metrics_header_fields, ptr noundef nonnull %.1) #27 ; 2 uses
  %.not26 = icmp eq i32 %i.e, 0
  br i1 %.not26, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@tt_face_load_hmtx:bb.a

bb.b:                                             ; preds = %bb.a
  %.0.v = select i1 %.not, i64 1256, i64 1264
  %.17 = select i1 %.not, i64 1432, i64 1440
  %.0 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v
  %.013 = getelementptr inbounds nuw i8, ptr %0, i64 %.17
  %i.e = load i64, ptr %i.a, align 8, !tbaa !160
  store i64 %i.e, ptr %.0, align 8, !tbaa !160
  %i.f = call i64 @FT_Stream_Pos(ptr noundef %1) #27
end_hunk_1
begin_hunk_2_@tt_face_get_colorline_stops:bb.a
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.as, ptr %i.at, align 8, !tbaa !525
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i16
end_hunk_2
begin_hunk_3_@tt_face_get_colorline_stops:bb.a
  br i1 %.not54, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.be = load i32, ptr %i.bd, align 1            ; 2 uses
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.be) ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 3 uses
  %i.bh = icmp eq i32 %i.be, -1
end_hunk_3
begin_hunk_4_@tt_face_get_colorline_stops:bb.a

bb.l:                                             ; preds = %get_deltas_for_var_index_base.exit, %bb.f
  %i.cs = phi i32 [ %.pre57, %get_deltas_for_var_index_base.exit ], [ %i.h, %bb.f ]
  %.pn = phi i64 [ 10, %get_deltas_for_var_index_base.exit ], [ 6, %bb.f ]
  %.049 = getelementptr inbounds nuw i8, ptr %i.m, i64 %.pn
  store ptr %.049, ptr %i.l, align 8, !tbaa !521
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.g, align 4, !tbaa !517
end_hunk_4
begin_hunk_5_@tt_face_get_metrics:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 5 uses
  %.not = icmp eq i8 %1, 0                        ; 4 uses
  %.071.in.v = select i1 %.not, i64 1256, i64 1264
  %.070.in.v = select i1 %.not, i64 1432, i64 1440
  %.070.in = getelementptr inbounds nuw i8, ptr %0, i64 %.070.in.v
  %.070 = load i64, ptr %.070.in, align 8, !tbaa !160 ; 3 uses
  %.071.in = getelementptr inbounds nuw i8, ptr %0, i64 %.071.in.v
  %.071 = load i64, ptr %.071.in, align 8, !tbaa !160
  %i.h = add i64 %.071, %.070                     ; 3 uses
  %i.i = select i1 %.not, i64 438, i64 542
end_hunk_5
begin_hunk_6_@sfnt_get_ps_name:bb.a

.thread274.i:                                     ; preds = %bb.ak
  %i.eo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pr.i) #30
  %i.ep = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %bb.bt

end_hunk_6
begin_hunk_7_@sfnt_get_ps_name:bb.a

.thread282.i:                                     ; preds = %bb.ao, %bb.am
  %.0151.lcssa.i = phi ptr [ %i.fn, %bb.am ], [ %.1152.i, %bb.ao ] ; 2 uses
  store i8 0, ptr %.0151.lcssa.i, align 1, !tbaa !16
  %i.gb = load ptr, ptr %i.j, align 8, !tbaa !429
  call void @ft_mem_free(ptr noundef %i.x, ptr noundef %i.gb) #27
end_hunk_7
begin_hunk_8_@sfnt_get_ps_name:bb.a

._crit_edge.i:                                    ; preds = %bb.bs, %bb.ar
  %.4155.lcssa.i = phi ptr [ %i.gs, %bb.ar ], [ %.9.i, %bb.bs ] ; 2 uses
  store i8 0, ptr %.4155.lcssa.i, align 1, !tbaa !16
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i, %.thread282.i, %.thread274.i
  %.10.i.a = phi ptr [ %.4155.lcssa.i, %._crit_edge.i ], [ %.0151.lcssa.i, %.thread282.i ], [ %i.ep, %.thread274.i ]
  %.6.i = phi ptr [ %i.gm, %._crit_edge.i ], [ %i.fg, %.thread282.i ], [ %.pr.i, %.thread274.i ] ; 5 uses
  %.10.i = getelementptr inbounds nuw i8, ptr %.10.i.a, i64 1
  %i.lv = ptrtoint ptr %.10.i to i64
  %i.lw = ptrtoint ptr %.6.i to i64
  %i.lx = sub i64 %i.lv, %i.lw                    ; 2 uses
  %i.ly = icmp sgt i64 %i.lx, 127
end_hunk_8
