begin_hunk_0
bb.ba:                                            ; preds = %bb.az
  %i.hk = udiv i32 %i.o, 12
  %i.hl = zext i32 %.01930 to i64                 ; 2 uses
  %invariant.op = sub i32 12, %.01930
  br label %bb.bb

bb.bb:                                            ; preds = %bb.by, %bb.ba
end_hunk_0
begin_hunk_1
  %i.ju = getelementptr inbounds nuw i8, ptr %.val2219, i64 %i.jj
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 %.0.copyload.i2359, ptr %i.jv, align 1
  %i.jw = add i32 %.91944, %invariant.op          ; 2 uses
  %i.jx = icmp slt i32 %i.jw, 13
  br i1 %i.jx, label %bb.by, label %bb.bn

end_hunk_1
begin_hunk_2
bb.bl:                                            ; preds = %bb.bk
  %i.if = lshr i32 %i.o, 4
  %i.ig = zext i32 %.02300 to i64                 ; 2 uses
  %invariant.op = sub i32 16, %.02300
  br label %bb.bm

bb.bm:                                            ; preds = %bb.co, %bb.bl
end_hunk_2
begin_hunk_3
  %i.kq = getelementptr inbounds nuw i8, ptr %.val2624, i64 %i.kf
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store i64 %.0.copyload.i2702, ptr %i.kr, align 1
  %i.ks = add i32 %.9, %invariant.op              ; 2 uses
  %i.kt = icmp slt i32 %i.ks, 17
  br i1 %i.kt, label %bb.co, label %bb.bz

end_hunk_3
begin_hunk_4
.split1997.us:                                    ; preds = %bb.am, %bb.u
  %i.fa = lshr i32 %i.g, 3
  %i.fb = zext i32 %.01523 to i64
  %invariant.op = sub i32 8, %.01523
  br label %bb.an

bb.an:                                            ; preds = %bb.bg, %.split1997.us
end_hunk_4
begin_hunk_5
  %.val1760 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1760, i64 %i.gq
  store i32 %i.gh, ptr %i.gu, align 1
  %i.gv = add i32 %.31540, %invariant.op          ; 2 uses
  %i.gw = icmp slt i32 %i.gv, 9
  br i1 %i.gw, label %bb.bg, label %bb.ay

end_hunk_5
begin_hunk_6
  %i.hu = zext i32 %i.hl to i64                   ; 2 uses
  %i.hv = add nuw nsw i64 %i.hu, 8                ; 3 uses
  %i.hw = add nuw nsw i64 %i.hu, 11               ; 3 uses
  %invariant.op = sub i32 20, %.03505
  br label %bb.am

bb.am:                                            ; preds = %bb.cb, %bb.al
end_hunk_6
begin_hunk_7
  %i.mg = load i32, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.mh = add i32 %i.mg, -32                      ; 2 uses
  store i32 %i.mh, ptr %i.a, align 8, !tbaa !32
  %i.mi = add i32 %.03504, %invariant.op          ; 3 uses
  %i.mj = icmp slt i32 %i.mi, 40
  br i1 %i.mj, label %bb.ca, label %bb.bh

end_hunk_7
begin_hunk_8
  %i.hv = zext i32 %.01811 to i64                 ; 2 uses
  %i.hw = zext i32 %i.ht to i64                   ; 4 uses
  %i.hx = add nuw nsw i64 %i.hw, 8                ; 3 uses
  %invariant.op = sub i32 16, %.01811
  br label %bb.av

bb.av:                                            ; preds = %bb.bn, %.split2448.us
end_hunk_8
begin_hunk_9
  %.val2143 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jt = getelementptr inbounds nuw i8, ptr %.val2143, i64 %i.jn
  store i64 %.0.copyload.i2271, ptr %i.jt, align 1
  %i.ju = add i32 %.9, %invariant.op              ; 2 uses
  %i.jv = icmp slt i32 %i.ju, 17
  br i1 %i.jv, label %bb.bn, label %bb.bf

end_hunk_9
begin_hunk_10
  %i.hi = zext i32 %.01758 to i64                 ; 5 uses
  %i.hj = add nuw nsw i64 %i.hi, 20               ; 2 uses
  %i.hk = add nuw nsw i64 %i.hi, 12               ; 2 uses
  %invariant.op = sub i32 24, %.01758
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %bb.aa
end_hunk_10
begin_hunk_11
  %i.kt = getelementptr inbounds nuw i8, ptr %.val2046, i64 %i.jr
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store i64 %.0.copyload.i2108, ptr %i.ku, align 1
  %i.kv = add i32 %.6, %invariant.op              ; 2 uses
  %i.kw = icmp slt i32 %i.kv, 25
  br i1 %i.kw, label %bb.an, label %bb.ai

end_hunk_11
begin_hunk_12
  %i.ql = add nuw nsw i64 %i.e, 16                ; 3 uses
  %i.qm = add nuw nsw i64 %i.qk, 16               ; 2 uses
  %i.qn = add nuw nsw i64 %i.e, 3                 ; 3 uses
  %invariant.op = sub i32 36, %.04279
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ed, %bb.cc
end_hunk_12
begin_hunk_13
  %.val5178 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.wc = getelementptr inbounds nuw i8, ptr %.val5178, i64 %i.vk
  store i64 %.0.copyload.i5380, ptr %i.wc, align 1
  %i.wd = add i32 %.8, %invariant.op              ; 2 uses
  %i.we = icmp slt i32 %i.wd, 37
  br i1 %i.we, label %bb.ed, label %bb.cz

end_hunk_13
