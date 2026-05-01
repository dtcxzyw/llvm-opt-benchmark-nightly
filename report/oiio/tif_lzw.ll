inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@LZWDecodeCompat
define internal range(i32 0, 2) i32 @LZWDecodeCompat(ptr noundef %0, ptr noundef writeonly captures(address) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61   ; 6 uses
  %.not = icmp eq i64 %i.d, 0
end_hunk_0
begin_hunk_1_@LZWDecodeCompat:bb.a
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !60
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %4 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !94 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !62 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
end_hunk_1
begin_hunk_2_@LZWDecodeCompat:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !65 ; 2 uses
  %i.cy = icmp sgt i64 %.2251, 0
  br i1 %i.cy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 7 uses
  %5 = extractelement <2 x i64> %4, i64 0
  %6 = extractelement <2 x i64> %4, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge
end_hunk_2
begin_hunk_3_@LZWDecodeCompat:bb.a
  %.0202467 = phi ptr [ %i.ct, %.lr.ph ], [ %.0202.be, %.backedge ] ; 9 uses
  %.0204466 = phi ptr [ %i.cx, %.lr.ph ], [ %.0204.be, %.backedge ] ; 4 uses
  %.0207465 = phi ptr [ %i.cv, %.lr.ph ], [ %.0207.be, %.backedge ] ; 10 uses
  %.0214464 = phi i64 [ %5, %.lr.ph ], [ %.0214.be, %.backedge ] ; 2 uses
  %.0220463 = phi i64 [ %i.cr, %.lr.ph ], [ %.0220.be, %.backedge ] ; 4 uses
  %.0223462 = phi i64 [ %6, %.lr.ph ], [ %.0223.be, %.backedge ] ; 4 uses
  %.0233461 = phi i32 [ %i.co, %.lr.ph ], [ %.0233.be, %.backedge ] ; 6 uses
  %.0238460 = phi ptr [ %i.cc, %.lr.ph ], [ %.0238.be, %.backedge ] ; 4 uses
  %.3252459 = phi i64 [ %.2251, %.lr.ph ], [ %.3252.be, %.backedge ] ; 15 uses
end_hunk_3
begin_hunk_4_@LZWDecodeCompat:bb.a
  %i.ho = add nsw i64 %.4253.prol, -1             ; 2 uses
  %prol.iter1162.next = add i64 %prol.iter1162, 1 ; 2 uses
  %prol.iter1162.cmp.not = icmp eq i64 %prol.iter1162.next, %xtraiter1160
  br i1 %prol.iter1162.cmp.not, label %.prol.loopexit1148, label %.prol.preheader1147, !llvm.loop !95

.prol.loopexit1148:                               ; preds = %.prol.preheader1147, %bb.aa
  %.4253.unr = phi i64 [ %.3252459, %bb.aa ], [ %i.ho, %.prol.preheader1147 ]
end_hunk_4
begin_hunk_5_@LZWDecodeCompat:bb.a
  %.2206 = phi ptr [ %.0204466, %.thread285 ], [ %.1205, %.prol.loopexit1148 ], [ %i.ek, %.thread291 ], [ %i.iu, %.loopexit298 ], [ %i.cx, %bb.e ], [ %.1205, %.new1149 ], [ %.0204466, %.loopexit.loopexit970.split.loop.exit ], [ %.0204.be, %.loopexit.loopexit970.split.loop.exit1335 ]
  %.1203 = phi ptr [ %.0202467, %.thread285 ], [ %i.fv, %.prol.loopexit1148 ], [ %.0202467, %.thread291 ], [ %.0202467, %.loopexit298 ], [ %i.ct, %bb.e ], [ %i.fv, %.new1149 ], [ %.0202467, %.loopexit.loopexit970.split.loop.exit ], [ %.0202.be, %.loopexit.loopexit970.split.loop.exit1335 ]
  %.4 = phi i64 [ %.0468, %.thread285 ], [ %i.dx, %.prol.loopexit1148 ], [ %.2.lcssa, %.thread291 ], [ %i.ff, %.loopexit298 ], [ %i.cl, %bb.e ], [ %i.dx, %.new1149 ], [ %i.dx, %.loopexit.loopexit970.split.loop.exit ], [ %.0.be, %.loopexit.loopexit970.split.loop.exit1335 ]
  %i.jb = phi <2 x i64> [ %i.df, %.thread285 ], [ %i.hc, %.prol.loopexit1148 ], [ %i.ei, %.thread291 ], [ %i.iw, %.loopexit298 ], [ %4, %bb.e ], [ %i.hc, %.new1149 ], [ %i.iy, %.loopexit.loopexit970.split.loop.exit ], [ %i.ja, %.loopexit.loopexit970.split.loop.exit1335 ]
  %i.jc = load ptr, ptr %i.cb, align 8, !tbaa !69
  %i.jd = ptrtoint ptr %.6244 to i64
  %i.je = ptrtoint ptr %i.jc to i64
end_hunk_5
begin_hunk_6_@LZWDecodeCompat:bb.a
  store i64 %.4, ptr %i.cj, align 8, !tbaa !71
  %i.jh = trunc nuw i32 %.2235 to i16
  store i16 %i.jh, ptr %i.cm, align 8, !tbaa !60
  store <2 x i64> %i.jb, ptr %i.cp, align 8, !tbaa !94
  store i64 %.2222, ptr %i.cq, align 8, !tbaa !62
  store ptr %.1203, ptr %i.cs, align 8, !tbaa !64
  store ptr %.1208, ptr %i.cu, align 8, !tbaa !63
end_hunk_6
begin_hunk_7_@llvm.smin.i32
!91 = distinct !{!91, !77}
!92 = distinct !{!92, !77}
!93 = distinct !{!93, !77}
!94 = !{!11, !11, i64 0}
!95 = distinct !{!95, !77}
end_hunk_7
