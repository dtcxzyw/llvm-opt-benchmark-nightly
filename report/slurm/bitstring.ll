inline.NumInlined: 49
inline.NumDeleted: 6
begin_hunk_0_@bit_set_all:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not1823.i = icmp slt i64 %i.b, 1
  br i1 %.not1823.i, label %bit_nset.exit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %bb.a, %.critedge.i
  %.024.i.in = phi i64 [ %.024.i, %.critedge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = and i64 %.024.i.in, 7
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge2.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %.024.i = add nsw i64 %.024.i.in, -1            ; 3 uses
  %i.d = and i64 %.024.i, 63
  %i.e = shl nuw i64 1, %i.d
  %i.f = ashr i64 %.024.i, 6
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = or i64 %i.i, %i.e
  store i64 %i.j, ptr %i.h, align 8
  %.not18.not.i = icmp sgt i64 %.024.i.in, 1
  br i1 %.not18.not.i, label %.lr.ph25.i, label %bit_nset.exit, !llvm.loop !13

.critedge2.i:                                     ; preds = %.lr.ph25.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = lshr exact i64 %.024.i.in, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 -1, i64 %i.l, i1 false)
  br label %bit_nset.exit

bit_nset.exit:                                    ; preds = %.critedge.i, %bb.a, %.critedge2.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_clear_all(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not1823.i = icmp slt i64 %i.b, 1
  br i1 %.not1823.i, label %bit_nclear.exit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %bb.a, %.critedge.i
  %.024.i.in = phi i64 [ %.024.i, %.critedge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = and i64 %.024.i.in, 7
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge2.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %.024.i = add nsw i64 %.024.i.in, -1            ; 3 uses
  %i.d = and i64 %.024.i, 63
  %i.e = shl nuw i64 1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = ashr i64 %.024.i, 6
  %i.h = getelementptr [8 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, %i.f
  store i64 %i.k, ptr %i.i, align 8
  %.not18.not.i = icmp sgt i64 %.024.i.in, 1
  br i1 %.not18.not.i, label %.lr.ph25.i, label %bit_nclear.exit, !llvm.loop !11

.critedge2.i:                                     ; preds = %.lr.ph25.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = lshr exact i64 %.024.i.in, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, i8 0, i64 %i.m, i1 false)
  br label %bit_nclear.exit

bit_nclear.exit:                                  ; preds = %.critedge.i, %bb.a, %.critedge2.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 -9223372036854775808, 9223372036854775807) i64 @bit_ffc(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph29, label %._crit_edge

.lr.ph29:                                         ; preds = %bb.a, %.critedge
  %.01628 = phi i64 [ %.218, %.critedge ], [ 0, %bb.a ] ; 5 uses
  %i.d = shl i64 %.01628, 26
  %sext = add i64 %i.d, 8589934592
  %i.e = ashr i64 %sext, 32                       ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %.preheader

.preheader:                                       ; preds = %.lr.ph29
  %i.i = icmp slt i64 %.01628, %i.b
  br i1 %i.i, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %.lr.ph29
  %i.j = add i64 %.01628, 64
  br label %.critedge, !llvm.loop !14

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.11720 = phi i64 [ %i.q, %bb.d ], [ %.01628, %.preheader ] ; 6 uses
  %i.k = ashr i64 %.11720, 6
  %i.l = add nsw i64 %i.k, 2
  %i.m = icmp eq i64 %i.l, %i.e
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.n = and i64 %.11720, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = and i64 %i.g, %i.o
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %.11720, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

.critedge:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.b
  %.218 = phi i64 [ %i.j, %bb.b ], [ %.01628, %.preheader ], [ %.11720, %.lr.ph ], [ %.11720, %bb.c ] ; 2 uses
  %.2 = phi i64 [ -1, %bb.b ], [ -1, %.preheader ], [ %.11720, %bb.c ], [ -1, %.lr.ph ] ; 2 uses
  %i.r = icmp slt i64 %.218, %i.b
  %i.s = icmp eq i64 %.2, -1
  %i.t = and i1 %i.s, %i.r
  br i1 %i.t, label %.lr.ph29, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.d, %bb.a
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ -1, %bb.d ], [ %.2, %.critedge ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @bit_ffs(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %i.a = icmp sgt i64 %.pre.i, 0
  br i1 %i.a, label %.lr.ph, label %bit_ffs_from_bit.exit

.lr.ph:                                           ; preds = %bb.a, %._crit_edge.i.outer
  %.026.i.ph6 = phi i64 [ %i.j, %._crit_edge.i.outer ], [ 0, %bb.a ] ; 3 uses
  %i.b = shl i64 %.026.i.ph6, 26
  %sext31.i = add i64 %i.b, 8589934592
  %i.c = ashr exact i64 %sext31.i, 29
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %._crit_edge.i.outer, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.g = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true)
  %i.h = or disjoint i64 %i.g, %.026.i.ph6        ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %._crit_edge.i, label %bit_ffs_from_bit.exit, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.split, %._crit_edge.i
  br label %._crit_edge.i

._crit_edge.i.outer:                              ; preds = %.lr.ph
  %i.j = add i64 %.026.i.ph6, 64                  ; 2 uses
  %i.k = icmp slt i64 %i.j, %.pre.i
  br i1 %i.k, label %.lr.ph, label %bit_ffs_from_bit.exit, !llvm.loop !16

bit_ffs_from_bit.exit:                            ; preds = %._crit_edge.i.outer, %.lr.ph.split, %bb.a
  %.025.i.lcssa = phi i64 [ %i.h, %.lr.ph.split ], [ -1, %bb.a ], [ -1, %._crit_edge.i.outer ] ; 2 uses
  %i.l = icmp slt i64 %.025.i.lcssa, %.pre.i
  %.025..i = select i1 %i.l, i64 %.025.i.lcssa, i64 -1
  ret i64 %.025..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @bit_size(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_and(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %. = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d) ; 4 uses
  %.not22 = icmp ult i64 %., 64
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi i64 [ %i.m, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.023 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.f = ashr exact i64 %.023, 6
  %i.g = add nsw i64 %i.f, 2                      ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8
  %i.m = add nuw i64 %i.e, 64                     ; 2 uses
  %.not = icmp ugt i64 %i.m, %.
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.n = icmp slt i64 %.0.lcssa, %.
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.o = and i64 %., 63
  %notmask = shl nsw i64 -1, %i.o
  %i.p = ashr exact i64 %.0.lcssa, 6
  %i.q = add nsw i64 %i.p, 2                      ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %i.t = or i64 %i.s, %notmask
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_not(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.d = ashr exact i64 %.06, 3
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = xor i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = add i64 %.06, 64                         ; 2 uses
  %i.j = load i64, ptr %i.a, align 8
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_or(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %. = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d) ; 4 uses
  %.not22 = icmp ult i64 %., 64
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi i64 [ %i.m, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.023 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.f = ashr exact i64 %.023, 6
  %i.g = add nsw i64 %i.f, 2                      ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = or i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8
  %i.m = add nuw i64 %i.e, 64                     ; 2 uses
  %.not = icmp ugt i64 %i.m, %.
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.n = icmp slt i64 %.0.lcssa, %.
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.o = and i64 %., 63
  %notmask = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask, -1
  %i.q = ashr exact i64 %.0.lcssa, 6
  %i.r = add nsw i64 %i.q, 2                      ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, %i.p
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = or i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @bit_set_count(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %.not17 = icmp ult i64 %i.b, 64
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i64 [ %i.k, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.019 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.01418 = phi i64 [ %i.c, %.lr.ph ], [ 0, %bb.a ]
  %i.d = ashr exact i64 %.01418, 3
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = add nuw nsw i32 %.019, %i.i              ; 2 uses
  %i.k = add nuw i64 %i.c, 64                     ; 2 uses
  %.not = icmp ugt i64 %i.k, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.l = icmp slt i64 %.014.lcssa, %i.b
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.m = and i64 %i.b, 63
  %notmask = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask, -1
  %i.o = ashr exact i64 %.014.lcssa, 3
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, %i.n
  %i.t = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = add nuw nsw i32 %.0.lcssa, %i.u
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i32 [ %i.v, %bb.b ], [ %.0.lcssa, %._crit_edge ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @bit_set_count_range(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @llvm.smin.i64(i64 %i.c, i64 %i.a) ; 4 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = add i32 %1, 63
  %i.h = and i32 %i.g, -64                        ; 4 uses
  %i.i = icmp sge i32 %1, %i.h                    ; 2 uses
  %.not = icmp sgt i32 %i.h, %i.e
  %or.cond = select i1 %i.i, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %i.f, 63
  %notmask48 = shl nsw i64 -1, %i.j
  %i.k = ashr i64 %i.f, 6
  %i.l = getelementptr [8 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, %notmask48
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.o)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = sext i32 %i.h to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = and i64 %i.f, 63
  %notmask = shl nsw i64 -1, %i.s
  %i.t = and i64 %i.d, 63
  %notmask47 = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask47, -1
  %i.v = and i64 %notmask, %i.u
  %i.w = ashr i64 %i.f, 6
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.v, %i.z
  %i.ab = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.aa)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = sext i32 %i.h to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.039 = phi i64 [ %i.r, %bb.b ], [ %i.ad, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %.0 = phi i32 [ %i.q, %bb.b ], [ %i.ac, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %sext = shl i64 %i.d, 32
  %i.ae = ashr exact i64 %sext, 32                ; 3 uses
  %i.af = add nsw i64 %.039, 64                   ; 2 uses
  %.not4952 = icmp ugt i64 %i.af, %i.ae
  br i1 %.not4952, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.ag = phi i64 [ %i.ao, %.lr.ph ], [ %i.af, %bb.e ] ; 3 uses
  %.154 = phi i32 [ %i.an, %.lr.ph ], [ %.0, %bb.e ]
  %.14053 = phi i64 [ %i.ag, %.lr.ph ], [ %.039, %bb.e ]
  %i.ah = ashr i64 %.14053, 6
  %i.ai = getelementptr [8 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ak)
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = add nsw i32 %.154, %i.am                ; 2 uses
  %i.ao = add i64 %i.ag, 64                       ; 2 uses
  %.not49 = icmp ugt i64 %i.ao, %i.ae
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.140.lcssa = phi i64 [ %.039, %bb.e ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0, %bb.e ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.ap = icmp slt i64 %.140.lcssa, %i.ae
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.aq = and i64 %i.d, 63
  %notmask50 = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask50, -1
  %i.as = ashr i64 %.140.lcssa, 6
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, %i.ar
  %i.ax = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.aw)
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = add nsw i32 %.1.lcssa, %i.ay
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.2 = phi i32 [ %i.az, %bb.f ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @bit_clear_count(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.not17.i = icmp ult i64 %i.b, 64
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = phi i64 [ %i.k, %.lr.ph.i ], [ 64, %bb.a ] ; 2 uses
  %.019.i = phi i32 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.01418.i = phi i64 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ]
  %i.d = ashr exact i64 %.01418.i, 3
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = add nuw nsw i32 %.019.i, %i.i            ; 2 uses
  %i.k = add nuw i64 %i.c, 64                     ; 2 uses
  %.not.i = icmp ugt i64 %i.k, %i.b
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !20

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %1 = and i64 %i.b, -64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %1, %._crit_edge.i.loopexit ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.i.loopexit ] ; 2 uses
  %i.l = icmp slt i64 %.014.lcssa.i, %i.b
  br i1 %i.l, label %bb.b, label %bit_set_count.exit

bb.b:                                             ; preds = %._crit_edge.i
  %i.m = and i64 %i.b, 63
  %notmask.i = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask.i, -1
  %i.o = ashr exact i64 %.014.lcssa.i, 3
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, %i.n
  %i.t = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = add nuw nsw i32 %.0.lcssa.i, %i.u
  br label %bit_set_count.exit

bit_set_count.exit:                               ; preds = %._crit_edge.i, %bb.b
  %.1.i = phi i32 [ %i.v, %bb.b ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.w = trunc i64 %i.b to i32
  %i.x = sub i32 %i.w, %.1.i
  ret i32 %i.x
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @bit_rotate_copy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = sub nsw i64 %2, %i.b                     ; 2 uses
  %i.d = sext i32 %1 to i64
  %i.e = srem i64 %i.d, %2                        ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  %i.g = select i1 %i.f, i64 %2, i64 0
  %spec.select = add nsw i64 %i.g, %i.e
  %sext = shl i64 %spec.select, 32
  %i.h = ashr exact i64 %sext, 32                 ; 3 uses
  %i.i = icmp sgt i64 %i.h, %i.c
  %.neg = sub i64 %i.c, %i.h
  %.0.neg = select i1 %i.i, i64 %.neg, i64 0
  %i.j = tail call ptr @bit_alloc(i64 noundef %2) ; 3 uses
  %i.k = add i64 %.0.neg, %i.b                    ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i64 [ 0, %bb.a ], [ %i.ad, %bb.c ] ; 3 uses
  %i.m = icmp slt i64 %.033.lcssa, %i.b
  br i1 %i.m, label %.lr.ph43.preheader, label %._crit_edge

.lr.ph43.preheader:                               ; preds = %.preheader
  %i.n = sub nsw i64 %i.b, %.033.lcssa
  br label %.lr.ph43

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03340 = phi i64 [ %i.ad, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %i.o = lshr i64 %.03340, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %.03340, 63
  %i.t = shl nuw i64 1, %i.s
  %i.u = and i64 %i.r, %i.t
  %.not39 = icmp eq i64 %i.u, 0
  br i1 %.not39, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = add nsw i64 %.03340, %i.h                ; 2 uses
  %i.w = and i64 %i.v, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = ashr i64 %i.v, 6
  %i.z = getelementptr [8 x i8], ptr %i.j, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = or i64 %i.ab, %i.x
  store i64 %i.ac, ptr %i.aa, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.ad = add nuw nsw i64 %.03340, 1              ; 3 uses
  %i.ae = icmp slt i64 %i.ad, %i.k
  br i1 %i.ae, label %.lr.ph, label %.preheader, !llvm.loop !22

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %bb.e
  %.03242 = phi i64 [ %i.au, %bb.e ], [ 0, %.lr.ph43.preheader ] ; 3 uses
  %.141 = phi i64 [ %i.at, %bb.e ], [ %.033.lcssa, %.lr.ph43.preheader ] ; 3 uses
  %i.af = lshr i64 %.141, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %.141, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ai, %i.ak
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph43
  %i.am = and i64 %.03242, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = lshr i64 %.03242, 6
  %i.ap = getelementptr [8 x i8], ptr %i.j, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = or i64 %i.ar, %i.an
  store i64 %i.as, ptr %i.aq, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph43
  %i.at = add nuw nsw i64 %.141, 1
  %i.au = add nuw i64 %.03242, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph43, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.e, %.preheader
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define dso_local void @bit_rotate(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4294967295
  %i.f = tail call ptr @bit_rotate_copy(ptr noundef %0, i32 noundef %1, i64 noundef %i.e) ; 3 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = shl i64 %i.h, 29
  %i.l = add i64 %i.k, 33822867456
  %sext.i = ashr i64 %i.l, 32
  %i.m = and i64 %sext.i, -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull readonly align 8 %i.j, i64 %i.m, i1 false)
  call void @slurm_bit_free(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @bit_fmt(ptr nofree noundef returned captures(ret: address, provenance) initializes((0, 1)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  store i8 0, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.outer._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.outer
  %i.d = phi i64 [ %i.an, %.outer ], [ %i.b, %bb.a ] ; 3 uses
  %.035.ph47 = phi i64 [ %.pre-phi, %.outer ], [ 0, %bb.a ]
  %.036.ph46 = phi ptr [ %.137, %.outer ], [ @.str.4, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.03545 = phi i64 [ %.035.ph47, %.lr.ph ], [ %i.k, %bb.c ] ; 9 uses
  %i.e = ashr i64 %.03545, 6
  %i.f = add nsw i64 %i.e, 2                      ; 2 uses
  %sext = shl i64 %i.f, 32
  %i.g = ashr exact i64 %sext, 29
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.03545, 64                      ; 2 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %.outer._crit_edge, !llvm.loop !24

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.f
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %.03545, 63
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.n, %i.p
  %.not = icmp eq i64 %i.q, 0
  %.pre = add nsw i64 %.03545, 1                  ; 4 uses
  br i1 %.not, label %.outer, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.r = icmp slt i64 %.pre, %i.d
  br i1 %i.r, label %.lr.ph64, label %.critedge

.preheader:                                       ; preds = %.lr.ph64
  %i.s = add nsw i64 %i.u, 1                      ; 3 uses
  %i.t = icmp slt i64 %i.s, %i.d
  br i1 %i.t, label %.lr.ph64, label %.critedge, !llvm.loop !25

.lr.ph64:                                         ; preds = %.preheader.preheader, %.preheader
  %i.u = phi i64 [ %i.s, %.preheader ], [ %.pre, %.preheader.preheader ] ; 6 uses
end_hunk_0
begin_hunk_1_@bit_cache_fini:bb.a
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._cache_pop) #18
  unreachable

bb.c:                                             ; preds = %.thread
  store ptr %i.d, ptr %i.a, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  %i.j = call i32 @pthread_mutex_lock(ptr noundef nonnull @cache_mutex) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !42

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_bit_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 63
  %i.b = lshr i64 %i.a, 6
  %i.c = add nuw nsw i64 %i.b, 2
  %i.d = tail call ptr @slurm_xrecalloc(ptr noundef %0, i64 noundef %i.c, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 345, ptr noundef nonnull @__func__.slurm_bit_realloc) #16 ; 0 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = load ptr, ptr %0, align 8
  ret ptr %i.g
}

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @slurm_bit_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store i64 0, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load i64, ptr @cached_bitstr_len, align 8
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @cache_mutex) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #17
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._cache_push) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @cached_bitstr, align 8
  store ptr %i.i, ptr %i.b, align 8
  store ptr %i.b, ptr @cached_bitstr, align 8
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @cache_mutex) #16 ; 2 uses
  %.not6.i = icmp eq i32 %i.j, 0
  br i1 %.not6.i, label %_cache_push.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__errno_location() #17
  store i32 %i.j, ptr %i.k, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._cache_push) #18
  unreachable

_cache_push.exit:                                 ; preds = %bb.d
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @slurm_xfree(ptr noundef nonnull %0) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_cache_push.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bit_free_ptr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %0, ptr %i.a, align 8
  call void @slurm_bit_free(ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @slurm_bit_test(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i64 %1, 6
  %i.b = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %1, 63
  %i.f = lshr i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 1
  ret i32 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @bit_ffs_from_bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = and i64 %1, 63                           ; 2 uses
  %.not = icmp ne i64 %i.a, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.b = icmp slt i64 %1, %.pre
  %or.cond = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %notmask = shl nsw i64 -1, %i.a
  %i.c = and i64 %1, -64
  %i.d = shl i64 %1, 26
  %sext = add i64 %i.d, 8589934592
  %i.e = ashr i64 %sext, 32
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, %notmask
  br label %bb.d

._crit_edge:                                      ; preds = %bb.a, %bb.f, %bb.e
  %.026 = phi i64 [ %i.q, %bb.e ], [ %.127, %bb.f ], [ %1, %bb.a ] ; 3 uses
  %.025 = phi i64 [ -1, %bb.e ], [ %i.s, %bb.f ], [ -1, %bb.a ] ; 3 uses
  %i.i = icmp slt i64 %.026, %.pre
  %i.j = icmp eq i64 %.025, -1
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %._crit_edge
  %i.l = shl i64 %.026, 26
  %sext31 = add i64 %i.l, 8589934592
  %i.m = ashr i64 %sext31, 32
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.127 = phi i64 [ %i.c, %bb.b ], [ %.026, %bb.c ] ; 3 uses
  %.024 = phi i64 [ %i.h, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.p = icmp eq i64 %.024, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %.127, 64
  br label %._crit_edge, !llvm.loop !16

bb.f:                                             ; preds = %bb.d
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.s = add nsw i64 %i.r, %.127
  br label %._crit_edge, !llvm.loop !16

bb.g:                                             ; preds = %._crit_edge
  %i.t = icmp slt i64 %.025, %.pre
  %.025. = select i1 %i.t, i64 %.025, i64 -1
  ret i64 %.025.
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_and_not(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %. = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d) ; 4 uses
  %.not23 = icmp ult i64 %., 64
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi i64 [ %i.n, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.024 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.f = ashr exact i64 %.024, 6
  %i.g = add nsw i64 %i.f, 2                      ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8
  %i.n = add nuw i64 %i.e, 64                     ; 2 uses
  %.not = icmp ugt i64 %i.n, %.
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.o = icmp slt i64 %.0.lcssa, %.
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.p = and i64 %., 63
  %notmask = shl nsw i64 -1, %i.p
  %i.q = ashr exact i64 %.0.lcssa, 6
  %i.r = add nsw i64 %i.q, 2                      ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %.not22 = xor i64 %i.t, -1
  %i.u = or i64 %notmask, %.not22
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_or_not(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %. = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d) ; 4 uses
  %.not22 = icmp ult i64 %., 64
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi i64 [ %i.n, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.023 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.f = ashr exact i64 %.023, 6
  %i.g = add nsw i64 %i.f, 2                      ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = or i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8
  %i.n = add nuw i64 %i.e, 64                     ; 2 uses
  %.not = icmp ugt i64 %i.n, %.
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.o = icmp slt i64 %.0.lcssa, %.
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.p = and i64 %., 63
  %notmask = shl nsw i64 -1, %i.p
  %i.q = ashr exact i64 %.0.lcssa, 6
  %i.r = add nsw i64 %i.q, 2                      ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = or i64 %i.t, %notmask
  %i.v = xor i64 %i.u, -1
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #12

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @bit_nth_set(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = lshr i64 %i.c, 6
  %i.e = trunc i64 %i.d to i32
  %i.f = add i32 %i.e, 2                          ; 2 uses
  %i.g = icmp sgt i64 %i.c, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.h = zext i32 %i.f to i64
  %i.i = and i64 %i.c, 63
  %notmask = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.050 = phi i32 [ undef, %.lr.ph ], [ %.1, %bb.d ]
  %.03249 = phi i64 [ -1, %.lr.ph ], [ %.133, %bb.d ]
  %.03448 = phi i64 [ -1, %.lr.ph ], [ %.135, %bb.d ]
  %.03747 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.d ] ; 4 uses
  %.03846 = phi i64 [ %1, %.lr.ph ], [ %i.s, %bb.d ] ; 3 uses
  %i.k = ashr exact i64 %.03747, 6
  %i.l = add nsw i64 %i.k, 2                      ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.h
  %.133 = select i1 %i.m, i64 %i.j, i64 %.03249   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %.133                      ; 2 uses
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.p) ; 3 uses
  %.not = icmp eq i64 %i.p, 0                     ; 2 uses
  %i.r = trunc nuw nsw i64 %i.q to i32
  %.135 = select i1 %.not, i64 %.03448, i64 %.03747 ; 5 uses
  %.1 = select i1 %.not, i32 %.050, i32 %i.r      ; 2 uses
  %.not44 = icmp sgt i64 %.03846, %i.q
  br i1 %.not44, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.s = sub nsw i64 %.03846, %i.q                ; 2 uses
  %i.t = add i64 %.03747, 64                      ; 3 uses
  %i.u = icmp slt i64 %i.t, %i.c
  br i1 %i.u, label %bb.c, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.038.lcssa.ph = phi i64 [ %i.s, %bb.d ], [ %.03846, %bb.c ]
  %.037.lcssa.ph = phi i64 [ %i.t, %bb.d ], [ %.03747, %bb.c ]
  %i.v = icmp eq i64 %.135, %.037.lcssa.ph
  %i.w = zext i32 %.1 to i64
  %i.x = select i1 %i.v, i64 %.038.lcssa.ph, i64 %i.w
  %i.y = icmp slt i64 %.135, 0
  br i1 %i.y, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.z = lshr i64 %.135, 6
  %i.aa = add nuw nsw i64 %i.z, 2                 ; 2 uses
  %i.ab = zext i32 %i.f to i64
  %i.ac = icmp eq i64 %i.aa, %i.ab
  %i.ad = and i64 %i.c, 63
  %notmask45 = shl nsw i64 -1, %i.ad
  %i.ae = xor i64 %notmask45, -1
  %.031 = select i1 %i.ac, i64 %i.ae, i64 -1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %.031
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.020.i = phi i64 [ 0, %bb.e ], [ %.1.i, %bb.i ] ; 2 uses
  %.01419.i = phi i32 [ 32, %bb.e ], [ %.115.i, %bb.i ] ; 3 uses
  %.01618.i = phi i64 [ 4294967295, %bb.e ], [ %.117.i, %bb.i ] ; 4 uses
  %i.ai = and i64 %i.ah, %.01618.i
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ai)
  %i.ak = icmp sgt i64 %i.x, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = zext i32 %.01419.i to i64
  %i.am = add nsw i64 %.020.i, %i.al
  %i.an = lshr i32 %.01419.i, 1                   ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl i64 %.01618.i, %i.ao
  %i.aq = or i64 %i.ap, %.01618.i
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ar = lshr i32 %.01419.i, 1                   ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %.01618.i, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.117.i = phi i64 [ %i.aq, %bb.g ], [ %i.at, %bb.h ]
  %.115.i = phi i32 [ %i.an, %bb.g ], [ %i.ar, %bb.h ] ; 2 uses
  %.1.i = phi i64 [ %i.am, %bb.g ], [ %.020.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq i32 %.115.i, 0
  br i1 %.not.i, label %_ffsn.exit, label %bb.f, !llvm.loop !46

_ffsn.exit:                                       ; preds = %bb.i
  %i.au = add nsw i64 %.1.i, %.135
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge, %bb.a, %_ffsn.exit
  %.039 = phi i64 [ %i.au, %_ffsn.exit ], [ -1, %bb.a ], [ -1, %._crit_edge ], [ -1, %bb.b ]
  ret i64 %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_pick_firstn(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %bit_nclear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %bit_nclear.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = lshr i64 %i.c, 6
  %i.f = add nuw nsw i64 %i.e, 2
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  %i.h = and i64 %i.c, 63
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1                   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.050.i = phi i32 [ undef, %.lr.ph.i ], [ %.1.i, %bb.d ]
  %.03249.i = phi i64 [ -1, %.lr.ph.i ], [ %.133.i, %bb.d ]
  %.03448.i = phi i64 [ -1, %.lr.ph.i ], [ %.135.i, %bb.d ]
  %.03747.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %bb.d ] ; 4 uses
  %.03846.i = phi i64 [ %1, %.lr.ph.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.j = ashr exact i64 %.03747.i, 6
  %i.k = add nsw i64 %i.j, 2                      ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.g
  %.133.i = select i1 %i.l, i64 %i.i, i64 %.03249.i ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %.133.i, %i.n                    ; 2 uses
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.o) ; 3 uses
  %.not.i = icmp eq i64 %i.o, 0                   ; 2 uses
  %i.q = trunc nuw nsw i64 %i.p to i32
  %.135.i = select i1 %.not.i, i64 %.03448.i, i64 %.03747.i ; 5 uses
  %.1.i = select i1 %.not.i, i32 %.050.i, i32 %i.q ; 2 uses
  %.not44.i = icmp sgt i64 %.03846.i, %i.p
  br i1 %.not44.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.r = sub nsw i64 %.03846.i, %i.p              ; 2 uses
  %i.s = add i64 %.03747.i, 64                    ; 3 uses
  %i.t = icmp slt i64 %i.s, %i.c
  br i1 %i.t, label %bb.c, label %._crit_edge.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.038.lcssa.ph.i = phi i64 [ %i.r, %bb.d ], [ %.03846.i, %bb.c ]
  %.037.lcssa.ph.i = phi i64 [ %i.s, %bb.d ], [ %.03747.i, %bb.c ]
  %i.u = icmp eq i64 %.135.i, %.037.lcssa.ph.i
  %i.v = zext i32 %.1.i to i64
  %i.w = select i1 %i.u, i64 %.038.lcssa.ph.i, i64 %i.v
  %i.x = icmp slt i64 %.135.i, 0
end_hunk_1
begin_hunk_2_@_bit_fmt_hexmask:bb.a
  %.01925.i.i = add nsw i64 %.01925.i.in.i, -1    ; 5 uses
  %i.d = lshr i64 %.01925.i.i, 6                  ; 2 uses
  %i.e = lshr i64 %.01925.i.in.i, 6
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.lr.ph33.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %.01925.i.i, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.d, label %bit_fls.exit

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %.01925.i.in.i, 1
  br i1 %i.m, label %.lr.ph.i.i, label %bit_fls.exit, !llvm.loop !34

.lr.ph33.i.i:                                     ; preds = %.lr.ph.i.i, %.outer.i.i
  %.120.ph39.i.i = phi i64 [ %i.v, %.outer.i.i ], [ %.01925.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.n = shl i64 %.120.ph39.i.i, 26
  %sext.i.i = add i64 %i.n, 8589934592
  %i.o = ashr i64 %sext.i.i, 32
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.outer.i.i, label %.lr.ph33.split.i.i

.lr.ph33.split.i.i:                               ; preds = %.lr.ph33.i.i
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.t = sub nsw i64 %.120.ph39.i.i, %i.s         ; 2 uses
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %.lr.ph33.split.split.i.i, label %bit_fls.exit, !llvm.loop !35

.lr.ph33.split.split.i.i:                         ; preds = %.lr.ph33.split.i.i, %.lr.ph33.split.split.i.i
  br label %.lr.ph33.split.split.i.i

.outer.i.i:                                       ; preds = %.lr.ph33.i.i
  %i.v = add nsw i64 %.120.ph39.i.i, -64
  %i.w = icmp sgt i64 %.120.ph39.i.i, 63
  br i1 %i.w, label %.lr.ph33.i.i, label %bit_fls.exit, !llvm.loop !35

bit_fls.exit:                                     ; preds = %bb.c, %bb.d, %.outer.i.i, %bb.b, %.lr.ph33.split.i.i
  %.021.i.i = phi i64 [ -1, %bb.b ], [ %i.t, %.lr.ph33.split.i.i ], [ -1, %.outer.i.i ], [ -1, %bb.d ], [ %.01925.i.i, %bb.c ]
  %i.x = add nsw i64 %.021.i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bit_fls.exit
  %.061 = phi i64 [ %i.x, %bit_fls.exit ], [ %i.b, %bb.a ] ; 8 uses
  %.not = icmp eq i64 %.061, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @xstrdup(ptr noundef nonnull @.str.10) #16
  br label %.loopexit83

bb.g:                                             ; preds = %bb.e
  %i.z = add nsw i64 %.061, 3
  %i.aa = sdiv i64 %i.z, 4                        ; 2 uses
  %i.ab = add nsw i64 %i.aa, 3
  %i.ac = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.ab, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1540, ptr noundef nonnull @__func__._bit_fmt_hexmask) #16 ; 5 uses
  store i8 48, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 120, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.aa  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 2
  store i8 0, ptr %i.af, align 1
  %i.ag = icmp sgt i64 %.061, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit83

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.ae, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.06391 = phi i64 [ %.1, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.06690 = phi ptr [ %.268, %.loopexit ], [ %i.ah, %.lr.ph.preheader ] ; 3 uses
  %i.ai = add i64 %.06391, 64                     ; 2 uses
  %.not75 = icmp ugt i64 %i.ai, %.061
  %i.aj = ashr i64 %.06391, 6
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 16     ; 2 uses
  br i1 %.not75, label %bb.h, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %.06289 = phi i64 [ %i.aw, %.preheader ], [ 0, %.lr.ph ] ; 2 uses
  %.16788 = phi ptr [ %i.av, %.preheader ], [ %.06690, %.lr.ph ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.06289
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @hexmask_lookup, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  store i8 %i.as, ptr %.16788, align 1
  %i.at = getelementptr inbounds i8, ptr %.16788, i64 -1
  %i.au = load i8, ptr %i.aq, align 1
  store i8 %i.au, ptr %i.at, align 1
  %i.av = getelementptr inbounds i8, ptr %.16788, i64 -2 ; 2 uses
  %i.aw = add nuw nsw i64 %.06289, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, 8
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !52

bb.h:                                             ; preds = %.lr.ph
  %i.ax = load i64, ptr %i.al, align 8
  %i.ay = and i64 %.06391, 63
  %i.az = lshr i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i8
  %spec.select = and i8 %i.ba, 1                  ; 3 uses
  %i.bb = add nsw i64 %.06391, 1                  ; 3 uses
  %i.bc = icmp slt i64 %i.bb, %.061
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = ashr i64 %i.bb, 6
  %i.be = getelementptr [8 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bb, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bg, %i.bi
  %.not77 = icmp eq i64 %i.bj, 0
  %i.bk = or disjoint i8 %spec.select, 2
  %spec.select80 = select i1 %.not77, i8 %spec.select, i8 %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.165 = phi i8 [ %spec.select, %bb.h ], [ %spec.select80, %bb.i ] ; 3 uses
  %i.bl = add nsw i64 %.06391, 2                  ; 3 uses
  %i.bm = icmp slt i64 %i.bl, %.061
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = ashr i64 %i.bl, 6
  %i.bo = getelementptr [8 x i8], ptr %0, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = and i64 %i.bl, 63
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bq, %i.bs
  %.not78 = icmp eq i64 %i.bt, 0
  %i.bu = or i8 %.165, 4
  %spec.select81 = select i1 %.not78, i8 %.165, i8 %i.bu
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i8 [ %.165, %bb.j ], [ %spec.select81, %bb.k ] ; 3 uses
  %i.bv = add nsw i64 %.06391, 3                  ; 3 uses
  %i.bw = icmp slt i64 %i.bv, %.061
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = ashr i64 %i.bv, 6
  %i.by = getelementptr [8 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = and i64 %i.bv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  %.not79 = icmp eq i64 %i.cd, 0
  %i.ce = or i8 %.2, 8
  %spec.select82 = select i1 %.not79, i8 %.2, i8 %i.ce
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi i8 [ %.2, %bb.l ], [ %spec.select82, %bb.m ] ; 3 uses
  %i.cf = add nsw i64 %.06391, 4
  %i.cg = icmp samesign ult i8 %.3, 10
  %i.ch = or disjoint i8 %.3, 48
  %i.ci = add nuw nsw i8 %.3, 55
  %.4 = select i1 %i.cg, i8 %i.ch, i8 %i.ci
  %i.cj = getelementptr inbounds i8, ptr %.06690, i64 -1
  store i8 %.4, ptr %.06690, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.n
  %.268 = phi ptr [ %i.cj, %bb.n ], [ %i.av, %.preheader ]
  %.1 = phi i64 [ %i.cf, %bb.n ], [ %i.ai, %.preheader ] ; 2 uses
  %i.ck = icmp slt i64 %.1, %.061
  br i1 %i.ck, label %.lr.ph, label %.loopexit83, !llvm.loop !53

.loopexit83:                                      ; preds = %.loopexit, %bb.g, %bb.f
  %.0 = phi ptr [ %i.y, %bb.f ], [ %i.ac, %bb.g ], [ %i.ac, %.loopexit ]
  ret ptr %.0
}

declare i32 @xstrncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_consolidate(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 8 uses
  %.not17.i = icmp ult i64 %i.b, 64
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = phi i64 [ %i.k, %.lr.ph.i ], [ 64, %bb.a ] ; 2 uses
  %.019.i = phi i32 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.01418.i = phi i64 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ]
  %i.d = ashr exact i64 %.01418.i, 3
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = add nuw nsw i32 %.019.i, %i.i            ; 2 uses
  %i.k = add nuw i64 %i.c, 64                     ; 2 uses
  %.not.i = icmp ugt i64 %i.k, %i.b
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !20

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %1 = and i64 %i.b, -64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %1, %._crit_edge.i.loopexit ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.i.loopexit ] ; 2 uses
  %i.l = icmp slt i64 %.014.lcssa.i, %i.b
  br i1 %i.l, label %bb.b, label %bit_set_count.exit

bb.b:                                             ; preds = %._crit_edge.i
  %i.m = and i64 %i.b, 63
  %notmask.i = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask.i, -1
  %i.o = ashr exact i64 %.014.lcssa.i, 3
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, %i.n
  %i.t = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = add nuw nsw i32 %.0.lcssa.i, %i.u
  br label %bit_set_count.exit

bit_set_count.exit:                               ; preds = %._crit_edge.i, %bb.b
  %.1.i = phi i32 [ %i.v, %bb.b ], [ %.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.not = icmp eq i32 %.1.i, 0
  br i1 %.not, label %bit_nset.exit, label %bb.c

bb.c:                                             ; preds = %bit_set_count.exit
  %i.w = sext i32 %.1.i to i64                    ; 4 uses
  %i.x = icmp sgt i64 %i.b, %i.w
  br i1 %i.x, label %bb.d, label %bit_nset.exit

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i64 %i.b, -1                     ; 3 uses
  %i.z = and i64 %i.w, -9223372036854775801
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i10, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.lr.ph.i10, %bb.d
  %.017.lcssa.i = phi i64 [ %i.w, %bb.d ], [ %i.ab, %.lr.ph.i10 ] ; 5 uses
  %.not1823.i.not = icmp sgt i64 %i.b, %.017.lcssa.i
  br i1 %.not1823.i.not, label %.lr.ph25.i, label %.critedge2.i

.lr.ph.i10:                                       ; preds = %bb.d, %.lr.ph.i10
  %.01722.i = phi i64 [ %i.ab, %.lr.ph.i10 ], [ %i.w, %bb.d ] ; 4 uses
  %i.ab = add nsw i64 %.01722.i, 1                ; 3 uses
  %i.ac = and i64 %.01722.i, 63
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = xor i64 %i.ad, -1
  %i.af = ashr i64 %.01722.i, 6
  %i.ag = getelementptr [8 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 16     ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, %i.ae
  store i64 %i.aj, ptr %i.ah, align 8
  %.not.i11 = icmp slt i64 %.01722.i, %i.y
  %i.ak = and i64 %i.ab, -9223372036854775801
  %i.al = icmp sgt i64 %i.ak, 0
  %or.cond.i = and i1 %.not.i11, %i.al
  br i1 %or.cond.i, label %.lr.ph.i10, label %.critedge.preheader.i, !llvm.loop !8

.lr.ph25.i:                                       ; preds = %.critedge.preheader.i, %.critedge.i
  %.024.i = phi i64 [ %i.ap, %.critedge.i ], [ %i.y, %.critedge.preheader.i ] ; 6 uses
  %i.am = add nsw i64 %.024.i, 1
  %i.an = and i64 %i.am, -9223372036854775801
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %i.ap = add nsw i64 %.024.i, -1                 ; 2 uses
  %i.aq = and i64 %.024.i, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, -1
  %i.at = ashr i64 %.024.i, 6
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 16     ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, %i.as
  store i64 %i.ax, ptr %i.av, align 8
  %.not18.not.i = icmp sgt i64 %.024.i, %.017.lcssa.i
  br i1 %.not18.not.i, label %.lr.ph25.i, label %.critedge2.i, !llvm.loop !11

.critedge2.i:                                     ; preds = %.critedge.i, %.lr.ph25.i, %.critedge.preheader.i
  %.0.lcssa.i9 = phi i64 [ %i.y, %.critedge.preheader.i ], [ %.024.i, %.lr.ph25.i ], [ %i.ap, %.critedge.i ] ; 2 uses
  %i.ay = icmp sgt i64 %.0.lcssa.i9, %.017.lcssa.i
  br i1 %i.ay, label %bb.e, label %bit_nclear.exit

bb.e:                                             ; preds = %.critedge2.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = ashr i64 %.017.lcssa.i, 3
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %reass.sub = sub i64 %.0.lcssa.i9, %.017.lcssa.i
  %i.bc = add i64 %reass.sub, 1
  %i.bd = lshr i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %i.bd, i1 false)
  br label %bit_nclear.exit

bit_nclear.exit:                                  ; preds = %.critedge2.i, %bb.e
  %.not1823.i16 = icmp slt i32 %.1.i, 1
  br i1 %.not1823.i16, label %bit_nset.exit, label %.lr.ph25.i17.preheader

.lr.ph25.i17.preheader:                           ; preds = %bit_nclear.exit
  %i.be = add nsw i32 %.1.i, -1
  %i.bf = zext nneg i32 %i.be to i64
  br label %.lr.ph25.i17

.lr.ph25.i17:                                     ; preds = %.lr.ph25.i17.preheader, %.critedge.i22
  %.024.i18 = phi i64 [ %i.bi, %.critedge.i22 ], [ %i.bf, %.lr.ph25.i17.preheader ] ; 6 uses
  %i.bg = add nuw nsw i64 %.024.i18, 1            ; 2 uses
  %i.bh = and i64 %i.bg, -9223372036854775801
  %.not29 = icmp eq i64 %i.bh, 0
  br i1 %.not29, label %.critedge2.i19, label %.critedge.i22

.critedge.i22:                                    ; preds = %.lr.ph25.i17
  %i.bi = add nsw i64 %.024.i18, -1
  %i.bj = and i64 %.024.i18, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = ashr i64 %.024.i18, 6
  %i.bm = getelementptr [8 x i8], ptr %0, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = or i64 %i.bo, %i.bk
  store i64 %i.bp, ptr %i.bn, align 8
  %.not18.not.i23 = icmp sgt i64 %.024.i18, 0
  br i1 %.not18.not.i23, label %.lr.ph25.i17, label %bit_nset.exit, !llvm.loop !13

.critedge2.i19:                                   ; preds = %.lr.ph25.i17
  %.not30 = icmp eq i64 %.024.i18, 0
  br i1 %.not30, label %bit_nset.exit, label %bb.f

bb.f:                                             ; preds = %.critedge2.i19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = lshr exact i64 %i.bg, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i8 -1, i64 %i.br, i1 false)
  br label %bit_nset.exit

bit_nset.exit:                                    ; preds = %.critedge.i22, %bit_nclear.exit, %bb.f, %.critedge2.i19, %bb.c, %bit_set_count.exit
  ret void
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = distinct !{!18, !9, !10}
!19 = distinct !{!19, !9, !10}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9, !10}
!22 = distinct !{!22, !9, !10}
!23 = distinct !{!23, !9, !10}
!24 = distinct !{!24, !9, !10}
!25 = distinct !{!25, !9, !10}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9, !10}
!28 = distinct !{!28, !9, !10}
!29 = distinct !{!29, !9, !10, !30, !31}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = distinct !{!32, !9, !10, !30}
end_hunk_2
