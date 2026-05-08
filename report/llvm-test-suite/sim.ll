inline.NumInlined: 13
inline.NumDeleted: 1
begin_hunk_0_@diff:bb.a
  %ret.known.tr403 = phi i1 [ false, %.lr.ph405 ], [ true, %tailrecurse.backedge ] ; 7 uses
  %ret.tr402 = phi i32 [ poison, %.lr.ph405 ], [ %current.ret.tr, %tailrecurse.backedge ] ; 7 uses
  %.tr315401 = phi i32 [ %4, %.lr.ph405 ], [ %.tr315.be, %tailrecurse.backedge ] ; 4 uses
  %.tr314400 = phi i32 [ %3, %.lr.ph405 ], [ %.tr314.be, %tailrecurse.backedge ] ; 24 uses
  %.tr313399 = phi i32 [ %2, %.lr.ph405 ], [ %.tr313.be, %tailrecurse.backedge ] ; 6 uses
  %.tr312398 = phi ptr [ %1, %.lr.ph405 ], [ %.tr312.be, %tailrecurse.backedge ] ; 7 uses
  %.tr397 = phi ptr [ %0, %.lr.ph405 ], [ %.tr.be, %tailrecurse.backedge ] ; 7 uses
end_hunk_0
begin_hunk_1_@diff:bb.a
  %i.gx = zext nneg i32 %.tr314400 to i64         ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gx ; 4 uses
  store i32 0, ptr %i.gy, align 4, !tbaa !4
  %i.gz = add nsw i32 %.tr314400, -1              ; 3 uses
  %i.ha = load i32, ptr @r, align 4, !tbaa !4     ; 3 uses
  %i.hb = load ptr, ptr @SS, align 8, !tbaa !21   ; 2 uses
  %i.hc = zext nneg i32 %i.gz to i64              ; 3 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 0)
  %6 = xor i32 %smin, -1
  %7 = add i32 %.tr314400, %6                     ; 2 uses
  %i.hd = zext i32 %7 to i64
  %8 = add nuw nsw i64 %i.hd, 1                   ; 2 uses
  %min.iters.check = icmp ult i32 %7, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph357
  %i.he = sub i32 0, %i.ha                        ; 2 uses
  %n.vec = and i64 %8, 8589934584                 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hf = sub nsw i64 %i.hc, %n.vec
  %i.hg = trunc i64 %n.vec to i32
  %i.hh = mul i32 %i.hg, %i.he
  %i.hi = sub i32 %i.hh, %i.ek
  %i.hj = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
end_hunk_1
begin_hunk_2_@diff:bb.a
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %.lr.ph379, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph357, %middle.block
end_hunk_2
