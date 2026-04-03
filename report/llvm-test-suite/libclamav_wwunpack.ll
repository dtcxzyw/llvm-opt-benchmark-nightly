begin_hunk_0
  store i32 %i.oe, ptr %i.of, align 1
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 80 ; 2 uses
  %.val118 = load i32, ptr %i.og, align 1
  %i.oh = add i32 %7, 4095
  %i.oi = and i32 %i.oh, -4096
  %i.oj = sub i32 %.val118, %i.oi
  store i32 %i.oj, ptr %i.og, align 1
end_hunk_0
begin_hunk_1
  %.val117 = load i32, ptr %i.ok, align 1
  %i.ol = and i32 %.val117, 65535
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.om ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24 ; 2 uses
  %.not108152 = icmp eq i16 %8, 0
  br i1 %.not108152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fa
  %i.op = sub i32 %2, %3                          ; 3 uses
  %xtraiter299 = and i16 %8, 1
  %lcmp.mod300.not = icmp eq i16 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %9 = add nsw i16 %8, -1
  %10 = getelementptr inbounds nuw i8, ptr %i.on, i64 32 ; 2 uses
  %.val116.prol = load i32, ptr %10, align 1
  %11 = getelementptr inbounds nuw i8, ptr %i.on, i64 40 ; 2 uses
  %.val115.prol = load i32, ptr %11, align 1
  %12 = tail call i32 @llvm.umax.i32(i32 %.val115.prol, i32 %.val116.prol)
  %13 = add i32 %12, 4095
  %14 = and i32 %13, -4096                        ; 2 uses
  store i32 %14, ptr %10, align 1
  store i32 %14, ptr %11, align 1
  %15 = getelementptr inbounds nuw i8, ptr %i.on, i64 44
  %16 = getelementptr inbounds nuw i8, ptr %i.on, i64 36
  %.val.prol = load i32, ptr %16, align 1
  %17 = add i32 %i.op, %.val.prol
  store i32 %17, ptr %15, align 1
  %18 = getelementptr inbounds nuw i8, ptr %i.on, i64 64 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi ptr [ poison, %.lr.ph ], [ %18, %.prol.loopexit.unr-lcssa ]
  %.089154.unr = phi i16 [ %8, %.lr.ph ], [ %9, %.prol.loopexit.unr-lcssa ]
  %.1153.unr = phi ptr [ %i.oo, %.lr.ph ], [ %18, %.prol.loopexit.unr-lcssa ]
  %19 = icmp eq i16 %8, 1
  br i1 %19, label %._crit_edge, label %bb.fb

bb.fb:                                            ; preds = %.prol.loopexit, %bb.fb
  %.089154 = phi i16 [ %26, %bb.fb ], [ %.089154.unr, %.prol.loopexit ]
  %.1153 = phi ptr [ %i.ox, %bb.fb ], [ %.1153.unr, %.prol.loopexit ] ; 9 uses
  %20 = getelementptr inbounds nuw i8, ptr %.1153, i64 8 ; 2 uses
  %.val116 = load i32, ptr %20, align 1
  %i.oq = getelementptr inbounds nuw i8, ptr %.1153, i64 16 ; 2 uses
  %.val116.a = load i32, ptr %i.oq, align 1
  %21 = tail call i32 @llvm.umax.i32(i32 %.val116.a, i32 %.val116)
  %22 = add i32 %21, 4095
  %23 = and i32 %22, -4096                        ; 2 uses
  store i32 %23, ptr %20, align 1
  store i32 %23, ptr %i.oq, align 1
  %24 = getelementptr inbounds nuw i8, ptr %.1153, i64 20
  %i.or = getelementptr inbounds nuw i8, ptr %.1153, i64 12
  %.val115 = load i32, ptr %i.or, align 1
  %25 = add i32 %i.op, %.val115
  store i32 %25, ptr %24, align 1
  %26 = add i16 %.089154, -2                      ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %.1153, i64 48 ; 2 uses
  %.val116.1 = load i32, ptr %27, align 1
  %28 = getelementptr inbounds nuw i8, ptr %.1153, i64 56 ; 2 uses
  %.val115.1 = load i32, ptr %28, align 1
  %29 = tail call i32 @llvm.umax.i32(i32 %.val115.1, i32 %.val116.1)
  %i.os = add i32 %29, 4095
  %i.ot = and i32 %i.os, -4096                    ; 2 uses
  store i32 %i.ot, ptr %27, align 1
  store i32 %i.ot, ptr %28, align 1
  %i.ou = getelementptr inbounds nuw i8, ptr %.1153, i64 60
  %i.ov = getelementptr inbounds nuw i8, ptr %.1153, i64 52
  %.val = load i32, ptr %i.ov, align 1
  %i.ow = add i32 %i.op, %.val
  store i32 %i.ow, ptr %i.ou, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %.1153, i64 80 ; 2 uses
  %.not108 = icmp eq i16 %26, 0
  br i1 %.not108, label %._crit_edge, label %bb.fb, !llvm.loop !19

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.fb, %bb.fa
  %.1.lcssa = phi ptr [ %i.oo, %bb.fa ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ox, %bb.fb ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.1.lcssa, i8 0, i64 40, i1 false)
  br label %bb.fc

end_hunk_1
