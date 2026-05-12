inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@keyMetaSpecCleanup:bb.a
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.027 = phi i32 [ %i.e, %.lr.ph ], [ %i.w, %bb.g ] ; 2 uses
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.027, i1 true) ; 2 uses
  %1 = xor i32 %i.i, 31
  %i.j = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = zext nneg i32 %1 to i64
end_hunk_0
begin_hunk_1_@rdbLoadKeyMetadata:bb.a
  %.02128.i = phi i32 [ %i.cl, %.lr.ph.i ], [ %i.cy, %bb.u ]
  %i.co = zext i16 %.02029.i to i32
  %i.cp = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.co, i1 true) ; 2 uses
  %5 = xor i32 %i.cp, 31
  %i.cq = icmp slt i32 %5, %i.bk
  br i1 %i.cq, label %.thread.loopexit.split.loop.exit.i, label %bb.u

end_hunk_1
begin_hunk_2_@rdbLoadKeyMetadata:bb.a

.lr.ph.i47:                                       ; preds = %bb.w
  %i.dl = sext i32 %i.dj to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i47
end_hunk_2
begin_hunk_3_@rdbLoadKeyMetadata:bb.a
  %.02128.i51 = phi i32 [ %i.dj, %.lr.ph.i47 ], [ %i.dv, %bb.y ]
  %i.dm = zext i16 %.02029.i50 to i32
  %i.dn = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.dm, i1 true) ; 2 uses
  %6 = xor i32 %i.dn, 31
  %7 = icmp slt i32 %6, %i.bk
  br i1 %7, label %.thread.loopexit.split.loop.exit.i56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.i49 ; 2 uses
end_hunk_3
begin_hunk_4_@rdbLoadKeyMetadata:bb.a
  %indvars.iv.i59 = phi i64 [ %i.en, %.lr.ph.i58 ], [ %indvars.iv.next.i60, %bb.aj ] ; 2 uses
  %.027.i = phi i32 [ %i.el, %.lr.ph.i58 ], [ %i.fc, %bb.aj ] ; 2 uses
  %i.eo = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.027.i, i1 true) ; 2 uses
  %8 = xor i32 %i.eo, 31
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.i59
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !22 ; 2 uses
  %i.er = zext nneg i32 %8 to i64
  %i.es = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 144
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !14
end_hunk_4
