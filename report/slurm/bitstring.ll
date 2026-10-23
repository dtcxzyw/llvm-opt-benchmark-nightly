Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/bitstring?download=true
inline.NumInlined: 49
inline.NumDeleted: 6
begin_hunk_0_@bit_fill_gaps:bb.a
  %i.b = shl i64 %.026.i.ph6.i, 26
  %sext31.i.i = add i64 %i.b, 8589934592
  %i.c = ashr exact i64 %sext31.i.i, 29
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %._crit_edge.i.outer.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.g = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true)
  %i.h = or disjoint i64 %i.g, %.026.i.ph6.i      ; 6 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %._crit_edge.i.i, label %bit_ffs.exit, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

._crit_edge.i.outer.i:                            ; preds = %.lr.ph.i
  %i.j = add i64 %.026.i.ph6.i, 64                ; 2 uses
  %i.k = icmp slt i64 %i.j, %.pre.i.i
  br i1 %i.k, label %.lr.ph.i, label %bit_nset.exit, !llvm.loop !4

bit_ffs.exit:                                     ; preds = %.lr.ph.split.i
  %.not = icmp slt i64 %i.h, %.pre.i.i
  br i1 %.not, label %.lr.ph.i.i, label %bit_nset.exit

.lr.ph.i.i:                                       ; preds = %bit_ffs.exit, %bb.c
  %.01925.i.in.i = phi i64 [ %.01925.i.i, %bb.c ], [ %.pre.i.i, %bit_ffs.exit ] ; 3 uses
  %.01925.i.i = add nsw i64 %.01925.i.in.i, -1    ; 5 uses
  %i.l = lshr i64 %.01925.i.i, 6                  ; 2 uses
  %i.m = lshr i64 %.01925.i.in.i, 6
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %.lr.ph33.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %.01925.i.i, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.c, label %bit_fls.exit

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i64 %.01925.i.in.i, 1
  br i1 %i.u, label %.lr.ph.i.i, label %bit_fls.exit, !llvm.loop !6

.lr.ph33.i.i:                                     ; preds = %.lr.ph.i.i, %.outer.i.i
  %.120.ph39.i.i = phi i64 [ %i.ad, %.outer.i.i ], [ %.01925.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.v = shl i64 %.120.ph39.i.i, 26
  %sext.i.i = add i64 %i.v, 8589934592
  %i.w = ashr i64 %sext.i.i, 32
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.outer.i.i, label %.lr.ph33.split.i.i

.lr.ph33.split.i.i:                               ; preds = %.lr.ph33.i.i
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.ab = sub nsw i64 %.120.ph39.i.i, %i.aa       ; 2 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %.lr.ph33.split.split.i.i, label %bit_fls.exit, !llvm.loop !7

.lr.ph33.split.split.i.i:                         ; preds = %.lr.ph33.split.i.i, %.lr.ph33.split.split.i.i
  br label %.lr.ph33.split.split.i.i

.outer.i.i:                                       ; preds = %.lr.ph33.i.i
  %i.ad = add nsw i64 %.120.ph39.i.i, -64
  %i.ae = icmp sgt i64 %.120.ph39.i.i, 63
  br i1 %i.ae, label %.lr.ph33.i.i, label %bit_fls.exit, !llvm.loop !7

bit_fls.exit:                                     ; preds = %bb.b, %bb.c, %.outer.i.i, %.lr.ph33.split.i.i
  %.021.i.i = phi i64 [ -1, %.outer.i.i ], [ %i.ab, %.lr.ph33.split.i.i ], [ -1, %bb.c ], [ %.01925.i.i, %bb.b ] ; 5 uses
  %.not20.i = icmp sle i64 %i.h, %.021.i.i
  %i.af = and i64 %i.h, -9223372036854775801
  %i.ag = icmp sgt i64 %i.af, 0
  %or.cond21.i = and i1 %i.ag, %.not20.i
  br i1 %or.cond21.i, label %.lr.ph.i5, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.lr.ph.i5, %bit_fls.exit
  %.017.lcssa.i = phi i64 [ %i.h, %bit_fls.exit ], [ %i.ah, %.lr.ph.i5 ] ; 5 uses
  %.not1823.i = icmp slt i64 %.021.i.i, %.017.lcssa.i
  br i1 %.not1823.i, label %.critedge2.i, label %.lr.ph25.i

.lr.ph.i5:                                        ; preds = %bit_fls.exit, %.lr.ph.i5
  %.01722.i = phi i64 [ %i.ah, %.lr.ph.i5 ], [ %i.h, %bit_fls.exit ] ; 4 uses
  %i.ah = add nsw i64 %.01722.i, 1                ; 3 uses
  %i.ai = and i64 %.01722.i, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = ashr i64 %.01722.i, 6
  %i.al = getelementptr [8 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = or i64 %i.aj, %i.an
  store i64 %i.ao, ptr %i.am, align 8
  %.not.i = icmp slt i64 %.01722.i, %.021.i.i
  %i.ap = and i64 %i.ah, -9223372036854775801
  %i.aq = icmp sgt i64 %i.ap, 0
  %or.cond.i = and i1 %.not.i, %i.aq
  br i1 %or.cond.i, label %.lr.ph.i5, label %.critedge.preheader.i, !llvm.loop !2

.lr.ph25.i:                                       ; preds = %.critedge.preheader.i, %.critedge.i
  %.024.i = phi i64 [ %i.au, %.critedge.i ], [ %.021.i.i, %.critedge.preheader.i ] ; 6 uses
  %i.ar = add nsw i64 %.024.i, 1
  %i.as = and i64 %i.ar, -9223372036854775801
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %i.au = add nsw i64 %.024.i, -1                 ; 2 uses
  %i.av = and i64 %.024.i, 63
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = ashr i64 %.024.i, 6
  %i.ay = getelementptr [8 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16     ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = or i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %i.az, align 8
  %.not18.not.i = icmp sgt i64 %.024.i, %.017.lcssa.i
  br i1 %.not18.not.i, label %.lr.ph25.i, label %.critedge2.i, !llvm.loop !3

.critedge2.i:                                     ; preds = %.critedge.i, %.lr.ph25.i, %.critedge.preheader.i
  %.0.lcssa.i = phi i64 [ %.021.i.i, %.critedge.preheader.i ], [ %.024.i, %.lr.ph25.i ], [ %i.au, %.critedge.i ] ; 2 uses
  %i.bc = icmp sgt i64 %.0.lcssa.i, %.017.lcssa.i
  br i1 %i.bc, label %bb.d, label %bit_nset.exit

bb.d:                                             ; preds = %.critedge2.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = ashr i64 %.017.lcssa.i, 3
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %reass.sub = sub i64 %.0.lcssa.i, %.017.lcssa.i
  %i.bg = add i64 %reass.sub, 1
  %i.bh = lshr i64 %i.bg, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bf, i8 -1, i64 %i.bh, i1 false)
  br label %bit_nset.exit

bit_nset.exit:                                    ; preds = %._crit_edge.i.outer.i, %bb.a, %bb.d, %.critedge2.i, %bit_ffs.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @bit_super_set(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i64 %i.b, 63
  %notmask = shl nsw i64 -1, %i.d
  %i.e = xor i64 %notmask, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.02128 = phi i64 [ 0, %.lr.ph ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.f = ashr exact i64 %.02128, 6
  %i.g = add nsw i64 %i.f, 2                      ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, %i.i                       ; 2 uses
  %.not = icmp eq i64 %i.i, %i.l
  %.pre = add i64 %.02128, 64                     ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not26 = icmp ugt i64 %.pre, %i.b
  br i1 %.not26, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = xor i64 %i.l, %i.i
  %i.n = and i64 %i.m, %i.e
  %.not27 = icmp eq i64 %i.n, 0
  br i1 %.not27, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.o = icmp slt i64 %.pre, %i.b
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !39

.critedge:                                        ; preds = %bb.d, %._crit_edge, %bb.c, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ 1, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @bit_overlap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.split.us.i.preheader, label %_bit_overlap_internal.exit

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %.not.us.i7 = icmp ugt i64 %i.b, 63
  br i1 %.not.us.i7, label %.lr.ph, label %.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph
  %2 = or disjoint i64 %i.d, 63
  %.not.us.i = icmp ult i64 %2, %i.b
  br i1 %.not.us.i, label %.lr.ph, label %.split.us.i, !llvm.loop !8

.lr.ph:                                           ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.02940.us.i9 = phi i32 [ %i.n, %.lr.ph.split.us.i ], [ 0, %.lr.ph.split.us.i.preheader ]
  %.02841.us.i8 = phi i64 [ %i.d, %.lr.ph.split.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.d = add i64 %.02841.us.i8, 64                ; 3 uses
  %i.e = ashr exact i64 %.02841.us.i8, 6
  %i.f = add nsw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, %i.h
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.k)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = add nuw nsw i32 %.02940.us.i9, %i.m      ; 3 uses
  %i.o = icmp slt i64 %i.d, %i.b
  br i1 %i.o, label %.lr.ph.split.us.i, label %_bit_overlap_internal.exit, !llvm.loop !8

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader
  %.02940.us.i.lcssa = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.n, %.lr.ph.split.us.i ]
  %i.p = and i64 %i.b, 63
  %notmask.i = shl nsw i64 -1, %i.p
  %i.q = xor i64 %notmask.i, -1
  %i.r = lshr i64 %i.b, 6
  %i.s = add nuw nsw i64 %i.r, 2                  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.u, %i.q
  %i.y = and i64 %i.x, %i.w
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.y)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = add nuw nsw i32 %.02940.us.i.lcssa, %i.aa
  br label %_bit_overlap_internal.exit

_bit_overlap_internal.exit:                       ; preds = %.lr.ph, %bb.a, %.split.us.i
  %.131.i = phi i32 [ %i.ab, %.split.us.i ], [ 0, %bb.a ], [ %i.n, %.lr.ph ]
  ret i32 %.131.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @bit_overlap_any(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.split.i.preheader, label %_bit_overlap_internal.exit

.lr.ph.split.i.preheader:                         ; preds = %bb.a
  %.not.i3 = icmp ugt i64 %i.b, 63
  br i1 %.not.i3, label %.lr.ph, label %.split.us.i

.lr.ph.split.i:                                   ; preds = %bb.b
  %i.d = add i64 %i.f, 64
  %i.e = or disjoint i64 %i.f, 63
  %.not.i = icmp ult i64 %i.e, %i.b
  br i1 %.not.i, label %.lr.ph, label %.split.us.i, !llvm.loop !8

.lr.ph:                                           ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i
  %i.f = phi i64 [ %i.d, %.lr.ph.split.i ], [ 64, %.lr.ph.split.i.preheader ] ; 4 uses
  %.02841.i4 = phi i64 [ %i.f, %.lr.ph.split.i ], [ 0, %.lr.ph.split.i.preheader ]
  %i.g = ashr exact i64 %.02841.i4, 6
  %i.h = add nsw i64 %i.g, 2                      ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, %i.j
  %.not34.i = icmp eq i64 %i.m, 0
  br i1 %.not34.i, label %bb.b, label %_bit_overlap_internal.exit

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp slt i64 %i.f, %i.b
  br i1 %i.n, label %.lr.ph.split.i, label %_bit_overlap_internal.exit, !llvm.loop !8

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader
  %i.o = and i64 %i.b, 63
  %notmask.i = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask.i, -1
  %i.q = lshr i64 %i.b, 6
  %i.r = add nuw nsw i64 %i.q, 2                  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.t, %i.p
  %i.x = and i64 %i.w, %i.v
  %.not35.i = icmp ne i64 %i.x, 0
  %spec.select.i = zext i1 %.not35.i to i32
  br label %_bit_overlap_internal.exit

_bit_overlap_internal.exit:                       ; preds = %.lr.ph, %bb.b, %bb.a, %.split.us.i
  %.131.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.split.us.i ], [ 1, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.131.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @bit_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.b
  %.019 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 4 uses
  %i.e = add i64 %.019, 64                        ; 2 uses
  %.not23 = icmp ugt i64 %i.e, %i.b
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = ashr exact i64 %.019, 6
  %i.g = add nsw i64 %i.f, 2                      ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %i.k = load i64, ptr %i.j, align 8
  %.not25 = icmp eq i64 %i.i, %i.k
  br i1 %.not25, label %.preheader, label %.loopexit, !llvm.loop !40

bb.c:                                             ; preds = %.preheader
  %i.l = icmp slt i64 %.019, %i.b
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %i.b, 63
  %notmask = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask, -1
  %i.o = ashr exact i64 %.019, 6
  %i.p = add nsw i64 %i.o, 2                      ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8
  %i.u = xor i64 %i.t, %i.r
  %i.v = and i64 %i.u, %i.n
  %.not24 = icmp eq i64 %i.v, 0
  br i1 %.not24, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d, %bb.e
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @bit_copy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = shl i64 %i.b, 32
  %i.d = ashr exact i64 %i.c, 32                  ; 3 uses
  %i.e = add nsw i64 %i.d, 63                     ; 2 uses
  %i.f = load i64, ptr @cached_bitstr_len, align 8
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_cache_pop.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @cache_mutex) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #17
  store i32 %i.h, ptr %i.i, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._cache_pop) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @cached_bitstr, align 8    ; 3 uses
  %.not8.i.i = icmp eq ptr %i.j, null
  br i1 %.not8.i.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @cache_mutex) #16 ; 2 uses
  %.not9.i.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i.i, label %_cache_pop.exit.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8
  store ptr %i.l, ptr @cached_bitstr, align 8
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @cache_mutex) #16 ; 2 uses
  %.not9.i11.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i11.i, label %bit_alloc_nz.exit, label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.n = phi i32 [ %i.m, %.thread.i ], [ %i.k, %bb.e ]
  %i.o = tail call ptr @__errno_location() #17
  store i32 %i.n, ptr %i.o, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._cache_pop) #18
  unreachable

_cache_pop.exit.thread.i:                         ; preds = %bb.e, %bb.a
  %i.p = lshr i64 %i.e, 6
  %i.q = add nuw nsw i64 %i.p, 2
  %i.r = tail call ptr @slurm_xcalloc(i64 noundef %i.q, i64 noundef 8, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 326, ptr noundef nonnull @__func__.bit_alloc_nz) #16
  br label %bit_alloc_nz.exit

bit_alloc_nz.exit:                                ; preds = %.thread.i, %_cache_pop.exit.thread.i
  %.1.i = phi ptr [ %i.r, %_cache_pop.exit.thread.i ], [ %i.j, %.thread.i ] ; 4 uses
end_hunk_0
