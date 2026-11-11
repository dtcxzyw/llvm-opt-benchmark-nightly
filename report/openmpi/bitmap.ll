Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bitmap?download=true
inline.NumInlined: 42
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@hwloc_bitmap_last_unset:bb.a
  %.3.i = select i1 %.not30.i, i32 %.2.i, i32 %i.u ; 2 uses
  %i.v = and i64 %.324.i, 12
  %.not31.i = icmp eq i64 %i.v, 0                 ; 2 uses
  %i.w = lshr i64 %.324.i, 2
  %i.x = add nuw nsw i32 %.3.i, 2
  %.425.i = select i1 %.not31.i, i64 %.324.i, i64 %i.w
  %.4.i = select i1 %.not31.i, i32 %.3.i, i32 %i.x
  %i.y = trunc nuw nsw i64 %.425.i to i32
  %i.z = lshr i32 %i.y, 1
  %i.aa = and i32 %i.z, 1
  %i.ab = shl nuw nsw i32 %i.l, 6
  %.5.i = add nsw i32 %i.ab, -1
  %i.ac = add i32 %.5.i, %.4.i
  %i.ad = add nuw i32 %i.ac, %i.aa
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.thread, %bb.a
  %.2 = phi i32 [ %i.ad, %.thread ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_singlify(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 5 uses
  %.not30 = icmp eq i32 %i.a, 0
  br i1 %.not30, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.a to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %i.a, 1
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %.02127 = phi i32 [ 0, %.lr.ph.new ], [ %.2.1, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %.not25 = icmp eq i32 %.02127, 0
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  br i1 %.not25, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %.not26 = icmp eq i64 %i.f, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %neg = sub i64 0, %i.f
  %i.g = and i64 %i.f, %neg
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i64 [ %i.g, %bb.d ], [ 0, %bb.b ]
  store i64 %.sink, ptr %i.e, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.not25.1 = phi i1 [ true, %bb.c ], [ false, %.sink.split ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not25.1, label %bb.f, label %.sink.split.1

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21   ; 3 uses
  %.not26.1 = icmp eq i64 %i.j, 0
  br i1 %.not26.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %neg.1 = sub i64 0, %i.j
  %i.k = and i64 %i.j, %neg.1
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.g, %bb.e
  %.sink.1 = phi i64 [ %i.k, %bb.g ], [ 0, %bb.e ]
  store i64 %.sink.1, ptr %i.i, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.1, %bb.f
  %i.l = phi i1 [ true, %bb.f ], [ false, %.sink.split.1 ]
  %.2.1 = phi i32 [ 0, %bb.f ], [ 1, %.sink.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !99

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.02127.epil.init = phi i32 [ 0, %.lr.ph ], [ %.2.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod39 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %.not25.epil = icmp eq i32 %.02127.epil.init, 0
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init ; 2 uses
  br i1 %.not25.epil, label %bb.i, label %.sink.split.epil

bb.i:                                             ; preds = %.epil.preheader
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21   ; 3 uses
  %.not26.epil = icmp eq i64 %i.o, 0
  br i1 %.not26.epil, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %neg.epil = sub i64 0, %i.o
  %i.p = and i64 %i.o, %neg.epil
  br label %.sink.split.epil

.sink.split.epil:                                 ; preds = %bb.j, %.epil.preheader
  %.sink.epil = phi i64 [ %i.p, %bb.j ], [ 0, %.epil.preheader ]
  store i64 %.sink.epil, ptr %i.n, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.sink.split.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i1 [ %i.l, %._crit_edge.unr-lcssa ], [ true, %bb.i ], [ false, %.sink.split.epil ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %hwloc_bitmap_set.exit, label %bb.k

._crit_edge.thread:                               ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !22
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %hwloc_bitmap_set.exit, label %.thread

bb.k:                                             ; preds = %._crit_edge
  br i1 %.lcssa, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.q, align 8, !tbaa !22
  br label %hwloc_bitmap_set.exit

.thread:                                          ; preds = %._crit_edge.thread, %bb.k
  %i.u = phi ptr [ %i.q, %bb.k ], [ %i.s, %._crit_edge.thread ]
  %i.v = and i32 %i.a, 67108863                   ; 2 uses
  store i32 0, ptr %i.u, align 8, !tbaa !22
  %i.w = add nuw nsw i32 %i.v, 1
  %i.x = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.w)
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %hwloc_bitmap_set.exit, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ae = or i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !21
  br label %hwloc_bitmap_set.exit

hwloc_bitmap_set.exit:                            ; preds = %._crit_edge.thread, %bb.m, %.thread, %._crit_edge, %bb.l
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.l ], [ 0, %bb.m ], [ -1, %.thread ], [ 0, %._crit_edge.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -64, 65) i32 @hwloc_bitmap_compare_first(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 7 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !17     ; 7 uses
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.a, i32 %i.b) ; 6 uses
  %.not100 = icmp eq i32 %i.c, 0
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !100

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = icmp eq i64 %i.i, 0                      ; 3 uses
  %i.m = icmp eq i64 %i.k, 0                      ; 3 uses
  %or.cond.not = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.i, i1 true)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %2 = add nuw nsw i32 %i.o, 1
  %i.p = select i1 %i.l, i32 0, i32 %2            ; 2 uses
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.k, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = select i1 %i.m, i32 0, i32 %i.s          ; 2 uses
  %i.u = select i1 %i.l, i1 true, i1 %i.m
  %i.v = sub nsw i32 %i.p, %i.t
  %3 = sub nsw i32 %i.t, %i.p
  %.162 = select i1 %i.u, i32 %3, i32 %i.v
  br label %.loopexit87

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.w = icmp ult i32 %i.a, %i.b
  br i1 %i.w, label %.preheader, label %.preheader88

.preheader88:                                     ; preds = %bb.e
  %i.x = icmp ult i32 %i.b, %i.a
  br i1 %i.x, label %.lr.ph98, label %.loopexit

.lr.ph98:                                         ; preds = %.preheader88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22
  %.not69 = icmp eq i32 %i.ab, 0
  br i1 %.not69, label %.lr.ph98.split.us.preheader, label %.lr.ph98.split

.lr.ph98.split.us.preheader:                      ; preds = %.lr.ph98
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.a) ; 2 uses
  %umin = zext i32 %i.ac to i64
  %i.ad = add i32 %i.a, %i.ac
  %i.ae = sub i32 %i.ad, %i.c
  br label %.lr.ph98.split.us

.lr.ph98.split.us:                                ; preds = %.lr.ph98.split.us.preheader, %bb.f
  %indvars.iv107 = phi i64 [ %umin, %.lr.ph98.split.us.preheader ], [ %indvars.iv.next108, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv107
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21
  %.not70.us = icmp eq i64 %i.ag, 0
  br i1 %.not70.us, label %bb.f, label %.loopexit87

bb.f:                                             ; preds = %.lr.ph98.split.us
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next108 to i32
  %exitcond109.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond109.not, label %.loopexit, label %.lr.ph98.split.us, !llvm.loop !101

.preheader:                                       ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !22
  %.not72 = icmp eq i32 %i.ak, 0
  br i1 %.not72, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.a) ; 2 uses
  %umin110 = zext i32 %i.al to i64
  %i.am = add i32 %i.b, %i.al
  %i.an = sub i32 %i.am, %i.c
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %bb.g
  %indvars.iv111 = phi i64 [ %umin110, %.preheader.split.us.preheader ], [ %indvars.iv.next112, %bb.g ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv111
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !21
  %.not73.us = icmp eq i64 %i.ap, 0
  br i1 %.not73.us, label %bb.g, label %.loopexit87

bb.g:                                             ; preds = %.preheader.split.us
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %lftr.wideiv113 = trunc i64 %indvars.iv.next112 to i32
  %exitcond114.not = icmp eq i32 %i.an, %lftr.wideiv113
  br i1 %exitcond114.not, label %.loopexit, label %.preheader.split.us, !llvm.loop !102

.preheader.split:                                 ; preds = %.preheader
  %i.aq = zext i32 %i.c to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !21
  %i.at = trunc i64 %i.as to i32
  %i.au = or i32 %i.at, -2
  %.neg75 = add nsw i32 %i.au, 1
  br label %.loopexit87

.lr.ph98.split:                                   ; preds = %.lr.ph98
  %i.av = zext i32 %i.c to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 1
  %i.ba = xor i32 %i.az, 1
  br label %.loopexit87

.loopexit:                                        ; preds = %bb.f, %bb.g, %.preheader88, %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !22
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !22
  %i.bh = icmp ne i32 %i.bg, 0
  %.neg = sext i1 %i.bh to i32
  %i.bi = add nsw i32 %.neg, %i.be
  br label %.loopexit87

.loopexit87:                                      ; preds = %.lr.ph98.split.us, %.preheader.split.us, %.lr.ph98.split, %.preheader.split, %bb.d, %.loopexit
  %.7 = phi i32 [ %.162, %bb.d ], [ %i.ba, %.lr.ph98.split ], [ %i.bi, %.loopexit ], [ 1, %.preheader.split.us ], [ %.neg75, %.preheader.split ], [ -1, %.lr.ph98.split.us ]
  ret i32 %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @hwloc_bitmap_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !17     ; 5 uses
  %i.c = tail call i32 @llvm.umax.i32(i32 %i.a, i32 %i.b) ; 2 uses
  %i.d = tail call i32 @llvm.umin.i32(i32 %i.a, i32 %i.b) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22
  %i.g = icmp ne i32 %i.f, 0                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp ne i32 %i.i, 0                      ; 3 uses
  %i.k = xor i1 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = zext i1 %i.g to i32
  %.neg = sext i1 %i.j to i32
  %i.m = add nsw i32 %.neg, %i.l
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i32 %i.a, %i.b
  %i.o = sext i32 %i.c to i64                     ; 2 uses
  %i.p = sext i32 %i.d to i64                     ; 2 uses
  %.not77.not.not121 = icmp sgt i32 %i.c, %i.d    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = sext i1 %i.g to i64                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %.not77.not.not121, label %.lr.ph123.preheader, label %.loopexit

.lr.ph123.preheader:                              ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  br label %.lr.ph123

bb.f:                                             ; preds = %.lr.ph123
  %.not77.not.not = icmp sgt i64 %indvars.iv.next99, %i.p
  br i1 %.not77.not.not, label %.lr.ph123, label %.loopexit, !llvm.loop !103

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.f
  %indvars.iv98122 = phi i64 [ %indvars.iv.next99, %bb.f ], [ %i.o, %.lr.ph123.preheader ]
  %indvars.iv.next99 = add nsw i64 %indvars.iv98122, -1 ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next99
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.q
  br i1 %i.v, label %bb.f, label %.thread.loopexit81, !llvm.loop !103

bb.g:                                             ; preds = %bb.d
  %i.w = sext i1 %i.j to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %.not77.not.not121, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %.not76.not.not = icmp sgt i64 %indvars.iv.next, %i.p
  br i1 %.not76.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !104

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv120 = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv120, -1 ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.w
  br i1 %i.ab, label %bb.h, label %.thread.loopexit83, !llvm.loop !104

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.g, %bb.e, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.a) ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph125, label %.thread

.lr.ph125:                                        ; preds = %.loopexit
  %umin = zext nneg i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ai = trunc nuw i64 %i.ak to i32
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %.thread, !llvm.loop !105

bb.j:                                             ; preds = %.lr.ph125, %bb.i
  %indvars.iv101124 = phi i64 [ %umin, %.lr.ph125 ], [ %i.ak, %bb.i ]
end_hunk_0
