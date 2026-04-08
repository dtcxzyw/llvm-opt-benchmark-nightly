inline.NumInlined: 263
inline.NumDeleted: 48
begin_hunk_0_@scan_once_unicode:bb.a
.preheader.i.preheader:                           ; preds = %PyUnicode_READ.exit166.i
  %i.nb = add nuw nsw i64 %.0130.i, 1
  %i.nc = tail call i64 @llvm.umax.i64(i64 %.val, i64 %i.nb) ; 2 uses
  %.1131.i261 = add i64 %.0130.i, 1               ; 2 uses
  %.not.i212.not262 = icmp slt i64 %.1131.i261, %.val
  br i1 %.not.i212.not262, label %.lr.ph, label %.critedge158.i

.preheader.i:                                     ; preds = %PyUnicode_READ.exit170.i
  %.1131.i = add i64 %.1131.i263, 1               ; 2 uses
  %.not.i212.not = icmp slt i64 %.1131.i, %.val
  br i1 %.not.i212.not, label %.lr.ph, label %.critedge158.i, !llvm.loop !70

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.1131.i263 = phi i64 [ %.1131.i, %.preheader.i ], [ %.1131.i261, %.preheader.i.preheader ] ; 9 uses
end_hunk_0
begin_hunk_1_@scan_once_unicode:bb.a
PyUnicode_READ.exit170.i:                         ; preds = %bb.ff, %bb.fe, %bb.fd
  %.0.i169.i = phi i32 [ %i.no, %bb.fd ], [ %i.nr, %bb.fe ], [ %i.nt, %bb.ff ]
  %i.nu = icmp ult i32 %.0.i169.i, 58
  br i1 %i.nu, label %.preheader.i, label %.critedge.i, !llvm.loop !70

bb.fg:                                            ; preds = %PyUnicode_READ.exit166.i, %PyUnicode_READ.exit164.i
  switch i32 %i.f, label %bb.fj [
end_hunk_1
begin_hunk_2_@scan_once_unicode:bb.a
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.of) #6
  br label %raise_stop_iteration.exit

.critedge.i:                                      ; preds = %PyUnicode_READ.exit170.i, %PyUnicode_READ.exit168.i, %bb.fk
  %.2.i = phi i64 [ %i.oe, %bb.fk ], [ %.1131.i263, %PyUnicode_READ.exit168.i ], [ %.1131.i263, %PyUnicode_READ.exit170.i ] ; 10 uses
  %i.ok = icmp slt i64 %.2.i, %i.lt
  br i1 %i.ok, label %bb.fp, label %.critedge2.i

end_hunk_2
begin_hunk_3_@scan_once_unicode:bb.a
  br i1 %i.pm, label %bb.gb, label %.critedge2.i

bb.gb:                                            ; preds = %PyUnicode_READ.exit181.i
  %i.pn = add nsw i64 %.2.i, 2                    ; 3 uses
  %.not150225.i.not = icmp slt i64 %i.pn, %.val
  br i1 %.not150225.i.not, label %.lr.ph.i, label %.critedge2.i

end_hunk_3
begin_hunk_4_@scan_once_unicode:bb.a
  %.not153.i = icmp eq ptr %i.ti, @PyFloat_Type
  br i1 %.not153.i, label %.thread215.i, label %bb.ht

.critedge158.i:                                   ; preds = %.preheader.i, %.preheader.i.preheader, %bb.hs, %PyUnicode_READ.exit201.i
  %.4.i253 = phi i64 [ %.4.i, %bb.hs ], [ %.4.i, %PyUnicode_READ.exit201.i ], [ %i.nc, %.preheader.i.preheader ], [ %i.nc, %.preheader.i ] ; 2 uses
  %i.tj = getelementptr i8, ptr %0, i64 48
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !46 ; 2 uses
  %.not154.i = icmp eq ptr %i.tk, @PyLong_Type
end_hunk_4
begin_hunk_5_@scan_once_unicode:bb.a

bb.ht:                                            ; preds = %.critedge158.i, %.thread.i
  %.not152211.i = phi i1 [ false, %.thread.i ], [ true, %.critedge158.i ]
  %.8207.i = phi i64 [ %.8209.i, %.thread.i ], [ %.4.i253, %.critedge158.i ] ; 3 uses
  %.0137.i = phi ptr [ %i.ti, %.thread.i ], [ %i.tk, %.critedge158.i ] ; 2 uses
  %.not155.i = icmp eq ptr %.0137.i, null
  br i1 %.not155.i, label %.thread215.i, label %bb.hu
end_hunk_5
begin_hunk_6_@scan_once_unicode:bb.a
  br label %.thread223.i

.thread215.i:                                     ; preds = %bb.ht, %.critedge158.i, %.thread.i
  %.8207222.i = phi i64 [ %.8207.i, %bb.ht ], [ %.4.i253, %.critedge158.i ], [ %.8209.i, %.thread.i ] ; 7 uses
  %.not152211220.i = phi i1 [ %.not152211.i, %bb.ht ], [ true, %.critedge158.i ], [ false, %.thread.i ]
  %i.ts = sub i64 %.8207222.i, %3                 ; 22 uses
  %i.tt = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ts) #6 ; 8 uses
end_hunk_6
