inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@keyMetaSpecCleanup:bb.a
bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.027 = phi i32 [ %i.e, %.lr.ph ], [ %i.w, %bb.g ] ; 2 uses
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.027, i1 true) ; 2 uses
  %i.j = xor i32 %i.i, 31
  %i.k = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = zext nneg i32 %i.j to i64
end_hunk_0
begin_hunk_1_@keyMetaSpecCleanup:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %1 = lshr exact i32 -2147483648, %i.i
  %i.v = xor i32 %1, -1
  %i.w = and i32 %.027, %i.v                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
end_hunk_1
begin_hunk_2_@rdbLoadKeyMetadata:bb.a
  %.02029.i = phi i16 [ %i.cm, %.lr.ph.i ], [ %i.cx, %bb.u ] ; 2 uses
  %.02128.i = phi i32 [ %i.cl, %.lr.ph.i ], [ %i.cy, %bb.u ]
  %i.co = zext i16 %.02029.i to i32
  %i.cp = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.co, i1 true) ; 2 uses
  %i.cq = xor i32 %i.cp, 31
  %i.cr = icmp slt i32 %i.cq, %i.bk
  br i1 %i.cr, label %.thread.loopexit.split.loop.exit.i, label %bb.u

end_hunk_2
begin_hunk_3_@rdbLoadKeyMetadata:bb.a
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr i8, ptr %i.cs, i64 -8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !22
  %5 = lshr exact i32 -2147483648, %i.cp
  %i.cv = trunc nuw i32 %5 to i16
  %i.cw = xor i16 %i.cv, -1
  %i.cx = and i16 %.02029.i, %i.cw                ; 2 uses
end_hunk_3
begin_hunk_4_@rdbLoadKeyMetadata:bb.a
  %.02029.i50 = phi i16 [ %i.dk, %.lr.ph.i47 ], [ %i.dv, %bb.y ] ; 2 uses
  %.02128.i51 = phi i32 [ %i.dj, %.lr.ph.i47 ], [ %i.dw, %bb.y ]
  %i.dm = zext i16 %.02029.i50 to i32
  %i.dn = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.dm, i1 true) ; 2 uses
  %i.do = xor i32 %i.dn, 31
  %i.dp = icmp slt i32 %i.do, %i.bk
  br i1 %i.dp, label %.thread.loopexit.split.loop.exit.i56, label %bb.y

end_hunk_4
begin_hunk_5_@rdbLoadKeyMetadata:bb.a
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !22
  %i.ds = getelementptr i8, ptr %i.dq, i64 -8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !22
  %6 = lshr exact i32 -2147483648, %i.dn
  %i.dt = trunc nuw i32 %6 to i16
  %i.du = xor i16 %i.dt, -1
  %i.dv = and i16 %.02029.i50, %i.du              ; 2 uses
end_hunk_5
begin_hunk_6_@rdbLoadKeyMetadata:bb.a
bb.af:                                            ; preds = %bb.aj, %.lr.ph.i58
  %indvars.iv.i59 = phi i64 [ %i.eo, %.lr.ph.i58 ], [ %indvars.iv.next.i60, %bb.aj ] ; 2 uses
  %.027.i = phi i32 [ %i.em, %.lr.ph.i58 ], [ %i.fd, %bb.aj ] ; 2 uses
  %i.ep = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.027.i, i1 true) ; 2 uses
  %i.eq = xor i32 %i.ep, 31
  %i.er = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.i59
  %i.es = load i64, ptr %i.er, align 8, !tbaa !22 ; 2 uses
  %i.et = zext nneg i32 %i.eq to i64
end_hunk_6
begin_hunk_7_@rdbLoadKeyMetadata:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %7 = lshr exact i32 -2147483648, %i.ep
  %i.fc = xor i32 %7, -1
  %i.fd = and i32 %.027.i, %i.fc                  ; 2 uses
  %indvars.iv.next.i60 = add nsw i64 %indvars.iv.i59, 1
end_hunk_7
