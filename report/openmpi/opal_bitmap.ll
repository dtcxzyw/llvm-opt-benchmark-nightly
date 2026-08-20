inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@opal_bitmap_init:bb.a

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_bitmap_clear_all_bits(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -5, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_bitmap_set_bit(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 3 uses
  %i.e = icmp sgt i32 %1, %i.d
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 6                           ; 4 uses
  %i.g = and i32 %1, 63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %.not = icmp slt i32 %i.f, %i.i
  br i1 %.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %i.f, 1
  %.not33 = icmp samesign ult i32 %i.f, %i.d
  %spec.select = select i1 %.not33, i32 %i.j, i32 %i.d ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = zext nneg i32 %spec.select to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = tail call ptr @realloc(ptr noundef %i.l, i64 noundef %i.n) #16 ; 4 uses
  store ptr %i.o, ptr %i.k, align 8, !tbaa !8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.t = sub nsw i32 %spec.select, %i.q
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.v, i1 false)
  store i32 %spec.select, ptr %i.h, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.w = phi ptr [ %.pre, %._crit_edge ], [ %i.o, %bb.e ]
  %i.x = zext nneg i32 %i.g to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = zext nneg i32 %i.f to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = or i64 %i.ab, %i.y
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.f
  %.026 = phi i32 [ 0, %bb.f ], [ -5, %bb.a ], [ -5, %bb.b ], [ -2, %bb.d ]
  ret i32 %.026
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_bitmap_clear_bit(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %i.e = shl nsw i32 %i.d, 6
  %.not = icmp slt i32 %1, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = zext nneg i32 %i.f to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16
  %i.p = and i64 %i.o, %i.j
  store i64 %i.p, ptr %i.n, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -5, %bb.b ], [ -5, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @opal_bitmap_is_set_bit(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %i.e = shl nsw i32 %i.d, 6
  %.not = icmp slt i32 %1, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %i.m = zext nneg i32 %i.g to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.l, %i.n
  %.not12 = icmp ne i64 %i.o, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ %.not12, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_bitmap_set_all_bits(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 -1, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -5, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_bitmap_find_and_set_first_unset_bit(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %opal_bitmap_set_bit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14   ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.d, label %.critedge.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.e, label %bb.c, !llvm.loop !19

.critedge.loopexit:                               ; preds = %bb.c
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %.028.lcssa = phi i32 [ 0, %bb.b ], [ %i.j, %.critedge.loopexit ] ; 3 uses
  %i.k = icmp eq i32 %.028.lcssa, %i.c
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %.critedge
  %2 = shl nsw i32 %i.c, 6                        ; 2 uses
  store i32 %2, ptr %1, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15   ; 3 uses
  %i.n = icmp sgt i32 %2, %i.m
  br i1 %i.n, label %opal_bitmap_set_bit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %i.c, 67108863                   ; 4 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp slt i32 %i.o, %i.p
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !8
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = add nuw nsw i32 %i.o, 1
  %.not33.i = icmp samesign ult i32 %i.o, %i.m
  %spec.select.i = select i1 %.not33.i, i32 %i.q, i32 %i.m ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = zext nneg i32 %spec.select.i to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call ptr @realloc(ptr noundef %i.s, i64 noundef %i.u) #16 ; 4 uses
  store ptr %i.v, ptr %i.r, align 8, !tbaa !8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %opal_bitmap_set_bit.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = sub nsw i32 %spec.select.i, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.ac, i1 false)
  store i32 %spec.select.i, ptr %i.b, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.ad = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.v, %bb.h ]
  %i.ae = zext nneg i32 %i.o to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = or i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !16
  br label %opal_bitmap_set_bit.exit

bb.j:                                             ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = zext nneg i32 %.028.lcssa to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !16 ; 3 uses
  %i.an = add i64 %i.am, 1
  %i.ao = or i64 %i.an, %i.am                     ; 2 uses
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !16
  %i.ap = xor i64 %i.ao, %i.am                    ; 2 uses
  %i.aq = and i64 %i.ap, 1
  %.not38 = icmp eq i64 %i.aq, 0
  br i1 %.not38, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %bb.j, %.lr.ph40
  %i.ar = phi i32 [ %i.as, %.lr.ph40 ], [ 0, %bb.j ]
  %.039 = phi i64 [ %i.at, %.lr.ph40 ], [ %i.ap, %bb.j ] ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.at = lshr exact i64 %.039, 1
  %i.au = and i64 %.039, 2
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %.lr.ph40, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph40, %bb.j
  %i.av = phi i32 [ 0, %bb.j ], [ %i.as, %.lr.ph40 ]
  %i.aw = shl nsw i32 %.028.lcssa, 6
  %i.ax = add nsw i32 %i.av, %i.aw
  store i32 %i.ax, ptr %1, align 4, !tbaa !18
  br label %opal_bitmap_set_bit.exit

opal_bitmap_set_bit.exit:                         ; preds = %bb.i, %bb.g, %bb.e, %bb.a, %._crit_edge
  %.029 = phi i32 [ 0, %._crit_edge ], [ -5, %bb.a ], [ 0, %bb.i ], [ -2, %bb.g ], [ -5, %bb.e ]
  ret i32 %.029
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_bitmap_bitwise_and_inplace(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 8 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.l
  %scevgep19 = getelementptr i8, ptr %i.i, i64 %i.l
  %bound0 = icmp ult ptr %i.k, %scevgep19
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !tbaa !16, !alias.scope !22
  %wide.load20 = load <2 x i64>, ptr %i.n, align 8, !tbaa !16, !alias.scope !22
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load21 = load <2 x i64>, ptr %i.o, align 8, !tbaa !16, !alias.scope !25, !noalias !22
  %wide.load22 = load <2 x i64>, ptr %i.p, align 8, !tbaa !16, !alias.scope !25, !noalias !22
  %i.q = and <2 x i64> %wide.load21, %wide.load
  %i.r = and <2 x i64> %wide.load22, %wide.load20
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !16, !alias.scope !25, !noalias !22
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !16, !alias.scope !25, !noalias !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.prol ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = and i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !30

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.ae = and i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.aj = and i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.1 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ao = and i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.2 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = and i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !32

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.b, %bb.a
  %.012 = phi i32 [ -5, %bb.b ], [ -5, %bb.a ], [ 0, %.preheader ], [ 0, %middle.block ], [ 0, %scalar.ph ], [ 0, %scalar.ph.prol.loopexit ]
  ret i32 %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_bitmap_bitwise_or_inplace(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 8 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.l
  %scevgep19 = getelementptr i8, ptr %i.i, i64 %i.l
  %bound0 = icmp ult ptr %i.k, %scevgep19
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !tbaa !16, !alias.scope !33
  %wide.load20 = load <2 x i64>, ptr %i.n, align 8, !tbaa !16, !alias.scope !33
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load21 = load <2 x i64>, ptr %i.o, align 8, !tbaa !16, !alias.scope !36, !noalias !33
  %wide.load22 = load <2 x i64>, ptr %i.p, align 8, !tbaa !16, !alias.scope !36, !noalias !33
  %i.q = or <2 x i64> %wide.load21, %wide.load
  %i.r = or <2 x i64> %wide.load22, %wide.load20
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !16, !alias.scope !36, !noalias !33
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !16, !alias.scope !36, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol
end_hunk_0
