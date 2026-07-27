inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_mi_warning_message:bb.a

bb.c:                                             ; preds = %mi_option_get.exit
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !111
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %mi_option_get.exit2, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_option_init(ptr noundef nonnull @options), !inline_history !177
  br label %mi_option_get.exit2

mi_option_get.exit2:                              ; preds = %bb.c, %bb.d
  %i.f = load i64, ptr @options, align 16, !tbaa !114
  %.not3 = icmp eq i64 %i.f, 0
  br i1 %.not3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %mi_option_get.exit2
  %i.g = load i64, ptr @mi_max_warning_count, align 8, !tbaa !105
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr @warning_count, i64 1 acq_rel, align 8
  %i.j = load i64, ptr @mi_max_warning_count, align 8, !tbaa !105
  %i.k = icmp sgt i64 %i.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %mi_option_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @mi_vfprintf_thread(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %mi_option_get.exit2, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_interleave(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %_mi_os_numa_node_count.exit

bb.c:                                             ; preds = %bb.b
  %i.b = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %_mi_os_numa_node_count.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit

_mi_os_numa_node_count.exit:                      ; preds = %bb.d, %bb.c, %bb.b
  %spec.store.select = phi i64 [ %1, %bb.b ], [ %i.c, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %i.d = udiv i64 %0, %spec.store.select
  %i.e = urem i64 %0, %spec.store.select
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_mi_os_numa_node_count.exit
  %i.g = udiv i64 %2, %spec.store.select
  %i.h = add i64 %i.g, 50
  br label %bb.f

bb.f:                                             ; preds = %_mi_os_numa_node_count.exit, %bb.e
  %i.i = phi i64 [ %i.h, %bb.e ], [ 0, %_mi_os_numa_node_count.exit ]
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.03549 = phi i64 [ 0, %bb.f ], [ %i.n, %bb.h ] ; 3 uses
  %.03648 = phi i64 [ %0, %bb.f ], [ %.137, %bb.h ] ; 2 uses
  %i.j = icmp ult i64 %.03549, %i.e
  %i.k = zext i1 %i.j to i64
  %spec.select = add i64 %i.d, %i.k               ; 3 uses
  %i.l = trunc i64 %.03549 to i32
  %i.m = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select, i32 noundef %i.l, i64 noundef %i.i, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %.not43 = icmp eq i32 %i.m, 0
  br i1 %.not43, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %.137 = tail call i64 @llvm.usub.sat.i64(i64 %.03648, i64 %spec.select)
  %i.n = add nuw i64 %.03549, 1                   ; 2 uses
  %i.o = icmp uge i64 %i.n, %spec.store.select
  %i.p = icmp ule i64 %.03648, %spec.select
  %.not46 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %.not46, label %.loopexit, label %bb.g, !llvm.loop !178

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ %i.m, %bb.g ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages(i64 noundef %0, double noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.16)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = fmul double %1, 1.000000e+03
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.e, label %_mi_os_numa_node_count.exit.i, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit.i

_mi_os_numa_node_count.exit.i:                    ; preds = %bb.e, %bb.d
  %spec.store.select.i = phi i64 [ %i.d, %bb.d ], [ %i.e, %bb.e ] ; 4 uses
  %i.f = udiv i64 %0, %spec.store.select.i
  %i.g = urem i64 %0, %spec.store.select.i
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_mi_os_numa_node_count.exit.i
  %i.i = udiv i64 %i.b, %spec.store.select.i
  %i.j = add i64 %i.i, 50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_mi_os_numa_node_count.exit.i
  %i.k = phi i64 [ %i.j, %bb.f ], [ 0, %_mi_os_numa_node_count.exit.i ]
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.03549.i = phi i64 [ 0, %bb.g ], [ %i.p, %bb.i ] ; 3 uses
  %.03648.i = phi i64 [ %0, %bb.g ], [ %.137.i, %bb.i ] ; 2 uses
  %i.l = icmp ult i64 %.03549.i, %i.g
  %i.m = zext i1 %i.l to i64
  %spec.select.i = add i64 %i.f, %i.m             ; 3 uses
  %i.n = trunc i64 %.03549.i to i32
  %i.o = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select.i, i32 noundef %i.n, i64 noundef %i.k, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %.not43.i = icmp eq i32 %i.o, 0
  br i1 %.not43.i, label %bb.i, label %mi_reserve_huge_os_pages_interleave.exit.thread

bb.i:                                             ; preds = %bb.h
  %.137.i = tail call i64 @llvm.usub.sat.i64(i64 %.03648.i, i64 %spec.select.i)
  %i.p = add nuw i64 %.03549.i, 1                 ; 2 uses
  %i.q = icmp uge i64 %i.p, %spec.store.select.i
  %i.r = icmp ule i64 %.03648.i, %spec.select.i
  %.not46.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %.not46.i, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.h, !llvm.loop !178

mi_reserve_huge_os_pages_interleave.exit:         ; preds = %bb.i, %bb.c
  br i1 %.not, label %mi_reserve_huge_os_pages_interleave.exit.thread, label %bb.j

bb.j:                                             ; preds = %mi_reserve_huge_os_pages_interleave.exit
  store i64 %0, ptr %2, align 8, !tbaa !105
  br label %mi_reserve_huge_os_pages_interleave.exit.thread

mi_reserve_huge_os_pages_interleave.exit.thread:  ; preds = %bb.h, %bb.j, %mi_reserve_huge_os_pages_interleave.exit
  %.4.i11 = phi i32 [ 0, %mi_reserve_huge_os_pages_interleave.exit ], [ 0, %bb.j ], [ %i.o, %bb.h ]
  ret i32 %.4.i11
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define hidden noundef zeroext i1 @_mi_bitmap_try_find_claim_field(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr [8 x i8], ptr %0, i64 %1   ; 3 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 4 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 63
  br i1 %i.d, label %mi_bitmap_mask_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %mi_bitmap_mask_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i = shl nsw i64 -1, %2
  %i.f = xor i64 %notmask.i, -1
  br label %mi_bitmap_mask_.exit

mi_bitmap_mask_.exit:                             ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.f, %bb.d ], [ -1, %bb.b ], [ 0, %bb.c ]
  %i.g = sub i64 64, %2                           ; 2 uses
  %i.h = xor i64 %i.b, -1
  %i.i = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.h, i1 true) ; 4 uses
  %.not.not50 = icmp ugt i64 %i.i, %i.g
  br i1 %.not.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %mi_bitmap_mask_.exit
  %i.j = shl i64 %.0.i, %i.i                      ; 2 uses
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.03353.us = phi i64 [ %.235.us, %bb.g ], [ %i.b, %.lr.ph ] ; 4 uses
  %.03852.us = phi i64 [ %.139.us, %bb.g ], [ %i.i, %.lr.ph ] ; 3 uses
  %.04051.us = phi i64 [ %.141.us, %bb.g ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.l = and i64 %.03353.us, %.04051.us
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.n = add nuw nsw i64 %.03852.us, 1
  %i.o = shl i64 %.04051.us, 1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.p = or i64 %.03353.us, %.04051.us
  %i.q = cmpxchg ptr %i.a, i64 %.03353.us, i64 %i.p acq_rel acquire, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g, !llvm.loop !179

bb.g:                                             ; preds = %bb.e, %bb.f
  %.141.us = phi i64 [ %i.o, %bb.e ], [ %.04051.us, %bb.f ]
  %.139.us = phi i64 [ %i.n, %bb.e ], [ %.03852.us, %bb.f ] ; 2 uses
  %.235.us = phi i64 [ %.03353.us, %bb.e ], [ %i.s, %bb.f ]
  %.not.not.us = icmp ugt i64 %.139.us, 63
  br i1 %.not.not.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.03353 = phi i64 [ %.235, %bb.j ], [ %i.b, %.lr.ph ] ; 4 uses
  %.03852 = phi i64 [ %.139, %bb.j ], [ %i.i, %.lr.ph ] ; 4 uses
  %.04051 = phi i64 [ %.141, %bb.j ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.t = and i64 %.03353, %.04051                 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split
  %i.v = or i64 %.03353, %.04051
  %i.w = cmpxchg ptr %i.a, i64 %.03353, i64 %i.v acq_rel acquire, align 8 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0
  br i1 %i.x, label %.thread, label %bb.j, !llvm.loop !179

.thread:                                          ; preds = %bb.h, %bb.f
  %.us-phi = phi i64 [ %.03852.us, %bb.f ], [ %.03852, %bb.h ]
  %i.z = shl i64 %1, 6
  %i.aa = add i64 %.us-phi, %i.z
  store i64 %i.aa, ptr %3, align 8, !tbaa !105
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph.split
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.ac = add i64 %.03852, %i.ab
  %i.ad = sub i64 64, %i.ac                       ; 2 uses
  %i.ae = add i64 %i.ad, %.03852
  %i.af = shl i64 %.04051, %i.ad
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.141 = phi i64 [ %i.af, %bb.i ], [ %.04051, %bb.h ]
  %.139 = phi i64 [ %i.ae, %bb.i ], [ %.03852, %bb.h ] ; 2 uses
  %.235 = phi i64 [ %.03353, %bb.i ], [ %i.y, %bb.h ]
  %.not.not = icmp ugt i64 %.139, %i.g
  br i1 %.not.not, label %.loopexit, label %.lr.ph.split

.loopexit:                                        ; preds = %bb.j, %bb.g, %mi_bitmap_mask_.exit, %.thread, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %.thread ], [ false, %mi_bitmap_mask_.exit ], [ false, %bb.g ], [ false, %bb.j ]
  ret i1 %.4
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @_mi_bitmap_try_find_from_claim(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %.not1629.not = icmp eq i64 %1, 0
  br i1 %.not1629.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp eq i64 %3, 0
  %notmask.i.i = shl nsw i64 -1, %3
  %i.b = xor i64 %notmask.i.i, -1
  %i.c = sub i64 64, %3                           ; 5 uses
  %i.d = icmp eq i64 %3, 1
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit.us
  %.01231.us = phi i64 [ %i.s, %.loopexit.us ], [ 0, %.lr.ph ]
  %.01330.us = phi i64 [ %i.t, %.loopexit.us ], [ %2, %.lr.ph ] ; 2 uses
  %.not.us = icmp ult i64 %.01330.us, %1
  %spec.store.select.us = select i1 %.not.us, i64 %.01330.us, i64 0 ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us ; 2 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %.loopexit.us, label %mi_bitmap_mask_.exit.i.us

mi_bitmap_mask_.exit.i.us:                        ; preds = %.lr.ph.split.us
  %i.h = xor i64 %i.f, -1
  %i.i = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.h, i1 true) ; 3 uses
  %.not.not50.i.us = icmp ugt i64 %i.i, %i.c
  br i1 %.not.not50.i.us, label %.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %mi_bitmap_mask_.exit.i.us
  %i.j = shl nuw i64 1, %i.i
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.i.us, %bb.d
  %.03353.us.i.us = phi i64 [ %.235.us.i.us, %bb.d ], [ %i.f, %.lr.ph.i.us ] ; 4 uses
  %.03852.us.i.us = phi i64 [ %.139.us.i.us, %bb.d ], [ %i.i, %.lr.ph.i.us ] ; 3 uses
  %.04051.us.i.us = phi i64 [ %.141.us.i.us, %bb.d ], [ %i.j, %.lr.ph.i.us ] ; 4 uses
  %i.k = and i64 %.04051.us.i.us, %.03353.us.i.us
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i.us
  %i.m = add nuw nsw i64 %.03852.us.i.us, 1
  %i.n = shl i64 %.04051.us.i.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.i.us
  %i.o = or i64 %.04051.us.i.us, %.03353.us.i.us
  %i.p = cmpxchg ptr %i.e, i64 %.03353.us.i.us, i64 %i.o acq_rel acquire, align 8 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  br i1 %i.q, label %_mi_bitmap_try_find_claim_field.exit, label %bb.d, !llvm.loop !179

bb.d:                                             ; preds = %bb.c, %bb.b
  %.141.us.i.us = phi i64 [ %i.n, %bb.b ], [ %.04051.us.i.us, %bb.c ]
  %.139.us.i.us = phi i64 [ %i.m, %bb.b ], [ %.03852.us.i.us, %bb.c ] ; 2 uses
  %.235.us.i.us = phi i64 [ %.03353.us.i.us, %bb.b ], [ %i.r, %bb.c ]
  %.not.not.us.i.us = icmp ugt i64 %.139.us.i.us, 63
  br i1 %.not.not.us.i.us, label %.loopexit.us, label %.lr.ph.split.us.i.us

.loopexit.us:                                     ; preds = %bb.d, %mi_bitmap_mask_.exit.i.us, %.lr.ph.split.us
  %i.s = add nuw i64 %.01231.us, 1                ; 2 uses
  %i.t = add i64 %spec.store.select.us, 1
  %exitcond96.not = icmp eq i64 %i.s, %1
  br i1 %exitcond96.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !180

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.u = icmp ugt i64 %3, 63
  br i1 %i.u, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.loopexit20.us
  %.01231.us37 = phi i64 [ %i.am, %.loopexit20.us ], [ 0, %.lr.ph.split ]
  %.01330.us38 = phi i64 [ %i.an, %.loopexit20.us ], [ %2, %.lr.ph.split ] ; 2 uses
  %.not.us39 = icmp ult i64 %.01330.us38, %1
  %spec.store.select.us40 = select i1 %.not.us39, i64 %.01330.us38, i64 0 ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us40 ; 2 uses
  %i.w = load atomic i64, ptr %i.v monotonic, align 8 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.loopexit20.us, label %mi_bitmap_mask_.exit.i.us41

mi_bitmap_mask_.exit.i.us41:                      ; preds = %.lr.ph.split.split.us
  %i.y = xor i64 %i.w, -1
  %i.z = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.y, i1 true) ; 3 uses
  %.not.not50.i.us43 = icmp ugt i64 %i.z, %i.c
  br i1 %.not.not50.i.us43, label %.loopexit20.us, label %.lr.ph.i.us44

.lr.ph.i.us44:                                    ; preds = %mi_bitmap_mask_.exit.i.us41
  %i.aa = shl nsw i64 -1, %i.z
  br label %.lr.ph.split.i.us

.lr.ph.split.i.us:                                ; preds = %bb.g, %.lr.ph.i.us44
  %.03353.i.us = phi i64 [ %.235.i.us, %bb.g ], [ %i.w, %.lr.ph.i.us44 ] ; 4 uses
  %.03852.i.us = phi i64 [ %.139.i.us, %bb.g ], [ %i.z, %.lr.ph.i.us44 ] ; 4 uses
  %.04051.i.us = phi i64 [ %.141.i.us, %bb.g ], [ %i.aa, %.lr.ph.i.us44 ] ; 4 uses
  %i.ab = and i64 %.04051.i.us, %.03353.i.us      ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i.us
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ae = add i64 %.03852.i.us, %i.ad
  %i.af = sub i64 64, %i.ae                       ; 2 uses
  %i.ag = add i64 %i.af, %.03852.i.us
  %i.ah = shl i64 %.04051.i.us, %i.af
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.i.us
  %i.ai = or i64 %.04051.i.us, %.03353.i.us
  %i.aj = cmpxchg ptr %i.v, i64 %.03353.i.us, i64 %i.ai acq_rel acquire, align 8 ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = extractvalue { i64, i1 } %i.aj, 0
  br i1 %i.ak, label %_mi_bitmap_try_find_claim_field.exit, label %bb.g, !llvm.loop !179

bb.g:                                             ; preds = %bb.f, %bb.e
  %.141.i.us = phi i64 [ %i.ah, %bb.e ], [ %.04051.i.us, %bb.f ]
  %.139.i.us = phi i64 [ %i.ag, %bb.e ], [ %.03852.i.us, %bb.f ] ; 2 uses
  %.235.i.us = phi i64 [ %.03353.i.us, %bb.e ], [ %i.al, %bb.f ]
  %.not.not.i.us = icmp ugt i64 %.139.i.us, %i.c
  br i1 %.not.not.i.us, label %.loopexit20.us, label %.lr.ph.split.i.us

.loopexit20.us:                                   ; preds = %bb.g, %mi_bitmap_mask_.exit.i.us41, %.lr.ph.split.split.us
  %i.am = add nuw i64 %.01231.us37, 1             ; 2 uses
  %i.an = add i64 %spec.store.select.us40, 1
  %exitcond95.not = icmp eq i64 %i.am, %1
  br i1 %exitcond95.not, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !180

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.a, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %.loopexit20.us71
  %.01231.us51 = phi i64 [ %i.ay, %.loopexit20.us71 ], [ 0, %.lr.ph.split.split ]
  %.01330.us52 = phi i64 [ %i.az, %.loopexit20.us71 ], [ %2, %.lr.ph.split.split ] ; 2 uses
  %.not.us53 = icmp ult i64 %.01330.us52, %1
  %spec.store.select.us54 = select i1 %.not.us53, i64 %.01330.us52, i64 0 ; 5 uses
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us54
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 4 uses
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %.loopexit20.us71, label %.lr.ph.split.i.us59.preheader

.lr.ph.split.i.us59.preheader:                    ; preds = %.lr.ph.split.split.split.us
  %i.ar = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us54 ; 2 uses
  %5 = xor i64 %i.ap, -1
  %6 = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %5, i1 true) ; 2 uses
  %i.as = cmpxchg ptr %i.ar, i64 %i.ap, i64 %i.ap acq_rel acquire, align 8 ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %_mi_bitmap_try_find_claim_field.exit, label %.lr.ph143, !llvm.loop !179

.lr.ph143:                                        ; preds = %.lr.ph.split.i.us59.preheader
  br label %bb.h, !llvm.loop !179

bb.h:                                             ; preds = %.lr.ph143, %bb.h
  %i.au = phi { i64, i1 } [ %i.as, %.lr.ph143 ], [ %i.aw, %bb.h ]
  %i.av = extractvalue { i64, i1 } %i.au, 0       ; 2 uses
  %i.aw = cmpxchg ptr %i.ar, i64 %i.av, i64 %i.av acq_rel acquire, align 8 ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %._mi_bitmap_try_find_claim_field.exit.loopexit128_crit_edge, label %bb.h, !llvm.loop !179

.loopexit20.us71:                                 ; preds = %.lr.ph.split.split.split.us
  %i.ay = add nuw i64 %.01231.us51, 1             ; 2 uses
  %i.az = add i64 %spec.store.select.us54, 1
  %exitcond94.not = icmp eq i64 %i.ay, %1
  br i1 %exitcond94.not, label %.critedge, label %.lr.ph.split.split.split.us, !llvm.loop !180

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %.loopexit20
  %.01231 = phi i64 [ %i.bt, %.loopexit20 ], [ 0, %.lr.ph.split.split ]
  %.01330 = phi i64 [ %i.bu, %.loopexit20 ], [ %2, %.lr.ph.split.split ] ; 2 uses
  %.not = icmp ult i64 %.01330, %1
  %spec.store.select = select i1 %.not, i64 %.01330, i64 0 ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %0, i64 %spec.store.select ; 2 uses
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %.loopexit20, label %mi_bitmap_mask_.exit.i

mi_bitmap_mask_.exit.i:                           ; preds = %.lr.ph.split.split.split
  %i.bd = xor i64 %i.bb, -1
  %i.be = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bd, i1 true) ; 3 uses
  %.not.not50.i = icmp ugt i64 %i.be, %i.c
  br i1 %.not.not50.i, label %.loopexit20, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mi_bitmap_mask_.exit.i
  %i.bf = shl i64 %i.b, %i.be
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %.03353.i = phi i64 [ %.235.i, %bb.k ], [ %i.bb, %.lr.ph.i ] ; 4 uses
  %.03852.i = phi i64 [ %.139.i, %bb.k ], [ %i.be, %.lr.ph.i ] ; 4 uses
  %.04051.i = phi i64 [ %.141.i, %bb.k ], [ %i.bf, %.lr.ph.i ] ; 4 uses
  %i.bg = and i64 %.04051.i, %.03353.i            ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.bi = or i64 %.04051.i, %.03353.i
  %i.bj = cmpxchg ptr %i.ba, i64 %.03353.i, i64 %i.bi acq_rel acquire, align 8 ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  br i1 %i.bk, label %_mi_bitmap_try_find_claim_field.exit, label %bb.k, !llvm.loop !179

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bn = add i64 %.03852.i, %i.bm
  %i.bo = sub i64 64, %i.bn                       ; 2 uses
  %i.bp = add i64 %i.bo, %.03852.i
  %i.bq = shl i64 %.04051.i, %i.bo
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.141.i = phi i64 [ %i.bq, %bb.j ], [ %.04051.i, %bb.i ]
  %.139.i = phi i64 [ %i.bp, %bb.j ], [ %.03852.i, %bb.i ] ; 2 uses
  %.235.i = phi i64 [ %.03353.i, %bb.j ], [ %i.bl, %bb.i ]
  %.not.not.i = icmp ugt i64 %.139.i, %i.c
  br i1 %.not.not.i, label %.loopexit20, label %.lr.ph.split.i

._mi_bitmap_try_find_claim_field.exit.loopexit128_crit_edge: ; preds = %bb.h
  br label %_mi_bitmap_try_find_claim_field.exit, !llvm.loop !179

_mi_bitmap_try_find_claim_field.exit:             ; preds = %bb.i, %bb.f, %bb.c, %.lr.ph.split.i.us59.preheader, %._mi_bitmap_try_find_claim_field.exit.loopexit128_crit_edge
  %spec.store.select28 = phi i64 [ %spec.store.select.us, %bb.c ], [ %spec.store.select.us40, %bb.f ], [ %spec.store.select.us54, %.lr.ph.split.i.us59.preheader ], [ %spec.store.select.us54, %._mi_bitmap_try_find_claim_field.exit.loopexit128_crit_edge ], [ %spec.store.select, %bb.i ]
  %.us-phi.i = phi i64 [ %.03852.us.i.us, %bb.c ], [ %.03852.i.us, %bb.f ], [ %6, %.lr.ph.split.i.us59.preheader ], [ %6, %._mi_bitmap_try_find_claim_field.exit.loopexit128_crit_edge ], [ %.03852.i, %bb.i ]
  %i.br = shl i64 %spec.store.select28, 6
  %i.bs = add i64 %.us-phi.i, %i.br
  store i64 %i.bs, ptr %4, align 8, !tbaa !105
  br label %.critedge

.loopexit20:                                      ; preds = %bb.k, %.lr.ph.split.split.split, %mi_bitmap_mask_.exit.i
  %i.bt = add nuw i64 %.01231, 1                  ; 2 uses
  %i.bu = add i64 %spec.store.select, 1
  %exitcond.not = icmp eq i64 %i.bt, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split.split.split, !llvm.loop !180

.critedge:                                        ; preds = %.loopexit20, %.loopexit20.us71, %.loopexit20.us, %.loopexit.us, %bb.a, %_mi_bitmap_try_find_claim_field.exit
  %.not1625 = phi i1 [ true, %_mi_bitmap_try_find_claim_field.exit ], [ false, %bb.a ], [ false, %.loopexit20.us ], [ false, %.loopexit20.us71 ], [ false, %.loopexit.us ], [ false, %.loopexit20 ]
  ret i1 %.not1625
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_bitmap_try_find_from_claim_pred(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %.not2535.not = icmp eq i64 %1, 0
  br i1 %.not2535.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp ugt i64 %3, 63                      ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %3
  %i.b = xor i64 %notmask.i.i, -1                 ; 4 uses
  %i.c = sub i64 64, %3                           ; 7 uses
  %i.d = icmp eq i64 %3, 1
  %i.e = icmp eq ptr %4, null                     ; 2 uses
  %i.f = icmp ult i64 %3, 64
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_mi_bitmap_try_find_claim_field.exit.thread.us
  %.02037.us = phi i64 [ %i.ac, %_mi_bitmap_try_find_claim_field.exit.thread.us ], [ 0, %.lr.ph ]
  %.02136.us = phi i64 [ %i.ad, %_mi_bitmap_try_find_claim_field.exit.thread.us ], [ %2, %.lr.ph ] ; 2 uses
  %.not.us = icmp ult i64 %.02136.us, %1
  %spec.store.select.us = select i1 %.not.us, i64 %.02136.us, i64 0 ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us ; 2 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 3 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_mi_bitmap_try_find_claim_field.exit.thread.us, label %mi_bitmap_mask_.exit.i.us

mi_bitmap_mask_.exit.i.us:                        ; preds = %.lr.ph.split.us
  %i.j = xor i64 %i.h, -1
  %i.k = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.j, i1 true) ; 3 uses
  %.not.not50.i.us = icmp ugt i64 %i.k, %i.c
  br i1 %.not.not50.i.us, label %_mi_bitmap_try_find_claim_field.exit.thread.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %mi_bitmap_mask_.exit.i.us
  %i.l = shl nuw i64 1, %i.k
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.i.us, %bb.d
  %.03353.us.i.us = phi i64 [ %.235.us.i.us, %bb.d ], [ %i.h, %.lr.ph.i.us ] ; 4 uses
  %.03852.us.i.us = phi i64 [ %.139.us.i.us, %bb.d ], [ %i.k, %.lr.ph.i.us ] ; 3 uses
  %.04051.us.i.us = phi i64 [ %.141.us.i.us, %bb.d ], [ %i.l, %.lr.ph.i.us ] ; 4 uses
  %i.m = and i64 %.04051.us.i.us, %.03353.us.i.us
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i.us
  %i.o = add nuw nsw i64 %.03852.us.i.us, 1
  %i.p = shl i64 %.04051.us.i.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.i.us
  %i.q = or i64 %.04051.us.i.us, %.03353.us.i.us
  %i.r = cmpxchg ptr %i.g, i64 %.03353.us.i.us, i64 %i.q acq_rel acquire, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0
  br i1 %i.s, label %.loopexit.us, label %bb.d, !llvm.loop !179

bb.d:                                             ; preds = %bb.c, %bb.b
  %.141.us.i.us = phi i64 [ %i.p, %bb.b ], [ %.04051.us.i.us, %bb.c ]
  %.139.us.i.us = phi i64 [ %i.o, %bb.b ], [ %.03852.us.i.us, %bb.c ] ; 2 uses
  %.235.us.i.us = phi i64 [ %.03353.us.i.us, %bb.b ], [ %i.t, %bb.c ]
  %.not.not.us.i.us = icmp ugt i64 %.139.us.i.us, 63
  br i1 %.not.not.us.i.us, label %_mi_bitmap_try_find_claim_field.exit.thread.us, label %.lr.ph.split.us.i.us

bb.e:                                             ; preds = %.loopexit.us
  %i.u = tail call zeroext i1 %4(i64 noundef %i.af, ptr noundef %5) #55
  br i1 %i.u, label %.critedge, label %_mi_bitmap_unclaim.exit.us

_mi_bitmap_unclaim.exit.us:                       ; preds = %bb.e
  %i.v = load i64, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.w = and i64 %i.v, 63
  %i.x = shl nuw i64 %i.b, %i.w
  %i.y = xor i64 %i.x, -1
  %i.z = lshr i64 %i.v, 6
  %i.aa = getelementptr [8 x i8], ptr %0, i64 %i.z
  %i.ab = atomicrmw and ptr %i.aa, i64 %i.y acq_rel, align 8 ; 0 uses
  br label %_mi_bitmap_try_find_claim_field.exit.thread.us

_mi_bitmap_try_find_claim_field.exit.thread.us:   ; preds = %bb.d, %_mi_bitmap_unclaim.exit.us, %mi_bitmap_mask_.exit.i.us, %.lr.ph.split.us
  %i.ac = add nuw i64 %.02037.us, 1               ; 2 uses
  %i.ad = add i64 %spec.store.select.us, 1
  %exitcond84.not = icmp eq i64 %i.ac, %1
  br i1 %exitcond84.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !181

.loopexit.us:                                     ; preds = %bb.c
  %i.ae = shl i64 %spec.store.select.us, 6
  %i.af = add nuw i64 %.03852.us.i.us, %i.ae      ; 2 uses
  store i64 %i.af, ptr %6, align 8, !tbaa !105
  br i1 %i.e, label %.critedge, label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.e, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.0.i.i = select i1 %i.a, i64 -1, i64 %i.b
  %i.ag = add i64 %3, -64
  %brmerge68 = icmp ult i64 %i.ag, -63
  %.mux69 = sext i1 %i.f to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.a, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %_mi_bitmap_try_find_claim_field.exit.thread.us54.us
  %.02037.us46.us = phi i64 [ %i.ay, %_mi_bitmap_try_find_claim_field.exit.thread.us54.us ], [ 0, %.lr.ph.split.split.us ]
  %.02136.us47.us = phi i64 [ %i.az, %_mi_bitmap_try_find_claim_field.exit.thread.us54.us ], [ %2, %.lr.ph.split.split.us ] ; 2 uses
  %.not.us48.us = icmp ult i64 %.02136.us47.us, %1
  %spec.store.select.us49.us = select i1 %.not.us48.us, i64 %.02136.us47.us, i64 0 ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us49.us ; 2 uses
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_mi_bitmap_try_find_claim_field.exit.thread.us54.us, label %mi_bitmap_mask_.exit.i.us50.us

mi_bitmap_mask_.exit.i.us50.us:                   ; preds = %.lr.ph.split.split.us.split.us
  %i.ak = xor i64 %i.ai, -1
  %i.al = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ak, i1 true) ; 3 uses
  %.not.not50.i.us52.us = icmp ugt i64 %i.al, %i.c
  br i1 %.not.not50.i.us52.us, label %_mi_bitmap_try_find_claim_field.exit.thread.us54.us, label %.lr.ph.i.us53.us

.lr.ph.i.us53.us:                                 ; preds = %mi_bitmap_mask_.exit.i.us50.us
  %i.am = shl nsw i64 -1, %i.al
  br label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %bb.h, %.lr.ph.i.us53.us
  %.03353.i.us.us = phi i64 [ %.235.i.us.us, %bb.h ], [ %i.ai, %.lr.ph.i.us53.us ] ; 4 uses
  %.03852.i.us.us = phi i64 [ %.139.i.us.us, %bb.h ], [ %i.al, %.lr.ph.i.us53.us ] ; 4 uses
  %.04051.i.us.us = phi i64 [ %.141.i.us.us, %bb.h ], [ %i.am, %.lr.ph.i.us53.us ] ; 4 uses
  %i.an = and i64 %.04051.i.us.us, %.03353.i.us.us ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i.us.us
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.aq = add i64 %.03852.i.us.us, %i.ap
  %i.ar = sub i64 64, %i.aq                       ; 2 uses
  %i.as = add i64 %i.ar, %.03852.i.us.us
  %i.at = shl i64 %.04051.i.us.us, %i.ar
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.i.us.us
  %i.au = or i64 %.04051.i.us.us, %.03353.i.us.us
  %i.av = cmpxchg ptr %i.ah, i64 %.03353.i.us.us, i64 %i.au acq_rel acquire, align 8 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  %i.ax = extractvalue { i64, i1 } %i.av, 0
  br i1 %i.aw, label %.loopexit31.us, label %bb.h, !llvm.loop !179

bb.h:                                             ; preds = %bb.g, %bb.f
  %.141.i.us.us = phi i64 [ %i.at, %bb.f ], [ %.04051.i.us.us, %bb.g ]
  %.139.i.us.us = phi i64 [ %i.as, %bb.f ], [ %.03852.i.us.us, %bb.g ] ; 2 uses
  %.235.i.us.us = phi i64 [ %.03353.i.us.us, %bb.f ], [ %i.ax, %bb.g ]
  %.not.not.i.us.us = icmp ugt i64 %.139.i.us.us, %i.c
  br i1 %.not.not.i.us.us, label %_mi_bitmap_try_find_claim_field.exit.thread.us54.us, label %.lr.ph.split.i.us.us

_mi_bitmap_try_find_claim_field.exit.thread.us54.us: ; preds = %bb.h, %mi_bitmap_mask_.exit.i.us50.us, %.lr.ph.split.split.us.split.us
  %i.ay = add nuw i64 %.02037.us46.us, 1          ; 2 uses
  %i.az = add i64 %spec.store.select.us49.us, 1
  %exitcond83.not = icmp eq i64 %i.ay, %1
  br i1 %exitcond83.not, label %.critedge, label %.lr.ph.split.split.us.split.us, !llvm.loop !181

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_mi_bitmap_try_find_claim_field.exit.thread.us54
  %.02037.us46 = phi i64 [ %i.br, %_mi_bitmap_try_find_claim_field.exit.thread.us54 ], [ 0, %.lr.ph.split.split.us ]
  %.02136.us47 = phi i64 [ %i.bs, %_mi_bitmap_try_find_claim_field.exit.thread.us54 ], [ %2, %.lr.ph.split.split.us ] ; 2 uses
  %.not.us48 = icmp ult i64 %.02136.us47, %1
  %spec.store.select.us49 = select i1 %.not.us48, i64 %.02136.us47, i64 0 ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us49 ; 2 uses
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_mi_bitmap_try_find_claim_field.exit.thread.us54, label %mi_bitmap_mask_.exit.i.us50

mi_bitmap_mask_.exit.i.us50:                      ; preds = %.lr.ph.split.split.us.split
  %i.bd = xor i64 %i.bb, -1
  %i.be = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bd, i1 true) ; 3 uses
  %.not.not50.i.us52 = icmp ugt i64 %i.be, %i.c
  br i1 %.not.not50.i.us52, label %_mi_bitmap_try_find_claim_field.exit.thread.us54, label %.lr.ph.i.us53

.lr.ph.i.us53:                                    ; preds = %mi_bitmap_mask_.exit.i.us50
  %i.bf = shl i64 %i.b, %i.be
  br label %.lr.ph.split.i.us

.lr.ph.split.i.us:                                ; preds = %bb.k, %.lr.ph.i.us53
  %.03353.i.us = phi i64 [ %.235.i.us, %bb.k ], [ %i.bb, %.lr.ph.i.us53 ] ; 4 uses
  %.03852.i.us = phi i64 [ %.139.i.us, %bb.k ], [ %i.be, %.lr.ph.i.us53 ] ; 4 uses
  %.04051.i.us = phi i64 [ %.141.i.us, %bb.k ], [ %i.bf, %.lr.ph.i.us53 ] ; 4 uses
  %i.bg = and i64 %.04051.i.us, %.03353.i.us      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.us
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bj = add i64 %.03852.i.us, %i.bi
  %i.bk = sub i64 64, %i.bj                       ; 2 uses
  %i.bl = add i64 %i.bk, %.03852.i.us
  %i.bm = shl i64 %.04051.i.us, %i.bk
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.i.us
  %i.bn = or i64 %.04051.i.us, %.03353.i.us
  %i.bo = cmpxchg ptr %i.ba, i64 %.03353.i.us, i64 %i.bn acq_rel acquire, align 8 ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1
  %i.bq = extractvalue { i64, i1 } %i.bo, 0
  br i1 %i.bp, label %.loopexit31.us, label %bb.k, !llvm.loop !179

bb.k:                                             ; preds = %bb.j, %bb.i
  %.141.i.us = phi i64 [ %i.bm, %bb.i ], [ %.04051.i.us, %bb.j ]
  %.139.i.us = phi i64 [ %i.bl, %bb.i ], [ %.03852.i.us, %bb.j ] ; 2 uses
  %.235.i.us = phi i64 [ %.03353.i.us, %bb.i ], [ %i.bq, %bb.j ]
  %.not.not.i.us = icmp ugt i64 %.139.i.us, %i.c
  br i1 %.not.not.i.us, label %_mi_bitmap_try_find_claim_field.exit.thread.us54, label %.lr.ph.split.i.us

_mi_bitmap_try_find_claim_field.exit.thread.us54: ; preds = %bb.k, %mi_bitmap_mask_.exit.i.us50, %.lr.ph.split.split.us.split
  %i.br = add nuw i64 %.02037.us46, 1             ; 2 uses
  %i.bs = add i64 %spec.store.select.us49, 1
  %exitcond82.not = icmp eq i64 %i.br, %1
  br i1 %exitcond82.not, label %.critedge, label %.lr.ph.split.split.us.split, !llvm.loop !181

.loopexit31.us:                                   ; preds = %bb.j, %bb.g
  %.us-phi63 = phi i64 [ %spec.store.select.us49.us, %bb.g ], [ %spec.store.select.us49, %bb.j ]
  %.us-phi64 = phi i64 [ %.03852.i.us.us, %bb.g ], [ %.03852.i.us, %bb.j ]
  %i.bt = shl i64 %.us-phi63, 6
  %i.bu = add i64 %.us-phi64, %i.bt
  store i64 %i.bu, ptr %6, align 8, !tbaa !105
  br label %.critedge

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_mi_bitmap_try_find_claim_field.exit.thread
  %.02037 = phi i64 [ %i.cw, %_mi_bitmap_try_find_claim_field.exit.thread ], [ 0, %.lr.ph.split.split.preheader ]
  %.02136 = phi i64 [ %i.cx, %_mi_bitmap_try_find_claim_field.exit.thread ], [ %2, %.lr.ph.split.split.preheader ] ; 2 uses
  %.not = icmp ult i64 %.02136, %1
  %spec.store.select = select i1 %.not, i64 %.02136, i64 0 ; 3 uses
  %i.bv = getelementptr [8 x i8], ptr %0, i64 %spec.store.select ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8 ; 3 uses
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %_mi_bitmap_try_find_claim_field.exit.thread, label %mi_bitmap_mask_.exit.i

mi_bitmap_mask_.exit.i:                           ; preds = %.lr.ph.split.split
  %i.by = xor i64 %i.bw, -1
  %i.bz = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.by, i1 true) ; 3 uses
  %.not.not50.i = icmp ugt i64 %i.bz, %i.c
  br i1 %.not.not50.i, label %_mi_bitmap_try_find_claim_field.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mi_bitmap_mask_.exit.i
  %i.ca = shl i64 %.0.i.i, %i.bz
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.n
  %.03353.i = phi i64 [ %.235.i, %bb.n ], [ %i.bw, %.lr.ph.i ] ; 4 uses
  %.03852.i = phi i64 [ %.139.i, %bb.n ], [ %i.bz, %.lr.ph.i ] ; 4 uses
  %.04051.i = phi i64 [ %.141.i, %bb.n ], [ %i.ca, %.lr.ph.i ] ; 4 uses
  %i.cb = and i64 %.04051.i, %.03353.i            ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.cd = or i64 %.04051.i, %.03353.i
  %i.ce = cmpxchg ptr %i.bv, i64 %.03353.i, i64 %i.cd acq_rel acquire, align 8 ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = extractvalue { i64, i1 } %i.ce, 0
  br i1 %i.cf, label %.loopexit31, label %bb.n, !llvm.loop !179

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.ci = add i64 %.03852.i, %i.ch
  %i.cj = sub i64 64, %i.ci                       ; 2 uses
  %i.ck = add i64 %i.cj, %.03852.i
  %i.cl = shl i64 %.04051.i, %i.cj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.141.i = phi i64 [ %i.cl, %bb.m ], [ %.04051.i, %bb.l ]
  %.139.i = phi i64 [ %i.ck, %bb.m ], [ %.03852.i, %bb.l ] ; 2 uses
  %.235.i = phi i64 [ %.03353.i, %bb.m ], [ %i.cg, %bb.l ]
  %.not.not.i = icmp ugt i64 %.139.i, %i.c
  br i1 %.not.not.i, label %_mi_bitmap_try_find_claim_field.exit.thread, label %.lr.ph.split.i

.loopexit31:                                      ; preds = %bb.l
  %i.cm = shl i64 %spec.store.select, 6
  %i.cn = add i64 %.03852.i, %i.cm                ; 2 uses
  store i64 %i.cn, ptr %6, align 8, !tbaa !105
  %i.co = tail call zeroext i1 %4(i64 noundef %i.cn, ptr noundef %5) #55
  br i1 %i.co, label %.critedge, label %_mi_bitmap_unclaim.exit

_mi_bitmap_unclaim.exit:                          ; preds = %.loopexit31
  %i.cp = load i64, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.cq = and i64 %i.cp, 63
  %i.cr = shl i64 %i.b, %i.cq
  %i.cs = xor i64 %i.cr, -1
  %.0.i.i28 = select i1 %brmerge68, i64 %.mux69, i64 %i.cs
  %i.ct = lshr i64 %i.cp, 6
end_hunk_0
