Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/bitstring?download=true
inline.NumInlined: 49
inline.NumDeleted: 6
begin_hunk_0_@bit_set
define dso_local void @bit_set(ptr nofree noundef captures(none) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = and i64 %1, 63
  %i.b = shl nuw i64 1, %i.a
  %i.c = ashr i64 %1, 6
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = or i64 %i.f, %i.b
  store i64 %i.g, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bit_clear(ptr nofree noundef captures(none) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = and i64 %1, 63
  %i.b = shl nuw i64 1, %i.a
  %i.c = xor i64 %i.b, -1
  %i.d = ashr i64 %1, 6
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, %i.c
  store i64 %i.h, ptr %i.f, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_nclear(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) #2 {
bb.a:
  %.not20 = icmp sle i64 %1, %2
  %i.a = and i64 %1, -9223372036854775801
  %i.b = icmp sgt i64 %i.a, 0
  %or.cond21 = and i1 %.not20, %i.b
  br i1 %or.cond21, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi i64 [ %1, %bb.a ], [ %i.c, %.lr.ph ] ; 5 uses
  %.not1823 = icmp slt i64 %2, %.017.lcssa
  br i1 %.not1823, label %.critedge2, label %.lr.ph25

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01722 = phi i64 [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.c = add nsw i64 %.01722, 1                   ; 3 uses
  %i.d = and i64 %.01722, 63
  %i.e = shl nuw i64 1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = ashr i64 %.01722, 6
  %i.h = getelementptr [8 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, %i.f
  store i64 %i.k, ptr %i.i, align 8
  %.not = icmp slt i64 %.01722, %2
  %i.l = and i64 %i.c, -9223372036854775801
  %i.m = icmp sgt i64 %i.l, 0
  %or.cond = and i1 %.not, %i.m
  br i1 %or.cond, label %.lr.ph, label %.critedge.preheader, !llvm.loop !8

.lr.ph25:                                         ; preds = %.critedge.preheader, %.critedge
  %.024 = phi i64 [ %i.q, %.critedge ], [ %2, %.critedge.preheader ] ; 6 uses
  %i.n = add nsw i64 %.024, 1
  %i.o = and i64 %i.n, -9223372036854775801
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %.lr.ph25
  %i.q = add nsw i64 %.024, -1                    ; 2 uses
  %i.r = and i64 %.024, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = xor i64 %i.s, -1
  %i.u = ashr i64 %.024, 6
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 16       ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, %i.t
  store i64 %i.y, ptr %i.w, align 8
  %.not18.not = icmp sgt i64 %.024, %.017.lcssa
  br i1 %.not18.not, label %.lr.ph25, label %.critedge2, !llvm.loop !11

.critedge2:                                       ; preds = %.lr.ph25, %.critedge, %.critedge.preheader
  %.0.lcssa = phi i64 [ %2, %.critedge.preheader ], [ %i.q, %.critedge ], [ %.024, %.lr.ph25 ] ; 2 uses
  %i.z = icmp sgt i64 %.0.lcssa, %.017.lcssa
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = ashr i64 %.017.lcssa, 3
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %reass.sub = sub i64 %.0.lcssa, %.017.lcssa
  %i.ad = add i64 %reass.sub, 1
  %i.ae = lshr i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 0, i64 %i.ae, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_nset(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) #2 {
bb.a:
  %.not20 = icmp sle i64 %1, %2
  %i.a = and i64 %1, -9223372036854775801
  %i.b = icmp sgt i64 %i.a, 0
  %or.cond21 = and i1 %.not20, %i.b
  br i1 %or.cond21, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi i64 [ %1, %bb.a ], [ %i.c, %.lr.ph ] ; 5 uses
  %.not1823 = icmp slt i64 %2, %.017.lcssa
  br i1 %.not1823, label %.critedge2, label %.lr.ph25

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01722 = phi i64 [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.c = add nsw i64 %.01722, 1                   ; 3 uses
  %i.d = and i64 %.01722, 63
  %i.e = shl nuw i64 1, %i.d
  %i.f = ashr i64 %.01722, 6
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = or i64 %i.i, %i.e
  store i64 %i.j, ptr %i.h, align 8
  %.not = icmp slt i64 %.01722, %2
  %i.k = and i64 %i.c, -9223372036854775801
  %i.l = icmp sgt i64 %i.k, 0
  %or.cond = and i1 %.not, %i.l
  br i1 %or.cond, label %.lr.ph, label %.critedge.preheader, !llvm.loop !12

.lr.ph25:                                         ; preds = %.critedge.preheader, %.critedge
  %.024 = phi i64 [ %i.p, %.critedge ], [ %2, %.critedge.preheader ] ; 6 uses
  %i.m = add nsw i64 %.024, 1
  %i.n = and i64 %i.m, -9223372036854775801
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %.lr.ph25
  %i.p = add nsw i64 %.024, -1                    ; 2 uses
  %i.q = and i64 %.024, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = ashr i64 %.024, 6
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = or i64 %i.v, %i.r
  store i64 %i.w, ptr %i.u, align 8
  %.not18.not = icmp sgt i64 %.024, %.017.lcssa
  br i1 %.not18.not, label %.lr.ph25, label %.critedge2, !llvm.loop !13

.critedge2:                                       ; preds = %.lr.ph25, %.critedge, %.critedge.preheader
  %.0.lcssa = phi i64 [ %2, %.critedge.preheader ], [ %i.p, %.critedge ], [ %.024, %.lr.ph25 ] ; 2 uses
  %i.x = icmp sgt i64 %.0.lcssa, %.017.lcssa
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = ashr i64 %.017.lcssa, 3
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %reass.sub = sub i64 %.0.lcssa, %.017.lcssa
  %i.ab = add i64 %reass.sub, 1
  %i.ac = lshr i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 -1, i64 %i.ac, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_set_all(ptr nofree noundef captures(none) %0) #2 {
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, i8 -1, i64 %i.l, i1 false)
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, i8 0, i64 %i.m, i1 false)
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
  %i.m = add i64 %i.e, 64                         ; 2 uses
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
end_hunk_0
begin_hunk_1_@bitfmt2int:bb.a
  %i.v = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.u ; 2 uses
  store i32 %spec.select, ptr %i.v, align 4
  %i.w = add nsw i32 %.05576, 2
  %i.x = getelementptr i8, ptr %i.v, i64 4
  store i32 %.05377, ptr %i.x, align 4
  br label %bb.h

.fold.split:                                      ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %.fold.split, %bb.d, %bb.g
  %.156 = phi i32 [ %.05576, %bb.d ], [ %.05576, %bb.e ], [ %i.w, %bb.g ], [ %.05576, %.fold.split ] ; 2 uses
  %.154 = phi i32 [ %i.r, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ %.05377, %.fold.split ]
  %.2 = phi i32 [ %.078, %bb.d ], [ %.05377, %bb.e ], [ -1, %bb.g ], [ %.078, %.fold.split ]
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph79, !llvm.loop !28

bb.i:                                             ; preds = %bb.b
  %i.y = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.z = trunc i64 %i.y to i32                    ; 7 uses
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %.not68 = icmp eq i8 %i.ab, 45
  br i1 %.not68, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = call i64 @strtol(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.ae = trunc i64 %i.ad to i32                  ; 6 uses
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %.not69 = icmp eq i8 %i.ag, 58
  br i1 %.not69, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ai = call i64 @strtol(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.aj = trunc i64 %i.ai to i32                  ; 8 uses
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = load i8, ptr %i.ak, align 1
  %.not70 = icmp eq i8 %i.al, 0
  br i1 %.not70, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = icmp slt i32 %i.ae, %i.z
  %i.an = icmp slt i32 %i.aj, 1
  %or.cond = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nsw i32 %i.ae, %i.z
  %i.ap = udiv i32 %i.ao, %i.aj
  %i.aq = shl nuw i32 %i.ap, 1
  %i.ar = add i32 %i.aq, 3
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.at, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1445, ptr noundef nonnull @__func__.bitfmt2int) #16 ; 4 uses
  %i.av = icmp slt i32 %i.z, %i.ae
  br i1 %i.av, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.aw = add i32 %i.z, %i.aj                     ; 3 uses
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 %i.ae)
  %i.ay = icmp slt i32 %i.aw, %i.ae
  %i.az = zext i1 %i.ay to i32                    ; 2 uses
  %i.ba = add i32 %i.aw, %i.az
  %i.bb = sub i32 %i.ax, %i.ba
  %i.bc = udiv i32 %i.bb, %i.aj
  %i.bd = add i32 %i.bc, %i.az                    ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.bd, 0
  br i1 %min.iters.check, label %.lr.ph.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bf, 8589934590              ; 4 uses
  %i.bg = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.bh = trunc i64 %n.vec to i32
  %i.bi = mul i32 %i.bh, %i.aj
  %i.bj = add i32 %i.bi, %i.z
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat93 = shufflevector <2 x i32> %broadcast.splatinsert92, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bk = mul nuw nsw <2 x i32> %broadcast.splat93, <i32 0, i32 1>
  %induction = add nsw <2 x i32> %broadcast.splat, %i.bk
  %i.bl = shl nuw nsw i32 %i.aj, 1
  %broadcast.splatinsert94 = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat95 = shufflevector <2 x i32> %broadcast.splatinsert94, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.bm, align 4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nsw <2 x i32> %vec.ind, %broadcast.splat95
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit83, label %.lr.ph.preheader97

.lr.ph.preheader97:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  %.15973.ph = phi i32 [ %i.z, %.lr.ph.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader97, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader97 ] ; 2 uses
  %.15973 = phi i32 [ %i.bq, %.lr.ph ], [ %.15973.ph, %.lr.ph.preheader97 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  store i32 %.15973, ptr %i.bo, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %.15973, ptr %i.bp, align 4
  %i.bq = add nsw i32 %.15973, %i.aj              ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.ae
  br i1 %i.br, label %.lr.ph, label %.loopexit.loopexit83, !llvm.loop !32

.loopexit.loopexit83:                             ; preds = %.lr.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bg, %middle.block ], [ %indvars.iv.next, %.lr.ph ]
  %i.bs = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.h, %.loopexit.loopexit83, %bb.m, %bb.c
  %.060 = phi ptr [ %i.k, %bb.c ], [ %i.au, %.loopexit.loopexit83 ], [ %i.au, %bb.m ], [ %i.k, %bb.h ], [ %i.k, %bb.f ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.c ], [ %i.bs, %.loopexit.loopexit83 ], [ 0, %bb.m ], [ %.05576, %bb.f ], [ %.156, %bb.h ]
  %i.bt = sext i32 %.3 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.060, i64 %i.bt
  store i32 -1, ptr %i.bu, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.a, %.loopexit
  %.061 = phi ptr [ %.060, %.loopexit ], [ null, %bb.a ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.061
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bit_fmt_hexmask(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call fastcc ptr @_bit_fmt_hexmask(ptr noundef %0, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bit_fmt_hexmask_trim(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call fastcc ptr @_bit_fmt_hexmask(ptr noundef %0, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @bit_unfmt_hexmask(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 6 uses
  %sext = shl i64 %i.c, 32
  %i.f = ashr exact i64 %sext, 32                 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.not1823.i = icmp slt i64 %i.e, 1
  br i1 %.not1823.i, label %bit_nclear.exit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %bb.b, %.critedge.i
  %.024.i.in = phi i64 [ %.024.i, %.critedge.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.i = and i64 %.024.i.in, 7
  %.not82 = icmp eq i64 %i.i, 0
  br i1 %.not82, label %.critedge2.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %.024.i = add nsw i64 %.024.i.in, -1            ; 3 uses
  %i.j = and i64 %.024.i, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = ashr i64 %.024.i, 6
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8
  %.not18.not.i = icmp sgt i64 %.024.i.in, 1
  br i1 %.not18.not.i, label %.lr.ph25.i, label %bit_nclear.exit, !llvm.loop !11

.critedge2.i:                                     ; preds = %.lr.ph25.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = lshr exact i64 %.024.i.in, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, i8 0, i64 %i.s, i1 false)
  br label %bit_nclear.exit

bit_nclear.exit:                                  ; preds = %.critedge.i, %bb.b, %.critedge2.i
  %i.t = tail call i32 @xstrncmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i64 noundef 2) #16
  %i.u = icmp eq i32 %i.t, 0
  %spec.select.idx = select i1 %i.u, i64 2, i64 0 ; 2 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  %.not84.not = icmp sgt i64 %i.f, %spec.select.idx
  br i1 %.not84.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bit_nclear.exit
  %i.v = tail call ptr @__ctype_b_loc() #17
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.backedge ] ; 11 uses
  %.06386 = phi ptr [ %i.h, %.lr.ph ], [ %.063.be, %.backedge ] ; 2 uses
  %i.w = load i8, ptr %.06386, align 1
  %i.x = sext i8 %i.w to i64                      ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = and i32 %i.ab, 4096
  %.not73 = icmp eq i32 %i.ac, 0
  br i1 %.not73, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = and i32 %i.ab, 2048
  %.not74 = icmp eq i32 %i.ad, 0
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = add nsw i64 %i.x, -48
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = tail call ptr @__ctype_toupper_loc() #17
  %.pn = load ptr, ptr %i.af, align 8
  %.061.in = getelementptr inbounds [4 x i8], ptr %.pn, i64 %i.x
  %.061 = load i32, ptr %.061.in, align 4
  %i.ag = zext i32 %.061 to i64
  %i.ah = add nsw i64 %i.ag, -55
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.062 = phi i64 [ %i.ae, %bb.e ], [ %i.ah, %bb.f ] ; 5 uses
  %i.ai = or disjoint i64 %indvars.iv, 3
  %i.aj = icmp sgt i64 %i.e, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = and i64 %.062, 15
  %i.al = and i64 %indvars.iv, 60
  %i.am = shl nuw i64 %i.ak, %i.al
  %i.an = lshr i64 %indvars.iv, 6
  %i.ao = and i64 %i.an, 67108863
  %i.ap = getelementptr [8 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = or i64 %i.ar, %i.am
  store i64 %i.as, ptr %i.aq, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.r, %bb.h
  %.063.be = getelementptr inbounds i8, ptr %.06386, i64 -1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %.not = icmp ult ptr %.063.be, %spec.select
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !33

bb.i:                                             ; preds = %bb.g
  %i.at = and i64 %.062, 1
  %.not76 = icmp eq i64 %i.at, 0
  br i1 %.not76, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = icmp sgt i64 %i.e, %indvars.iv
  br i1 %i.au, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.av = and i64 %indvars.iv, 60
  %i.aw = shl nuw nsw i64 1, %i.av
  %i.ax = lshr i64 %indvars.iv, 6
  %i.ay = getelementptr [8 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16     ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = or i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %i.az, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bc = and i64 %.062, 2
  %.not77 = icmp eq i64 %i.bc, 0
  br i1 %.not77, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.be = icmp sgt i64 %i.e, %i.bd
  br i1 %i.be, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bf = and i64 %i.bd, 61
  %i.bg = shl nuw nsw i64 1, %i.bf
  %i.bh = lshr i64 %indvars.iv, 6
  %i.bi = getelementptr [8 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 16     ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = or i64 %i.bk, %i.bg
  store i64 %i.bl, ptr %i.bj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bm = and i64 %.062, 4
  %.not78 = icmp eq i64 %i.bm, 0
  br i1 %.not78, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.bo = icmp sgt i64 %i.e, %i.bn
  br i1 %i.bo, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bp = and i64 %i.bn, 62
  %i.bq = shl nuw nsw i64 1, %i.bp
  %i.br = lshr i64 %indvars.iv, 6
  %i.bs = getelementptr [8 x i8], ptr %0, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = or i64 %i.bu, %i.bq
  store i64 %i.bv, ptr %i.bt, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.bw = and i64 %.062, 8
  %.not79 = icmp eq i64 %i.bw, 0
  br i1 %.not79, label %.backedge, label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.m, %bb.j, %bb.c, %.backedge, %bb.r, %bit_nclear.exit, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bit_nclear.exit ], [ -1, %bb.r ], [ -1, %bb.j ], [ -1, %bb.m ], [ -1, %bb.p ], [ -1, %bb.c ], [ 0, %.backedge ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 -63, 9223372036854775807) i64 @bit_fls(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %bit_fls_from_bit.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.01925.i.in = phi i64 [ %.01925.i, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %.01925.i = add nsw i64 %.01925.i.in, -1        ; 5 uses
  %i.d = lshr i64 %.01925.i, 6                    ; 2 uses
  %i.e = lshr i64 %.01925.i.in, 6
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %.lr.ph33.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %.01925.i, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.c, label %bit_fls_from_bit.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.01925.i.in, 1
  br i1 %i.m, label %.lr.ph.i, label %bit_fls_from_bit.exit, !llvm.loop !34

.lr.ph33.i:                                       ; preds = %.lr.ph.i, %.outer.i
  %.120.ph39.i = phi i64 [ %i.v, %.outer.i ], [ %.01925.i, %.lr.ph.i ] ; 4 uses
  %i.n = shl i64 %.120.ph39.i, 26
  %sext.i = add i64 %i.n, 8589934592
  %i.o = ashr i64 %sext.i, 32
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.outer.i, label %.lr.ph33.split.i

.lr.ph33.split.i:                                 ; preds = %.lr.ph33.i
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.t = sub nsw i64 %.120.ph39.i, %i.s           ; 2 uses
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %.lr.ph33.split.split.i, label %bit_fls_from_bit.exit, !llvm.loop !35

.lr.ph33.split.split.i:                           ; preds = %.lr.ph33.split.i, %.lr.ph33.split.split.i
  br label %.lr.ph33.split.split.i

.outer.i:                                         ; preds = %.lr.ph33.i
  %i.v = add nsw i64 %.120.ph39.i, -64
  %i.w = icmp sgt i64 %.120.ph39.i, 63
  br i1 %i.w, label %.lr.ph33.i, label %bit_fls_from_bit.exit, !llvm.loop !35

bit_fls_from_bit.exit:                            ; preds = %bb.b, %bb.c, %.outer.i, %bb.a, %.lr.ph33.split.i
  %.021.i = phi i64 [ -1, %bb.a ], [ %i.t, %.lr.ph33.split.i ], [ -1, %.outer.i ], [ -1, %bb.c ], [ %.01925.i, %bb.b ]
  ret i64 %.021.i
}
end_hunk_1
begin_hunk_2_@bit_pick_firstn:bb.a
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = and i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.bd, align 8
  %.not.i10 = icmp slt i64 %.01722.i, %i.au
  %i.bg = and i64 %i.ax, 7
  %i.bh = icmp ne i64 %i.bg, 0
  %or.cond.i = and i1 %.not.i10, %i.bh
  br i1 %or.cond.i, label %.lr.ph.i9, label %.critedge.preheader.i, !llvm.loop !8

.lr.ph25.i:                                       ; preds = %.critedge.preheader.i, %.critedge.i
  %.024.i = phi i64 [ %i.bl, %.critedge.i ], [ %i.au, %.critedge.preheader.i ] ; 6 uses
  %i.bi = add nsw i64 %.024.i, 1
  %i.bj = and i64 %i.bi, -9223372036854775801
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %i.bl = add nsw i64 %.024.i, -1                 ; 2 uses
  %i.bm = and i64 %.024.i, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = xor i64 %i.bn, -1
  %i.bp = ashr i64 %.024.i, 6
  %i.bq = getelementptr [8 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 16     ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = and i64 %i.bs, %i.bo
  store i64 %i.bt, ptr %i.br, align 8
  %.not18.not.i = icmp sgt i64 %.024.i, %.017.lcssa.i
  br i1 %.not18.not.i, label %.lr.ph25.i, label %.critedge2.i, !llvm.loop !11

.critedge2.i:                                     ; preds = %.critedge.i, %.lr.ph25.i, %.critedge.preheader.i
  %.0.lcssa.i = phi i64 [ %i.au, %.critedge.preheader.i ], [ %.024.i, %.lr.ph25.i ], [ %i.bl, %.critedge.i ] ; 2 uses
  %i.bu = icmp sgt i64 %.0.lcssa.i, %.017.lcssa.i
  br i1 %i.bu, label %bb.k, label %bit_nclear.exit

bb.k:                                             ; preds = %.critedge2.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = ashr i64 %.017.lcssa.i, 3
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw
  %reass.sub = sub i64 %.0.lcssa.i, %.017.lcssa.i
  %i.by = add i64 %reass.sub, 1
  %i.bz = lshr i64 %i.by, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 %i.bz, i1 false)
  br label %bit_nclear.exit

bit_nclear.exit:                                  ; preds = %bb.b, %._crit_edge.i, %bb.a, %bb.k, %.critedge2.i, %bit_nth_set.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

declare i32 @error(ptr noundef, ...) local_unnamed_addr #9

declare void @_xstrfmtcatat(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @bit_fmt_range(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add nsw i32 %2, %1
  %i.f = sext i32 %i.e to i64
  %. = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.f) ; 5 uses
  %i.g = sext i32 %1 to i64                       ; 4 uses
  %i.h = icmp sgt i64 %., %i.g
  br i1 %i.h, label %.lr.ph, label %.outer._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.0.ph43 = phi ptr [ %.1, %.outer ], [ @.str.4, %bb.a ] ; 3 uses
  %.033.ph42 = phi i64 [ %i.ah, %.outer ], [ %i.g, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.03341 = phi i64 [ %.033.ph42, %.lr.ph ], [ %i.n, %bb.c ] ; 10 uses
  %i.i = ashr i64 %.03341, 6
  %i.j = getelementptr [8 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i64 %.03341, 64                  ; 2 uses
  %i.o = icmp slt i64 %i.n, %.
  br i1 %i.o, label %bb.b, label %.outer._crit_edge, !llvm.loop !47

bb.d:                                             ; preds = %bb.b
  %i.p = and i64 %.03341, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.l, %i.q
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.outer, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.s = add nsw i64 %.03341, 1                   ; 2 uses
  %i.t = icmp slt i64 %i.s, %.
  br i1 %i.t, label %.lr.ph58, label %.critedge

.preheader:                                       ; preds = %.lr.ph58
  %i.u = add nsw i64 %i.w, 1                      ; 2 uses
  %i.v = icmp slt i64 %i.u, %.
  br i1 %i.v, label %.lr.ph58, label %.critedge, !llvm.loop !48

.lr.ph58:                                         ; preds = %.preheader.preheader, %.preheader
  %i.w = phi i64 [ %i.u, %.preheader ], [ %i.s, %.preheader.preheader ] ; 5 uses
  %.13457 = phi i64 [ %i.w, %.preheader ], [ %.03341, %.preheader.preheader ]
  %i.x = ashr i64 %i.w, 6
  %i.y = getelementptr [8 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.w, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.aa, %i.ac
  %.not39 = icmp eq i64 %i.ad, 0
  br i1 %.not39, label %..critedge_crit_edge, label %.preheader, !llvm.loop !48

..critedge_crit_edge:                             ; preds = %.lr.ph58
  br label %.critedge, !llvm.loop !48

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %.134.lcssa = phi i64 [ %.03341, %.preheader.preheader ], [ %.13457, %..critedge_crit_edge ], [ %i.w, %.preheader ] ; 3 uses
  %i.ae = icmp eq i64 %.134.lcssa, %.03341
  %i.af = sub nsw i64 %.03341, %i.g               ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  call void (ptr, ptr, ptr, ...) @_xstrfmtcatat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5, ptr noundef %.0.ph43, i64 noundef %i.af) #16
  br label %.outer

bb.f:                                             ; preds = %.critedge
  %i.ag = sub nsw i64 %.134.lcssa, %i.g
  call void (ptr, ptr, ptr, ...) @_xstrfmtcatat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.6, ptr noundef %.0.ph43, i64 noundef %i.af, i64 noundef %i.ag) #16
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.f, %bb.d
  %.2 = phi i64 [ %.03341, %bb.d ], [ %.134.lcssa, %bb.f ], [ %.03341, %bb.e ]
  %.1 = phi ptr [ %.0.ph43, %bb.d ], [ @.str.7, %bb.f ], [ @.str.7, %bb.e ]
  %i.ah = add nsw i64 %.2, 1                      ; 2 uses
  %i.ai = icmp slt i64 %i.ah, %.
  br i1 %i.ai, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !47

.outer._crit_edge:                                ; preds = %.outer, %bb.c, %bb.a
  %i.aj = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.aj
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @inx2bitstr(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bit_nclear.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.b, 4294967295
  %i.f = and i64 %i.e, 4294967295
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %bb.b, %.critedge.i
  %.024.i = phi i64 [ %i.i, %.critedge.i ], [ %i.f, %bb.b ] ; 6 uses
  %i.g = add nuw nsw i64 %.024.i, 1               ; 2 uses
  %i.h = and i64 %i.g, -9223372036854775801
  %.not32 = icmp eq i64 %i.h, 0
  br i1 %.not32, label %.critedge2.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %i.i = add nsw i64 %.024.i, -1
  %i.j = and i64 %.024.i, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = ashr i64 %.024.i, 6
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8
  %.not18.not.i = icmp sgt i64 %.024.i, 0
  br i1 %.not18.not.i, label %.lr.ph25.i, label %bit_nclear.exit, !llvm.loop !11

.critedge2.i:                                     ; preds = %.lr.ph25.i
  %.not33 = icmp eq i64 %.024.i, 0
  br i1 %.not33, label %bit_nclear.exit, label %bb.c

bb.c:                                             ; preds = %.critedge2.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = lshr exact i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, i8 0, i64 %i.s, i1 false)
  br label %bit_nclear.exit

bit_nclear.exit:                                  ; preds = %.critedge.i, %bb.c, %.critedge2.i, %bb.a
  %i.t = load i32, ptr %1, align 4                ; 2 uses
  %.not35 = icmp eq i32 %i.t, -1
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bit_nclear.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bit_nset.exit
  %i.v = phi i32 [ %i.t, %.lr.ph ], [ %i.bf, %bit_nset.exit ] ; 4 uses
  %.01636 = phi ptr [ %1, %.lr.ph ], [ %i.be, %bit_nset.exit ] ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  %.not20 = icmp slt i32 %i.v, %i.c
  %or.cond = and i1 %i.w, %.not20
  br i1 %or.cond, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.01636, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 4 uses
  %i.z = icmp sgt i32 %i.y, -1
  %.not21 = icmp slt i32 %i.y, %i.c
  %or.cond22 = and i1 %i.z, %.not21
  br i1 %or.cond22, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %i.v to i64               ; 3 uses
  %i.ab = zext nneg i32 %i.y to i64               ; 4 uses
  %.not20.i = icmp samesign ule i32 %i.v, %i.y
  %i.ac = and i64 %i.aa, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %or.cond21.i = and i1 %i.ad, %.not20.i
  br i1 %or.cond21.i, label %.lr.ph.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.lr.ph.i, %bb.f
  %.017.lcssa.i = phi i64 [ %i.aa, %bb.f ], [ %i.ae, %.lr.ph.i ] ; 5 uses
  %.not1823.i23 = icmp samesign ugt i64 %.017.lcssa.i, %i.ab
  br i1 %.not1823.i23, label %.critedge2.i26, label %.lr.ph25.i24

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.01722.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ae = add nuw nsw i64 %.01722.i, 1            ; 3 uses
  %i.af = and i64 %.01722.i, 63
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = lshr i64 %.01722.i, 6
  %i.ai = getelementptr [8 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 16     ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = or i64 %i.ag, %i.ak
  store i64 %i.al, ptr %i.aj, align 8
  %.not.i = icmp samesign ult i64 %.01722.i, %i.ab
  %i.am = and i64 %i.ae, 7
  %i.an = icmp ne i64 %i.am, 0
  %or.cond.i = and i1 %.not.i, %i.an
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.preheader.i, !llvm.loop !12

.lr.ph25.i24:                                     ; preds = %.critedge.preheader.i, %.critedge.i29
  %.024.i25 = phi i64 [ %i.ar, %.critedge.i29 ], [ %i.ab, %.critedge.preheader.i ] ; 6 uses
  %i.ao = add nuw nsw i64 %.024.i25, 1
  %i.ap = and i64 %i.ao, -9223372036854775801
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.critedge.i29, label %.critedge2.i26

.critedge.i29:                                    ; preds = %.lr.ph25.i24
  %i.ar = add nsw i64 %.024.i25, -1               ; 2 uses
  %i.as = and i64 %.024.i25, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = ashr i64 %.024.i25, 6
  %i.av = getelementptr [8 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 16     ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = or i64 %i.ax, %i.at
  store i64 %i.ay, ptr %i.aw, align 8
  %.not18.not.i30 = icmp sgt i64 %.024.i25, %.017.lcssa.i
  br i1 %.not18.not.i30, label %.lr.ph25.i24, label %.critedge2.i26, !llvm.loop !13

.critedge2.i26:                                   ; preds = %.critedge.i29, %.lr.ph25.i24, %.critedge.preheader.i
  %.0.lcssa.i27 = phi i64 [ %i.ab, %.critedge.preheader.i ], [ %.024.i25, %.lr.ph25.i24 ], [ %i.ar, %.critedge.i29 ] ; 2 uses
  %i.az = icmp sgt i64 %.0.lcssa.i27, %.017.lcssa.i
  br i1 %i.az, label %bb.g, label %bit_nset.exit

bb.g:                                             ; preds = %.critedge2.i26
  %i.ba = ashr i64 %.017.lcssa.i, 3
  %i.bb = getelementptr inbounds i8, ptr %i.u, i64 %i.ba
  %reass.sub = sub i64 %.0.lcssa.i27, %.017.lcssa.i
  %i.bc = add i64 %reass.sub, 1
  %i.bd = lshr i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 -1, i64 %i.bd, i1 false)
  br label %bit_nset.exit

bit_nset.exit:                                    ; preds = %.critedge2.i26, %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.01636, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %.not = icmp eq i32 %i.bf, -1
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !49

._crit_edge:                                      ; preds = %bit_nset.exit, %bb.e, %bb.d, %bit_nclear.exit
  %.0 = phi i32 [ 0, %bit_nclear.exit ], [ -1, %bb.e ], [ -1, %bb.d ], [ 0, %bit_nset.exit ]
  ret i32 %.0
}

declare ptr @xstrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local ptr @bitstr2inx(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1488, ptr noundef nonnull @__func__.bitstr2inx) #16 ; 2 uses
  store i32 -1, ptr %i.a, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = shl i64 %i.c, 2
  %i.e = add i64 %i.d, 8
  %i.f = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.e, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1496, ptr noundef nonnull @__func__.bitstr2inx) #16 ; 3 uses
  %i.g = load i64, ptr %i.b, align 8              ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.outer._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.outer
  %i.i = phi i64 [ %i.ai, %.outer ], [ %i.g, %bb.c ] ; 4 uses
  %.0.ph44 = phi i64 [ %.1, %.outer ], [ 0, %bb.c ] ; 4 uses
  %.029.ph43 = phi i64 [ %.pre-phi, %.outer ], [ 0, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.02941 = phi i64 [ %.029.ph43, %.lr.ph ], [ %i.n, %bb.e ] ; 7 uses
  %i.j = ashr i64 %.02941, 6
  %i.k = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not35 = icmp eq i64 %i.m, 0
  br i1 %.not35, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %.02941, 64                      ; 2 uses
  %i.o = icmp slt i64 %i.n, %i.i
  br i1 %i.o, label %bb.d, label %.outer._crit_edge, !llvm.loop !50

bb.f:                                             ; preds = %bb.d
  %i.p = and i64 %.02941, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.m, %i.q
  %.not36 = icmp eq i64 %i.r, 0
  %.pre50 = add nsw i64 %.02941, 1                ; 4 uses
  br i1 %.not36, label %.outer, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %i.s = icmp slt i64 %.pre50, %i.i
  br i1 %i.s, label %.lr.ph67, label %.critedge

.preheader:                                       ; preds = %.lr.ph67
  %i.t = add nsw i64 %i.v, 1                      ; 3 uses
  %i.u = icmp slt i64 %i.t, %i.i
  br i1 %i.u, label %.lr.ph67, label %.critedge, !llvm.loop !51

.lr.ph67:                                         ; preds = %.preheader.preheader, %.preheader
  %i.v = phi i64 [ %i.t, %.preheader ], [ %.pre50, %.preheader.preheader ] ; 6 uses
  %.13066 = phi i64 [ %i.v, %.preheader ], [ %.02941, %.preheader.preheader ]
  %i.w = ashr i64 %i.v, 6
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.v, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.z, %i.ab
  %.not37 = icmp eq i64 %i.ac, 0
  br i1 %.not37, label %..critedge_crit_edge, label %.preheader, !llvm.loop !51

..critedge_crit_edge:                             ; preds = %.lr.ph67
  br label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %.130.lcssa = phi i64 [ %.02941, %.preheader.preheader ], [ %.13066, %..critedge_crit_edge ], [ %i.v, %.preheader ]
  %.lcssa64 = phi i64 [ %.pre50, %.preheader.preheader ], [ %i.v, %..critedge_crit_edge ], [ %i.t, %.preheader ]
  %i.ad = trunc i64 %.02941 to i32
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.0.ph44 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = trunc i64 %.130.lcssa to i32
  %i.ag = add nsw i64 %.0.ph44, 2
  %i.ah = getelementptr i8, ptr %i.ae, i64 4
  store i32 %i.af, ptr %i.ah, align 4
  %.pre = load i64, ptr %i.b, align 8
  br label %.outer

.outer:                                           ; preds = %bb.f, %.critedge
  %.pre-phi = phi i64 [ %.lcssa64, %.critedge ], [ %.pre50, %bb.f ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %.critedge ], [ %i.i, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.ag, %.critedge ], [ %.0.ph44, %bb.f ] ; 2 uses
  %i.aj = icmp slt i64 %.pre-phi, %i.ai
end_hunk_2
begin_hunk_3_@_bit_fmt_hexmask:bb.a
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
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %.not17.i = icmp ult i64 %i.b, 64
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = phi i64 [ %i.k, %.lr.ph.i ], [ 64, %bb.a ] ; 3 uses
  %.019.i = phi i32 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.01418.i = phi i64 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ]
  %i.d = ashr exact i64 %.01418.i, 3
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = add nuw nsw i32 %.019.i, %i.i            ; 2 uses
  %i.k = add i64 %i.c, 64                         ; 2 uses
  %.not.i = icmp ugt i64 %i.k, %i.b
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.j, %.lr.ph.i ] ; 2 uses
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i8 -1, i64 %i.br, i1 false)
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
!33 = distinct !{!33, !9, !10}
!34 = distinct !{!34, !9, !10}
!35 = distinct !{!35, !9, !10}
!36 = distinct !{!36, !9, !10}
!37 = distinct !{!37, !9, !10}
!38 = distinct !{!38, !9, !10}
!39 = distinct !{!39, !9, !10}
!40 = distinct !{!40, !9, !10}
!41 = distinct !{!41, !9, !10}
!42 = distinct !{!42, !9, !10}
!43 = distinct !{!43, !9, !10}
!44 = distinct !{!44, !9, !10}
!45 = distinct !{!45, !9, !10}
!46 = distinct !{!46, !9, !10}
!47 = distinct !{!47, !9, !10}
!48 = distinct !{!48, !9, !10}
!49 = distinct !{!49, !9, !10}
!50 = distinct !{!50, !9, !10}
!51 = distinct !{!51, !9, !10}
!52 = distinct !{!52, !9, !10}
!53 = distinct !{!53, !9, !10}
end_hunk_3
