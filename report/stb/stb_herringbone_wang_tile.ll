inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw__choose_tile:bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %.us-phi, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !68
  store i8 %i.ep, ptr %5, align 1, !tbaa !62
  %i.eq = getelementptr inbounds nuw i8, ptr %.us-phi, i64 4
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !69
  store i8 %i.er, ptr %6, align 1, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %.us-phi, i64 5
  %i.et = load i8, ptr %i.es, align 1, !tbaa !70
  store i8 %i.et, ptr %7, align 1, !tbaa !62
  br label %.loopexit

.split86.us:                                      ; preds = %._crit_edge.us, %._crit_edge.us.1, %bb.a
  store ptr @.str.1, ptr @stbhw_error, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.split.us, %.split86.us
  %.355 = phi ptr [ %.us-phi, %.split.us ], [ null, %.split86.us ], [ null, %.loopexit.loopexit ]
  ret ptr %.355
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbhw__match(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [106 x i8], ptr @c_color, i64 %i.a
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !62
  %i.f = getelementptr i8, ptr %i.d, i64 107
  %i.g = load i8, ptr %i.f, align 1, !tbaa !62
  %i.h = icmp eq i8 %i.e, %i.g
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define i32 @stbhw__weighted(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.d, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !34
  %wide.load41 = load <4 x i32>, ptr %i.c, align 4, !tbaa !34
  %i.d = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.e = add <4 x i32> %wide.load41, %vec.phi40   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.e, %i.d
  %i.g = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph24.preheader, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.020.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.020 = phi i32 [ %i.j, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader43 ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34
  %i.j = add nsw i32 %i.i, %.020                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph24.preheader, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.a
  %i.k = tail call i32 @rand() #16                ; 0 uses
  br label %._crit_edge25

.lr.ph24.preheader:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.g, %middle.block ], [ %i.j, %.lr.ph ]
  %i.l = tail call i32 @rand() #16
  %i.m = ashr i32 %i.l, 4
  %i.n = srem i32 %i.m, %.lcssa
  %wide.trip.count33 = zext nneg i32 %0 to i64
  br label %.lr.ph24

.lr.ph24:                                         ; preds = %.lr.ph24.preheader, %bb.b
  %indvars.iv30 = phi i64 [ 0, %.lr.ph24.preheader ], [ %indvars.iv.next31, %bb.b ] ; 3 uses
  %.122 = phi i32 [ 0, %.lr.ph24.preheader ], [ %i.q, %bb.b ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv30
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = add nsw i32 %i.p, %.122                  ; 2 uses
  %i.r = icmp slt i32 %i.n, %i.q
  br i1 %i.r, label %._crit_edge25.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph24
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge25, label %.lr.ph24, !llvm.loop !78

._crit_edge25.loopexit.split.loop.exit:           ; preds = %.lr.ph24
  %i.s = trunc nuw nsw i64 %indvars.iv30 to i32
  br label %._crit_edge25

._crit_edge25:                                    ; preds = %bb.b, %._crit_edge25.loopexit.split.loop.exit, %._crit_edge
  %.116.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.s, %._crit_edge25.loopexit.split.loop.exit ], [ %0, %bb.b ]
  ret i32 %.116.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @stbhw__change_color(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.b = tail call i32 @rand() #16                ; 0 uses
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.c = zext i32 %0 to i64                       ; 5 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %1, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %bb.f ] ; 6 uses
  %.02534 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.3, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.f ]
  %.not32 = icmp eq i64 %indvars.iv, %i.c
  br i1 %.not32, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = add nsw i32 %i.f, %.02534
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.g, %bb.b ], [ %.02534, %.lr.ph ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not32.1 = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %.not32.1, label %.lr.ph.2, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34
  %i.j = add nsw i32 %i.i, %.1
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c, %.lr.ph.1
  %.1.1 = phi i32 [ %i.j, %bb.c ], [ %.1, %.lr.ph.1 ] ; 2 uses
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %.not32.2 = icmp eq i64 %indvars.iv.next.1, %i.c
  br i1 %.not32.2, label %.lr.ph.3, label %bb.d

bb.d:                                             ; preds = %.lr.ph.2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34
  %i.m = add nsw i32 %i.l, %.1.1
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.d, %.lr.ph.2
  %.1.2 = phi i32 [ %i.m, %bb.d ], [ %.1.1, %.lr.ph.2 ] ; 2 uses
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %.not32.3 = icmp eq i64 %indvars.iv.next.2, %i.c
  br i1 %.not32.3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34
  %i.p = add nsw i32 %i.o, %.1.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.3
  %.1.3 = phi i32 [ %i.p, %bb.e ], [ %.1.2, %.lr.ph.3 ] ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !79

._crit_edge.unr-lcssa:                            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.02534.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.h, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 3 uses
  %.02534.epil = phi i32 [ %.02534.epil.init, %.lr.ph.epil.preheader ], [ %.1.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %.not32.epil = icmp eq i64 %indvars.iv.epil, %i.c
  br i1 %.not32.epil, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.epil
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil
  %i.r = load i32, ptr %i.q, align 4, !tbaa !34
  %i.s = add nsw i32 %i.r, %.02534.epil
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.epil
  %.1.epil = phi i32 [ %i.s, %bb.g ], [ %.02534.epil, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.h, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.3, %._crit_edge.unr-lcssa ], [ %.1.epil, %bb.h ]
  %i.t = tail call i32 @rand() #16
  %i.u = ashr i32 %i.t, 4
  %i.v = srem i32 %i.u, %.1.lcssa
  %i.w = zext i32 %0 to i64
  %wide.trip.count46 = zext nneg i32 %1 to i64
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %._crit_edge, %bb.j
  %indvars.iv43 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next44, %bb.j ] ; 4 uses
  %.236 = phi i32 [ 0, %._crit_edge ], [ %.3, %bb.j ] ; 2 uses
  %.not31 = icmp eq i64 %indvars.iv43, %i.w
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph38
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv43
  %i.y = load i32, ptr %i.x, align 4, !tbaa !34
  %i.z = add nsw i32 %i.y, %.236                  ; 2 uses
  %i.aa = icmp slt i32 %i.v, %i.z
  br i1 %i.aa, label %.loopexit.loopexit.split.loop.exit53, label %bb.j

bb.j:                                             ; preds = %.lr.ph38, %bb.i
  %.3 = phi i32 [ %i.z, %bb.i ], [ %.236, %.lr.ph38 ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %.loopexit, label %.lr.ph38, !llvm.loop !82

bb.k:                                             ; preds = %bb.a
  %i.ab = tail call i32 @rand() #16
  %i.ac = ashr i32 %i.ab, 4
  %i.ad = add nsw i32 %1, -1
  %i.ae = srem i32 %i.ac, %i.ad
  %i.af = add i32 %0, 1
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = srem i32 %i.ag, %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit53:             ; preds = %bb.i
  %i.ai = trunc nuw nsw i64 %indvars.iv43 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit.split.loop.exit53, %._crit_edge.thread, %bb.k
  %.0 = phi i32 [ %i.ah, %bb.k ], [ %i.ai, %.loopexit.loopexit.split.loop.exit53 ], [ 0, %._crit_edge.thread ], [ %1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_generate_image(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !83   ; 20 uses
  %i.c = sdiv i32 %4, %i.b                        ; 5 uses
  %i.d = add i32 %i.c, 6
  %i.e = sdiv i32 %5, %i.b                        ; 5 uses
  %i.f = add nsw i32 %i.e, 6
  %i.g = icmp sgt i32 %i.c, 100
  %i.h = icmp sgt i32 %i.e, 100
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.2, ptr @stbhw_error, align 8, !tbaa !8
  br label %.critedge324

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !86
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.bf, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.k = icmp sgt i32 %i.e, -6
  br i1 %i.k, label %.preheader455.lr.ph, label %._crit_edge465.split

.preheader455.lr.ph:                              ; preds = %bb.d
  %i.l = icmp sgt i32 %i.c, -6
  br i1 %i.l, label %.preheader455.lr.ph.split, label %.preheader454

.preheader455.lr.ph.split:                        ; preds = %.preheader455.lr.ph
  %i.m = icmp eq ptr %1, null
  %wide.trip.count510 = zext nneg i32 %i.f to i64 ; 2 uses
  %wide.trip.count505 = zext i32 %i.d to i64      ; 2 uses
  br i1 %i.m, label %.preheader455.us, label %.preheader455

.preheader455.us:                                 ; preds = %.preheader455.lr.ph.split, %._crit_edge.split.us.us
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %._crit_edge.split.us.us ], [ 0, %.preheader455.lr.ph.split ] ; 3 uses
  %i.n = getelementptr inbounds nuw [106 x i8], ptr @c_color, i64 %indvars.iv507
  %invariant.op640 = sub i64 1, %indvars.iv507
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader455.us
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %bb.e ], [ 0, %.preheader455.us ] ; 3 uses
  %.reass600.reass = add i64 %indvars.iv501, %invariant.op640
  %i.o = and i64 %.reass600.reass, 3
  %i.p = tail call i32 @rand() #16
  %i.q = ashr i32 %i.p, 4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.o
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %i.t = srem i32 %i.q, %i.s
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv501
  store i8 %i.u, ptr %i.v, align 1, !tbaa !62
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next502, %wide.trip.count505
  br i1 %exitcond506.not, label %._crit_edge.split.us.us, label %bb.e, !llvm.loop !87

._crit_edge.split.us.us:                          ; preds = %bb.e
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next508, %wide.trip.count510
  br i1 %exitcond511.not, label %.preheader454, label %.preheader455.us, !llvm.loop !88

.preheader455:                                    ; preds = %.preheader455.lr.ph.split, %._crit_edge.split
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %._crit_edge.split ], [ 0, %.preheader455.lr.ph.split ] ; 3 uses
  %i.w = getelementptr inbounds nuw [106 x i8], ptr @c_color, i64 %indvars.iv496
  %invariant.op = sub i64 1, %indvars.iv496
  br label %bb.f

.preheader454:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader455.lr.ph
  %i.x = icmp sgt i32 %i.e, -3
  br i1 %i.x, label %.preheader.lr.ph, label %._crit_edge465.split

.preheader.lr.ph:                                 ; preds = %.preheader454
  %i.y = icmp sgt i32 %i.c, -3
  %.not313 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %i.y, label %.preheader.preheader, label %._crit_edge465.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.z = add nsw i32 %i.c, 3
  %i.aa = add nsw i32 %i.e, 3
  %wide.trip.count522 = zext nneg i32 %i.aa to i64
  %wide.trip.count516 = zext nneg i32 %i.z to i64
  br label %.preheader

bb.f:                                             ; preds = %.preheader455, %stbhw__weighted.exit
  %indvars.iv = phi i64 [ 0, %.preheader455 ], [ %indvars.iv.next, %stbhw__weighted.exit ] ; 3 uses
  %.reass.reass = add i64 %indvars.iv, %invariant.op
  %i.ab = and i64 %.reass.reass, 3                ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ab
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !34 ; 5 uses
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = tail call i32 @rand() #16
  %i.aj = ashr i32 %i.ai, 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ab
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %i.am = srem i32 %i.aj, %i.al
  br label %stbhw__weighted.exit

bb.i:                                             ; preds = %bb.g
  %i.an = icmp sgt i32 %i.ag, 0
  br i1 %i.an, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext nneg i32 %i.ag to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

end_hunk_0
begin_hunk_1_@stbhw_generate_image:bb.a
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph24.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.020.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.at, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.020.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %.020.i.ph, %.lr.ph.i.preheader ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = add nsw i32 %i.av, %.020.i              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph24.preheader.i, label %.lr.ph.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %bb.i
  %i.ax = tail call i32 @rand() #16               ; 0 uses
  br label %stbhw__weighted.exit

.lr.ph24.preheader.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.at, %middle.block ], [ %i.aw, %.lr.ph.i ]
  %i.ay = tail call i32 @rand() #16
  %i.az = ashr i32 %i.ay, 4
  %i.ba = srem i32 %i.az, %.lcssa
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.j, %.lr.ph24.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %.lr.ph24.preheader.i ], [ %indvars.iv.next31.i, %bb.j ] ; 3 uses
  %.122.i = phi i32 [ 0, %.lr.ph24.preheader.i ], [ %i.bd, %bb.j ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv30.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !34
  %i.bd = add nsw i32 %i.bc, %.122.i              ; 2 uses
  %i.be = icmp slt i32 %i.ba, %i.bd
  br i1 %i.be, label %._crit_edge25.loopexit.split.loop.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph24.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count.i
  br i1 %exitcond34.not.i, label %stbhw__weighted.exit, label %.lr.ph24.i, !llvm.loop !78

._crit_edge25.loopexit.split.loop.exit.i:         ; preds = %.lr.ph24.i
  %i.bf = trunc nuw nsw i64 %indvars.iv30.i to i32
  br label %stbhw__weighted.exit

stbhw__weighted.exit:                             ; preds = %bb.j, %._crit_edge25.loopexit.split.loop.exit.i, %._crit_edge.i, %bb.h
  %.116.lcssa.i.sink = phi i32 [ %i.am, %bb.h ], [ 0, %._crit_edge.i ], [ %i.bf, %._crit_edge25.loopexit.split.loop.exit.i ], [ %i.ag, %bb.j ]
  %i.bg = trunc i32 %.116.lcssa.i.sink to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count505
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.f, !llvm.loop !87

._crit_edge.split:                                ; preds = %stbhw__weighted.exit
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %wide.trip.count510
  br i1 %exitcond500.not, label %.preheader454, label %.preheader455, !llvm.loop !88

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv518 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next519, %._crit_edge ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [106 x i8], ptr @c_color, i64 %indvars.iv518 ; 5 uses
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [106 x i8], ptr @c_color, i64 %indvars.iv.next519 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 212 ; 2 uses
  %invariant.op641 = sub i64 1, %indvars.iv518
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.as
  %indvars.iv512 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next513.pre-phi, %bb.as ] ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv512 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62  ; 9 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 107
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !62
  %.not438 = icmp eq i8 %i.bm, %i.bo
  br i1 %.not438, label %bb.l, label %._crit_edge544

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv512 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 107
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !62
  %.not439 = icmp eq i8 %i.bq, %i.bs
  br i1 %.not439, label %bb.m, label %.thread587

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv512 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = getelementptr i8, ptr %i.bt, i64 107
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !62
  %.not440 = icmp eq i8 %i.bu, %i.bw
  br i1 %.not440, label %bb.n, label %.thread587

bb.n:                                             ; preds = %bb.m
  %i.bx = add nuw nsw i64 %indvars.iv512, 1       ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !62
  %i.ca = getelementptr i8, ptr %i.by, i64 107
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %.not441 = icmp eq i8 %i.bz, %i.cb
  br i1 %.not441, label %bb.o, label %.thread587

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bx ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 107
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !62
  %.not442 = icmp eq i8 %i.bm, %i.ce
  br i1 %.not442, label %bb.p, label %.thread587

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bx
  %i.cg = getelementptr i8, ptr %i.cf, i64 107
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %.not443 = icmp eq i8 %i.bq, %i.ch
  br i1 %.not443, label %bb.q, label %.thread587

bb.q:                                             ; preds = %bb.p
  %.reass602.reass = add i64 %indvars.iv512, %invariant.op641
  %i.ci = and i64 %.reass602.reass, 3             ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !34 ; 6 uses
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %bb.r, label %.thread587

bb.r:                                             ; preds = %bb.q
  %i.cm = sext i8 %i.bm to i32                    ; 2 uses
  br i1 %.not313, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ci
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !71 ; 7 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %.thread, label %.lr.ph.preheader.i331

.lr.ph.preheader.i331:                            ; preds = %bb.s
  %i.cp = zext i32 %i.cm to i64                   ; 6 uses
  %wide.trip.count.i332 = zext nneg i32 %i.ck to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i332, 3    ; 3 uses
  %i.cq = icmp ult i32 %i.ck, 4
  br i1 %i.cq, label %.lr.ph.i333.epil.preheader, label %.lr.ph.preheader.i331.new

.lr.ph.preheader.i331.new:                        ; preds = %.lr.ph.preheader.i331
  %unroll_iter = and i64 %wide.trip.count.i332, 2147483644
  br label %.lr.ph.i333

.lr.ph.i333:                                      ; preds = %bb.x, %.lr.ph.preheader.i331.new
  %indvars.iv.i334 = phi i64 [ 0, %.lr.ph.preheader.i331.new ], [ %indvars.iv.next.i335.3, %bb.x ] ; 6 uses
  %.02534.i = phi i32 [ 0, %.lr.ph.preheader.i331.new ], [ %.1.i.3, %bb.x ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i331.new ], [ %niter.next.3, %bb.x ]
  %.not32.i = icmp eq i64 %indvars.iv.i334, %i.cp
  br i1 %.not32.i, label %.lr.ph.i333.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i333
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i334
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !34
  %i.ct = add nsw i32 %i.cs, %.02534.i
  br label %.lr.ph.i333.1

.lr.ph.i333.1:                                    ; preds = %bb.t, %.lr.ph.i333
  %.1.i = phi i32 [ %i.ct, %bb.t ], [ %.02534.i, %.lr.ph.i333 ] ; 2 uses
  %indvars.iv.next.i335 = or disjoint i64 %indvars.iv.i334, 1 ; 2 uses
  %.not32.i.1 = icmp eq i64 %indvars.iv.next.i335, %i.cp
  br i1 %.not32.i.1, label %.lr.ph.i333.2, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i333.1
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i335
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !34
  %i.cw = add nsw i32 %i.cv, %.1.i
  br label %.lr.ph.i333.2

.lr.ph.i333.2:                                    ; preds = %bb.u, %.lr.ph.i333.1
  %.1.i.1 = phi i32 [ %i.cw, %bb.u ], [ %.1.i, %.lr.ph.i333.1 ] ; 2 uses
  %indvars.iv.next.i335.1 = or disjoint i64 %indvars.iv.i334, 2 ; 2 uses
  %.not32.i.2 = icmp eq i64 %indvars.iv.next.i335.1, %i.cp
  br i1 %.not32.i.2, label %.lr.ph.i333.3, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i333.2
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i335.1
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !34
  %i.cz = add nsw i32 %i.cy, %.1.i.1
  br label %.lr.ph.i333.3

.lr.ph.i333.3:                                    ; preds = %bb.v, %.lr.ph.i333.2
  %.1.i.2 = phi i32 [ %i.cz, %bb.v ], [ %.1.i.1, %.lr.ph.i333.2 ] ; 2 uses
  %indvars.iv.next.i335.2 = or disjoint i64 %indvars.iv.i334, 3 ; 2 uses
  %.not32.i.3 = icmp eq i64 %indvars.iv.next.i335.2, %i.cp
  br i1 %.not32.i.3, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i333.3
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i335.2
  %i.db = load i32, ptr %i.da, align 4, !tbaa !34
  %i.dc = add nsw i32 %i.db, %.1.i.2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i333.3
  %.1.i.3 = phi i32 [ %i.dc, %bb.w ], [ %.1.i.2, %.lr.ph.i333.3 ] ; 3 uses
  %indvars.iv.next.i335.3 = add nuw nsw i64 %indvars.iv.i334, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i337.unr-lcssa, label %.lr.ph.i333, !llvm.loop !79

._crit_edge.i337.unr-lcssa:                       ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i337, label %.lr.ph.i333.epil.preheader

.lr.ph.i333.epil.preheader:                       ; preds = %._crit_edge.i337.unr-lcssa, %.lr.ph.preheader.i331
  %indvars.iv.i334.epil.init = phi i64 [ 0, %.lr.ph.preheader.i331 ], [ %indvars.iv.next.i335.3, %._crit_edge.i337.unr-lcssa ]
  %.02534.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i331 ], [ %.1.i.3, %._crit_edge.i337.unr-lcssa ]
  %lcmp.mod626 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod626)
  br label %.lr.ph.i333.epil

.lr.ph.i333.epil:                                 ; preds = %bb.z, %.lr.ph.i333.epil.preheader
  %indvars.iv.i334.epil = phi i64 [ %indvars.iv.i334.epil.init, %.lr.ph.i333.epil.preheader ], [ %indvars.iv.next.i335.epil, %bb.z ] ; 3 uses
  %.02534.i.epil = phi i32 [ %.02534.i.epil.init, %.lr.ph.i333.epil.preheader ], [ %.1.i.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i333.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %.not32.i.epil = icmp eq i64 %indvars.iv.i334.epil, %i.cp
  br i1 %.not32.i.epil, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i333.epil
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i334.epil
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !34
  %i.df = add nsw i32 %i.de, %.02534.i.epil
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i333.epil
  %.1.i.epil = phi i32 [ %i.df, %bb.y ], [ %.02534.i.epil, %.lr.ph.i333.epil ] ; 2 uses
  %indvars.iv.next.i335.epil = add nuw nsw i64 %indvars.iv.i334.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i337, label %.lr.ph.i333.epil, !llvm.loop !91

._crit_edge.i337:                                 ; preds = %bb.z, %._crit_edge.i337.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.3, %._crit_edge.i337.unr-lcssa ], [ %.1.i.epil, %bb.z ]
  %i.dg = tail call i32 @rand() #16
  %i.dh = ashr i32 %i.dg, 4
  %i.di = srem i32 %i.dh, %.1.i.lcssa
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.ab, %._crit_edge.i337
  %indvars.iv43.i = phi i64 [ 0, %._crit_edge.i337 ], [ %indvars.iv.next44.i, %bb.ab ] ; 4 uses
  %.236.i = phi i32 [ 0, %._crit_edge.i337 ], [ %.3.i, %bb.ab ] ; 2 uses
  %.not31.i = icmp eq i64 %indvars.iv43.i, %i.cp
  br i1 %.not31.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph38.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv43.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !34
  %i.dl = add nsw i32 %i.dk, %.236.i              ; 2 uses
  %i.dm = icmp slt i32 %i.di, %i.dl
  br i1 %i.dm, label %.loopexit.loopexit.split.loop.exit53.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph38.i
  %.3.i = phi i32 [ %i.dl, %bb.aa ], [ %.236.i, %.lr.ph38.i ]
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count.i332
  br i1 %exitcond47.not.i, label %.loopexit594, label %.lr.ph38.i, !llvm.loop !82

.thread:                                          ; preds = %bb.r, %bb.s
  %i.dn = tail call i32 @rand() #16
  %i.do = ashr i32 %i.dn, 4
  %i.dp = add nsw i32 %i.ck, -1
  %i.dq = srem i32 %i.do, %i.dp
  %i.dr = add nsw i32 %i.cm, 1
  %i.ds = add nsw i32 %i.dr, %i.dq
  %i.dt = srem i32 %i.ds, %i.ck
  br label %.loopexit594

.loopexit.loopexit.split.loop.exit53.i:           ; preds = %bb.aa
  %i.du = trunc nuw nsw i64 %indvars.iv43.i to i32
  br label %.loopexit594

.loopexit594:                                     ; preds = %bb.ab, %.loopexit.loopexit.split.loop.exit53.i, %.thread
  %.0.i = phi i32 [ %i.dt, %.thread ], [ %i.du, %.loopexit.loopexit.split.loop.exit53.i ], [ %i.ck, %bb.ab ]
  %i.dv = trunc i32 %.0.i to i8                   ; 3 uses
  store i8 %i.dv, ptr %i.cc, align 1, !tbaa !62
  %.pre = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.dw = icmp eq i8 %.pre, %i.dv
  br i1 %i.dw, label %.thread587, label %._crit_edge544

._crit_edge544:                                   ; preds = %bb.k, %.loopexit594
  %.pre545 = add nuw nsw i64 %indvars.iv512, 1
  br label %bb.as

.thread587:                                       ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %.loopexit594
  %i.dx = phi i8 [ %i.dv, %.loopexit594 ], [ %i.bm, %bb.q ], [ %i.bm, %bb.p ], [ %i.bm, %bb.o ], [ %i.bm, %bb.n ], [ %i.bm, %bb.m ], [ %i.bm, %bb.l ]
  %i.dy = add nuw nsw i64 %indvars.iv512, 1       ; 9 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dy ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !62  ; 3 uses
  %i.eb = getelementptr i8, ptr %i.dz, i64 107
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !62
  %.not445 = icmp eq i8 %i.ea, %i.ec
  br i1 %.not445, label %bb.ac, label %bb.as

bb.ac:                                            ; preds = %.thread587
  %i.ed = add nuw nsw i64 %indvars.iv512, 2       ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !62
  %i.eg = getelementptr i8, ptr %i.ee, i64 107
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !62
  %.not446 = icmp eq i8 %i.ef, %i.eh
  br i1 %.not446, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv512 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !62
  %i.ek = getelementptr i8, ptr %i.ei, i64 107
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !62
  %.not447 = icmp eq i8 %i.ej, %i.el
  br i1 %.not447, label %bb.ae, label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dy
  %i.en = getelementptr i8, ptr %i.em, i64 107
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !62
  %.not448 = icmp eq i8 %i.dx, %i.eo
  br i1 %.not448, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ed ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 107
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !62
  %.not449 = icmp eq i8 %i.ea, %i.er
  br i1 %.not449, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.es = sub i64 %i.ed, %indvars.iv518
  %i.et = and i64 %i.es, 3                        ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !34 ; 6 uses
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.ex = sext i8 %i.ea to i32                    ; 2 uses
  br i1 %.not313, label %.thread418, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.et
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !71 ; 7 uses
  %.not.i338 = icmp eq ptr %i.ez, null
  br i1 %.not.i338, label %.thread418, label %.lr.ph.preheader.i342

.lr.ph.preheader.i342:                            ; preds = %bb.ai
  %i.fa = zext i32 %i.ex to i64                   ; 6 uses
  %wide.trip.count.i343 = zext nneg i32 %i.ev to i64 ; 3 uses
  %xtraiter627 = and i64 %wide.trip.count.i343, 3 ; 3 uses
  %i.fb = icmp ult i32 %i.ev, 4
  br i1 %i.fb, label %.lr.ph.i344.epil.preheader, label %.lr.ph.preheader.i342.new

.lr.ph.preheader.i342.new:                        ; preds = %.lr.ph.preheader.i342
  %unroll_iter632 = and i64 %wide.trip.count.i343, 2147483644
  br label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %bb.an, %.lr.ph.preheader.i342.new
  %indvars.iv.i345 = phi i64 [ 0, %.lr.ph.preheader.i342.new ], [ %indvars.iv.next.i349.3, %bb.an ] ; 6 uses
  %.02534.i346 = phi i32 [ 0, %.lr.ph.preheader.i342.new ], [ %.1.i348.3, %bb.an ] ; 2 uses
  %niter633 = phi i64 [ 0, %.lr.ph.preheader.i342.new ], [ %niter633.next.3, %bb.an ]
  %.not32.i347 = icmp eq i64 %indvars.iv.i345, %i.fa
  br i1 %.not32.i347, label %.lr.ph.i344.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i344
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i345
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !34
  %i.fe = add nsw i32 %i.fd, %.02534.i346
  br label %.lr.ph.i344.1

.lr.ph.i344.1:                                    ; preds = %bb.aj, %.lr.ph.i344
  %.1.i348 = phi i32 [ %i.fe, %bb.aj ], [ %.02534.i346, %.lr.ph.i344 ] ; 2 uses
  %indvars.iv.next.i349 = or disjoint i64 %indvars.iv.i345, 1 ; 2 uses
  %.not32.i347.1 = icmp eq i64 %indvars.iv.next.i349, %i.fa
  br i1 %.not32.i347.1, label %.lr.ph.i344.2, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i344.1
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !34
  %i.fh = add nsw i32 %i.fg, %.1.i348
  br label %.lr.ph.i344.2

.lr.ph.i344.2:                                    ; preds = %bb.ak, %.lr.ph.i344.1
  %.1.i348.1 = phi i32 [ %i.fh, %bb.ak ], [ %.1.i348, %.lr.ph.i344.1 ] ; 2 uses
  %indvars.iv.next.i349.1 = or disjoint i64 %indvars.iv.i345, 2 ; 2 uses
  %.not32.i347.2 = icmp eq i64 %indvars.iv.next.i349.1, %i.fa
  br i1 %.not32.i347.2, label %.lr.ph.i344.3, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i344.2
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349.1
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !34
  %i.fk = add nsw i32 %i.fj, %.1.i348.1
  br label %.lr.ph.i344.3

.lr.ph.i344.3:                                    ; preds = %bb.al, %.lr.ph.i344.2
  %.1.i348.2 = phi i32 [ %i.fk, %bb.al ], [ %.1.i348.1, %.lr.ph.i344.2 ] ; 2 uses
  %indvars.iv.next.i349.2 = or disjoint i64 %indvars.iv.i345, 3 ; 2 uses
  %.not32.i347.3 = icmp eq i64 %indvars.iv.next.i349.2, %i.fa
  br i1 %.not32.i347.3, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i344.3
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349.2
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !34
  %i.fn = add nsw i32 %i.fm, %.1.i348.2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i344.3
  %.1.i348.3 = phi i32 [ %i.fn, %bb.am ], [ %.1.i348.2, %.lr.ph.i344.3 ] ; 3 uses
  %indvars.iv.next.i349.3 = add nuw nsw i64 %indvars.iv.i345, 4 ; 2 uses
  %niter633.next.3 = add i64 %niter633, 4         ; 2 uses
  %niter633.ncmp.3 = icmp eq i64 %niter633.next.3, %unroll_iter632
  br i1 %niter633.ncmp.3, label %._crit_edge.i351.unr-lcssa, label %.lr.ph.i344, !llvm.loop !79

._crit_edge.i351.unr-lcssa:                       ; preds = %bb.an
  %lcmp.mod629.not = icmp eq i64 %xtraiter627, 0
  br i1 %lcmp.mod629.not, label %._crit_edge.i351, label %.lr.ph.i344.epil.preheader

.lr.ph.i344.epil.preheader:                       ; preds = %._crit_edge.i351.unr-lcssa, %.lr.ph.preheader.i342
  %indvars.iv.i345.epil.init = phi i64 [ 0, %.lr.ph.preheader.i342 ], [ %indvars.iv.next.i349.3, %._crit_edge.i351.unr-lcssa ]
  %.02534.i346.epil.init = phi i32 [ 0, %.lr.ph.preheader.i342 ], [ %.1.i348.3, %._crit_edge.i351.unr-lcssa ]
  %lcmp.mod631 = icmp ne i64 %xtraiter627, 0
  tail call void @llvm.assume(i1 %lcmp.mod631)
  br label %.lr.ph.i344.epil

.lr.ph.i344.epil:                                 ; preds = %bb.ap, %.lr.ph.i344.epil.preheader
  %indvars.iv.i345.epil = phi i64 [ %indvars.iv.i345.epil.init, %.lr.ph.i344.epil.preheader ], [ %indvars.iv.next.i349.epil, %bb.ap ] ; 3 uses
  %.02534.i346.epil = phi i32 [ %.02534.i346.epil.init, %.lr.ph.i344.epil.preheader ], [ %.1.i348.epil, %bb.ap ] ; 2 uses
  %epil.iter628 = phi i64 [ 0, %.lr.ph.i344.epil.preheader ], [ %epil.iter628.next, %bb.ap ]
  %.not32.i347.epil = icmp eq i64 %indvars.iv.i345.epil, %i.fa
  br i1 %.not32.i347.epil, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i344.epil
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i345.epil
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !34
  %i.fq = add nsw i32 %i.fp, %.02534.i346.epil
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i344.epil
  %.1.i348.epil = phi i32 [ %i.fq, %bb.ao ], [ %.02534.i346.epil, %.lr.ph.i344.epil ] ; 2 uses
  %indvars.iv.next.i349.epil = add nuw nsw i64 %indvars.iv.i345.epil, 1
  %epil.iter628.next = add i64 %epil.iter628, 1   ; 2 uses
  %epil.iter628.cmp.not = icmp eq i64 %epil.iter628.next, %xtraiter627
  br i1 %epil.iter628.cmp.not, label %._crit_edge.i351, label %.lr.ph.i344.epil, !llvm.loop !92

._crit_edge.i351:                                 ; preds = %bb.ap, %._crit_edge.i351.unr-lcssa
  %.1.i348.lcssa = phi i32 [ %.1.i348.3, %._crit_edge.i351.unr-lcssa ], [ %.1.i348.epil, %bb.ap ]
  %i.fr = tail call i32 @rand() #16
  %i.fs = ashr i32 %i.fr, 4
  %i.ft = srem i32 %i.fs, %.1.i348.lcssa
  br label %.lr.ph38.i353

.lr.ph38.i353:                                    ; preds = %bb.ar, %._crit_edge.i351
  %indvars.iv43.i354 = phi i64 [ 0, %._crit_edge.i351 ], [ %indvars.iv.next44.i358, %bb.ar ] ; 4 uses
  %.236.i355 = phi i32 [ 0, %._crit_edge.i351 ], [ %.3.i357, %bb.ar ] ; 2 uses
  %.not31.i356 = icmp eq i64 %indvars.iv43.i354, %i.fa
  br i1 %.not31.i356, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph38.i353
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv43.i354
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !34
  %i.fw = add nsw i32 %i.fv, %.236.i355           ; 2 uses
  %i.fx = icmp slt i32 %i.ft, %i.fw
  br i1 %i.fx, label %.loopexit.loopexit.split.loop.exit53.i360, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph38.i353
  %.3.i357 = phi i32 [ %i.fw, %bb.aq ], [ %.236.i355, %.lr.ph38.i353 ]
  %indvars.iv.next44.i358 = add nuw nsw i64 %indvars.iv43.i354, 1 ; 2 uses
  %exitcond47.not.i359 = icmp eq i64 %indvars.iv.next44.i358, %wide.trip.count.i343
  br i1 %exitcond47.not.i359, label %stbhw__change_color.exit361, label %.lr.ph38.i353, !llvm.loop !82

.thread418:                                       ; preds = %bb.ah, %bb.ai
  %i.fy = tail call i32 @rand() #16
  %i.fz = ashr i32 %i.fy, 4
  %i.ga = add nsw i32 %i.ev, -1
  %i.gb = srem i32 %i.fz, %i.ga
  %i.gc = add nsw i32 %i.ex, 1
  %i.gd = add nsw i32 %i.gc, %i.gb
  %i.ge = srem i32 %i.gd, %i.ev
  br label %stbhw__change_color.exit361

.loopexit.loopexit.split.loop.exit53.i360:        ; preds = %bb.aq
  %i.gf = trunc nuw nsw i64 %indvars.iv43.i354 to i32
  br label %stbhw__change_color.exit361

stbhw__change_color.exit361:                      ; preds = %bb.ar, %.thread418, %.loopexit.loopexit.split.loop.exit53.i360
  %.0.i341 = phi i32 [ %i.ge, %.thread418 ], [ %i.gf, %.loopexit.loopexit.split.loop.exit53.i360 ], [ %i.ev, %bb.ar ]
  %i.gg = trunc i32 %.0.i341 to i8
  store i8 %i.gg, ptr %i.ep, align 1, !tbaa !62
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge544, %bb.ag, %stbhw__change_color.exit361, %.thread587, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %indvars.iv.next513.pre-phi = phi i64 [ %.pre545, %._crit_edge544 ], [ %i.dy, %bb.ag ], [ %i.dy, %stbhw__change_color.exit361 ], [ %i.dy, %.thread587 ], [ %i.dy, %bb.ac ], [ %i.dy, %bb.ad ], [ %i.dy, %bb.ae ], [ %i.dy, %bb.af ] ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next513.pre-phi, %wide.trip.count516
  br i1 %exitcond517.not, label %._crit_edge, label %bb.k, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.as
  %exitcond523.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count522
  br i1 %exitcond523.not, label %._crit_edge465.split, label %.preheader, !llvm.loop !94

._crit_edge465.split:                             ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %.preheader454
  %i.gh = sub nsw i32 0, %i.b                     ; 2 uses
  %.not306470 = icmp sgt i32 %5, %i.gh
  br i1 %.not306470, label %.lr.ph474, label %.critedge324

.lr.ph474:                                        ; preds = %._crit_edge465.split
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %factor.op.mul31.i = shl i32 %i.b, 1            ; 3 uses
  %i.gk = icmp sgt i32 %i.b, 0                    ; 2 uses
  %i.gl = sext i32 %4 to i64                      ; 3 uses
  %i.gm = sext i32 %5 to i64                      ; 3 uses
  %i.gn = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count39.i = zext nneg i32 %i.b to i64 ; 2 uses
  %wide.trip.count.i363 = zext i32 %factor.op.mul31.i to i64
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %smax.i = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31.i, i32 1)
  %wide.trip.count39.i369 = zext nneg i32 %smax.i to i64
  %i.gq = sext i32 %i.b to i64                    ; 2 uses
  %i.gr = sext i32 %i.gh to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph474, %._crit_edge469
  %indvars.iv529 = phi i64 [ -1, %.lr.ph474 ], [ %indvars.iv.next530, %._crit_edge469 ] ; 3 uses
  %indvars.iv527 = phi i64 [ %i.gr, %.lr.ph474 ], [ %indvars.iv.next528, %._crit_edge469 ] ; 4 uses
  %i.gs = trunc nsw i64 %indvars.iv529 to i32     ; 2 uses
  %i.gt = and i32 %i.gs, 3
  %i.gu = icmp eq i32 %i.gt, 0
  %i.gv = or i32 %i.gs, -4
  %.2261 = select i1 %i.gu, i32 0, i32 %i.gv      ; 2 uses
  %i.gw = mul nsw i32 %.2261, %i.b                ; 2 uses
  %.not303466 = icmp slt i32 %i.gw, %4
  br i1 %.not303466, label %.lr.ph, label %._crit_edge469

.lr.ph:                                           ; preds = %bb.at
  %i.gx = getelementptr [106 x i8], ptr @c_color, i64 %indvars.iv529 ; 3 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 212    ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gx, i64 318    ; 5 uses
  %i.ha = getelementptr i8, ptr %i.gx, i64 424    ; 2 uses
  %i.hb = sext i32 %.2261 to i64
  %i.hc = sext i32 %i.gw to i64
  %i.hd = trunc nsw i64 %indvars.iv527 to i32
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %.loopexit451
  %indvars.iv524 = phi i64 [ %i.hb, %.lr.ph ], [ %indvars.iv.next525, %.loopexit451 ] ; 6 uses
  %i.he = phi i64 [ %i.hc, %.lr.ph ], [ %i.jp, %.loopexit451 ]
  %i.hf = trunc nsw i64 %indvars.iv524 to i32
  %i.hg = add i32 %i.hf, 2                        ; 2 uses
  %i.hh = mul i32 %i.hg, %i.b                     ; 2 uses
  %i.hi = or i32 %i.hh, %i.hd
  %or.cond10 = icmp sgt i32 %i.hi, -1
  br i1 %or.cond10, label %bb.av, label %stbhw__draw_h_tile.exit

bb.av:                                            ; preds = %bb.au
  %i.hj = load ptr, ptr %i.gi, align 8, !tbaa !95
  %i.hk = load i32, ptr %i.gj, align 8, !tbaa !96
  %i.hl = sext i32 %i.hg to i64                   ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.gy, i64 %i.hl
  %i.hn = add nsw i64 %indvars.iv524, 3           ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.gy, i64 %i.hn
  %i.hp = add nsw i64 %indvars.iv524, 4           ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.gy, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.gz, i64 %i.hl
  %i.hs = getelementptr inbounds i8, ptr %i.gz, i64 %i.hn
  %i.ht = getelementptr inbounds i8, ptr %i.gz, i64 %i.hp
  %i.hu = tail call ptr @stbhw__choose_tile(ptr noundef %i.hj, i32 noundef %i.hk, ptr noundef %i.hm, ptr noundef %i.ho, ptr noundef %i.hq, ptr noundef %i.hr, ptr noundef %i.hs, ptr noundef %i.ht, ptr noundef %1) ; 2 uses
  %.not304 = icmp eq ptr %i.hu, null
  br i1 %.not304, label %.critedge324, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.gk, label %.lr.ph33.split.us.preheader.i, label %stbhw__draw_h_tile.exit

.lr.ph33.split.us.preheader.i:                    ; preds = %bb.aw
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 6
  br label %.lr.ph33.split.us.i

.lr.ph33.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph33.split.us.preheader.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph33.split.us.preheader.i ], [ %indvars.iv.next37.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.hw = add nsw i64 %indvars.iv36.i, %indvars.iv527 ; 2 uses
  %i.hx = icmp slt i64 %i.hw, %i.gm
  br i1 %i.hx, label %.preheader.us.i, label %..loopexit_crit_edge.us.i

bb.ax:                                            ; preds = %.preheader.us.i, %bb.az
  %indvars.iv.i364 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i365, %bb.az ] ; 3 uses
  %i.hy = add nsw i64 %indvars.iv.i364, %i.he     ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1
  %i.ia = icmp slt i64 %i.hy, %i.gl
  %or.cond29.us.i = and i1 %i.hz, %i.ia
  br i1 %or.cond29.us.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ib = add nsw i64 %indvars.iv.i364, %i.ij
  %i.ic = mul nsw i64 %i.ib, 3
  %i.id = getelementptr inbounds i8, ptr %i.hv, i64 %i.ic
  %i.ie = mul nuw nsw i64 %i.hy, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ie
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.if, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.id, i64 3, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv.next.i365 = add nuw nsw i64 %indvars.iv.i364, 1 ; 2 uses
  %exitcond.not.i366 = icmp eq i64 %indvars.iv.next.i365, %wide.trip.count.i363
  br i1 %exitcond.not.i366, label %..loopexit_crit_edge.us.i, label %bb.ax, !llvm.loop !58

..loopexit_crit_edge.us.i:                        ; preds = %bb.az, %.lr.ph33.split.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %stbhw__draw_h_tile.exit, label %.lr.ph33.split.us.i, !llvm.loop !59

end_hunk_1
begin_hunk_2_@stbhw_generate_image:bb.a

bb.bl:                                            ; preds = %bb.bk
  %i.lo = add nsw i64 %indvars.iv.i395, %i.lw
  %i.lp = mul nsw i64 %i.lo, 3
  %i.lq = getelementptr inbounds i8, ptr %i.li, i64 %i.lp
  %i.lr = mul nuw nsw i64 %i.ll, 3
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ls, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lq, i64 3, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %indvars.iv.next.i397 = add nuw nsw i64 %indvars.iv.i395, 1 ; 2 uses
  %exitcond.not.i398 = icmp eq i64 %indvars.iv.next.i397, %wide.trip.count.i386
  br i1 %exitcond.not.i398, label %..loopexit_crit_edge.us.i390, label %bb.bk, !llvm.loop !58

..loopexit_crit_edge.us.i390:                     ; preds = %bb.bm, %.lr.ph33.split.us.i387
  %indvars.iv.next37.i391 = add nuw nsw i64 %indvars.iv36.i388, 1 ; 2 uses
  %exitcond40.not.i392 = icmp eq i64 %indvars.iv.next37.i391, %wide.trip.count39.i385
  br i1 %exitcond40.not.i392, label %stbhw__draw_h_tile.exit399, label %.lr.ph33.split.us.i387, !llvm.loop !59

.preheader.us.i393:                               ; preds = %.lr.ph33.split.us.i387
  %i.lt = trunc nuw nsw i64 %indvars.iv36.i388 to i32
  %factor.op.mul.reass.us.i394 = mul i32 %factor.op.mul31.i382, %i.lt
  %i.lu = mul nsw i64 %i.lj, %i.jw
  %i.lv = getelementptr inbounds i8, ptr %2, i64 %i.lu
  %i.lw = sext i32 %factor.op.mul.reass.us.i394 to i64
  br label %bb.bk

stbhw__draw_h_tile.exit399:                       ; preds = %..loopexit_crit_edge.us.i390, %bb.bj, %bb.bh
  %i.lx = add nsw i32 %i.ku, %i.b                 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, %4
  br i1 %i.ly, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %stbhw__draw_h_tile.exit399
  %i.lz = load ptr, ptr %i.jx, align 8, !tbaa !97
  %i.ma = load i32, ptr %i.jy, align 8, !tbaa !98
  %i.mb = add nsw i64 %indvars.iv534, 5           ; 4 uses
  %i.mc = getelementptr inbounds i8, ptr %i.kh, i64 %i.mb
  %i.md = getelementptr inbounds i8, ptr %i.ki, i64 %i.mb
  %i.me = add nsw i64 %indvars.iv534, 6           ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.ki, i64 %i.me
  %i.mg = getelementptr inbounds i8, ptr %i.km, i64 %i.mb
  %i.mh = getelementptr inbounds i8, ptr %i.km, i64 %i.me
  %i.mi = getelementptr inbounds i8, ptr %i.kn, i64 %i.mb
  %i.mj = tail call ptr @stbhw__choose_tile(ptr noundef %i.lz, i32 noundef %i.ma, ptr noundef nonnull %i.mc, ptr noundef nonnull %i.md, ptr noundef nonnull %i.mf, ptr noundef %i.mg, ptr noundef %i.mh, ptr noundef %i.mi, ptr noundef %1) ; 2 uses
  %.not301 = icmp eq ptr %i.mj, null
  br i1 %.not301, label %.critedge324, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.jt, label %.lr.ph33.split.us.preheader.i401, label %.loopexit

.lr.ph33.split.us.preheader.i401:                 ; preds = %bb.bo
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 6
  %i.ml = sext i32 %i.lx to i64
  br label %.lr.ph33.split.us.i405

.lr.ph33.split.us.i405:                           ; preds = %..loopexit_crit_edge.us.i408, %.lr.ph33.split.us.preheader.i401
  %indvars.iv36.i406 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i401 ], [ %indvars.iv.next37.i409, %..loopexit_crit_edge.us.i408 ] ; 3 uses
  %i.mm = add nsw i64 %indvars.iv36.i406, %indvars.iv537 ; 3 uses
  %i.mn = icmp sgt i64 %i.mm, -1
  %i.mo = icmp slt i64 %i.mm, %i.jv
  %or.cond.us.i407 = and i1 %i.mn, %i.mo
  br i1 %or.cond.us.i407, label %.preheader.us.i411, label %..loopexit_crit_edge.us.i408

bb.bp:                                            ; preds = %.preheader.us.i411, %bb.br
  %indvars.iv.i412 = phi i64 [ 0, %.preheader.us.i411 ], [ %indvars.iv.next.i414, %bb.br ] ; 3 uses
  %i.mp = add nsw i64 %indvars.iv.i412, %i.ml     ; 3 uses
  %i.mq = icmp sgt i64 %i.mp, -1
  %i.mr = icmp slt i64 %i.mp, %i.ju
  %or.cond29.us.i413 = and i1 %i.mq, %i.mr
  br i1 %or.cond29.us.i413, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ms = add nuw nsw i64 %indvars.iv.i412, %i.nb
  %i.mt = mul nuw nsw i64 %i.ms, 3
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mt
  %i.mv = mul nuw nsw i64 %i.mp, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mw, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.mu, i64 3, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i414 = add nuw nsw i64 %indvars.iv.i412, 1 ; 2 uses
  %exitcond.not.i415 = icmp eq i64 %indvars.iv.next.i414, %wide.trip.count39.i385
  br i1 %exitcond.not.i415, label %..loopexit_crit_edge.us.i408, label %bb.bp, !llvm.loop !60

..loopexit_crit_edge.us.i408:                     ; preds = %bb.br, %.lr.ph33.split.us.i405
  %indvars.iv.next37.i409 = add nuw nsw i64 %indvars.iv36.i406, 1 ; 2 uses
  %exitcond40.not.i410 = icmp eq i64 %indvars.iv.next37.i409, %wide.trip.count39.i403
  br i1 %exitcond40.not.i410, label %.loopexit, label %.lr.ph33.split.us.i405, !llvm.loop !61

.preheader.us.i411:                               ; preds = %.lr.ph33.split.us.i405
  %i.mx = mul nsw i64 %i.mm, %i.jw
  %i.my = getelementptr inbounds i8, ptr %2, i64 %i.mx
  %i.mz = trunc i64 %indvars.iv36.i406 to i32
  %i.na = mul i32 %i.b, %i.mz
  %i.nb = zext i32 %i.na to i64
  br label %bb.bp

.loopexit:                                        ; preds = %..loopexit_crit_edge.us.i408, %stbhw__draw_h_tile.exit399, %bb.bo
  %indvars.iv.next535 = add nsw i64 %indvars.iv534, 4 ; 2 uses
  %i.nc = mul nsw i64 %indvars.iv.next535, %i.jz  ; 2 uses
  %.not299 = icmp slt i64 %i.nc, %i.ju
  br i1 %.not299, label %bb.bh, label %._crit_edge479

._crit_edge479:                                   ; preds = %.loopexit, %bb.bg
  %indvars.iv.next538 = add nsw i64 %indvars.iv537, %i.jz ; 2 uses
  %indvars.iv.next540 = add nsw i64 %indvars.iv539, 1
  %.not302 = icmp slt i64 %indvars.iv.next538, %i.jv
  br i1 %.not302, label %bb.bg, label %.critedge324, !llvm.loop !100

.critedge324:                                     ; preds = %._crit_edge469, %bb.ba, %bb.av, %._crit_edge479, %bb.bn, %bb.bi, %._crit_edge465.split, %bb.bf, %bb.b
  %.16 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge479 ], [ 1, %bb.bf ], [ 0, %bb.ba ], [ 1, %._crit_edge465.split ], [ 0, %bb.bn ], [ 0, %bb.bi ], [ 0, %bb.av ], [ 1, %._crit_edge469 ]
  ret i32 %.16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_h_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 5 uses
  %i.e = mul nsw i32 %i.d, 6                      ; 2 uses
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !64
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !66
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !67
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !68
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !69
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !70
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge39.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !102
  %i.ad = sext i32 %i.w to i64                    ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1) ; 3 uses
  %i.ae = zext nneg i32 %i.e to i64
  %i.af = sext i32 %i.v to i64
  %i.ag = sext i32 %i.ac to i64
  %wide.trip.count44 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ah = icmp eq i32 %smax, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod46 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next42, %._crit_edge ] ; 3 uses
  %i.ai = mul nuw nsw i64 %indvars.iv41, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %indvars.iv41, %i.af
  %i.al = mul nsw i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 %i.al ; 3 uses
  br i1 %i.ah, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.ap = add nsw i64 %indvars.iv, %i.ad
  %i.aq = mul nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = mul nuw nsw i64 %indvars.iv.next, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = add nsw i64 %indvars.iv.next, %i.ad
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) %i.aw, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !103

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.ax = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ax
  %i.az = add nsw i64 %indvars.iv.epil.init, %i.ad
  %i.ba = mul nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds i8, ptr %i.am, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge39.split, label %.preheader, !llvm.loop !104

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !96 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !96
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  store ptr %i.i, ptr %i.bj, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 8 uses
  %i.e = mul nsw i32 %i.d, 6
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !64
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !66
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !67
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !68
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !69
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !70
  %factor.op.mul38 = mul i32 %i.d, 3
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge40.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !102
  %i.ad = sext i32 %i.w to i64                    ; 3 uses
  %i.ae = sext i32 %i.v to i64
  %i.af = sext i32 %i.ac to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count45 = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod47 = trunc i32 %i.d to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv42 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next43, %._crit_edge ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv42 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul38, %i.ah
  %i.ai = sext i32 %factor.op.mul.reass to i64
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %indvars.iv42, %i.ae
  %i.al = mul nsw i64 %i.ak, %i.af
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 %i.al ; 3 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.ap = add nsw i64 %indvars.iv, %i.ad
  %i.aq = mul nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = mul nuw nsw i64 %indvars.iv.next, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = add nsw i64 %indvars.iv.next, %i.ad
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) %i.aw, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !106

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.ax = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ax
  %i.az = add nsw i64 %indvars.iv.epil.init, %i.ad
  %i.ba = mul nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds i8, ptr %i.am, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge40.split, label %.preheader, !llvm.loop !107

._crit_edge40.split:                              ; preds = %._crit_edge, %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !98 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !98
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  store ptr %i.i, ptr %i.bj, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_build_tileset_from_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbhw_config, align 4       ; 23 uses
  %6 = alloca %struct.stbhw__process, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %5, i8 0, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.a, align 8
  %i.b = mul nsw i32 %3, 3                        ; 9 uses
  %i.c = add i32 %i.b, -1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !62    ; 2 uses
  %i.g = add i32 %i.b, -2
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62
  %i.k = xor i8 %i.j, 55                          ; 2 uses
  %i.l = add i32 %i.b, -3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !62
  %i.p = xor i8 %i.o, 110                         ; 2 uses
  %i.q = add i32 %i.b, -4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !62
  %i.u = xor i8 %i.t, -91                         ; 2 uses
  %i.v = add i32 %i.b, -5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !62
  %i.z = xor i8 %i.y, -36                         ; 2 uses
  %i.aa = add i32 %i.b, -6
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62
  %i.ae = xor i8 %i.ad, 19                        ; 2 uses
  %i.af = add i32 %i.b, -7
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !62
  %i.aj = xor i8 %i.ai, 74                        ; 2 uses
  %i.ak = add i32 %i.b, -8
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62  ; 2 uses
  %.not = icmp eq i8 %i.an, 65                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %5, align 4, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = zext i8 %i.f to i32                     ; 2 uses
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !34
  %i.aq = zext i8 %i.k to i32                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !34
  %i.as = zext i8 %i.p to i32                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.as, ptr %i.at, align 4, !tbaa !34
  %i.au = zext i8 %i.u to i32                     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.au, ptr %i.av, align 4, !tbaa !34
  %i.aw = zext i8 %i.z to i32                     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !35
  %i.ay = zext i8 %i.ae to i32                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !36
  %i.ba = zext i8 %i.aj to i32                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bc = xor i8 %i.an, -127
  %i.bd = add i32 %i.b, -9
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %1, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !62
  %i.bh = xor i8 %i.bg, -72
  store i32 0, ptr %5, align 4, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = zext i8 %i.f to i32                     ; 2 uses
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !34
  %i.bk = zext i8 %i.k to i32                     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !34
  %i.bm = zext i8 %i.p to i32                     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !34
  %i.bo = zext i8 %i.u to i32                     ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !34
  %i.bq = zext i8 %i.z to i32                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !34
  %i.bs = zext i8 %i.ae to i32                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !34
  %i.bu = zext i8 %i.aj to i32                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !35
  %i.bw = zext i8 %i.bc to i32                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !36
  %i.by = zext i8 %i.bh to i32                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !15
  %i.ca = mul nuw nsw i32 %i.bq, %i.bo
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cb = phi i32 [ %i.bs, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.cc = phi i32 [ %i.ca, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.cd = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %i.ce = phi i32 [ %i.bo, %bb.c ], [ %i.au, %bb.b ] ; 3 uses
  %i.cf = phi i32 [ %i.bm, %bb.c ], [ %i.as, %bb.b ] ; 5 uses
  %i.cg = phi i32 [ %i.bk, %bb.c ], [ %i.aq, %bb.b ] ; 4 uses
  %i.ch = phi i32 [ %i.bj, %bb.c ], [ %i.ap, %bb.b ] ; 4 uses
  %i.ci = phi i32 [ %i.by, %bb.c ], [ %i.ba, %bb.b ] ; 2 uses
  %i.cj = phi i32 [ %i.bw, %bb.c ], [ %i.ay, %bb.b ] ; 3 uses
  %i.ck = phi i32 [ %i.bu, %bb.c ], [ %i.aw, %bb.b ] ; 3 uses
  %or.cond = icmp samesign ugt i32 %i.ck, 64
  %i.cl = icmp samesign ugt i32 %i.cj, 64
  %or.cond8 = select i1 %or.cond, i1 true, i1 %i.cl
  %i.cm = icmp eq i32 %i.ci, 0
  %or.cond73 = select i1 %or.cond8, i1 true, i1 %i.cm
  br i1 %or.cond73, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.co = icmp samesign ugt i32 %i.ch, 32
  %i.cp = icmp samesign ugt i32 %i.cg, 32
  %or.cond12 = select i1 %i.co, i1 true, i1 %i.cp
  %i.cq = icmp samesign ugt i32 %i.cf, 32
  %or.cond16 = select i1 %or.cond12, i1 true, i1 %i.cq
  %i.cr = icmp samesign ugt i32 %i.ce, 32
  %or.cond20 = select i1 %or.cond16, i1 true, i1 %i.cr
  br i1 %or.cond20, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cs = mul nuw nsw i32 %i.ce, %i.cf            ; 2 uses
  %i.ct = mul nuw nsw i32 %i.cg, %i.ch            ; 2 uses
  %i.cu = mul nuw nsw i32 %i.cj, %i.ck            ; 2 uses
  %i.cv = mul nuw nsw i32 %i.cu, %i.cg
  %i.cw = mul nuw nsw i32 %i.cv, %i.cf
  %i.cx = mul i32 %i.cw, %i.ct
  %i.cy = mul i32 %i.cx, %i.cs
  %i.cz = mul nuw nsw i32 %i.cu, %i.ch
  %i.da = mul nuw nsw i32 %i.cz, %i.ct
  %i.db = mul i32 %i.da, %i.ce
  %i.dc = mul i32 %i.db, %i.cs
  br label %stbhw__get_template_info.exit

bb.h:                                             ; preds = %bb.f
  %i.dd = mul nuw nsw i32 %i.cg, %i.ch
  %i.de = mul nuw nsw i32 %i.cj, %i.ck
end_hunk_2
begin_hunk_3_@stbhw_build_tileset_from_image:bb.a
  %i.di = mul i32 %i.dh, %i.cc
  %i.dj = mul i32 %i.df, %i.cc
  %i.dk = mul i32 %i.dj, %i.cb
  %i.dl = mul i32 %i.dk, %i.cb
  br label %stbhw__get_template_info.exit

stbhw__get_template_info.exit:                    ; preds = %bb.g, %bb.h
  %.082.i = phi i32 [ %i.dl, %bb.h ], [ %i.dc, %bb.g ] ; 2 uses
  %.081.i = phi i32 [ %i.di, %bb.h ], [ %i.cy, %bb.g ] ; 2 uses
  store i32 %i.cd, ptr %0, align 8, !tbaa !86
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.dm, align 4, !tbaa !83
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.dn, ptr noundef nonnull align 4 dereferenceable(24) %i.cn, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.081.i, ptr %i.do, align 4, !tbaa !108
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.082.i, ptr %i.dp, align 4, !tbaa !109
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.dq, align 8, !tbaa !98
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.dr, align 8, !tbaa !96
  %i.ds = sext i32 %.081.i to i64
  %i.dt = shl nsw i64 %i.ds, 3
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.dt) #17
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !95
  %i.dw = sext i32 %.082.i to i64
  %i.dx = shl nsw i64 %i.dw, 3
  %i.dy = tail call noalias ptr @malloc(i64 noundef %i.dx) #17
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !97
  store ptr %0, ptr %6, align 8, !tbaa !105
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.ea, align 8, !tbaa !101
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %2, ptr %i.eb, align 8, !tbaa !102
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @stbhw__parse_h_rect, ptr %i.ec, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @stbhw__parse_v_rect, ptr %i.ed, align 8, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %3, ptr %i.ee, align 4, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %4, ptr %i.ef, align 8, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.eg, align 8, !tbaa !14
  %i.eh = call i32 @stbhw__process_template(ptr noundef nonnull %6)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %stbhw__get_template_info.exit
  %.049 = phi i32 [ %i.eh, %stbhw__get_template_info.exit ], [ 0, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %.049
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw_free_tileset(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !98
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.k) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !96
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %.preheader, !llvm.loop !110

bb.c:                                             ; preds = %.lr.ph20, %bb.c
  %indvars.iv22 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next23, %bb.c ] ; 2 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv22
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.q) #16
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.r = load i32, ptr %i.e, align 8, !tbaa !98
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next23, %i.s
  br i1 %i.t, label %bb.c, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  tail call void @free(ptr noundef %i.x) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbhw__set_pixel(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = mul nsw i32 %3, %1
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = mul nsw i32 %2, 3
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 3, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbhw__stbhw__set_pixel_whiten(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !62
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw nsw i16 %i.b, 1
  %i.d = add nuw nsw i16 %i.c, 255
  %i.e = udiv i16 %i.d, 3
  %i.f = trunc nuw i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.h = load <2 x i8>, ptr %i.g, align 1, !tbaa !62
  %i.i = zext <2 x i8> %i.h to <2 x i16>
  %i.j = shl nuw nsw <2 x i16> %i.i, splat (i16 1)
  %i.k = add nuw nsw <2 x i16> %i.j, splat (i16 255)
  %i.l = udiv <2 x i16> %i.k, splat (i16 3)       ; 2 uses
  %i.m = bitcast <2 x i16> %i.l to <4 x i8>
  %i.n = extractelement <4 x i8> %i.m, i64 0
  %i.o = bitcast <2 x i16> %i.l to <4 x i8>
  %i.p = extractelement <4 x i8> %i.o, i64 2
  %i.q = mul nsw i32 %3, %1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = mul nsw i32 %2, 3
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u ; 3 uses
  store i8 %i.f, ptr %i.v, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.n, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.p, ptr %.sroa.5.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__draw_hline(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #13 {
bb.a:
  %i.a = mul nsw i32 %5, 3
  %i.b = sdiv i32 %i.a, 8                         ; 3 uses
  %i.c = mul nsw i32 %5, 5
  %i.d = sdiv i32 %i.c, 8                         ; 3 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = mul nsw i32 %3, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = sext i32 %2 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %5, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.k = add nsw i64 %indvars.iv, %i.i
  %i.l = mul nsw i64 %i.k, 3
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.n = add nsw i64 %indvars.iv.next, %i.i
  %i.o = mul nsw i64 %i.n, 3
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !112

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.q = add nsw i64 %indvars.iv.epil.init, %i.i
  %i.r = mul nsw i64 %i.q, 3
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.t = sub nsw i32 %i.d, %i.b
  %i.u = icmp slt i32 %i.t, 2
  br i1 %i.u, label %.thread, label %bb.c

.thread:                                          ; preds = %._crit_edge
  %i.v = sdiv i32 %5, 2                           ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = and i32 %5, 1
  %spec.select.v = add nuw nsw i32 %i.x, 1
  %spec.select = add nsw i32 %spec.select.v, %i.v
  br label %iter.check

bb.c:                                             ; preds = %._crit_edge
  %i.y = icmp slt i32 %i.b, %i.d
  br i1 %i.y, label %iter.check, label %._crit_edge33

iter.check:                                       ; preds = %.thread, %bb.c
  %.044 = phi i32 [ %spec.select, %.thread ], [ %i.d, %bb.c ]
  %.02643 = phi i32 [ %i.w, %.thread ], [ %i.b, %bb.c ]
  %i.z = sext i32 %6 to i64                       ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr @stbhw__color, i64 %i.z
  %i.ab = sext i32 %4 to i64                      ; 2 uses
  %i.ac = getelementptr inbounds [3 x i8], ptr %i.aa, i64 %i.ab ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 2 uses
  %i.af = mul nsw i32 %3, %1
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 3 uses
  %i.ai = sext i32 %.02643 to i64                 ; 8 uses
  %i.aj = sext i32 %2 to i64                      ; 5 uses
  %wide.trip.count38 = sext i32 %.044 to i64      ; 3 uses
  %i.ak = sub nsw i64 %wide.trip.count38, %i.ai   ; 7 uses
  %min.iters.check = icmp ult i64 %i.ak, 2
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add nsw i64 %i.ai, %i.aj
  %i.am = mul nsw i64 %i.al, 3
  %i.an = getelementptr i8, ptr %0, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.ag
  %i.ao = add nsw i64 %wide.trip.count38, %i.aj
  %i.ap = mul nsw i64 %i.ao, 3
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap
  %scevgep45 = getelementptr i8, ptr %i.aq, i64 %i.ag
  %i.ar = mul nsw i64 %i.z, 24
  %i.as = mul nsw i64 %i.ab, 3
  %i.at = getelementptr i8, ptr @stbhw__color, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %scevgep46 = getelementptr i8, ptr %i.au, i64 3
  %bound0 = icmp ult ptr %scevgep, %scevgep46
  %bound1 = icmp ult ptr %i.ac, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check47 = icmp ult i64 %i.ak, 16
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.ak, 14
  %n.vec = and i64 %i.ak, -16                     ; 4 uses
  %i.aw = add nsw i64 %n.vec, %i.ai
  %i.ax = load i8, ptr %i.ac, align 1, !tbaa !62, !alias.scope !113
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ay = zext <16 x i8> %broadcast.splat to <16 x i16>
  %i.az = shl nuw nsw <16 x i16> %i.ay, splat (i16 1)
  %i.ba = add nuw nsw <16 x i16> %i.az, splat (i16 255)
  %i.bb = udiv <16 x i16> %i.ba, splat (i16 3)
  %i.bc = trunc nuw <16 x i16> %i.bb to <16 x i8>
  %i.bd = load i8, ptr %i.ad, align 1, !tbaa !62, !alias.scope !113
  %broadcast.splatinsert48 = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %broadcast.splat49 = shufflevector <16 x i8> %broadcast.splatinsert48, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.be = zext <16 x i8> %broadcast.splat49 to <16 x i16>
  %i.bf = shl nuw nsw <16 x i16> %i.be, splat (i16 1)
  %i.bg = add nuw nsw <16 x i16> %i.bf, splat (i16 255)
  %i.bh = udiv <16 x i16> %i.bg, splat (i16 3)
  %i.bi = trunc nuw <16 x i16> %i.bh to <16 x i8>
  %i.bj = load i8, ptr %i.ae, align 1, !tbaa !62, !alias.scope !113
  %broadcast.splatinsert50 = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %broadcast.splat51 = shufflevector <16 x i8> %broadcast.splatinsert50, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bk = zext <16 x i8> %broadcast.splat51 to <16 x i16>
  %i.bl = shl nuw nsw <16 x i16> %i.bk, splat (i16 1)
  %i.bm = add nuw nsw <16 x i16> %i.bl, splat (i16 255)
  %i.bn = udiv <16 x i16> %i.bm, splat (i16 3)
  %invariant.op = add i64 %i.ai, %i.aj
  %i.bo = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bp = shufflevector <16 x i16> %i.bn, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = trunc nuw <32 x i16> %i.bp to <32 x i8>
  %interleaved.vec = shufflevector <32 x i8> %i.bo, <32 x i8> %i.bq, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.br = mul nsw i64 %.reass, 3
  %i.bs = getelementptr inbounds i8, ptr %i.ah, i64 %i.br
  store <48 x i8> %interleaved.vec, ptr %i.bs, align 1, !alias.scope !116, !noalias !113
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge33, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.ak, -2                    ; 3 uses
  %i.bu = add nsw i64 %n.vec52, %i.ai
  %i.bv = load i8, ptr %i.ac, align 1, !tbaa !62, !alias.scope !113
  %broadcast.splatinsert53 = insertelement <2 x i8> poison, i8 %i.bv, i64 0
  %broadcast.splat54 = shufflevector <2 x i8> %broadcast.splatinsert53, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.bw = zext <2 x i8> %broadcast.splat54 to <2 x i16>
  %i.bx = load i8, ptr %i.ad, align 1, !tbaa !62, !alias.scope !113
  %broadcast.splatinsert55 = insertelement <2 x i8> poison, i8 %i.bx, i64 0
  %broadcast.splat56 = shufflevector <2 x i8> %broadcast.splatinsert55, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.by = zext <2 x i8> %broadcast.splat56 to <2 x i16>
  %i.bz = load i8, ptr %i.ae, align 1, !tbaa !62, !alias.scope !113
  %broadcast.splatinsert57 = insertelement <2 x i8> poison, i8 %i.bz, i64 0
  %broadcast.splat58 = shufflevector <2 x i8> %broadcast.splatinsert57, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ca = zext <2 x i8> %broadcast.splat58 to <2 x i16>
  %i.cb = shl nuw nsw <2 x i16> %i.ca, splat (i16 1)
  %i.cc = add nuw nsw <2 x i16> %i.cb, splat (i16 255)
  %i.cd = udiv <2 x i16> %i.cc, splat (i16 3)
  %invariant.op65 = add i64 %i.ai, %i.aj
  %i.ce = shufflevector <2 x i16> %i.bw, <2 x i16> %i.by, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cf = shl nuw nsw <4 x i16> %i.ce, splat (i16 1)
  %i.cg = add nuw nsw <4 x i16> %i.cf, splat (i16 255)
  %i.ch = udiv <4 x i16> %i.cg, splat (i16 3)
  %i.ci = shufflevector <2 x i16> %i.cd, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x i16> %i.ch, <4 x i16> %i.ci, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec60 = trunc nuw <6 x i16> %i.cj to <6 x i8>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %.reass66 = add i64 %index59, %invariant.op65
  %i.ck = mul nsw i64 %.reass66, 3
  %i.cl = getelementptr inbounds i8, ptr %i.ah, i64 %i.ck
  store <6 x i8> %interleaved.vec60, ptr %i.cl, align 1, !alias.scope !116, !noalias !113
  %index.next61 = add nuw i64 %index59, 2         ; 2 uses
  %i.cm = icmp eq i64 %index.next61, %n.vec52
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.ak, %n.vec52
  br i1 %cmp.n62, label %._crit_edge33, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv35.ph = phi i64 [ %i.ai, %iter.check ], [ %i.ai, %vector.memcheck ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %vec.epilog.scalar.ph ], [ %indvars.iv35.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cn = add nsw i64 %indvars.iv35, %i.aj
  %i.co = load i8, ptr %i.ac, align 1, !tbaa !62
  %i.cp = zext i8 %i.co to i16
  %i.cq = shl nuw nsw i16 %i.cp, 1
  %i.cr = add nuw nsw i16 %i.cq, 255
  %i.cs = udiv i16 %i.cr, 3
  %i.ct = trunc nuw i16 %i.cs to i8
  %i.cu = load <2 x i8>, ptr %i.ad, align 1, !tbaa !62
  %i.cv = zext <2 x i8> %i.cu to <2 x i16>
  %i.cw = shl nuw nsw <2 x i16> %i.cv, splat (i16 1)
  %i.cx = add nuw nsw <2 x i16> %i.cw, splat (i16 255)
  %i.cy = udiv <2 x i16> %i.cx, splat (i16 3)     ; 2 uses
  %i.cz = bitcast <2 x i16> %i.cy to <4 x i8>
  %i.da = extractelement <4 x i8> %i.cz, i64 0
  %i.db = bitcast <2 x i16> %i.cy to <4 x i8>
  %i.dc = extractelement <4 x i8> %i.db, i64 2
  %i.dd = mul nsw i64 %i.cn, 3
  %i.de = getelementptr inbounds i8, ptr %i.ah, i64 %i.dd ; 3 uses
  store i8 %i.ct, ptr %i.de, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store i8 %i.da, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 %i.dc, ptr %.sroa.5.0..sroa_idx.i, align 1
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge33, label %vec.epilog.scalar.ph, !llvm.loop !121

._crit_edge33:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__draw_vline(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #13 {
bb.a:
  %i.a = mul nsw i32 %5, 3
  %i.b = sdiv i32 %i.a, 8                         ; 3 uses
  %i.c = mul nsw i32 %5, 5
  %i.d = sdiv i32 %i.c, 8                         ; 3 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = mul nsw i32 %2, 3
  %i.g = sext i32 %i.f to i64
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.g ; 3 uses
  %i.h = sext i32 %3 to i64                       ; 3 uses
  %i.i = sext i32 %1 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %5, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.k = add nsw i64 %indvars.iv, %i.h
  %i.l = mul nsw i64 %i.k, %i.i
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.m = add nsw i64 %indvars.iv.next, %i.h
  %i.n = mul nsw i64 %i.m, %i.i
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !122

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.o = add nsw i64 %indvars.iv.epil.init, %i.h
  %i.p = mul nsw i64 %i.o, %i.i
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.q = sub nsw i32 %i.d, %i.b
  %i.r = icmp slt i32 %i.q, 2
  br i1 %i.r, label %.thread, label %bb.c

.thread:                                          ; preds = %._crit_edge
  %i.s = sdiv i32 %5, 2                           ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  %i.u = and i32 %5, 1
  %spec.select.v = add nuw nsw i32 %i.u, 1
  %spec.select = add nsw i32 %spec.select.v, %i.s
  br label %.lr.ph32

bb.c:                                             ; preds = %._crit_edge
  %i.v = icmp slt i32 %i.b, %i.d
  br i1 %i.v, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %.thread, %bb.c
  %.046 = phi i32 [ %spec.select, %.thread ], [ %i.d, %bb.c ]
  %.02645 = phi i32 [ %i.t, %.thread ], [ %i.b, %bb.c ]
  %i.w = sext i32 %6 to i64
  %i.x = getelementptr inbounds [24 x i8], ptr @stbhw__color, i64 %i.w
  %i.y = sext i32 %4 to i64
  %i.z = getelementptr inbounds [3 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = mul nsw i32 %2, 3
  %i.ac = sext i32 %i.ab to i64
  %invariant.gep34 = getelementptr i8, ptr %0, i64 %i.ac
  %i.ad = sext i32 %.02645 to i64
  %i.ae = sext i32 %3 to i64
  %i.af = sext i32 %1 to i64
  %wide.trip.count40 = sext i32 %.046 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph32, %bb.d
  %indvars.iv37 = phi i64 [ %i.ad, %.lr.ph32 ], [ %indvars.iv.next38, %bb.d ] ; 2 uses
  %i.ag = add nsw i64 %indvars.iv37, %i.ae
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !62
  %i.ai = zext i8 %i.ah to i16
  %i.aj = shl nuw nsw i16 %i.ai, 1
  %i.ak = add nuw nsw i16 %i.aj, 255
  %i.al = udiv i16 %i.ak, 3
  %i.am = trunc nuw i16 %i.al to i8
  %i.an = load <2 x i8>, ptr %i.aa, align 1, !tbaa !62
  %i.ao = zext <2 x i8> %i.an to <2 x i16>
  %i.ap = shl nuw nsw <2 x i16> %i.ao, splat (i16 1)
  %i.aq = add nuw nsw <2 x i16> %i.ap, splat (i16 255)
  %i.ar = udiv <2 x i16> %i.aq, splat (i16 3)     ; 2 uses
  %i.as = bitcast <2 x i16> %i.ar to <4 x i8>
  %i.at = extractelement <4 x i8> %i.as, i64 0
  %i.au = bitcast <2 x i16> %i.ar to <4 x i8>
  %i.av = extractelement <4 x i8> %i.au, i64 2
  %i.aw = mul nsw i64 %i.ag, %i.af
  %gep35 = getelementptr i8, ptr %invariant.gep34, i64 %i.aw ; 3 uses
  store i8 %i.am, ptr %gep35, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %gep35, i64 1
  store i8 %i.at, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %gep35, i64 2
  store i8 %i.av, ptr %.sroa.5.0..sroa_idx.i, align 1
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge33, label %bb.d, !llvm.loop !123

._crit_edge33:                                    ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbhw__draw_clipped_corner(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
.preheader:
  %i.a = add nsw i32 %6, %2
  %i.b = add nsw i32 %7, %3
  %i.c = sext i32 %6 to i64                       ; 6 uses
  %i.d = sext i32 %4 to i64                       ; 6 uses
  %i.e = sext i32 %i.a to i64                     ; 12 uses
  %i.f = sext i32 %7 to i64                       ; 2 uses
  %i.g = sext i32 %5 to i64                       ; 2 uses
  %i.h = sext i32 %i.b to i64                     ; 4 uses
  %i.i = sext i32 %1 to i64                       ; 4 uses
  %i.j = add nsw i64 %i.f, -2
  %i.k = icmp slt i32 %7, 3
  %i.l = icmp sgt i64 %i.j, %i.g
  %or.cond31 = or i1 %i.k, %i.l
  %i.m = add nsw i64 %i.h, -2
  %i.n = mul nsw i64 %i.m, %i.i
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 2 uses
  br i1 %or.cond31, label %.split.us, label %.preheader.split.split.us

.preheader.split.split.us:                        ; preds = %.preheader
  %i.p = add nsw i64 %i.c, -1
  %i.q = icmp slt i32 %6, 2
  %i.r = icmp sgt i64 %i.p, %i.d
  %or.cond.us34.1 = or i1 %i.q, %i.r
  br i1 %or.cond.us34.1, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader.split.split.us
  %i.s = mul nsw i64 %i.e, 3
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.preheader.split.split.us, %bb.a
  %i.v = icmp slt i32 %6, 1
  %i.w = icmp sgt i32 %6, %4
  %or.cond.us34.2 = or i1 %i.v, %i.w
  br i1 %or.cond.us34.2, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = mul nsw i64 %i.e, 3
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us

.split.us:                                        ; preds = %bb.c, %bb.b, %.preheader
  %i.z = add nsw i64 %i.f, -1
  %i.aa = icmp slt i32 %7, 2
  %i.ab = icmp sgt i64 %i.z, %i.g
  %or.cond31.1 = or i1 %i.aa, %i.ab
  %i.ac = add nsw i64 %i.h, -1
  %i.ad = mul nsw i64 %i.ac, %i.i
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 4 uses
  br i1 %or.cond31.1, label %.split.us.1, label %.preheader.split.split.preheader.1

.preheader.split.split.preheader.1:               ; preds = %.split.us
  %i.af = add nsw i64 %i.c, -2
  %i.ag = icmp slt i32 %6, 3
  %i.ah = icmp sgt i64 %i.af, %i.d
  %or.cond.144 = or i1 %i.ag, %i.ah
  br i1 %or.cond.144, label %.preheader.split.split.1.1, label %bb.d

bb.d:                                             ; preds = %.preheader.split.split.preheader.1
  %i.ai = mul nsw i64 %i.e, 3
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ak, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.1.1

.preheader.split.split.1.1:                       ; preds = %bb.d, %.preheader.split.split.preheader.1
  %i.al = add nsw i64 %i.c, -1
  %i.am = icmp slt i32 %6, 2
  %i.an = icmp sgt i64 %i.al, %i.d
  %or.cond.1.1 = or i1 %i.am, %i.an
  br i1 %or.cond.1.1, label %.preheader.split.split.2.1, label %bb.e

bb.e:                                             ; preds = %.preheader.split.split.1.1
  %i.ao = mul nsw i64 %i.e, 3
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aq, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.2.1

.preheader.split.split.2.1:                       ; preds = %bb.e, %.preheader.split.split.1.1
  %i.ar = icmp slt i32 %6, 1
  %i.as = icmp sgt i32 %6, %4
  %or.cond.2.1 = or i1 %i.ar, %i.as
  br i1 %or.cond.2.1, label %.preheader.split.split.3.1, label %bb.f

bb.f:                                             ; preds = %.preheader.split.split.2.1
  %i.at = mul nsw i64 %i.e, 3
  %i.au = getelementptr inbounds i8, ptr %i.ae, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.au, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.3.1

.preheader.split.split.3.1:                       ; preds = %bb.f, %.preheader.split.split.2.1
  %i.av = icmp slt i32 %6, 0
  %i.aw = icmp sge i32 %6, %4
  %or.cond.3.1 = or i1 %i.av, %i.aw
  br i1 %or.cond.3.1, label %.split.us.1, label %bb.g

bb.g:                                             ; preds = %.preheader.split.split.3.1
  %i.ax = mul nsw i64 %i.e, 3
  %i.ay = getelementptr i8, ptr %i.ae, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.1

.split.us.1:                                      ; preds = %.split.us, %.preheader.split.split.3.1, %bb.g
  %i.ba = icmp slt i32 %7, 1
  %i.bb = icmp sgt i32 %7, %5
  %or.cond31.2 = or i1 %i.ba, %i.bb
  %i.bc = mul nsw i64 %i.h, %i.i
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc ; 4 uses
  br i1 %or.cond31.2, label %.split.us.2, label %.preheader.split.split.preheader.2

.preheader.split.split.preheader.2:               ; preds = %.split.us.1
  %i.be = add nsw i64 %i.c, -2
  %i.bf = icmp slt i32 %6, 3
  %i.bg = icmp sgt i64 %i.be, %i.d
  %or.cond.247 = or i1 %i.bf, %i.bg
  br i1 %or.cond.247, label %.preheader.split.split.1.2, label %bb.h

bb.h:                                             ; preds = %.preheader.split.split.preheader.2
  %i.bh = mul nsw i64 %i.e, 3
  %i.bi = getelementptr i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.1.2

.preheader.split.split.1.2:                       ; preds = %bb.h, %.preheader.split.split.preheader.2
  %i.bk = add nsw i64 %i.c, -1
  %i.bl = icmp slt i32 %6, 2
  %i.bm = icmp sgt i64 %i.bk, %i.d
  %or.cond.1.2 = or i1 %i.bl, %i.bm
  br i1 %or.cond.1.2, label %.preheader.split.split.2.2, label %bb.i

bb.i:                                             ; preds = %.preheader.split.split.1.2
  %i.bn = mul nsw i64 %i.e, 3
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bp, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.2.2

.preheader.split.split.2.2:                       ; preds = %bb.i, %.preheader.split.split.1.2
  %i.bq = icmp slt i32 %6, 1
  %i.br = icmp sgt i32 %6, %4
  %or.cond.2.2 = or i1 %i.bq, %i.br
  br i1 %or.cond.2.2, label %.preheader.split.split.3.2, label %bb.j

bb.j:                                             ; preds = %.preheader.split.split.2.2
  %i.bs = mul nsw i64 %i.e, 3
  %i.bt = getelementptr inbounds i8, ptr %i.bd, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.3.2

.preheader.split.split.3.2:                       ; preds = %bb.j, %.preheader.split.split.2.2
  %i.bu = icmp slt i32 %6, 0
  %i.bv = icmp sge i32 %6, %4
  %or.cond.3.2 = or i1 %i.bu, %i.bv
  br i1 %or.cond.3.2, label %.split.us.2, label %bb.k

bb.k:                                             ; preds = %.preheader.split.split.3.2
  %i.bw = mul nsw i64 %i.e, 3
  %i.bx = getelementptr i8, ptr %i.bd, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.by, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.2

.split.us.2:                                      ; preds = %.split.us.1, %.preheader.split.split.3.2, %bb.k
  %i.bz = icmp slt i32 %7, 0
  %i.ca = icmp sge i32 %7, %5
  %or.cond31.3 = or i1 %i.bz, %i.ca
  %i.cb = add nsw i64 %i.h, 1
  %i.cc = mul nsw i64 %i.cb, %i.i
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %i.cc ; 2 uses
  br i1 %or.cond31.3, label %.split.us.3, label %.preheader.split.split.us.3

.preheader.split.split.us.3:                      ; preds = %.split.us.2
  %i.ce = add nsw i64 %i.c, -1
  %i.cf = icmp slt i32 %6, 2
  %i.cg = icmp sgt i64 %i.ce, %i.d
  %or.cond.us34.1.3 = or i1 %i.cf, %i.cg
  br i1 %or.cond.us34.1.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.split.split.us.3
  %i.ch = mul nsw i64 %i.e, 3
  %i.ci = getelementptr i8, ptr %i.cd, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cj, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %.preheader.split.split.us.3, %bb.l
  %i.ck = icmp slt i32 %6, 1
  %i.cl = icmp sgt i32 %6, %4
  %or.cond.us34.2.3 = or i1 %i.ck, %i.cl
  br i1 %or.cond.us34.2.3, label %.split.us.3, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = mul nsw i64 %i.e, 3
  %i.cn = getelementptr inbounds i8, ptr %i.cd, i64 %i.cm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cn, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.3

.split.us.3:                                      ; preds = %.split.us.2, %bb.n, %bb.m
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__edge_process_h_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 36 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = add i32 %1, 1                            ; 4 uses
  %i.j = mul nsw i32 %i.d, 3
  %i.k = sdiv i32 %i.j, 8                         ; 7 uses
  %i.l = mul nsw i32 %i.d, 5
  %i.m = sdiv i32 %i.l, 8                         ; 7 uses
  %i.n = icmp sgt i32 %i.d, 0                     ; 6 uses
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = mul nsw i32 %i.h, %2
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 %i.p ; 3 uses
  %i.r = sext i32 %i.i to i64                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.s = icmp eq i32 %i.d, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.t = add nsw i64 %indvars.iv.i, %i.r
  %i.u = mul nsw i64 %i.t, 3
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.v, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.w = add nsw i64 %indvars.iv.next.i, %i.r
  %i.x = mul nsw i64 %i.w, 3
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.y, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !112

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod284 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod284)
  %i.z = add nsw i64 %indvars.iv.i.epil.init, %i.r
  %i.aa = mul nsw i64 %i.z, 3
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %i.ac = sub nsw i32 %i.m, %i.k
  %i.ad = icmp slt i32 %i.ac, 2                   ; 6 uses
  br i1 %i.ad, label %.thread.i, label %iter.check

.thread.i:                                        ; preds = %._crit_edge.i
  %i.ae = sdiv i32 %i.d, 2                        ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = and i32 %i.d, 1
  %spec.select.v.i = add nuw nsw i32 %i.ag, 1
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.ae
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.thread.i
  %.044.i = phi i32 [ %spec.select.i, %.thread.i ], [ %i.m, %._crit_edge.i ]
  %.02643.i = phi i32 [ %i.af, %.thread.i ], [ %i.k, %._crit_edge.i ]
  %i.ah = sext i32 %3 to i64                      ; 2 uses
  %i.ai = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 48), i64 %i.ah ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.al = mul nsw i32 %i.h, %2
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.f, i64 %i.am ; 3 uses
  %i.ao = sext i32 %.02643.i to i64               ; 8 uses
  %i.ap = sext i32 %i.i to i64                    ; 13 uses
  %wide.trip.count38.i = sext i32 %.044.i to i64  ; 3 uses
  %i.aq = sub nsw i64 %wide.trip.count38.i, %i.ao ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 2
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = add nsw i64 %i.ao, %i.ap
  %i.as = mul nsw i64 %i.ar, 3
  %i.at = getelementptr i8, ptr %i.f, i64 %i.as
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.am
  %i.au = add nsw i64 %wide.trip.count38.i, %i.ap
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr i8, ptr %i.f, i64 %i.av
  %scevgep133 = getelementptr i8, ptr %i.aw, i64 %i.am
  %i.ax = mul nsw i64 %i.ah, 3
  %i.ay = getelementptr i8, ptr @stbhw__color, i64 %i.ax
  %scevgep134 = getelementptr i8, ptr %i.ay, i64 51
  %bound0 = icmp ult ptr %scevgep, %scevgep134
  %bound1 = icmp ult ptr %i.ai, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check135 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check135, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %i.aq, 14
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.ba = add nsw i64 %n.vec, %i.ao
  %i.bb = load i8, ptr %i.ai, align 1, !tbaa !62, !alias.scope !124
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bc = zext <16 x i8> %broadcast.splat to <16 x i16>
  %i.bd = shl nuw nsw <16 x i16> %i.bc, splat (i16 1)
  %i.be = add nuw nsw <16 x i16> %i.bd, splat (i16 255)
  %i.bf = udiv <16 x i16> %i.be, splat (i16 3)
  %i.bg = trunc nuw <16 x i16> %i.bf to <16 x i8>
  %i.bh = load i8, ptr %i.aj, align 1, !tbaa !62, !alias.scope !124
  %broadcast.splatinsert136 = insertelement <16 x i8> poison, i8 %i.bh, i64 0
  %broadcast.splat137 = shufflevector <16 x i8> %broadcast.splatinsert136, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bi = zext <16 x i8> %broadcast.splat137 to <16 x i16>
  %i.bj = shl nuw nsw <16 x i16> %i.bi, splat (i16 1)
  %i.bk = add nuw nsw <16 x i16> %i.bj, splat (i16 255)
  %i.bl = udiv <16 x i16> %i.bk, splat (i16 3)
  %i.bm = trunc nuw <16 x i16> %i.bl to <16 x i8>
  %i.bn = load i8, ptr %i.ak, align 1, !tbaa !62, !alias.scope !124
  %broadcast.splatinsert138 = insertelement <16 x i8> poison, i8 %i.bn, i64 0
  %broadcast.splat139 = shufflevector <16 x i8> %broadcast.splatinsert138, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bo = zext <16 x i8> %broadcast.splat139 to <16 x i16>
  %i.bp = shl nuw nsw <16 x i16> %i.bo, splat (i16 1)
  %i.bq = add nuw nsw <16 x i16> %i.bp, splat (i16 255)
  %i.br = udiv <16 x i16> %i.bq, splat (i16 3)
  %invariant.op = add i64 %i.ao, %i.ap
  %i.bs = shufflevector <16 x i8> %i.bg, <16 x i8> %i.bm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bt = shufflevector <16 x i16> %i.br, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = trunc nuw <32 x i16> %i.bt to <32 x i8>
  %interleaved.vec = shufflevector <32 x i8> %i.bs, <32 x i8> %i.bu, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.bv = mul nsw i64 %.reass, 3
  %i.bw = getelementptr inbounds i8, ptr %i.an, i64 %i.bv
  store <48 x i8> %interleaved.vec, ptr %i.bw, align 1, !alias.scope !127, !noalias !124
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %stbhw__draw_hline.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec140 = and i64 %i.aq, -2                   ; 3 uses
  %i.by = add nsw i64 %n.vec140, %i.ao
  %i.bz = load i8, ptr %i.ai, align 1, !tbaa !62, !alias.scope !124
  %broadcast.splatinsert141 = insertelement <2 x i8> poison, i8 %i.bz, i64 0
  %broadcast.splat142 = shufflevector <2 x i8> %broadcast.splatinsert141, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ca = zext <2 x i8> %broadcast.splat142 to <2 x i16>
  %i.cb = load i8, ptr %i.aj, align 1, !tbaa !62, !alias.scope !124
  %broadcast.splatinsert143 = insertelement <2 x i8> poison, i8 %i.cb, i64 0
  %broadcast.splat144 = shufflevector <2 x i8> %broadcast.splatinsert143, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cc = zext <2 x i8> %broadcast.splat144 to <2 x i16>
  %i.cd = load i8, ptr %i.ak, align 1, !tbaa !62, !alias.scope !124
  %broadcast.splatinsert145 = insertelement <2 x i8> poison, i8 %i.cd, i64 0
  %broadcast.splat146 = shufflevector <2 x i8> %broadcast.splatinsert145, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ce = zext <2 x i8> %broadcast.splat146 to <2 x i16>
  %i.cf = shl nuw nsw <2 x i16> %i.ce, splat (i16 1)
  %i.cg = add nuw nsw <2 x i16> %i.cf, splat (i16 255)
  %i.ch = udiv <2 x i16> %i.cg, splat (i16 3)
  %invariant.op315 = add i64 %i.ao, %i.ap
  %i.ci = shufflevector <2 x i16> %i.ca, <2 x i16> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cj = shl nuw nsw <4 x i16> %i.ci, splat (i16 1)
  %i.ck = add nuw nsw <4 x i16> %i.cj, splat (i16 255)
  %i.cl = udiv <4 x i16> %i.ck, splat (i16 3)
  %i.cm = shufflevector <2 x i16> %i.ch, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x i16> %i.cl, <4 x i16> %i.cm, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec148 = trunc nuw <6 x i16> %i.cn to <6 x i8>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 2 uses
  %.reass316 = add i64 %index147, %invariant.op315
  %i.co = mul nsw i64 %.reass316, 3
  %i.cp = getelementptr inbounds i8, ptr %i.an, i64 %i.co
  store <6 x i8> %interleaved.vec148, ptr %i.cp, align 1, !alias.scope !127, !noalias !124
  %index.next149 = add nuw i64 %index147, 2       ; 2 uses
  %i.cq = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %i.aq, %n.vec140
  br i1 %cmp.n150, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv35.i.ph = phi i64 [ %i.ao, %iter.check ], [ %i.ao, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %vec.epilog.scalar.ph ], [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cr = add nsw i64 %indvars.iv35.i, %i.ap
  %i.cs = load i8, ptr %i.ai, align 1, !tbaa !62
  %i.ct = zext i8 %i.cs to i16
  %i.cu = shl nuw nsw i16 %i.ct, 1
  %i.cv = add nuw nsw i16 %i.cu, 255
  %i.cw = udiv i16 %i.cv, 3
  %i.cx = trunc nuw i16 %i.cw to i8
  %i.cy = load <2 x i8>, ptr %i.aj, align 1, !tbaa !62
  %i.cz = zext <2 x i8> %i.cy to <2 x i16>
  %i.da = shl nuw nsw <2 x i16> %i.cz, splat (i16 1)
  %i.db = add nuw nsw <2 x i16> %i.da, splat (i16 255)
  %i.dc = udiv <2 x i16> %i.db, splat (i16 3)     ; 2 uses
  %i.dd = bitcast <2 x i16> %i.dc to <4 x i8>
  %i.de = extractelement <4 x i8> %i.dd, i64 0
  %i.df = bitcast <2 x i16> %i.dc to <4 x i8>
  %i.dg = extractelement <4 x i8> %i.df, i64 2
  %i.dh = mul nsw i64 %i.cr, 3
  %i.di = getelementptr inbounds i8, ptr %i.an, i64 %i.dh ; 3 uses
  store i8 %i.cx, ptr %i.di, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store i8 %i.de, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i8 %i.dg, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph, !llvm.loop !131

stbhw__draw_hline.exit:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.dk = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.dl = add i32 %i.i, %i.d                      ; 2 uses
  br i1 %i.n, label %.lr.ph.i54, label %._crit_edge.i41

.lr.ph.i54:                                       ; preds = %stbhw__draw_hline.exit
  %i.dm = mul nsw i32 %i.dk, %2
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %i.dn ; 3 uses
  %i.dp = sext i32 %i.dl to i64                   ; 3 uses
  %wide.trip.count.i55 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter286 = and i64 %wide.trip.count.i55, 1
  %i.dq = icmp eq i32 %i.d, 1
  br i1 %i.dq, label %.epil.preheader285, label %.lr.ph.i54.new

.lr.ph.i54.new:                                   ; preds = %.lr.ph.i54
  %unroll_iter289 = and i64 %wide.trip.count.i55, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i54.new
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph.i54.new ], [ %indvars.iv.next.i57.1, %bb.c ] ; 3 uses
  %niter290 = phi i64 [ 0, %.lr.ph.i54.new ], [ %niter290.next.1, %bb.c ]
  %i.dr = add nsw i64 %indvars.iv.i56, %i.dp
  %i.ds = mul nsw i64 %i.dr, 3
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dt, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i57 = or disjoint i64 %indvars.iv.i56, 1
  %i.du = add nsw i64 %indvars.iv.next.i57, %i.dp
  %i.dv = mul nsw i64 %i.du, 3
  %i.dw = getelementptr inbounds i8, ptr %i.do, i64 %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dw, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i57.1 = add nuw nsw i64 %indvars.iv.i56, 2 ; 2 uses
  %niter290.next.1 = add i64 %niter290, 2         ; 2 uses
  %niter290.ncmp.1 = icmp eq i64 %niter290.next.1, %unroll_iter289
  br i1 %niter290.ncmp.1, label %._crit_edge.i41.loopexit.unr-lcssa, label %bb.c, !llvm.loop !112

._crit_edge.i41.loopexit.unr-lcssa:               ; preds = %bb.c
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %._crit_edge.i41, label %.epil.preheader285

.epil.preheader285:                               ; preds = %._crit_edge.i41.loopexit.unr-lcssa, %.lr.ph.i54
  %indvars.iv.i56.epil.init = phi i64 [ 0, %.lr.ph.i54 ], [ %indvars.iv.next.i57.1, %._crit_edge.i41.loopexit.unr-lcssa ]
  %lcmp.mod288 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod288)
  %i.dx = add nsw i64 %indvars.iv.i56.epil.init, %i.dp
  %i.dy = mul nsw i64 %i.dx, 3
  %i.dz = getelementptr inbounds i8, ptr %i.do, i64 %i.dy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dz, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %.epil.preheader285, %._crit_edge.i41.loopexit.unr-lcssa, %stbhw__draw_hline.exit
  br i1 %i.ad, label %.thread.i51, label %iter.check177

.thread.i51:                                      ; preds = %._crit_edge.i41
  %i.ea = sdiv i32 %i.d, 2                        ; 2 uses
  %i.eb = add nsw i32 %i.ea, -1
  %i.ec = and i32 %i.d, 1
  %spec.select.v.i52 = add nuw nsw i32 %i.ec, 1
  %spec.select.i53 = add nsw i32 %spec.select.v.i52, %i.ea
  br label %iter.check177

iter.check177:                                    ; preds = %._crit_edge.i41, %.thread.i51
  %.044.i43 = phi i32 [ %spec.select.i53, %.thread.i51 ], [ %i.m, %._crit_edge.i41 ]
  %.02643.i44 = phi i32 [ %i.eb, %.thread.i51 ], [ %i.k, %._crit_edge.i41 ]
  %i.ed = sext i32 %4 to i64                      ; 2 uses
  %i.ee = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 72), i64 %i.ed ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 2 ; 2 uses
  %i.eh = mul nsw i32 %i.dk, %2
  %i.ei = sext i32 %i.eh to i64                   ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %i.dj, i64 %i.ei ; 3 uses
  %i.ek = sext i32 %.02643.i44 to i64             ; 8 uses
  %i.el = sext i32 %i.dl to i64                   ; 13 uses
  %wide.trip.count38.i45 = sext i32 %.044.i43 to i64 ; 3 uses
  %i.em = sub nsw i64 %wide.trip.count38.i45, %i.ek ; 7 uses
  %min.iters.check159 = icmp ult i64 %i.em, 2
  br i1 %min.iters.check159, label %vec.epilog.scalar.ph178.preheader, label %vector.memcheck152

vector.memcheck152:                               ; preds = %iter.check177
  %i.en = add nsw i64 %i.ek, %i.el
  %i.eo = mul nsw i64 %i.en, 3
  %i.ep = getelementptr i8, ptr %i.dj, i64 %i.eo
  %scevgep153 = getelementptr i8, ptr %i.ep, i64 %i.ei
  %i.eq = add nsw i64 %wide.trip.count38.i45, %i.el
  %i.er = mul nsw i64 %i.eq, 3
  %i.es = getelementptr i8, ptr %i.dj, i64 %i.er
  %scevgep154 = getelementptr i8, ptr %i.es, i64 %i.ei
  %i.et = mul nsw i64 %i.ed, 3
  %i.eu = getelementptr i8, ptr @stbhw__color, i64 %i.et
  %scevgep155 = getelementptr i8, ptr %i.eu, i64 75
  %bound0156 = icmp ult ptr %scevgep153, %scevgep155
  %bound1157 = icmp ult ptr %i.ee, %scevgep154
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %vec.epilog.scalar.ph178.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %vector.memcheck152
  %min.iters.check161 = icmp ult i64 %i.em, 16
  br i1 %min.iters.check161, label %vec.epilog.ph181, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %i.ev = and i64 %i.em, 14
  %n.vec163 = and i64 %i.em, -16                  ; 4 uses
  %i.ew = add nsw i64 %n.vec163, %i.ek
  %i.ex = load i8, ptr %i.ee, align 1, !tbaa !62, !alias.scope !132
  %broadcast.splatinsert164 = insertelement <16 x i8> poison, i8 %i.ex, i64 0
  %broadcast.splat165 = shufflevector <16 x i8> %broadcast.splatinsert164, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ey = zext <16 x i8> %broadcast.splat165 to <16 x i16>
  %i.ez = shl nuw nsw <16 x i16> %i.ey, splat (i16 1)
  %i.fa = add nuw nsw <16 x i16> %i.ez, splat (i16 255)
  %i.fb = udiv <16 x i16> %i.fa, splat (i16 3)
  %i.fc = trunc nuw <16 x i16> %i.fb to <16 x i8>
  %i.fd = load i8, ptr %i.ef, align 1, !tbaa !62, !alias.scope !132
  %broadcast.splatinsert166 = insertelement <16 x i8> poison, i8 %i.fd, i64 0
  %broadcast.splat167 = shufflevector <16 x i8> %broadcast.splatinsert166, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fe = zext <16 x i8> %broadcast.splat167 to <16 x i16>
  %i.ff = shl nuw nsw <16 x i16> %i.fe, splat (i16 1)
  %i.fg = add nuw nsw <16 x i16> %i.ff, splat (i16 255)
  %i.fh = udiv <16 x i16> %i.fg, splat (i16 3)
  %i.fi = trunc nuw <16 x i16> %i.fh to <16 x i8>
  %i.fj = load i8, ptr %i.eg, align 1, !tbaa !62, !alias.scope !132
  %broadcast.splatinsert168 = insertelement <16 x i8> poison, i8 %i.fj, i64 0
  %broadcast.splat169 = shufflevector <16 x i8> %broadcast.splatinsert168, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fk = zext <16 x i8> %broadcast.splat169 to <16 x i16>
  %i.fl = shl nuw nsw <16 x i16> %i.fk, splat (i16 1)
  %i.fm = add nuw nsw <16 x i16> %i.fl, splat (i16 255)
  %i.fn = udiv <16 x i16> %i.fm, splat (i16 3)
  %invariant.op317 = add i64 %i.ek, %i.el
  %i.fo = shufflevector <16 x i8> %i.fc, <16 x i8> %i.fi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fp = shufflevector <16 x i16> %i.fn, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fq = trunc nuw <32 x i16> %i.fp to <32 x i8>
  %interleaved.vec172 = shufflevector <32 x i8> %i.fo, <32 x i8> %i.fq, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph162
  %index171 = phi i64 [ 0, %vector.ph162 ], [ %index.next173, %vector.body170 ] ; 2 uses
  %.reass318 = add i64 %index171, %invariant.op317
  %i.fr = mul nsw i64 %.reass318, 3
  %i.fs = getelementptr inbounds i8, ptr %i.ej, i64 %i.fr
  store <48 x i8> %interleaved.vec172, ptr %i.fs, align 1, !alias.scope !135, !noalias !132
  %index.next173 = add nuw i64 %index171, 16      ; 2 uses
  %i.ft = icmp eq i64 %index.next173, %n.vec163
  br i1 %i.ft, label %middle.block174, label %vector.body170, !llvm.loop !137

middle.block174:                                  ; preds = %vector.body170
  %cmp.n175 = icmp eq i64 %i.em, %n.vec163
  br i1 %cmp.n175, label %stbhw__draw_hline.exit59, label %vec.epilog.iter.check179

vec.epilog.iter.check179:                         ; preds = %middle.block174
  %min.epilog.iters.check180 = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check180, label %vec.epilog.scalar.ph178.preheader, label %vec.epilog.ph181, !prof !119

vec.epilog.ph181:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check179
  %vec.epilog.resume.val176 = phi i64 [ %n.vec163, %vec.epilog.iter.check179 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec182 = and i64 %i.em, -2                   ; 3 uses
  %i.fu = add nsw i64 %n.vec182, %i.ek
  %i.fv = load i8, ptr %i.ee, align 1, !tbaa !62, !alias.scope !132
  %broadcast.splatinsert183 = insertelement <2 x i8> poison, i8 %i.fv, i64 0
  %broadcast.splat184 = shufflevector <2 x i8> %broadcast.splatinsert183, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.fw = zext <2 x i8> %broadcast.splat184 to <2 x i16>
  %i.fx = load i8, ptr %i.ef, align 1, !tbaa !62, !alias.scope !132
  %broadcast.splatinsert185 = insertelement <2 x i8> poison, i8 %i.fx, i64 0
  %broadcast.splat186 = shufflevector <2 x i8> %broadcast.splatinsert185, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.fy = zext <2 x i8> %broadcast.splat186 to <2 x i16>
  %i.fz = load i8, ptr %i.eg, align 1, !tbaa !62, !alias.scope !132
  %broadcast.splatinsert187 = insertelement <2 x i8> poison, i8 %i.fz, i64 0
  %broadcast.splat188 = shufflevector <2 x i8> %broadcast.splatinsert187, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ga = zext <2 x i8> %broadcast.splat188 to <2 x i16>
  %i.gb = shl nuw nsw <2 x i16> %i.ga, splat (i16 1)
  %i.gc = add nuw nsw <2 x i16> %i.gb, splat (i16 255)
  %i.gd = udiv <2 x i16> %i.gc, splat (i16 3)
  %invariant.op319 = add i64 %i.ek, %i.el
  %i.ge = shufflevector <2 x i16> %i.fw, <2 x i16> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gf = shl nuw nsw <4 x i16> %i.ge, splat (i16 1)
  %i.gg = add nuw nsw <4 x i16> %i.gf, splat (i16 255)
  %i.gh = udiv <4 x i16> %i.gg, splat (i16 3)
  %i.gi = shufflevector <2 x i16> %i.gd, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x i16> %i.gh, <4 x i16> %i.gi, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec191 = trunc nuw <6 x i16> %i.gj to <6 x i8>
  br label %vec.epilog.vector.body189

vec.epilog.vector.body189:                        ; preds = %vec.epilog.vector.body189, %vec.epilog.ph181
  %index190 = phi i64 [ %vec.epilog.resume.val176, %vec.epilog.ph181 ], [ %index.next192, %vec.epilog.vector.body189 ] ; 2 uses
  %.reass320 = add i64 %index190, %invariant.op319
  %i.gk = mul nsw i64 %.reass320, 3
  %i.gl = getelementptr inbounds i8, ptr %i.ej, i64 %i.gk
  store <6 x i8> %interleaved.vec191, ptr %i.gl, align 1, !alias.scope !135, !noalias !132
  %index.next192 = add nuw i64 %index190, 2       ; 2 uses
  %i.gm = icmp eq i64 %index.next192, %n.vec182
  br i1 %i.gm, label %vec.epilog.middle.block193, label %vec.epilog.vector.body189, !llvm.loop !138

vec.epilog.middle.block193:                       ; preds = %vec.epilog.vector.body189
  %cmp.n194 = icmp eq i64 %i.em, %n.vec182
  br i1 %cmp.n194, label %stbhw__draw_hline.exit59, label %vec.epilog.scalar.ph178.preheader

vec.epilog.scalar.ph178.preheader:                ; preds = %vector.memcheck152, %iter.check177, %vec.epilog.iter.check179, %vec.epilog.middle.block193
  %indvars.iv35.i46.ph = phi i64 [ %i.ek, %iter.check177 ], [ %i.ek, %vector.memcheck152 ], [ %i.ew, %vec.epilog.iter.check179 ], [ %i.fu, %vec.epilog.middle.block193 ]
  br label %vec.epilog.scalar.ph178

vec.epilog.scalar.ph178:                          ; preds = %vec.epilog.scalar.ph178.preheader, %vec.epilog.scalar.ph178
  %indvars.iv35.i46 = phi i64 [ %indvars.iv.next36.i49, %vec.epilog.scalar.ph178 ], [ %indvars.iv35.i46.ph, %vec.epilog.scalar.ph178.preheader ] ; 2 uses
  %i.gn = add nsw i64 %indvars.iv35.i46, %i.el
  %i.go = load i8, ptr %i.ee, align 1, !tbaa !62
  %i.gp = zext i8 %i.go to i16
  %i.gq = shl nuw nsw i16 %i.gp, 1
  %i.gr = add nuw nsw i16 %i.gq, 255
  %i.gs = udiv i16 %i.gr, 3
  %i.gt = trunc nuw i16 %i.gs to i8
  %i.gu = load <2 x i8>, ptr %i.ef, align 1, !tbaa !62
  %i.gv = zext <2 x i8> %i.gu to <2 x i16>
  %i.gw = shl nuw nsw <2 x i16> %i.gv, splat (i16 1)
  %i.gx = add nuw nsw <2 x i16> %i.gw, splat (i16 255)
  %i.gy = udiv <2 x i16> %i.gx, splat (i16 3)     ; 2 uses
  %i.gz = bitcast <2 x i16> %i.gy to <4 x i8>
  %i.ha = extractelement <4 x i8> %i.gz, i64 0
  %i.hb = bitcast <2 x i16> %i.gy to <4 x i8>
  %i.hc = extractelement <4 x i8> %i.hb, i64 2
  %i.hd = mul nsw i64 %i.gn, 3
  %i.he = getelementptr inbounds i8, ptr %i.ej, i64 %i.hd ; 3 uses
  store i8 %i.gt, ptr %i.he, align 1
  %.sroa.4.0..sroa_idx.i.i47 = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store i8 %i.ha, ptr %.sroa.4.0..sroa_idx.i.i47, align 1
  %.sroa.5.0..sroa_idx.i.i48 = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  store i8 %i.hc, ptr %.sroa.5.0..sroa_idx.i.i48, align 1
  %indvars.iv.next36.i49 = add nsw i64 %indvars.iv35.i46, 1 ; 2 uses
  %exitcond39.not.i50 = icmp eq i64 %indvars.iv.next36.i49, %wide.trip.count38.i45
  br i1 %exitcond39.not.i50, label %stbhw__draw_hline.exit59, label %vec.epilog.scalar.ph178, !llvm.loop !139

stbhw__draw_hline.exit59:                         ; preds = %vec.epilog.scalar.ph178, %vec.epilog.middle.block193, %middle.block174
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.hg = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.hh = add i32 %2, 1                           ; 3 uses
  br i1 %i.n, label %.lr.ph.i67, label %._crit_edge.i60

.lr.ph.i67:                                       ; preds = %stbhw__draw_hline.exit59
  %i.hi = mul nsw i32 %1, 3
  %i.hj = sext i32 %i.hi to i64
  %invariant.gep.i = getelementptr i8, ptr %i.hf, i64 %i.hj ; 3 uses
  %i.hk = sext i32 %i.hh to i64                   ; 3 uses
  %i.hl = sext i32 %i.hg to i64                   ; 3 uses
  %wide.trip.count.i68 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter292 = and i64 %wide.trip.count.i68, 1
  %i.hm = icmp eq i32 %i.d, 1
  br i1 %i.hm, label %.epil.preheader291, label %.lr.ph.i67.new

.lr.ph.i67.new:                                   ; preds = %.lr.ph.i67
  %unroll_iter295 = and i64 %wide.trip.count.i68, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i67.new
  %indvars.iv.i69 = phi i64 [ 0, %.lr.ph.i67.new ], [ %indvars.iv.next.i70.1, %bb.d ] ; 3 uses
  %niter296 = phi i64 [ 0, %.lr.ph.i67.new ], [ %niter296.next.1, %bb.d ]
  %i.hn = add nsw i64 %indvars.iv.i69, %i.hk
  %i.ho = mul nsw i64 %i.hn, %i.hl
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ho
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i70 = or disjoint i64 %indvars.iv.i69, 1
  %i.hp = add nsw i64 %indvars.iv.next.i70, %i.hk
  %i.hq = mul nsw i64 %i.hp, %i.hl
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.hq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i70.1 = add nuw nsw i64 %indvars.iv.i69, 2 ; 2 uses
  %niter296.next.1 = add i64 %niter296, 2         ; 2 uses
  %niter296.ncmp.1 = icmp eq i64 %niter296.next.1, %unroll_iter295
  br i1 %niter296.ncmp.1, label %._crit_edge.i60.loopexit.unr-lcssa, label %bb.d, !llvm.loop !122

._crit_edge.i60.loopexit.unr-lcssa:               ; preds = %bb.d
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %._crit_edge.i60, label %.epil.preheader291

.epil.preheader291:                               ; preds = %._crit_edge.i60.loopexit.unr-lcssa, %.lr.ph.i67
  %indvars.iv.i69.epil.init = phi i64 [ 0, %.lr.ph.i67 ], [ %indvars.iv.next.i70.1, %._crit_edge.i60.loopexit.unr-lcssa ]
  %lcmp.mod294 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.hr = add nsw i64 %indvars.iv.i69.epil.init, %i.hk
  %i.hs = mul nsw i64 %i.hr, %i.hl
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %i.hs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i60

._crit_edge.i60:                                  ; preds = %.epil.preheader291, %._crit_edge.i60.loopexit.unr-lcssa, %stbhw__draw_hline.exit59
  br i1 %i.ad, label %.thread.i64, label %.lr.ph32.i61

.thread.i64:                                      ; preds = %._crit_edge.i60
  %i.ht = sdiv i32 %i.d, 2                        ; 2 uses
  %i.hu = add nsw i32 %i.ht, -1
  %i.hv = and i32 %i.d, 1
  %spec.select.v.i65 = add nuw nsw i32 %i.hv, 1
  %spec.select.i66 = add nsw i32 %spec.select.v.i65, %i.ht
  br label %.lr.ph32.i61

.lr.ph32.i61:                                     ; preds = %._crit_edge.i60, %.thread.i64
  %.046.i = phi i32 [ %spec.select.i66, %.thread.i64 ], [ %i.m, %._crit_edge.i60 ]
  %.02645.i = phi i32 [ %i.hu, %.thread.i64 ], [ %i.k, %._crit_edge.i60 ]
  %i.hw = sext i32 %5 to i64
  %i.hx = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 24), i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = mul nsw i32 %1, 3
  %i.ia = sext i32 %i.hz to i64
  %invariant.gep34.i = getelementptr i8, ptr %i.hf, i64 %i.ia
  %i.ib = sext i32 %.02645.i to i64
  %i.ic = sext i32 %i.hh to i64                   ; 5 uses
  %i.id = sext i32 %i.hg to i64
  %wide.trip.count40.i = sext i32 %.046.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph32.i61
  %indvars.iv37.i = phi i64 [ %i.ib, %.lr.ph32.i61 ], [ %indvars.iv.next38.i, %bb.e ] ; 2 uses
  %i.ie = add nsw i64 %indvars.iv37.i, %i.ic
  %i.if = load i8, ptr %i.hx, align 1, !tbaa !62
  %i.ig = zext i8 %i.if to i16
  %i.ih = shl nuw nsw i16 %i.ig, 1
  %i.ii = add nuw nsw i16 %i.ih, 255
  %i.ij = udiv i16 %i.ii, 3
  %i.ik = trunc nuw i16 %i.ij to i8
  %i.il = load <2 x i8>, ptr %i.hy, align 1, !tbaa !62
  %i.im = zext <2 x i8> %i.il to <2 x i16>
  %i.in = shl nuw nsw <2 x i16> %i.im, splat (i16 1)
  %i.io = add nuw nsw <2 x i16> %i.in, splat (i16 255)
  %i.ip = udiv <2 x i16> %i.io, splat (i16 3)     ; 2 uses
  %i.iq = bitcast <2 x i16> %i.ip to <4 x i8>
  %i.ir = extractelement <4 x i8> %i.iq, i64 0
  %i.is = bitcast <2 x i16> %i.ip to <4 x i8>
  %i.it = extractelement <4 x i8> %i.is, i64 2
  %i.iu = mul nsw i64 %i.ie, %i.id
  %gep35.i = getelementptr i8, ptr %invariant.gep34.i, i64 %i.iu ; 3 uses
  store i8 %i.ik, ptr %gep35.i, align 1
  %.sroa.4.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 1
  store i8 %i.ir, ptr %.sroa.4.0..sroa_idx.i.i62, align 1
  %.sroa.5.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 2
  store i8 %i.it, ptr %.sroa.5.0..sroa_idx.i.i63, align 1
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count40.i
  br i1 %exitcond41.not.i, label %stbhw__draw_vline.exit, label %bb.e, !llvm.loop !123

stbhw__draw_vline.exit:                           ; preds = %bb.e
  %i.iv = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.iw = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.ix = shl nsw i32 %i.d, 1
  %i.iy = add i32 %i.i, %i.ix                     ; 2 uses
  br i1 %i.n, label %.lr.ph.i87, label %._crit_edge.i72

.lr.ph.i87:                                       ; preds = %stbhw__draw_vline.exit
  %i.iz = mul nsw i32 %i.iy, 3
  %i.ja = sext i32 %i.iz to i64
  %invariant.gep.i88 = getelementptr i8, ptr %i.iv, i64 %i.ja ; 3 uses
  %i.jb = sext i32 %i.iw to i64                   ; 3 uses
  %wide.trip.count.i89 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter298 = and i64 %wide.trip.count.i89, 1
  %i.jc = icmp eq i32 %i.d, 1
  br i1 %i.jc, label %.epil.preheader297, label %.lr.ph.i87.new

.lr.ph.i87.new:                                   ; preds = %.lr.ph.i87
  %unroll_iter301 = and i64 %wide.trip.count.i89, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i87.new
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph.i87.new ], [ %indvars.iv.next.i92.1, %bb.f ] ; 3 uses
  %niter302 = phi i64 [ 0, %.lr.ph.i87.new ], [ %niter302.next.1, %bb.f ]
  %i.jd = add nsw i64 %indvars.iv.i90, %i.ic
  %i.je = mul nsw i64 %i.jd, %i.jb
  %gep.i91 = getelementptr i8, ptr %invariant.gep.i88, i64 %i.je
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i91, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i92 = or disjoint i64 %indvars.iv.i90, 1
  %i.jf = add nsw i64 %indvars.iv.next.i92, %i.ic
  %i.jg = mul nsw i64 %i.jf, %i.jb
  %gep.i91.1 = getelementptr i8, ptr %invariant.gep.i88, i64 %i.jg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i91.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i92.1 = add nuw nsw i64 %indvars.iv.i90, 2 ; 2 uses
  %niter302.next.1 = add i64 %niter302, 2         ; 2 uses
  %niter302.ncmp.1 = icmp eq i64 %niter302.next.1, %unroll_iter301
  br i1 %niter302.ncmp.1, label %._crit_edge.i72.loopexit.unr-lcssa, label %bb.f, !llvm.loop !122

._crit_edge.i72.loopexit.unr-lcssa:               ; preds = %bb.f
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %._crit_edge.i72, label %.epil.preheader297

.epil.preheader297:                               ; preds = %._crit_edge.i72.loopexit.unr-lcssa, %.lr.ph.i87
  %indvars.iv.i90.epil.init = phi i64 [ 0, %.lr.ph.i87 ], [ %indvars.iv.next.i92.1, %._crit_edge.i72.loopexit.unr-lcssa ]
  %lcmp.mod300 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod300)
  %i.jh = add nsw i64 %indvars.iv.i90.epil.init, %i.ic
  %i.ji = mul nsw i64 %i.jh, %i.jb
  %gep.i91.epil = getelementptr i8, ptr %invariant.gep.i88, i64 %i.ji
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i91.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i72

._crit_edge.i72:                                  ; preds = %.epil.preheader297, %._crit_edge.i72.loopexit.unr-lcssa, %stbhw__draw_vline.exit
  br i1 %i.ad, label %.thread.i84, label %.lr.ph32.i73

.thread.i84:                                      ; preds = %._crit_edge.i72
  %i.jj = sdiv i32 %i.d, 2                        ; 2 uses
  %i.jk = add nsw i32 %i.jj, -1
  %i.jl = and i32 %i.d, 1
  %spec.select.v.i85 = add nuw nsw i32 %i.jl, 1
  %spec.select.i86 = add nsw i32 %spec.select.v.i85, %i.jj
  br label %.lr.ph32.i73

.lr.ph32.i73:                                     ; preds = %._crit_edge.i72, %.thread.i84
  %.046.i74 = phi i32 [ %spec.select.i86, %.thread.i84 ], [ %i.m, %._crit_edge.i72 ]
  %.02645.i75 = phi i32 [ %i.jk, %.thread.i84 ], [ %i.k, %._crit_edge.i72 ]
  %i.jm = sext i32 %6 to i64
  %i.jn = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 96), i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = mul nsw i32 %i.iy, 3
  %i.jq = sext i32 %i.jp to i64
  %invariant.gep34.i76 = getelementptr i8, ptr %i.iv, i64 %i.jq
  %i.jr = sext i32 %.02645.i75 to i64
  %i.js = sext i32 %i.iw to i64
  %wide.trip.count40.i77 = sext i32 %.046.i74 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph32.i73
  %indvars.iv37.i78 = phi i64 [ %i.jr, %.lr.ph32.i73 ], [ %indvars.iv.next38.i82, %bb.g ] ; 2 uses
  %i.jt = add nsw i64 %indvars.iv37.i78, %i.ic
  %i.ju = load i8, ptr %i.jn, align 1, !tbaa !62
  %i.jv = zext i8 %i.ju to i16
  %i.jw = shl nuw nsw i16 %i.jv, 1
  %i.jx = add nuw nsw i16 %i.jw, 255
  %i.jy = udiv i16 %i.jx, 3
  %i.jz = trunc nuw i16 %i.jy to i8
  %i.ka = load <2 x i8>, ptr %i.jo, align 1, !tbaa !62
  %i.kb = zext <2 x i8> %i.ka to <2 x i16>
  %i.kc = shl nuw nsw <2 x i16> %i.kb, splat (i16 1)
  %i.kd = add nuw nsw <2 x i16> %i.kc, splat (i16 255)
  %i.ke = udiv <2 x i16> %i.kd, splat (i16 3)     ; 2 uses
  %i.kf = bitcast <2 x i16> %i.ke to <4 x i8>
  %i.kg = extractelement <4 x i8> %i.kf, i64 0
  %i.kh = bitcast <2 x i16> %i.ke to <4 x i8>
  %i.ki = extractelement <4 x i8> %i.kh, i64 2
  %i.kj = mul nsw i64 %i.jt, %i.js
  %gep35.i79 = getelementptr i8, ptr %invariant.gep34.i76, i64 %i.kj ; 3 uses
  store i8 %i.jz, ptr %gep35.i79, align 1
  %.sroa.4.0..sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %gep35.i79, i64 1
  store i8 %i.kg, ptr %.sroa.4.0..sroa_idx.i.i80, align 1
  %.sroa.5.0..sroa_idx.i.i81 = getelementptr inbounds nuw i8, ptr %gep35.i79, i64 2
  store i8 %i.ki, ptr %.sroa.5.0..sroa_idx.i.i81, align 1
  %indvars.iv.next38.i82 = add nsw i64 %indvars.iv37.i78, 1 ; 2 uses
  %exitcond41.not.i83 = icmp eq i64 %indvars.iv.next38.i82, %wide.trip.count40.i77
  br i1 %exitcond41.not.i83, label %stbhw__draw_vline.exit94, label %bb.g, !llvm.loop !123

stbhw__draw_vline.exit94:                         ; preds = %bb.g
  %i.kk = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.kl = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.km = add i32 %i.hh, %i.d                     ; 4 uses
  br i1 %i.n, label %.lr.ph.i108, label %._crit_edge.i95

.lr.ph.i108:                                      ; preds = %stbhw__draw_vline.exit94
  %i.kn = mul nsw i32 %i.kl, %i.km
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds i8, ptr %i.kk, i64 %i.ko ; 3 uses
  %wide.trip.count.i109 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter304 = and i64 %wide.trip.count.i109, 1
  %i.kq = icmp eq i32 %i.d, 1
  br i1 %i.kq, label %.epil.preheader303, label %.lr.ph.i108.new

.lr.ph.i108.new:                                  ; preds = %.lr.ph.i108
  %unroll_iter307 = and i64 %wide.trip.count.i109, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i108.new
  %indvars.iv.i110 = phi i64 [ 0, %.lr.ph.i108.new ], [ %indvars.iv.next.i111.1, %bb.h ] ; 3 uses
  %niter308 = phi i64 [ 0, %.lr.ph.i108.new ], [ %niter308.next.1, %bb.h ]
  %i.kr = add nsw i64 %indvars.iv.i110, %i.ap
  %i.ks = mul nsw i64 %i.kr, 3
  %i.kt = getelementptr inbounds i8, ptr %i.kp, i64 %i.ks
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kt, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i111 = or disjoint i64 %indvars.iv.i110, 1
  %i.ku = add nsw i64 %indvars.iv.next.i111, %i.ap
  %i.kv = mul nsw i64 %i.ku, 3
  %i.kw = getelementptr inbounds i8, ptr %i.kp, i64 %i.kv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kw, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i111.1 = add nuw nsw i64 %indvars.iv.i110, 2 ; 2 uses
  %niter308.next.1 = add i64 %niter308, 2         ; 2 uses
  %niter308.ncmp.1 = icmp eq i64 %niter308.next.1, %unroll_iter307
  br i1 %niter308.ncmp.1, label %._crit_edge.i95.loopexit.unr-lcssa, label %bb.h, !llvm.loop !112

._crit_edge.i95.loopexit.unr-lcssa:               ; preds = %bb.h
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %._crit_edge.i95, label %.epil.preheader303

.epil.preheader303:                               ; preds = %._crit_edge.i95.loopexit.unr-lcssa, %.lr.ph.i108
  %indvars.iv.i110.epil.init = phi i64 [ 0, %.lr.ph.i108 ], [ %indvars.iv.next.i111.1, %._crit_edge.i95.loopexit.unr-lcssa ]
  %lcmp.mod306 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod306)
  %i.kx = add nsw i64 %indvars.iv.i110.epil.init, %i.ap
  %i.ky = mul nsw i64 %i.kx, 3
  %i.kz = getelementptr inbounds i8, ptr %i.kp, i64 %i.ky
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kz, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i95

._crit_edge.i95:                                  ; preds = %.epil.preheader303, %._crit_edge.i95.loopexit.unr-lcssa, %stbhw__draw_vline.exit94
  br i1 %i.ad, label %.thread.i105, label %iter.check221

.thread.i105:                                     ; preds = %._crit_edge.i95
  %i.la = sdiv i32 %i.d, 2                        ; 2 uses
  %i.lb = add nsw i32 %i.la, -1
  %i.lc = and i32 %i.d, 1
  %spec.select.v.i106 = add nuw nsw i32 %i.lc, 1
  %spec.select.i107 = add nsw i32 %spec.select.v.i106, %i.la
  br label %iter.check221

iter.check221:                                    ; preds = %._crit_edge.i95, %.thread.i105
  %.044.i97 = phi i32 [ %spec.select.i107, %.thread.i105 ], [ %i.m, %._crit_edge.i95 ]
  %.02643.i98 = phi i32 [ %i.lb, %.thread.i105 ], [ %i.k, %._crit_edge.i95 ]
  %i.ld = sext i32 %7 to i64                      ; 2 uses
  %i.le = getelementptr inbounds [3 x i8], ptr @stbhw__color, i64 %i.ld ; 6 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 1 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 2 ; 2 uses
  %i.lh = mul nsw i32 %i.kl, %i.km
  %i.li = sext i32 %i.lh to i64                   ; 3 uses
  %i.lj = getelementptr inbounds i8, ptr %i.kk, i64 %i.li ; 3 uses
  %i.lk = sext i32 %.02643.i98 to i64             ; 8 uses
  %wide.trip.count38.i99 = sext i32 %.044.i97 to i64 ; 3 uses
  %i.ll = sub nsw i64 %wide.trip.count38.i99, %i.lk ; 7 uses
  %min.iters.check203 = icmp ult i64 %i.ll, 2
  br i1 %min.iters.check203, label %vec.epilog.scalar.ph222.preheader, label %vector.memcheck196

vector.memcheck196:                               ; preds = %iter.check221
  %i.lm = add nsw i64 %i.lk, %i.ap
  %i.ln = mul nsw i64 %i.lm, 3
  %i.lo = getelementptr i8, ptr %i.kk, i64 %i.ln
  %scevgep197 = getelementptr i8, ptr %i.lo, i64 %i.li
  %i.lp = add nsw i64 %wide.trip.count38.i99, %i.ap
  %i.lq = mul nsw i64 %i.lp, 3
  %i.lr = getelementptr i8, ptr %i.kk, i64 %i.lq
  %scevgep198 = getelementptr i8, ptr %i.lr, i64 %i.li
  %i.ls = mul nsw i64 %i.ld, 3
  %i.lt = getelementptr i8, ptr @stbhw__color, i64 %i.ls
  %scevgep199 = getelementptr i8, ptr %i.lt, i64 3
  %bound0200 = icmp ult ptr %scevgep197, %scevgep199
  %bound1201 = icmp ult ptr %i.le, %scevgep198
  %found.conflict202 = and i1 %bound0200, %bound1201
  br i1 %found.conflict202, label %vec.epilog.scalar.ph222.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %vector.memcheck196
  %min.iters.check205 = icmp ult i64 %i.ll, 16
  br i1 %min.iters.check205, label %vec.epilog.ph225, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %i.lu = and i64 %i.ll, 14
  %n.vec207 = and i64 %i.ll, -16                  ; 4 uses
  %i.lv = add nsw i64 %n.vec207, %i.lk
  %i.lw = load i8, ptr %i.le, align 1, !tbaa !62, !alias.scope !140
  %broadcast.splatinsert208 = insertelement <16 x i8> poison, i8 %i.lw, i64 0
  %broadcast.splat209 = shufflevector <16 x i8> %broadcast.splatinsert208, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lx = zext <16 x i8> %broadcast.splat209 to <16 x i16>
  %i.ly = shl nuw nsw <16 x i16> %i.lx, splat (i16 1)
  %i.lz = add nuw nsw <16 x i16> %i.ly, splat (i16 255)
  %i.ma = udiv <16 x i16> %i.lz, splat (i16 3)
  %i.mb = trunc nuw <16 x i16> %i.ma to <16 x i8>
  %i.mc = load i8, ptr %i.lf, align 1, !tbaa !62, !alias.scope !140
  %broadcast.splatinsert210 = insertelement <16 x i8> poison, i8 %i.mc, i64 0
  %broadcast.splat211 = shufflevector <16 x i8> %broadcast.splatinsert210, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.md = zext <16 x i8> %broadcast.splat211 to <16 x i16>
  %i.me = shl nuw nsw <16 x i16> %i.md, splat (i16 1)
  %i.mf = add nuw nsw <16 x i16> %i.me, splat (i16 255)
  %i.mg = udiv <16 x i16> %i.mf, splat (i16 3)
  %i.mh = trunc nuw <16 x i16> %i.mg to <16 x i8>
  %i.mi = load i8, ptr %i.lg, align 1, !tbaa !62, !alias.scope !140
  %broadcast.splatinsert212 = insertelement <16 x i8> poison, i8 %i.mi, i64 0
  %broadcast.splat213 = shufflevector <16 x i8> %broadcast.splatinsert212, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mj = zext <16 x i8> %broadcast.splat213 to <16 x i16>
  %i.mk = shl nuw nsw <16 x i16> %i.mj, splat (i16 1)
  %i.ml = add nuw nsw <16 x i16> %i.mk, splat (i16 255)
  %i.mm = udiv <16 x i16> %i.ml, splat (i16 3)
  %invariant.op321 = add i64 %i.lk, %i.ap
  %i.mn = shufflevector <16 x i8> %i.mb, <16 x i8> %i.mh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mo = shufflevector <16 x i16> %i.mm, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mp = trunc nuw <32 x i16> %i.mo to <32 x i8>
  %interleaved.vec216 = shufflevector <32 x i8> %i.mn, <32 x i8> %i.mp, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph206
  %index215 = phi i64 [ 0, %vector.ph206 ], [ %index.next217, %vector.body214 ] ; 2 uses
  %.reass322 = add i64 %index215, %invariant.op321
  %i.mq = mul nsw i64 %.reass322, 3
  %i.mr = getelementptr inbounds i8, ptr %i.lj, i64 %i.mq
  store <48 x i8> %interleaved.vec216, ptr %i.mr, align 1, !alias.scope !143, !noalias !140
  %index.next217 = add nuw i64 %index215, 16      ; 2 uses
  %i.ms = icmp eq i64 %index.next217, %n.vec207
  br i1 %i.ms, label %middle.block218, label %vector.body214, !llvm.loop !145

middle.block218:                                  ; preds = %vector.body214
  %cmp.n219 = icmp eq i64 %i.ll, %n.vec207
  br i1 %cmp.n219, label %stbhw__draw_hline.exit113, label %vec.epilog.iter.check223

vec.epilog.iter.check223:                         ; preds = %middle.block218
  %min.epilog.iters.check224 = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check224, label %vec.epilog.scalar.ph222.preheader, label %vec.epilog.ph225, !prof !119

vec.epilog.ph225:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check223
  %vec.epilog.resume.val220 = phi i64 [ %n.vec207, %vec.epilog.iter.check223 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec226 = and i64 %i.ll, -2                   ; 3 uses
  %i.mt = add nsw i64 %n.vec226, %i.lk
  %i.mu = load i8, ptr %i.le, align 1, !tbaa !62, !alias.scope !140
  %broadcast.splatinsert227 = insertelement <2 x i8> poison, i8 %i.mu, i64 0
  %broadcast.splat228 = shufflevector <2 x i8> %broadcast.splatinsert227, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mv = zext <2 x i8> %broadcast.splat228 to <2 x i16>
  %i.mw = load i8, ptr %i.lf, align 1, !tbaa !62, !alias.scope !140
  %broadcast.splatinsert229 = insertelement <2 x i8> poison, i8 %i.mw, i64 0
  %broadcast.splat230 = shufflevector <2 x i8> %broadcast.splatinsert229, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mx = zext <2 x i8> %broadcast.splat230 to <2 x i16>
  %i.my = load i8, ptr %i.lg, align 1, !tbaa !62, !alias.scope !140
  %broadcast.splatinsert231 = insertelement <2 x i8> poison, i8 %i.my, i64 0
  %broadcast.splat232 = shufflevector <2 x i8> %broadcast.splatinsert231, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mz = zext <2 x i8> %broadcast.splat232 to <2 x i16>
  %i.na = shl nuw nsw <2 x i16> %i.mz, splat (i16 1)
  %i.nb = add nuw nsw <2 x i16> %i.na, splat (i16 255)
  %i.nc = udiv <2 x i16> %i.nb, splat (i16 3)
  %invariant.op323 = add i64 %i.lk, %i.ap
  %i.nd = shufflevector <2 x i16> %i.mv, <2 x i16> %i.mx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ne = shl nuw nsw <4 x i16> %i.nd, splat (i16 1)
  %i.nf = add nuw nsw <4 x i16> %i.ne, splat (i16 255)
  %i.ng = udiv <4 x i16> %i.nf, splat (i16 3)
  %i.nh = shufflevector <2 x i16> %i.nc, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x i16> %i.ng, <4 x i16> %i.nh, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec235 = trunc nuw <6 x i16> %i.ni to <6 x i8>
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph225
  %index234 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph225 ], [ %index.next236, %vec.epilog.vector.body233 ] ; 2 uses
  %.reass324 = add i64 %index234, %invariant.op323
  %i.nj = mul nsw i64 %.reass324, 3
  %i.nk = getelementptr inbounds i8, ptr %i.lj, i64 %i.nj
  store <6 x i8> %interleaved.vec235, ptr %i.nk, align 1, !alias.scope !143, !noalias !140
  %index.next236 = add nuw i64 %index234, 2       ; 2 uses
  %i.nl = icmp eq i64 %index.next236, %n.vec226
  br i1 %i.nl, label %vec.epilog.middle.block237, label %vec.epilog.vector.body233, !llvm.loop !146

vec.epilog.middle.block237:                       ; preds = %vec.epilog.vector.body233
  %cmp.n238 = icmp eq i64 %i.ll, %n.vec226
  br i1 %cmp.n238, label %stbhw__draw_hline.exit113, label %vec.epilog.scalar.ph222.preheader

vec.epilog.scalar.ph222.preheader:                ; preds = %vector.memcheck196, %iter.check221, %vec.epilog.iter.check223, %vec.epilog.middle.block237
  %indvars.iv35.i100.ph = phi i64 [ %i.lk, %iter.check221 ], [ %i.lk, %vector.memcheck196 ], [ %i.lv, %vec.epilog.iter.check223 ], [ %i.mt, %vec.epilog.middle.block237 ]
  br label %vec.epilog.scalar.ph222

vec.epilog.scalar.ph222:                          ; preds = %vec.epilog.scalar.ph222.preheader, %vec.epilog.scalar.ph222
  %indvars.iv35.i100 = phi i64 [ %indvars.iv.next36.i103, %vec.epilog.scalar.ph222 ], [ %indvars.iv35.i100.ph, %vec.epilog.scalar.ph222.preheader ] ; 2 uses
  %i.nm = add nsw i64 %indvars.iv35.i100, %i.ap
  %i.nn = load i8, ptr %i.le, align 1, !tbaa !62
  %i.no = zext i8 %i.nn to i16
  %i.np = shl nuw nsw i16 %i.no, 1
  %i.nq = add nuw nsw i16 %i.np, 255
  %i.nr = udiv i16 %i.nq, 3
  %i.ns = trunc nuw i16 %i.nr to i8
  %i.nt = load <2 x i8>, ptr %i.lf, align 1, !tbaa !62
  %i.nu = zext <2 x i8> %i.nt to <2 x i16>
  %i.nv = shl nuw nsw <2 x i16> %i.nu, splat (i16 1)
  %i.nw = add nuw nsw <2 x i16> %i.nv, splat (i16 255)
  %i.nx = udiv <2 x i16> %i.nw, splat (i16 3)     ; 2 uses
  %i.ny = bitcast <2 x i16> %i.nx to <4 x i8>
  %i.nz = extractelement <4 x i8> %i.ny, i64 0
  %i.oa = bitcast <2 x i16> %i.nx to <4 x i8>
  %i.ob = extractelement <4 x i8> %i.oa, i64 2
  %i.oc = mul nsw i64 %i.nm, 3
  %i.od = getelementptr inbounds i8, ptr %i.lj, i64 %i.oc ; 3 uses
  store i8 %i.ns, ptr %i.od, align 1
  %.sroa.4.0..sroa_idx.i.i101 = getelementptr inbounds nuw i8, ptr %i.od, i64 1
  store i8 %i.nz, ptr %.sroa.4.0..sroa_idx.i.i101, align 1
  %.sroa.5.0..sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  store i8 %i.ob, ptr %.sroa.5.0..sroa_idx.i.i102, align 1
  %indvars.iv.next36.i103 = add nsw i64 %indvars.iv35.i100, 1 ; 2 uses
  %exitcond39.not.i104 = icmp eq i64 %indvars.iv.next36.i103, %wide.trip.count38.i99
  br i1 %exitcond39.not.i104, label %stbhw__draw_hline.exit113, label %vec.epilog.scalar.ph222, !llvm.loop !147

stbhw__draw_hline.exit113:                        ; preds = %vec.epilog.scalar.ph222, %vec.epilog.middle.block237, %middle.block218
  %i.oe = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.of = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  br i1 %i.n, label %.lr.ph.i127, label %._crit_edge.i114

.lr.ph.i127:                                      ; preds = %stbhw__draw_hline.exit113
  %i.og = mul nsw i32 %i.of, %i.km
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds i8, ptr %i.oe, i64 %i.oh ; 3 uses
  %wide.trip.count.i128 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter310 = and i64 %wide.trip.count.i128, 1
  %i.oj = icmp eq i32 %i.d, 1
  br i1 %i.oj, label %.epil.preheader309, label %.lr.ph.i127.new

.lr.ph.i127.new:                                  ; preds = %.lr.ph.i127
  %unroll_iter313 = and i64 %wide.trip.count.i128, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i127.new
  %indvars.iv.i129 = phi i64 [ 0, %.lr.ph.i127.new ], [ %indvars.iv.next.i130.1, %bb.i ] ; 3 uses
  %niter314 = phi i64 [ 0, %.lr.ph.i127.new ], [ %niter314.next.1, %bb.i ]
  %i.ok = add nsw i64 %indvars.iv.i129, %i.el
  %i.ol = mul nsw i64 %i.ok, 3
  %i.om = getelementptr inbounds i8, ptr %i.oi, i64 %i.ol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.om, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i130 = or disjoint i64 %indvars.iv.i129, 1
  %i.on = add nsw i64 %indvars.iv.next.i130, %i.el
  %i.oo = mul nsw i64 %i.on, 3
  %i.op = getelementptr inbounds i8, ptr %i.oi, i64 %i.oo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.op, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i130.1 = add nuw nsw i64 %indvars.iv.i129, 2 ; 2 uses
  %niter314.next.1 = add i64 %niter314, 2         ; 2 uses
  %niter314.ncmp.1 = icmp eq i64 %niter314.next.1, %unroll_iter313
  br i1 %niter314.ncmp.1, label %._crit_edge.i114.loopexit.unr-lcssa, label %bb.i, !llvm.loop !112

._crit_edge.i114.loopexit.unr-lcssa:              ; preds = %bb.i
  %lcmp.mod311.not = icmp eq i64 %xtraiter310, 0
  br i1 %lcmp.mod311.not, label %._crit_edge.i114, label %.epil.preheader309

.epil.preheader309:                               ; preds = %._crit_edge.i114.loopexit.unr-lcssa, %.lr.ph.i127
  %indvars.iv.i129.epil.init = phi i64 [ 0, %.lr.ph.i127 ], [ %indvars.iv.next.i130.1, %._crit_edge.i114.loopexit.unr-lcssa ]
  %lcmp.mod312 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod312)
  %i.oq = add nsw i64 %indvars.iv.i129.epil.init, %i.el
  %i.or = mul nsw i64 %i.oq, 3
  %i.os = getelementptr inbounds i8, ptr %i.oi, i64 %i.or
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.os, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i114

._crit_edge.i114:                                 ; preds = %.epil.preheader309, %._crit_edge.i114.loopexit.unr-lcssa, %stbhw__draw_hline.exit113
  br i1 %i.ad, label %.thread.i124, label %iter.check265

.thread.i124:                                     ; preds = %._crit_edge.i114
  %i.ot = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ou = add nsw i32 %i.ot, -1
  %i.ov = and i32 %i.d, 1
  %spec.select.v.i125 = add nuw nsw i32 %i.ov, 1
  %spec.select.i126 = add nsw i32 %spec.select.v.i125, %i.ot
  br label %iter.check265

iter.check265:                                    ; preds = %._crit_edge.i114, %.thread.i124
  %.044.i116 = phi i32 [ %spec.select.i126, %.thread.i124 ], [ %i.m, %._crit_edge.i114 ]
  %.02643.i117 = phi i32 [ %i.ou, %.thread.i124 ], [ %i.k, %._crit_edge.i114 ]
  %i.ow = sext i32 %8 to i64                      ; 2 uses
  %i.ox = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 48), i64 %i.ow ; 6 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 1 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 2 ; 2 uses
  %i.pa = mul nsw i32 %i.of, %i.km
  %i.pb = sext i32 %i.pa to i64                   ; 3 uses
  %i.pc = getelementptr inbounds i8, ptr %i.oe, i64 %i.pb ; 3 uses
  %i.pd = sext i32 %.02643.i117 to i64            ; 8 uses
  %wide.trip.count38.i118 = sext i32 %.044.i116 to i64 ; 3 uses
  %i.pe = sub nsw i64 %wide.trip.count38.i118, %i.pd ; 7 uses
  %min.iters.check247 = icmp ult i64 %i.pe, 2
  br i1 %min.iters.check247, label %vec.epilog.scalar.ph266.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %iter.check265
  %i.pf = add nsw i64 %i.pd, %i.el
  %i.pg = mul nsw i64 %i.pf, 3
  %i.ph = getelementptr i8, ptr %i.oe, i64 %i.pg
  %scevgep241 = getelementptr i8, ptr %i.ph, i64 %i.pb
  %i.pi = add nsw i64 %wide.trip.count38.i118, %i.el
  %i.pj = mul nsw i64 %i.pi, 3
  %i.pk = getelementptr i8, ptr %i.oe, i64 %i.pj
  %scevgep242 = getelementptr i8, ptr %i.pk, i64 %i.pb
  %i.pl = mul nsw i64 %i.ow, 3
  %i.pm = getelementptr i8, ptr @stbhw__color, i64 %i.pl
  %scevgep243 = getelementptr i8, ptr %i.pm, i64 51
  %bound0244 = icmp ult ptr %scevgep241, %scevgep243
  %bound1245 = icmp ult ptr %i.ox, %scevgep242
  %found.conflict246 = and i1 %bound0244, %bound1245
  br i1 %found.conflict246, label %vec.epilog.scalar.ph266.preheader, label %vector.main.loop.iter.check248

vector.main.loop.iter.check248:                   ; preds = %vector.memcheck240
  %min.iters.check249 = icmp ult i64 %i.pe, 16
  br i1 %min.iters.check249, label %vec.epilog.ph269, label %vector.ph250

vector.ph250:                                     ; preds = %vector.main.loop.iter.check248
  %i.pn = and i64 %i.pe, 14
  %n.vec251 = and i64 %i.pe, -16                  ; 4 uses
  %i.po = add nsw i64 %n.vec251, %i.pd
  %i.pp = load i8, ptr %i.ox, align 1, !tbaa !62, !alias.scope !148
  %broadcast.splatinsert252 = insertelement <16 x i8> poison, i8 %i.pp, i64 0
  %broadcast.splat253 = shufflevector <16 x i8> %broadcast.splatinsert252, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.pq = zext <16 x i8> %broadcast.splat253 to <16 x i16>
  %i.pr = shl nuw nsw <16 x i16> %i.pq, splat (i16 1)
  %i.ps = add nuw nsw <16 x i16> %i.pr, splat (i16 255)
  %i.pt = udiv <16 x i16> %i.ps, splat (i16 3)
  %i.pu = trunc nuw <16 x i16> %i.pt to <16 x i8>
  %i.pv = load i8, ptr %i.oy, align 1, !tbaa !62, !alias.scope !148
  %broadcast.splatinsert254 = insertelement <16 x i8> poison, i8 %i.pv, i64 0
  %broadcast.splat255 = shufflevector <16 x i8> %broadcast.splatinsert254, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.pw = zext <16 x i8> %broadcast.splat255 to <16 x i16>
  %i.px = shl nuw nsw <16 x i16> %i.pw, splat (i16 1)
  %i.py = add nuw nsw <16 x i16> %i.px, splat (i16 255)
  %i.pz = udiv <16 x i16> %i.py, splat (i16 3)
  %i.qa = trunc nuw <16 x i16> %i.pz to <16 x i8>
  %i.qb = load i8, ptr %i.oz, align 1, !tbaa !62, !alias.scope !148
  %broadcast.splatinsert256 = insertelement <16 x i8> poison, i8 %i.qb, i64 0
  %broadcast.splat257 = shufflevector <16 x i8> %broadcast.splatinsert256, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qc = zext <16 x i8> %broadcast.splat257 to <16 x i16>
  %i.qd = shl nuw nsw <16 x i16> %i.qc, splat (i16 1)
  %i.qe = add nuw nsw <16 x i16> %i.qd, splat (i16 255)
  %i.qf = udiv <16 x i16> %i.qe, splat (i16 3)
  %invariant.op325 = add i64 %i.pd, %i.el
  %i.qg = shufflevector <16 x i8> %i.pu, <16 x i8> %i.qa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qh = shufflevector <16 x i16> %i.qf, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qi = trunc nuw <32 x i16> %i.qh to <32 x i8>
  %interleaved.vec260 = shufflevector <32 x i8> %i.qg, <32 x i8> %i.qi, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph250
  %index259 = phi i64 [ 0, %vector.ph250 ], [ %index.next261, %vector.body258 ] ; 2 uses
  %.reass326 = add i64 %index259, %invariant.op325
  %i.qj = mul nsw i64 %.reass326, 3
  %i.qk = getelementptr inbounds i8, ptr %i.pc, i64 %i.qj
  store <48 x i8> %interleaved.vec260, ptr %i.qk, align 1, !alias.scope !151, !noalias !148
  %index.next261 = add nuw i64 %index259, 16      ; 2 uses
  %i.ql = icmp eq i64 %index.next261, %n.vec251
  br i1 %i.ql, label %middle.block262, label %vector.body258, !llvm.loop !153

middle.block262:                                  ; preds = %vector.body258
  %cmp.n263 = icmp eq i64 %i.pe, %n.vec251
  br i1 %cmp.n263, label %stbhw__draw_hline.exit132, label %vec.epilog.iter.check267

vec.epilog.iter.check267:                         ; preds = %middle.block262
  %min.epilog.iters.check268 = icmp eq i64 %i.pn, 0
  br i1 %min.epilog.iters.check268, label %vec.epilog.scalar.ph266.preheader, label %vec.epilog.ph269, !prof !119

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check248, %vec.epilog.iter.check267
  %vec.epilog.resume.val264 = phi i64 [ %n.vec251, %vec.epilog.iter.check267 ], [ 0, %vector.main.loop.iter.check248 ]
  %n.vec270 = and i64 %i.pe, -2                   ; 3 uses
  %i.qm = add nsw i64 %n.vec270, %i.pd
  %i.qn = load i8, ptr %i.ox, align 1, !tbaa !62, !alias.scope !148
  %broadcast.splatinsert271 = insertelement <2 x i8> poison, i8 %i.qn, i64 0
  %broadcast.splat272 = shufflevector <2 x i8> %broadcast.splatinsert271, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.qo = zext <2 x i8> %broadcast.splat272 to <2 x i16>
  %i.qp = load i8, ptr %i.oy, align 1, !tbaa !62, !alias.scope !148
  %broadcast.splatinsert273 = insertelement <2 x i8> poison, i8 %i.qp, i64 0
  %broadcast.splat274 = shufflevector <2 x i8> %broadcast.splatinsert273, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.qq = zext <2 x i8> %broadcast.splat274 to <2 x i16>
  %i.qr = load i8, ptr %i.oz, align 1, !tbaa !62, !alias.scope !148
  %broadcast.splatinsert275 = insertelement <2 x i8> poison, i8 %i.qr, i64 0
  %broadcast.splat276 = shufflevector <2 x i8> %broadcast.splatinsert275, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.qs = zext <2 x i8> %broadcast.splat276 to <2 x i16>
  %i.qt = shl nuw nsw <2 x i16> %i.qs, splat (i16 1)
  %i.qu = add nuw nsw <2 x i16> %i.qt, splat (i16 255)
  %i.qv = udiv <2 x i16> %i.qu, splat (i16 3)
  %invariant.op327 = add i64 %i.pd, %i.el
  %i.qw = shufflevector <2 x i16> %i.qo, <2 x i16> %i.qq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qx = shl nuw nsw <4 x i16> %i.qw, splat (i16 1)
  %i.qy = add nuw nsw <4 x i16> %i.qx, splat (i16 255)
  %i.qz = udiv <4 x i16> %i.qy, splat (i16 3)
  %i.ra = shufflevector <2 x i16> %i.qv, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rb = shufflevector <4 x i16> %i.qz, <4 x i16> %i.ra, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec279 = trunc nuw <6 x i16> %i.rb to <6 x i8>
  br label %vec.epilog.vector.body277

vec.epilog.vector.body277:                        ; preds = %vec.epilog.vector.body277, %vec.epilog.ph269
  %index278 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph269 ], [ %index.next280, %vec.epilog.vector.body277 ] ; 2 uses
  %.reass328 = add i64 %index278, %invariant.op327
  %i.rc = mul nsw i64 %.reass328, 3
  %i.rd = getelementptr inbounds i8, ptr %i.pc, i64 %i.rc
  store <6 x i8> %interleaved.vec279, ptr %i.rd, align 1, !alias.scope !151, !noalias !148
  %index.next280 = add nuw i64 %index278, 2       ; 2 uses
  %i.re = icmp eq i64 %index.next280, %n.vec270
  br i1 %i.re, label %vec.epilog.middle.block281, label %vec.epilog.vector.body277, !llvm.loop !154

vec.epilog.middle.block281:                       ; preds = %vec.epilog.vector.body277
  %cmp.n282 = icmp eq i64 %i.pe, %n.vec270
  br i1 %cmp.n282, label %stbhw__draw_hline.exit132, label %vec.epilog.scalar.ph266.preheader

vec.epilog.scalar.ph266.preheader:                ; preds = %vector.memcheck240, %iter.check265, %vec.epilog.iter.check267, %vec.epilog.middle.block281
  %indvars.iv35.i119.ph = phi i64 [ %i.pd, %iter.check265 ], [ %i.pd, %vector.memcheck240 ], [ %i.po, %vec.epilog.iter.check267 ], [ %i.qm, %vec.epilog.middle.block281 ]
  br label %vec.epilog.scalar.ph266

vec.epilog.scalar.ph266:                          ; preds = %vec.epilog.scalar.ph266.preheader, %vec.epilog.scalar.ph266
  %indvars.iv35.i119 = phi i64 [ %indvars.iv.next36.i122, %vec.epilog.scalar.ph266 ], [ %indvars.iv35.i119.ph, %vec.epilog.scalar.ph266.preheader ] ; 2 uses
  %i.rf = add nsw i64 %indvars.iv35.i119, %i.el
  %i.rg = load i8, ptr %i.ox, align 1, !tbaa !62
  %i.rh = zext i8 %i.rg to i16
  %i.ri = shl nuw nsw i16 %i.rh, 1
  %i.rj = add nuw nsw i16 %i.ri, 255
  %i.rk = udiv i16 %i.rj, 3
  %i.rl = trunc nuw i16 %i.rk to i8
  %i.rm = load <2 x i8>, ptr %i.oy, align 1, !tbaa !62
  %i.rn = zext <2 x i8> %i.rm to <2 x i16>
  %i.ro = shl nuw nsw <2 x i16> %i.rn, splat (i16 1)
  %i.rp = add nuw nsw <2 x i16> %i.ro, splat (i16 255)
  %i.rq = udiv <2 x i16> %i.rp, splat (i16 3)     ; 2 uses
  %i.rr = bitcast <2 x i16> %i.rq to <4 x i8>
  %i.rs = extractelement <4 x i8> %i.rr, i64 0
  %i.rt = bitcast <2 x i16> %i.rq to <4 x i8>
  %i.ru = extractelement <4 x i8> %i.rt, i64 2
  %i.rv = mul nsw i64 %i.rf, 3
  %i.rw = getelementptr inbounds i8, ptr %i.pc, i64 %i.rv ; 3 uses
  store i8 %i.rl, ptr %i.rw, align 1
  %.sroa.4.0..sroa_idx.i.i120 = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  store i8 %i.rs, ptr %.sroa.4.0..sroa_idx.i.i120, align 1
  %.sroa.5.0..sroa_idx.i.i121 = getelementptr inbounds nuw i8, ptr %i.rw, i64 2
  store i8 %i.ru, ptr %.sroa.5.0..sroa_idx.i.i121, align 1
  %indvars.iv.next36.i122 = add nsw i64 %indvars.iv35.i119, 1 ; 2 uses
  %exitcond39.not.i123 = icmp eq i64 %indvars.iv.next36.i122, %wide.trip.count38.i118
  br i1 %exitcond39.not.i123, label %stbhw__draw_hline.exit132, label %vec.epilog.scalar.ph266, !llvm.loop !155

stbhw__draw_hline.exit132:                        ; preds = %vec.epilog.scalar.ph266, %vec.epilog.middle.block281, %middle.block262
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__edge_process_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 36 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = add i32 %1, 1                            ; 3 uses
  %i.j = mul nsw i32 %i.d, 3
  %i.k = sdiv i32 %i.j, 8                         ; 7 uses
  %i.l = mul nsw i32 %i.d, 5
  %i.m = sdiv i32 %i.l, 8                         ; 7 uses
  %i.n = icmp sgt i32 %i.d, 0                     ; 6 uses
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = mul nsw i32 %i.h, %2
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 %i.p ; 3 uses
  %i.r = sext i32 %i.i to i64                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.s = icmp eq i32 %i.d, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.t = add nsw i64 %indvars.iv.i, %i.r
  %i.u = mul nsw i64 %i.t, 3
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.v, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.w = add nsw i64 %indvars.iv.next.i, %i.r
  %i.x = mul nsw i64 %i.w, 3
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.y, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !112

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod204 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.z = add nsw i64 %indvars.iv.i.epil.init, %i.r
  %i.aa = mul nsw i64 %i.z, 3
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %i.ac = sub nsw i32 %i.m, %i.k
  %i.ad = icmp slt i32 %i.ac, 2                   ; 6 uses
  br i1 %i.ad, label %.thread.i, label %iter.check

.thread.i:                                        ; preds = %._crit_edge.i
  %i.ae = sdiv i32 %i.d, 2                        ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = and i32 %i.d, 1
  %spec.select.v.i = add nuw nsw i32 %i.ag, 1
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.ae
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.thread.i
  %.044.i = phi i32 [ %spec.select.i, %.thread.i ], [ %i.m, %._crit_edge.i ]
  %.02643.i = phi i32 [ %i.af, %.thread.i ], [ %i.k, %._crit_edge.i ]
  %i.ah = sext i32 %3 to i64                      ; 2 uses
  %i.ai = getelementptr inbounds [3 x i8], ptr @stbhw__color, i64 %i.ah ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.al = mul nsw i32 %i.h, %2
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.f, i64 %i.am ; 3 uses
  %i.ao = sext i32 %.02643.i to i64               ; 8 uses
  %i.ap = sext i32 %i.i to i64                    ; 13 uses
  %wide.trip.count38.i = sext i32 %.044.i to i64  ; 3 uses
  %i.aq = sub nsw i64 %wide.trip.count38.i, %i.ao ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 2
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = add nsw i64 %i.ao, %i.ap
  %i.as = mul nsw i64 %i.ar, 3
  %i.at = getelementptr i8, ptr %i.f, i64 %i.as
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.am
  %i.au = add nsw i64 %wide.trip.count38.i, %i.ap
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr i8, ptr %i.f, i64 %i.av
  %scevgep141 = getelementptr i8, ptr %i.aw, i64 %i.am
  %i.ax = mul nsw i64 %i.ah, 3
  %i.ay = getelementptr i8, ptr @stbhw__color, i64 %i.ax
  %scevgep142 = getelementptr i8, ptr %i.ay, i64 3
  %bound0 = icmp ult ptr %scevgep, %scevgep142
  %bound1 = icmp ult ptr %i.ai, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check143 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %i.aq, 14
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.ba = add nsw i64 %n.vec, %i.ao
  %i.bb = load i8, ptr %i.ai, align 1, !tbaa !62, !alias.scope !156
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bc = zext <16 x i8> %broadcast.splat to <16 x i16>
  %i.bd = shl nuw nsw <16 x i16> %i.bc, splat (i16 1)
  %i.be = add nuw nsw <16 x i16> %i.bd, splat (i16 255)
  %i.bf = udiv <16 x i16> %i.be, splat (i16 3)
  %i.bg = trunc nuw <16 x i16> %i.bf to <16 x i8>
  %i.bh = load i8, ptr %i.aj, align 1, !tbaa !62, !alias.scope !156
  %broadcast.splatinsert144 = insertelement <16 x i8> poison, i8 %i.bh, i64 0
  %broadcast.splat145 = shufflevector <16 x i8> %broadcast.splatinsert144, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bi = zext <16 x i8> %broadcast.splat145 to <16 x i16>
  %i.bj = shl nuw nsw <16 x i16> %i.bi, splat (i16 1)
  %i.bk = add nuw nsw <16 x i16> %i.bj, splat (i16 255)
  %i.bl = udiv <16 x i16> %i.bk, splat (i16 3)
  %i.bm = trunc nuw <16 x i16> %i.bl to <16 x i8>
  %i.bn = load i8, ptr %i.ak, align 1, !tbaa !62, !alias.scope !156
  %broadcast.splatinsert146 = insertelement <16 x i8> poison, i8 %i.bn, i64 0
  %broadcast.splat147 = shufflevector <16 x i8> %broadcast.splatinsert146, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bo = zext <16 x i8> %broadcast.splat147 to <16 x i16>
  %i.bp = shl nuw nsw <16 x i16> %i.bo, splat (i16 1)
  %i.bq = add nuw nsw <16 x i16> %i.bp, splat (i16 255)
  %i.br = udiv <16 x i16> %i.bq, splat (i16 3)
  %invariant.op = add i64 %i.ao, %i.ap
  %i.bs = shufflevector <16 x i8> %i.bg, <16 x i8> %i.bm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bt = shufflevector <16 x i16> %i.br, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = trunc nuw <32 x i16> %i.bt to <32 x i8>
  %interleaved.vec = shufflevector <32 x i8> %i.bs, <32 x i8> %i.bu, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.bv = mul nsw i64 %.reass, 3
  %i.bw = getelementptr inbounds i8, ptr %i.an, i64 %i.bv
  store <48 x i8> %interleaved.vec, ptr %i.bw, align 1, !alias.scope !159, !noalias !156
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %stbhw__draw_hline.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec148 = and i64 %i.aq, -2                   ; 3 uses
  %i.by = add nsw i64 %n.vec148, %i.ao
  %i.bz = load i8, ptr %i.ai, align 1, !tbaa !62, !alias.scope !156
  %broadcast.splatinsert149 = insertelement <2 x i8> poison, i8 %i.bz, i64 0
  %broadcast.splat150 = shufflevector <2 x i8> %broadcast.splatinsert149, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ca = zext <2 x i8> %broadcast.splat150 to <2 x i16>
  %i.cb = load i8, ptr %i.aj, align 1, !tbaa !62, !alias.scope !156
  %broadcast.splatinsert151 = insertelement <2 x i8> poison, i8 %i.cb, i64 0
  %broadcast.splat152 = shufflevector <2 x i8> %broadcast.splatinsert151, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cc = zext <2 x i8> %broadcast.splat152 to <2 x i16>
  %i.cd = load i8, ptr %i.ak, align 1, !tbaa !62, !alias.scope !156
  %broadcast.splatinsert153 = insertelement <2 x i8> poison, i8 %i.cd, i64 0
  %broadcast.splat154 = shufflevector <2 x i8> %broadcast.splatinsert153, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ce = zext <2 x i8> %broadcast.splat154 to <2 x i16>
  %i.cf = shl nuw nsw <2 x i16> %i.ce, splat (i16 1)
  %i.cg = add nuw nsw <2 x i16> %i.cf, splat (i16 255)
  %i.ch = udiv <2 x i16> %i.cg, splat (i16 3)
  %invariant.op235 = add i64 %i.ao, %i.ap
  %i.ci = shufflevector <2 x i16> %i.ca, <2 x i16> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cj = shl nuw nsw <4 x i16> %i.ci, splat (i16 1)
  %i.ck = add nuw nsw <4 x i16> %i.cj, splat (i16 255)
  %i.cl = udiv <4 x i16> %i.ck, splat (i16 3)
  %i.cm = shufflevector <2 x i16> %i.ch, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x i16> %i.cl, <4 x i16> %i.cm, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec156 = trunc nuw <6 x i16> %i.cn to <6 x i8>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %vec.epilog.vector.body ] ; 2 uses
  %.reass236 = add i64 %index155, %invariant.op235
  %i.co = mul nsw i64 %.reass236, 3
  %i.cp = getelementptr inbounds i8, ptr %i.an, i64 %i.co
  store <6 x i8> %interleaved.vec156, ptr %i.cp, align 1, !alias.scope !159, !noalias !156
  %index.next157 = add nuw i64 %index155, 2       ; 2 uses
  %i.cq = icmp eq i64 %index.next157, %n.vec148
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n158 = icmp eq i64 %i.aq, %n.vec148
  br i1 %cmp.n158, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv35.i.ph = phi i64 [ %i.ao, %iter.check ], [ %i.ao, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %vec.epilog.scalar.ph ], [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cr = add nsw i64 %indvars.iv35.i, %i.ap
  %i.cs = load i8, ptr %i.ai, align 1, !tbaa !62
  %i.ct = zext i8 %i.cs to i16
  %i.cu = shl nuw nsw i16 %i.ct, 1
  %i.cv = add nuw nsw i16 %i.cu, 255
  %i.cw = udiv i16 %i.cv, 3
  %i.cx = trunc nuw i16 %i.cw to i8
  %i.cy = load <2 x i8>, ptr %i.aj, align 1, !tbaa !62
  %i.cz = zext <2 x i8> %i.cy to <2 x i16>
  %i.da = shl nuw nsw <2 x i16> %i.cz, splat (i16 1)
  %i.db = add nuw nsw <2 x i16> %i.da, splat (i16 255)
  %i.dc = udiv <2 x i16> %i.db, splat (i16 3)     ; 2 uses
  %i.dd = bitcast <2 x i16> %i.dc to <4 x i8>
  %i.de = extractelement <4 x i8> %i.dd, i64 0
  %i.df = bitcast <2 x i16> %i.dc to <4 x i8>
  %i.dg = extractelement <4 x i8> %i.df, i64 2
  %i.dh = mul nsw i64 %i.cr, 3
  %i.di = getelementptr inbounds i8, ptr %i.an, i64 %i.dh ; 3 uses
  store i8 %i.cx, ptr %i.di, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store i8 %i.de, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i8 %i.dg, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph, !llvm.loop !163

stbhw__draw_hline.exit:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.dk = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.dl = add i32 %2, 1                           ; 4 uses
  br i1 %i.n, label %.lr.ph.i48, label %._crit_edge.i41

.lr.ph.i48:                                       ; preds = %stbhw__draw_hline.exit
  %i.dm = mul nsw i32 %1, 3
  %i.dn = sext i32 %i.dm to i64
  %invariant.gep.i = getelementptr i8, ptr %i.dj, i64 %i.dn ; 3 uses
  %i.do = sext i32 %i.dl to i64                   ; 3 uses
  %i.dp = sext i32 %i.dk to i64                   ; 3 uses
  %wide.trip.count.i49 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter206 = and i64 %wide.trip.count.i49, 1
  %i.dq = icmp eq i32 %i.d, 1
  br i1 %i.dq, label %.epil.preheader205, label %.lr.ph.i48.new

.lr.ph.i48.new:                                   ; preds = %.lr.ph.i48
  %unroll_iter209 = and i64 %wide.trip.count.i49, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i48.new
  %indvars.iv.i50 = phi i64 [ 0, %.lr.ph.i48.new ], [ %indvars.iv.next.i51.1, %bb.c ] ; 3 uses
  %niter210 = phi i64 [ 0, %.lr.ph.i48.new ], [ %niter210.next.1, %bb.c ]
  %i.dr = add nsw i64 %indvars.iv.i50, %i.do
  %i.ds = mul nsw i64 %i.dr, %i.dp
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i51 = or disjoint i64 %indvars.iv.i50, 1
  %i.dt = add nsw i64 %indvars.iv.next.i51, %i.do
  %i.du = mul nsw i64 %i.dt, %i.dp
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %._crit_edge.i41.loopexit.unr-lcssa, label %bb.c, !llvm.loop !122

._crit_edge.i41.loopexit.unr-lcssa:               ; preds = %bb.c
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod207.not, label %._crit_edge.i41, label %.epil.preheader205

.epil.preheader205:                               ; preds = %._crit_edge.i41.loopexit.unr-lcssa, %.lr.ph.i48
  %indvars.iv.i50.epil.init = phi i64 [ 0, %.lr.ph.i48 ], [ %indvars.iv.next.i51.1, %._crit_edge.i41.loopexit.unr-lcssa ]
  %lcmp.mod208 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %i.dv = add nsw i64 %indvars.iv.i50.epil.init, %i.do
  %i.dw = mul nsw i64 %i.dv, %i.dp
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %.epil.preheader205, %._crit_edge.i41.loopexit.unr-lcssa, %stbhw__draw_hline.exit
  br i1 %i.ad, label %.thread.i45, label %.lr.ph32.i42

.thread.i45:                                      ; preds = %._crit_edge.i41
  %i.dx = sdiv i32 %i.d, 2                        ; 2 uses
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = and i32 %i.d, 1
  %spec.select.v.i46 = add nuw nsw i32 %i.dz, 1
  %spec.select.i47 = add nsw i32 %spec.select.v.i46, %i.dx
  br label %.lr.ph32.i42

.lr.ph32.i42:                                     ; preds = %._crit_edge.i41, %.thread.i45
  %.046.i = phi i32 [ %spec.select.i47, %.thread.i45 ], [ %i.m, %._crit_edge.i41 ]
  %.02645.i = phi i32 [ %i.dy, %.thread.i45 ], [ %i.k, %._crit_edge.i41 ]
  %i.ea = sext i32 %4 to i64
  %i.eb = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 120), i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = mul nsw i32 %1, 3
  %i.ee = sext i32 %i.ed to i64                   ; 3 uses
  %invariant.gep34.i = getelementptr i8, ptr %i.dj, i64 %i.ee
  %i.ef = sext i32 %.02645.i to i64
  %i.eg = sext i32 %i.dl to i64                   ; 5 uses
  %i.eh = sext i32 %i.dk to i64
  %wide.trip.count40.i = sext i32 %.046.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph32.i42
  %indvars.iv37.i = phi i64 [ %i.ef, %.lr.ph32.i42 ], [ %indvars.iv.next38.i, %bb.d ] ; 2 uses
  %i.ei = add nsw i64 %indvars.iv37.i, %i.eg
  %i.ej = load i8, ptr %i.eb, align 1, !tbaa !62
  %i.ek = zext i8 %i.ej to i16
  %i.el = shl nuw nsw i16 %i.ek, 1
  %i.em = add nuw nsw i16 %i.el, 255
  %i.en = udiv i16 %i.em, 3
  %i.eo = trunc nuw i16 %i.en to i8
  %i.ep = load <2 x i8>, ptr %i.ec, align 1, !tbaa !62
  %i.eq = zext <2 x i8> %i.ep to <2 x i16>
  %i.er = shl nuw nsw <2 x i16> %i.eq, splat (i16 1)
  %i.es = add nuw nsw <2 x i16> %i.er, splat (i16 255)
  %i.et = udiv <2 x i16> %i.es, splat (i16 3)     ; 2 uses
  %i.eu = bitcast <2 x i16> %i.et to <4 x i8>
  %i.ev = extractelement <4 x i8> %i.eu, i64 0
  %i.ew = bitcast <2 x i16> %i.et to <4 x i8>
  %i.ex = extractelement <4 x i8> %i.ew, i64 2
  %i.ey = mul nsw i64 %i.ei, %i.eh
  %gep35.i = getelementptr i8, ptr %invariant.gep34.i, i64 %i.ey ; 3 uses
  store i8 %i.eo, ptr %gep35.i, align 1
  %.sroa.4.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 1
  store i8 %i.ev, ptr %.sroa.4.0..sroa_idx.i.i43, align 1
  %.sroa.5.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 2
  store i8 %i.ex, ptr %.sroa.5.0..sroa_idx.i.i44, align 1
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count40.i
  br i1 %exitcond41.not.i, label %stbhw__draw_vline.exit, label %bb.d, !llvm.loop !123

stbhw__draw_vline.exit:                           ; preds = %bb.d
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.fa = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.fb = add i32 %i.i, %i.d                      ; 2 uses
  br i1 %i.n, label %.lr.ph.i68, label %._crit_edge.i53

.lr.ph.i68:                                       ; preds = %stbhw__draw_vline.exit
  %i.fc = mul nsw i32 %i.fb, 3
  %i.fd = sext i32 %i.fc to i64
  %invariant.gep.i69 = getelementptr i8, ptr %i.ez, i64 %i.fd ; 3 uses
  %i.fe = sext i32 %i.fa to i64                   ; 3 uses
  %wide.trip.count.i70 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter212 = and i64 %wide.trip.count.i70, 1
  %i.ff = icmp eq i32 %i.d, 1
  br i1 %i.ff, label %.epil.preheader211, label %.lr.ph.i68.new

.lr.ph.i68.new:                                   ; preds = %.lr.ph.i68
  %unroll_iter215 = and i64 %wide.trip.count.i70, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i68.new
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.i68.new ], [ %indvars.iv.next.i73.1, %bb.e ] ; 3 uses
  %niter216 = phi i64 [ 0, %.lr.ph.i68.new ], [ %niter216.next.1, %bb.e ]
  %i.fg = add nsw i64 %indvars.iv.i71, %i.eg
  %i.fh = mul nsw i64 %i.fg, %i.fe
  %gep.i72 = getelementptr i8, ptr %invariant.gep.i69, i64 %i.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i72, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i73 = or disjoint i64 %indvars.iv.i71, 1
  %i.fi = add nsw i64 %indvars.iv.next.i73, %i.eg
  %i.fj = mul nsw i64 %i.fi, %i.fe
  %gep.i72.1 = getelementptr i8, ptr %invariant.gep.i69, i64 %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i72.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i73.1 = add nuw nsw i64 %indvars.iv.i71, 2 ; 2 uses
  %niter216.next.1 = add i64 %niter216, 2         ; 2 uses
  %niter216.ncmp.1 = icmp eq i64 %niter216.next.1, %unroll_iter215
  br i1 %niter216.ncmp.1, label %._crit_edge.i53.loopexit.unr-lcssa, label %bb.e, !llvm.loop !122

._crit_edge.i53.loopexit.unr-lcssa:               ; preds = %bb.e
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %._crit_edge.i53, label %.epil.preheader211

.epil.preheader211:                               ; preds = %._crit_edge.i53.loopexit.unr-lcssa, %.lr.ph.i68
  %indvars.iv.i71.epil.init = phi i64 [ 0, %.lr.ph.i68 ], [ %indvars.iv.next.i73.1, %._crit_edge.i53.loopexit.unr-lcssa ]
  %lcmp.mod214 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.fk = add nsw i64 %indvars.iv.i71.epil.init, %i.eg
  %i.fl = mul nsw i64 %i.fk, %i.fe
  %gep.i72.epil = getelementptr i8, ptr %invariant.gep.i69, i64 %i.fl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i72.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i53

._crit_edge.i53:                                  ; preds = %.epil.preheader211, %._crit_edge.i53.loopexit.unr-lcssa, %stbhw__draw_vline.exit
  br i1 %i.ad, label %.thread.i65, label %.lr.ph32.i54

.thread.i65:                                      ; preds = %._crit_edge.i53
  %i.fm = sdiv i32 %i.d, 2                        ; 2 uses
  %i.fn = add nsw i32 %i.fm, -1
  %i.fo = and i32 %i.d, 1
  %spec.select.v.i66 = add nuw nsw i32 %i.fo, 1
  %spec.select.i67 = add nsw i32 %spec.select.v.i66, %i.fm
  br label %.lr.ph32.i54

.lr.ph32.i54:                                     ; preds = %._crit_edge.i53, %.thread.i65
  %.046.i55 = phi i32 [ %spec.select.i67, %.thread.i65 ], [ %i.m, %._crit_edge.i53 ]
  %.02645.i56 = phi i32 [ %i.fn, %.thread.i65 ], [ %i.k, %._crit_edge.i53 ]
  %i.fp = sext i32 %5 to i64
  %i.fq = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 24), i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.fs = mul nsw i32 %i.fb, 3
  %i.ft = sext i32 %i.fs to i64                   ; 3 uses
  %invariant.gep34.i57 = getelementptr i8, ptr %i.ez, i64 %i.ft
  %i.fu = sext i32 %.02645.i56 to i64
  %i.fv = sext i32 %i.fa to i64
  %wide.trip.count40.i58 = sext i32 %.046.i55 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph32.i54
  %indvars.iv37.i59 = phi i64 [ %i.fu, %.lr.ph32.i54 ], [ %indvars.iv.next38.i63, %bb.f ] ; 2 uses
  %i.fw = add nsw i64 %indvars.iv37.i59, %i.eg
  %i.fx = load i8, ptr %i.fq, align 1, !tbaa !62
  %i.fy = zext i8 %i.fx to i16
  %i.fz = shl nuw nsw i16 %i.fy, 1
  %i.ga = add nuw nsw i16 %i.fz, 255
  %i.gb = udiv i16 %i.ga, 3
  %i.gc = trunc nuw i16 %i.gb to i8
  %i.gd = load <2 x i8>, ptr %i.fr, align 1, !tbaa !62
  %i.ge = zext <2 x i8> %i.gd to <2 x i16>
  %i.gf = shl nuw nsw <2 x i16> %i.ge, splat (i16 1)
  %i.gg = add nuw nsw <2 x i16> %i.gf, splat (i16 255)
  %i.gh = udiv <2 x i16> %i.gg, splat (i16 3)     ; 2 uses
  %i.gi = bitcast <2 x i16> %i.gh to <4 x i8>
  %i.gj = extractelement <4 x i8> %i.gi, i64 0
  %i.gk = bitcast <2 x i16> %i.gh to <4 x i8>
  %i.gl = extractelement <4 x i8> %i.gk, i64 2
  %i.gm = mul nsw i64 %i.fw, %i.fv
  %gep35.i60 = getelementptr i8, ptr %invariant.gep34.i57, i64 %i.gm ; 3 uses
  store i8 %i.gc, ptr %gep35.i60, align 1
  %.sroa.4.0..sroa_idx.i.i61 = getelementptr inbounds nuw i8, ptr %gep35.i60, i64 1
  store i8 %i.gj, ptr %.sroa.4.0..sroa_idx.i.i61, align 1
  %.sroa.5.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %gep35.i60, i64 2
  store i8 %i.gl, ptr %.sroa.5.0..sroa_idx.i.i62, align 1
  %indvars.iv.next38.i63 = add nsw i64 %indvars.iv37.i59, 1 ; 2 uses
  %exitcond41.not.i64 = icmp eq i64 %indvars.iv.next38.i63, %wide.trip.count40.i58
  br i1 %exitcond41.not.i64, label %stbhw__draw_vline.exit75, label %bb.f, !llvm.loop !123

stbhw__draw_vline.exit75:                         ; preds = %bb.f
  %i.gn = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.go = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.gp = add i32 %i.dl, %i.d                     ; 2 uses
  br i1 %i.n, label %.lr.ph.i91, label %._crit_edge.i76

.lr.ph.i91:                                       ; preds = %stbhw__draw_vline.exit75
  %invariant.gep.i92 = getelementptr i8, ptr %i.gn, i64 %i.ee ; 3 uses
  %i.gq = sext i32 %i.gp to i64                   ; 3 uses
  %i.gr = sext i32 %i.go to i64                   ; 3 uses
  %wide.trip.count.i93 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter218 = and i64 %wide.trip.count.i93, 1
  %i.gs = icmp eq i32 %i.d, 1
  br i1 %i.gs, label %.epil.preheader217, label %.lr.ph.i91.new

.lr.ph.i91.new:                                   ; preds = %.lr.ph.i91
  %unroll_iter221 = and i64 %wide.trip.count.i93, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i91.new
  %indvars.iv.i94 = phi i64 [ 0, %.lr.ph.i91.new ], [ %indvars.iv.next.i96.1, %bb.g ] ; 3 uses
  %niter222 = phi i64 [ 0, %.lr.ph.i91.new ], [ %niter222.next.1, %bb.g ]
  %i.gt = add nsw i64 %indvars.iv.i94, %i.gq
  %i.gu = mul nsw i64 %i.gt, %i.gr
  %gep.i95 = getelementptr i8, ptr %invariant.gep.i92, i64 %i.gu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i95, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i96 = or disjoint i64 %indvars.iv.i94, 1
  %i.gv = add nsw i64 %indvars.iv.next.i96, %i.gq
  %i.gw = mul nsw i64 %i.gv, %i.gr
  %gep.i95.1 = getelementptr i8, ptr %invariant.gep.i92, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i95.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i94, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %._crit_edge.i76.loopexit.unr-lcssa, label %bb.g, !llvm.loop !122

._crit_edge.i76.loopexit.unr-lcssa:               ; preds = %bb.g
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %._crit_edge.i76, label %.epil.preheader217

.epil.preheader217:                               ; preds = %._crit_edge.i76.loopexit.unr-lcssa, %.lr.ph.i91
  %indvars.iv.i94.epil.init = phi i64 [ 0, %.lr.ph.i91 ], [ %indvars.iv.next.i96.1, %._crit_edge.i76.loopexit.unr-lcssa ]
  %lcmp.mod220 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.gx = add nsw i64 %indvars.iv.i94.epil.init, %i.gq
  %i.gy = mul nsw i64 %i.gx, %i.gr
  %gep.i95.epil = getelementptr i8, ptr %invariant.gep.i92, i64 %i.gy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i95.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i76

._crit_edge.i76:                                  ; preds = %.epil.preheader217, %._crit_edge.i76.loopexit.unr-lcssa, %stbhw__draw_vline.exit75
  br i1 %i.ad, label %.thread.i88, label %.lr.ph32.i77

.thread.i88:                                      ; preds = %._crit_edge.i76
  %i.gz = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ha = add nsw i32 %i.gz, -1
  %i.hb = and i32 %i.d, 1
  %spec.select.v.i89 = add nuw nsw i32 %i.hb, 1
  %spec.select.i90 = add nsw i32 %spec.select.v.i89, %i.gz
  br label %.lr.ph32.i77

.lr.ph32.i77:                                     ; preds = %._crit_edge.i76, %.thread.i88
  %.046.i78 = phi i32 [ %spec.select.i90, %.thread.i88 ], [ %i.m, %._crit_edge.i76 ]
  %.02645.i79 = phi i32 [ %i.ha, %.thread.i88 ], [ %i.k, %._crit_edge.i76 ]
  %i.hc = sext i32 %6 to i64
  %i.hd = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 96), i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %invariant.gep34.i80 = getelementptr i8, ptr %i.gn, i64 %i.ee
  %i.hf = sext i32 %.02645.i79 to i64
  %i.hg = sext i32 %i.gp to i64                   ; 5 uses
  %i.hh = sext i32 %i.go to i64
  %wide.trip.count40.i81 = sext i32 %.046.i78 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph32.i77
  %indvars.iv37.i82 = phi i64 [ %i.hf, %.lr.ph32.i77 ], [ %indvars.iv.next38.i86, %bb.h ] ; 2 uses
  %i.hi = add nsw i64 %indvars.iv37.i82, %i.hg
  %i.hj = load i8, ptr %i.hd, align 1, !tbaa !62
  %i.hk = zext i8 %i.hj to i16
  %i.hl = shl nuw nsw i16 %i.hk, 1
  %i.hm = add nuw nsw i16 %i.hl, 255
  %i.hn = udiv i16 %i.hm, 3
  %i.ho = trunc nuw i16 %i.hn to i8
  %i.hp = load <2 x i8>, ptr %i.he, align 1, !tbaa !62
  %i.hq = zext <2 x i8> %i.hp to <2 x i16>
  %i.hr = shl nuw nsw <2 x i16> %i.hq, splat (i16 1)
  %i.hs = add nuw nsw <2 x i16> %i.hr, splat (i16 255)
  %i.ht = udiv <2 x i16> %i.hs, splat (i16 3)     ; 2 uses
  %i.hu = bitcast <2 x i16> %i.ht to <4 x i8>
  %i.hv = extractelement <4 x i8> %i.hu, i64 0
  %i.hw = bitcast <2 x i16> %i.ht to <4 x i8>
  %i.hx = extractelement <4 x i8> %i.hw, i64 2
  %i.hy = mul nsw i64 %i.hi, %i.hh
  %gep35.i83 = getelementptr i8, ptr %invariant.gep34.i80, i64 %i.hy ; 3 uses
  store i8 %i.ho, ptr %gep35.i83, align 1
  %.sroa.4.0..sroa_idx.i.i84 = getelementptr inbounds nuw i8, ptr %gep35.i83, i64 1
  store i8 %i.hv, ptr %.sroa.4.0..sroa_idx.i.i84, align 1
  %.sroa.5.0..sroa_idx.i.i85 = getelementptr inbounds nuw i8, ptr %gep35.i83, i64 2
  store i8 %i.hx, ptr %.sroa.5.0..sroa_idx.i.i85, align 1
  %indvars.iv.next38.i86 = add nsw i64 %indvars.iv37.i82, 1 ; 2 uses
  %exitcond41.not.i87 = icmp eq i64 %indvars.iv.next38.i86, %wide.trip.count40.i81
  br i1 %exitcond41.not.i87, label %stbhw__draw_vline.exit98, label %bb.h, !llvm.loop !123

stbhw__draw_vline.exit98:                         ; preds = %bb.h
  %i.hz = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.ia = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  br i1 %i.n, label %.lr.ph.i114, label %._crit_edge.i99

.lr.ph.i114:                                      ; preds = %stbhw__draw_vline.exit98
  %invariant.gep.i115 = getelementptr i8, ptr %i.hz, i64 %i.ft ; 3 uses
  %i.ib = sext i32 %i.ia to i64                   ; 3 uses
  %wide.trip.count.i116 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter224 = and i64 %wide.trip.count.i116, 1
  %i.ic = icmp eq i32 %i.d, 1
  br i1 %i.ic, label %.epil.preheader223, label %.lr.ph.i114.new

.lr.ph.i114.new:                                  ; preds = %.lr.ph.i114
  %unroll_iter227 = and i64 %wide.trip.count.i116, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i114.new
  %indvars.iv.i117 = phi i64 [ 0, %.lr.ph.i114.new ], [ %indvars.iv.next.i119.1, %bb.i ] ; 3 uses
  %niter228 = phi i64 [ 0, %.lr.ph.i114.new ], [ %niter228.next.1, %bb.i ]
  %i.id = add nsw i64 %indvars.iv.i117, %i.hg
  %i.ie = mul nsw i64 %i.id, %i.ib
  %gep.i118 = getelementptr i8, ptr %invariant.gep.i115, i64 %i.ie
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i118, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i119 = or disjoint i64 %indvars.iv.i117, 1
  %i.if = add nsw i64 %indvars.iv.next.i119, %i.hg
  %i.ig = mul nsw i64 %i.if, %i.ib
  %gep.i118.1 = getelementptr i8, ptr %invariant.gep.i115, i64 %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i118.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i119.1 = add nuw nsw i64 %indvars.iv.i117, 2 ; 2 uses
  %niter228.next.1 = add i64 %niter228, 2         ; 2 uses
  %niter228.ncmp.1 = icmp eq i64 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1, label %._crit_edge.i99.loopexit.unr-lcssa, label %bb.i, !llvm.loop !122

._crit_edge.i99.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %._crit_edge.i99, label %.epil.preheader223

.epil.preheader223:                               ; preds = %._crit_edge.i99.loopexit.unr-lcssa, %.lr.ph.i114
  %indvars.iv.i117.epil.init = phi i64 [ 0, %.lr.ph.i114 ], [ %indvars.iv.next.i119.1, %._crit_edge.i99.loopexit.unr-lcssa ]
  %lcmp.mod226 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  %i.ih = add nsw i64 %indvars.iv.i117.epil.init, %i.hg
  %i.ii = mul nsw i64 %i.ih, %i.ib
  %gep.i118.epil = getelementptr i8, ptr %invariant.gep.i115, i64 %i.ii
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i118.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i99

._crit_edge.i99:                                  ; preds = %.epil.preheader223, %._crit_edge.i99.loopexit.unr-lcssa, %stbhw__draw_vline.exit98
  br i1 %i.ad, label %.thread.i111, label %.lr.ph32.i100

.thread.i111:                                     ; preds = %._crit_edge.i99
  %i.ij = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ik = add nsw i32 %i.ij, -1
  %i.il = and i32 %i.d, 1
  %spec.select.v.i112 = add nuw nsw i32 %i.il, 1
  %spec.select.i113 = add nsw i32 %spec.select.v.i112, %i.ij
  br label %.lr.ph32.i100

.lr.ph32.i100:                                    ; preds = %._crit_edge.i99, %.thread.i111
  %.046.i101 = phi i32 [ %spec.select.i113, %.thread.i111 ], [ %i.m, %._crit_edge.i99 ]
  %.02645.i102 = phi i32 [ %i.ik, %.thread.i111 ], [ %i.k, %._crit_edge.i99 ]
  %i.im = sext i32 %7 to i64
  %i.in = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 120), i64 %i.im ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %invariant.gep34.i103 = getelementptr i8, ptr %i.hz, i64 %i.ft
  %i.ip = sext i32 %.02645.i102 to i64
  %i.iq = sext i32 %i.ia to i64
  %wide.trip.count40.i104 = sext i32 %.046.i101 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph32.i100
  %indvars.iv37.i105 = phi i64 [ %i.ip, %.lr.ph32.i100 ], [ %indvars.iv.next38.i109, %bb.j ] ; 2 uses
  %i.ir = add nsw i64 %indvars.iv37.i105, %i.hg
  %i.is = load i8, ptr %i.in, align 1, !tbaa !62
  %i.it = zext i8 %i.is to i16
  %i.iu = shl nuw nsw i16 %i.it, 1
  %i.iv = add nuw nsw i16 %i.iu, 255
  %i.iw = udiv i16 %i.iv, 3
  %i.ix = trunc nuw i16 %i.iw to i8
  %i.iy = load <2 x i8>, ptr %i.io, align 1, !tbaa !62
  %i.iz = zext <2 x i8> %i.iy to <2 x i16>
  %i.ja = shl nuw nsw <2 x i16> %i.iz, splat (i16 1)
  %i.jb = add nuw nsw <2 x i16> %i.ja, splat (i16 255)
  %i.jc = udiv <2 x i16> %i.jb, splat (i16 3)     ; 2 uses
  %i.jd = bitcast <2 x i16> %i.jc to <4 x i8>
  %i.je = extractelement <4 x i8> %i.jd, i64 0
  %i.jf = bitcast <2 x i16> %i.jc to <4 x i8>
  %i.jg = extractelement <4 x i8> %i.jf, i64 2
  %i.jh = mul nsw i64 %i.ir, %i.iq
  %gep35.i106 = getelementptr i8, ptr %invariant.gep34.i103, i64 %i.jh ; 3 uses
  store i8 %i.ix, ptr %gep35.i106, align 1
  %.sroa.4.0..sroa_idx.i.i107 = getelementptr inbounds nuw i8, ptr %gep35.i106, i64 1
  store i8 %i.je, ptr %.sroa.4.0..sroa_idx.i.i107, align 1
  %.sroa.5.0..sroa_idx.i.i108 = getelementptr inbounds nuw i8, ptr %gep35.i106, i64 2
  store i8 %i.jg, ptr %.sroa.5.0..sroa_idx.i.i108, align 1
  %indvars.iv.next38.i109 = add nsw i64 %indvars.iv37.i105, 1 ; 2 uses
  %exitcond41.not.i110 = icmp eq i64 %indvars.iv.next38.i109, %wide.trip.count40.i104
  br i1 %exitcond41.not.i110, label %stbhw__draw_vline.exit121, label %bb.j, !llvm.loop !123

stbhw__draw_vline.exit121:                        ; preds = %bb.j
  %i.ji = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.jj = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.jk = shl nsw i32 %i.d, 1
  %i.jl = add i32 %i.dl, %i.jk                    ; 2 uses
  br i1 %i.n, label %.lr.ph.i135, label %._crit_edge.i122

.lr.ph.i135:                                      ; preds = %stbhw__draw_vline.exit121
  %i.jm = mul nsw i32 %i.jj, %i.jl
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds i8, ptr %i.ji, i64 %i.jn ; 3 uses
  %wide.trip.count.i136 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter230 = and i64 %wide.trip.count.i136, 1
  %i.jp = icmp eq i32 %i.d, 1
  br i1 %i.jp, label %.epil.preheader229, label %.lr.ph.i135.new

.lr.ph.i135.new:                                  ; preds = %.lr.ph.i135
  %unroll_iter233 = and i64 %wide.trip.count.i136, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i135.new
  %indvars.iv.i137 = phi i64 [ 0, %.lr.ph.i135.new ], [ %indvars.iv.next.i138.1, %bb.k ] ; 3 uses
  %niter234 = phi i64 [ 0, %.lr.ph.i135.new ], [ %niter234.next.1, %bb.k ]
  %i.jq = add nsw i64 %indvars.iv.i137, %i.ap
  %i.jr = mul nsw i64 %i.jq, 3
  %i.js = getelementptr inbounds i8, ptr %i.jo, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.js, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i138 = or disjoint i64 %indvars.iv.i137, 1
  %i.jt = add nsw i64 %indvars.iv.next.i138, %i.ap
  %i.ju = mul nsw i64 %i.jt, 3
  %i.jv = getelementptr inbounds i8, ptr %i.jo, i64 %i.ju
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jv, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i138.1 = add nuw nsw i64 %indvars.iv.i137, 2 ; 2 uses
  %niter234.next.1 = add i64 %niter234, 2         ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %._crit_edge.i122.loopexit.unr-lcssa, label %bb.k, !llvm.loop !112

._crit_edge.i122.loopexit.unr-lcssa:              ; preds = %bb.k
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %._crit_edge.i122, label %.epil.preheader229

.epil.preheader229:                               ; preds = %._crit_edge.i122.loopexit.unr-lcssa, %.lr.ph.i135
  %indvars.iv.i137.epil.init = phi i64 [ 0, %.lr.ph.i135 ], [ %indvars.iv.next.i138.1, %._crit_edge.i122.loopexit.unr-lcssa ]
  %lcmp.mod232 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.jw = add nsw i64 %indvars.iv.i137.epil.init, %i.ap
  %i.jx = mul nsw i64 %i.jw, 3
  %i.jy = getelementptr inbounds i8, ptr %i.jo, i64 %i.jx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jy, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i122

._crit_edge.i122:                                 ; preds = %.epil.preheader229, %._crit_edge.i122.loopexit.unr-lcssa, %stbhw__draw_vline.exit121
  br i1 %i.ad, label %.thread.i132, label %iter.check185

.thread.i132:                                     ; preds = %._crit_edge.i122
  %i.jz = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ka = add nsw i32 %i.jz, -1
  %i.kb = and i32 %i.d, 1
  %spec.select.v.i133 = add nuw nsw i32 %i.kb, 1
  %spec.select.i134 = add nsw i32 %spec.select.v.i133, %i.jz
  br label %iter.check185

iter.check185:                                    ; preds = %._crit_edge.i122, %.thread.i132
  %.044.i124 = phi i32 [ %spec.select.i134, %.thread.i132 ], [ %i.m, %._crit_edge.i122 ]
  %.02643.i125 = phi i32 [ %i.ka, %.thread.i132 ], [ %i.k, %._crit_edge.i122 ]
  %i.kc = sext i32 %8 to i64                      ; 2 uses
  %i.kd = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 72), i64 %i.kc ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 2 ; 2 uses
  %i.kg = mul nsw i32 %i.jj, %i.jl
  %i.kh = sext i32 %i.kg to i64                   ; 3 uses
  %i.ki = getelementptr inbounds i8, ptr %i.ji, i64 %i.kh ; 3 uses
  %i.kj = sext i32 %.02643.i125 to i64            ; 8 uses
  %wide.trip.count38.i126 = sext i32 %.044.i124 to i64 ; 3 uses
  %i.kk = sub nsw i64 %wide.trip.count38.i126, %i.kj ; 7 uses
  %min.iters.check167 = icmp ult i64 %i.kk, 2
  br i1 %min.iters.check167, label %vec.epilog.scalar.ph186.preheader, label %vector.memcheck160

vector.memcheck160:                               ; preds = %iter.check185
  %i.kl = add nsw i64 %i.kj, %i.ap
  %i.km = mul nsw i64 %i.kl, 3
  %i.kn = getelementptr i8, ptr %i.ji, i64 %i.km
  %scevgep161 = getelementptr i8, ptr %i.kn, i64 %i.kh
  %i.ko = add nsw i64 %wide.trip.count38.i126, %i.ap
  %i.kp = mul nsw i64 %i.ko, 3
  %i.kq = getelementptr i8, ptr %i.ji, i64 %i.kp
  %scevgep162 = getelementptr i8, ptr %i.kq, i64 %i.kh
  %i.kr = mul nsw i64 %i.kc, 3
  %i.ks = getelementptr i8, ptr @stbhw__color, i64 %i.kr
  %scevgep163 = getelementptr i8, ptr %i.ks, i64 75
  %bound0164 = icmp ult ptr %scevgep161, %scevgep163
  %bound1165 = icmp ult ptr %i.kd, %scevgep162
  %found.conflict166 = and i1 %bound0164, %bound1165
  br i1 %found.conflict166, label %vec.epilog.scalar.ph186.preheader, label %vector.main.loop.iter.check168

vector.main.loop.iter.check168:                   ; preds = %vector.memcheck160
  %min.iters.check169 = icmp ult i64 %i.kk, 16
  br i1 %min.iters.check169, label %vec.epilog.ph189, label %vector.ph170

vector.ph170:                                     ; preds = %vector.main.loop.iter.check168
  %i.kt = and i64 %i.kk, 14
  %n.vec171 = and i64 %i.kk, -16                  ; 4 uses
  %i.ku = add nsw i64 %n.vec171, %i.kj
  %i.kv = load i8, ptr %i.kd, align 1, !tbaa !62, !alias.scope !164
  %broadcast.splatinsert172 = insertelement <16 x i8> poison, i8 %i.kv, i64 0
  %broadcast.splat173 = shufflevector <16 x i8> %broadcast.splatinsert172, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.kw = zext <16 x i8> %broadcast.splat173 to <16 x i16>
  %i.kx = shl nuw nsw <16 x i16> %i.kw, splat (i16 1)
  %i.ky = add nuw nsw <16 x i16> %i.kx, splat (i16 255)
  %i.kz = udiv <16 x i16> %i.ky, splat (i16 3)
  %i.la = trunc nuw <16 x i16> %i.kz to <16 x i8>
  %i.lb = load i8, ptr %i.ke, align 1, !tbaa !62, !alias.scope !164
  %broadcast.splatinsert174 = insertelement <16 x i8> poison, i8 %i.lb, i64 0
  %broadcast.splat175 = shufflevector <16 x i8> %broadcast.splatinsert174, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lc = zext <16 x i8> %broadcast.splat175 to <16 x i16>
  %i.ld = shl nuw nsw <16 x i16> %i.lc, splat (i16 1)
  %i.le = add nuw nsw <16 x i16> %i.ld, splat (i16 255)
  %i.lf = udiv <16 x i16> %i.le, splat (i16 3)
  %i.lg = trunc nuw <16 x i16> %i.lf to <16 x i8>
  %i.lh = load i8, ptr %i.kf, align 1, !tbaa !62, !alias.scope !164
  %broadcast.splatinsert176 = insertelement <16 x i8> poison, i8 %i.lh, i64 0
  %broadcast.splat177 = shufflevector <16 x i8> %broadcast.splatinsert176, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.li = zext <16 x i8> %broadcast.splat177 to <16 x i16>
  %i.lj = shl nuw nsw <16 x i16> %i.li, splat (i16 1)
  %i.lk = add nuw nsw <16 x i16> %i.lj, splat (i16 255)
  %i.ll = udiv <16 x i16> %i.lk, splat (i16 3)
  %invariant.op237 = add i64 %i.kj, %i.ap
  %i.lm = shufflevector <16 x i8> %i.la, <16 x i8> %i.lg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ln = shufflevector <16 x i16> %i.ll, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lo = trunc nuw <32 x i16> %i.ln to <32 x i8>
  %interleaved.vec180 = shufflevector <32 x i8> %i.lm, <32 x i8> %i.lo, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph170
  %index179 = phi i64 [ 0, %vector.ph170 ], [ %index.next181, %vector.body178 ] ; 2 uses
  %.reass238 = add i64 %index179, %invariant.op237
  %i.lp = mul nsw i64 %.reass238, 3
  %i.lq = getelementptr inbounds i8, ptr %i.ki, i64 %i.lp
  store <48 x i8> %interleaved.vec180, ptr %i.lq, align 1, !alias.scope !167, !noalias !164
  %index.next181 = add nuw i64 %index179, 16      ; 2 uses
  %i.lr = icmp eq i64 %index.next181, %n.vec171
  br i1 %i.lr, label %middle.block182, label %vector.body178, !llvm.loop !169

middle.block182:                                  ; preds = %vector.body178
  %cmp.n183 = icmp eq i64 %i.kk, %n.vec171
  br i1 %cmp.n183, label %stbhw__draw_hline.exit140, label %vec.epilog.iter.check187

vec.epilog.iter.check187:                         ; preds = %middle.block182
  %min.epilog.iters.check188 = icmp eq i64 %i.kt, 0
  br i1 %min.epilog.iters.check188, label %vec.epilog.scalar.ph186.preheader, label %vec.epilog.ph189, !prof !119

vec.epilog.ph189:                                 ; preds = %vector.main.loop.iter.check168, %vec.epilog.iter.check187
  %vec.epilog.resume.val184 = phi i64 [ %n.vec171, %vec.epilog.iter.check187 ], [ 0, %vector.main.loop.iter.check168 ]
  %n.vec190 = and i64 %i.kk, -2                   ; 3 uses
  %i.ls = add nsw i64 %n.vec190, %i.kj
  %i.lt = load i8, ptr %i.kd, align 1, !tbaa !62, !alias.scope !164
  %broadcast.splatinsert191 = insertelement <2 x i8> poison, i8 %i.lt, i64 0
  %broadcast.splat192 = shufflevector <2 x i8> %broadcast.splatinsert191, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.lu = zext <2 x i8> %broadcast.splat192 to <2 x i16>
  %i.lv = load i8, ptr %i.ke, align 1, !tbaa !62, !alias.scope !164
  %broadcast.splatinsert193 = insertelement <2 x i8> poison, i8 %i.lv, i64 0
  %broadcast.splat194 = shufflevector <2 x i8> %broadcast.splatinsert193, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.lw = zext <2 x i8> %broadcast.splat194 to <2 x i16>
  %i.lx = load i8, ptr %i.kf, align 1, !tbaa !62, !alias.scope !164
  %broadcast.splatinsert195 = insertelement <2 x i8> poison, i8 %i.lx, i64 0
  %broadcast.splat196 = shufflevector <2 x i8> %broadcast.splatinsert195, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ly = zext <2 x i8> %broadcast.splat196 to <2 x i16>
  %i.lz = shl nuw nsw <2 x i16> %i.ly, splat (i16 1)
  %i.ma = add nuw nsw <2 x i16> %i.lz, splat (i16 255)
  %i.mb = udiv <2 x i16> %i.ma, splat (i16 3)
  %invariant.op239 = add i64 %i.kj, %i.ap
  %i.mc = shufflevector <2 x i16> %i.lu, <2 x i16> %i.lw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.md = shl nuw nsw <4 x i16> %i.mc, splat (i16 1)
  %i.me = add nuw nsw <4 x i16> %i.md, splat (i16 255)
  %i.mf = udiv <4 x i16> %i.me, splat (i16 3)
  %i.mg = shufflevector <2 x i16> %i.mb, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mh = shufflevector <4 x i16> %i.mf, <4 x i16> %i.mg, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec199 = trunc nuw <6 x i16> %i.mh to <6 x i8>
  br label %vec.epilog.vector.body197

vec.epilog.vector.body197:                        ; preds = %vec.epilog.vector.body197, %vec.epilog.ph189
  %index198 = phi i64 [ %vec.epilog.resume.val184, %vec.epilog.ph189 ], [ %index.next200, %vec.epilog.vector.body197 ] ; 2 uses
  %.reass240 = add i64 %index198, %invariant.op239
  %i.mi = mul nsw i64 %.reass240, 3
  %i.mj = getelementptr inbounds i8, ptr %i.ki, i64 %i.mi
  store <6 x i8> %interleaved.vec199, ptr %i.mj, align 1, !alias.scope !167, !noalias !164
  %index.next200 = add nuw i64 %index198, 2       ; 2 uses
  %i.mk = icmp eq i64 %index.next200, %n.vec190
  br i1 %i.mk, label %vec.epilog.middle.block201, label %vec.epilog.vector.body197, !llvm.loop !170

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body197
  %cmp.n202 = icmp eq i64 %i.kk, %n.vec190
  br i1 %cmp.n202, label %stbhw__draw_hline.exit140, label %vec.epilog.scalar.ph186.preheader

vec.epilog.scalar.ph186.preheader:                ; preds = %vector.memcheck160, %iter.check185, %vec.epilog.iter.check187, %vec.epilog.middle.block201
  %indvars.iv35.i127.ph = phi i64 [ %i.kj, %iter.check185 ], [ %i.kj, %vector.memcheck160 ], [ %i.ku, %vec.epilog.iter.check187 ], [ %i.ls, %vec.epilog.middle.block201 ]
  br label %vec.epilog.scalar.ph186

vec.epilog.scalar.ph186:                          ; preds = %vec.epilog.scalar.ph186.preheader, %vec.epilog.scalar.ph186
  %indvars.iv35.i127 = phi i64 [ %indvars.iv.next36.i130, %vec.epilog.scalar.ph186 ], [ %indvars.iv35.i127.ph, %vec.epilog.scalar.ph186.preheader ] ; 2 uses
  %i.ml = add nsw i64 %indvars.iv35.i127, %i.ap
  %i.mm = load i8, ptr %i.kd, align 1, !tbaa !62
  %i.mn = zext i8 %i.mm to i16
  %i.mo = shl nuw nsw i16 %i.mn, 1
  %i.mp = add nuw nsw i16 %i.mo, 255
  %i.mq = udiv i16 %i.mp, 3
  %i.mr = trunc nuw i16 %i.mq to i8
  %i.ms = load <2 x i8>, ptr %i.ke, align 1, !tbaa !62
  %i.mt = zext <2 x i8> %i.ms to <2 x i16>
  %i.mu = shl nuw nsw <2 x i16> %i.mt, splat (i16 1)
  %i.mv = add nuw nsw <2 x i16> %i.mu, splat (i16 255)
  %i.mw = udiv <2 x i16> %i.mv, splat (i16 3)     ; 2 uses
  %i.mx = bitcast <2 x i16> %i.mw to <4 x i8>
  %i.my = extractelement <4 x i8> %i.mx, i64 0
  %i.mz = bitcast <2 x i16> %i.mw to <4 x i8>
  %i.na = extractelement <4 x i8> %i.mz, i64 2
  %i.nb = mul nsw i64 %i.ml, 3
  %i.nc = getelementptr inbounds i8, ptr %i.ki, i64 %i.nb ; 3 uses
  store i8 %i.mr, ptr %i.nc, align 1
  %.sroa.4.0..sroa_idx.i.i128 = getelementptr inbounds nuw i8, ptr %i.nc, i64 1
  store i8 %i.my, ptr %.sroa.4.0..sroa_idx.i.i128, align 1
  %.sroa.5.0..sroa_idx.i.i129 = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  store i8 %i.na, ptr %.sroa.5.0..sroa_idx.i.i129, align 1
  %indvars.iv.next36.i130 = add nsw i64 %indvars.iv35.i127, 1 ; 2 uses
  %exitcond39.not.i131 = icmp eq i64 %indvars.iv.next36.i130, %wide.trip.count38.i126
  br i1 %exitcond39.not.i131, label %stbhw__draw_hline.exit140, label %vec.epilog.scalar.ph186, !llvm.loop !171

stbhw__draw_hline.exit140:                        ; preds = %vec.epilog.scalar.ph186, %vec.epilog.middle.block201, %middle.block182
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__corner_process_h_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 47 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 18 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = add i32 %1, 1                            ; 3 uses
  %i.j = sext i32 %3 to i64                       ; 3 uses
  %i.k = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.j ; 2 uses
  %i.l = sext i32 %4 to i64                       ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34
  %i.o = mul nsw i32 %i.d, 3
  %i.p = sdiv i32 %i.o, 8                         ; 7 uses
  %i.q = mul nsw i32 %i.d, 5
  %i.r = sdiv i32 %i.q, 8                         ; 7 uses
  %i.s = icmp sgt i32 %i.d, 0                     ; 6 uses
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.t = mul nsw i32 %i.h, %2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.i to i64                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.x = icmp eq i32 %i.d, 1
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.y = add nsw i64 %indvars.iv.i, %i.w
  %i.z = mul nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ab = add nsw i64 %indvars.iv.next.i, %i.w
  %i.ac = mul nsw i64 %i.ab, 3
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !112

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod432 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod432)
  %i.ae = add nsw i64 %indvars.iv.i.epil.init, %i.w
  %i.af = mul nsw i64 %i.ae, 3
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ag, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %i.ah = sub nsw i32 %i.r, %i.p
  %i.ai = icmp slt i32 %i.ah, 2                   ; 6 uses
  br i1 %i.ai, label %.thread.i, label %iter.check

.thread.i:                                        ; preds = %._crit_edge.i
  %i.aj = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = and i32 %i.d, 1
  %spec.select.v.i = add nuw nsw i32 %i.al, 1
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.aj
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.thread.i
  %.044.i = phi i32 [ %spec.select.i, %.thread.i ], [ %i.r, %._crit_edge.i ]
  %.02643.i = phi i32 [ %i.ak, %.thread.i ], [ %i.p, %._crit_edge.i ]
  %i.am = sext i32 %i.n to i64                    ; 2 uses
  %i.an = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 48), i64 %i.am ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 2 uses
  %i.aq = mul nsw i32 %i.h, %2
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.f, i64 %i.ar ; 3 uses
  %i.at = sext i32 %.02643.i to i64               ; 8 uses
  %i.au = sext i32 %i.i to i64                    ; 17 uses
  %wide.trip.count38.i = sext i32 %.044.i to i64  ; 3 uses
  %i.av = sub nsw i64 %wide.trip.count38.i, %i.at ; 7 uses
  %min.iters.check = icmp ult i64 %i.av, 2
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = add nsw i64 %i.at, %i.au
  %i.ax = mul nsw i64 %i.aw, 3
  %i.ay = getelementptr i8, ptr %i.f, i64 %i.ax
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.ar
  %i.az = add nsw i64 %wide.trip.count38.i, %i.au
  %i.ba = mul nsw i64 %i.az, 3
  %i.bb = getelementptr i8, ptr %i.f, i64 %i.ba
  %scevgep281 = getelementptr i8, ptr %i.bb, i64 %i.ar
  %i.bc = mul nsw i64 %i.am, 3
  %i.bd = getelementptr i8, ptr @stbhw__color, i64 %i.bc
  %scevgep282 = getelementptr i8, ptr %i.bd, i64 51
  %bound0 = icmp ult ptr %scevgep, %scevgep282
  %bound1 = icmp ult ptr %i.an, %scevgep281
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check283 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check283, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.av, 14
  %n.vec = and i64 %i.av, -16                     ; 4 uses
  %i.bf = add nsw i64 %n.vec, %i.at
  %i.bg = load i8, ptr %i.an, align 1, !tbaa !62, !alias.scope !172
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bg, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bh = zext <16 x i8> %broadcast.splat to <16 x i16>
  %i.bi = shl nuw nsw <16 x i16> %i.bh, splat (i16 1)
  %i.bj = add nuw nsw <16 x i16> %i.bi, splat (i16 255)
  %i.bk = udiv <16 x i16> %i.bj, splat (i16 3)
  %i.bl = trunc nuw <16 x i16> %i.bk to <16 x i8>
  %i.bm = load i8, ptr %i.ao, align 1, !tbaa !62, !alias.scope !172
  %broadcast.splatinsert284 = insertelement <16 x i8> poison, i8 %i.bm, i64 0
  %broadcast.splat285 = shufflevector <16 x i8> %broadcast.splatinsert284, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bn = zext <16 x i8> %broadcast.splat285 to <16 x i16>
  %i.bo = shl nuw nsw <16 x i16> %i.bn, splat (i16 1)
  %i.bp = add nuw nsw <16 x i16> %i.bo, splat (i16 255)
  %i.bq = udiv <16 x i16> %i.bp, splat (i16 3)
  %i.br = trunc nuw <16 x i16> %i.bq to <16 x i8>
  %i.bs = load i8, ptr %i.ap, align 1, !tbaa !62, !alias.scope !172
  %broadcast.splatinsert286 = insertelement <16 x i8> poison, i8 %i.bs, i64 0
  %broadcast.splat287 = shufflevector <16 x i8> %broadcast.splatinsert286, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bt = zext <16 x i8> %broadcast.splat287 to <16 x i16>
  %i.bu = shl nuw nsw <16 x i16> %i.bt, splat (i16 1)
  %i.bv = add nuw nsw <16 x i16> %i.bu, splat (i16 255)
  %i.bw = udiv <16 x i16> %i.bv, splat (i16 3)
  %invariant.op = add i64 %i.at, %i.au
  %i.bx = shufflevector <16 x i8> %i.bl, <16 x i8> %i.br, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.by = shufflevector <16 x i16> %i.bw, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = trunc nuw <32 x i16> %i.by to <32 x i8>
  %interleaved.vec = shufflevector <32 x i8> %i.bx, <32 x i8> %i.bz, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.ca = mul nsw i64 %.reass, 3
  %i.cb = getelementptr inbounds i8, ptr %i.as, i64 %i.ca
  store <48 x i8> %interleaved.vec, ptr %i.cb, align 1, !alias.scope !175, !noalias !172
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %stbhw__draw_hline.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec288 = and i64 %i.av, -2                   ; 3 uses
  %i.cd = add nsw i64 %n.vec288, %i.at
  %i.ce = load i8, ptr %i.an, align 1, !tbaa !62, !alias.scope !172
  %broadcast.splatinsert289 = insertelement <2 x i8> poison, i8 %i.ce, i64 0
  %broadcast.splat290 = shufflevector <2 x i8> %broadcast.splatinsert289, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cf = zext <2 x i8> %broadcast.splat290 to <2 x i16>
  %i.cg = load i8, ptr %i.ao, align 1, !tbaa !62, !alias.scope !172
  %broadcast.splatinsert291 = insertelement <2 x i8> poison, i8 %i.cg, i64 0
  %broadcast.splat292 = shufflevector <2 x i8> %broadcast.splatinsert291, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ch = zext <2 x i8> %broadcast.splat292 to <2 x i16>
  %i.ci = load i8, ptr %i.ap, align 1, !tbaa !62, !alias.scope !172
  %broadcast.splatinsert293 = insertelement <2 x i8> poison, i8 %i.ci, i64 0
  %broadcast.splat294 = shufflevector <2 x i8> %broadcast.splatinsert293, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cj = zext <2 x i8> %broadcast.splat294 to <2 x i16>
  %i.ck = shl nuw nsw <2 x i16> %i.cj, splat (i16 1)
  %i.cl = add nuw nsw <2 x i16> %i.ck, splat (i16 255)
  %i.cm = udiv <2 x i16> %i.cl, splat (i16 3)
  %invariant.op463 = add i64 %i.at, %i.au
  %i.cn = shufflevector <2 x i16> %i.cf, <2 x i16> %i.ch, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = shl nuw nsw <4 x i16> %i.cn, splat (i16 1)
  %i.cp = add nuw nsw <4 x i16> %i.co, splat (i16 255)
  %i.cq = udiv <4 x i16> %i.cp, splat (i16 3)
  %i.cr = shufflevector <2 x i16> %i.cm, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <4 x i16> %i.cq, <4 x i16> %i.cr, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec296 = trunc nuw <6 x i16> %i.cs to <6 x i8>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index295 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next297, %vec.epilog.vector.body ] ; 2 uses
  %.reass464 = add i64 %index295, %invariant.op463
  %i.ct = mul nsw i64 %.reass464, 3
  %i.cu = getelementptr inbounds i8, ptr %i.as, i64 %i.ct
  store <6 x i8> %interleaved.vec296, ptr %i.cu, align 1, !alias.scope !175, !noalias !172
  %index.next297 = add nuw i64 %index295, 2       ; 2 uses
  %i.cv = icmp eq i64 %index.next297, %n.vec288
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n298 = icmp eq i64 %i.av, %n.vec288
  br i1 %cmp.n298, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv35.i.ph = phi i64 [ %i.at, %iter.check ], [ %i.at, %vector.memcheck ], [ %i.bf, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %vec.epilog.scalar.ph ], [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cw = add nsw i64 %indvars.iv35.i, %i.au
  %i.cx = load i8, ptr %i.an, align 1, !tbaa !62
  %i.cy = zext i8 %i.cx to i16
  %i.cz = shl nuw nsw i16 %i.cy, 1
  %i.da = add nuw nsw i16 %i.cz, 255
  %i.db = udiv i16 %i.da, 3
  %i.dc = trunc nuw i16 %i.db to i8
  %i.dd = load <2 x i8>, ptr %i.ao, align 1, !tbaa !62
  %i.de = zext <2 x i8> %i.dd to <2 x i16>
  %i.df = shl nuw nsw <2 x i16> %i.de, splat (i16 1)
  %i.dg = add nuw nsw <2 x i16> %i.df, splat (i16 255)
  %i.dh = udiv <2 x i16> %i.dg, splat (i16 3)     ; 2 uses
  %i.di = bitcast <2 x i16> %i.dh to <4 x i8>
  %i.dj = extractelement <4 x i8> %i.di, i64 0
  %i.dk = bitcast <2 x i16> %i.dh to <4 x i8>
  %i.dl = extractelement <4 x i8> %i.dk, i64 2
  %i.dm = mul nsw i64 %i.cw, 3
  %i.dn = getelementptr inbounds i8, ptr %i.as, i64 %i.dm ; 3 uses
  store i8 %i.dc, ptr %i.dn, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.dj, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.dl, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph, !llvm.loop !179

stbhw__draw_hline.exit:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.dp = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.dq = add i32 %i.d, %1                        ; 2 uses
  %i.dr = add i32 %i.dq, 1                        ; 2 uses
  %i.ds = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.l
  %i.dt = sext i32 %5 to i64                      ; 4 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i157, label %._crit_edge.i144

.lr.ph.i157:                                      ; preds = %stbhw__draw_hline.exit
  %i.dw = mul nsw i32 %i.dp, %2
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.do, i64 %i.dx ; 3 uses
  %i.dz = sext i32 %i.dr to i64                   ; 3 uses
  %wide.trip.count.i158 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter434 = and i64 %wide.trip.count.i158, 1
  %i.ea = icmp eq i32 %i.d, 1
  br i1 %i.ea, label %.epil.preheader433, label %.lr.ph.i157.new

.lr.ph.i157.new:                                  ; preds = %.lr.ph.i157
  %unroll_iter437 = and i64 %wide.trip.count.i158, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i157.new
  %indvars.iv.i159 = phi i64 [ 0, %.lr.ph.i157.new ], [ %indvars.iv.next.i160.1, %bb.c ] ; 3 uses
  %niter438 = phi i64 [ 0, %.lr.ph.i157.new ], [ %niter438.next.1, %bb.c ]
  %i.eb = add nsw i64 %indvars.iv.i159, %i.dz
  %i.ec = mul nsw i64 %i.eb, 3
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ed, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i160 = or disjoint i64 %indvars.iv.i159, 1
  %i.ee = add nsw i64 %indvars.iv.next.i160, %i.dz
  %i.ef = mul nsw i64 %i.ee, 3
  %i.eg = getelementptr inbounds i8, ptr %i.dy, i64 %i.ef
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.eg, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i160.1 = add nuw nsw i64 %indvars.iv.i159, 2 ; 2 uses
  %niter438.next.1 = add i64 %niter438, 2         ; 2 uses
  %niter438.ncmp.1 = icmp eq i64 %niter438.next.1, %unroll_iter437
  br i1 %niter438.ncmp.1, label %._crit_edge.i144.loopexit.unr-lcssa, label %bb.c, !llvm.loop !112

._crit_edge.i144.loopexit.unr-lcssa:              ; preds = %bb.c
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod435.not, label %._crit_edge.i144, label %.epil.preheader433

.epil.preheader433:                               ; preds = %._crit_edge.i144.loopexit.unr-lcssa, %.lr.ph.i157
  %indvars.iv.i159.epil.init = phi i64 [ 0, %.lr.ph.i157 ], [ %indvars.iv.next.i160.1, %._crit_edge.i144.loopexit.unr-lcssa ]
  %lcmp.mod436 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod436)
  %i.eh = add nsw i64 %indvars.iv.i159.epil.init, %i.dz
  %i.ei = mul nsw i64 %i.eh, 3
  %i.ej = getelementptr inbounds i8, ptr %i.dy, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ej, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i144

._crit_edge.i144:                                 ; preds = %.epil.preheader433, %._crit_edge.i144.loopexit.unr-lcssa, %stbhw__draw_hline.exit
  br i1 %i.ai, label %.thread.i154, label %iter.check325

.thread.i154:                                     ; preds = %._crit_edge.i144
  %i.ek = sdiv i32 %i.d, 2                        ; 2 uses
  %i.el = add nsw i32 %i.ek, -1
  %i.em = and i32 %i.d, 1
  %spec.select.v.i155 = add nuw nsw i32 %i.em, 1
  %spec.select.i156 = add nsw i32 %spec.select.v.i155, %i.ek
  br label %iter.check325

iter.check325:                                    ; preds = %._crit_edge.i144, %.thread.i154
  %.044.i146 = phi i32 [ %spec.select.i156, %.thread.i154 ], [ %i.r, %._crit_edge.i144 ]
  %.02643.i147 = phi i32 [ %i.el, %.thread.i154 ], [ %i.p, %._crit_edge.i144 ]
  %i.en = sext i32 %i.dv to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 72), i64 %i.en ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 2 ; 2 uses
  %i.er = mul nsw i32 %i.dp, %2
  %i.es = sext i32 %i.er to i64                   ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.do, i64 %i.es ; 3 uses
  %i.eu = sext i32 %.02643.i147 to i64            ; 8 uses
  %i.ev = sext i32 %i.dr to i64                   ; 13 uses
  %wide.trip.count38.i148 = sext i32 %.044.i146 to i64 ; 3 uses
  %i.ew = sub nsw i64 %wide.trip.count38.i148, %i.eu ; 7 uses
  %min.iters.check307 = icmp ult i64 %i.ew, 2
  br i1 %min.iters.check307, label %vec.epilog.scalar.ph326.preheader, label %vector.memcheck300

vector.memcheck300:                               ; preds = %iter.check325
  %i.ex = add nsw i64 %i.eu, %i.ev
  %i.ey = mul nsw i64 %i.ex, 3
  %i.ez = getelementptr i8, ptr %i.do, i64 %i.ey
  %scevgep301 = getelementptr i8, ptr %i.ez, i64 %i.es
  %i.fa = add nsw i64 %wide.trip.count38.i148, %i.ev
  %i.fb = mul nsw i64 %i.fa, 3
  %i.fc = getelementptr i8, ptr %i.do, i64 %i.fb
  %scevgep302 = getelementptr i8, ptr %i.fc, i64 %i.es
  %i.fd = mul nsw i64 %i.en, 3
  %i.fe = getelementptr i8, ptr @stbhw__color, i64 %i.fd
  %scevgep303 = getelementptr i8, ptr %i.fe, i64 75
  %bound0304 = icmp ult ptr %scevgep301, %scevgep303
  %bound1305 = icmp ult ptr %i.eo, %scevgep302
  %found.conflict306 = and i1 %bound0304, %bound1305
  br i1 %found.conflict306, label %vec.epilog.scalar.ph326.preheader, label %vector.main.loop.iter.check308

vector.main.loop.iter.check308:                   ; preds = %vector.memcheck300
  %min.iters.check309 = icmp ult i64 %i.ew, 16
  br i1 %min.iters.check309, label %vec.epilog.ph329, label %vector.ph310

vector.ph310:                                     ; preds = %vector.main.loop.iter.check308
  %i.ff = and i64 %i.ew, 14
  %n.vec311 = and i64 %i.ew, -16                  ; 4 uses
  %i.fg = add nsw i64 %n.vec311, %i.eu
  %i.fh = load i8, ptr %i.eo, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert312 = insertelement <16 x i8> poison, i8 %i.fh, i64 0
  %broadcast.splat313 = shufflevector <16 x i8> %broadcast.splatinsert312, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fi = zext <16 x i8> %broadcast.splat313 to <16 x i16>
  %i.fj = shl nuw nsw <16 x i16> %i.fi, splat (i16 1)
  %i.fk = add nuw nsw <16 x i16> %i.fj, splat (i16 255)
  %i.fl = udiv <16 x i16> %i.fk, splat (i16 3)
  %i.fm = trunc nuw <16 x i16> %i.fl to <16 x i8>
  %i.fn = load i8, ptr %i.ep, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert314 = insertelement <16 x i8> poison, i8 %i.fn, i64 0
  %broadcast.splat315 = shufflevector <16 x i8> %broadcast.splatinsert314, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fo = zext <16 x i8> %broadcast.splat315 to <16 x i16>
  %i.fp = shl nuw nsw <16 x i16> %i.fo, splat (i16 1)
  %i.fq = add nuw nsw <16 x i16> %i.fp, splat (i16 255)
  %i.fr = udiv <16 x i16> %i.fq, splat (i16 3)
  %i.fs = trunc nuw <16 x i16> %i.fr to <16 x i8>
  %i.ft = load i8, ptr %i.eq, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert316 = insertelement <16 x i8> poison, i8 %i.ft, i64 0
  %broadcast.splat317 = shufflevector <16 x i8> %broadcast.splatinsert316, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fu = zext <16 x i8> %broadcast.splat317 to <16 x i16>
  %i.fv = shl nuw nsw <16 x i16> %i.fu, splat (i16 1)
  %i.fw = add nuw nsw <16 x i16> %i.fv, splat (i16 255)
  %i.fx = udiv <16 x i16> %i.fw, splat (i16 3)
  %invariant.op465 = add i64 %i.eu, %i.ev
  %i.fy = shufflevector <16 x i8> %i.fm, <16 x i8> %i.fs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fz = shufflevector <16 x i16> %i.fx, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = trunc nuw <32 x i16> %i.fz to <32 x i8>
  %interleaved.vec320 = shufflevector <32 x i8> %i.fy, <32 x i8> %i.ga, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph310
  %index319 = phi i64 [ 0, %vector.ph310 ], [ %index.next321, %vector.body318 ] ; 2 uses
  %.reass466 = add i64 %index319, %invariant.op465
  %i.gb = mul nsw i64 %.reass466, 3
  %i.gc = getelementptr inbounds i8, ptr %i.et, i64 %i.gb
  store <48 x i8> %interleaved.vec320, ptr %i.gc, align 1, !alias.scope !183, !noalias !180
  %index.next321 = add nuw i64 %index319, 16      ; 2 uses
  %i.gd = icmp eq i64 %index.next321, %n.vec311
  br i1 %i.gd, label %middle.block322, label %vector.body318, !llvm.loop !185

middle.block322:                                  ; preds = %vector.body318
  %cmp.n323 = icmp eq i64 %i.ew, %n.vec311
  br i1 %cmp.n323, label %stbhw__draw_hline.exit162, label %vec.epilog.iter.check327

vec.epilog.iter.check327:                         ; preds = %middle.block322
  %min.epilog.iters.check328 = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check328, label %vec.epilog.scalar.ph326.preheader, label %vec.epilog.ph329, !prof !119

vec.epilog.ph329:                                 ; preds = %vector.main.loop.iter.check308, %vec.epilog.iter.check327
  %vec.epilog.resume.val324 = phi i64 [ %n.vec311, %vec.epilog.iter.check327 ], [ 0, %vector.main.loop.iter.check308 ]
  %n.vec330 = and i64 %i.ew, -2                   ; 3 uses
  %i.ge = add nsw i64 %n.vec330, %i.eu
  %i.gf = load i8, ptr %i.eo, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert331 = insertelement <2 x i8> poison, i8 %i.gf, i64 0
  %broadcast.splat332 = shufflevector <2 x i8> %broadcast.splatinsert331, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.gg = zext <2 x i8> %broadcast.splat332 to <2 x i16>
  %i.gh = load i8, ptr %i.ep, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert333 = insertelement <2 x i8> poison, i8 %i.gh, i64 0
  %broadcast.splat334 = shufflevector <2 x i8> %broadcast.splatinsert333, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.gi = zext <2 x i8> %broadcast.splat334 to <2 x i16>
  %i.gj = load i8, ptr %i.eq, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert335 = insertelement <2 x i8> poison, i8 %i.gj, i64 0
  %broadcast.splat336 = shufflevector <2 x i8> %broadcast.splatinsert335, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.gk = zext <2 x i8> %broadcast.splat336 to <2 x i16>
  %i.gl = shl nuw nsw <2 x i16> %i.gk, splat (i16 1)
  %i.gm = add nuw nsw <2 x i16> %i.gl, splat (i16 255)
  %i.gn = udiv <2 x i16> %i.gm, splat (i16 3)
  %invariant.op467 = add i64 %i.eu, %i.ev
  %i.go = shufflevector <2 x i16> %i.gg, <2 x i16> %i.gi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gp = shl nuw nsw <4 x i16> %i.go, splat (i16 1)
  %i.gq = add nuw nsw <4 x i16> %i.gp, splat (i16 255)
  %i.gr = udiv <4 x i16> %i.gq, splat (i16 3)
  %i.gs = shufflevector <2 x i16> %i.gn, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gt = shufflevector <4 x i16> %i.gr, <4 x i16> %i.gs, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec339 = trunc nuw <6 x i16> %i.gt to <6 x i8>
  br label %vec.epilog.vector.body337

vec.epilog.vector.body337:                        ; preds = %vec.epilog.vector.body337, %vec.epilog.ph329
  %index338 = phi i64 [ %vec.epilog.resume.val324, %vec.epilog.ph329 ], [ %index.next340, %vec.epilog.vector.body337 ] ; 2 uses
  %.reass468 = add i64 %index338, %invariant.op467
  %i.gu = mul nsw i64 %.reass468, 3
  %i.gv = getelementptr inbounds i8, ptr %i.et, i64 %i.gu
  store <6 x i8> %interleaved.vec339, ptr %i.gv, align 1, !alias.scope !183, !noalias !180
  %index.next340 = add nuw i64 %index338, 2       ; 2 uses
  %i.gw = icmp eq i64 %index.next340, %n.vec330
  br i1 %i.gw, label %vec.epilog.middle.block341, label %vec.epilog.vector.body337, !llvm.loop !186

vec.epilog.middle.block341:                       ; preds = %vec.epilog.vector.body337
  %cmp.n342 = icmp eq i64 %i.ew, %n.vec330
  br i1 %cmp.n342, label %stbhw__draw_hline.exit162, label %vec.epilog.scalar.ph326.preheader

vec.epilog.scalar.ph326.preheader:                ; preds = %vector.memcheck300, %iter.check325, %vec.epilog.iter.check327, %vec.epilog.middle.block341
  %indvars.iv35.i149.ph = phi i64 [ %i.eu, %iter.check325 ], [ %i.eu, %vector.memcheck300 ], [ %i.fg, %vec.epilog.iter.check327 ], [ %i.ge, %vec.epilog.middle.block341 ]
  br label %vec.epilog.scalar.ph326

vec.epilog.scalar.ph326:                          ; preds = %vec.epilog.scalar.ph326.preheader, %vec.epilog.scalar.ph326
  %indvars.iv35.i149 = phi i64 [ %indvars.iv.next36.i152, %vec.epilog.scalar.ph326 ], [ %indvars.iv35.i149.ph, %vec.epilog.scalar.ph326.preheader ] ; 2 uses
  %i.gx = add nsw i64 %indvars.iv35.i149, %i.ev
  %i.gy = load i8, ptr %i.eo, align 1, !tbaa !62
  %i.gz = zext i8 %i.gy to i16
  %i.ha = shl nuw nsw i16 %i.gz, 1
  %i.hb = add nuw nsw i16 %i.ha, 255
  %i.hc = udiv i16 %i.hb, 3
  %i.hd = trunc nuw i16 %i.hc to i8
  %i.he = load <2 x i8>, ptr %i.ep, align 1, !tbaa !62
  %i.hf = zext <2 x i8> %i.he to <2 x i16>
  %i.hg = shl nuw nsw <2 x i16> %i.hf, splat (i16 1)
  %i.hh = add nuw nsw <2 x i16> %i.hg, splat (i16 255)
  %i.hi = udiv <2 x i16> %i.hh, splat (i16 3)     ; 2 uses
  %i.hj = bitcast <2 x i16> %i.hi to <4 x i8>
  %i.hk = extractelement <4 x i8> %i.hj, i64 0
  %i.hl = bitcast <2 x i16> %i.hi to <4 x i8>
  %i.hm = extractelement <4 x i8> %i.hl, i64 2
  %i.hn = mul nsw i64 %i.gx, 3
  %i.ho = getelementptr inbounds i8, ptr %i.et, i64 %i.hn ; 3 uses
  store i8 %i.hd, ptr %i.ho, align 1
  %.sroa.4.0..sroa_idx.i.i150 = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  store i8 %i.hk, ptr %.sroa.4.0..sroa_idx.i.i150, align 1
  %.sroa.5.0..sroa_idx.i.i151 = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  store i8 %i.hm, ptr %.sroa.5.0..sroa_idx.i.i151, align 1
  %indvars.iv.next36.i152 = add nsw i64 %indvars.iv35.i149, 1 ; 2 uses
  %exitcond39.not.i153 = icmp eq i64 %indvars.iv.next36.i152, %wide.trip.count38.i148
  br i1 %exitcond39.not.i153, label %stbhw__draw_hline.exit162, label %vec.epilog.scalar.ph326, !llvm.loop !187

stbhw__draw_hline.exit162:                        ; preds = %vec.epilog.scalar.ph326, %vec.epilog.middle.block341, %middle.block322
  %i.hp = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.hq = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.hr = add nsw i32 %2, 1                       ; 2 uses
  %i.hs = sext i32 %6 to i64                      ; 4 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i170, label %._crit_edge.i163

.lr.ph.i170:                                      ; preds = %stbhw__draw_hline.exit162
  %i.hv = mul nsw i32 %1, 3
  %i.hw = sext i32 %i.hv to i64
  %invariant.gep.i = getelementptr i8, ptr %i.hp, i64 %i.hw ; 3 uses
  %i.hx = sext i32 %i.hr to i64                   ; 3 uses
  %i.hy = sext i32 %i.hq to i64                   ; 3 uses
  %wide.trip.count.i171 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter440 = and i64 %wide.trip.count.i171, 1
  %i.hz = icmp eq i32 %i.d, 1
  br i1 %i.hz, label %.epil.preheader439, label %.lr.ph.i170.new

.lr.ph.i170.new:                                  ; preds = %.lr.ph.i170
  %unroll_iter443 = and i64 %wide.trip.count.i171, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i170.new
  %indvars.iv.i172 = phi i64 [ 0, %.lr.ph.i170.new ], [ %indvars.iv.next.i173.1, %bb.d ] ; 3 uses
  %niter444 = phi i64 [ 0, %.lr.ph.i170.new ], [ %niter444.next.1, %bb.d ]
  %i.ia = add nsw i64 %indvars.iv.i172, %i.hx
  %i.ib = mul nsw i64 %i.ia, %i.hy
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ib
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i173 = or disjoint i64 %indvars.iv.i172, 1
  %i.ic = add nsw i64 %indvars.iv.next.i173, %i.hx
  %i.id = mul nsw i64 %i.ic, %i.hy
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.id
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i173.1 = add nuw nsw i64 %indvars.iv.i172, 2 ; 2 uses
  %niter444.next.1 = add i64 %niter444, 2         ; 2 uses
  %niter444.ncmp.1 = icmp eq i64 %niter444.next.1, %unroll_iter443
  br i1 %niter444.ncmp.1, label %._crit_edge.i163.loopexit.unr-lcssa, label %bb.d, !llvm.loop !122

._crit_edge.i163.loopexit.unr-lcssa:              ; preds = %bb.d
  %lcmp.mod441.not = icmp eq i64 %xtraiter440, 0
  br i1 %lcmp.mod441.not, label %._crit_edge.i163, label %.epil.preheader439

.epil.preheader439:                               ; preds = %._crit_edge.i163.loopexit.unr-lcssa, %.lr.ph.i170
  %indvars.iv.i172.epil.init = phi i64 [ 0, %.lr.ph.i170 ], [ %indvars.iv.next.i173.1, %._crit_edge.i163.loopexit.unr-lcssa ]
  %lcmp.mod442 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod442)
  %i.ie = add nsw i64 %indvars.iv.i172.epil.init, %i.hx
  %i.if = mul nsw i64 %i.ie, %i.hy
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %i.if
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i163

._crit_edge.i163:                                 ; preds = %.epil.preheader439, %._crit_edge.i163.loopexit.unr-lcssa, %stbhw__draw_hline.exit162
  br i1 %i.ai, label %.thread.i167, label %.lr.ph32.i164

.thread.i167:                                     ; preds = %._crit_edge.i163
  %i.ig = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ih = add nsw i32 %i.ig, -1
  %i.ii = and i32 %i.d, 1
  %spec.select.v.i168 = add nuw nsw i32 %i.ii, 1
  %spec.select.i169 = add nsw i32 %spec.select.v.i168, %i.ig
  br label %.lr.ph32.i164

.lr.ph32.i164:                                    ; preds = %._crit_edge.i163, %.thread.i167
  %.046.i = phi i32 [ %spec.select.i169, %.thread.i167 ], [ %i.r, %._crit_edge.i163 ]
  %.02645.i = phi i32 [ %i.ih, %.thread.i167 ], [ %i.p, %._crit_edge.i163 ]
  %i.ij = sext i32 %i.hu to i64
  %i.ik = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 24), i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %i.im = mul nsw i32 %1, 3
  %i.in = sext i32 %i.im to i64                   ; 3 uses
  %invariant.gep34.i = getelementptr i8, ptr %i.hp, i64 %i.in
  %i.io = sext i32 %.02645.i to i64
  %i.ip = sext i32 %i.hr to i64                   ; 11 uses
  %i.iq = sext i32 %i.hq to i64
  %wide.trip.count40.i = sext i32 %.046.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph32.i164
  %indvars.iv37.i = phi i64 [ %i.io, %.lr.ph32.i164 ], [ %indvars.iv.next38.i, %bb.e ] ; 2 uses
  %i.ir = add nsw i64 %indvars.iv37.i, %i.ip
  %i.is = load i8, ptr %i.ik, align 1, !tbaa !62
  %i.it = zext i8 %i.is to i16
  %i.iu = shl nuw nsw i16 %i.it, 1
  %i.iv = add nuw nsw i16 %i.iu, 255
  %i.iw = udiv i16 %i.iv, 3
  %i.ix = trunc nuw i16 %i.iw to i8
  %i.iy = load <2 x i8>, ptr %i.il, align 1, !tbaa !62
  %i.iz = zext <2 x i8> %i.iy to <2 x i16>
  %i.ja = shl nuw nsw <2 x i16> %i.iz, splat (i16 1)
  %i.jb = add nuw nsw <2 x i16> %i.ja, splat (i16 255)
  %i.jc = udiv <2 x i16> %i.jb, splat (i16 3)     ; 2 uses
  %i.jd = bitcast <2 x i16> %i.jc to <4 x i8>
  %i.je = extractelement <4 x i8> %i.jd, i64 0
  %i.jf = bitcast <2 x i16> %i.jc to <4 x i8>
  %i.jg = extractelement <4 x i8> %i.jf, i64 2
  %i.jh = mul nsw i64 %i.ir, %i.iq
  %gep35.i = getelementptr i8, ptr %invariant.gep34.i, i64 %i.jh ; 3 uses
  store i8 %i.ix, ptr %gep35.i, align 1
  %.sroa.4.0..sroa_idx.i.i165 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 1
  store i8 %i.je, ptr %.sroa.4.0..sroa_idx.i.i165, align 1
  %.sroa.5.0..sroa_idx.i.i166 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 2
  store i8 %i.jg, ptr %.sroa.5.0..sroa_idx.i.i166, align 1
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count40.i
  br i1 %exitcond41.not.i, label %stbhw__draw_vline.exit, label %bb.e, !llvm.loop !123

stbhw__draw_vline.exit:                           ; preds = %bb.e
  %i.ji = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.jj = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.jk = shl nsw i32 %i.d, 1                     ; 7 uses
  %i.jl = add i32 %i.i, %i.jk                     ; 2 uses
  %i.jm = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.dt
  %i.jn = sext i32 %8 to i64                      ; 4 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i190, label %._crit_edge.i175

.lr.ph.i190:                                      ; preds = %stbhw__draw_vline.exit
  %i.jq = mul nsw i32 %i.jl, 3
  %i.jr = sext i32 %i.jq to i64
  %invariant.gep.i191 = getelementptr i8, ptr %i.ji, i64 %i.jr ; 3 uses
  %i.js = sext i32 %i.jj to i64                   ; 3 uses
  %wide.trip.count.i192 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter446 = and i64 %wide.trip.count.i192, 1
  %i.jt = icmp eq i32 %i.d, 1
  br i1 %i.jt, label %.epil.preheader445, label %.lr.ph.i190.new

.lr.ph.i190.new:                                  ; preds = %.lr.ph.i190
  %unroll_iter449 = and i64 %wide.trip.count.i192, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i190.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i190.new ], [ %indvars.iv.next.i195.1, %bb.f ] ; 3 uses
  %niter450 = phi i64 [ 0, %.lr.ph.i190.new ], [ %niter450.next.1, %bb.f ]
  %i.ju = add nsw i64 %indvars.iv.i193, %i.ip
  %i.jv = mul nsw i64 %i.ju, %i.js
  %gep.i194 = getelementptr i8, ptr %invariant.gep.i191, i64 %i.jv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i194, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i195 = or disjoint i64 %indvars.iv.i193, 1
  %i.jw = add nsw i64 %indvars.iv.next.i195, %i.ip
  %i.jx = mul nsw i64 %i.jw, %i.js
  %gep.i194.1 = getelementptr i8, ptr %invariant.gep.i191, i64 %i.jx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i194.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i195.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter450.next.1 = add i64 %niter450, 2         ; 2 uses
  %niter450.ncmp.1 = icmp eq i64 %niter450.next.1, %unroll_iter449
  br i1 %niter450.ncmp.1, label %._crit_edge.i175.loopexit.unr-lcssa, label %bb.f, !llvm.loop !122

._crit_edge.i175.loopexit.unr-lcssa:              ; preds = %bb.f
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %._crit_edge.i175, label %.epil.preheader445

.epil.preheader445:                               ; preds = %._crit_edge.i175.loopexit.unr-lcssa, %.lr.ph.i190
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i190 ], [ %indvars.iv.next.i195.1, %._crit_edge.i175.loopexit.unr-lcssa ]
  %lcmp.mod448 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod448)
  %i.jy = add nsw i64 %indvars.iv.i193.epil.init, %i.ip
  %i.jz = mul nsw i64 %i.jy, %i.js
  %gep.i194.epil = getelementptr i8, ptr %invariant.gep.i191, i64 %i.jz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i194.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i175

._crit_edge.i175:                                 ; preds = %.epil.preheader445, %._crit_edge.i175.loopexit.unr-lcssa, %stbhw__draw_vline.exit
  br i1 %i.ai, label %.thread.i187, label %.lr.ph32.i176

.thread.i187:                                     ; preds = %._crit_edge.i175
  %i.ka = sdiv i32 %i.d, 2                        ; 2 uses
  %i.kb = add nsw i32 %i.ka, -1
  %i.kc = and i32 %i.d, 1
  %spec.select.v.i188 = add nuw nsw i32 %i.kc, 1
  %spec.select.i189 = add nsw i32 %spec.select.v.i188, %i.ka
  br label %.lr.ph32.i176

.lr.ph32.i176:                                    ; preds = %._crit_edge.i175, %.thread.i187
  %.046.i177 = phi i32 [ %spec.select.i189, %.thread.i187 ], [ %i.r, %._crit_edge.i175 ]
  %.02645.i178 = phi i32 [ %i.kb, %.thread.i187 ], [ %i.p, %._crit_edge.i175 ]
  %i.kd = sext i32 %i.jp to i64
  %i.ke = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 96), i64 %i.kd ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %i.kg = mul nsw i32 %i.jl, 3
  %i.kh = sext i32 %i.kg to i64                   ; 3 uses
  %invariant.gep34.i179 = getelementptr i8, ptr %i.ji, i64 %i.kh
  %i.ki = sext i32 %.02645.i178 to i64
  %i.kj = sext i32 %i.jj to i64
  %wide.trip.count40.i180 = sext i32 %.046.i177 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph32.i176
  %indvars.iv37.i181 = phi i64 [ %i.ki, %.lr.ph32.i176 ], [ %indvars.iv.next38.i185, %bb.g ] ; 2 uses
  %i.kk = add nsw i64 %indvars.iv37.i181, %i.ip
  %i.kl = load i8, ptr %i.ke, align 1, !tbaa !62
  %i.km = zext i8 %i.kl to i16
  %i.kn = shl nuw nsw i16 %i.km, 1
  %i.ko = add nuw nsw i16 %i.kn, 255
  %i.kp = udiv i16 %i.ko, 3
  %i.kq = trunc nuw i16 %i.kp to i8
  %i.kr = load <2 x i8>, ptr %i.kf, align 1, !tbaa !62
  %i.ks = zext <2 x i8> %i.kr to <2 x i16>
  %i.kt = shl nuw nsw <2 x i16> %i.ks, splat (i16 1)
  %i.ku = add nuw nsw <2 x i16> %i.kt, splat (i16 255)
  %i.kv = udiv <2 x i16> %i.ku, splat (i16 3)     ; 2 uses
  %i.kw = bitcast <2 x i16> %i.kv to <4 x i8>
  %i.kx = extractelement <4 x i8> %i.kw, i64 0
  %i.ky = bitcast <2 x i16> %i.kv to <4 x i8>
  %i.kz = extractelement <4 x i8> %i.ky, i64 2
  %i.la = mul nsw i64 %i.kk, %i.kj
  %gep35.i182 = getelementptr i8, ptr %invariant.gep34.i179, i64 %i.la ; 3 uses
  store i8 %i.kq, ptr %gep35.i182, align 1
  %.sroa.4.0..sroa_idx.i.i183 = getelementptr inbounds nuw i8, ptr %gep35.i182, i64 1
  store i8 %i.kx, ptr %.sroa.4.0..sroa_idx.i.i183, align 1
  %.sroa.5.0..sroa_idx.i.i184 = getelementptr inbounds nuw i8, ptr %gep35.i182, i64 2
  store i8 %i.kz, ptr %.sroa.5.0..sroa_idx.i.i184, align 1
  %indvars.iv.next38.i185 = add nsw i64 %indvars.iv37.i181, 1 ; 2 uses
  %exitcond41.not.i186 = icmp eq i64 %indvars.iv.next38.i185, %wide.trip.count40.i180
  br i1 %exitcond41.not.i186, label %stbhw__draw_vline.exit197, label %bb.g, !llvm.loop !123

stbhw__draw_vline.exit197:                        ; preds = %bb.g
  %i.lb = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.lc = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.ld = add i32 %i.d, 1                         ; 6 uses
  %i.le = add i32 %i.ld, %2                       ; 8 uses
  %i.lf = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.hs
  %i.lg = sext i32 %7 to i64                      ; 4 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i211, label %._crit_edge.i198

.lr.ph.i211:                                      ; preds = %stbhw__draw_vline.exit197
  %i.lj = mul nsw i32 %i.lc, %i.le
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.lb, i64 %i.lk ; 3 uses
  %wide.trip.count.i212 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter452 = and i64 %wide.trip.count.i212, 1
  %i.lm = icmp eq i32 %i.d, 1
  br i1 %i.lm, label %.epil.preheader451, label %.lr.ph.i211.new

.lr.ph.i211.new:                                  ; preds = %.lr.ph.i211
  %unroll_iter455 = and i64 %wide.trip.count.i212, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i211.new
  %indvars.iv.i213 = phi i64 [ 0, %.lr.ph.i211.new ], [ %indvars.iv.next.i214.1, %bb.h ] ; 3 uses
  %niter456 = phi i64 [ 0, %.lr.ph.i211.new ], [ %niter456.next.1, %bb.h ]
  %i.ln = add nsw i64 %indvars.iv.i213, %i.au
  %i.lo = mul nsw i64 %i.ln, 3
  %i.lp = getelementptr inbounds i8, ptr %i.ll, i64 %i.lo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lp, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i214 = or disjoint i64 %indvars.iv.i213, 1
  %i.lq = add nsw i64 %indvars.iv.next.i214, %i.au
  %i.lr = mul nsw i64 %i.lq, 3
  %i.ls = getelementptr inbounds i8, ptr %i.ll, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ls, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i214.1 = add nuw nsw i64 %indvars.iv.i213, 2 ; 2 uses
  %niter456.next.1 = add i64 %niter456, 2         ; 2 uses
  %niter456.ncmp.1 = icmp eq i64 %niter456.next.1, %unroll_iter455
  br i1 %niter456.ncmp.1, label %._crit_edge.i198.loopexit.unr-lcssa, label %bb.h, !llvm.loop !112

._crit_edge.i198.loopexit.unr-lcssa:              ; preds = %bb.h
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %._crit_edge.i198, label %.epil.preheader451

.epil.preheader451:                               ; preds = %._crit_edge.i198.loopexit.unr-lcssa, %.lr.ph.i211
  %indvars.iv.i213.epil.init = phi i64 [ 0, %.lr.ph.i211 ], [ %indvars.iv.next.i214.1, %._crit_edge.i198.loopexit.unr-lcssa ]
  %lcmp.mod454 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod454)
  %i.lt = add nsw i64 %indvars.iv.i213.epil.init, %i.au
  %i.lu = mul nsw i64 %i.lt, 3
  %i.lv = getelementptr inbounds i8, ptr %i.ll, i64 %i.lu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lv, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i198

._crit_edge.i198:                                 ; preds = %.epil.preheader451, %._crit_edge.i198.loopexit.unr-lcssa, %stbhw__draw_vline.exit197
  br i1 %i.ai, label %.thread.i208, label %iter.check369

.thread.i208:                                     ; preds = %._crit_edge.i198
  %i.lw = sdiv i32 %i.d, 2                        ; 2 uses
  %i.lx = add nsw i32 %i.lw, -1
  %i.ly = and i32 %i.d, 1
  %spec.select.v.i209 = add nuw nsw i32 %i.ly, 1
  %spec.select.i210 = add nsw i32 %spec.select.v.i209, %i.lw
  br label %iter.check369

iter.check369:                                    ; preds = %._crit_edge.i198, %.thread.i208
  %.044.i200 = phi i32 [ %spec.select.i210, %.thread.i208 ], [ %i.r, %._crit_edge.i198 ]
  %.02643.i201 = phi i32 [ %i.lx, %.thread.i208 ], [ %i.p, %._crit_edge.i198 ]
  %i.lz = sext i32 %i.li to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [3 x i8], ptr @stbhw__color, i64 %i.lz ; 6 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 2 ; 2 uses
  %i.md = mul nsw i32 %i.lc, %i.le
  %i.me = sext i32 %i.md to i64                   ; 3 uses
  %i.mf = getelementptr inbounds i8, ptr %i.lb, i64 %i.me ; 3 uses
  %i.mg = sext i32 %.02643.i201 to i64            ; 8 uses
  %wide.trip.count38.i202 = sext i32 %.044.i200 to i64 ; 3 uses
  %i.mh = sub nsw i64 %wide.trip.count38.i202, %i.mg ; 7 uses
  %min.iters.check351 = icmp ult i64 %i.mh, 2
  br i1 %min.iters.check351, label %vec.epilog.scalar.ph370.preheader, label %vector.memcheck344

vector.memcheck344:                               ; preds = %iter.check369
  %i.mi = add nsw i64 %i.mg, %i.au
  %i.mj = mul nsw i64 %i.mi, 3
  %i.mk = getelementptr i8, ptr %i.lb, i64 %i.mj
  %scevgep345 = getelementptr i8, ptr %i.mk, i64 %i.me
  %i.ml = add nsw i64 %wide.trip.count38.i202, %i.au
  %i.mm = mul nsw i64 %i.ml, 3
  %i.mn = getelementptr i8, ptr %i.lb, i64 %i.mm
  %scevgep346 = getelementptr i8, ptr %i.mn, i64 %i.me
  %i.mo = mul nsw i64 %i.lz, 3
  %i.mp = getelementptr i8, ptr @stbhw__color, i64 %i.mo
  %scevgep347 = getelementptr i8, ptr %i.mp, i64 3
  %bound0348 = icmp ult ptr %scevgep345, %scevgep347
  %bound1349 = icmp ult ptr %i.ma, %scevgep346
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %vec.epilog.scalar.ph370.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck344
  %min.iters.check353 = icmp ult i64 %i.mh, 16
  br i1 %min.iters.check353, label %vec.epilog.ph373, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.mq = and i64 %i.mh, 14
  %n.vec355 = and i64 %i.mh, -16                  ; 4 uses
  %i.mr = add nsw i64 %n.vec355, %i.mg
  %i.ms = load i8, ptr %i.ma, align 1, !tbaa !62, !alias.scope !188
  %broadcast.splatinsert356 = insertelement <16 x i8> poison, i8 %i.ms, i64 0
  %broadcast.splat357 = shufflevector <16 x i8> %broadcast.splatinsert356, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mt = zext <16 x i8> %broadcast.splat357 to <16 x i16>
  %i.mu = shl nuw nsw <16 x i16> %i.mt, splat (i16 1)
  %i.mv = add nuw nsw <16 x i16> %i.mu, splat (i16 255)
  %i.mw = udiv <16 x i16> %i.mv, splat (i16 3)
  %i.mx = trunc nuw <16 x i16> %i.mw to <16 x i8>
  %i.my = load i8, ptr %i.mb, align 1, !tbaa !62, !alias.scope !188
  %broadcast.splatinsert358 = insertelement <16 x i8> poison, i8 %i.my, i64 0
  %broadcast.splat359 = shufflevector <16 x i8> %broadcast.splatinsert358, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mz = zext <16 x i8> %broadcast.splat359 to <16 x i16>
  %i.na = shl nuw nsw <16 x i16> %i.mz, splat (i16 1)
  %i.nb = add nuw nsw <16 x i16> %i.na, splat (i16 255)
  %i.nc = udiv <16 x i16> %i.nb, splat (i16 3)
  %i.nd = trunc nuw <16 x i16> %i.nc to <16 x i8>
  %i.ne = load i8, ptr %i.mc, align 1, !tbaa !62, !alias.scope !188
  %broadcast.splatinsert360 = insertelement <16 x i8> poison, i8 %i.ne, i64 0
  %broadcast.splat361 = shufflevector <16 x i8> %broadcast.splatinsert360, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.nf = zext <16 x i8> %broadcast.splat361 to <16 x i16>
  %i.ng = shl nuw nsw <16 x i16> %i.nf, splat (i16 1)
  %i.nh = add nuw nsw <16 x i16> %i.ng, splat (i16 255)
  %i.ni = udiv <16 x i16> %i.nh, splat (i16 3)
  %invariant.op469 = add i64 %i.mg, %i.au
  %i.nj = shufflevector <16 x i8> %i.mx, <16 x i8> %i.nd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.nk = shufflevector <16 x i16> %i.ni, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nl = trunc nuw <32 x i16> %i.nk to <32 x i8>
  %interleaved.vec364 = shufflevector <32 x i8> %i.nj, <32 x i8> %i.nl, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph354
  %index363 = phi i64 [ 0, %vector.ph354 ], [ %index.next365, %vector.body362 ] ; 2 uses
  %.reass470 = add i64 %index363, %invariant.op469
  %i.nm = mul nsw i64 %.reass470, 3
  %i.nn = getelementptr inbounds i8, ptr %i.mf, i64 %i.nm
  store <48 x i8> %interleaved.vec364, ptr %i.nn, align 1, !alias.scope !191, !noalias !188
  %index.next365 = add nuw i64 %index363, 16      ; 2 uses
  %i.no = icmp eq i64 %index.next365, %n.vec355
  br i1 %i.no, label %middle.block366, label %vector.body362, !llvm.loop !193

middle.block366:                                  ; preds = %vector.body362
  %cmp.n367 = icmp eq i64 %i.mh, %n.vec355
  br i1 %cmp.n367, label %stbhw__draw_hline.exit216, label %vec.epilog.iter.check371

vec.epilog.iter.check371:                         ; preds = %middle.block366
  %min.epilog.iters.check372 = icmp eq i64 %i.mq, 0
  br i1 %min.epilog.iters.check372, label %vec.epilog.scalar.ph370.preheader, label %vec.epilog.ph373, !prof !119

vec.epilog.ph373:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check371
  %vec.epilog.resume.val368 = phi i64 [ %n.vec355, %vec.epilog.iter.check371 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec374 = and i64 %i.mh, -2                   ; 3 uses
  %i.np = add nsw i64 %n.vec374, %i.mg
  %i.nq = load i8, ptr %i.ma, align 1, !tbaa !62, !alias.scope !188
  %broadcast.splatinsert375 = insertelement <2 x i8> poison, i8 %i.nq, i64 0
  %broadcast.splat376 = shufflevector <2 x i8> %broadcast.splatinsert375, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.nr = zext <2 x i8> %broadcast.splat376 to <2 x i16>
  %i.ns = load i8, ptr %i.mb, align 1, !tbaa !62, !alias.scope !188
  %broadcast.splatinsert377 = insertelement <2 x i8> poison, i8 %i.ns, i64 0
  %broadcast.splat378 = shufflevector <2 x i8> %broadcast.splatinsert377, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.nt = zext <2 x i8> %broadcast.splat378 to <2 x i16>
  %i.nu = load i8, ptr %i.mc, align 1, !tbaa !62, !alias.scope !188
  %broadcast.splatinsert379 = insertelement <2 x i8> poison, i8 %i.nu, i64 0
  %broadcast.splat380 = shufflevector <2 x i8> %broadcast.splatinsert379, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.nv = zext <2 x i8> %broadcast.splat380 to <2 x i16>
  %i.nw = shl nuw nsw <2 x i16> %i.nv, splat (i16 1)
  %i.nx = add nuw nsw <2 x i16> %i.nw, splat (i16 255)
  %i.ny = udiv <2 x i16> %i.nx, splat (i16 3)
  %invariant.op471 = add i64 %i.mg, %i.au
  %i.nz = shufflevector <2 x i16> %i.nr, <2 x i16> %i.nt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oa = shl nuw nsw <4 x i16> %i.nz, splat (i16 1)
  %i.ob = add nuw nsw <4 x i16> %i.oa, splat (i16 255)
  %i.oc = udiv <4 x i16> %i.ob, splat (i16 3)
  %i.od = shufflevector <2 x i16> %i.ny, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.oe = shufflevector <4 x i16> %i.oc, <4 x i16> %i.od, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec383 = trunc nuw <6 x i16> %i.oe to <6 x i8>
  br label %vec.epilog.vector.body381

vec.epilog.vector.body381:                        ; preds = %vec.epilog.vector.body381, %vec.epilog.ph373
  %index382 = phi i64 [ %vec.epilog.resume.val368, %vec.epilog.ph373 ], [ %index.next384, %vec.epilog.vector.body381 ] ; 2 uses
  %.reass472 = add i64 %index382, %invariant.op471
  %i.of = mul nsw i64 %.reass472, 3
  %i.og = getelementptr inbounds i8, ptr %i.mf, i64 %i.of
  store <6 x i8> %interleaved.vec383, ptr %i.og, align 1, !alias.scope !191, !noalias !188
  %index.next384 = add nuw i64 %index382, 2       ; 2 uses
  %i.oh = icmp eq i64 %index.next384, %n.vec374
  br i1 %i.oh, label %vec.epilog.middle.block385, label %vec.epilog.vector.body381, !llvm.loop !194

vec.epilog.middle.block385:                       ; preds = %vec.epilog.vector.body381
  %cmp.n386 = icmp eq i64 %i.mh, %n.vec374
  br i1 %cmp.n386, label %stbhw__draw_hline.exit216, label %vec.epilog.scalar.ph370.preheader

vec.epilog.scalar.ph370.preheader:                ; preds = %vector.memcheck344, %iter.check369, %vec.epilog.iter.check371, %vec.epilog.middle.block385
  %indvars.iv35.i203.ph = phi i64 [ %i.mg, %iter.check369 ], [ %i.mg, %vector.memcheck344 ], [ %i.mr, %vec.epilog.iter.check371 ], [ %i.np, %vec.epilog.middle.block385 ]
  br label %vec.epilog.scalar.ph370

vec.epilog.scalar.ph370:                          ; preds = %vec.epilog.scalar.ph370.preheader, %vec.epilog.scalar.ph370
  %indvars.iv35.i203 = phi i64 [ %indvars.iv.next36.i206, %vec.epilog.scalar.ph370 ], [ %indvars.iv35.i203.ph, %vec.epilog.scalar.ph370.preheader ] ; 2 uses
  %i.oi = add nsw i64 %indvars.iv35.i203, %i.au
  %i.oj = load i8, ptr %i.ma, align 1, !tbaa !62
  %i.ok = zext i8 %i.oj to i16
  %i.ol = shl nuw nsw i16 %i.ok, 1
  %i.om = add nuw nsw i16 %i.ol, 255
  %i.on = udiv i16 %i.om, 3
  %i.oo = trunc nuw i16 %i.on to i8
  %i.op = load <2 x i8>, ptr %i.mb, align 1, !tbaa !62
  %i.oq = zext <2 x i8> %i.op to <2 x i16>
  %i.or = shl nuw nsw <2 x i16> %i.oq, splat (i16 1)
  %i.os = add nuw nsw <2 x i16> %i.or, splat (i16 255)
  %i.ot = udiv <2 x i16> %i.os, splat (i16 3)     ; 2 uses
  %i.ou = bitcast <2 x i16> %i.ot to <4 x i8>
  %i.ov = extractelement <4 x i8> %i.ou, i64 0
  %i.ow = bitcast <2 x i16> %i.ot to <4 x i8>
  %i.ox = extractelement <4 x i8> %i.ow, i64 2
  %i.oy = mul nsw i64 %i.oi, 3
  %i.oz = getelementptr inbounds i8, ptr %i.mf, i64 %i.oy ; 3 uses
  store i8 %i.oo, ptr %i.oz, align 1
  %.sroa.4.0..sroa_idx.i.i204 = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  store i8 %i.ov, ptr %.sroa.4.0..sroa_idx.i.i204, align 1
  %.sroa.5.0..sroa_idx.i.i205 = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  store i8 %i.ox, ptr %.sroa.5.0..sroa_idx.i.i205, align 1
  %indvars.iv.next36.i206 = add nsw i64 %indvars.iv35.i203, 1 ; 2 uses
  %exitcond39.not.i207 = icmp eq i64 %indvars.iv.next36.i206, %wide.trip.count38.i202
  br i1 %exitcond39.not.i207, label %stbhw__draw_hline.exit216, label %vec.epilog.scalar.ph370, !llvm.loop !195

stbhw__draw_hline.exit216:                        ; preds = %vec.epilog.scalar.ph370, %vec.epilog.middle.block385, %middle.block366
  %i.pa = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.pb = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.pc = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.lg
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.jn
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i230, label %._crit_edge.i217

.lr.ph.i230:                                      ; preds = %stbhw__draw_hline.exit216
  %i.pf = mul nsw i32 %i.pb, %i.le
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds i8, ptr %i.pa, i64 %i.pg ; 3 uses
  %wide.trip.count.i231 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter458 = and i64 %wide.trip.count.i231, 1
  %i.pi = icmp eq i32 %i.d, 1
  br i1 %i.pi, label %.epil.preheader457, label %.lr.ph.i230.new

.lr.ph.i230.new:                                  ; preds = %.lr.ph.i230
  %unroll_iter461 = and i64 %wide.trip.count.i231, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i230.new
  %indvars.iv.i232 = phi i64 [ 0, %.lr.ph.i230.new ], [ %indvars.iv.next.i233.1, %bb.i ] ; 3 uses
  %niter462 = phi i64 [ 0, %.lr.ph.i230.new ], [ %niter462.next.1, %bb.i ]
  %i.pj = add nsw i64 %indvars.iv.i232, %i.ev
  %i.pk = mul nsw i64 %i.pj, 3
  %i.pl = getelementptr inbounds i8, ptr %i.ph, i64 %i.pk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pl, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i233 = or disjoint i64 %indvars.iv.i232, 1
  %i.pm = add nsw i64 %indvars.iv.next.i233, %i.ev
  %i.pn = mul nsw i64 %i.pm, 3
  %i.po = getelementptr inbounds i8, ptr %i.ph, i64 %i.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.po, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i233.1 = add nuw nsw i64 %indvars.iv.i232, 2 ; 2 uses
  %niter462.next.1 = add i64 %niter462, 2         ; 2 uses
  %niter462.ncmp.1 = icmp eq i64 %niter462.next.1, %unroll_iter461
  br i1 %niter462.ncmp.1, label %._crit_edge.i217.loopexit.unr-lcssa, label %bb.i, !llvm.loop !112

._crit_edge.i217.loopexit.unr-lcssa:              ; preds = %bb.i
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  br i1 %lcmp.mod459.not, label %._crit_edge.i217, label %.epil.preheader457

.epil.preheader457:                               ; preds = %._crit_edge.i217.loopexit.unr-lcssa, %.lr.ph.i230
  %indvars.iv.i232.epil.init = phi i64 [ 0, %.lr.ph.i230 ], [ %indvars.iv.next.i233.1, %._crit_edge.i217.loopexit.unr-lcssa ]
  %lcmp.mod460 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod460)
  %i.pp = add nsw i64 %indvars.iv.i232.epil.init, %i.ev
  %i.pq = mul nsw i64 %i.pp, 3
  %i.pr = getelementptr inbounds i8, ptr %i.ph, i64 %i.pq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pr, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %.epil.preheader457, %._crit_edge.i217.loopexit.unr-lcssa, %stbhw__draw_hline.exit216
  br i1 %i.ai, label %.thread.i227, label %iter.check413

.thread.i227:                                     ; preds = %._crit_edge.i217
  %i.ps = sdiv i32 %i.d, 2                        ; 2 uses
  %i.pt = add nsw i32 %i.ps, -1
  %i.pu = and i32 %i.d, 1
  %spec.select.v.i228 = add nuw nsw i32 %i.pu, 1
  %spec.select.i229 = add nsw i32 %spec.select.v.i228, %i.ps
  br label %iter.check413

iter.check413:                                    ; preds = %._crit_edge.i217, %.thread.i227
  %.044.i219 = phi i32 [ %spec.select.i229, %.thread.i227 ], [ %i.r, %._crit_edge.i217 ]
  %.02643.i220 = phi i32 [ %i.pt, %.thread.i227 ], [ %i.p, %._crit_edge.i217 ]
  %i.pv = sext i32 %i.pe to i64                   ; 2 uses
  %i.pw = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 48), i64 %i.pv ; 6 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 1 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 2 ; 2 uses
  %i.pz = mul nsw i32 %i.pb, %i.le
  %i.qa = sext i32 %i.pz to i64                   ; 3 uses
  %i.qb = getelementptr inbounds i8, ptr %i.pa, i64 %i.qa ; 3 uses
  %i.qc = sext i32 %.02643.i220 to i64            ; 8 uses
  %wide.trip.count38.i221 = sext i32 %.044.i219 to i64 ; 3 uses
  %i.qd = sub nsw i64 %wide.trip.count38.i221, %i.qc ; 7 uses
  %min.iters.check395 = icmp ult i64 %i.qd, 2
  br i1 %min.iters.check395, label %vec.epilog.scalar.ph414.preheader, label %vector.memcheck388

vector.memcheck388:                               ; preds = %iter.check413
  %i.qe = add nsw i64 %i.qc, %i.ev
  %i.qf = mul nsw i64 %i.qe, 3
  %i.qg = getelementptr i8, ptr %i.pa, i64 %i.qf
  %scevgep389 = getelementptr i8, ptr %i.qg, i64 %i.qa
  %i.qh = add nsw i64 %wide.trip.count38.i221, %i.ev
  %i.qi = mul nsw i64 %i.qh, 3
  %i.qj = getelementptr i8, ptr %i.pa, i64 %i.qi
  %scevgep390 = getelementptr i8, ptr %i.qj, i64 %i.qa
  %i.qk = mul nsw i64 %i.pv, 3
  %i.ql = getelementptr i8, ptr @stbhw__color, i64 %i.qk
  %scevgep391 = getelementptr i8, ptr %i.ql, i64 51
  %bound0392 = icmp ult ptr %scevgep389, %scevgep391
  %bound1393 = icmp ult ptr %i.pw, %scevgep390
  %found.conflict394 = and i1 %bound0392, %bound1393
  br i1 %found.conflict394, label %vec.epilog.scalar.ph414.preheader, label %vector.main.loop.iter.check396

vector.main.loop.iter.check396:                   ; preds = %vector.memcheck388
  %min.iters.check397 = icmp ult i64 %i.qd, 16
  br i1 %min.iters.check397, label %vec.epilog.ph417, label %vector.ph398

vector.ph398:                                     ; preds = %vector.main.loop.iter.check396
  %i.qm = and i64 %i.qd, 14
  %n.vec399 = and i64 %i.qd, -16                  ; 4 uses
  %i.qn = add nsw i64 %n.vec399, %i.qc
  %i.qo = load i8, ptr %i.pw, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert400 = insertelement <16 x i8> poison, i8 %i.qo, i64 0
  %broadcast.splat401 = shufflevector <16 x i8> %broadcast.splatinsert400, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qp = zext <16 x i8> %broadcast.splat401 to <16 x i16>
  %i.qq = shl nuw nsw <16 x i16> %i.qp, splat (i16 1)
  %i.qr = add nuw nsw <16 x i16> %i.qq, splat (i16 255)
  %i.qs = udiv <16 x i16> %i.qr, splat (i16 3)
  %i.qt = trunc nuw <16 x i16> %i.qs to <16 x i8>
  %i.qu = load i8, ptr %i.px, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert402 = insertelement <16 x i8> poison, i8 %i.qu, i64 0
  %broadcast.splat403 = shufflevector <16 x i8> %broadcast.splatinsert402, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qv = zext <16 x i8> %broadcast.splat403 to <16 x i16>
  %i.qw = shl nuw nsw <16 x i16> %i.qv, splat (i16 1)
  %i.qx = add nuw nsw <16 x i16> %i.qw, splat (i16 255)
  %i.qy = udiv <16 x i16> %i.qx, splat (i16 3)
  %i.qz = trunc nuw <16 x i16> %i.qy to <16 x i8>
  %i.ra = load i8, ptr %i.py, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert404 = insertelement <16 x i8> poison, i8 %i.ra, i64 0
  %broadcast.splat405 = shufflevector <16 x i8> %broadcast.splatinsert404, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.rb = zext <16 x i8> %broadcast.splat405 to <16 x i16>
  %i.rc = shl nuw nsw <16 x i16> %i.rb, splat (i16 1)
  %i.rd = add nuw nsw <16 x i16> %i.rc, splat (i16 255)
  %i.re = udiv <16 x i16> %i.rd, splat (i16 3)
  %invariant.op473 = add i64 %i.qc, %i.ev
  %i.rf = shufflevector <16 x i8> %i.qt, <16 x i8> %i.qz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rg = shufflevector <16 x i16> %i.re, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rh = trunc nuw <32 x i16> %i.rg to <32 x i8>
  %interleaved.vec408 = shufflevector <32 x i8> %i.rf, <32 x i8> %i.rh, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph398
  %index407 = phi i64 [ 0, %vector.ph398 ], [ %index.next409, %vector.body406 ] ; 2 uses
  %.reass474 = add i64 %index407, %invariant.op473
  %i.ri = mul nsw i64 %.reass474, 3
  %i.rj = getelementptr inbounds i8, ptr %i.qb, i64 %i.ri
  store <48 x i8> %interleaved.vec408, ptr %i.rj, align 1, !alias.scope !199, !noalias !196
  %index.next409 = add nuw i64 %index407, 16      ; 2 uses
  %i.rk = icmp eq i64 %index.next409, %n.vec399
  br i1 %i.rk, label %middle.block410, label %vector.body406, !llvm.loop !201

middle.block410:                                  ; preds = %vector.body406
  %cmp.n411 = icmp eq i64 %i.qd, %n.vec399
  br i1 %cmp.n411, label %stbhw__draw_hline.exit235, label %vec.epilog.iter.check415

vec.epilog.iter.check415:                         ; preds = %middle.block410
  %min.epilog.iters.check416 = icmp eq i64 %i.qm, 0
  br i1 %min.epilog.iters.check416, label %vec.epilog.scalar.ph414.preheader, label %vec.epilog.ph417, !prof !119

vec.epilog.ph417:                                 ; preds = %vector.main.loop.iter.check396, %vec.epilog.iter.check415
  %vec.epilog.resume.val412 = phi i64 [ %n.vec399, %vec.epilog.iter.check415 ], [ 0, %vector.main.loop.iter.check396 ]
  %n.vec418 = and i64 %i.qd, -2                   ; 3 uses
  %i.rl = add nsw i64 %n.vec418, %i.qc
  %i.rm = load i8, ptr %i.pw, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert419 = insertelement <2 x i8> poison, i8 %i.rm, i64 0
  %broadcast.splat420 = shufflevector <2 x i8> %broadcast.splatinsert419, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.rn = zext <2 x i8> %broadcast.splat420 to <2 x i16>
  %i.ro = load i8, ptr %i.px, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert421 = insertelement <2 x i8> poison, i8 %i.ro, i64 0
  %broadcast.splat422 = shufflevector <2 x i8> %broadcast.splatinsert421, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.rp = zext <2 x i8> %broadcast.splat422 to <2 x i16>
  %i.rq = load i8, ptr %i.py, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert423 = insertelement <2 x i8> poison, i8 %i.rq, i64 0
  %broadcast.splat424 = shufflevector <2 x i8> %broadcast.splatinsert423, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.rr = zext <2 x i8> %broadcast.splat424 to <2 x i16>
  %i.rs = shl nuw nsw <2 x i16> %i.rr, splat (i16 1)
  %i.rt = add nuw nsw <2 x i16> %i.rs, splat (i16 255)
  %i.ru = udiv <2 x i16> %i.rt, splat (i16 3)
  %invariant.op475 = add i64 %i.qc, %i.ev
  %i.rv = shufflevector <2 x i16> %i.rn, <2 x i16> %i.rp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rw = shl nuw nsw <4 x i16> %i.rv, splat (i16 1)
  %i.rx = add nuw nsw <4 x i16> %i.rw, splat (i16 255)
  %i.ry = udiv <4 x i16> %i.rx, splat (i16 3)
  %i.rz = shufflevector <2 x i16> %i.ru, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sa = shufflevector <4 x i16> %i.ry, <4 x i16> %i.rz, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec427 = trunc nuw <6 x i16> %i.sa to <6 x i8>
  br label %vec.epilog.vector.body425

vec.epilog.vector.body425:                        ; preds = %vec.epilog.vector.body425, %vec.epilog.ph417
  %index426 = phi i64 [ %vec.epilog.resume.val412, %vec.epilog.ph417 ], [ %index.next428, %vec.epilog.vector.body425 ] ; 2 uses
  %.reass476 = add i64 %index426, %invariant.op475
  %i.sb = mul nsw i64 %.reass476, 3
  %i.sc = getelementptr inbounds i8, ptr %i.qb, i64 %i.sb
  store <6 x i8> %interleaved.vec427, ptr %i.sc, align 1, !alias.scope !199, !noalias !196
  %index.next428 = add nuw i64 %index426, 2       ; 2 uses
  %i.sd = icmp eq i64 %index.next428, %n.vec418
  br i1 %i.sd, label %vec.epilog.middle.block429, label %vec.epilog.vector.body425, !llvm.loop !202

vec.epilog.middle.block429:                       ; preds = %vec.epilog.vector.body425
  %cmp.n430 = icmp eq i64 %i.qd, %n.vec418
  br i1 %cmp.n430, label %stbhw__draw_hline.exit235, label %vec.epilog.scalar.ph414.preheader

vec.epilog.scalar.ph414.preheader:                ; preds = %vector.memcheck388, %iter.check413, %vec.epilog.iter.check415, %vec.epilog.middle.block429
  %indvars.iv35.i222.ph = phi i64 [ %i.qc, %iter.check413 ], [ %i.qc, %vector.memcheck388 ], [ %i.qn, %vec.epilog.iter.check415 ], [ %i.rl, %vec.epilog.middle.block429 ]
  br label %vec.epilog.scalar.ph414

vec.epilog.scalar.ph414:                          ; preds = %vec.epilog.scalar.ph414.preheader, %vec.epilog.scalar.ph414
  %indvars.iv35.i222 = phi i64 [ %indvars.iv.next36.i225, %vec.epilog.scalar.ph414 ], [ %indvars.iv35.i222.ph, %vec.epilog.scalar.ph414.preheader ] ; 2 uses
  %i.se = add nsw i64 %indvars.iv35.i222, %i.ev
  %i.sf = load i8, ptr %i.pw, align 1, !tbaa !62
  %i.sg = zext i8 %i.sf to i16
  %i.sh = shl nuw nsw i16 %i.sg, 1
  %i.si = add nuw nsw i16 %i.sh, 255
  %i.sj = udiv i16 %i.si, 3
  %i.sk = trunc nuw i16 %i.sj to i8
  %i.sl = load <2 x i8>, ptr %i.px, align 1, !tbaa !62
  %i.sm = zext <2 x i8> %i.sl to <2 x i16>
  %i.sn = shl nuw nsw <2 x i16> %i.sm, splat (i16 1)
  %i.so = add nuw nsw <2 x i16> %i.sn, splat (i16 255)
  %i.sp = udiv <2 x i16> %i.so, splat (i16 3)     ; 2 uses
  %i.sq = bitcast <2 x i16> %i.sp to <4 x i8>
  %i.sr = extractelement <4 x i8> %i.sq, i64 0
  %i.ss = bitcast <2 x i16> %i.sp to <4 x i8>
  %i.st = extractelement <4 x i8> %i.ss, i64 2
  %i.su = mul nsw i64 %i.se, 3
  %i.sv = getelementptr inbounds i8, ptr %i.qb, i64 %i.su ; 3 uses
  store i8 %i.sk, ptr %i.sv, align 1
  %.sroa.4.0..sroa_idx.i.i223 = getelementptr inbounds nuw i8, ptr %i.sv, i64 1
  store i8 %i.sr, ptr %.sroa.4.0..sroa_idx.i.i223, align 1
  %.sroa.5.0..sroa_idx.i.i224 = getelementptr inbounds nuw i8, ptr %i.sv, i64 2
  store i8 %i.st, ptr %.sroa.5.0..sroa_idx.i.i224, align 1
  %indvars.iv.next36.i225 = add nsw i64 %indvars.iv35.i222, 1 ; 2 uses
  %exitcond39.not.i226 = icmp eq i64 %indvars.iv.next36.i225, %wide.trip.count38.i221
  br i1 %exitcond39.not.i226, label %stbhw__draw_hline.exit235, label %vec.epilog.scalar.ph414, !llvm.loop !203

stbhw__draw_hline.exit235:                        ; preds = %vec.epilog.scalar.ph414, %vec.epilog.middle.block429, %middle.block410
  %i.sw = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 56
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.j
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !34
  %.not = icmp eq i32 %i.sz, 0
  br i1 %.not, label %stbhw__draw_clipped_corner.exit, label %bb.j
end_hunk_3
begin_hunk_4_@stbhw__corner_process_h_rect:bb.a
.split.us.2.i249:                                 ; preds = %.preheader.split.split.1.2.i243, %bb.q
  %i.vp = icmp eq i32 %i.d, 1
  %i.vq = add nsw i64 %i.ip, 1
  %i.vr = mul nsw i64 %i.vq, %i.uz
  %i.vs = getelementptr inbounds i8, ptr %i.us, i64 %i.vr
  br i1 %i.vp, label %stbhw__draw_clipped_corner.exit253, label %.preheader.split.split.us.3.i250

.preheader.split.split.us.3.i250:                 ; preds = %.split.us.2.i249
  %i.vt = add nsw i64 %i.uw, -1
  %i.vu = icmp slt i32 %i.uu, 2
  %i.vv = icmp sgt i64 %i.vt, %i.ux
  %or.cond.us34.1.3.i251 = or i1 %i.vu, %i.vv
  br i1 %or.cond.us34.1.3.i251, label %stbhw__draw_clipped_corner.exit253, label %bb.r

bb.r:                                             ; preds = %.preheader.split.split.us.3.i250
  %i.vw = mul nsw i64 %i.uy, 3
  %i.vx = getelementptr i8, ptr %i.vs, i64 %i.vw
  %i.vy = getelementptr i8, ptr %i.vx, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vy, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit253

stbhw__draw_clipped_corner.exit253:               ; preds = %bb.o, %.preheader.split.split.us.3.i250, %bb.r, %.split.us.2.i249, %stbhw__draw_clipped_corner.exit240
  %i.vz = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 40
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.hs
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !34
  %.not141 = icmp eq i32 %i.wc, 0
  br i1 %.not141, label %stbhw__draw_clipped_corner.exit266, label %bb.s

bb.s:                                             ; preds = %stbhw__draw_clipped_corner.exit253
  %i.wd = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.we = load i32, ptr %i.g, align 8, !tbaa !102
  %i.wf = sext i32 %i.le to i64                   ; 2 uses
  %i.wg = sext i32 %i.we to i64                   ; 2 uses
  %i.wh = icmp slt i32 %i.d, 2
  br i1 %i.wh, label %.split.us.i, label %.split.us.i.thread

.split.us.i.thread:                               ; preds = %bb.s
  %i.wi = add nsw i64 %i.wf, -2
  %i.wj = mul nsw i64 %i.wi, %i.wg
  %i.wk = getelementptr inbounds i8, ptr %i.wd, i64 %i.wj
  %i.wl = mul nsw i64 %i.au, 3
  %i.wm = getelementptr inbounds i8, ptr %i.wk, i64 %i.wl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wm, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.preheader.1.i

.split.us.i:                                      ; preds = %bb.s
  %.not280 = icmp eq i32 %i.d, 1
  br i1 %.not280, label %.preheader.split.split.preheader.1.i, label %stbhw__draw_clipped_corner.exit266

.preheader.split.split.preheader.1.i:             ; preds = %.split.us.i.thread, %.split.us.i
  %i.wn = add nsw i64 %i.wf, -1
  %i.wo = mul nsw i64 %i.wn, %i.wg
  %i.wp = getelementptr inbounds i8, ptr %i.wd, i64 %i.wo
  %i.wq = mul nsw i64 %i.au, 3
  %i.wr = getelementptr i8, ptr %i.wp, i64 %i.wq  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wr, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.ws = getelementptr i8, ptr %i.wr, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ws, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit266

stbhw__draw_clipped_corner.exit266:               ; preds = %.preheader.split.split.preheader.1.i, %.split.us.i, %stbhw__draw_clipped_corner.exit253
  %i.wt = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 56
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.lg
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !34
  %.not142 = icmp eq i32 %i.ww, 0
  %.pre272.pre275 = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.pre274.pre277 = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  br i1 %.not142, label %bb.u, label %bb.t

bb.t:                                             ; preds = %stbhw__draw_clipped_corner.exit266
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre272.pre275, i32 noundef %.pre274.pre277, i32 noundef %1, i32 noundef %2, i32 noundef %i.jk, i32 noundef %i.d, i32 noundef %i.ld, i32 noundef %i.ld)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  %.pre272.pre = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre274.pre = load i32, ptr %i.g, align 8, !tbaa !102
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %stbhw__draw_clipped_corner.exit266
  %.pre274 = phi i32 [ %.pre274.pre, %bb.t ], [ %.pre274.pre277, %stbhw__draw_clipped_corner.exit266 ] ; 2 uses
  %.pre272 = phi ptr [ %.pre272.pre, %bb.t ], [ %.pre272.pre275, %stbhw__draw_clipped_corner.exit266 ] ; 2 uses
  %i.wx = phi ptr [ %.pre, %bb.t ], [ %i.wt, %stbhw__draw_clipped_corner.exit266 ]
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 72
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.jn
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !34
  %.not143 = icmp eq i32 %i.xa, 0
  br i1 %.not143, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.xb = or disjoint i32 %i.jk, 1
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre272, i32 noundef %.pre274, i32 noundef %1, i32 noundef %2, i32 noundef %i.jk, i32 noundef %i.d, i32 noundef %i.xb, i32 noundef %i.ld)
  %.pre271 = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre273 = load i32, ptr %i.g, align 8, !tbaa !102
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.xc = phi i32 [ %.pre273, %bb.v ], [ %.pre274, %bb.u ]
  %i.xd = phi ptr [ %.pre271, %bb.v ], [ %.pre272, %bb.u ]
  %i.xe = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.j
  %i.xf = mul nsw i32 %i.xc, %2
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds i8, ptr %i.xd, i64 %i.xg
  %i.xi = getelementptr inbounds i8, ptr %i.xh, i64 %i.in
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xi, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xe, i64 3, i1 false)
  %i.xj = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.xk = load i32, ptr %i.g, align 8, !tbaa !102
  %i.xl = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.l
  %i.xm = mul nsw i32 %i.xk, %2
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds i8, ptr %i.xj, i64 %i.xn
  %i.xp = mul nsw i32 %i.dq, 3
  %i.xq = sext i32 %i.xp to i64                   ; 2 uses
  %i.xr = getelementptr inbounds i8, ptr %i.xo, i64 %i.xq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xr, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xl, i64 3, i1 false)
  %i.xs = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.xt = load i32, ptr %i.g, align 8, !tbaa !102
  %i.xu = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.dt
  %i.xv = mul nsw i32 %i.xt, %2
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds i8, ptr %i.xs, i64 %i.xw
  %i.xy = getelementptr inbounds i8, ptr %i.xx, i64 %i.kh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xy, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xu, i64 3, i1 false)
  %i.xz = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.ya = load i32, ptr %i.g, align 8, !tbaa !102
  %i.yb = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.hs
  %i.yc = mul nsw i32 %i.ya, %i.le
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds i8, ptr %i.xz, i64 %i.yd
  %i.yf = getelementptr inbounds i8, ptr %i.ye, i64 %i.in
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yf, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.yb, i64 3, i1 false)
  %i.yg = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.yh = load i32, ptr %i.g, align 8, !tbaa !102
  %i.yi = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.lg
  %i.yj = mul nsw i32 %i.yh, %i.le
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds i8, ptr %i.yg, i64 %i.yk
  %i.ym = getelementptr inbounds i8, ptr %i.yl, i64 %i.xq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ym, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.yi, i64 3, i1 false)
  %i.yn = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.yo = load i32, ptr %i.g, align 8, !tbaa !102
  %i.yp = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.jn
  %i.yq = mul nsw i32 %i.yo, %i.le
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds i8, ptr %i.yn, i64 %i.yr
  %i.yt = getelementptr inbounds i8, ptr %i.ys, i64 %i.kh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yt, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.yp, i64 3, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__corner_process_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 47 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 18 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = add i32 %1, 1                            ; 2 uses
  %i.j = sext i32 %3 to i64                       ; 3 uses
  %i.k = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.j ; 2 uses
  %i.l = sext i32 %6 to i64                       ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34
  %i.o = mul nsw i32 %i.d, 3
  %i.p = sdiv i32 %i.o, 8                         ; 7 uses
  %i.q = mul nsw i32 %i.d, 5
  %i.r = sdiv i32 %i.q, 8                         ; 7 uses
  %i.s = icmp sgt i32 %i.d, 0                     ; 6 uses
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.t = mul nsw i32 %i.h, %2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.i to i64                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.x = icmp eq i32 %i.d, 1
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.y = add nsw i64 %indvars.iv.i, %i.w
  %i.z = mul nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ab = add nsw i64 %indvars.iv.next.i, %i.w
  %i.ac = mul nsw i64 %i.ab, 3
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !112

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod362 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod362)
  %i.ae = add nsw i64 %indvars.iv.i.epil.init, %i.w
  %i.af = mul nsw i64 %i.ae, 3
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ag, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %i.ah = sub nsw i32 %i.r, %i.p
  %i.ai = icmp slt i32 %i.ah, 2                   ; 6 uses
  br i1 %i.ai, label %.thread.i, label %iter.check

.thread.i:                                        ; preds = %._crit_edge.i
  %i.aj = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = and i32 %i.d, 1
  %spec.select.v.i = add nuw nsw i32 %i.al, 1
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.aj
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.thread.i
  %.044.i = phi i32 [ %spec.select.i, %.thread.i ], [ %i.r, %._crit_edge.i ]
  %.02643.i = phi i32 [ %i.ak, %.thread.i ], [ %i.p, %._crit_edge.i ]
  %i.am = sext i32 %i.n to i64                    ; 2 uses
  %i.an = getelementptr inbounds [3 x i8], ptr @stbhw__color, i64 %i.am ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 2 uses
  %i.aq = mul nsw i32 %i.h, %2
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.f, i64 %i.ar ; 3 uses
  %i.at = sext i32 %.02643.i to i64               ; 8 uses
  %i.au = sext i32 %i.i to i64                    ; 22 uses
  %wide.trip.count38.i = sext i32 %.044.i to i64  ; 3 uses
  %i.av = sub nsw i64 %wide.trip.count38.i, %i.at ; 7 uses
  %min.iters.check = icmp ult i64 %i.av, 2
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = add nsw i64 %i.at, %i.au
  %i.ax = mul nsw i64 %i.aw, 3
  %i.ay = getelementptr i8, ptr %i.f, i64 %i.ax
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.ar
  %i.az = add nsw i64 %wide.trip.count38.i, %i.au
  %i.ba = mul nsw i64 %i.az, 3
  %i.bb = getelementptr i8, ptr %i.f, i64 %i.ba
  %scevgep299 = getelementptr i8, ptr %i.bb, i64 %i.ar
  %i.bc = mul nsw i64 %i.am, 3
  %i.bd = getelementptr i8, ptr @stbhw__color, i64 %i.bc
  %scevgep300 = getelementptr i8, ptr %i.bd, i64 3
  %bound0 = icmp ult ptr %scevgep, %scevgep300
  %bound1 = icmp ult ptr %i.an, %scevgep299
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check301 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check301, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.av, 14
  %n.vec = and i64 %i.av, -16                     ; 4 uses
  %i.bf = add nsw i64 %n.vec, %i.at
  %i.bg = load i8, ptr %i.an, align 1, !tbaa !62, !alias.scope !204
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bg, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bh = zext <16 x i8> %broadcast.splat to <16 x i16>
  %i.bi = shl nuw nsw <16 x i16> %i.bh, splat (i16 1)
  %i.bj = add nuw nsw <16 x i16> %i.bi, splat (i16 255)
  %i.bk = udiv <16 x i16> %i.bj, splat (i16 3)
  %i.bl = trunc nuw <16 x i16> %i.bk to <16 x i8>
  %i.bm = load i8, ptr %i.ao, align 1, !tbaa !62, !alias.scope !204
  %broadcast.splatinsert302 = insertelement <16 x i8> poison, i8 %i.bm, i64 0
  %broadcast.splat303 = shufflevector <16 x i8> %broadcast.splatinsert302, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bn = zext <16 x i8> %broadcast.splat303 to <16 x i16>
  %i.bo = shl nuw nsw <16 x i16> %i.bn, splat (i16 1)
  %i.bp = add nuw nsw <16 x i16> %i.bo, splat (i16 255)
  %i.bq = udiv <16 x i16> %i.bp, splat (i16 3)
  %i.br = trunc nuw <16 x i16> %i.bq to <16 x i8>
  %i.bs = load i8, ptr %i.ap, align 1, !tbaa !62, !alias.scope !204
  %broadcast.splatinsert304 = insertelement <16 x i8> poison, i8 %i.bs, i64 0
  %broadcast.splat305 = shufflevector <16 x i8> %broadcast.splatinsert304, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bt = zext <16 x i8> %broadcast.splat305 to <16 x i16>
  %i.bu = shl nuw nsw <16 x i16> %i.bt, splat (i16 1)
  %i.bv = add nuw nsw <16 x i16> %i.bu, splat (i16 255)
  %i.bw = udiv <16 x i16> %i.bv, splat (i16 3)
  %invariant.op = add i64 %i.at, %i.au
  %i.bx = shufflevector <16 x i8> %i.bl, <16 x i8> %i.br, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.by = shufflevector <16 x i16> %i.bw, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = trunc nuw <32 x i16> %i.by to <32 x i8>
  %interleaved.vec = shufflevector <32 x i8> %i.bx, <32 x i8> %i.bz, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.ca = mul nsw i64 %.reass, 3
  %i.cb = getelementptr inbounds i8, ptr %i.as, i64 %i.ca
  store <48 x i8> %interleaved.vec, ptr %i.cb, align 1, !alias.scope !207, !noalias !204
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %stbhw__draw_hline.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec306 = and i64 %i.av, -2                   ; 3 uses
  %i.cd = add nsw i64 %n.vec306, %i.at
  %i.ce = load i8, ptr %i.an, align 1, !tbaa !62, !alias.scope !204
  %broadcast.splatinsert307 = insertelement <2 x i8> poison, i8 %i.ce, i64 0
  %broadcast.splat308 = shufflevector <2 x i8> %broadcast.splatinsert307, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cf = zext <2 x i8> %broadcast.splat308 to <2 x i16>
  %i.cg = load i8, ptr %i.ao, align 1, !tbaa !62, !alias.scope !204
  %broadcast.splatinsert309 = insertelement <2 x i8> poison, i8 %i.cg, i64 0
  %broadcast.splat310 = shufflevector <2 x i8> %broadcast.splatinsert309, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ch = zext <2 x i8> %broadcast.splat310 to <2 x i16>
  %i.ci = load i8, ptr %i.ap, align 1, !tbaa !62, !alias.scope !204
  %broadcast.splatinsert311 = insertelement <2 x i8> poison, i8 %i.ci, i64 0
  %broadcast.splat312 = shufflevector <2 x i8> %broadcast.splatinsert311, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cj = zext <2 x i8> %broadcast.splat312 to <2 x i16>
  %i.ck = shl nuw nsw <2 x i16> %i.cj, splat (i16 1)
  %i.cl = add nuw nsw <2 x i16> %i.ck, splat (i16 255)
  %i.cm = udiv <2 x i16> %i.cl, splat (i16 3)
  %invariant.op393 = add i64 %i.at, %i.au
  %i.cn = shufflevector <2 x i16> %i.cf, <2 x i16> %i.ch, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = shl nuw nsw <4 x i16> %i.cn, splat (i16 1)
  %i.cp = add nuw nsw <4 x i16> %i.co, splat (i16 255)
  %i.cq = udiv <4 x i16> %i.cp, splat (i16 3)
  %i.cr = shufflevector <2 x i16> %i.cm, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <4 x i16> %i.cq, <4 x i16> %i.cr, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec314 = trunc nuw <6 x i16> %i.cs to <6 x i8>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index313 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next315, %vec.epilog.vector.body ] ; 2 uses
  %.reass394 = add i64 %index313, %invariant.op393
  %i.ct = mul nsw i64 %.reass394, 3
  %i.cu = getelementptr inbounds i8, ptr %i.as, i64 %i.ct
  store <6 x i8> %interleaved.vec314, ptr %i.cu, align 1, !alias.scope !207, !noalias !204
  %index.next315 = add nuw i64 %index313, 2       ; 2 uses
  %i.cv = icmp eq i64 %index.next315, %n.vec306
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n316 = icmp eq i64 %i.av, %n.vec306
  br i1 %cmp.n316, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv35.i.ph = phi i64 [ %i.at, %iter.check ], [ %i.at, %vector.memcheck ], [ %i.bf, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %vec.epilog.scalar.ph ], [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cw = add nsw i64 %indvars.iv35.i, %i.au
  %i.cx = load i8, ptr %i.an, align 1, !tbaa !62
  %i.cy = zext i8 %i.cx to i16
  %i.cz = shl nuw nsw i16 %i.cy, 1
  %i.da = add nuw nsw i16 %i.cz, 255
  %i.db = udiv i16 %i.da, 3
  %i.dc = trunc nuw i16 %i.db to i8
  %i.dd = load <2 x i8>, ptr %i.ao, align 1, !tbaa !62
  %i.de = zext <2 x i8> %i.dd to <2 x i16>
  %i.df = shl nuw nsw <2 x i16> %i.de, splat (i16 1)
  %i.dg = add nuw nsw <2 x i16> %i.df, splat (i16 255)
  %i.dh = udiv <2 x i16> %i.dg, splat (i16 3)     ; 2 uses
  %i.di = bitcast <2 x i16> %i.dh to <4 x i8>
  %i.dj = extractelement <4 x i8> %i.di, i64 0
  %i.dk = bitcast <2 x i16> %i.dh to <4 x i8>
  %i.dl = extractelement <4 x i8> %i.dk, i64 2
  %i.dm = mul nsw i64 %i.cw, 3
  %i.dn = getelementptr inbounds i8, ptr %i.as, i64 %i.dm ; 3 uses
  store i8 %i.dc, ptr %i.dn, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.dj, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.dl, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph, !llvm.loop !211

stbhw__draw_hline.exit:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.dp = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.dq = add i32 %2, 1                           ; 3 uses
  %i.dr = sext i32 %4 to i64                      ; 4 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i151, label %._crit_edge.i144

.lr.ph.i151:                                      ; preds = %stbhw__draw_hline.exit
  %i.du = mul nsw i32 %1, 3
  %i.dv = sext i32 %i.du to i64
  %invariant.gep.i = getelementptr i8, ptr %i.do, i64 %i.dv ; 3 uses
  %i.dw = sext i32 %i.dq to i64                   ; 3 uses
  %i.dx = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count.i152 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter364 = and i64 %wide.trip.count.i152, 1
  %i.dy = icmp eq i32 %i.d, 1
  br i1 %i.dy, label %.epil.preheader363, label %.lr.ph.i151.new

.lr.ph.i151.new:                                  ; preds = %.lr.ph.i151
  %unroll_iter367 = and i64 %wide.trip.count.i152, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i151.new
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.i151.new ], [ %indvars.iv.next.i154.1, %bb.c ] ; 3 uses
  %niter368 = phi i64 [ 0, %.lr.ph.i151.new ], [ %niter368.next.1, %bb.c ]
  %i.dz = add nsw i64 %indvars.iv.i153, %i.dw
  %i.ea = mul nsw i64 %i.dz, %i.dx
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i154 = or disjoint i64 %indvars.iv.i153, 1
  %i.eb = add nsw i64 %indvars.iv.next.i154, %i.dw
  %i.ec = mul nsw i64 %i.eb, %i.dx
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i154.1 = add nuw nsw i64 %indvars.iv.i153, 2 ; 2 uses
  %niter368.next.1 = add i64 %niter368, 2         ; 2 uses
  %niter368.ncmp.1 = icmp eq i64 %niter368.next.1, %unroll_iter367
  br i1 %niter368.ncmp.1, label %._crit_edge.i144.loopexit.unr-lcssa, label %bb.c, !llvm.loop !122

._crit_edge.i144.loopexit.unr-lcssa:              ; preds = %bb.c
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %._crit_edge.i144, label %.epil.preheader363

.epil.preheader363:                               ; preds = %._crit_edge.i144.loopexit.unr-lcssa, %.lr.ph.i151
  %indvars.iv.i153.epil.init = phi i64 [ 0, %.lr.ph.i151 ], [ %indvars.iv.next.i154.1, %._crit_edge.i144.loopexit.unr-lcssa ]
  %lcmp.mod366 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod366)
  %i.ed = add nsw i64 %indvars.iv.i153.epil.init, %i.dw
  %i.ee = mul nsw i64 %i.ed, %i.dx
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %i.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i144

._crit_edge.i144:                                 ; preds = %.epil.preheader363, %._crit_edge.i144.loopexit.unr-lcssa, %stbhw__draw_hline.exit
  br i1 %i.ai, label %.thread.i148, label %.lr.ph32.i145

.thread.i148:                                     ; preds = %._crit_edge.i144
  %i.ef = sdiv i32 %i.d, 2                        ; 2 uses
  %i.eg = add nsw i32 %i.ef, -1
  %i.eh = and i32 %i.d, 1
  %spec.select.v.i149 = add nuw nsw i32 %i.eh, 1
  %spec.select.i150 = add nsw i32 %spec.select.v.i149, %i.ef
  br label %.lr.ph32.i145

.lr.ph32.i145:                                    ; preds = %._crit_edge.i144, %.thread.i148
  %.046.i = phi i32 [ %spec.select.i150, %.thread.i148 ], [ %i.r, %._crit_edge.i144 ]
  %.02645.i = phi i32 [ %i.eg, %.thread.i148 ], [ %i.p, %._crit_edge.i144 ]
  %i.ei = sext i32 %i.dt to i64
  %i.ej = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 120), i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = mul nsw i32 %1, 3
  %i.em = sext i32 %i.el to i64                   ; 6 uses
  %invariant.gep34.i = getelementptr i8, ptr %i.do, i64 %i.em
  %i.en = sext i32 %.02645.i to i64
  %i.eo = sext i32 %i.dq to i64                   ; 9 uses
  %i.ep = sext i32 %i.dp to i64
  %wide.trip.count40.i = sext i32 %.046.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph32.i145
  %indvars.iv37.i = phi i64 [ %i.en, %.lr.ph32.i145 ], [ %indvars.iv.next38.i, %bb.d ] ; 2 uses
  %i.eq = add nsw i64 %indvars.iv37.i, %i.eo
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !62
  %i.es = zext i8 %i.er to i16
  %i.et = shl nuw nsw i16 %i.es, 1
  %i.eu = add nuw nsw i16 %i.et, 255
  %i.ev = udiv i16 %i.eu, 3
  %i.ew = trunc nuw i16 %i.ev to i8
  %i.ex = load <2 x i8>, ptr %i.ek, align 1, !tbaa !62
  %i.ey = zext <2 x i8> %i.ex to <2 x i16>
  %i.ez = shl nuw nsw <2 x i16> %i.ey, splat (i16 1)
  %i.fa = add nuw nsw <2 x i16> %i.ez, splat (i16 255)
  %i.fb = udiv <2 x i16> %i.fa, splat (i16 3)     ; 2 uses
  %i.fc = bitcast <2 x i16> %i.fb to <4 x i8>
  %i.fd = extractelement <4 x i8> %i.fc, i64 0
  %i.fe = bitcast <2 x i16> %i.fb to <4 x i8>
  %i.ff = extractelement <4 x i8> %i.fe, i64 2
  %i.fg = mul nsw i64 %i.eq, %i.ep
  %gep35.i = getelementptr i8, ptr %invariant.gep34.i, i64 %i.fg ; 3 uses
  store i8 %i.ew, ptr %gep35.i, align 1
  %.sroa.4.0..sroa_idx.i.i146 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 1
  store i8 %i.fd, ptr %.sroa.4.0..sroa_idx.i.i146, align 1
  %.sroa.5.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 2
  store i8 %i.ff, ptr %.sroa.5.0..sroa_idx.i.i147, align 1
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count40.i
  br i1 %exitcond41.not.i, label %stbhw__draw_vline.exit, label %bb.d, !llvm.loop !123

stbhw__draw_vline.exit:                           ; preds = %bb.d
  %i.fh = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.fi = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.fj = add i32 %i.d, 1                         ; 6 uses
  %i.fk = add i32 %i.fj, %1                       ; 3 uses
  %i.fl = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.l
  %i.fm = sext i32 %7 to i64                      ; 4 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i171, label %._crit_edge.i156

.lr.ph.i171:                                      ; preds = %stbhw__draw_vline.exit
  %i.fp = mul nsw i32 %i.fk, 3
  %i.fq = sext i32 %i.fp to i64
  %invariant.gep.i172 = getelementptr i8, ptr %i.fh, i64 %i.fq ; 3 uses
  %i.fr = sext i32 %i.fi to i64                   ; 3 uses
  %wide.trip.count.i173 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter370 = and i64 %wide.trip.count.i173, 1
  %i.fs = icmp eq i32 %i.d, 1
  br i1 %i.fs, label %.epil.preheader369, label %.lr.ph.i171.new

.lr.ph.i171.new:                                  ; preds = %.lr.ph.i171
  %unroll_iter373 = and i64 %wide.trip.count.i173, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i171.new
  %indvars.iv.i174 = phi i64 [ 0, %.lr.ph.i171.new ], [ %indvars.iv.next.i176.1, %bb.e ] ; 3 uses
  %niter374 = phi i64 [ 0, %.lr.ph.i171.new ], [ %niter374.next.1, %bb.e ]
  %i.ft = add nsw i64 %indvars.iv.i174, %i.eo
  %i.fu = mul nsw i64 %i.ft, %i.fr
  %gep.i175 = getelementptr i8, ptr %invariant.gep.i172, i64 %i.fu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i175, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i176 = or disjoint i64 %indvars.iv.i174, 1
  %i.fv = add nsw i64 %indvars.iv.next.i176, %i.eo
  %i.fw = mul nsw i64 %i.fv, %i.fr
  %gep.i175.1 = getelementptr i8, ptr %invariant.gep.i172, i64 %i.fw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i175.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i176.1 = add nuw nsw i64 %indvars.iv.i174, 2 ; 2 uses
  %niter374.next.1 = add i64 %niter374, 2         ; 2 uses
  %niter374.ncmp.1 = icmp eq i64 %niter374.next.1, %unroll_iter373
  br i1 %niter374.ncmp.1, label %._crit_edge.i156.loopexit.unr-lcssa, label %bb.e, !llvm.loop !122

._crit_edge.i156.loopexit.unr-lcssa:              ; preds = %bb.e
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %._crit_edge.i156, label %.epil.preheader369

.epil.preheader369:                               ; preds = %._crit_edge.i156.loopexit.unr-lcssa, %.lr.ph.i171
  %indvars.iv.i174.epil.init = phi i64 [ 0, %.lr.ph.i171 ], [ %indvars.iv.next.i176.1, %._crit_edge.i156.loopexit.unr-lcssa ]
  %lcmp.mod372 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod372)
  %i.fx = add nsw i64 %indvars.iv.i174.epil.init, %i.eo
  %i.fy = mul nsw i64 %i.fx, %i.fr
  %gep.i175.epil = getelementptr i8, ptr %invariant.gep.i172, i64 %i.fy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i175.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %.epil.preheader369, %._crit_edge.i156.loopexit.unr-lcssa, %stbhw__draw_vline.exit
  br i1 %i.ai, label %.thread.i168, label %.lr.ph32.i157

.thread.i168:                                     ; preds = %._crit_edge.i156
  %i.fz = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ga = add nsw i32 %i.fz, -1
  %i.gb = and i32 %i.d, 1
  %spec.select.v.i169 = add nuw nsw i32 %i.gb, 1
  %spec.select.i170 = add nsw i32 %spec.select.v.i169, %i.fz
  br label %.lr.ph32.i157

.lr.ph32.i157:                                    ; preds = %._crit_edge.i156, %.thread.i168
  %.046.i158 = phi i32 [ %spec.select.i170, %.thread.i168 ], [ %i.r, %._crit_edge.i156 ]
  %.02645.i159 = phi i32 [ %i.ga, %.thread.i168 ], [ %i.p, %._crit_edge.i156 ]
  %i.gc = sext i32 %i.fo to i64
  %i.gd = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 24), i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gf = mul nsw i32 %i.fk, 3
  %i.gg = sext i32 %i.gf to i64                   ; 6 uses
  %invariant.gep34.i160 = getelementptr i8, ptr %i.fh, i64 %i.gg
  %i.gh = sext i32 %.02645.i159 to i64
  %i.gi = sext i32 %i.fi to i64
  %wide.trip.count40.i161 = sext i32 %.046.i158 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph32.i157
  %indvars.iv37.i162 = phi i64 [ %i.gh, %.lr.ph32.i157 ], [ %indvars.iv.next38.i166, %bb.f ] ; 2 uses
  %i.gj = add nsw i64 %indvars.iv37.i162, %i.eo
  %i.gk = load i8, ptr %i.gd, align 1, !tbaa !62
  %i.gl = zext i8 %i.gk to i16
  %i.gm = shl nuw nsw i16 %i.gl, 1
  %i.gn = add nuw nsw i16 %i.gm, 255
  %i.go = udiv i16 %i.gn, 3
  %i.gp = trunc nuw i16 %i.go to i8
  %i.gq = load <2 x i8>, ptr %i.ge, align 1, !tbaa !62
  %i.gr = zext <2 x i8> %i.gq to <2 x i16>
  %i.gs = shl nuw nsw <2 x i16> %i.gr, splat (i16 1)
  %i.gt = add nuw nsw <2 x i16> %i.gs, splat (i16 255)
  %i.gu = udiv <2 x i16> %i.gt, splat (i16 3)     ; 2 uses
  %i.gv = bitcast <2 x i16> %i.gu to <4 x i8>
  %i.gw = extractelement <4 x i8> %i.gv, i64 0
  %i.gx = bitcast <2 x i16> %i.gu to <4 x i8>
  %i.gy = extractelement <4 x i8> %i.gx, i64 2
  %i.gz = mul nsw i64 %i.gj, %i.gi
  %gep35.i163 = getelementptr i8, ptr %invariant.gep34.i160, i64 %i.gz ; 3 uses
  store i8 %i.gp, ptr %gep35.i163, align 1
  %.sroa.4.0..sroa_idx.i.i164 = getelementptr inbounds nuw i8, ptr %gep35.i163, i64 1
  store i8 %i.gw, ptr %.sroa.4.0..sroa_idx.i.i164, align 1
  %.sroa.5.0..sroa_idx.i.i165 = getelementptr inbounds nuw i8, ptr %gep35.i163, i64 2
  store i8 %i.gy, ptr %.sroa.5.0..sroa_idx.i.i165, align 1
  %indvars.iv.next38.i166 = add nsw i64 %indvars.iv37.i162, 1 ; 2 uses
  %exitcond41.not.i167 = icmp eq i64 %indvars.iv.next38.i166, %wide.trip.count40.i161
  br i1 %exitcond41.not.i167, label %stbhw__draw_vline.exit178, label %bb.f, !llvm.loop !123

stbhw__draw_vline.exit178:                        ; preds = %bb.f
  %i.ha = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.hb = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.hc = add nsw i32 %i.d, %2                    ; 3 uses
  %i.hd = add nsw i32 %i.hc, 1                    ; 2 uses
  %i.he = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.dr
  %i.hf = sext i32 %5 to i64                      ; 4 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i194, label %._crit_edge.i179

.lr.ph.i194:                                      ; preds = %stbhw__draw_vline.exit178
  %invariant.gep.i195 = getelementptr i8, ptr %i.ha, i64 %i.em ; 3 uses
  %i.hi = sext i32 %i.hd to i64                   ; 3 uses
  %i.hj = sext i32 %i.hb to i64                   ; 3 uses
  %wide.trip.count.i196 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter376 = and i64 %wide.trip.count.i196, 1
  %i.hk = icmp eq i32 %i.d, 1
  br i1 %i.hk, label %.epil.preheader375, label %.lr.ph.i194.new

.lr.ph.i194.new:                                  ; preds = %.lr.ph.i194
  %unroll_iter379 = and i64 %wide.trip.count.i196, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i194.new
  %indvars.iv.i197 = phi i64 [ 0, %.lr.ph.i194.new ], [ %indvars.iv.next.i199.1, %bb.g ] ; 3 uses
  %niter380 = phi i64 [ 0, %.lr.ph.i194.new ], [ %niter380.next.1, %bb.g ]
  %i.hl = add nsw i64 %indvars.iv.i197, %i.hi
  %i.hm = mul nsw i64 %i.hl, %i.hj
  %gep.i198 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.hm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i199 = or disjoint i64 %indvars.iv.i197, 1
  %i.hn = add nsw i64 %indvars.iv.next.i199, %i.hi
  %i.ho = mul nsw i64 %i.hn, %i.hj
  %gep.i198.1 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.ho
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i199.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %niter380.next.1 = add i64 %niter380, 2         ; 2 uses
  %niter380.ncmp.1 = icmp eq i64 %niter380.next.1, %unroll_iter379
  br i1 %niter380.ncmp.1, label %._crit_edge.i179.loopexit.unr-lcssa, label %bb.g, !llvm.loop !122

._crit_edge.i179.loopexit.unr-lcssa:              ; preds = %bb.g
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %._crit_edge.i179, label %.epil.preheader375

.epil.preheader375:                               ; preds = %._crit_edge.i179.loopexit.unr-lcssa, %.lr.ph.i194
  %indvars.iv.i197.epil.init = phi i64 [ 0, %.lr.ph.i194 ], [ %indvars.iv.next.i199.1, %._crit_edge.i179.loopexit.unr-lcssa ]
  %lcmp.mod378 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod378)
  %i.hp = add nsw i64 %indvars.iv.i197.epil.init, %i.hi
  %i.hq = mul nsw i64 %i.hp, %i.hj
  %gep.i198.epil = getelementptr i8, ptr %invariant.gep.i195, i64 %i.hq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i179

._crit_edge.i179:                                 ; preds = %.epil.preheader375, %._crit_edge.i179.loopexit.unr-lcssa, %stbhw__draw_vline.exit178
  br i1 %i.ai, label %.thread.i191, label %.lr.ph32.i180

.thread.i191:                                     ; preds = %._crit_edge.i179
  %i.hr = sdiv i32 %i.d, 2                        ; 2 uses
  %i.hs = add nsw i32 %i.hr, -1
  %i.ht = and i32 %i.d, 1
  %spec.select.v.i192 = add nuw nsw i32 %i.ht, 1
  %spec.select.i193 = add nsw i32 %spec.select.v.i192, %i.hr
  br label %.lr.ph32.i180

.lr.ph32.i180:                                    ; preds = %._crit_edge.i179, %.thread.i191
  %.046.i181 = phi i32 [ %spec.select.i193, %.thread.i191 ], [ %i.r, %._crit_edge.i179 ]
  %.02645.i182 = phi i32 [ %i.hs, %.thread.i191 ], [ %i.p, %._crit_edge.i179 ]
  %i.hu = sext i32 %i.hh to i64
  %i.hv = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 96), i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %invariant.gep34.i183 = getelementptr i8, ptr %i.ha, i64 %i.em
  %i.hx = sext i32 %.02645.i182 to i64
  %i.hy = sext i32 %i.hd to i64                   ; 5 uses
  %i.hz = sext i32 %i.hb to i64
  %wide.trip.count40.i184 = sext i32 %.046.i181 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph32.i180
  %indvars.iv37.i185 = phi i64 [ %i.hx, %.lr.ph32.i180 ], [ %indvars.iv.next38.i189, %bb.h ] ; 2 uses
  %i.ia = add nsw i64 %indvars.iv37.i185, %i.hy
  %i.ib = load i8, ptr %i.hv, align 1, !tbaa !62
  %i.ic = zext i8 %i.ib to i16
  %i.id = shl nuw nsw i16 %i.ic, 1
  %i.ie = add nuw nsw i16 %i.id, 255
  %i.if = udiv i16 %i.ie, 3
  %i.ig = trunc nuw i16 %i.if to i8
  %i.ih = load <2 x i8>, ptr %i.hw, align 1, !tbaa !62
  %i.ii = zext <2 x i8> %i.ih to <2 x i16>
  %i.ij = shl nuw nsw <2 x i16> %i.ii, splat (i16 1)
  %i.ik = add nuw nsw <2 x i16> %i.ij, splat (i16 255)
  %i.il = udiv <2 x i16> %i.ik, splat (i16 3)     ; 2 uses
  %i.im = bitcast <2 x i16> %i.il to <4 x i8>
  %i.in = extractelement <4 x i8> %i.im, i64 0
  %i.io = bitcast <2 x i16> %i.il to <4 x i8>
  %i.ip = extractelement <4 x i8> %i.io, i64 2
  %i.iq = mul nsw i64 %i.ia, %i.hz
  %gep35.i186 = getelementptr i8, ptr %invariant.gep34.i183, i64 %i.iq ; 3 uses
  store i8 %i.ig, ptr %gep35.i186, align 1
  %.sroa.4.0..sroa_idx.i.i187 = getelementptr inbounds nuw i8, ptr %gep35.i186, i64 1
  store i8 %i.in, ptr %.sroa.4.0..sroa_idx.i.i187, align 1
  %.sroa.5.0..sroa_idx.i.i188 = getelementptr inbounds nuw i8, ptr %gep35.i186, i64 2
  store i8 %i.ip, ptr %.sroa.5.0..sroa_idx.i.i188, align 1
  %indvars.iv.next38.i189 = add nsw i64 %indvars.iv37.i185, 1 ; 2 uses
  %exitcond41.not.i190 = icmp eq i64 %indvars.iv.next38.i189, %wide.trip.count40.i184
  br i1 %exitcond41.not.i190, label %stbhw__draw_vline.exit201, label %bb.h, !llvm.loop !123

stbhw__draw_vline.exit201:                        ; preds = %bb.h
  %i.ir = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.is = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.it = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.fm
  %i.iu = sext i32 %8 to i64                      ; 4 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i217, label %._crit_edge.i202

.lr.ph.i217:                                      ; preds = %stbhw__draw_vline.exit201
  %invariant.gep.i218 = getelementptr i8, ptr %i.ir, i64 %i.gg ; 3 uses
  %i.ix = sext i32 %i.is to i64                   ; 3 uses
  %wide.trip.count.i219 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter382 = and i64 %wide.trip.count.i219, 1
  %i.iy = icmp eq i32 %i.d, 1
  br i1 %i.iy, label %.epil.preheader381, label %.lr.ph.i217.new

.lr.ph.i217.new:                                  ; preds = %.lr.ph.i217
  %unroll_iter385 = and i64 %wide.trip.count.i219, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i217.new
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.i217.new ], [ %indvars.iv.next.i222.1, %bb.i ] ; 3 uses
  %niter386 = phi i64 [ 0, %.lr.ph.i217.new ], [ %niter386.next.1, %bb.i ]
  %i.iz = add nsw i64 %indvars.iv.i220, %i.hy
  %i.ja = mul nsw i64 %i.iz, %i.ix
  %gep.i221 = getelementptr i8, ptr %invariant.gep.i218, i64 %i.ja
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i222 = or disjoint i64 %indvars.iv.i220, 1
  %i.jb = add nsw i64 %indvars.iv.next.i222, %i.hy
  %i.jc = mul nsw i64 %i.jb, %i.ix
  %gep.i221.1 = getelementptr i8, ptr %invariant.gep.i218, i64 %i.jc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i222.1 = add nuw nsw i64 %indvars.iv.i220, 2 ; 2 uses
  %niter386.next.1 = add i64 %niter386, 2         ; 2 uses
  %niter386.ncmp.1 = icmp eq i64 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %._crit_edge.i202.loopexit.unr-lcssa, label %bb.i, !llvm.loop !122

._crit_edge.i202.loopexit.unr-lcssa:              ; preds = %bb.i
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %._crit_edge.i202, label %.epil.preheader381

.epil.preheader381:                               ; preds = %._crit_edge.i202.loopexit.unr-lcssa, %.lr.ph.i217
  %indvars.iv.i220.epil.init = phi i64 [ 0, %.lr.ph.i217 ], [ %indvars.iv.next.i222.1, %._crit_edge.i202.loopexit.unr-lcssa ]
  %lcmp.mod384 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod384)
  %i.jd = add nsw i64 %indvars.iv.i220.epil.init, %i.hy
  %i.je = mul nsw i64 %i.jd, %i.ix
  %gep.i221.epil = getelementptr i8, ptr %invariant.gep.i218, i64 %i.je
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %.epil.preheader381, %._crit_edge.i202.loopexit.unr-lcssa, %stbhw__draw_vline.exit201
  br i1 %i.ai, label %.thread.i214, label %.lr.ph32.i203

.thread.i214:                                     ; preds = %._crit_edge.i202
  %i.jf = sdiv i32 %i.d, 2                        ; 2 uses
  %i.jg = add nsw i32 %i.jf, -1
  %i.jh = and i32 %i.d, 1
  %spec.select.v.i215 = add nuw nsw i32 %i.jh, 1
  %spec.select.i216 = add nsw i32 %spec.select.v.i215, %i.jf
  br label %.lr.ph32.i203

.lr.ph32.i203:                                    ; preds = %._crit_edge.i202, %.thread.i214
  %.046.i204 = phi i32 [ %spec.select.i216, %.thread.i214 ], [ %i.r, %._crit_edge.i202 ]
  %.02645.i205 = phi i32 [ %i.jg, %.thread.i214 ], [ %i.p, %._crit_edge.i202 ]
  %i.ji = sext i32 %i.iw to i64
  %i.jj = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 120), i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  %invariant.gep34.i206 = getelementptr i8, ptr %i.ir, i64 %i.gg
  %i.jl = sext i32 %.02645.i205 to i64
  %i.jm = sext i32 %i.is to i64
  %wide.trip.count40.i207 = sext i32 %.046.i204 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph32.i203
  %indvars.iv37.i208 = phi i64 [ %i.jl, %.lr.ph32.i203 ], [ %indvars.iv.next38.i212, %bb.j ] ; 2 uses
  %i.jn = add nsw i64 %indvars.iv37.i208, %i.hy
  %i.jo = load i8, ptr %i.jj, align 1, !tbaa !62
  %i.jp = zext i8 %i.jo to i16
  %i.jq = shl nuw nsw i16 %i.jp, 1
  %i.jr = add nuw nsw i16 %i.jq, 255
  %i.js = udiv i16 %i.jr, 3
  %i.jt = trunc nuw i16 %i.js to i8
  %i.ju = load <2 x i8>, ptr %i.jk, align 1, !tbaa !62
  %i.jv = zext <2 x i8> %i.ju to <2 x i16>
  %i.jw = shl nuw nsw <2 x i16> %i.jv, splat (i16 1)
  %i.jx = add nuw nsw <2 x i16> %i.jw, splat (i16 255)
  %i.jy = udiv <2 x i16> %i.jx, splat (i16 3)     ; 2 uses
  %i.jz = bitcast <2 x i16> %i.jy to <4 x i8>
  %i.ka = extractelement <4 x i8> %i.jz, i64 0
  %i.kb = bitcast <2 x i16> %i.jy to <4 x i8>
  %i.kc = extractelement <4 x i8> %i.kb, i64 2
  %i.kd = mul nsw i64 %i.jn, %i.jm
  %gep35.i209 = getelementptr i8, ptr %invariant.gep34.i206, i64 %i.kd ; 3 uses
  store i8 %i.jt, ptr %gep35.i209, align 1
  %.sroa.4.0..sroa_idx.i.i210 = getelementptr inbounds nuw i8, ptr %gep35.i209, i64 1
  store i8 %i.ka, ptr %.sroa.4.0..sroa_idx.i.i210, align 1
  %.sroa.5.0..sroa_idx.i.i211 = getelementptr inbounds nuw i8, ptr %gep35.i209, i64 2
  store i8 %i.kc, ptr %.sroa.5.0..sroa_idx.i.i211, align 1
  %indvars.iv.next38.i212 = add nsw i64 %indvars.iv37.i208, 1 ; 2 uses
  %exitcond41.not.i213 = icmp eq i64 %indvars.iv.next38.i212, %wide.trip.count40.i207
  br i1 %exitcond41.not.i213, label %stbhw__draw_vline.exit224, label %bb.j, !llvm.loop !123

stbhw__draw_vline.exit224:                        ; preds = %bb.j
  %i.ke = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.kf = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.kg = shl nsw i32 %i.d, 1                     ; 8 uses
  %i.kh = add i32 %i.dq, %i.kg                    ; 4 uses
  %i.ki = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.hf
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.iu
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i238, label %._crit_edge.i225

.lr.ph.i238:                                      ; preds = %stbhw__draw_vline.exit224
  %i.kl = mul nsw i32 %i.kf, %i.kh
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %i.ke, i64 %i.km ; 3 uses
  %wide.trip.count.i239 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter388 = and i64 %wide.trip.count.i239, 1
  %i.ko = icmp eq i32 %i.d, 1
  br i1 %i.ko, label %.epil.preheader387, label %.lr.ph.i238.new

.lr.ph.i238.new:                                  ; preds = %.lr.ph.i238
  %unroll_iter391 = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i238.new
  %indvars.iv.i240 = phi i64 [ 0, %.lr.ph.i238.new ], [ %indvars.iv.next.i241.1, %bb.k ] ; 3 uses
  %niter392 = phi i64 [ 0, %.lr.ph.i238.new ], [ %niter392.next.1, %bb.k ]
  %i.kp = add nsw i64 %indvars.iv.i240, %i.au
  %i.kq = mul nsw i64 %i.kp, 3
  %i.kr = getelementptr inbounds i8, ptr %i.kn, i64 %i.kq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kr, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i241 = or disjoint i64 %indvars.iv.i240, 1
  %i.ks = add nsw i64 %indvars.iv.next.i241, %i.au
  %i.kt = mul nsw i64 %i.ks, 3
  %i.ku = getelementptr inbounds i8, ptr %i.kn, i64 %i.kt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ku, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i241.1 = add nuw nsw i64 %indvars.iv.i240, 2 ; 2 uses
  %niter392.next.1 = add i64 %niter392, 2         ; 2 uses
  %niter392.ncmp.1 = icmp eq i64 %niter392.next.1, %unroll_iter391
  br i1 %niter392.ncmp.1, label %._crit_edge.i225.loopexit.unr-lcssa, label %bb.k, !llvm.loop !112

._crit_edge.i225.loopexit.unr-lcssa:              ; preds = %bb.k
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %._crit_edge.i225, label %.epil.preheader387

.epil.preheader387:                               ; preds = %._crit_edge.i225.loopexit.unr-lcssa, %.lr.ph.i238
  %indvars.iv.i240.epil.init = phi i64 [ 0, %.lr.ph.i238 ], [ %indvars.iv.next.i241.1, %._crit_edge.i225.loopexit.unr-lcssa ]
  %lcmp.mod390 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod390)
  %i.kv = add nsw i64 %indvars.iv.i240.epil.init, %i.au
  %i.kw = mul nsw i64 %i.kv, 3
  %i.kx = getelementptr inbounds i8, ptr %i.kn, i64 %i.kw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kx, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i225

._crit_edge.i225:                                 ; preds = %.epil.preheader387, %._crit_edge.i225.loopexit.unr-lcssa, %stbhw__draw_vline.exit224
  br i1 %i.ai, label %.thread.i235, label %iter.check343

.thread.i235:                                     ; preds = %._crit_edge.i225
  %i.ky = sdiv i32 %i.d, 2                        ; 2 uses
  %i.kz = add nsw i32 %i.ky, -1
  %i.la = and i32 %i.d, 1
  %spec.select.v.i236 = add nuw nsw i32 %i.la, 1
  %spec.select.i237 = add nsw i32 %spec.select.v.i236, %i.ky
  br label %iter.check343

iter.check343:                                    ; preds = %._crit_edge.i225, %.thread.i235
  %.044.i227 = phi i32 [ %spec.select.i237, %.thread.i235 ], [ %i.r, %._crit_edge.i225 ]
  %.02643.i228 = phi i32 [ %i.kz, %.thread.i235 ], [ %i.p, %._crit_edge.i225 ]
  %i.lb = sext i32 %i.kk to i64                   ; 2 uses
  %i.lc = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 72), i64 %i.lb ; 6 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 2 ; 2 uses
  %i.lf = mul nsw i32 %i.kf, %i.kh
  %i.lg = sext i32 %i.lf to i64                   ; 3 uses
  %i.lh = getelementptr inbounds i8, ptr %i.ke, i64 %i.lg ; 3 uses
  %i.li = sext i32 %.02643.i228 to i64            ; 8 uses
  %wide.trip.count38.i229 = sext i32 %.044.i227 to i64 ; 3 uses
  %i.lj = sub nsw i64 %wide.trip.count38.i229, %i.li ; 7 uses
  %min.iters.check325 = icmp ult i64 %i.lj, 2
  br i1 %min.iters.check325, label %vec.epilog.scalar.ph344.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %iter.check343
  %i.lk = add nsw i64 %i.li, %i.au
  %i.ll = mul nsw i64 %i.lk, 3
  %i.lm = getelementptr i8, ptr %i.ke, i64 %i.ll
  %scevgep319 = getelementptr i8, ptr %i.lm, i64 %i.lg
  %i.ln = add nsw i64 %wide.trip.count38.i229, %i.au
  %i.lo = mul nsw i64 %i.ln, 3
  %i.lp = getelementptr i8, ptr %i.ke, i64 %i.lo
  %scevgep320 = getelementptr i8, ptr %i.lp, i64 %i.lg
  %i.lq = mul nsw i64 %i.lb, 3
  %i.lr = getelementptr i8, ptr @stbhw__color, i64 %i.lq
  %scevgep321 = getelementptr i8, ptr %i.lr, i64 75
  %bound0322 = icmp ult ptr %scevgep319, %scevgep321
  %bound1323 = icmp ult ptr %i.lc, %scevgep320
  %found.conflict324 = and i1 %bound0322, %bound1323
  br i1 %found.conflict324, label %vec.epilog.scalar.ph344.preheader, label %vector.main.loop.iter.check326

vector.main.loop.iter.check326:                   ; preds = %vector.memcheck318
  %min.iters.check327 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check327, label %vec.epilog.ph347, label %vector.ph328

vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %i.ls = and i64 %i.lj, 14
  %n.vec329 = and i64 %i.lj, -16                  ; 4 uses
  %i.lt = add nsw i64 %n.vec329, %i.li
  %i.lu = load i8, ptr %i.lc, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert330 = insertelement <16 x i8> poison, i8 %i.lu, i64 0
  %broadcast.splat331 = shufflevector <16 x i8> %broadcast.splatinsert330, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lv = zext <16 x i8> %broadcast.splat331 to <16 x i16>
  %i.lw = shl nuw nsw <16 x i16> %i.lv, splat (i16 1)
  %i.lx = add nuw nsw <16 x i16> %i.lw, splat (i16 255)
  %i.ly = udiv <16 x i16> %i.lx, splat (i16 3)
  %i.lz = trunc nuw <16 x i16> %i.ly to <16 x i8>
  %i.ma = load i8, ptr %i.ld, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert332 = insertelement <16 x i8> poison, i8 %i.ma, i64 0
  %broadcast.splat333 = shufflevector <16 x i8> %broadcast.splatinsert332, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mb = zext <16 x i8> %broadcast.splat333 to <16 x i16>
  %i.mc = shl nuw nsw <16 x i16> %i.mb, splat (i16 1)
  %i.md = add nuw nsw <16 x i16> %i.mc, splat (i16 255)
  %i.me = udiv <16 x i16> %i.md, splat (i16 3)
  %i.mf = trunc nuw <16 x i16> %i.me to <16 x i8>
  %i.mg = load i8, ptr %i.le, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert334 = insertelement <16 x i8> poison, i8 %i.mg, i64 0
  %broadcast.splat335 = shufflevector <16 x i8> %broadcast.splatinsert334, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mh = zext <16 x i8> %broadcast.splat335 to <16 x i16>
  %i.mi = shl nuw nsw <16 x i16> %i.mh, splat (i16 1)
  %i.mj = add nuw nsw <16 x i16> %i.mi, splat (i16 255)
  %i.mk = udiv <16 x i16> %i.mj, splat (i16 3)
  %invariant.op395 = add i64 %i.li, %i.au
  %i.ml = shufflevector <16 x i8> %i.lz, <16 x i8> %i.mf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mm = shufflevector <16 x i16> %i.mk, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mn = trunc nuw <32 x i16> %i.mm to <32 x i8>
  %interleaved.vec338 = shufflevector <32 x i8> %i.ml, <32 x i8> %i.mn, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph328
  %index337 = phi i64 [ 0, %vector.ph328 ], [ %index.next339, %vector.body336 ] ; 2 uses
  %.reass396 = add i64 %index337, %invariant.op395
  %i.mo = mul nsw i64 %.reass396, 3
  %i.mp = getelementptr inbounds i8, ptr %i.lh, i64 %i.mo
  store <48 x i8> %interleaved.vec338, ptr %i.mp, align 1, !alias.scope !215, !noalias !212
  %index.next339 = add nuw i64 %index337, 16      ; 2 uses
  %i.mq = icmp eq i64 %index.next339, %n.vec329
  br i1 %i.mq, label %middle.block340, label %vector.body336, !llvm.loop !217

middle.block340:                                  ; preds = %vector.body336
  %cmp.n341 = icmp eq i64 %i.lj, %n.vec329
  br i1 %cmp.n341, label %stbhw__draw_hline.exit243, label %vec.epilog.iter.check345

vec.epilog.iter.check345:                         ; preds = %middle.block340
  %min.epilog.iters.check346 = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check346, label %vec.epilog.scalar.ph344.preheader, label %vec.epilog.ph347, !prof !119

vec.epilog.ph347:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check345
  %vec.epilog.resume.val342 = phi i64 [ %n.vec329, %vec.epilog.iter.check345 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec348 = and i64 %i.lj, -2                   ; 3 uses
  %i.mr = add nsw i64 %n.vec348, %i.li
  %i.ms = load i8, ptr %i.lc, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert349 = insertelement <2 x i8> poison, i8 %i.ms, i64 0
  %broadcast.splat350 = shufflevector <2 x i8> %broadcast.splatinsert349, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mt = zext <2 x i8> %broadcast.splat350 to <2 x i16>
  %i.mu = load i8, ptr %i.ld, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert351 = insertelement <2 x i8> poison, i8 %i.mu, i64 0
  %broadcast.splat352 = shufflevector <2 x i8> %broadcast.splatinsert351, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mv = zext <2 x i8> %broadcast.splat352 to <2 x i16>
  %i.mw = load i8, ptr %i.le, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert353 = insertelement <2 x i8> poison, i8 %i.mw, i64 0
  %broadcast.splat354 = shufflevector <2 x i8> %broadcast.splatinsert353, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mx = zext <2 x i8> %broadcast.splat354 to <2 x i16>
  %i.my = shl nuw nsw <2 x i16> %i.mx, splat (i16 1)
  %i.mz = add nuw nsw <2 x i16> %i.my, splat (i16 255)
  %i.na = udiv <2 x i16> %i.mz, splat (i16 3)
  %invariant.op397 = add i64 %i.li, %i.au
  %i.nb = shufflevector <2 x i16> %i.mt, <2 x i16> %i.mv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nc = shl nuw nsw <4 x i16> %i.nb, splat (i16 1)
  %i.nd = add nuw nsw <4 x i16> %i.nc, splat (i16 255)
  %i.ne = udiv <4 x i16> %i.nd, splat (i16 3)
  %i.nf = shufflevector <2 x i16> %i.na, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ng = shufflevector <4 x i16> %i.ne, <4 x i16> %i.nf, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec357 = trunc nuw <6 x i16> %i.ng to <6 x i8>
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph347
  %index356 = phi i64 [ %vec.epilog.resume.val342, %vec.epilog.ph347 ], [ %index.next358, %vec.epilog.vector.body355 ] ; 2 uses
  %.reass398 = add i64 %index356, %invariant.op397
  %i.nh = mul nsw i64 %.reass398, 3
  %i.ni = getelementptr inbounds i8, ptr %i.lh, i64 %i.nh
  store <6 x i8> %interleaved.vec357, ptr %i.ni, align 1, !alias.scope !215, !noalias !212
  %index.next358 = add nuw i64 %index356, 2       ; 2 uses
  %i.nj = icmp eq i64 %index.next358, %n.vec348
  br i1 %i.nj, label %vec.epilog.middle.block359, label %vec.epilog.vector.body355, !llvm.loop !218

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body355
  %cmp.n360 = icmp eq i64 %i.lj, %n.vec348
  br i1 %cmp.n360, label %stbhw__draw_hline.exit243, label %vec.epilog.scalar.ph344.preheader

vec.epilog.scalar.ph344.preheader:                ; preds = %vector.memcheck318, %iter.check343, %vec.epilog.iter.check345, %vec.epilog.middle.block359
  %indvars.iv35.i230.ph = phi i64 [ %i.li, %iter.check343 ], [ %i.li, %vector.memcheck318 ], [ %i.lt, %vec.epilog.iter.check345 ], [ %i.mr, %vec.epilog.middle.block359 ]
  br label %vec.epilog.scalar.ph344

vec.epilog.scalar.ph344:                          ; preds = %vec.epilog.scalar.ph344.preheader, %vec.epilog.scalar.ph344
  %indvars.iv35.i230 = phi i64 [ %indvars.iv.next36.i233, %vec.epilog.scalar.ph344 ], [ %indvars.iv35.i230.ph, %vec.epilog.scalar.ph344.preheader ] ; 2 uses
  %i.nk = add nsw i64 %indvars.iv35.i230, %i.au
  %i.nl = load i8, ptr %i.lc, align 1, !tbaa !62
  %i.nm = zext i8 %i.nl to i16
  %i.nn = shl nuw nsw i16 %i.nm, 1
  %i.no = add nuw nsw i16 %i.nn, 255
  %i.np = udiv i16 %i.no, 3
  %i.nq = trunc nuw i16 %i.np to i8
  %i.nr = load <2 x i8>, ptr %i.ld, align 1, !tbaa !62
  %i.ns = zext <2 x i8> %i.nr to <2 x i16>
  %i.nt = shl nuw nsw <2 x i16> %i.ns, splat (i16 1)
  %i.nu = add nuw nsw <2 x i16> %i.nt, splat (i16 255)
  %i.nv = udiv <2 x i16> %i.nu, splat (i16 3)     ; 2 uses
  %i.nw = bitcast <2 x i16> %i.nv to <4 x i8>
  %i.nx = extractelement <4 x i8> %i.nw, i64 0
  %i.ny = bitcast <2 x i16> %i.nv to <4 x i8>
  %i.nz = extractelement <4 x i8> %i.ny, i64 2
  %i.oa = mul nsw i64 %i.nk, 3
  %i.ob = getelementptr inbounds i8, ptr %i.lh, i64 %i.oa ; 3 uses
  store i8 %i.nq, ptr %i.ob, align 1
  %.sroa.4.0..sroa_idx.i.i231 = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store i8 %i.nx, ptr %.sroa.4.0..sroa_idx.i.i231, align 1
  %.sroa.5.0..sroa_idx.i.i232 = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  store i8 %i.nz, ptr %.sroa.5.0..sroa_idx.i.i232, align 1
  %indvars.iv.next36.i233 = add nsw i64 %indvars.iv35.i230, 1 ; 2 uses
  %exitcond39.not.i234 = icmp eq i64 %indvars.iv.next36.i233, %wide.trip.count38.i229
  br i1 %exitcond39.not.i234, label %stbhw__draw_hline.exit243, label %vec.epilog.scalar.ph344, !llvm.loop !219

stbhw__draw_hline.exit243:                        ; preds = %vec.epilog.scalar.ph344, %vec.epilog.middle.block359, %middle.block340
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 40
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.j
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !34
  %.not = icmp eq i32 %i.of, 0
  br i1 %.not, label %stbhw__draw_clipped_corner.exit, label %bb.l
end_hunk_4
begin_hunk_5_@stbhw__corner_process_v_rect:bb.a
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.l
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !34
  %.not141 = icmp eq i32 %i.rn, 0
  br i1 %.not141, label %stbhw__draw_clipped_corner.exit276, label %bb.u

bb.u:                                             ; preds = %stbhw__draw_clipped_corner.exit262
  %i.ro = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.rp = load i32, ptr %i.g, align 8, !tbaa !102
  %i.rq = sext i32 %i.fk to i64                   ; 2 uses
  %i.rr = sext i32 %i.rp to i64                   ; 2 uses
  %i.rs = icmp slt i32 %i.d, 1
  %i.rt = mul nsw i64 %i.rr, %i.eo
  %i.ru = getelementptr inbounds i8, ptr %i.ro, i64 %i.rt ; 2 uses
  br i1 %i.rs, label %stbhw__draw_clipped_corner.exit276, label %.preheader.split.split.preheader.2.i271

.preheader.split.split.preheader.2.i271:          ; preds = %bb.u
  %i.rv = icmp eq i32 %i.d, 1
  %.pre294 = mul nsw i64 %i.rq, 3                 ; 2 uses
  br i1 %i.rv, label %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge, label %bb.v

bb.v:                                             ; preds = %.preheader.split.split.preheader.2.i271
  %i.rw = getelementptr i8, ptr %i.ru, i64 %.pre294
  %i.rx = getelementptr i8, ptr %i.rw, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rx, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge

.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge: ; preds = %.preheader.split.split.preheader.2.i271, %bb.v
  %i.ry = getelementptr i8, ptr %i.ru, i64 %.pre294
  %i.rz = getelementptr i8, ptr %i.ry, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rz, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.sa = add nsw i64 %i.eo, 1
  %i.sb = mul nsw i64 %i.sa, %i.rr
  %i.sc = getelementptr inbounds i8, ptr %i.ro, i64 %i.sb
  %i.sd = mul nsw i64 %i.rq, 3
  %i.se = getelementptr i8, ptr %i.sc, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.se, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sf, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit276

stbhw__draw_clipped_corner.exit276:               ; preds = %bb.u, %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge, %stbhw__draw_clipped_corner.exit262
  %i.sg = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 40
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.fm
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !34
  %.not142 = icmp eq i32 %i.sj, 0
  %.pre286.pre289 = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.pre288.pre291 = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  br i1 %.not142, label %bb.x, label %bb.w

bb.w:                                             ; preds = %stbhw__draw_clipped_corner.exit276
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre286.pre289, i32 noundef %.pre288.pre291, i32 noundef %1, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.kg, i32 noundef %i.fj, i32 noundef %i.fj)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  %.pre286.pre = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre288.pre = load i32, ptr %i.g, align 8, !tbaa !102
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %stbhw__draw_clipped_corner.exit276
  %.pre288 = phi i32 [ %.pre288.pre, %bb.w ], [ %.pre288.pre291, %stbhw__draw_clipped_corner.exit276 ] ; 2 uses
  %.pre286 = phi ptr [ %.pre286.pre, %bb.w ], [ %.pre286.pre289, %stbhw__draw_clipped_corner.exit276 ] ; 2 uses
  %i.sk = phi ptr [ %.pre, %bb.w ], [ %i.sg, %stbhw__draw_clipped_corner.exit276 ]
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 88
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.iu
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !34
  %.not143 = icmp eq i32 %i.sn, 0
  br i1 %.not143, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.so = or disjoint i32 %i.kg, 1
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre286, i32 noundef %.pre288, i32 noundef %1, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.kg, i32 noundef %i.fj, i32 noundef %i.so)
  %.pre285 = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre287 = load i32, ptr %i.g, align 8, !tbaa !102
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.sp = phi i32 [ %.pre287, %bb.y ], [ %.pre288, %bb.x ]
  %i.sq = phi ptr [ %.pre285, %bb.y ], [ %.pre286, %bb.x ]
  %i.sr = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.j
  %i.ss = mul nsw i32 %i.sp, %2
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds i8, ptr %i.sq, i64 %i.st
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sr, i64 3, i1 false)
  %i.sw = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.sx = load i32, ptr %i.g, align 8, !tbaa !102
  %i.sy = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.dr
  %i.sz = mul nsw i32 %i.sx, %i.hc
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %i.sw, i64 %i.ta
  %i.tc = getelementptr inbounds i8, ptr %i.tb, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tc, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sy, i64 3, i1 false)
  %i.td = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.te = load i32, ptr %i.g, align 8, !tbaa !102
  %i.tf = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.hf
  %i.tg = mul nsw i32 %i.te, %i.kh
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds i8, ptr %i.td, i64 %i.th
  %i.tj = getelementptr inbounds i8, ptr %i.ti, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tf, i64 3, i1 false)
  %i.tk = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.tl = load i32, ptr %i.g, align 8, !tbaa !102
  %i.tm = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.l
  %i.tn = mul nsw i32 %i.tl, %2
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds i8, ptr %i.tk, i64 %i.to
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tq, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tm, i64 3, i1 false)
  %i.tr = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.ts = load i32, ptr %i.g, align 8, !tbaa !102
  %i.tt = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.fm
  %i.tu = mul nsw i32 %i.ts, %i.hc
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds i8, ptr %i.tr, i64 %i.tv
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tx, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tt, i64 3, i1 false)
  %i.ty = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.tz = load i32, ptr %i.g, align 8, !tbaa !102
  %i.ua = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.iu
  %i.ub = mul nsw i32 %i.tz, %i.kh
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds i8, ptr %i.ty, i64 %i.uc
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ue, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ua, i64 3, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_make_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbhw__process, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %3, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %4, ptr %i.d, align 8, !tbaa !102
  store ptr null, ptr %5, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !14
  %i.f = load i32, ptr %0, align 4, !tbaa !33
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %spec.select = select i1 %.not, ptr @stbhw__edge_process_h_rect, ptr @stbhw__corner_process_h_rect
  %spec.select76 = select i1 %.not, ptr @stbhw__edge_process_v_rect, ptr @stbhw__corner_process_v_rect
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %spec.select, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %spec.select76, ptr %i.h, align 8, !tbaa !25
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = mul nsw i32 %2, 3
  %i.k = sext i32 %i.j to i64                     ; 9 uses
  %i.l = sext i32 %4 to i64                       ; 9 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.m = icmp ult i32 %3, 8
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.b ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.b ]
  %i.n = mul nsw i64 %indvars.iv, %i.l
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.p = mul nsw i64 %indvars.iv.next, %i.l
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.r = mul nsw i64 %indvars.iv.next.1, %i.l
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.t = mul nsw i64 %indvars.iv.next.2, %i.l
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %i.v = mul nsw i64 %indvars.iv.next.3, %i.l
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %i.x = mul nsw i64 %indvars.iv.next.4, %i.l
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %i.z = mul nsw i64 %indvars.iv.next.5, %i.l
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %i.ab = mul nsw i64 %indvars.iv.next.6, %i.l
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !220

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ad = mul nsw i64 %indvars.iv.epil, %i.l
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !221

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.af = call i32 @stbhw__process_template(ptr noundef nonnull %5)
  %.not56 = icmp eq i32 %i.af, 0
  br i1 %.not56, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ag = load i32, ptr %0, align 4, !tbaa !33
  %.not57 = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = mul nsw i32 %2, 3                       ; 9 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !34
  %i.ak = trunc i32 %i.aj to i8
  %i.al = add i32 %i.ai, -1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !34
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = add i32 %i.ai, -2
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.as
  store i8 %i.aq, ptr %i.at, align 1, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = trunc i32 %i.av to i8
  %i.ax = add i32 %i.ai, -3
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = add i32 %i.ai, -4
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %1, i64 %i.be
  store i8 %i.bc, ptr %i.bf, align 1, !tbaa !62
  %i.bg = add i32 %i.ai, -5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %i.bh ; 2 uses
  %i.bj = add i32 %i.ai, -6
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bm = add i32 %i.ai, -7
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn ; 2 uses
  br i1 %.not57, label %.preheader, label %.preheader58

.preheader58:                                     ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !35
  %i.br = trunc i32 %i.bq to i8
  store i8 %i.br, ptr %i.bi, align 1, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !36
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.bl, align 1, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !15
  %i.bx = trunc i32 %i.bw to i8
  store i8 %i.bx, ptr %i.bo, align 1, !tbaa !62
  br label %.loopexit.loopexit

.preheader:                                       ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !34
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %i.bi, align 1, !tbaa !62
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !34
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %i.bl, align 1, !tbaa !62
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !35
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %i.bo, align 1, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !36
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = add i32 %i.ai, -8
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %1, i64 %i.cl
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !15
  %i.cp = trunc i32 %i.co to i8
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.preheader, %.preheader58
  %.sink80 = phi i32 [ -9, %.preheader ], [ -8, %.preheader58 ]
  %.sink = phi i8 [ %i.cp, %.preheader ], [ -64, %.preheader58 ]
  %i.cq = add i32 %i.ai, %.sink80
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  store i8 %.sink, ptr %i.cs, align 1, !tbaa !62
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !37
  %i.cv = mul nsw i32 %i.cu, 3
  %i.cw = add i32 %i.cv, -2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !62
  %i.da = xor i8 %i.cz, 55
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !62
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.dc = load i32, ptr %i.b, align 4, !tbaa !37
  %i.dd = mul nsw i32 %i.dc, 3
  %i.de = add i32 %i.dd, -3
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !62
  %i.di = xor i8 %i.dh, 110
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !62
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !37
  %i.dl = mul nsw i32 %i.dk, 3
  %i.dm = add i32 %i.dl, -4
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !62
  %i.dq = xor i8 %i.dp, -91
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !62
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.ds = load i32, ptr %i.b, align 4, !tbaa !37
  %i.dt = mul nsw i32 %i.ds, 3
  %i.du = add i32 %i.dt, -5
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62
  %i.dy = xor i8 %i.dx, -36
  store i8 %i.dy, ptr %i.dw, align 1, !tbaa !62
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.ea = load i32, ptr %i.b, align 4, !tbaa !37
  %i.eb = mul nsw i32 %i.ea, 3
  %i.ec = add i32 %i.eb, -6
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !62
  %i.eg = xor i8 %i.ef, 19
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !62
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !37
  %i.ej = mul nsw i32 %i.ei, 3
  %i.ek = add i32 %i.ej, -7
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %i.eh, i64 %i.el ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !62
  %i.eo = xor i8 %i.en, 74
  store i8 %i.eo, ptr %i.em, align 1, !tbaa !62
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.eq = load i32, ptr %i.b, align 4, !tbaa !37
  %i.er = mul nsw i32 %i.eq, 3
  %i.es = add i32 %i.er, -8
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.ep, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !62
  %i.ew = xor i8 %i.ev, -127
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !62
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.ey = load i32, ptr %i.b, align 4, !tbaa !37
  %i.ez = mul nsw i32 %i.ey, 3
  %i.fa = add i32 %i.ez, -9
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 %i.fb ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !62
  %i.fe = xor i8 %i.fd, -72
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %.055 = phi i32 [ 0, %._crit_edge ], [ 1, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %.055
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_5
