Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uvector?download=true
inline.NumInlined: 37
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6icu_787UVector15insertElementAtEiiR10UErrorCode:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = load i32, ptr %3, align 4, !tbaa !15
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !15
  br label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21   ; 3 uses
  %.not = icmp sgt i32 %i.h, %i.b
  br i1 %.not, label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp sgt i32 %i.h, 1073741823
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %3, align 4, !tbaa !15
  br label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.j = shl nsw i32 %i.h, 1
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.c) ; 3 uses
  %i.k = icmp samesign ugt i32 %spec.select.i, 268435455
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !15
  br label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = shl nuw nsw i32 %spec.select.i, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call ptr @uprv_realloc_78(ptr noundef %i.m, i64 noundef %i.o) #21 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 7, ptr %3, align 4, !tbaa !15
  br label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.i
  store ptr %i.p, ptr %i.l, align 8, !tbaa !20
  store i32 %spec.select.i, ptr %i.g, align 4, !tbaa !21
  br label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit

_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.k, %bb.d
  %i.r = icmp sgt i32 %2, -1
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit
  %i.s = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %.not14 = icmp sgt i32 %2, %i.s
  br i1 %.not14, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.t = icmp samesign ugt i32 %i.s, %2
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.v = zext i32 %i.s to i64                     ; 4 uses
  %i.w = zext nneg i32 %2 to i64                  ; 3 uses
  %i.x = sub nsw i64 %i.v, %i.w
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.v, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %indvars.iv.prol ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !25
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !25
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !40

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ac = sub nsw i64 %i.w, %i.v
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ag = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  store ptr null, ptr %i.ah, align 8, !tbaa !25
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store i32 %1, ptr %i.aj, align 8, !tbaa !25
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !24
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !24
  br label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit.thread

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !25
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %i.at = getelementptr i8, ptr %i.ar, i64 -16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25
  store i64 %i.au, ptr %i.as, align 8, !tbaa !25
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -16
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !25
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = getelementptr i8, ptr %i.bb, i64 -32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !25
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !25
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4 ; 2 uses
  %i.bf = icmp samesign ugt i64 %indvars.iv.next.3, %i.w
  br i1 %i.bf, label %.lr.ph.new, label %._crit_edge, !llvm.loop !41

bb.m:                                             ; preds = %bb.l, %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit
  store i32 1, ptr %3, align 4, !tbaa !15
  br label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit.thread

_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit.thread: ; preds = %bb.j, %bb.h, %bb.a, %bb.f, %bb.c, %._crit_edge, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %1, %i.c
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6icu_787UVector10elementAtiEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %1, %i.c
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_787UVector11containsAllERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.k = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load ptr, ptr %i.g, align 8
  %wide.trip.count52.i.us = zext nneg i32 %i.k to i64
  br i1 %i.l, label %.preheader.i.us.preheader, label %.thread

.preheader.i.us.preheader:                        ; preds = %.lr.ph.split.us
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %bb.c
  %indvars.iv32 = phi i64 [ 0, %.preheader.i.us.preheader ], [ %indvars.iv.next.a, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv32
  %.sroa.0.0.copyload.us = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.o = ptrtoint ptr %.sroa.0.0.copyload.us to i64
  %.sroa.016.0.extract.trunc.i.us = trunc i64 %i.o to i32
  br label %.lr.ph34.split.us.i.us

.lr.ph34.split.us.i.us:                           ; preds = %bb.b, %.preheader.i.us
  %indvars.iv49.i.us = phi i64 [ %indvars.iv.next50.i.us, %bb.b ], [ 0, %.preheader.i.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv49.i.us
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25
  %i.r = icmp eq i32 %i.q, %.sroa.016.0.extract.trunc.i.us
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph34.split.us.i.us
  %indvars.iv.next50.i.us = add nuw nsw i64 %indvars.iv49.i.us, 1 ; 2 uses
  %exitcond53.not.i.us = icmp eq i64 %indvars.iv.next50.i.us, %wide.trip.count52.i.us
  br i1 %exitcond53.not.i.us, label %.thread, label %.lr.ph34.split.us.i.us, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph34.split.us.i.us
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.preheader.i.us, !llvm.loop !42

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK6icu_787UVector7indexOfE8UElementia.exit
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !23
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.s = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.h, %.lr.ph ]
  %2 = phi i32 [ %3, %.lr.ph.splitthread-pre-split ], [ %i.b, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %.lr.ph.split
  %i.v = load i32, ptr %i.f, align 8, !tbaa !24
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %.thread

.preheader.i:                                     ; preds = %.lr.ph.split
  %i.x = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.x to i32
  %i.y = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph34.i, label %.thread

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.aa = load ptr, ptr %i.g, align 8
  %wide.trip.count52.i = zext nneg i32 %i.y to i64
  br label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %bb.d, %.lr.ph34.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.d ], [ 0, %.lr.ph34.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv49.i
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !25
  %i.ad = icmp eq i32 %i.ac, %.sroa.016.0.extract.trunc.i
  br i1 %i.ad, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph34.split.us.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %.thread, label %.lr.ph34.split.us.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.preheader27.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ah = tail call noundef signext i8 %i.ae(ptr %.sroa.0.0.copyload, ptr %.sroa.0.0.copyload.i), !inline_history !29
  %.not23.i = icmp eq i8 %i.ah, 0
  br i1 %.not23.i, label %bb.e, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.loopexit20

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !24
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %.thread, !llvm.loop !3

_ZNK6icu_787UVector7indexOfE8UElementia.exit.loopexit20: ; preds = %.lr.ph.i
  %.pre = load i32, ptr %i.a, align 8, !tbaa !24
  br label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

_ZNK6icu_787UVector7indexOfE8UElementia.exit:     ; preds = %.lr.ph34.split.us.i, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.loopexit20
  %3 = phi i32 [ %.pre, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.loopexit20 ], [ %2, %.lr.ph34.split.us.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = sext i32 %3 to i64
  %5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %5, label %.lr.ph.splitthread-pre-split, label %.thread, !llvm.loop !43

.thread:                                          ; preds = %.preheader27.i, %.preheader.i, %_ZNK6icu_787UVector7indexOfE8UElementia.exit, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.lr.ph.split.us
  %6 = phi i8 [ 0, %bb.e ], [ 0, %.lr.ph.split.us ], [ 0, %bb.d ], [ 1, %bb.c ], [ 0, %bb.b ], [ 1, %bb.a ], [ 0, %.preheader27.i ], [ 0, %.preheader.i ], [ 1, %_ZNK6icu_787UVector7indexOfE8UElementia.exit ]
  ret i8 %6
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK6icu_787UVector7indexOfE8UElementia(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = icmp slt i32 %2, %i.d
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = sext i32 %2 to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %.sroa.016.0.extract.trunc = trunc i64 %i.h to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = icmp slt i32 %2, %i.j
  br i1 %i.k, label %.lr.ph34, label %.thread

.lr.ph34:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = and i8 %3, 1
  %.not22 = icmp eq i8 %i.m, 0
  %i.n = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.o = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count52 = sext i32 %i.j to i64       ; 2 uses
  br i1 %.not22, label %.lr.ph34.split.us, label %.lr.ph34.split

.lr.ph34.split.us:                                ; preds = %.lr.ph34, %bb.b
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %bb.b ], [ %i.o, %.lr.ph34 ] ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv49
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25
  %i.r = icmp eq i32 %i.q, %.sroa.016.0.extract.trunc
  br i1 %i.r, label %.thread.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph34.split.us
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.thread, label %.lr.ph34.split.us, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.v = tail call noundef signext i8 %i.s(ptr %1, ptr %.sroa.0.0.copyload)
  %.not23 = icmp eq i8 %i.v, 0
  br i1 %.not23, label %bb.d, label %.thread.loopexit57.split.loop.exit59

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.w = load i32, ptr %i.c, align 8, !tbaa !24
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %.thread, !llvm.loop !3

.lr.ph34.split:                                   ; preds = %.lr.ph34, %bb.e
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %bb.e ], [ %i.o, %.lr.ph34 ] ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv46
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %.thread.loopexit55.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph34.split
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count52
  br i1 %exitcond.not, label %.thread, label %.lr.ph34.split, !llvm.loop !2

.thread.loopexit.split.loop.exit:                 ; preds = %.lr.ph34.split.us
  %i.ac = trunc nsw i64 %indvars.iv49 to i32
  br label %.thread

.thread.loopexit55.split.loop.exit:               ; preds = %.lr.ph34.split
  %i.ad = trunc nsw i64 %indvars.iv46 to i32
  br label %.thread

.thread.loopexit57.split.loop.exit59:             ; preds = %bb.c
  %i.ae = trunc nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b, %.thread.loopexit57.split.loop.exit59, %.thread.loopexit55.split.loop.exit, %.thread.loopexit.split.loop.exit, %.preheader27, %.preheader
  %.2 = phi i32 [ -1, %.preheader27 ], [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %.preheader ], [ %i.ac, %.thread.loopexit.split.loop.exit ], [ %i.ad, %.thread.loopexit55.split.loop.exit ], [ %i.ae, %.thread.loopexit57.split.loop.exit59 ], [ -1, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_787UVector12containsNoneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.k = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load ptr, ptr %i.g, align 8
  %wide.trip.count52.i.us = zext nneg i32 %i.k to i64
  br i1 %i.l, label %.preheader.i.us.preheader, label %._crit_edge

.preheader.i.us.preheader:                        ; preds = %.lr.ph.split.us
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.us
  %indvars.iv26 = phi i64 [ 0, %.preheader.i.us.preheader ], [ %indvars.iv.next27, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.us ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv26
  %.sroa.0.0.copyload.us = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.o = ptrtoint ptr %.sroa.0.0.copyload.us to i64
  %.sroa.016.0.extract.trunc.i.us = trunc i64 %i.o to i32
  br label %.lr.ph34.split.us.i.us

.lr.ph34.split.us.i.us:                           ; preds = %bb.b, %.preheader.i.us
  %indvars.iv49.i.us = phi i64 [ %indvars.iv.next50.i.us, %bb.b ], [ 0, %.preheader.i.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv49.i.us
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25
  %i.r = icmp eq i32 %i.q, %.sroa.016.0.extract.trunc.i.us
  br i1 %i.r, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph34.split.us.i.us
  %indvars.iv.next50.i.us = add nuw nsw i64 %indvars.iv49.i.us, 1 ; 2 uses
  %exitcond53.not.i.us = icmp eq i64 %indvars.iv.next50.i.us, %wide.trip.count52.i.us
  br i1 %exitcond53.not.i.us, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.us, label %.lr.ph34.split.us.i.us, !llvm.loop !2

_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.us: ; preds = %bb.b
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader.i.us, !llvm.loop !44

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !23
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.s = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.h, %.lr.ph ]
  %2 = phi i32 [ %3, %.lr.ph.splitthread-pre-split ], [ %i.b, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %.lr.ph.split
  %i.v = load i32, ptr %i.f, align 8, !tbaa !24
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread

.preheader.i:                                     ; preds = %.lr.ph.split
  %i.x = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.x to i32
  %i.y = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph34.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.aa = load ptr, ptr %i.g, align 8
  %wide.trip.count52.i = zext nneg i32 %i.y to i64
  br label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %bb.c, %.lr.ph34.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.c ], [ 0, %.lr.ph34.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv49.i
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !25
  %i.ad = icmp eq i32 %i.ac, %.sroa.016.0.extract.trunc.i
  br i1 %i.ad, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph34.split.us.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread, label %.lr.ph34.split.us.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader27.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ah = tail call noundef signext i8 %i.ae(ptr %.sroa.0.0.copyload, ptr %.sroa.0.0.copyload.i), !inline_history !29
  %.not23.i = icmp eq i8 %i.ah, 0
  br i1 %.not23.i, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !24
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.a, !llvm.loop !3

_ZNK6icu_787UVector7indexOfE8UElementia.exit.a:   ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 8, !tbaa !24
  br label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread

_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread: ; preds = %bb.c, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.a, %.preheader27.i, %.preheader.i
  %3 = phi i32 [ %.pre, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.a ], [ %2, %.preheader.i ], [ %2, %.preheader27.i ], [ %2, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = sext i32 %3 to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread, %.lr.ph.i, %.lr.ph34.split.us.i, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.us, %.lr.ph34.split.us.i.us, %bb.a, %.lr.ph.split.us
  %4 = phi i8 [ 1, %bb.a ], [ 0, %.lr.ph.i ], [ 0, %.lr.ph34.split.us.i ], [ 1, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.us ], [ 1, %.lr.ph.split.us ], [ 0, %.lr.ph34.split.us.i.us ], [ 1, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread ]
  ret i8 %4
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_787UVector9removeAllERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6icu_787UVector15removeElementAtEi.exit, %bb.a
  %.0.lcssa = phi i8 [ 0, %bb.a ], [ %.1, %_ZN6icu_787UVector15removeElementAtEi.exit ]
  ret i8 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_787UVector15removeElementAtEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_787UVector15removeElementAtEi.exit ] ; 2 uses
  %.017 = phi i8 [ 0, %.lr.ph ], [ %.1, %_ZN6icu_787UVector15removeElementAtEi.exit ] ; 4 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !25 ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.b
  %i.l = load i32, ptr %i.f, align 8, !tbaa !24
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %_ZN6icu_787UVector15removeElementAtEi.exit

.preheader.i:                                     ; preds = %bb.b
  %i.n = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.n to i32
  %i.o = load i32, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph34.i, label %_ZN6icu_787UVector15removeElementAtEi.exit

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.q = load ptr, ptr %i.g, align 8
  %wide.trip.count52.i = zext nneg i32 %i.o to i64
  br label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %bb.c, %.lr.ph34.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.c ], [ 0, %.lr.ph34.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv49.i
  %i.s = load i32, ptr %i.r, align 8, !tbaa !25
  %i.t = icmp eq i32 %i.s, %.sroa.016.0.extract.trunc.i
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph34.split.us.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %.lr.ph34.split.us.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader27.i ] ; 3 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.x = tail call noundef signext i8 %i.u(ptr %.sroa.0.0.copyload, ptr %.sroa.0.0.copyload.i), !inline_history !29
  %.not23.i = icmp eq i8 %i.x, 0
  br i1 %.not23.i, label %bb.d, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.a

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = load i32, ptr %i.f, align 8, !tbaa !24
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next.i, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %_ZN6icu_787UVector15removeElementAtEi.exit, !llvm.loop !3

_ZNK6icu_787UVector7indexOfE8UElementia.exit.a:   ; preds = %.lr.ph.i
  %.pre = load i32, ptr %i.f, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph34.split.us.i, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.a
  %2 = phi i32 [ %.pre, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.a ], [ %i.o, %.lr.ph34.split.us.i ] ; 2 uses
  %.2.i.in = phi i64 [ %indvars.iv.i, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.a ], [ %indvars.iv49.i, %.lr.ph34.split.us.i ] ; 2 uses
  %.2.i = trunc i64 %.2.i.in to i32               ; 2 uses
  %i.ab = icmp sgt i32 %2, %.2.i
  br i1 %i.ab, label %bb.f, label %_ZN6icu_787UVector15removeElementAtEi.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.ad = and i64 %.2.i.in, 4294967295            ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %i.ag = add nsw i32 %2, -1                      ; 2 uses
  %i.ah = icmp samesign ugt i32 %i.ag, %.2.i
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZN6icu_787UVector15orphanElementAtEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !25
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !25
  %i.am = load i32, ptr %i.f, align 8, !tbaa !24
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.ap = icmp sgt i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZN6icu_787UVector15orphanElementAtEi.exit.i, !llvm.loop !1

_ZN6icu_787UVector15orphanElementAtEi.exit.i:     ; preds = %.lr.ph.i.i, %bb.f
  %.lcssa.i.i = phi i32 [ %i.ag, %bb.f ], [ %i.an, %.lr.ph.i.i ]
  store i32 %.lcssa.i.i, ptr %i.f, align 8, !tbaa !24
  %.not.i10 = icmp eq ptr %i.af, null
  br i1 %.not.i10, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_787UVector15orphanElementAtEi.exit.i
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  %.not4.i = icmp eq ptr %i.aq, null
  br i1 %.not4.i, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.aq(ptr noundef nonnull %i.af), !inline_history !28
  br label %_ZN6icu_787UVector15removeElementAtEi.exit

_ZN6icu_787UVector15removeElementAtEi.exit:       ; preds = %bb.d, %bb.c, %.preheader.i, %.preheader27.i, %bb.h, %bb.g, %_ZN6icu_787UVector15orphanElementAtEi.exit.i, %bb.e
  %.1 = phi i8 [ 1, %bb.h ], [ 1, %bb.e ], [ 1, %_ZN6icu_787UVector15orphanElementAtEi.exit.i ], [ 1, %bb.g ], [ %.017, %.preheader27.i ], [ %.017, %bb.c ], [ %.017, %.preheader.i ], [ %.017, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !24
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !46
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_787UVector15removeElementAtEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN6icu_787UVector15orphanElementAtEi.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN6icu_787UVector15orphanElementAtEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = add nsw i32 %i.c, -1                     ; 2 uses
  %i.k = icmp samesign ult i32 %1, %i.j
  br i1 %i.k, label %.lr.ph.i, label %_ZN6icu_787UVector15orphanElementAtEi.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !25
  store i64 %i.o, ptr %i.n, align 8, !tbaa !25
  %i.p = load i32, ptr %i.b, align 8, !tbaa !24
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %i.r = trunc nuw i64 %indvars.iv.next.i to i32
  %i.s = icmp sgt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i, label %_ZN6icu_787UVector15orphanElementAtEi.exit, !llvm.loop !1

_ZN6icu_787UVector15orphanElementAtEi.exit:       ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i32 [ %i.j, %bb.c ], [ %i.q, %.lr.ph.i ]
  store i32 %.lcssa.i, ptr %i.b, align 8, !tbaa !24
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZN6icu_787UVector15orphanElementAtEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_787UVector15orphanElementAtEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %.not4 = icmp eq ptr %i.u, null
  br i1 %.not4, label %_ZN6icu_787UVector15orphanElementAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.u(ptr noundef nonnull %i.i)
  br label %_ZN6icu_787UVector15orphanElementAtEi.exit.thread

_ZN6icu_787UVector15orphanElementAtEi.exit.thread: ; preds = %bb.a, %bb.b, %bb.e, %bb.d, %_ZN6icu_787UVector15orphanElementAtEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_787UVector9retainAllERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6icu_787UVector15removeElementAtEi.exit, %bb.a
  %.0.lcssa = phi i8 [ 0, %bb.a ], [ %.1, %_ZN6icu_787UVector15removeElementAtEi.exit ]
  ret i8 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_787UVector15removeElementAtEi.exit
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_787UVector15removeElementAtEi.exit ] ; 3 uses
  %.017 = phi i8 [ 0, %.lr.ph ], [ %.1, %_ZN6icu_787UVector15removeElementAtEi.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next
  %.sroa.0.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !25 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.b
  %i.m = load i32, ptr %i.f, align 8, !tbaa !24
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.thread

.preheader.i:                                     ; preds = %bb.b
  %i.o = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.p = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph34.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.thread

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.r = load ptr, ptr %i.g, align 8
  %wide.trip.count52.i = zext nneg i32 %i.p to i64
  br label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %bb.c, %.lr.ph34.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.c ], [ 0, %.lr.ph34.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv49.i
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25
  %i.u = icmp eq i32 %i.t, %.sroa.016.0.extract.trunc.i
  br i1 %i.u, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph34.split.us.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.thread, label %.lr.ph34.split.us.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader27.i ] ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.y = tail call noundef signext i8 %i.v(ptr %.sroa.0.0.copyload, ptr %.sroa.0.0.copyload.i), !inline_history !29
  %.not23.i = icmp eq i8 %i.y, 0
  br i1 %.not23.i, label %bb.d, label %_ZN6icu_787UVector15removeElementAtEi.exit

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = load i32, ptr %i.f, align 8, !tbaa !24
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.thread, !llvm.loop !3

_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.thread: ; preds = %bb.d, %bb.c, %.preheader.i, %.preheader27.i
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %.not10 = icmp sgt i64 %indvars.iv, %i.ad
  br i1 %.not10, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.thread
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %i.ah = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZN6icu_787UVector15orphanElementAtEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !20  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !25
  store i64 %i.an, ptr %i.am, align 8, !tbaa !25
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !24
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.ar = icmp sgt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN6icu_787UVector15orphanElementAtEi.exit.i, !llvm.loop !1

_ZN6icu_787UVector15orphanElementAtEi.exit.i:     ; preds = %.lr.ph.i.i, %bb.e
  %.lcssa.i.i = phi i32 [ %i.ah, %bb.e ], [ %i.ap, %.lr.ph.i.i ]
  store i32 %.lcssa.i.i, ptr %i.a, align 8, !tbaa !24
  %.not.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i8, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_787UVector15orphanElementAtEi.exit.i
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  %.not4.i = icmp eq ptr %i.as, null
  br i1 %.not4.i, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.as(ptr noundef nonnull %i.ag), !inline_history !28
  br label %_ZN6icu_787UVector15removeElementAtEi.exit

_ZN6icu_787UVector15removeElementAtEi.exit:       ; preds = %.lr.ph.i, %.lr.ph34.split.us.i, %bb.g, %bb.f, %_ZN6icu_787UVector15orphanElementAtEi.exit.i, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.thread
  %.1 = phi i8 [ %.017, %.lr.ph34.split.us.i ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %_ZNK6icu_787UVector7indexOfE8UElementia.exit.thread.thread ], [ 1, %_ZN6icu_787UVector15orphanElementAtEi.exit.i ], [ %.017, %.lr.ph.i ] ; 2 uses
  %i.at = icmp sgt i64 %indvars.iv, 1
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN6icu_787UVector15orphanElementAtEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = add nsw i32 %i.c, -1                     ; 2 uses
  %i.k = icmp samesign ult i32 %1, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.lcssa = phi i32 [ %i.j, %bb.c ], [ %i.q, %.lr.ph ]
  store i32 %.lcssa, ptr %i.b, align 8, !tbaa !24
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load i64, ptr %i.m, align 8, !tbaa !25
  store i64 %i.o, ptr %i.n, align 8, !tbaa !25
  %i.p = load i32, ptr %i.b, align 8, !tbaa !24
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %i.r = trunc nuw i64 %indvars.iv.next to i32
  %i.s = icmp sgt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !1

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %.09 = phi ptr [ %i.i, %._crit_edge ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.09
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_787UVector13removeElementEPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader27.i.i

.preheader27.i.i:                                 ; preds = %bb.a
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6icu_787UVector15removeElementAtEi.exit

.lr.ph.i.i:                                       ; preds = %.preheader27.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

.preheader.i.i:                                   ; preds = %bb.a
  br i1 %i.e, label %.lr.ph34.i.i, label %_ZN6icu_787UVector15removeElementAtEi.exit

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %wide.trip.count52.i.i = zext nneg i32 %i.d to i64
  br label %.lr.ph34.split.i.i

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.l = tail call noundef signext i8 %i.i(ptr %1, ptr %.sroa.0.0.copyload.i.i), !inline_history !48
  %.not23.i.i = icmp eq i8 %i.l, 0
  br i1 %.not23.i.i, label %bb.c, label %_ZNK6icu_787UVector7indexOfEPvi.exit.a

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !24
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next.i.i, %i.n
  br i1 %i.o, label %bb.b, label %_ZN6icu_787UVector15removeElementAtEi.exit, !llvm.loop !3

.lr.ph34.split.i.i:                               ; preds = %bb.d, %.lr.ph34.i.i
  %indvars.iv46.i.i = phi i64 [ %indvars.iv.next47.i.i, %bb.d ], [ 0, %.lr.ph34.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv46.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = icmp eq ptr %1, %i.q
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph34.split.i.i
  %indvars.iv.next47.i.i = add nuw nsw i64 %indvars.iv46.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next47.i.i, %wide.trip.count52.i.i
  br i1 %exitcond.not.i.i, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %.lr.ph34.split.i.i, !llvm.loop !2

_ZNK6icu_787UVector7indexOfEPvi.exit.a:           ; preds = %bb.b
  %.pre = load i32, ptr %i.c, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph34.split.i.i, %_ZNK6icu_787UVector7indexOfEPvi.exit.a
  %2 = phi i32 [ %.pre, %_ZNK6icu_787UVector7indexOfEPvi.exit.a ], [ %i.d, %.lr.ph34.split.i.i ] ; 2 uses
  %.2.i.i.in = phi i64 [ %indvars.iv.i.i, %_ZNK6icu_787UVector7indexOfEPvi.exit.a ], [ %indvars.iv46.i.i, %.lr.ph34.split.i.i ] ; 2 uses
  %.2.i.i = trunc i64 %.2.i.i.in to i32           ; 2 uses
  %i.s = icmp sgt i32 %2, %.2.i.i
  br i1 %i.s, label %bb.f, label %_ZN6icu_787UVector15removeElementAtEi.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = and i64 %.2.i.i.in, 4294967295           ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %i.y = add nsw i32 %2, -1                       ; 2 uses
  %i.z = icmp samesign ugt i32 %i.y, %.2.i.i
  br i1 %i.z, label %.lr.ph.i.i5, label %_ZN6icu_787UVector15orphanElementAtEi.exit.i

.lr.ph.i.i5:                                      ; preds = %bb.f, %.lr.ph.i.i5
  %indvars.iv.i.i6 = phi i64 [ %indvars.iv.next.i.i7, %.lr.ph.i.i5 ], [ %i.v, %bb.f ] ; 2 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !20  ; 2 uses
  %indvars.iv.next.i.i7 = add nuw nsw i64 %indvars.iv.i.i6, 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i7
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i6
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !25
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !25
  %i.ae = load i32, ptr %i.c, align 8, !tbaa !24
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.ag = trunc nuw i64 %indvars.iv.next.i.i7 to i32
  %i.ah = icmp sgt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i5, label %_ZN6icu_787UVector15orphanElementAtEi.exit.i, !llvm.loop !1

_ZN6icu_787UVector15orphanElementAtEi.exit.i:     ; preds = %.lr.ph.i.i5, %bb.f
  %.lcssa.i.i = phi i32 [ %i.y, %bb.f ], [ %i.af, %.lr.ph.i.i5 ]
  store i32 %.lcssa.i.i, ptr %i.c, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_787UVector15orphanElementAtEi.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 2 uses
  %.not4.i = icmp eq ptr %i.aj, null
  br i1 %.not4.i, label %_ZN6icu_787UVector15removeElementAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.aj(ptr noundef nonnull %i.x), !inline_history !28
  br label %_ZN6icu_787UVector15removeElementAtEi.exit

_ZN6icu_787UVector15removeElementAtEi.exit:       ; preds = %bb.c, %bb.d, %.preheader.i.i, %.preheader27.i.i, %bb.h, %bb.g, %_ZN6icu_787UVector15orphanElementAtEi.exit.i, %bb.e
  %.0 = phi i8 [ 1, %bb.h ], [ 1, %bb.e ], [ 1, %_ZN6icu_787UVector15orphanElementAtEi.exit.i ], [ 1, %bb.g ], [ 0, %.preheader27.i.i ], [ 0, %.preheader.i.i ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %2, %i.d                    ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.a
  br i1 %i.e, label %.lr.ph.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

.lr.ph.i:                                         ; preds = %.preheader27.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = sext i32 %2 to i64
  br label %bb.b

.preheader.i:                                     ; preds = %bb.a
  br i1 %i.e, label %.lr.ph34.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = sext i32 %2 to i64
  %wide.trip.count52.i = sext i32 %i.d to i64
  br label %.lr.ph34.split.i

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.g, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.n = tail call noundef signext i8 %i.k(ptr %1, ptr %.sroa.0.0.copyload.i), !inline_history !29
  %.not23.i = icmp eq i8 %i.n, 0
  br i1 %.not23.i, label %bb.c, label %.thread.loopexit57.split.loop.exit59.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = load i32, ptr %i.c, align 8, !tbaa !24
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %bb.b, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit, !llvm.loop !3

.lr.ph34.split.i:                                 ; preds = %bb.d, %.lr.ph34.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %bb.d ], [ %i.j, %.lr.ph34.i ] ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv46.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = icmp eq ptr %1, %i.s
  br i1 %i.t, label %.thread.loopexit55.split.loop.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph34.split.i
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next47.i, %wide.trip.count52.i
  br i1 %exitcond.not.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit, label %.lr.ph34.split.i, !llvm.loop !2

.thread.loopexit55.split.loop.exit.i:             ; preds = %.lr.ph34.split.i
  %i.u = trunc nsw i64 %indvars.iv46.i to i32
  br label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

.thread.loopexit57.split.loop.exit59.i:           ; preds = %bb.b
  %i.v = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

_ZNK6icu_787UVector7indexOfE8UElementia.exit:     ; preds = %bb.c, %bb.d, %.preheader27.i, %.preheader.i, %.thread.loopexit55.split.loop.exit.i, %.thread.loopexit57.split.loop.exit59.i
  %.2.i = phi i32 [ -1, %.preheader27.i ], [ %i.v, %.thread.loopexit57.split.loop.exit59.i ], [ %i.u, %.thread.loopexit55.split.loop.exit.i ], [ -1, %.preheader.i ], [ -1, %bb.d ], [ -1, %bb.c ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_787UVector6equalsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.preheader, label %.preheader21

.preheader21:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not1924 = icmp sgt i32 %i.b, 0
  br i1 %.not1924, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %.lr.ph29, label %.critedge

.lr.ph29:                                         ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !49

bb.d:                                             ; preds = %.lr.ph29, %bb.c
  %indvars.iv36 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next37, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv36
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv36
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %.not20 = icmp eq ptr %i.p, %i.r
  br i1 %.not20, label %bb.c, label %.critedge

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.a, align 8, !tbaa !24
  %i.t = sext i32 %i.s to i64
  %.not19 = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %.not19, label %bb.f, label %.critedge, !llvm.loop !50

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %.sroa.0.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.z = tail call noundef signext i8 %i.w(ptr %i.v, ptr %.sroa.0.0.copyload)
  %.not18 = icmp eq i8 %i.z, 0
  br i1 %.not18, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.preheader21, %.preheader, %bb.a
  %.1 = phi i8 [ 1, %.preheader21 ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %.preheader ], [ 0, %bb.d ], [ 0, %bb.f ], [ 1, %bb.e ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_787UVector7indexOfEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.01.0.insert.ext = zext i32 %1 to i64
  %i.a = inttoptr i64 %.sroa.01.0.insert.ext to ptr
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = icmp slt i32 %2, %i.e                    ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.a
  br i1 %i.f, label %.lr.ph.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

.lr.ph.i:                                         ; preds = %.preheader27.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %2 to i64
  br label %bb.c

.preheader.i:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph34.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = sext i32 %2 to i64
  %wide.trip.count52.i = sext i32 %i.e to i64
  br label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %bb.b, %.lr.ph34.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.b ], [ %i.k, %.lr.ph34.i ] ; 3 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv49.i
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp eq i32 %i.m, %1
  br i1 %i.n, label %.thread.loopexit.split.loop.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph34.split.us.i
  %indvars.iv.next50.i = add nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit, label %.lr.ph34.split.us.i, !llvm.loop !2

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.r = tail call noundef signext i8 %i.o(ptr %i.a, ptr %.sroa.0.0.copyload.i), !inline_history !29
  %.not23.i = icmp eq i8 %i.r, 0
  br i1 %.not23.i, label %bb.d, label %.thread.loopexit57.split.loop.exit59.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.d, align 8, !tbaa !24
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %bb.c, label %_ZNK6icu_787UVector7indexOfE8UElementia.exit, !llvm.loop !3

.thread.loopexit.split.loop.exit.i:               ; preds = %.lr.ph34.split.us.i
  %i.v = trunc nsw i64 %indvars.iv49.i to i32
  br label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

.thread.loopexit57.split.loop.exit59.i:           ; preds = %bb.c
  %i.w = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZNK6icu_787UVector7indexOfE8UElementia.exit

_ZNK6icu_787UVector7indexOfE8UElementia.exit:     ; preds = %bb.d, %bb.b, %.preheader27.i, %.preheader.i, %.thread.loopexit.split.loop.exit.i, %.thread.loopexit57.split.loop.exit59.i
  %.2.i = phi i32 [ -1, %.preheader27.i ], [ -1, %bb.b ], [ %i.w, %.thread.loopexit57.split.loop.exit59.i ], [ -1, %.preheader.i ], [ %i.v, %.thread.loopexit.split.loop.exit.i ], [ -1, %bb.d ]
  ret i32 %.2.i
}

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6icu_787UVector7toArrayEPPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %i.b, 4
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.067.epil.init = phi ptr [ %1, %.lr.ph ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.067.epil = phi ptr [ %.067.epil.init, %.epil.preheader ], [ %i.i, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %.067.epil, i64 8
  store ptr %i.h, ptr %.067.epil, align 8, !tbaa !31
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !51

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret ptr %1

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.067 = phi ptr [ %1, %.lr.ph.new ], [ %i.ab, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %.067, i64 8
  store ptr %i.l, ptr %.067, align 8, !tbaa !31
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %.067, i64 16
  store ptr %i.q, ptr %i.m, align 8, !tbaa !31
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %.067, i64 24
  store ptr %i.v, ptr %i.r, align 8, !tbaa !31
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %.067, i64 32 ; 2 uses
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !31
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  store ptr %1, ptr %i.a, align 8, !tbaa !23
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_787UVector12sortedInsertEPvPFi8UElementS2_ER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UVector12sortedInsertE8UElementPFiS1_S1_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_787UVector12sortedInsertE8UElementPFiS1_S1_ER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = load i32, ptr %3, align 4, !tbaa !15
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, -1
  br i1 %i.f, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21   ; 3 uses
  %.not = icmp sgt i32 %i.h, %i.b
  br i1 %.not, label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i32 %i.h, 1073741823
  br i1 %i.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = shl nsw i32 %i.h, 1
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.c) ; 3 uses
  %i.k = icmp samesign ugt i32 %spec.select.i, 268435455
  br i1 %i.k, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = shl nuw nsw i32 %spec.select.i, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call ptr @uprv_realloc_78(ptr noundef %i.m, i64 noundef %i.o) #21 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.l, align 8, !tbaa !20
  store i32 %spec.select.i, ptr %i.g, align 4, !tbaa !21
  %.pre = load i32, ptr %i.a, align 8, !tbaa !24
  br label %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sink = phi i32 [ 1, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ], [ 7, %bb.f ]
  store i32 %.sink, ptr %3, align 4, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 2 uses
  %.not22 = icmp eq ptr %i.s, null
  br i1 %.not22, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %i.s(ptr noundef %1)
  br label %bb.k

_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.g, %bb.c
  %i.t = phi i32 [ %.pre, %bb.g ], [ %i.b, %bb.c ] ; 2 uses
  %.not2326 = icmp eq i32 %i.t, 0
  br i1 %.not2326, label %._crit_edge.._crit_edge32_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6icu_787UVector14ensureCapacityEiR10UErrorCode.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZN6icu_787UVector12sortedInsertE8UElementPFiS1_S1_ER10UErrorCode:bb.a
  %.pre-phi = phi i64 [ %.pre35, %._crit_edge.._crit_edge32_crit_edge ], [ %i.ag, %.lr.ph31.new ], [ %i.ag, %.prol.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.pre-phi
  store ptr %1, ptr %i.aq, align 8, !tbaa !25
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !24
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.a, align 8, !tbaa !24
  br label %bb.k

.lr.ph31.new:                                     ; preds = %.prol.loopexit, %.lr.ph31.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph31.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !25
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !25
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !25
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -16
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !25
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !25
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = getelementptr i8, ptr %i.bi, i64 -32
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !25
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4 ; 2 uses
  %i.bm = icmp sgt i64 %indvars.iv.next.3, %i.ag
  br i1 %i.bm, label %.lr.ph31.new, label %._crit_edge32, !llvm.loop !55

bb.k:                                             ; preds = %bb.h, %bb.i, %._crit_edge32
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_787UVector12sortedInsertEiPFi8UElementS1_ER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.01.0.insert.ext = zext i32 %1 to i64
  %i.a = inttoptr i64 %.sroa.01.0.insert.ext to ptr
  tail call void @_ZN6icu_787UVector12sortedInsertE8UElementPFiS1_S1_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.a, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_787UVector5sortiER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !15
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  tail call void @uprv_sortArray_78(ptr noundef %i.d, i32 noundef %i.f, i32 noundef 8, ptr noundef nonnull @_ZN6icu_78L15sortiComparatorEPKvS1_S1_, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @uprv_sortArray_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZN6icu_78L15sortiComparatorEPKvS1_S1_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #14 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !25
  %i.b = load i32, ptr %2, align 8, !tbaa !25
  %i.c = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_787UVector4sortEPFi8UElementS1_ER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !31
  %i.b = load i32, ptr %2, align 4, !tbaa !15
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  call void @uprv_sortArray_78(ptr noundef %i.e, i32 noundef %i.g, i32 noundef 8, ptr noundef nonnull @_ZN6icu_78L14sortComparatorEPKvS1_S1_, ptr noundef nonnull %i.a, i8 noundef signext 0, ptr noundef nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN6icu_78L14sortComparatorEPKvS1_S1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !tbaa !25
  %.sroa.02.0.copyload = load ptr, ptr %2, align 8, !tbaa !25
  %i.b = tail call noundef i32 %i.a(ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_787UVector19sortWithUComparatorEPFiPKvS2_S2_ES2_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !15
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  tail call void @uprv_sortArray_78(ptr noundef %i.d, i32 noundef %i.f, i32 noundef 8, ptr noundef %1, ptr noundef %2, i8 noundef signext 1, ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { allocsize(1) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = distinct !{!3, !26}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTS10UErrorCode", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSN6icu_787UObjectE"}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!"p1 _ZTS8UElement", !17, i64 0}
!19 = !{!"_ZTSN6icu_787UVectorE", !16, i64 0, !9, i64 8, !9, i64 12, !18, i64 16, !17, i64 24, !17, i64 32}
!20 = !{!19, !18, i64 16}
!21 = !{!19, !9, i64 12}
!22 = !{!19, !17, i64 24}
!23 = !{!19, !17, i64 32}
!24 = !{!19, !9, i64 8}
!25 = !{!8, !8, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{ptr @_ZN6icu_787UVector15removeElementAtEi}
!29 = !{ptr @_ZNK6icu_787UVector7indexOfE8UElementia}
!30 = !{!"llvm.loop.unswitch.partial.disable"}
!31 = !{!17, !17, i64 0}
!32 = !{ptr @_ZN6icu_787UVector17removeAllElementsEv}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !27}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{!37, !26}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !26}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26, !30}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26, !30}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = !{ptr @_ZNK6icu_787UVector7indexOfEPvi, ptr @_ZNK6icu_787UVector7indexOfE8UElementia}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !26}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !26}
end_hunk_1
