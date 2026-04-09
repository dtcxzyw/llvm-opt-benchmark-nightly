inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@opj_image_comp_header_update:bb.a
  %i.ah = load i32, ptr %0, align 8, !tbaa !41
  %i.ai = tail call noundef i32 @llvm.umax.i32(i32 %i.y, i32 %i.ah)
  %i.aj = zext i32 %i.ai to i64
  %2 = zext i32 %i.ag to i64
  %i.ak = zext i32 %i.ad to i64
  %3 = zext i32 %i.q to i64
  %invariant.op = add i64 %i.aj, -1
  %invariant.op47 = add i64 %2, -1
  %invariant.op55 = add i64 %i.ak, -1
  %invariant.op49 = add i64 %3, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
end_hunk_0
begin_hunk_1_@opj_image_comp_header_update:bb.a
  %.04243 = phi i32 [ 0, %.lr.ph ], [ %i.bo, %bb.b ]
  %i.al = load i32, ptr %.044, align 8, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 4 uses
  %.reass = add i64 %i.am, %invariant.op
  %i.an = udiv i64 %.reass, %i.am                 ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.ar = zext i32 %i.aq to i64                   ; 4 uses
  %.reass46 = add i64 %i.ar, %invariant.op47
  %i.as = udiv i64 %.reass46, %i.ar               ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %.reass48 = add i64 %i.am, %invariant.op55
  %i.au = udiv i64 %.reass48, %i.am
  %.reass50 = add i64 %i.ar, %invariant.op49
  %i.av = udiv i64 %.reass50, %i.ar
  %i.aw = sub i64 %i.au, %i.an
  %i.ax = getelementptr inbounds nuw i8, ptr %.044, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !44
  %i.az = and i64 %i.aw, 4294967295
  %i.ba = zext i32 %i.ay to i64                   ; 3 uses
  %notmask = shl nuw i64 1, %i.ba                 ; 2 uses
  %4 = add nuw i64 %notmask, %i.az
  %i.bb = add i64 %4, -1
  %i.bc = lshr i64 %i.bb, %i.ba
  %i.bd = trunc i64 %i.bc to i32
  %i.be = sub i64 %i.av, %i.as
  %i.bf = and i64 %i.be, 4294967295
  %5 = add nuw i64 %notmask, %i.bf
  %i.bg = add i64 %5, -1
  %i.bh = lshr i64 %i.bg, %i.ba
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.044, i64 8
end_hunk_1
