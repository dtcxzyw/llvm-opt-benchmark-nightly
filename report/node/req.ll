inline.NumInlined: 52
inline.NumDeleted: 18
begin_hunk_0_@req_main:bb.a
  %.0441 = phi ptr [ null, %bb.a ], [ %.0441.be, %.backedge ] ; 51 uses
  %.0439 = phi ptr [ null, %bb.a ], [ %.0439.be, %.backedge ] ; 52 uses
  %.0436 = phi i32 [ -2, %bb.a ], [ %.0436.be, %.backedge ] ; 53 uses
  %.0431 = phi i32 [ 0, %bb.a ], [ %.0431.be, %.backedge ] ; 51 uses
  %.0424 = phi i32 [ 0, %bb.a ], [ %.0424.be, %.backedge ] ; 49 uses
  %.0422 = phi i32 [ 0, %bb.a ], [ %.0422.be, %.backedge ] ; 54 uses
  %.0420 = phi i32 [ 1, %bb.a ], [ %.0420.be, %.backedge ] ; 49 uses
  %.0418 = phi i32 [ 0, %bb.a ], [ %.0418.be, %.backedge ] ; 51 uses
  %.0414 = phi i32 [ 0, %bb.a ], [ %.0414.be, %.backedge ] ; 50 uses
  %.0412 = phi i32 [ 0, %bb.a ], [ %.0412.be, %.backedge ] ; 51 uses
  %.0410 = phi i32 [ 0, %bb.a ], [ %.0410.be, %.backedge ] ; 51 uses
  %.0408 = phi i32 [ 0, %bb.a ], [ %.0408.be, %.backedge ] ; 50 uses
  %.0406 = phi i32 [ 0, %bb.a ], [ %.0406.be, %.backedge ] ; 50 uses
  %.0404 = phi i32 [ 0, %bb.a ], [ %.0404.be, %.backedge ] ; 51 uses
  %.0402 = phi i32 [ 0, %bb.a ], [ %.0402.be, %.backedge ] ; 51 uses
  %.0400 = phi i32 [ 0, %bb.a ], [ %.0400.be, %.backedge ] ; 51 uses
  %.0397 = phi i32 [ 0, %bb.a ], [ %.0397.be, %.backedge ] ; 50 uses
  %.0394 = phi i64 [ 4097, %bb.a ], [ %.0394.be, %.backedge ] ; 50 uses
end_hunk_0
begin_hunk_1_@req_main:bb.a
  br i1 %.not564, label %.thread706, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %6 = icmp ne i32 %.0431, 0                      ; 9 uses
  br i1 %6, label %bb.ch, label %bb.bz

bb.bz:                                            ; preds = %bb.by
end_hunk_1
begin_hunk_2_@req_main:bb.a
  br i1 %i.mb, label %.thread706, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %i.mc = call fastcc i32 @make_REQ(ptr noundef %i.ma, ptr noundef %.1386732, ptr noundef %.0455, i32 noundef %8, i64 noundef %.2396)
  %.not609 = icmp eq i32 %i.mc, 0
  br i1 %.not609, label %bb.fy, label %bb.fz

end_hunk_2
begin_hunk_3_@req_main:bb.a

bb.ih:                                            ; preds = %bb.ig, %.thread753
  %i.pf = icmp eq i32 %.0412, 0                   ; 2 uses
  %.not3174 = icmp eq i32 %.0410, 0
  %.not3175 = icmp eq i32 %.0418, 0               ; 3 uses
  %9 = or i32 %.0418, %.0410
  %.not3176 = icmp eq i32 %.0404, 0               ; 3 uses
  %10 = or i32 %.0404, %9
  %.not3177 = icmp eq i32 %.0402, 0
  %11 = or i32 %.0402, %10
  %12 = icmp ne i32 %11, 0
  %or.cond31 = or i1 %i.pf, %12
  br i1 %or.cond31, label %bb.ii, label %bb.jt

bb.ii:                                            ; preds = %bb.ih
end_hunk_3
begin_hunk_4_@req_main:bb.a
  br i1 %i.pn, label %.thread706, label %bb.il

bb.il:                                            ; preds = %bb.ik
  br i1 %.not3177, label %bb.io, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.po = call ptr @X509_REQ_get0_pubkey(ptr noundef %.2500761) #12 ; 2 uses
end_hunk_4
begin_hunk_5_@req_main:bb.a
  br label %.thread706

bb.io:                                            ; preds = %.thread770, %bb.il
  br i1 %.not3174, label %bb.is, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.pt = call i64 @get_nameopt() #12             ; 2 uses
end_hunk_5
begin_hunk_6_@req_main:bb.a
  br label %bb.jt

bb.is:                                            ; preds = %bb.io
  br i1 %.not3176, label %bb.iv, label %bb.it

.thread855:                                       ; preds = %bb.iq
  br i1 %.not3176, label %.thread860, label %.thread857

.thread775:                                       ; preds = %.thread772
  br i1 %.not3176, label %.thread785, label %.thread781

bb.it:                                            ; preds = %bb.is
  br i1 %6, label %.thread857, label %.thread781
end_hunk_6
begin_hunk_7_@req_main:bb.a

bb.iv:                                            ; preds = %bb.iu, %bb.is
  %.1434779 = phi i32 [ %.1434780783, %bb.iu ], [ 1, %bb.is ] ; 3 uses
  br i1 %.not3175, label %bb.jf, label %bb.iw

.thread860:                                       ; preds = %.thread855
  br i1 %.not3175, label %bb.jf, label %.thread862

.thread785:                                       ; preds = %.thread775
  br i1 %.not3175, label %bb.jf, label %.thread789

bb.iw:                                            ; preds = %bb.iv
  br i1 %6, label %.thread862, label %.thread789
end_hunk_7
begin_hunk_8_@req_main:bb.a

bb.jn:                                            ; preds = %bb.jl, %bb.jf
  %i.rc = icmp ne ptr %.0504757, null
  %i.rd = and i1 %6, %i.rc
  %or.cond39 = and i1 %i.pf, %i.rd
  br i1 %or.cond39, label %bb.jo, label %bb.jt

end_hunk_8
