inline.NumInlined: 12
inline.NumDeleted: 1
begin_hunk_0_@read_x_bits
define dso_local i32 @read_x_bits(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ashr i32 %1, 3
  %i.b = and i32 %1, 7                            ; 2 uses
  %i.c = sub nuw nsw i32 8, %i.b                  ; 5 uses
  %i.d = sext i32 %i.a to i64                     ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  %i.g = zext i8 %i.f to i32
  %notmask = shl nsw i32 -1, %i.c
  %3 = xor i32 %notmask, -1
  %i.h = and i32 %i.g, %3                         ; 2 uses
  %i.i = icmp sgt i32 %2, %i.c
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

end_hunk_0
begin_hunk_1_@five11:.lr.ph.i
  %.02537 = phi i32 [ %i.bf, %._crit_edge ], [ 0, %.lr.ph.i ]
  %i.h = ashr i32 %.02238, 3
  %i.i = and i32 %.02238, 7                       ; 3 uses
  %1 = sub nuw nsw i32 8, %i.i                    ; 2 uses
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr i8, ptr %0, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %i.m = zext i8 %i.l to i32
  %notmask.i = shl nsw i32 -1, %1
  %2 = xor i32 %notmask.i, -1
  %i.n = and i32 %i.m, %2                         ; 2 uses
  %i.o = icmp samesign ugt i32 %i.i, 3
  br i1 %i.o, label %.lr.ph.i27, label %read_x_bits.exit32

end_hunk_1
begin_hunk_2_@five11:.lr.ph.i
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.n, 8
  %i.t = or disjoint i32 %i.s, %i.r
  %3 = sub nuw nsw i32 16, %i.i
  br label %read_x_bits.exit32, !llvm.loop !22

read_x_bits.exit32:                               ; preds = %.lr.ph.i27, %.lr.ph40
  %.017.lcssa.i = phi i32 [ %1, %.lr.ph40 ], [ %3, %.lr.ph.i27 ]
  %.0.lcssa.i = phi i32 [ %i.n, %.lr.ph40 ], [ %i.t, %.lr.ph.i27 ]
  %i.u = add nsw i32 %.017.lcssa.i, -5
  %i.v = lshr i32 %.0.lcssa.i, %i.u               ; 3 uses
  %i.w = add nsw i32 %.02238, 5                   ; 2 uses
  %.not53 = icmp eq i32 %i.v, 0
end_hunk_2
begin_hunk_3_@main:bb.a
  %.02537.i = phi i32 [ %i.bq, %._crit_edge.i ], [ 0, %bb.i ]
  %i.s = ashr i32 %.02238.i, 3
  %i.t = and i32 %.02238.i, 7                     ; 3 uses
  %4 = sub nuw nsw i32 8, %i.t                    ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u     ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %i.x = zext i8 %i.w to i32
  %notmask.i.i = shl nsw i32 -1, %4
  %5 = xor i32 %notmask.i.i, -1
  %i.y = and i32 %i.x, %5                         ; 2 uses
  %i.z = icmp samesign ugt i32 %i.t, 3
  br i1 %i.z, label %.lr.ph.i27.i, label %read_x_bits.exit32.i

end_hunk_3
begin_hunk_4_@main:bb.a
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.y, 8
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %6 = sub nuw nsw i32 16, %i.t
  br label %read_x_bits.exit32.i, !llvm.loop !22

read_x_bits.exit32.i:                             ; preds = %.lr.ph.i27.i, %.lr.ph40.i
  %.017.lcssa.i.i = phi i32 [ %4, %.lr.ph40.i ], [ %6, %.lr.ph.i27.i ]
  %.0.lcssa.i.i = phi i32 [ %i.y, %.lr.ph40.i ], [ %i.ae, %.lr.ph.i27.i ]
  %i.af = add nsw i32 %.017.lcssa.i.i, -5
  %i.ag = lshr i32 %.0.lcssa.i.i, %i.af           ; 3 uses
  %i.ah = add nsw i32 %.02238.i, 5                ; 2 uses
  %.not53.i = icmp eq i32 %i.ag, 0
end_hunk_4
