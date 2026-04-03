begin_hunk_0
  br i1 %.not943, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.j, %bb.s
  %i.cd = phi i32 [ %i.dl, %bb.s ], [ 16, %bb.j ] ; 2 uses
  %.16941446 = phi i8 [ %i.dk, %bb.s ], [ %.06931595, %bb.j ] ; 4 uses
  %.17001445 = phi i32 [ %i.di, %bb.s ], [ %.06991594, %bb.j ] ; 2 uses
  %.17321444 = phi i32 [ %i.dh, %bb.s ], [ 0, %bb.j ]
end_hunk_0
begin_hunk_1
  %.2701 = phi i32 [ %i.db, %bb.r ], [ %.17001445, %.preheader ] ; 2 uses
  %.2695 = phi i8 [ %narrow, %bb.r ], [ %.16941446, %.preheader ]
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %.pre-phi) ; 5 uses
  %2 = and i32 %.17321444, 65535
  %i.de = shl nuw i32 %2, %i.dd
  %i.df = sub nuw nsw i32 32, %i.dd
  %i.dg = lshr i32 %.2701, %i.df
  %i.dh = or disjoint i32 %i.dg, %i.de            ; 2 uses
  %i.di = shl i32 %.2701, %i.dd                   ; 2 uses
  %i.dj = trunc nuw nsw i32 %i.dd to i8
  %i.dk = sub nuw i8 %.2695, %i.dj                ; 2 uses
  %i.dl = sub nuw nsw i32 %i.cd, %i.dd            ; 2 uses
  %.not944 = icmp eq i32 %i.dl, 0
  br i1 %.not944, label %bb.t, label %.preheader, !llvm.loop !213

bb.t:                                             ; preds = %bb.s
end_hunk_1
begin_hunk_2
  %i.ps = lshr i32 %.12711, %i.pr
  %i.pt = or disjoint i32 %i.ps, %i.pq            ; 2 uses
  %i.pu = shl i32 %.12711, %i.pp                  ; 2 uses
  %i.pv = sub nuw i8 %.12, %i.po                  ; 2 uses
  %i.pw = sub nuw i8 %.16891530, %i.po            ; 2 uses
  %.not1004 = icmp eq i8 %i.pw, 0
  br i1 %.not1004, label %._crit_edge1533, label %.lr.ph1532, !llvm.loop !224

end_hunk_2
begin_hunk_3
  %i.un = lshr i32 %.16715, %i.um
  %i.uo = or disjoint i32 %i.un, %i.ul            ; 2 uses
  %i.up = shl i32 %.16715, %i.uk                  ; 2 uses
  %i.uq = sub nuw i8 %.16, %i.uj                  ; 2 uses
  %i.ur = sub nuw i8 %.26901508, %i.uj            ; 2 uses
  %.not993 = icmp eq i8 %i.ur, 0
  br i1 %.not993, label %._crit_edge1533, label %.lr.ph1510, !llvm.loop !229

end_hunk_3
begin_hunk_4
  %i.zi = lshr i32 %.20719, %i.zh
  %i.zj = or disjoint i32 %i.zi, %i.zg            ; 2 uses
  %i.zk = shl i32 %.20719, %i.zf                  ; 2 uses
  %i.zl = sub nuw i8 %.20, %i.ze                  ; 2 uses
  %i.zm = sub nuw i8 %.36911464, %i.ze            ; 2 uses
  %.not971 = icmp eq i8 %i.zm, 0
  br i1 %.not971, label %._crit_edge1467.loopexit, label %.lr.ph1466, !llvm.loop !234

end_hunk_4
begin_hunk_5
  %i.aei = lshr i32 %.24723, %i.aeh
  %i.aej = or disjoint i32 %i.aei, %i.aeg         ; 2 uses
  %i.aek = shl i32 %.24723, %i.aef                ; 2 uses
  %i.ael = sub nuw i8 %.24, %i.aee                ; 2 uses
  %i.aem = sub nuw i8 %.46921486, %i.aee          ; 2 uses
  %.not979 = icmp eq i8 %i.aem, 0
  br i1 %.not979, label %._crit_edge1533, label %.lr.ph1488, !llvm.loop !239

end_hunk_5
begin_hunk_6
  %.30 = phi i8 [ %narrow956, %bb.go ], [ %.291585, %bb.gg ]
  %i.ail = tail call i32 @llvm.umin.i32(i32 %i.ahl, i32 %.pre-phi1746) ; 5 uses
  %i.aim = shl i32 %.168121583, %i.ail
  %i.ain = sub nuw nsw i32 32, %i.ail
  %i.aio = lshr i32 %.30729, %i.ain
  %i.aip = or disjoint i32 %i.aio, %i.aim         ; 2 uses
  %i.aiq = shl i32 %.30729, %i.ail                ; 3 uses
  %i.air = trunc nuw nsw i32 %i.ail to i8
  %i.ais = sub nuw i8 %.30, %i.air                ; 3 uses
  %i.ait = sub nuw nsw i32 %i.ahl, %i.ail         ; 2 uses
  %.not949 = icmp eq i32 %i.ait, 0
  br i1 %.not949, label %bb.gq, label %.backedge

.backedge:                                        ; preds = %bb.gp, %bb.gq
  %.be = phi i32 [ %i.ait, %bb.gp ], [ 8, %bb.gq ]
  %.168121583.be = phi i32 [ %i.aip, %bb.gp ], [ 0, %bb.gq ]
  br label %bb.gg, !llvm.loop !249

end_hunk_6
