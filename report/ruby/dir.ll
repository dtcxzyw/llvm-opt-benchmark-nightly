inline.NumInlined: 217
inline.NumDeleted: 89
begin_hunk_0_@glob_helper:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.a = and i32 %8, 1
  %.not = icmp eq i32 %i.a, 0
  %i.b = add i64 %3, %2                           ; 12 uses
  tail call void @rb_check_stack_overflow() #21
  %i.c = icmp ult ptr %6, %7                      ; 3 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge.thread
end_hunk_0
begin_hunk_1_@glob_helper:bb.a
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.ad = add i64 %.03351.i, 2
  %i.ae = add i64 %i.ad, %i.y
  %i.af = tail call ptr @realloc(ptr noundef nonnull %.03152.i, i64 noundef %i.ae) #28 ; 5 uses
  %.not44.i = icmp eq ptr %i.af, null
  br i1 %.not44.i, label %bb.x, label %bb.v
end_hunk_1
begin_hunk_2_@glob_helper:bb.a
  %i.cx = phi i64 [ 0, %bb.ap ], [ %i.cw, %bb.aq ] ; 2 uses
  %i.cy = getelementptr i8, ptr %1, i64 %2
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.da = sub i64 %3, %i.cx                       ; 5 uses
  %.not.i371 = icmp ne i32 %4, 0                  ; 2 uses
  %i.db = zext i1 %.not.i371 to i64
  %i.dc = add i64 %i.da, 1                        ; 2 uses
  %i.dd = add i64 %i.dc, %i.db                    ; 2 uses
  %i.de = icmp slt i64 %i.dd, 0
  br i1 %i.de, label %rb_mul_size_overflow.exit.i.i.i375, label %glob_alloc_n.exit.i372

end_hunk_2
begin_hunk_3_@glob_helper:bb.a
  br i1 %.not.i371, label %bb.au, label %bb.av

bb.au:                                            ; preds = %ruby_nonempty_memcpy.exit.i374
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.da
  store i8 47, ptr %i.dg, align 1, !tbaa !20
  br label %bb.av

bb.av:                                            ; preds = %ruby_nonempty_memcpy.exit.i374, %bb.au
  %.018.i = phi i64 [ %i.dc, %bb.au ], [ %i.da, %ruby_nonempty_memcpy.exit.i374 ]
  %i.dh = getelementptr i8, ptr %i.df, i64 %.018.i
  store i8 0, ptr %i.dh, align 1, !tbaa !20
  %i.di = load ptr, ptr %9, align 8, !tbaa !17
end_hunk_3
begin_hunk_4_@glob_helper:bb.a
  %or.cond368.not = or i1 %.not352, %or.cond363
  %.not.i386 = icmp ne i32 %4, 0                  ; 2 uses
  %i.gt = zext i1 %.not.i386 to i64               ; 3 uses
  %i.gu = add i64 %i.b, 1                         ; 2 uses
  %25 = add i64 %i.gu, %i.gt
  %.not.i.i389 = icmp eq i64 %i.b, 0
  %i.gv = select i1 %.not351, i32 1, i32 2        ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 16
end_hunk_4
begin_hunk_5_@glob_helper:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.hk = ptrtoint ptr %24 to i64                 ; 2 uses
  %i.hl = add i64 %3, %i.gt
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.backedge, %glob_opendir.exit
end_hunk_5
begin_hunk_6_@glob_helper:bb.a
bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.cf, %bb.cc
  %.0285 = phi i32 [ -2, %bb.cc ], [ -2, %bb.cf ], [ -2, %bb.cd ], [ 4, %bb.ce ]
  %.0284 = phi i32 [ 0, %bb.cc ], [ 1, %bb.cf ], [ 1, %bb.cd ], [ 2, %bb.ce ] ; 2 uses
  %i.ih = add i64 %25, %i.hz                      ; 2 uses
  %i.ii = icmp slt i64 %i.ih, 0
  br i1 %i.ii, label %rb_mul_size_overflow.exit.i.i.i392, label %glob_alloc_n.exit.i387

end_hunk_6
begin_hunk_7_@glob_helper:bb.a
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %ruby_nonempty_memcpy.exit.i390
  %.018.i391 = phi i64 [ %i.gu, %bb.cj ], [ %i.b, %ruby_nonempty_memcpy.exit.i390 ]
  %i.il = getelementptr i8, ptr %i.ij, i64 %.018.i391 ; 2 uses
  %.not.i21.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i21.i, label %bb.cm, label %bb.cl
end_hunk_7
begin_hunk_8_@glob_helper:bb.a

._crit_edge558:                                   ; preds = %bb.df, %bb.cz, %.preheader
  %.0288.lcssa = phi ptr [ %i.jf, %.preheader ], [ %.3291.us, %bb.cz ], [ %.3291, %bb.df ]
  %i.kr = add i64 %i.hl, %i.hz
  %i.ks = call fastcc i32 @glob_helper(i32 noundef %0, ptr noundef nonnull %i.ij, i64 noundef %2, i64 noundef %i.kr, i32 noundef 1, i32 noundef %.2287.fr, ptr noundef %i.jf, ptr noundef %.0288.lcssa, i32 noundef %i.go, ptr noundef %9, i64 noundef %10, ptr noundef %11) ; 2 uses
  call void @free(ptr noundef %i.ij) #21
  call void @free(ptr noundef %i.jf) #21
end_hunk_8
begin_hunk_9_@glob_helper:bb.a
.lr.ph550:                                        ; preds = %.preheader504
  %.not.i413 = icmp ne i32 %4, 0                  ; 2 uses
  %i.ll = zext i1 %.not.i413 to i64
  %i.lm = add i64 %i.b, 1                         ; 2 uses
  %i.ln = add i64 %i.lm, %i.ll
  %.not.i.i416 = icmp eq i64 %i.b, 0
  br label %bb.dl

.lr.ph540:                                        ; preds = %.preheader505, %.lr.ph540
end_hunk_9
begin_hunk_10_@glob_helper:bb.a

._crit_edge547:                                   ; preds = %bb.dz, %bb.dw
  %.4292.lcssa = phi ptr [ %i.ms, %bb.dw ], [ %.5293, %bb.dz ]
  %i.nd = add i64 %i.ln, %.0                      ; 2 uses
  %i.ne = icmp slt i64 %i.nd, 0
  br i1 %i.ne, label %rb_mul_size_overflow.exit.i.i.i421, label %glob_alloc_n.exit.i414

end_hunk_10
begin_hunk_11_@glob_helper:bb.a
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %ruby_nonempty_memcpy.exit.i417
  %.018.i418 = phi i64 [ %i.lm, %bb.ec ], [ %i.b, %ruby_nonempty_memcpy.exit.i417 ]
  %i.nh = getelementptr i8, ptr %i.nf, i64 %.018.i418 ; 2 uses
  %.not.i21.i419 = icmp eq i64 %.0, 0
  br i1 %.not.i21.i419, label %bb.eg, label %bb.ee
end_hunk_11
