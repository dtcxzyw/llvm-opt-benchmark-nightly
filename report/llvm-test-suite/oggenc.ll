inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@vorbis_synthesis_blockin:bb.a
  %i.ak = trunc i64 %i.aj to i32                  ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = ashr i64 %i.am, %i.ah                   ; 6 uses
  %i.ao = trunc i64 %i.an to i32                  ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.aq = load i64, ptr %i.ap, align 8
end_hunk_0
begin_hunk_1_@vorbis_synthesis_blockin:bb.a
  %i.cf = ashr exact i64 %sext328, 32             ; 3 uses
  %wide.trip.count = and i64 %i.an, 2147483647    ; 4 uses
  %i.cg = shl i64 %i.an, 2
  %i.ch = and i64 %i.cg, 8589934588               ; 3 uses
  %wide.trip.count283 = and i64 %i.aj, 2147483647 ; 17 uses
  %wide.trip.count288 = and i64 %i.aj, 2147483647
  %wide.trip.count297 = zext i32 %i.cb to i64     ; 4 uses
end_hunk_1
begin_hunk_2_@vorbis_synthesis_blockin:bb.a
  %i.db = sub nsw i64 %i.cz, %i.da
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = add nsw i64 %i.bx, %i.bw
  %2 = shl nsw i64 %i.bs, 2
  %i.de = add nsw i64 %i.dd, %i.bs
  %i.df = shl nuw nsw i64 %wide.trip.count283, 2  ; 3 uses
  %i.dg = add nsw i64 %i.de, %wide.trip.count283
  %i.dh = shl nsw i64 %i.dg, 2
  %i.di = ashr exact i64 %sext328, 30
  %i.dj = sub nsw i64 %i.di, %i.df
  %min.iters.check467 = icmp samesign ult i64 %wide.trip.count, 8
  %n.vec470 = and i64 %i.an, 2147483640           ; 3 uses
  %cmp.n485 = icmp eq i64 %wide.trip.count, %n.vec470
end_hunk_2
begin_hunk_3_@vorbis_synthesis_blockin:bb.a
  br i1 %min.iters.check467, label %.lr.ph.preheader494, label %vector.memcheck456

vector.memcheck456:                               ; preds = %.lr.ph.preheader
  %3 = getelementptr i8, ptr %i.do, i64 %2
  %scevgep457 = getelementptr i8, ptr %3, i64 %i.ch ; 2 uses
  %scevgep458 = getelementptr i8, ptr %i.dx, i64 %i.ch
  %bound0459 = icmp ult ptr %i.dp, %i.dy
  %bound1460 = icmp ult ptr %i.du, %scevgep457
end_hunk_3
