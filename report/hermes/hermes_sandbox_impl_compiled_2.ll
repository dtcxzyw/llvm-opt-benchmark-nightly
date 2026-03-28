begin_hunk_0
bb.d:                                             ; preds = %bb.a
  %i.n = zext i32 %.0.copyload.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val540, i64 %i.n
  %.0.copyload.i583 = load i16, ptr %i.o, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i583) #8, !srcloc !23
  %i.p = zext i16 %.0.copyload.i583 to i32        ; 6 uses
  %i.q = add nsw i32 %i.p, -48                    ; 6 uses
  switch i32 %i.q, label %bb.bh [
    i32 0, label %bb.q
end_hunk_0
begin_hunk_1
  br i1 %.not527, label %w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AParser0x3Chermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x2C0x20char16_t0x20const0x2A0x3E0x3A0x3AidentityEscape0x28char16_t0x29.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %2 = add i16 %.0.copyload.i583, -1
  %3 = icmp ult i16 %2, 127
  br i1 %3, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.he = tail call i32 @w2c_hermes_memchr(ptr noundef nonnull %0, i32 noundef 60231, i32 noundef %i.p, i32 noundef 16) #8
end_hunk_1
begin_hunk_2
.loopexit1419:                                    ; preds = %.preheader1418, %bb.z
  %.61210 = phi i32 [ %.41208, %bb.z ], [ %i.ff, %.preheader1418 ] ; 2 uses
  %.4 = phi i32 [ %.0, %bb.z ], [ %i.fg, %.preheader1418 ]
  %3 = icmp samesign ugt i32 %i.ab, 7
  br i1 %3, label %.preheader1416, label %.loopexit1417

.preheader1416:                                   ; preds = %.loopexit1419, %.preheader1416
  %.71211 = phi i32 [ %i.gw, %.preheader1416 ], [ %.61210, %.loopexit1419 ] ; 2 uses
end_hunk_2
begin_hunk_3
  %i.lo = getelementptr inbounds nuw i8, ptr %.val2955, i64 %i.ln
  %.0.copyload.i3144 = load i32, ptr %i.lo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3144) #8, !srcloc !19
  %.not2868 = icmp eq i32 %.0.copyload.i3144, 0   ; 2 uses
  br i1 %.not2868, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
end_hunk_3
begin_hunk_4
  %.12807 = phi i32 [ %i.iq, %bb.bi ], [ %i.ip, %bb.bk ], [ %i.lp, %bb.bj ] ; 3 uses
  %i.lr = phi i1 [ false, %bb.bi ], [ false, %bb.bk ], [ true, %bb.bj ]
  %.not2879 = phi i1 [ false, %bb.bi ], [ true, %bb.bk ], [ false, %bb.bj ] ; 4 uses
  %.12797 = phi i32 [ 2, %bb.bi ], [ 0, %bb.bk ], [ 1, %bb.bj ] ; 10 uses
  %i.ls = add nsw i32 %.12797, %.12807            ; 2 uses
  %.not2870 = icmp eq i32 %i.ls, 0
  br i1 %.not2870, label %.loopexit3233, label %bb.bm
end_hunk_4
begin_hunk_5
  br i1 %.not2879, label %.loopexit3228, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.not2890 = icmp eq i32 %i.ni, 0
  br i1 %.not2890, label %..thread_crit_edge, label %bb.dc

end_hunk_5
begin_hunk_6
  br i1 %.not2891, label %bb.de, label %bb.dd

bb.de:                                            ; preds = %bb.dd
  br i1 %.not2868, label %.thread, label %.loopexit3228

.thread:                                          ; preds = %..thread_crit_edge, %bb.de
  %.pre-phi3342 = phi i32 [ %.pre3341, %..thread_crit_edge ], [ %i.uc, %bb.de ]
end_hunk_6
