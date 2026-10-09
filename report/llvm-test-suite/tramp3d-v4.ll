Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 168
begin_hunk_0_@_ZNK9DomainMapI8IntervalILi1EEiE5touchERKS1_:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !165  ; 2 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split.preheader, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.i

_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.i:  ; preds = %bb.c
  %i.l = load i32, ptr %.08.i, align 4, !tbaa !165 ; 2 uses
  %i.m = add nsw i32 %i.j, -1
  %i.n = add i32 %i.m, %i.l
  %.not.i.i.i.i.i = icmp sle i32 %i.f, %i.n
  %i.o = icmp sge i32 %i.h, %i.l
  %i.p = select i1 %.not.i.i.i.i.i, i1 %i.o, i1 false
  br i1 %i.p, label %.split.i, label %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split.preheader, !llvm.loop !3444

_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split.preheader: ; preds = %.split.i, %bb.c, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.i
  br label %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split

_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split: ; preds = %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split.preheader, %_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit
  %.0 = phi ptr [ %.2.i, %_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit ], [ %.0.i, %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split.preheader ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 3 uses
  %.sroa.031.042 = load ptr, ptr %i.q, align 8, !tbaa !602 ; 2 uses
  %.not3743 = icmp eq ptr %.sroa.031.042, %i.q
  br i1 %.not3743, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread
  %.sroa.031.044 = phi ptr [ %.sroa.031.0, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread ], [ %.sroa.031.042, %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.044, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !165  ; 2 uses
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit

_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit:    ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.044, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !165  ; 2 uses
  %i.w = add nsw i32 %i.s, -1
  %i.x = add i32 %i.w, %i.v
  %.not.i.i.i.i = icmp sle i32 %i.f, %i.x
  %i.y = icmp sge i32 %i.h, %i.v
  %i.z = select i1 %.not.i.i.i.i, i1 %i.y, i1 false
  br i1 %i.z, label %.split.us, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread

.split.us:                                        ; preds = %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store ptr %.0, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.031.044, ptr %.sroa.428.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.f, ptr %i.ab, align 8, !tbaa !165
  store i32 %.fr10.i, ptr %i.ac, align 4, !tbaa !165
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.ad, align 8, !tbaa !165
  store i32 0, ptr %i.ae, align 4, !tbaa !165
  br label %bb.g

_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread: ; preds = %.lr.ph, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit
  %.sroa.031.0 = load ptr, ptr %.sroa.031.044, align 8, !tbaa !602 ; 2 uses
  %.not37 = icmp eq ptr %.sroa.031.0, %i.q
  br i1 %.not37, label %.critedge, label %.lr.ph, !llvm.loop !3445

.critedge:                                        ; preds = %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread, %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !601 ; 4 uses
  %.not.i17 = icmp eq ptr %i.ag, null
  br i1 %.not.i17, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i.preheader, label %bb.d

_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i.preheader: ; preds = %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.i18, %bb.d, %.critedge
  br label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i

bb.d:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !165 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i.preheader, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.i18

_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.i18: ; preds = %bb.d
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !165 ; 2 uses
  %i.al = add nsw i32 %i.ai, -1
  %i.am = add i32 %i.al, %i.ak
  %.not.i.i.i.i.i19 = icmp sle i32 %i.f, %i.am
  %i.an = icmp sge i32 %i.h, %i.ak
  %i.ao = select i1 %.not.i.i.i.i.i19, i1 %i.an, i1 false
  br i1 %i.ao, label %.preheader.i, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i.preheader

.preheader.i:                                     ; preds = %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.i18, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit28.i
  %.021.i = phi ptr [ %.0.i20, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit28.i ], [ %i.ag, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.i18 ] ; 4 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.0.i20 = load ptr, ptr %.0.in.i, align 8, !tbaa !600 ; 4 uses
  %.not25.i = icmp eq ptr %.0.i20, null
  br i1 %.not25.i, label %_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i20, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !165 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit28.i

_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit28.i: ; preds = %bb.e
  %i.as = load i32, ptr %.0.i20, align 4, !tbaa !165 ; 2 uses
  %i.at = add nsw i32 %i.aq, -1
  %i.au = add i32 %i.at, %i.as
  %.not.i.i.i.i26.i = icmp sle i32 %i.f, %i.au
  %i.av = icmp sge i32 %i.h, %i.as
  %i.aw = select i1 %.not.i.i.i.i26.i, i1 %i.av, i1 false
  br i1 %i.aw, label %.preheader.i, label %_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit, !llvm.loop !3446

_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i: ; preds = %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i.preheader, %bb.f
  %.122.i = phi ptr [ %.1.i, %bb.f ], [ %.0, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i.preheader ] ; 2 uses
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.122.i, i64 24
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !620 ; 4 uses
  %.not24.i = icmp eq ptr %.1.i, null
  br i1 %.not24.i, label %_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !601
  %i.az = icmp eq ptr %.122.i, %i.ay
  br i1 %i.az, label %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i, label %_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit, !llvm.loop !3447

_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit: ; preds = %.preheader.i, %bb.e, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit28.i, %bb.f
  %.2.i = phi ptr [ %.1.i, %bb.f ], [ %.021.i, %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit28.i ], [ %.021.i, %bb.e ], [ %.021.i, %.preheader.i ]
  br label %_ZN13DomainMapNodeI8IntervalILi1EEiE17findLeftTouchNodeERKS1_.exit.split.split, !llvm.loop !3448

_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit.thread: ; preds = %_Z7touchesI8IntervalILi1EES1_EbRKT_RKT0_.exit.thread.i, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %.split.us, %_ZN13DomainMapNodeI8IntervalILi1EEiE18nextRightTouchNodeERKS1_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb1EE9intersectERKS1_RKS3_RS4_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165  ; 5 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = load i32, ptr %0, align 4, !tbaa !165    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !165
  %i.g = add i32 %i.d, -1
  %i.h = add i32 %i.g, %i.f                       ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %1, align 4, !tbaa !165    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add nsw i32 %i.k, -1
  %i.m = add nsw i32 %i.l, %i.i                   ; 2 uses
  %i.n = icmp slt i32 %i.h, %i.i
  %i.o = icmp sgt i32 %i.d, %i.m
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.d) ; 3 uses
  %.017.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.h) ; 2 uses
  %i.p = icmp slt i32 %.017.i, %spec.select.i
  %i.q = select i1 %i.p, i32 -1, i32 1            ; 2 uses
  %i.r = sub nsw i32 %.017.i, %spec.select.i
  %i.s = sdiv i32 %i.r, %i.q
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.t = icmp sgt i32 %i.b, 0
  %i.u = load i32, ptr %1, align 4, !tbaa !165    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, -1
  %i.y = mul nsw i32 %i.x, %i.b                   ; 2 uses
  %i.z = select i1 %i.t, i32 0, i32 %i.y
  %i.aa = add nsw i32 %i.z, %i.u                  ; 4 uses
  %i.ab = icmp slt i32 %i.b, 0
  %i.ac = select i1 %i.ab, i32 0, i32 %i.y
  %i.ad = add nsw i32 %i.ac, %i.u                 ; 2 uses
  %i.ae = icmp slt i32 %i.h, %i.aa
  %i.af = icmp sgt i32 %i.d, %i.ad
  %or.cond27 = or i1 %i.ae, %i.af
  br i1 %or.cond27, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.025.i = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 5 uses
  %i.ag = icmp sgt i32 %i.d, %i.aa
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.165.i.i = phi i32 [ %.025.i, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %.063.i.i = phi i32 [ %i.d, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %.161.i.i = phi i32 [ 1, %bb.f ], [ %.025.i, %bb.e ]
  %.059.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.d, %bb.e ]
  %i.ah = sub nsw i32 %.063.i.i, %.059.i.i
  %i.ai = srem i32 %i.ah, %.165.i.i
  %i.aj = sub nsw i32 %.063.i.i, %i.ai
  %spec.select76.i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ad) ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i.i, %bb.g
  %.055.i.i = phi i32 [ %i.aj, %bb.g ], [ %i.as, %.preheader.preheader.i.i ] ; 6 uses
  %.052.i.i = phi i32 [ %.063.i.i, %bb.g ], [ %i.aw, %.preheader.preheader.i.i ] ; 9 uses
  %.051.i.i = phi i32 [ 0, %bb.g ], [ %spec.select77.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.ak = icmp sle i32 %.055.i.i, %spec.select76.i.i
  %i.al = icmp sle i32 %.052.i.i, %spec.select76.i.i
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.preheader.preheader.i.i, label %bb.i

.preheader.preheader.i.i:                         ; preds = %bb.h
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %.055.i.i, i32 %.052.i.i)
  %i.an = icmp slt i32 %.055.i.i, %.052.i.i       ; 2 uses
  %umin.i.neg38.i = sext i1 %i.an to i32
  %umin.i.i = zext i1 %i.an to i32
  %.neg.i = sub i32 %smax.i.i, %.055.i.i
  %i.ao = add i32 %.neg.i, %umin.i.neg38.i
  %i.ap = udiv i32 %i.ao, %.165.i.i
  %i.aq = add i32 %i.ap, %umin.i.i
  %i.ar = mul i32 %i.aq, %.165.i.i
  %i.as = add i32 %i.ar, %.055.i.i                ; 4 uses
  %i.at = sub nsw i32 %i.as, %.052.i.i            ; 2 uses
  %i.au = icmp eq i32 %i.as, %.052.i.i
  %i.av = icmp eq i32 %i.at, %.051.i.i
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.av
  %spec.select77.i.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %.051.i.i)
  %i.aw = add nsw i32 %.052.i.i, %.161.i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.preheader.preheader.i.i, %bb.h
  %.257.i.i = phi i32 [ %i.as, %.preheader.preheader.i.i ], [ %.055.i.i, %bb.h ] ; 2 uses
  %i.ax = icmp eq i32 %.257.i.i, %.052.i.i
  %.not.i.i = icmp sle i32 %.257.i.i, %spec.select76.i.i
  %or.cond78.not.i.i = and i1 %i.ax, %.not.i.i
  br i1 %or.cond78.not.i.i, label %bb.j, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit

bb.j:                                             ; preds = %bb.i
  %spec.select.i32.i = tail call i32 @llvm.smin.i32(i32 %.025.i, i32 1) ; 3 uses
  %spec.select28.i.i = tail call i32 @llvm.smax.i32(i32 %.025.i, i32 1) ; 2 uses
  %.not30.i.i = icmp eq i32 %.025.i, 1
  br i1 %.not30.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.i.i
  %.132.i.i = phi i32 [ %spec.select29.i.i, %.preheader.i.i ], [ %spec.select28.i.i, %bb.j ] ; 4 uses
  %.12031.i.i = phi i32 [ %i.bc, %.preheader.i.i ], [ %spec.select.i32.i, %bb.j ] ; 4 uses
  %smax.i34.i = tail call i32 @llvm.smax.i32(i32 %.12031.i.i, i32 %.132.i.i)
  %i.ay = icmp slt i32 %.12031.i.i, %.132.i.i     ; 2 uses
  %umin.i35.neg39.i = sext i1 %i.ay to i32
  %umin.i35.i = zext i1 %i.ay to i32
  %.neg37.i = sub i32 %smax.i34.i, %.12031.i.i
  %i.az = add i32 %.neg37.i, %umin.i35.neg39.i
  %i.ba = add i32 %i.az, %umin.i35.i
  %i.bb = mul nuw nsw i32 %i.ba, %spec.select.i32.i
  %i.bc = add i32 %i.bb, %.12031.i.i              ; 4 uses
  %i.bd = icmp sgt i32 %i.bc, %.132.i.i
  %i.be = select i1 %i.bd, i32 %spec.select28.i.i, i32 0
  %spec.select29.i.i = add nuw nsw i32 %i.be, %.132.i.i ; 2 uses
  %.not.i36.i = icmp eq i32 %i.bc, %spec.select29.i.i
  br i1 %.not.i36.i, label %.loopexit, label %.preheader.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %.preheader.i.i, %bb.j
  %.120.lcssa.i.i = phi i32 [ %spec.select.i32.i, %bb.j ], [ %i.bc, %.preheader.i.i ] ; 2 uses
  %i.bf = sub nsw i32 %spec.select76.i.i, %.052.i.i
  %i.bg = sdiv i32 %i.bf, %.120.lcssa.i.i
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split: ; preds = %bb.c, %.loopexit
  %.sink = phi i32 [ %i.bg, %.loopexit ], [ %i.s, %bb.c ]
  %.052.i.i.lcssa.sink = phi i32 [ %.052.i.i, %.loopexit ], [ %spec.select.i, %bb.c ]
  %.120.lcssa.i.i.sink = phi i32 [ %.120.lcssa.i.i, %.loopexit ], [ %i.q, %bb.c ]
  %i.bh = add nsw i32 %.sink, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.052.i.i.lcssa.sink, ptr %i.bi, align 4, !tbaa !165
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !165
  store i32 %.120.lcssa.i.i.sink, ptr %i.bk, align 4, !tbaa !165
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit

_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit: ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split, %bb.i, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb1EE9intersectERKS1_RKS3_RS4_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165  ; 5 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = load i32, ptr %0, align 4, !tbaa !165    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !165
  %i.g = add i32 %i.d, -1
  %i.h = add i32 %i.g, %i.f                       ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %1, align 4, !tbaa !165    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add nsw i32 %i.k, -1
  %i.m = add nsw i32 %i.l, %i.i                   ; 2 uses
  %i.n = icmp slt i32 %i.h, %i.i
  %i.o = icmp sgt i32 %i.d, %i.m
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.d) ; 3 uses
  %.017.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.h) ; 2 uses
  %i.p = icmp slt i32 %.017.i, %spec.select.i
  %i.q = select i1 %i.p, i32 -1, i32 1            ; 2 uses
  %i.r = sub nsw i32 %.017.i, %spec.select.i
  %i.s = sdiv i32 %i.r, %i.q
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.t = icmp sgt i32 %i.b, 0
  %i.u = load i32, ptr %1, align 4, !tbaa !165    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, -1
  %i.y = mul nsw i32 %i.x, %i.b                   ; 2 uses
  %i.z = select i1 %i.t, i32 0, i32 %i.y
  %i.aa = add nsw i32 %i.z, %i.u                  ; 4 uses
  %i.ab = icmp slt i32 %i.b, 0
  %i.ac = select i1 %i.ab, i32 0, i32 %i.y
  %i.ad = add nsw i32 %i.ac, %i.u                 ; 2 uses
  %i.ae = icmp slt i32 %i.h, %i.aa
  %i.af = icmp sgt i32 %i.d, %i.ad
  %or.cond27 = or i1 %i.ae, %i.af
  br i1 %or.cond27, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.025.i = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 5 uses
  %i.ag = icmp sgt i32 %i.d, %i.aa
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.165.i.i = phi i32 [ %.025.i, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %.063.i.i = phi i32 [ %i.d, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %.161.i.i = phi i32 [ 1, %bb.f ], [ %.025.i, %bb.e ]
  %.059.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.d, %bb.e ]
  %i.ah = sub nsw i32 %.063.i.i, %.059.i.i
  %i.ai = srem i32 %i.ah, %.165.i.i
  %i.aj = sub nsw i32 %.063.i.i, %i.ai
  %spec.select76.i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ad) ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i.i, %bb.g
  %.055.i.i = phi i32 [ %i.aj, %bb.g ], [ %i.as, %.preheader.preheader.i.i ] ; 6 uses
  %.052.i.i = phi i32 [ %.063.i.i, %bb.g ], [ %i.aw, %.preheader.preheader.i.i ] ; 9 uses
  %.051.i.i = phi i32 [ 0, %bb.g ], [ %spec.select77.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.ak = icmp sle i32 %.055.i.i, %spec.select76.i.i
  %i.al = icmp sle i32 %.052.i.i, %spec.select76.i.i
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.preheader.preheader.i.i, label %bb.i

.preheader.preheader.i.i:                         ; preds = %bb.h
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %.055.i.i, i32 %.052.i.i)
  %i.an = icmp slt i32 %.055.i.i, %.052.i.i       ; 2 uses
  %umin.i.neg38.i = sext i1 %i.an to i32
  %umin.i.i = zext i1 %i.an to i32
  %.neg.i = sub i32 %smax.i.i, %.055.i.i
  %i.ao = add i32 %.neg.i, %umin.i.neg38.i
  %i.ap = udiv i32 %i.ao, %.165.i.i
  %i.aq = add i32 %i.ap, %umin.i.i
  %i.ar = mul i32 %i.aq, %.165.i.i
  %i.as = add i32 %i.ar, %.055.i.i                ; 4 uses
  %i.at = sub nsw i32 %i.as, %.052.i.i            ; 2 uses
  %i.au = icmp eq i32 %i.as, %.052.i.i
  %i.av = icmp eq i32 %i.at, %.051.i.i
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.av
  %spec.select77.i.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %.051.i.i)
  %i.aw = add nsw i32 %.052.i.i, %.161.i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.preheader.preheader.i.i, %bb.h
  %.257.i.i = phi i32 [ %i.as, %.preheader.preheader.i.i ], [ %.055.i.i, %bb.h ] ; 2 uses
  %i.ax = icmp eq i32 %.257.i.i, %.052.i.i
  %.not.i.i = icmp sle i32 %.257.i.i, %spec.select76.i.i
  %or.cond78.not.i.i = and i1 %i.ax, %.not.i.i
  br i1 %or.cond78.not.i.i, label %bb.j, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit

bb.j:                                             ; preds = %bb.i
  %spec.select.i32.i = tail call i32 @llvm.smin.i32(i32 %.025.i, i32 1) ; 3 uses
  %spec.select28.i.i = tail call i32 @llvm.smax.i32(i32 %.025.i, i32 1) ; 2 uses
  %.not30.i.i = icmp eq i32 %.025.i, 1
  br i1 %.not30.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.i.i
  %.132.i.i = phi i32 [ %spec.select29.i.i, %.preheader.i.i ], [ %spec.select28.i.i, %bb.j ] ; 4 uses
  %.12031.i.i = phi i32 [ %i.bc, %.preheader.i.i ], [ %spec.select.i32.i, %bb.j ] ; 4 uses
  %smax.i34.i = tail call i32 @llvm.smax.i32(i32 %.12031.i.i, i32 %.132.i.i)
  %i.ay = icmp slt i32 %.12031.i.i, %.132.i.i     ; 2 uses
  %umin.i35.neg39.i = sext i1 %i.ay to i32
  %umin.i35.i = zext i1 %i.ay to i32
  %.neg37.i = sub i32 %smax.i34.i, %.12031.i.i
  %i.az = add i32 %.neg37.i, %umin.i35.neg39.i
  %i.ba = add i32 %i.az, %umin.i35.i
  %i.bb = mul nuw nsw i32 %i.ba, %spec.select.i32.i
  %i.bc = add i32 %i.bb, %.12031.i.i              ; 4 uses
  %i.bd = icmp sgt i32 %i.bc, %.132.i.i
  %i.be = select i1 %i.bd, i32 %spec.select28.i.i, i32 0
  %spec.select29.i.i = add nuw nsw i32 %i.be, %.132.i.i ; 2 uses
  %.not.i36.i = icmp eq i32 %i.bc, %spec.select29.i.i
  br i1 %.not.i36.i, label %.loopexit, label %.preheader.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %.preheader.i.i, %bb.j
  %.120.lcssa.i.i = phi i32 [ %spec.select.i32.i, %bb.j ], [ %i.bc, %.preheader.i.i ] ; 2 uses
  %i.bf = sub nsw i32 %spec.select76.i.i, %.052.i.i
  %i.bg = sdiv i32 %i.bf, %.120.lcssa.i.i
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split: ; preds = %bb.c, %.loopexit
  %.sink = phi i32 [ %i.bg, %.loopexit ], [ %i.s, %bb.c ]
  %.052.i.i.lcssa.sink = phi i32 [ %.052.i.i, %.loopexit ], [ %spec.select.i, %bb.c ]
  %.120.lcssa.i.i.sink = phi i32 [ %.120.lcssa.i.i, %.loopexit ], [ %i.q, %bb.c ]
  %i.bh = add nsw i32 %.sink, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.052.i.i.lcssa.sink, ptr %i.bi, align 4, !tbaa !165
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !165
  store i32 %.120.lcssa.i.i.sink, ptr %i.bk, align 4, !tbaa !165
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit

_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit: ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi2ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split, %bb.i, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb1EE9intersectERKS1_RKS3_RS4_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165  ; 5 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = load i32, ptr %0, align 4, !tbaa !165    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !165
  %i.g = add i32 %i.d, -1
  %i.h = add i32 %i.g, %i.f                       ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %1, align 4, !tbaa !165    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add nsw i32 %i.k, -1
  %i.m = add nsw i32 %i.l, %i.i                   ; 2 uses
  %i.n = icmp slt i32 %i.h, %i.i
  %i.o = icmp sgt i32 %i.d, %i.m
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.d) ; 3 uses
  %.017.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.h) ; 2 uses
  %i.p = icmp slt i32 %.017.i, %spec.select.i
  %i.q = select i1 %i.p, i32 -1, i32 1            ; 2 uses
  %i.r = sub nsw i32 %.017.i, %spec.select.i
  %i.s = sdiv i32 %i.r, %i.q
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.t = icmp sgt i32 %i.b, 0
  %i.u = load i32, ptr %1, align 4, !tbaa !165    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, -1
  %i.y = mul nsw i32 %i.x, %i.b                   ; 2 uses
  %i.z = select i1 %i.t, i32 0, i32 %i.y
  %i.aa = add nsw i32 %i.z, %i.u                  ; 4 uses
  %i.ab = icmp slt i32 %i.b, 0
  %i.ac = select i1 %i.ab, i32 0, i32 %i.y
  %i.ad = add nsw i32 %i.ac, %i.u                 ; 2 uses
  %i.ae = icmp slt i32 %i.h, %i.aa
  %i.af = icmp sgt i32 %i.d, %i.ad
  %or.cond27 = or i1 %i.ae, %i.af
  br i1 %or.cond27, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.025.i = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 5 uses
  %i.ag = icmp sgt i32 %i.d, %i.aa
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.165.i.i = phi i32 [ %.025.i, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %.063.i.i = phi i32 [ %i.d, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %.161.i.i = phi i32 [ 1, %bb.f ], [ %.025.i, %bb.e ]
  %.059.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.d, %bb.e ]
  %i.ah = sub nsw i32 %.063.i.i, %.059.i.i
  %i.ai = srem i32 %i.ah, %.165.i.i
  %i.aj = sub nsw i32 %.063.i.i, %i.ai
  %spec.select76.i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ad) ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i.i, %bb.g
  %.055.i.i = phi i32 [ %i.aj, %bb.g ], [ %i.as, %.preheader.preheader.i.i ] ; 6 uses
  %.052.i.i = phi i32 [ %.063.i.i, %bb.g ], [ %i.aw, %.preheader.preheader.i.i ] ; 9 uses
  %.051.i.i = phi i32 [ 0, %bb.g ], [ %spec.select77.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.ak = icmp sle i32 %.055.i.i, %spec.select76.i.i
  %i.al = icmp sle i32 %.052.i.i, %spec.select76.i.i
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.preheader.preheader.i.i, label %bb.i

.preheader.preheader.i.i:                         ; preds = %bb.h
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %.055.i.i, i32 %.052.i.i)
  %i.an = icmp slt i32 %.055.i.i, %.052.i.i       ; 2 uses
  %umin.i.neg38.i = sext i1 %i.an to i32
  %umin.i.i = zext i1 %i.an to i32
  %.neg.i = sub i32 %smax.i.i, %.055.i.i
  %i.ao = add i32 %.neg.i, %umin.i.neg38.i
  %i.ap = udiv i32 %i.ao, %.165.i.i
  %i.aq = add i32 %i.ap, %umin.i.i
  %i.ar = mul i32 %i.aq, %.165.i.i
  %i.as = add i32 %i.ar, %.055.i.i                ; 4 uses
  %i.at = sub nsw i32 %i.as, %.052.i.i            ; 2 uses
  %i.au = icmp eq i32 %i.as, %.052.i.i
  %i.av = icmp eq i32 %i.at, %.051.i.i
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.av
  %spec.select77.i.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %.051.i.i)
  %i.aw = add nsw i32 %.052.i.i, %.161.i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.preheader.preheader.i.i, %bb.h
  %.257.i.i = phi i32 [ %i.as, %.preheader.preheader.i.i ], [ %.055.i.i, %bb.h ] ; 2 uses
  %i.ax = icmp eq i32 %.257.i.i, %.052.i.i
  %.not.i.i = icmp sle i32 %.257.i.i, %spec.select76.i.i
  %or.cond78.not.i.i = and i1 %i.ax, %.not.i.i
  br i1 %or.cond78.not.i.i, label %bb.j, label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit

bb.j:                                             ; preds = %bb.i
  %spec.select.i32.i = tail call i32 @llvm.smin.i32(i32 %.025.i, i32 1) ; 3 uses
  %spec.select28.i.i = tail call i32 @llvm.smax.i32(i32 %.025.i, i32 1) ; 2 uses
  %.not30.i.i = icmp eq i32 %.025.i, 1
  br i1 %.not30.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.i.i
  %.132.i.i = phi i32 [ %spec.select29.i.i, %.preheader.i.i ], [ %spec.select28.i.i, %bb.j ] ; 4 uses
  %.12031.i.i = phi i32 [ %i.bc, %.preheader.i.i ], [ %spec.select.i32.i, %bb.j ] ; 4 uses
  %smax.i34.i = tail call i32 @llvm.smax.i32(i32 %.12031.i.i, i32 %.132.i.i)
  %i.ay = icmp slt i32 %.12031.i.i, %.132.i.i     ; 2 uses
  %umin.i35.neg39.i = sext i1 %i.ay to i32
  %umin.i35.i = zext i1 %i.ay to i32
  %.neg37.i = sub i32 %smax.i34.i, %.12031.i.i
  %i.az = add i32 %.neg37.i, %umin.i35.neg39.i
  %i.ba = add i32 %i.az, %umin.i35.i
  %i.bb = mul nuw nsw i32 %i.ba, %spec.select.i32.i
  %i.bc = add i32 %i.bb, %.12031.i.i              ; 4 uses
  %i.bd = icmp sgt i32 %i.bc, %.132.i.i
  %i.be = select i1 %i.bd, i32 %spec.select28.i.i, i32 0
  %spec.select29.i.i = add nuw nsw i32 %i.be, %.132.i.i ; 2 uses
  %.not.i36.i = icmp eq i32 %i.bc, %spec.select29.i.i
  br i1 %.not.i36.i, label %.loopexit, label %.preheader.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %.preheader.i.i, %bb.j
  %.120.lcssa.i.i = phi i32 [ %spec.select.i32.i, %bb.j ], [ %i.bc, %.preheader.i.i ] ; 2 uses
  %i.bf = sub nsw i32 %spec.select76.i.i, %.052.i.i
  %i.bg = sdiv i32 %i.bf, %.120.lcssa.i.i
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split: ; preds = %bb.c, %.loopexit
  %.sink = phi i32 [ %i.bg, %.loopexit ], [ %i.s, %bb.c ]
  %.052.i.i.lcssa.sink = phi i32 [ %.052.i.i, %.loopexit ], [ %spec.select.i, %bb.c ]
  %.120.lcssa.i.i.sink = phi i32 [ %.120.lcssa.i.i, %.loopexit ], [ %i.q, %bb.c ]
  %i.bh = add nsw i32 %.sink, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.052.i.i.lcssa.sink, ptr %2, align 4, !tbaa !165
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !165
  store i32 %.120.lcssa.i.i.sink, ptr %i.bj, align 4, !tbaa !165
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit

_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit: ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EE5RangeILi1EES2_ILi3EELi1ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split, %bb.i, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb1EE9intersectERKS1_RKS3_RS4_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165  ; 5 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !165    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add nsw i32 %i.f, -1
  %i.h = add nsw i32 %i.g, %i.d                   ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !165    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !165
  %i.l = add i32 %i.i, -1
  %i.m = add i32 %i.l, %i.k                       ; 2 uses
  %i.n = icmp slt i32 %i.h, %i.i
  %i.o = icmp sgt i32 %i.d, %i.m
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i, label %_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.d) ; 3 uses
  %.017.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.h) ; 2 uses
  %i.p = icmp slt i32 %.017.i, %spec.select.i
  %i.q = select i1 %i.p, i32 -1, i32 1            ; 2 uses
  %i.r = sub nsw i32 %.017.i, %spec.select.i
  %i.s = sdiv i32 %i.r, %i.q
  br label %_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.t = icmp sgt i32 %i.b, 0
  %i.u = load i32, ptr %0, align 4, !tbaa !165    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, -1
  %i.y = mul nsw i32 %i.x, %i.b                   ; 2 uses
  %i.z = select i1 %i.t, i32 0, i32 %i.y
  %i.aa = add nsw i32 %i.z, %i.u                  ; 4 uses
  %i.ab = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.ac = select i1 %i.ab, i32 0, i32 %i.y
  %i.ad = add nsw i32 %i.ac, %i.u                 ; 2 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !165   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !165
  %i.ah = add i32 %i.ae, -1
  %i.ai = add i32 %i.ah, %i.ag                    ; 2 uses
  %i.aj = icmp slt i32 %i.ad, %i.ae
  %i.ak = icmp sgt i32 %i.aa, %i.ai
  %or.cond27 = or i1 %i.aj, %i.ak
  br i1 %or.cond27, label %_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select.i28 = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 5 uses
  %i.al = icmp sgt i32 %i.aa, %i.ae
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.165.i.i = phi i32 [ 1, %bb.f ], [ %spec.select.i28, %bb.e ] ; 3 uses
  %.063.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %.161.i.i = phi i32 [ %spec.select.i28, %bb.f ], [ 1, %bb.e ]
  %.059.i.i = phi i32 [ %i.ae, %bb.f ], [ %i.aa, %bb.e ]
  %i.am = sub nsw i32 %.063.i.i, %.059.i.i
  %i.an = srem i32 %i.am, %.165.i.i
  %i.ao = sub nsw i32 %.063.i.i, %i.an
  %spec.select76.i.i = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ai) ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i.i, %bb.g
  %.055.i.i = phi i32 [ %i.ao, %bb.g ], [ %i.ax, %.preheader.preheader.i.i ] ; 6 uses
  %.052.i.i = phi i32 [ %.063.i.i, %bb.g ], [ %i.bb, %.preheader.preheader.i.i ] ; 11 uses
  %.051.i.i = phi i32 [ 0, %bb.g ], [ %spec.select77.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.ap = icmp sle i32 %.055.i.i, %spec.select76.i.i
  %i.aq = icmp sle i32 %.052.i.i, %spec.select76.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.preheader.preheader.i.i, label %bb.i

.preheader.preheader.i.i:                         ; preds = %bb.h
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %.055.i.i, i32 %.052.i.i)
  %i.as = icmp slt i32 %.055.i.i, %.052.i.i       ; 2 uses
  %umin.i.neg38.i = sext i1 %i.as to i32
  %umin.i.i = zext i1 %i.as to i32
  %.neg.i = sub i32 %smax.i.i, %.055.i.i
  %i.at = add i32 %.neg.i, %umin.i.neg38.i
  %i.au = udiv i32 %i.at, %.165.i.i
  %i.av = add i32 %i.au, %umin.i.i
  %i.aw = mul i32 %i.av, %.165.i.i
  %i.ax = add i32 %i.aw, %.055.i.i                ; 4 uses
  %i.ay = sub nsw i32 %i.ax, %.052.i.i            ; 2 uses
  %i.az = icmp eq i32 %i.ax, %.052.i.i
  %i.ba = icmp eq i32 %i.ay, %.051.i.i
  %or.cond.i.i = select i1 %i.az, i1 true, i1 %i.ba
  %spec.select77.i.i = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 %.051.i.i)
  %i.bb = add nsw i32 %.052.i.i, %.161.i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.preheader.preheader.i.i, %bb.h
  %.257.i.i = phi i32 [ %i.ax, %.preheader.preheader.i.i ], [ %.055.i.i, %bb.h ] ; 2 uses
  %i.bc = icmp eq i32 %.257.i.i, %.052.i.i
  %.not.i.i = icmp sle i32 %.257.i.i, %spec.select76.i.i
  %or.cond78.not.i.i = and i1 %i.bc, %.not.i.i
  br i1 %or.cond78.not.i.i, label %bb.j, label %_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit

bb.j:                                             ; preds = %bb.i
  %spec.select.i32.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i28, i32 1) ; 3 uses
  %spec.select28.i.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i28, i32 1) ; 2 uses
  %.not30.i.i = icmp eq i32 %spec.select.i28, 1
  br i1 %.not30.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.i.i
  %.132.i.i = phi i32 [ %spec.select29.i.i, %.preheader.i.i ], [ %spec.select28.i.i, %bb.j ] ; 4 uses
  %.12031.i.i = phi i32 [ %i.bh, %.preheader.i.i ], [ %spec.select.i32.i, %bb.j ] ; 4 uses
  %smax.i34.i = tail call i32 @llvm.smax.i32(i32 %.12031.i.i, i32 %.132.i.i)
  %i.bd = icmp slt i32 %.12031.i.i, %.132.i.i     ; 2 uses
  %umin.i35.neg39.i = sext i1 %i.bd to i32
  %umin.i35.i = zext i1 %i.bd to i32
  %.neg37.i = sub i32 %smax.i34.i, %.12031.i.i
  %i.be = add i32 %.neg37.i, %umin.i35.neg39.i
  %i.bf = add i32 %i.be, %umin.i35.i
  %i.bg = mul nuw nsw i32 %i.bf, %spec.select.i32.i
  %i.bh = add i32 %i.bg, %.12031.i.i              ; 4 uses
  %i.bi = icmp sgt i32 %i.bh, %.132.i.i
  %i.bj = select i1 %i.bi, i32 %spec.select28.i.i, i32 0
  %spec.select29.i.i = add nuw nsw i32 %i.bj, %.132.i.i ; 2 uses
  %.not.i36.i = icmp eq i32 %i.bh, %spec.select29.i.i
  br i1 %.not.i36.i, label %.loopexit, label %.preheader.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %.preheader.i.i, %bb.j
  %.120.lcssa.i.i = phi i32 [ %spec.select.i32.i, %bb.j ], [ %i.bh, %.preheader.i.i ] ; 4 uses
  %i.bk = sub nsw i32 %spec.select76.i.i, %.052.i.i
  %i.bl = srem i32 %i.bk, %.120.lcssa.i.i
  %i.bm = sub nsw i32 %spec.select76.i.i, %i.bl   ; 3 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.bn = sub nsw i32 0, %.120.lcssa.i.i          ; 2 uses
  %i.bo = sub nsw i32 %.052.i.i, %i.bm
  %i.bp = sdiv i32 %i.bo, %i.bn
  br label %_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

bb.l:                                             ; preds = %.loopexit
  %i.bq = sub nsw i32 %i.bm, %.052.i.i
  %i.br = sdiv i32 %i.bq, %.120.lcssa.i.i
  br label %_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split

_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split: ; preds = %bb.c, %bb.k, %bb.l
  %.sink = phi i32 [ %i.br, %bb.l ], [ %i.bp, %bb.k ], [ %i.s, %bb.c ]
  %.052.i.i.lcssa.sink = phi i32 [ %.052.i.i, %bb.l ], [ %i.bm, %bb.k ], [ %spec.select.i, %bb.c ]
  %.120.lcssa.i.i.sink = phi i32 [ %.120.lcssa.i.i, %bb.l ], [ %i.bn, %bb.k ], [ %i.q, %bb.c ]
  %i.bs = add nsw i32 %.sink, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.052.i.i.lcssa.sink, ptr %i.bt, align 4, !tbaa !165
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !165
  store i32 %.120.lcssa.i.i.sink, ptr %i.bv, align 4, !tbaa !165
  br label %_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit

_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit: ; preds = %_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi3ELb0EE9intersectERKS1_RKS3_RS4_.exit.sink.split, %bb.i, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21IntersectDomainSingleI5RangeILi1EE8IntervalILi1EES0_ILi3EELi2ELb1EE9intersectERKS1_RKS3_RS4_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165  ; 5 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !165    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add nsw i32 %i.f, -1
  %i.h = add nsw i32 %i.g, %i.d                   ; 2 uses
end_hunk_0
