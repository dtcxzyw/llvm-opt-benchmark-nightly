begin_hunk_0
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !198
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.l
end_hunk_0
begin_hunk_1

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i32 %i.g, 134217727
  br i1 %i.i, label %ft_mem_realloc.exit.thread20, label %bb.e

ft_mem_realloc.exit.thread20:                     ; preds = %bb.d
  store ptr null, ptr %i.e, align 8, !tbaa !198
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_1
begin_hunk_2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !207
  br label %bb.l

bb.l:                                             ; preds = %ft_mem_realloc.exit, %FT_GlyphLoader_Adjust_Points.exit, %ft_mem_realloc.exit.thread20, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %FT_GlyphLoader_Adjust_Points.exit ], [ 64, %ft_mem_realloc.exit ], [ 10, %ft_mem_realloc.exit.thread20 ]
  ret i32 %.0
}

end_hunk_2
begin_hunk_3

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %i.j, 134217727
  br i1 %i.l, label %FT_GlyphLoader_CreateExtra.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_3
begin_hunk_4
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = tail call ptr %i.n(ptr noundef %i.b, i64 noundef %i.p) #33 ; 3 uses
  %.not24.i = icmp eq ptr %i.q, null
  br i1 %.not24.i, label %FT_GlyphLoader_CreateExtra.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
end_hunk_4
begin_hunk_5
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ft_mem_realloc.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.z = load i16, ptr %i.y, align 2, !tbaa !134
end_hunk_5
begin_hunk_6
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !207
  br label %bb.l

FT_GlyphLoader_CreateExtra.exit:                  ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ 10, %bb.d ], [ 64, %bb.e ]
  store ptr null, ptr %i.h, align 8, !tbaa !198
  br label %FT_GlyphLoader_Adjust_Points.exit.thread

bb.l:                                             ; preds = %bb.a, %bb.b, %FT_GlyphLoader_Adjust_Points.exit.i
  %i.ba = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %i.r, %FT_GlyphLoader_Adjust_Points.exit.i ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 7 uses
end_hunk_6
begin_hunk_7

bb.ah:                                            ; preds = %bb.ag
  %i.ed = icmp ugt i32 %i.eb, 134217727
  br i1 %i.ed, label %FT_GlyphLoader_CreateExtra.exit112, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
end_hunk_7
begin_hunk_8
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = tail call ptr %i.ef(ptr noundef %i.dx, i64 noundef %i.eh) #33 ; 3 uses
  %.not24.i102 = icmp eq ptr %i.ei, null
  br i1 %.not24.i102, label %FT_GlyphLoader_CreateExtra.exit112, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ei, i8 0, i64 %i.eh, i1 false)
end_hunk_8
begin_hunk_9
  %.not.i.i106 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i106, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %ft_mem_realloc.exit.thread.i104
  %i.eq = load i16, ptr %i.bb, align 2, !tbaa !134
  %i.er = sext i16 %i.eq to i64
end_hunk_9
begin_hunk_10
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !207
  br label %bb.ap

FT_GlyphLoader_CreateExtra.exit112:               ; preds = %bb.ai, %bb.ah
  %.0.i101 = phi i32 [ 10, %bb.ah ], [ 64, %bb.ai ]
  store ptr null, ptr %i.dz, align 8, !tbaa !198
  br label %FT_GlyphLoader_Adjust_Points.exit.thread

bb.ap:                                            ; preds = %bb.ae, %bb.af, %FT_GlyphLoader_Adjust_Points.exit.i109
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
end_hunk_10
begin_hunk_11
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !207
  br label %FT_GlyphLoader_Adjust_Points.exit

FT_GlyphLoader_Adjust_Points.exit.thread:         ; preds = %bb.aq, %bb.m, %ft_mem_realloc.exit99, %ft_mem_realloc.exit, %bb.ab, %bb.ar, %FT_GlyphLoader_CreateExtra.exit, %ft_mem_realloc.exit.thread121, %FT_GlyphLoader_CreateExtra.exit112
  %3 = phi i32 [ %.0.i101, %FT_GlyphLoader_CreateExtra.exit112 ], [ 10, %ft_mem_realloc.exit.thread121 ], [ 10, %bb.m ], [ %.134.i.i93, %ft_mem_realloc.exit99 ], [ %.134.i.i, %ft_mem_realloc.exit ], [ %i.dp, %bb.ab ], [ %i.gj, %bb.ar ], [ %.0.i, %FT_GlyphLoader_CreateExtra.exit ], [ 10, %bb.aq ]
  %i.hr = load ptr, ptr %0, align 8, !tbaa !183   ; 10 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !195 ; 2 uses
end_hunk_11
