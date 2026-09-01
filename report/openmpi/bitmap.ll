Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bitmap?download=true
inline.NumInlined: 42
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@hwloc_bitmap_singlify:bb.a
  br i1 %.not, label %hwloc_bitmap_set.exit, label %bb.k

._crit_edge.thread:                               ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !19
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %hwloc_bitmap_set.exit, label %.thread

bb.k:                                             ; preds = %._crit_edge
  br i1 %.lcssa, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.q, align 8, !tbaa !19
  br label %hwloc_bitmap_set.exit

.thread:                                          ; preds = %._crit_edge.thread, %bb.k
  %i.u = phi ptr [ %i.q, %bb.k ], [ %i.s, %._crit_edge.thread ]
  %i.v = and i32 %i.a, 67108863                   ; 2 uses
  store i32 0, ptr %i.u, align 8, !tbaa !19
  %i.w = add nuw nsw i32 %i.v, 1
  %i.x = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.w)
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %hwloc_bitmap_set.exit, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !17
  %i.ae = or i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !17
  br label %hwloc_bitmap_set.exit

hwloc_bitmap_set.exit:                            ; preds = %._crit_edge.thread, %bb.m, %.thread, %._crit_edge, %bb.l
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.l ], [ 0, %bb.m ], [ -1, %.thread ], [ 0, %._crit_edge.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -64, 65) i32 @hwloc_bitmap_compare_first(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 7 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !11     ; 7 uses
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.a, i32 %i.b) ; 6 uses
  %.not100 = icmp eq i32 %i.c, 0
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !100

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 3 uses
  %i.l = icmp eq i64 %i.i, 0
  %i.m = icmp eq i64 %i.k, 0
  %or.cond.not = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.i, i1 true)
  %i.o = icmp ne i64 %i.i, 0                      ; 2 uses
  %i.p = trunc nuw nsw i64 %i.n to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = select i1 %i.o, i32 %i.q, i32 0          ; 2 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.k, i1 true)
  %i.t = icmp ne i64 %i.k, 0                      ; 2 uses
  %i.u = trunc nuw nsw i64 %i.s to i32
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = select i1 %i.t, i32 %i.v, i32 0          ; 2 uses
  %or.cond5 = select i1 %i.o, i1 %i.t, i1 false
  %i.x = sub nsw i32 %i.r, %i.w
  %i.y = sub nsw i32 %i.w, %i.r
  %.162 = select i1 %or.cond5, i32 %i.x, i32 %i.y
  br label %.loopexit87

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.z = icmp ult i32 %i.a, %i.b
  br i1 %i.z, label %.preheader, label %.preheader88

.preheader88:                                     ; preds = %bb.e
  %i.aa = icmp ult i32 %i.b, %i.a
  br i1 %i.aa, label %.lr.ph98, label %.loopexit

.lr.ph98:                                         ; preds = %.preheader88
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !19
  %.not69 = icmp eq i32 %i.ae, 0
  br i1 %.not69, label %.lr.ph98.split.us.preheader, label %.lr.ph98.split

.lr.ph98.split.us.preheader:                      ; preds = %.lr.ph98
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.a) ; 2 uses
  %umin = zext i32 %i.af to i64
  %i.ag = add i32 %i.a, %i.af
  %i.ah = sub i32 %i.ag, %i.c
  br label %.lr.ph98.split.us

.lr.ph98.split.us:                                ; preds = %.lr.ph98.split.us.preheader, %bb.f
  %indvars.iv107 = phi i64 [ %umin, %.lr.ph98.split.us.preheader ], [ %indvars.iv.next108, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv107
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !17
  %.not70.us = icmp eq i64 %i.aj, 0
  br i1 %.not70.us, label %bb.f, label %.loopexit87

bb.f:                                             ; preds = %.lr.ph98.split.us
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next108 to i32
  %exitcond109.not = icmp eq i32 %i.ah, %lftr.wideiv
  br i1 %exitcond109.not, label %.loopexit, label %.lr.ph98.split.us, !llvm.loop !101

.preheader:                                       ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !19
  %.not72 = icmp eq i32 %i.an, 0
  br i1 %.not72, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.a) ; 2 uses
  %umin110 = zext i32 %i.ao to i64
  %i.ap = add i32 %i.b, %i.ao
  %i.aq = sub i32 %i.ap, %i.c
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %bb.g
  %indvars.iv111 = phi i64 [ %umin110, %.preheader.split.us.preheader ], [ %indvars.iv.next112, %bb.g ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv111
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !17
  %.not73.us = icmp eq i64 %i.as, 0
  br i1 %.not73.us, label %bb.g, label %.loopexit87

bb.g:                                             ; preds = %.preheader.split.us
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %lftr.wideiv113 = trunc i64 %indvars.iv.next112 to i32
  %exitcond114.not = icmp eq i32 %i.aq, %lftr.wideiv113
  br i1 %exitcond114.not, label %.loopexit, label %.preheader.split.us, !llvm.loop !102

.preheader.split:                                 ; preds = %.preheader
  %i.at = zext i32 %i.c to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !17
  %i.aw = trunc i64 %i.av to i32
  %i.ax = or i32 %i.aw, -2
  %.neg75 = add nsw i32 %i.ax, 1
  br label %.loopexit87

.lr.ph98.split:                                   ; preds = %.lr.ph98
  %i.ay = zext i32 %i.c to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = xor i32 %i.bc, 1
  br label %.loopexit87

.loopexit:                                        ; preds = %bb.f, %bb.g, %.preheader88, %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !19
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !19
  %i.bk = icmp ne i32 %i.bj, 0
  %.neg = sext i1 %i.bk to i32
  %i.bl = add nsw i32 %.neg, %i.bh
  br label %.loopexit87

.loopexit87:                                      ; preds = %.lr.ph98.split.us, %.preheader.split.us, %.lr.ph98.split, %.preheader.split, %bb.d, %.loopexit
  %.7 = phi i32 [ %.162, %bb.d ], [ %i.bd, %.lr.ph98.split ], [ %i.bl, %.loopexit ], [ 1, %.preheader.split.us ], [ %.neg75, %.preheader.split ], [ -1, %.lr.ph98.split.us ]
  ret i32 %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @hwloc_bitmap_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !11     ; 5 uses
  %i.c = tail call i32 @llvm.umax.i32(i32 %i.a, i32 %i.b) ; 2 uses
  %i.d = tail call i32 @llvm.umin.i32(i32 %i.a, i32 %i.b) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  %2 = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = icmp ne i32 %i.i, 0                      ; 3 uses
  %i.k = xor i1 %2, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  br label %.lr.ph123

bb.f:                                             ; preds = %.lr.ph123
  %.not77.not.not.a = icmp sgt i64 %indvars.iv.next99, %i.p
  br i1 %.not77.not.not.a, label %.lr.ph123, label %.loopexit, !llvm.loop !103

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.f
  %indvars.iv98122 = phi i64 [ %indvars.iv.next99, %bb.f ], [ %i.o, %.lr.ph123.preheader ]
  %indvars.iv.next99 = add nsw i64 %indvars.iv98122, -1 ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next99
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.q
  br i1 %i.v, label %bb.f, label %.thread.loopexit81, !llvm.loop !103

bb.g:                                             ; preds = %bb.d
  %i.w = sext i1 %i.j to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %.not77.not.not121, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %.not76.not.not = icmp sgt i64 %indvars.iv.next, %i.p
  br i1 %.not76.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !104

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv120 = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv120, -1 ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17  ; 2 uses
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
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ai = trunc nuw i64 %i.ak to i32
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %.thread, !llvm.loop !105

bb.j:                                             ; preds = %.lr.ph125, %bb.i
  %indvars.iv101124 = phi i64 [ %umin, %.lr.ph125 ], [ %i.ak, %bb.i ]
  %i.ak = add nsw i64 %indvars.iv101124, -1       ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %.thread.loopexit.split.loop.exit, !llvm.loop !105

.thread.loopexit.split.loop.exit:                 ; preds = %bb.j
  %i.aq = icmp ult i64 %i.am, %i.ao
  %i.ar = select i1 %i.aq, i32 -1, i32 1
  br label %.thread

.thread.loopexit81:                               ; preds = %.lr.ph123
  %i.as = icmp ugt i64 %i.u, %i.q
  %i.at = select i1 %i.as, i32 -1, i32 1
  br label %.thread

.thread.loopexit83:                               ; preds = %.lr.ph
  %i.au = icmp ult i64 %i.aa, %i.w
  %i.av = select i1 %i.au, i32 -1, i32 1
  br label %.thread

.thread:                                          ; preds = %bb.i, %.loopexit, %.thread.loopexit.split.loop.exit, %.thread.loopexit83, %.thread.loopexit81, %bb.b
  %.9 = phi i32 [ %i.m, %bb.b ], [ %i.at, %.thread.loopexit81 ], [ %i.av, %.thread.loopexit83 ], [ %i.ar, %.thread.loopexit.split.loop.exit ], [ 0, %.loopexit ], [ 0, %bb.i ]
  ret i32 %.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hwloc_bitmap_weight(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !11     ; 3 uses
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi14 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !17
  %wide.load15 = load <2 x i64>, ptr %i.g, align 8, !tbaa !17
  %i.h = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.i = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load15)
  %i.j = trunc nuw nsw <2 x i64> %i.h to <2 x i32>
  %i.k = trunc nuw nsw <2 x i64> %i.i to <2 x i32>
  %i.l = add <2 x i32> %vec.phi, %i.j             ; 2 uses
  %i.m = add <2 x i32> %vec.phi14, %i.k           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.m, %i.l
  %i.o = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0810.ph = phi i32 [ 0, %.lr.ph ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0810 = phi i32 [ %i.t, %scalar.ph ], [ %.0810.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.q)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = add nuw nsw i32 %.0810, %i.s             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !107

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader, %bb.a
  %.09 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ %i.o, %middle.block ], [ %i.t, %scalar.ph ]
  ret i32 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hwloc_bitmap_compare_inclusion(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !11     ; 2 uses
  %. = tail call i32 @llvm.umax.i32(i32 %i.a, i32 %i.b) ; 2 uses
  %.not115 = icmp eq i32 %., 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = zext i32 %i.a to i64
  %i.h = zext i32 %i.b to i64
  %wide.trip.count = zext i32 %. to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 5 uses
  %.076111 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.aa ] ; 4 uses
end_hunk_0
