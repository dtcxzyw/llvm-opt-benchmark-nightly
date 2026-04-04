begin_hunk_0
  %i.b = icmp ne i64 %2, 8
  %i.c = zext i1 %i.b to i32
  %i.d = lshr i64 %2, 3                           ; 25 uses
  %6 = and i64 %2, -8                             ; 2 uses
  %7 = and i64 %2, -8                             ; 2 uses
  %8 = and i64 %2, -8                             ; 2 uses
  %i.e = and i64 %2, -8                           ; 2 uses
  %min.iters.check864 = icmp ult i64 %2, 4
  %min.iters.check866 = icmp ult i64 %2, 32
  %n.mod.vf868 = and i64 %2, 28
end_hunk_0
begin_hunk_1
  br i1 %i.fs, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ii = getelementptr i8, ptr %.0216, i64 %8
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.z
end_hunk_1
begin_hunk_2
  br i1 %min.iters.check763, label %.preheader386.preheader982, label %vector.memcheck754

vector.memcheck754:                               ; preds = %.preheader386.preheader
  %scevgep755 = getelementptr i8, ptr %.1342, i64 %8
  %bound0759 = icmp ult ptr %.1342, %scevgep758
  %bound1760 = icmp ult ptr %.1217340, %scevgep755
  %found.conflict761 = and i1 %bound0759, %bound1760
end_hunk_2
begin_hunk_3
  %i.li = mul i64 %2, %i.lh
  %scevgep708 = getelementptr i8, ptr %.0218, i64 %i.li
  %i.lj = mul i64 %2, %indvar
  %i.lk = sub i64 %7, %i.lj
  %scevgep681 = getelementptr i8, ptr %.0218, i64 %i.lk
  %i.ll = tail call i32 %3(ptr noundef %.1219352, ptr noundef %.0) #2 ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, -1
end_hunk_3
begin_hunk_4
  br i1 %min.iters.check687, label %.preheader384.preheader980, label %vector.memcheck680

vector.memcheck680:                               ; preds = %.preheader384.preheader
  %scevgep682 = getelementptr i8, ptr %.1221351, i64 %7
  %bound0683 = icmp ult ptr %.1219352, %scevgep682
  %bound1684 = icmp ult ptr %.1221351, %scevgep681
  %found.conflict685 = and i1 %bound0683, %bound1684
end_hunk_4
begin_hunk_5
  br i1 %min.iters.check613, label %.preheader388.preheader984, label %vector.memcheck606

vector.memcheck606:                               ; preds = %.preheader388.preheader
  %scevgep607 = getelementptr i8, ptr %.1217.lcssa, i64 %6
  %i.ou = mul i64 %2, %indvar
  %i.ov = sub i64 %6, %i.ou
  %scevgep608 = getelementptr i8, ptr %.0218, i64 %i.ov
  %bound0609 = icmp ult ptr %.1217.lcssa, %scevgep608
  %bound1610 = icmp ult ptr %.1219352, %scevgep607
end_hunk_5
