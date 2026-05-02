begin_hunk_0_@pkey_main:bb.a
  %.0126 = phi i32 [ 0, %bb.a ], [ %.0126.be, %.backedge ] ; 20 uses
  %.0124 = phi i32 [ 0, %bb.a ], [ %.0124.be, %.backedge ] ; 20 uses
  %.0121 = phi i32 [ 0, %bb.a ], [ %.0121.be, %.backedge ] ; 22 uses
  %.0119 = phi i32 [ 0, %bb.a ], [ %.0119.be, %.backedge ] ; 21 uses
  %.0117 = phi i32 [ 0, %bb.a ], [ %.0117.be, %.backedge ] ; 22 uses
  %.0114 = phi i32 [ 0, %bb.a ], [ %.0114.be, %.backedge ] ; 20 uses
  %.0112 = phi i32 [ 0, %bb.a ], [ %.0112.be, %.backedge ] ; 21 uses
end_hunk_0
begin_hunk_1_@pkey_main:bb.a
  br i1 %.not151, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %5 = icmp ne i32 %.0119, 0                      ; 2 uses
  %6 = icmp ne i32 %.0121, 0
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aa = load ptr, ptr @bio_err, align 8, !tbaa !16
end_hunk_1
begin_hunk_2_@pkey_main:bb.a
  br i1 %.not152, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %7 = icmp ne i32 %.0117, 0
  %i.ac = load i32, ptr %i.e, align 4
  %i.ad = icmp ne i32 %i.ac, 32773
  %or.cond3 = select i1 %7, i1 true, i1 %i.ad
end_hunk_2
begin_hunk_3_@pkey_main:bb.a

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.ag = icmp eq i32 %.0121, 0
  %8 = icmp ne i32 %.0124, 0                      ; 3 uses
  %or.cond5 = and i1 %i.ag, %8                    ; 2 uses
  %or.cond7 = and i1 %or.cond5, %5
  %spec.select = select i1 %or.cond7, i32 1, i32 %.0121 ; 3 uses
  %spec.select172 = select i1 %or.cond5, i32 0, i32 %.0119 ; 3 uses
  %9 = icmp ne i32 %.0117, 0                      ; 2 uses
  %i.ah = or i32 %.0117, %.0124
  %or.cond9.not = icmp eq i32 %i.ah, 0
  %.not153 = icmp eq i32 %spec.select172, 0
end_hunk_3
begin_hunk_4_@pkey_main:bb.a
  br label %.thread178

bb.ak:                                            ; preds = %bb.ai
  %10 = icmp ne i32 %.0126, 0                     ; 2 uses
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !5   ; 2 uses
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  br i1 %10, label %bb.al, label %bb.am
end_hunk_4
begin_hunk_5_@pkey_main:bb.a

bb.ba:                                            ; preds = %bb.ay
  %i.bp = icmp eq i32 %.0112, 0
  %or.cond17 = or i1 %10, %i.bp
  br i1 %or.cond17, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
end_hunk_5
begin_hunk_6_@pkey_main:bb.a
  br i1 %.not161, label %.thread178, label %bb.bt

bb.bn:                                            ; preds = %bb.bh
  %11 = or i32 %spec.select172, %spec.select
  %or.cond19.not = icmp eq i32 %11, 0
  br i1 %or.cond19.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cd = load ptr, ptr @bio_err, align 8, !tbaa !16
end_hunk_6
