inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0_@_ZL17_Bocu1FromUnicodeP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.am, %.lr.ph246._crit_edge, %bb.l
  %.13 = phi ptr [ %.3177241.lcssa, %.lr.ph246._crit_edge ], [ %.4178, %bb.l ], [ %.10, %bb.am ], [ %.3177.ph, %.preheader ], [ %i.bc, %.loopexit.loopexit ]
  %.8 = phi i32 [ %.4162243.lcssa, %.lr.ph246._crit_edge ], [ %.6164, %bb.l ], [ %i.bz, %bb.am ], [ %.4162.ph, %.preheader ], [ %spec.select200, %.loopexit.loopexit ]
  %.7 = phi i32 [ %.3154244.lcssa, %.lr.ph246._crit_edge ], [ %i.bp, %bb.l ], [ %.6157, %bb.am ], [ %.3154.ph, %.preheader ], [ %i.es, %.loopexit.loopexit ]
  %.6 = phi ptr [ %.2245.lcssa, %.lr.ph246._crit_edge ], [ %.3, %bb.l ], [ %.5, %bb.am ], [ %.2.ph, %.preheader ], [ %i.ay, %.loopexit.loopexit ]
  %2 = tail call i32 @llvm.smin.i32(i32 %.7, i32 0)
  %i.et = sub nsw i32 0, %2
  store i32 %i.et, ptr %i.o, align 4
  store i32 %.8, ptr %i.q, align 8
  store ptr %.6, ptr %i.c, align 8
  store ptr %.13, ptr %i.g, align 8
end_hunk_0
begin_hunk_1_@_ZL28_Bocu1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %.14250 = phi ptr [ %.3239324.lcssa, %.lr.ph331._crit_edge ], [ %.4240, %bb.l ], [ %.11247, %bb.an ], [ %.3239.ph, %.preheader ], [ %i.be, %.loopexit.loopexit ]
  %.14 = phi ptr [ %.3221326.lcssa, %.lr.ph331._crit_edge ], [ %.4222, %bb.l ], [ %.11, %bb.an ], [ %.3221.ph, %.preheader ], [ %i.bf, %.loopexit.loopexit ]
  %.8 = phi i32 [ %.4214327.lcssa, %.lr.ph331._crit_edge ], [ %.6216, %bb.l ], [ %i.cd, %bb.an ], [ %.4214.ph, %.preheader ], [ %spec.select268, %.loopexit.loopexit ]
  %.7209 = phi i32 [ %.3205328.lcssa, %.lr.ph331._crit_edge ], [ %i.bt, %bb.l ], [ %.6208, %bb.an ], [ %.3205.ph, %.preheader ], [ %i.fg, %.loopexit.loopexit ]
  %.7 = phi ptr [ %.3330.lcssa, %.lr.ph331._crit_edge ], [ %.4, %bb.l ], [ %.6, %bb.an ], [ %.3.ph, %.preheader ], [ %i.az, %.loopexit.loopexit ]
  %2 = tail call i32 @llvm.smin.i32(i32 %.7209, i32 0)
  %i.fh = sub nsw i32 0, %2
  store i32 %i.fh, ptr %i.q, align 4
  store i32 %.8, ptr %i.s, align 8
  store ptr %.7, ptr %i.c, align 8
  store ptr %.14250, ptr %i.g, align 8
end_hunk_1
