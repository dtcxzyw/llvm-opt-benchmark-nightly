inline.NumInlined: 101
inline.NumDeleted: 16
begin_hunk_0_@hermes_g_strtod:bb.a
  %.0102.i.i = phi ptr [ %.1.i.i.i.i, %i2b.exit.i.i ], [ %i.aen, %bb.hb ] ; 3 uses
  %reass.sub183 = sub i32 %i.aet, %i.adl
  %.neg185.i.i = add i32 %reass.sub183, 1
  %i.aeu = add i32 %.neg185.i.i, %.1108.neg219.i.i ; 3 uses
  store i32 %i.aeu, ptr %i.b, align 4, !tbaa !3
  %.not.i.i156.i.i = icmp eq ptr %i.aes, null
  br i1 %.not.i.i156.i.i, label %bb.he, label %bb.hd
end_hunk_0
begin_hunk_1_@hermes_g_strtod:bb.a
bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.0103.i.i = phi ptr [ %i.afl, %bb.hi ], [ %.1.i.i157.i.i, %bb.hk ], [ %.1.i.i157.i.i, %bb.hj ] ; 4 uses
  %.1.i681.i = phi ptr [ %.0102.i.i, %bb.hi ], [ %i.afn, %bb.hk ], [ %.0102.i.i, %bb.hj ] ; 2 uses
  %4 = call i32 @llvm.smin.i32(i32 %i.aeu, i32 0) ; 3 uses
  %.0105.i.i = call i32 @llvm.smax.i32(i32 %i.aeu, i32 0)
  %i.afo = getelementptr inbounds nuw i8, ptr %.0103.i.i, i64 20
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !40
end_hunk_1
begin_hunk_2_@hermes_g_strtod:bb.a
  %spec.select27.i.i.i.i = select i1 %.not25.i.i.i.i, i32 1073741824, i32 %i.agb
  %.not2428.i.i.i.i = icmp slt i32 %.319.i.i.i.i, 0
  %.020.i.i.i.i = select i1 %.not2428.i.i.i.i, i32 %.3.i.i.i.i, i32 %spec.select27.i.i.i.i
  %reass.sub.i.i.i = add nsw i32 %4, 28
  %spec.select.i.i.i = add nsw i32 %reass.sub.i.i.i, %.020.i.i.i.i
  %i.agc = and i32 %spec.select.i.i.i, 31         ; 3 uses
  %i.agd = add nuw nsw i32 %i.agc, %.0105.i.i     ; 2 uses
  %.not184.i.i = icmp eq i32 %i.agd, 0
  br i1 %.not184.i.i, label %bb.hn, label %bb.hm
end_hunk_2
begin_hunk_3_@hermes_g_strtod:bb.a

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.2.i.i = phi ptr [ %i.age, %bb.hm ], [ %.1.i681.i, %bb.hl ] ; 3 uses
  %.not136.i.i = icmp eq i32 %i.agc, %4
  br i1 %.not136.i.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %5 = sub nsw i32 %i.agc, %4
  %i.agf = call fastcc ptr @lshift(ptr noundef nonnull %3, ptr noundef nonnull %.0103.i.i, i32 noundef %5)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
end_hunk_3
