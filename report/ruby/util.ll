inline.NumInlined: 87
inline.NumDeleted: 13
begin_hunk_0_@ruby_dtoa:bb.a
  %i.bn = add nuw i32 %.1441, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #27 ; 17 uses
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %.not493 = icmp eq ptr %i.bp, null
  br i1 %.not493, label %Bclear.exit594, label %bb.ac

end_hunk_0
begin_hunk_1_@ruby_dtoa:bb.a

.loopexit828:                                     ; preds = %.lr.ph946, %bb.az, %.lr.ph958._crit_edge, %bb.aw, %._crit_edge953
  %.5414 = phi i32 [ %.2411, %.lr.ph958._crit_edge ], [ %.2411, %bb.az ], [ %.3412, %bb.aw ], [ %.3412, %._crit_edge953 ], [ %.3412, %.lr.ph946 ] ; 2 uses
  %.5 = phi ptr [ %.lcssa1282, %.lr.ph958._crit_edge ], [ %.lcssa1282, %bb.az ], [ %.lcssa922, %bb.aw ], [ %.lcssa922, %._crit_edge953 ], [ %i.ea, %.lr.ph946 ] ; 3 uses
  %.51069 = ptrtoint ptr %.5 to i64
  %i.gv = sub i64 %i.bq, %.51069
  %scevgep1070 = getelementptr i8, ptr %.5, i64 %i.gv ; 2 uses
  br label %bb.ba
end_hunk_1
begin_hunk_2_@ruby_dtoa:bb.a

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bc
  %i.hc = phi i8 [ 49, %bb.bc ], [ %i.hb, %.loopexit.loopexit ]
  %i.hd = phi ptr [ %scevgep1070, %bb.bc ], [ %i.gw, %.loopexit.loopexit ]
  %.6415 = phi i32 [ %i.ha, %bb.bc ], [ %.5414, %.loopexit.loopexit ]
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !11
end_hunk_2
begin_hunk_3_@ruby_dtoa:bb.a
  %.10744 = phi ptr [ %i.pu, %cmp.exit639 ], [ %i.pu, %cmp.exit639.thread ], [ %.7741, %bb.dv ], [ %i.pu, %bb.ek ] ; 3 uses
  %.3731 = phi ptr [ %.2730, %cmp.exit639 ], [ %.2730, %cmp.exit639.thread ], [ %.0728, %bb.dv ], [ %.2730, %bb.ek ] ; 3 uses
  %.11725 = phi ptr [ %.10724, %cmp.exit639 ], [ %.10724, %cmp.exit639.thread ], [ %.8, %bb.dv ], [ %.10724, %bb.ek ] ; 3 uses
  %.12 = phi ptr [ %.11, %cmp.exit639 ], [ %.11, %cmp.exit639.thread ], [ %i.ow, %bb.dv ], [ %.11, %bb.ek ] ; 3 uses
  %.121068 = ptrtoint ptr %.12 to i64
  %i.qm = sub i64 %i.bq, %.121068
  %scevgep.a = getelementptr i8, ptr %.12, i64 %i.qm
  br label %bb.em

bb.em:                                            ; preds = %bb.en, %cmp.exit639.thread771
  %.13 = phi ptr [ %.12, %cmp.exit639.thread771 ], [ %i.qn, %bb.en ] ; 4 uses
  %i.qn = getelementptr i8, ptr %.13, i64 -1      ; 4 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !11  ; 3 uses
  %i.qp = icmp eq i8 %i.qo, 57
end_hunk_3
begin_hunk_4_@ruby_dtoa:bb.a
  %.12726 = phi ptr [ %.5721, %cmp.exit607.thread754 ], [ %.4720, %cmp.exit607.thread ], [ %.10724, %.preheader817 ], [ %.11725, %bb.eo ], [ %.11725, %bb.ep ], [ %.11725, %bb.eq ], [ %.8, %bb.dw ], [ %.8, %bb.dg ], [ %.8, %.thread764 ], [ %.3719, %bb.ee ] ; 3 uses
  %.5714 = phi ptr [ %.4713, %cmp.exit607.thread754 ], [ %.3, %cmp.exit607.thread ], [ %.2712, %.preheader817 ], [ %.2712, %bb.eo ], [ %.2712, %bb.ep ], [ %.2712, %bb.eq ], [ %.2712, %bb.dw ], [ %.2712, %bb.dg ], [ %.2712, %.thread764 ], [ %.2712, %bb.ee ] ; 2 uses
  %.9418 = phi i32 [ %i.li, %cmp.exit607.thread754 ], [ %i.lg, %cmp.exit607.thread ], [ %.7416, %.preheader817 ], [ %i.qr, %bb.eo ], [ %.7416, %bb.ep ], [ %.7416, %bb.eq ], [ %.7416, %bb.dw ], [ %.7416, %bb.dg ], [ %.7416, %.thread764 ], [ %.7416, %bb.ee ] ; 2 uses
  %.16 = phi ptr [ %i.lh, %cmp.exit607.thread754 ], [ %i.bp, %cmp.exit607.thread ], [ %.14, %.preheader817 ], [ %.13, %bb.eo ], [ %.13, %bb.ep ], [ %.13, %bb.eq ], [ %i.oz, %bb.dw ], [ %i.np, %bb.dg ], [ %i.ot, %.thread764 ], [ %i.pm, %bb.ee ] ; 2 uses
  %.not.i640 = icmp eq ptr %.5714, null
  br i1 %.not.i640, label %Bclear.exit641, label %bb.er

end_hunk_4
begin_hunk_5_@ruby_dtoa:bb.a
Bclear.exit647:                                   ; preds = %bb.at, %.preheader825, %.lr.ph1373, %bb.ar, %.preheader, %Bclear.exit641, %Bclear.exit645, %.loopexit, %bb.az
  %.12746 = phi ptr [ %.11745, %Bclear.exit641 ], [ %.11745, %Bclear.exit645 ], [ %i.n, %.loopexit ], [ %i.n, %bb.az ], [ %i.n, %.preheader ], [ %i.n, %.preheader825 ], [ %i.n, %bb.ar ], [ %i.n, %.lr.ph1373 ], [ %i.n, %bb.at ]
  %.10419 = phi i32 [ %.9418, %Bclear.exit641 ], [ %.9418, %Bclear.exit645 ], [ %.6415, %.loopexit ], [ %.2411, %bb.az ], [ %.2411, %.preheader ], [ %.3412, %.preheader825 ], [ %.3412, %bb.ar ], [ %.2411, %.lr.ph1373 ], [ %.3412, %bb.at ]
  %.17 = phi ptr [ %.16, %Bclear.exit641 ], [ %.16, %Bclear.exit645 ], [ %.6, %.loopexit ], [ %.lcssa1282, %bb.az ], [ %i.gj, %.preheader ], [ %.2, %.preheader825 ], [ %i.dq, %bb.ar ], [ %i.ho, %.lr.ph1373 ], [ %i.em, %bb.at ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.12746) #25
  store i8 0, ptr %.17, align 1, !tbaa !11
  %i.qx = add i32 %.10419, 1
end_hunk_5
