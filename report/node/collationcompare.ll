begin_hunk_0
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.cy = load ptr, ptr %i.m, align 8             ; 3 uses
  br i1 %i.cw, label %.preheader360, label %.preheader366

.preheader360:                                    ; preds = %bb.p, %bb.s
  %.0262 = phi i64 [ %indvars.iv.next519, %bb.s ], [ 0, %bb.p ]
end_hunk_0
begin_hunk_1
    i32 16, label %.thread310
  ], !llvm.loop !14

.preheader366:                                    ; preds = %bb.p, %bb.w
  %.0247 = phi i32 [ %i.ey, %bb.w ], [ 0, %bb.p ] ; 2 uses
  %.0245 = phi i32 [ %i.ez, %bb.w ], [ 0, %bb.p ] ; 2 uses
  %.4 = phi i32 [ %.6, %bb.w ], [ undef, %bb.p ]
  %4 = sext i32 %.0247 to i64                     ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader366
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ %4, %.preheader366 ] ; 3 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = add i64 %i.dp, -144115192370823168
  %i.dr = icmp ult i64 %i.dq, -144115188075855872
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.dr, label %bb.t, label %.preheader365, !llvm.loop !15

.preheader365:                                    ; preds = %bb.t
  %5 = sext i32 %.0245 to i64                     ; 2 uses
  br label %.preheader365.a

.preheader365.a:                                  ; preds = %.preheader365.a, %.preheader365
  %indvars.iv509 = phi i64 [ %indvars.iv.next510, %.preheader365.a ], [ %5, %.preheader365 ] ; 3 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %indvars.iv509
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = lshr i64 %i.dt, 32                      ; 2 uses
end_hunk_1
begin_hunk_2
bb.u:                                             ; preds = %.preheader363, %._crit_edge443
  %.0241 = phi i32 [ %.1242.lcssa, %._crit_edge443 ], [ %i.dy, %.preheader363 ] ; 3 uses
  %.0239 = phi i32 [ %.1240.lcssa, %._crit_edge443 ], [ %i.dz, %.preheader363 ] ; 3 uses
  %.5 = phi i32 [ %.6, %._crit_edge443 ], [ %.4, %.preheader363 ]
  %i.ea = icmp sgt i32 %.0241, %.0247
  br i1 %i.ea, label %.lr.ph437.preheader, label %.preheader362

.lr.ph437.preheader:                              ; preds = %bb.u
end_hunk_2
begin_hunk_3
  %.1242.lcssa = phi i32 [ %.0241, %bb.u ], [ %i.ec, %.preheader362.loopexit ]
  %.0238.lcssa = phi i32 [ 0, %bb.u ], [ %i.ej, %.preheader362.loopexit ] ; 2 uses
  %.lcssa412 = phi i32 [ 28, %bb.u ], [ %i.ed, %.preheader362.loopexit ]
  %i.ee = icmp sgt i32 %.0239, %.0245
  br i1 %i.ee, label %.lr.ph442.preheader, label %._crit_edge443

.lr.ph442.preheader:                              ; preds = %.preheader362
end_hunk_3
begin_hunk_4
bb.w:                                             ; preds = %bb.v
  %i.ey = add nsw i32 %i.dy, 1
  %i.ez = add nsw i32 %i.dz, 1
  br label %.preheader366

.thread310:                                       ; preds = %bb.v, %bb.s, %bb.o
  %i.fa = and i32 %i.d, 1024
end_hunk_4
begin_hunk_5
  br i1 %i.ir, label %.loopexit, label %.preheader350

.loopexit:                                        ; preds = %._crit_edge443, %bb.s, %bb.bb, %.thread342, %.thread334, %bb.ad, %bb.ac, %.thread303, %bb.n, %.thread329, %bb.av, %bb.au, %bb.a
  %.17 = phi i32 [ 0, %bb.a ], [ %i.cp, %.thread303 ], [ %.3, %bb.s ], [ 0, %bb.n ], [ 0, %.thread329 ], [ 0, %bb.bb ], [ 0, %bb.av ], [ %i.hm, %.thread334 ], [ 0, %bb.au ], [ %i.iq, %.thread342 ], [ %i.gg, %bb.ac ], [ %i.gh, %bb.ad ], [ %.6, %._crit_edge443 ]
  ret i32 %.17
}

end_hunk_5
