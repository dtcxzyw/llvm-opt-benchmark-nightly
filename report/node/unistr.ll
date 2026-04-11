inline.NumInlined: 391
inline.NumDeleted: 66
begin_hunk_0_@_ZN6icu_7813UnicodeString9doReverseEii:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.140 = phi ptr [ %.2, %bb.g ], [ %i.au, %.lr.ph.preheader ] ; 5 uses
  %i.ax = load i16, ptr %.140, align 2            ; 2 uses
  %i.ay = and i16 %i.ax, -1024
  %i.az = icmp eq i16 %i.ay, -9216
  br i1 %i.az, label %bb.e, label %4

bb.e:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.140, i64 2 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2            ; 2 uses
  %i.bc = and i16 %i.bb, -1024
  %i.bd = icmp eq i16 %i.bc, -10240
  br i1 %i.bd, label %bb.f, label %4

bb.f:                                             ; preds = %bb.e
  store i16 %i.bb, ptr %.140, align 2
  %3 = getelementptr inbounds nuw i8, ptr %.140, i64 4
  store i16 %i.ax, ptr %i.ba, align 2
  br label %bb.g

4:                                                ; preds = %bb.e, %.lr.ph
  %5 = getelementptr inbounds nuw i8, ptr %.140, i64 2
  br label %bb.g

bb.g:                                             ; preds = %4, %bb.f
  %.2 = phi ptr [ %3, %bb.f ], [ %5, %4 ]         ; 2 uses
  %i.be = icmp ult ptr %.2, %i.aw
  br i1 %i.be, label %.lr.ph, label %.loopexit, !llvm.loop !32

end_hunk_0
