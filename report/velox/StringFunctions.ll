begin_hunk_0
  %i.dl = icmp ult i32 %i.dj, 13
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dn = select i1 %i.dl, ptr %i.dm, ptr %i.di   ; 14 uses
  %i.do = zext i32 %i.dj to i64                   ; 20 uses
  %i.dp = icmp ult i32 %i.bg, 13
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dr = select i1 %i.dp, ptr %i.dq, ptr %.sroa.2.0.copyload.i.i21 ; 8 uses
end_hunk_0
begin_hunk_1
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us.a: ; preds = %bb.x, %.lr.ph.i.i.i.i.i.us.us
  %.033.i.i.i.i.i.us.us = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.us.us ], [ %i.ej, %bb.x ]
  %.02132.i.i.i.i.i.us.us = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.us.us ], [ %i.eh, %bb.x ]
  %i.ef = add i64 %.033.i.i.i.i.i.us.us, %reass.sub.i ; 2 uses
  %.not26.i.i.i.i.i.us.us.a = icmp eq i64 %i.ef, 0
  br i1 %.not26.i.i.i.i.i.us.us.a, label %.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us.a
  %6 = call ptr @memchr(ptr noundef %.02132.i.i.i.i.i.us.us, i32 noundef %i.ee, i64 noundef %i.ef) #28 ; 4 uses
  %.not26.i.i.i.i.i.us.us = icmp eq ptr %6, null
  br i1 %.not26.i.i.i.i.i.us.us, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us.us

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us.us: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us
  %bcmp.i.i.i.i.i.us.us = call i32 @bcmp(ptr nonnull %6, ptr nonnull readonly %i.dr, i64 %i.ds)
  %i.eg = icmp eq i32 %bcmp.i.i.i.i.i.us.us, 0
  br i1 %i.eg, label %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUlvE_clEv.exit.i.us.us, label %bb.x
end_hunk_1
begin_hunk_2
  br label %.thread.loopexit152.i

.preheader145.i.preheader.split.us.split:         ; preds = %.preheader145.i.preheader.split.us, %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUllE_clEl.exit.i.us
  %.1132.i.us104 = phi i64 [ %.6.i.us, %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUllE_clEl.exit.i.us ], [ 0, %.preheader145.i.preheader.split.us ] ; 8 uses
  %.1134.i.us103 = phi i64 [ %i.ff, %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUllE_clEl.exit.i.us ], [ 0, %.preheader145.i.preheader.split.us ] ; 9 uses
  %i.ep = sub nuw nsw i64 %i.do, %.1134.i.us103   ; 5 uses
  %.not2531.i.i.i.i.i.us = icmp samesign ult i64 %i.ep, %i.ds
  br i1 %.not2531.i.i.i.i.i.us, label %.thread.loopexit152.i, label %.lr.ph.i.i.i.i.i.us

end_hunk_2
begin_hunk_3
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a: ; preds = %bb.z, %.lr.ph.i.i.i.i.i.us
  %.033.i.i.i.i.i.us = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.us ], [ %i.ex, %bb.z ]
  %.02132.i.i.i.i.i.us = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.us ], [ %i.ev, %bb.z ]
  %i.et = add i64 %.033.i.i.i.i.i.us, %reass.sub.i ; 2 uses
  %.not26.i.i.i.i.i.us.a = icmp eq i64 %i.et, 0
  br i1 %.not26.i.i.i.i.i.us.a, label %.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a
  %7 = call ptr @memchr(ptr noundef %.02132.i.i.i.i.i.us, i32 noundef %i.es, i64 noundef %i.et) #28 ; 4 uses
  %.not26.i.i.i.i.i.us = icmp eq ptr %7, null
  br i1 %.not26.i.i.i.i.i.us, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us
  %bcmp.i.i.i.i.i.us = call i32 @bcmp(ptr nonnull %7, ptr nonnull readonly %i.dr, i64 %i.ds)
  %i.eu = icmp eq i32 %bcmp.i.i.i.i.i.us, 0
  br i1 %i.eu, label %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUlvE_clEv.exit.i.us, label %bb.z
end_hunk_3
begin_hunk_4
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us73: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.us72
  %.033.i.i.i.i.i.us74 = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.us72 ], [ %i.fn, %bb.ab ]
  %.02132.i.i.i.i.i.us75 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.us72 ], [ %i.fl, %bb.ab ]
  %i.fj = add i64 %.033.i.i.i.i.i.us74, %reass.sub.i ; 2 uses
  %.not26.i.i.i.i.i.us76 = icmp eq i64 %i.fj, 0
  br i1 %.not26.i.i.i.i.i.us76, label %.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us76

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us76: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us73
  %8 = call ptr @memchr(ptr noundef %.02132.i.i.i.i.i.us75, i32 noundef %i.fi, i64 noundef %i.fj) #28 ; 4 uses
  %.not26.i.i.i.i.i.us77 = icmp eq ptr %8, null
  br i1 %.not26.i.i.i.i.i.us77, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us77

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us77: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us76
  %bcmp.i.i.i.i.i.us78 = call i32 @bcmp(ptr nonnull %8, ptr nonnull readonly %i.dr, i64 %i.ds)
  %i.fk = icmp eq i32 %bcmp.i.i.i.i.i.us78, 0
  br i1 %i.fk, label %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUlvE_clEv.exit.i.us80, label %bb.ab
end_hunk_4
begin_hunk_5
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUlvE0_clEv.exit44.i, !llvm.loop !1986

.preheader145.i.preheader.split.split:            ; preds = %.preheader145.i.preheader.split, %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUllE_clEl.exit.i
  %.1132.i97 = phi i64 [ %i.hm, %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUllE_clEl.exit.i ], [ 0, %.preheader145.i.preheader.split ] ; 8 uses
  %.1134.i96 = phi i64 [ %i.hn, %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUllE_clEl.exit.i ], [ 0, %.preheader145.i.preheader.split ] ; 9 uses
  %i.gv = sub nuw nsw i64 %i.do, %.1134.i96       ; 5 uses
  %.not2531.i.i.i.i.i = icmp samesign ult i64 %i.gv, %i.ds
  br i1 %.not2531.i.i.i.i.i, label %.thread.loopexit152.i, label %.lr.ph.i.i.i.i.i

end_hunk_5
begin_hunk_6
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %.033.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i ], [ %i.hd, %bb.ah ]
  %.02132.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i ], [ %i.hb, %bb.ah ]
  %i.gz = add i64 %.033.i.i.i.i.i, %reass.sub.i   ; 2 uses
  %.not26.i.i.i.i.i.a = icmp eq i64 %i.gz, 0
  br i1 %.not26.i.i.i.i.i.a, label %.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a
  %9 = call ptr @memchr(ptr noundef %.02132.i.i.i.i.i, i32 noundef %i.gy, i64 noundef %i.gz) #28 ; 4 uses
  %.not26.i.i.i.i.i = icmp eq ptr %9, null
  br i1 %.not26.i.i.i.i.i, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %9, ptr nonnull readonly %i.dr, i64 %i.ds)
  %i.ha = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ha, label %_ZZN8facebook5velox9functions10stringCoreL7replaceILb0EEEmPcRKSt17basic_string_viewIcSt11char_traitsIcEESA_SA_bbENKUlvE_clEv.exit.i, label %bb.ah
end_hunk_6
begin_hunk_7
  %.pre160.i = sub i64 %i.do, %.us-phi
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ah, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us73, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us76, %bb.ab, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us, %bb.z, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us, %bb.x, %.thread.loopexit152.i
  %.pre-phi.i = phi i64 [ %.pre160.i, %.thread.loopexit152.i ], [ %i.ep, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a ], [ %i.do, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us.a ], [ %i.do, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us73 ], [ %i.do, %bb.x ], [ %i.do, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us ], [ %i.ep, %bb.z ], [ %i.ep, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us ], [ %i.do, %bb.ab ], [ %i.do, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us76 ], [ %i.gv, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a ], [ %i.gv, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i ], [ %i.gv, %bb.ah ] ; 3 uses
  %.3136.i = phi i64 [ %.us-phi, %.thread.loopexit152.i ], [ %.1134.i.us103, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us.a ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us73 ], [ 0, %bb.x ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us ], [ %.1134.i.us103, %bb.z ], [ %.1134.i.us103, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us ], [ 0, %bb.ab ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us76 ], [ %.1134.i96, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a ], [ %.1134.i96, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i ], [ %.1134.i96, %bb.ah ]
  %.3.i = phi i64 [ %.us-phi64, %.thread.loopexit152.i ], [ %.1132.i.us104, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us.a ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us73 ], [ 0, %bb.x ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.us ], [ %.1132.i.us104, %bb.z ], [ %.1132.i.us104, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us ], [ 0, %bb.ab ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us76 ], [ %.1132.i97, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a ], [ %.1132.i97, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i ], [ %.1132.i97, %bb.ah ] ; 3 uses
  %i.hp = icmp slt i64 %.pre-phi.i, 1
  br i1 %i.hp, label %.noexc13, label %bb.aj

end_hunk_7
