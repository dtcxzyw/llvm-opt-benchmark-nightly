begin_hunk_0
  store i32 %i.oe, ptr %i.of, align 1
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 80 ; 2 uses
  %.val118 = load i32, ptr %i.og, align 1
  %9 = and i32 %7, 4095
  %.not107 = icmp eq i32 %9, 0
  %10 = select i1 %.not107, i32 0, i32 4096
  %i.oh = add i32 %10, %7
  %i.oi = and i32 %i.oh, -4096
  %i.oj = sub i32 %.val118, %i.oi
  store i32 %i.oj, ptr %i.og, align 1
end_hunk_0
begin_hunk_1
  %.val117 = load i32, ptr %i.ok, align 1
  %i.ol = and i32 %.val117, 65535
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24 ; 2 uses
  %.not108152 = icmp eq i16 %8, 0
  br i1 %.not108152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fa
  %i.op = sub i32 %2, %3
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph, %bb.fb
  %.089154 = phi i16 [ %8, %.lr.ph ], [ %11, %bb.fb ]
  %.1153 = phi ptr [ %i.oo, %.lr.ph ], [ %i.ox, %bb.fb ] ; 5 uses
  %11 = add i16 %.089154, -1                      ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.1153, i64 8 ; 2 uses
  %.val116.a = load i32, ptr %i.oq, align 1
  %i.or = getelementptr inbounds nuw i8, ptr %.1153, i64 16 ; 2 uses
  %.val115 = load i32, ptr %i.or, align 1
  %12 = tail call i32 @llvm.umax.i32(i32 %.val115, i32 %.val116.a) ; 2 uses
  %13 = and i32 %12, 4095
  %.not109 = icmp eq i32 %13, 0
  %14 = select i1 %.not109, i32 0, i32 4096
  %i.os = add i32 %14, %12
  %i.ot = and i32 %i.os, -4096                    ; 2 uses
  store i32 %i.ot, ptr %i.oq, align 1
  store i32 %i.ot, ptr %i.or, align 1
  %i.ou = getelementptr inbounds nuw i8, ptr %.1153, i64 20
  %i.ov = getelementptr inbounds nuw i8, ptr %.1153, i64 12
  %.val = load i32, ptr %i.ov, align 1
  %i.ow = add i32 %i.op, %.val
  store i32 %i.ow, ptr %i.ou, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %.1153, i64 40 ; 2 uses
  %.not108 = icmp eq i16 %11, 0
  br i1 %.not108, label %._crit_edge, label %bb.fb, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.fb, %bb.fa
  %.1.lcssa = phi ptr [ %i.oo, %bb.fa ], [ %i.ox, %bb.fb ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.1.lcssa, i8 0, i64 40, i1 false)
  br label %bb.fc

end_hunk_1
