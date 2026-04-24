inline.NumInlined: 26868
inline.NumDeleted: 24
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.val50131 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emr = getelementptr inbounds nuw i8, ptr %.val50131, i64 %i.ego
  store i32 %i.emq, ptr %i.emr, align 1
  %i.ems = add nuw nsw i32 %.4243876, 1           ; 2 uses
  %.not45689 = icmp eq i32 %i.ems, %i.ele
  br i1 %.not45689, label %bb.sa, label %bb.rv

end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars1727 = trunc i64 %indvars.iv.next to i32
  %.not1506 = icmp eq i32 %i.dy, %indvars1727
  br i1 %.not1506, label %.loopexit1701, label %bb.ah

.loopexit1701:                                    ; preds = %bb.ah, %bb.af
  %.21456 = phi i32 [ 0, %bb.af ], [ %i.dy, %bb.ah ]
  %i.fc = and i32 %i.o, 3                         ; 2 uses
  %.not1507 = icmp eq i32 %i.fc, 0
  br i1 %.not1507, label %.loopexit1700, label %.preheader1699

.preheader1699:                                   ; preds = %.loopexit1701, %.preheader1699
  %.11442.a = phi i32 [ %7, %.preheader1699 ], [ %.21456, %.loopexit1701 ] ; 2 uses
  %.11442 = phi i32 [ %i.fk, %.preheader1699 ], [ 0, %.loopexit1701 ]
  %i.fd = shl i32 %.11442.a, 3                    ; 2 uses
  %i.fe = add i32 %i.fd, %.11446
  %i.ff = add i32 %i.fd, %.0.copyload.i1643
  %i.fg = zext i32 %i.ff to i64
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
  %.val1618 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1618, i64 %i.fi
  store i64 %.0.copyload.i1649, ptr %i.fj, align 1
  %7 = add nsw i32 %.11442.a, 1
  %i.fk = add nuw nsw i32 %.11442, 1              ; 2 uses
  %.not1508 = icmp eq i32 %i.fk, %i.fc
  br i1 %.not1508, label %.loopexit1700, label %.preheader1699

end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
  %indvars.iv.next1733 = add nuw nsw i64 %indvars.iv1732, 4 ; 2 uses
  %indvars1735 = trunc i64 %indvars.iv.next1733 to i32
  %.not1514 = icmp eq i32 %i.is, %indvars1735
  br i1 %.not1514, label %.loopexit1696, label %bb.as

.loopexit1696:                                    ; preds = %bb.as, %bb.aq
  %.7 = phi i32 [ 0, %bb.aq ], [ %i.is, %bb.as ]
  %i.jw = and i32 %i.o, 3                         ; 2 uses
  %.not1515 = icmp eq i32 %i.jw, 0
  br i1 %.not1515, label %.loopexit1695, label %.preheader1694

.preheader1694:                                   ; preds = %.loopexit1696, %.preheader1694
  %.21450.a = phi i32 [ %8, %.preheader1694 ], [ %.7, %.loopexit1696 ] ; 2 uses
  %.21450 = phi i32 [ %i.ke, %.preheader1694 ], [ 0, %.loopexit1696 ]
  %i.jx = shl i32 %.21450.a, 3                    ; 2 uses
  %i.jy = add i32 %i.jx, %i.di
  %i.jz = add i32 %i.jx, %i.cm
  %i.ka = zext i32 %i.jz to i64
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
  %.val1606 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1606, i64 %i.kc
  store i64 %.0.copyload.i1661, ptr %i.kd, align 1
  %8 = add nsw i32 %.21450.a, 1
  %i.ke = add nuw nsw i32 %.21450, 1              ; 2 uses
  %.not1516 = icmp eq i32 %i.ke, %i.jw
  br i1 %.not1516, label %.loopexit1695, label %.preheader1694

end_hunk_4
