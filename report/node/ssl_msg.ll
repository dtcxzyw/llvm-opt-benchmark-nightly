inline.NumInlined: 137
inline.NumDeleted: 57
begin_hunk_0_@ssl_bitmask_set:bb.a
bb.i:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %.promoted53 = load i8, ptr %i.av, align 1, !tbaa !34
  %3 = xor i32 %i.b, 7
  %4 = shl nuw nsw i32 1, %3
  %i.aw = trunc nuw i32 %4 to i8
  %i.ax = or i8 %.promoted53, %i.aw               ; 2 uses
  %.not45 = icmp eq i32 %i.b, 7
  br i1 %.not45, label %.loopexit50, label %bb.j
end_hunk_0
begin_hunk_1_@ssl_bitmask_set:bb.a
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb ; 2 uses
  %.promoted56 = load i8, ptr %i.cc, align 1, !tbaa !34
  %5 = sub nuw nsw i32 8, %i.bz
  %6 = shl nuw nsw i32 1, %5
  %i.cd = trunc nuw i32 %6 to i8
  %i.ce = or i8 %.promoted56, %i.cd               ; 2 uses
  %.not48 = icmp eq i32 %i.bz, 1
  br i1 %.not48, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %7 = sub nuw nsw i32 9, %i.bz
  %8 = shl nuw nsw i32 1, %7
  %i.cf = trunc nuw i32 %8 to i8
  %i.cg = or i8 %i.ce, %i.cf                      ; 2 uses
  %.not48.1 = icmp eq i32 %i.bz, 2
  br i1 %.not48.1, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %9 = sub nuw nsw i32 10, %i.bz
  %10 = shl nuw nsw i32 1, %9
  %i.ch = trunc nuw i32 %10 to i8
  %i.ci = or i8 %i.cg, %i.ch                      ; 2 uses
  %.not48.2 = icmp eq i32 %i.bz, 3
  br i1 %.not48.2, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %11 = sub nuw nsw i32 11, %i.bz
  %12 = shl nuw nsw i32 1, %11
  %i.cj = trunc nuw i32 %12 to i8
  %i.ck = or i8 %i.ci, %i.cj                      ; 2 uses
  %.not48.3 = icmp eq i32 %i.bz, 4
  br i1 %.not48.3, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %13 = sub nuw nsw i32 12, %i.bz
  %14 = shl nuw nsw i32 1, %13
  %i.cl = trunc nuw i32 %14 to i8
  %i.cm = or i8 %i.ck, %i.cl                      ; 2 uses
  %.not48.4 = icmp eq i32 %i.bz, 5
  br i1 %.not48.4, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %15 = sub nuw nsw i32 13, %i.bz
  %16 = shl nuw nsw i32 1, %15
  %i.cn = trunc nuw i32 %16 to i8
  %i.co = or i8 %i.cm, %i.cn                      ; 2 uses
  %.not48.5 = icmp eq i32 %i.bz, 6
  br i1 %.not48.5, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %17 = sub nuw nsw i32 14, %i.bz
  %18 = shl nuw nsw i32 1, %17
  %i.cp = trunc nuw i32 %18 to i8
  %i.cq = or i8 %i.co, %i.cp
  br label %.loopexit

end_hunk_1
