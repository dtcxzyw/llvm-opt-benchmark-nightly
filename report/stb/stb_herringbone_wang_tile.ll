Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_herringbone_wang_tile?download=true
inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw__weighted:bb.a
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
  %6 = add nsw i32 %i.e, 3
  %wide.trip.count522 = zext nneg i32 %6 to i64
  %wide.trip.count516 = zext nneg i32 %i.z to i64
  br label %.preheader

bb.f:                                             ; preds = %.preheader455, %stbhw__weighted.exit
  %indvars.iv = phi i64 [ 0, %.preheader455 ], [ %indvars.iv.next, %stbhw__weighted.exit ] ; 3 uses
  %.reass.reass = add i64 %indvars.iv, %invariant.op
  %i.aa = and i64 %.reass.reass, 3                ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.aa
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !34 ; 5 uses
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = tail call i32 @rand() #16
  %i.ai = ashr i32 %i.ah, 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.aa
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = srem i32 %i.ai, %i.ak
  br label %stbhw__weighted.exit

bb.i:                                             ; preds = %bb.g
  %i.am = icmp sgt i32 %i.af, 0
  br i1 %i.am, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext nneg i32 %i.af to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi613 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !34
  %wide.load614 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !34
  %i.ap = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.aq = add <4 x i32> %wide.load614, %vec.phi613 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph24.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.020.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.as, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.020.i = phi i32 [ %i.av, %.lr.ph.i ], [ %.020.i.ph, %.lr.ph.i.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34
  %i.av = add nsw i32 %i.au, %.020.i              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph24.preheader.i, label %.lr.ph.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %bb.i
  %i.aw = tail call i32 @rand() #16               ; 0 uses
  br label %stbhw__weighted.exit

.lr.ph24.preheader.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.as, %middle.block ], [ %i.av, %.lr.ph.i ]
  %i.ax = tail call i32 @rand() #16
  %i.ay = ashr i32 %i.ax, 4
  %i.az = srem i32 %i.ay, %.lcssa
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.j, %.lr.ph24.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %.lr.ph24.preheader.i ], [ %indvars.iv.next31.i, %bb.j ] ; 3 uses
  %.122.i = phi i32 [ 0, %.lr.ph24.preheader.i ], [ %i.bc, %bb.j ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv30.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = add nsw i32 %i.bb, %.122.i              ; 2 uses
  %i.bd = icmp slt i32 %i.az, %i.bc
  br i1 %i.bd, label %._crit_edge25.loopexit.split.loop.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph24.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count.i
  br i1 %exitcond34.not.i, label %stbhw__weighted.exit, label %.lr.ph24.i, !llvm.loop !78

._crit_edge25.loopexit.split.loop.exit.i:         ; preds = %.lr.ph24.i
  %i.be = trunc nuw nsw i64 %indvars.iv30.i to i32
  br label %stbhw__weighted.exit

stbhw__weighted.exit:                             ; preds = %bb.j, %._crit_edge25.loopexit.split.loop.exit.i, %._crit_edge.i, %bb.h
  %.116.lcssa.i.sink = phi i32 [ %i.al, %bb.h ], [ 0, %._crit_edge.i ], [ %i.be, %._crit_edge25.loopexit.split.loop.exit.i ], [ %i.af, %bb.j ]
  %i.bf = trunc i32 %.116.lcssa.i.sink to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count505
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.f, !llvm.loop !87

._crit_edge.split:                                ; preds = %stbhw__weighted.exit
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %wide.trip.count510
  br i1 %exitcond500.not, label %.preheader454, label %.preheader455, !llvm.loop !88

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv518.a = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next519.a, %._crit_edge ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [106 x i8], ptr @c_color, i64 %indvars.iv518.a ; 5 uses
  %indvars.iv.next519.a = add nuw nsw i64 %indvars.iv518.a, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [106 x i8], ptr @c_color, i64 %indvars.iv.next519.a ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 212 ; 2 uses
  %invariant.op641 = sub i64 1, %indvars.iv518.a
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.as
  %indvars.iv512 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next513.pre-phi, %bb.as ] ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv512 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !62  ; 9 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 107
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62
  %.not438 = icmp eq i8 %i.bl, %i.bn
  br i1 %.not438, label %bb.l, label %._crit_edge544

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv512 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 107
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !62
  %.not439 = icmp eq i8 %i.bp, %i.br
  br i1 %.not439, label %bb.m, label %.thread587

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv512 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62
  %i.bu = getelementptr i8, ptr %i.bs, i64 107
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  %.not440 = icmp eq i8 %i.bt, %i.bv
  br i1 %.not440, label %bb.n, label %.thread587

bb.n:                                             ; preds = %bb.m
  %i.bw = add nuw nsw i64 %indvars.iv512, 1       ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr i8, ptr %i.bx, i64 107
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !62
  %.not441 = icmp eq i8 %i.by, %i.ca
  br i1 %.not441, label %bb.o, label %.thread587

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bw ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 107
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !62
  %.not442 = icmp eq i8 %i.bl, %i.cd
  br i1 %.not442, label %bb.p, label %.thread587

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.ce, i64 107
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62
  %.not443 = icmp eq i8 %i.bp, %i.cg
  br i1 %.not443, label %bb.q, label %.thread587

bb.q:                                             ; preds = %bb.p
  %.reass602.reass = add i64 %indvars.iv512, %invariant.op641
  %i.ch = and i64 %.reass602.reass, 3             ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !34 ; 6 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %bb.r, label %.thread587

bb.r:                                             ; preds = %bb.q
  %i.cl = sext i8 %i.bl to i32                    ; 2 uses
  br i1 %.not313, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ch
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !71 ; 7 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %.thread, label %.lr.ph.preheader.i331

.lr.ph.preheader.i331:                            ; preds = %bb.s
  %i.co = zext i32 %i.cl to i64                   ; 6 uses
  %wide.trip.count.i332 = zext nneg i32 %i.cj to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i332, 3    ; 3 uses
  %i.cp = icmp ult i32 %i.cj, 4
  br i1 %i.cp, label %.lr.ph.i333.epil.preheader, label %.lr.ph.preheader.i331.new

.lr.ph.preheader.i331.new:                        ; preds = %.lr.ph.preheader.i331
  %unroll_iter = and i64 %wide.trip.count.i332, 2147483644
  br label %.lr.ph.i333

.lr.ph.i333:                                      ; preds = %bb.x, %.lr.ph.preheader.i331.new
  %indvars.iv.i334 = phi i64 [ 0, %.lr.ph.preheader.i331.new ], [ %indvars.iv.next.i335.3, %bb.x ] ; 6 uses
  %.02534.i = phi i32 [ 0, %.lr.ph.preheader.i331.new ], [ %.1.i.3, %bb.x ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i331.new ], [ %niter.next.3, %bb.x ]
  %.not32.i = icmp eq i64 %indvars.iv.i334, %i.co
  br i1 %.not32.i, label %.lr.ph.i333.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i333
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i334
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !34
  %i.cs = add nsw i32 %i.cr, %.02534.i
  br label %.lr.ph.i333.1

.lr.ph.i333.1:                                    ; preds = %bb.t, %.lr.ph.i333
  %.1.i = phi i32 [ %i.cs, %bb.t ], [ %.02534.i, %.lr.ph.i333 ] ; 2 uses
  %indvars.iv.next.i335 = or disjoint i64 %indvars.iv.i334, 1 ; 2 uses
  %.not32.i.1 = icmp eq i64 %indvars.iv.next.i335, %i.co
  br i1 %.not32.i.1, label %.lr.ph.i333.2, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i333.1
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next.i335
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !34
  %i.cv = add nsw i32 %i.cu, %.1.i
  br label %.lr.ph.i333.2

.lr.ph.i333.2:                                    ; preds = %bb.u, %.lr.ph.i333.1
  %.1.i.1 = phi i32 [ %i.cv, %bb.u ], [ %.1.i, %.lr.ph.i333.1 ] ; 2 uses
  %indvars.iv.next.i335.1 = or disjoint i64 %indvars.iv.i334, 2 ; 2 uses
  %.not32.i.2 = icmp eq i64 %indvars.iv.next.i335.1, %i.co
  br i1 %.not32.i.2, label %.lr.ph.i333.3, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i333.2
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next.i335.1
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !34
  %i.cy = add nsw i32 %i.cx, %.1.i.1
  br label %.lr.ph.i333.3

.lr.ph.i333.3:                                    ; preds = %bb.v, %.lr.ph.i333.2
  %.1.i.2 = phi i32 [ %i.cy, %bb.v ], [ %.1.i.1, %.lr.ph.i333.2 ] ; 2 uses
  %indvars.iv.next.i335.2 = or disjoint i64 %indvars.iv.i334, 3 ; 2 uses
  %.not32.i.3 = icmp eq i64 %indvars.iv.next.i335.2, %i.co
  br i1 %.not32.i.3, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i333.3
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next.i335.2
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !34
  %i.db = add nsw i32 %i.da, %.1.i.2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i333.3
  %.1.i.3 = phi i32 [ %i.db, %bb.w ], [ %.1.i.2, %.lr.ph.i333.3 ] ; 3 uses
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
  %.not32.i.epil = icmp eq i64 %indvars.iv.i334.epil, %i.co
  br i1 %.not32.i.epil, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i333.epil
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i334.epil
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !34
  %i.de = add nsw i32 %i.dd, %.02534.i.epil
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i333.epil
  %.1.i.epil = phi i32 [ %i.de, %bb.y ], [ %.02534.i.epil, %.lr.ph.i333.epil ] ; 2 uses
  %indvars.iv.next.i335.epil = add nuw nsw i64 %indvars.iv.i334.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i337, label %.lr.ph.i333.epil, !llvm.loop !91

._crit_edge.i337:                                 ; preds = %bb.z, %._crit_edge.i337.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.3, %._crit_edge.i337.unr-lcssa ], [ %.1.i.epil, %bb.z ]
  %i.df = tail call i32 @rand() #16
  %i.dg = ashr i32 %i.df, 4
  %i.dh = srem i32 %i.dg, %.1.i.lcssa
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.ab, %._crit_edge.i337
  %indvars.iv43.i = phi i64 [ 0, %._crit_edge.i337 ], [ %indvars.iv.next44.i, %bb.ab ] ; 4 uses
  %.236.i = phi i32 [ 0, %._crit_edge.i337 ], [ %.3.i, %bb.ab ] ; 2 uses
  %.not31.i = icmp eq i64 %indvars.iv43.i, %i.co
  br i1 %.not31.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph38.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv43.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !34
  %i.dk = add nsw i32 %i.dj, %.236.i              ; 2 uses
  %i.dl = icmp slt i32 %i.dh, %i.dk
  br i1 %i.dl, label %.loopexit.loopexit.split.loop.exit53.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph38.i
  %.3.i = phi i32 [ %i.dk, %bb.aa ], [ %.236.i, %.lr.ph38.i ]
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count.i332
  br i1 %exitcond47.not.i, label %.loopexit594, label %.lr.ph38.i, !llvm.loop !82

.thread:                                          ; preds = %bb.r, %bb.s
  %i.dm = tail call i32 @rand() #16
  %i.dn = ashr i32 %i.dm, 4
  %i.do = add nsw i32 %i.cj, -1
  %i.dp = srem i32 %i.dn, %i.do
  %i.dq = add nsw i32 %i.cl, 1
  %i.dr = add nsw i32 %i.dq, %i.dp
  %i.ds = srem i32 %i.dr, %i.cj
  br label %.loopexit594

.loopexit.loopexit.split.loop.exit53.i:           ; preds = %bb.aa
  %i.dt = trunc nuw nsw i64 %indvars.iv43.i to i32
end_hunk_0
begin_hunk_1_@stbhw_generate_image:bb.a
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !62  ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dy, i64 107
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !62
  %.not445 = icmp eq i8 %i.dz, %i.eb
  br i1 %.not445, label %bb.ac, label %bb.as

bb.ac:                                            ; preds = %.thread587
  %i.ec = add nuw nsw i64 %indvars.iv512, 2       ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ec ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !62
  %i.ef = getelementptr i8, ptr %i.ed, i64 107
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !62
  %.not446 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not446, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv512 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !62
  %i.ej = getelementptr i8, ptr %i.eh, i64 107
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !62
  %.not447 = icmp eq i8 %i.ei, %i.ek
  br i1 %.not447, label %bb.ae, label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dx
  %i.em = getelementptr i8, ptr %i.el, i64 107
  %i.en = load i8, ptr %i.em, align 1, !tbaa !62
  %.not448 = icmp eq i8 %i.dw, %i.en
  br i1 %.not448, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ec ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 107
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !62
  %.not449 = icmp eq i8 %i.dz, %i.eq
  br i1 %.not449, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.er = sub i64 %i.ec, %indvars.iv518.a
  %i.es = and i64 %i.er, 3                        ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !34 ; 6 uses
  %i.ev = icmp sgt i32 %i.eu, 1
  br i1 %i.ev, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.ew = sext i8 %i.dz to i32                    ; 2 uses
  br i1 %.not313, label %.thread418, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.es
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !71 ; 7 uses
  %.not.i338 = icmp eq ptr %i.ey, null
  br i1 %.not.i338, label %.thread418, label %.lr.ph.preheader.i342

.lr.ph.preheader.i342:                            ; preds = %bb.ai
  %i.ez = zext i32 %i.ew to i64                   ; 6 uses
  %wide.trip.count.i343 = zext nneg i32 %i.eu to i64 ; 3 uses
  %xtraiter627 = and i64 %wide.trip.count.i343, 3 ; 3 uses
  %i.fa = icmp ult i32 %i.eu, 4
  br i1 %i.fa, label %.lr.ph.i344.epil.preheader, label %.lr.ph.preheader.i342.new

.lr.ph.preheader.i342.new:                        ; preds = %.lr.ph.preheader.i342
  %unroll_iter632 = and i64 %wide.trip.count.i343, 2147483644
  br label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %bb.an, %.lr.ph.preheader.i342.new
  %indvars.iv.i345 = phi i64 [ 0, %.lr.ph.preheader.i342.new ], [ %indvars.iv.next.i349.3, %bb.an ] ; 6 uses
  %.02534.i346 = phi i32 [ 0, %.lr.ph.preheader.i342.new ], [ %.1.i348.3, %bb.an ] ; 2 uses
  %niter633 = phi i64 [ 0, %.lr.ph.preheader.i342.new ], [ %niter633.next.3, %bb.an ]
  %.not32.i347 = icmp eq i64 %indvars.iv.i345, %i.ez
  br i1 %.not32.i347, label %.lr.ph.i344.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i344
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i345
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !34
  %i.fd = add nsw i32 %i.fc, %.02534.i346
  br label %.lr.ph.i344.1

.lr.ph.i344.1:                                    ; preds = %bb.aj, %.lr.ph.i344
  %.1.i348 = phi i32 [ %i.fd, %bb.aj ], [ %.02534.i346, %.lr.ph.i344 ] ; 2 uses
  %indvars.iv.next.i349 = or disjoint i64 %indvars.iv.i345, 1 ; 2 uses
  %.not32.i347.1 = icmp eq i64 %indvars.iv.next.i349, %i.ez
  br i1 %.not32.i347.1, label %.lr.ph.i344.2, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i344.1
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next.i349
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !34
  %i.fg = add nsw i32 %i.ff, %.1.i348
  br label %.lr.ph.i344.2

.lr.ph.i344.2:                                    ; preds = %bb.ak, %.lr.ph.i344.1
  %.1.i348.1 = phi i32 [ %i.fg, %bb.ak ], [ %.1.i348, %.lr.ph.i344.1 ] ; 2 uses
  %indvars.iv.next.i349.1 = or disjoint i64 %indvars.iv.i345, 2 ; 2 uses
  %.not32.i347.2 = icmp eq i64 %indvars.iv.next.i349.1, %i.ez
  br i1 %.not32.i347.2, label %.lr.ph.i344.3, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i344.2
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next.i349.1
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !34
  %i.fj = add nsw i32 %i.fi, %.1.i348.1
  br label %.lr.ph.i344.3

.lr.ph.i344.3:                                    ; preds = %bb.al, %.lr.ph.i344.2
  %.1.i348.2 = phi i32 [ %i.fj, %bb.al ], [ %.1.i348.1, %.lr.ph.i344.2 ] ; 2 uses
  %indvars.iv.next.i349.2 = or disjoint i64 %indvars.iv.i345, 3 ; 2 uses
  %.not32.i347.3 = icmp eq i64 %indvars.iv.next.i349.2, %i.ez
  br i1 %.not32.i347.3, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i344.3
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next.i349.2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !34
  %i.fm = add nsw i32 %i.fl, %.1.i348.2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i344.3
  %.1.i348.3 = phi i32 [ %i.fm, %bb.am ], [ %.1.i348.2, %.lr.ph.i344.3 ] ; 3 uses
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
  %.not32.i347.epil = icmp eq i64 %indvars.iv.i345.epil, %i.ez
  br i1 %.not32.i347.epil, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i344.epil
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i345.epil
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !34
  %i.fp = add nsw i32 %i.fo, %.02534.i346.epil
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i344.epil
  %.1.i348.epil = phi i32 [ %i.fp, %bb.ao ], [ %.02534.i346.epil, %.lr.ph.i344.epil ] ; 2 uses
  %indvars.iv.next.i349.epil = add nuw nsw i64 %indvars.iv.i345.epil, 1
  %epil.iter628.next = add i64 %epil.iter628, 1   ; 2 uses
  %epil.iter628.cmp.not = icmp eq i64 %epil.iter628.next, %xtraiter627
  br i1 %epil.iter628.cmp.not, label %._crit_edge.i351, label %.lr.ph.i344.epil, !llvm.loop !92

._crit_edge.i351:                                 ; preds = %bb.ap, %._crit_edge.i351.unr-lcssa
  %.1.i348.lcssa = phi i32 [ %.1.i348.3, %._crit_edge.i351.unr-lcssa ], [ %.1.i348.epil, %bb.ap ]
  %i.fq = tail call i32 @rand() #16
  %i.fr = ashr i32 %i.fq, 4
  %i.fs = srem i32 %i.fr, %.1.i348.lcssa
  br label %.lr.ph38.i353

.lr.ph38.i353:                                    ; preds = %bb.ar, %._crit_edge.i351
  %indvars.iv43.i354 = phi i64 [ 0, %._crit_edge.i351 ], [ %indvars.iv.next44.i358, %bb.ar ] ; 4 uses
  %.236.i355 = phi i32 [ 0, %._crit_edge.i351 ], [ %.3.i357, %bb.ar ] ; 2 uses
  %.not31.i356 = icmp eq i64 %indvars.iv43.i354, %i.ez
  br i1 %.not31.i356, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph38.i353
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv43.i354
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !34
  %i.fv = add nsw i32 %i.fu, %.236.i355           ; 2 uses
  %i.fw = icmp slt i32 %i.fs, %i.fv
  br i1 %i.fw, label %.loopexit.loopexit.split.loop.exit53.i360, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph38.i353
  %.3.i357 = phi i32 [ %i.fv, %bb.aq ], [ %.236.i355, %.lr.ph38.i353 ]
  %indvars.iv.next44.i358 = add nuw nsw i64 %indvars.iv43.i354, 1 ; 2 uses
  %exitcond47.not.i359 = icmp eq i64 %indvars.iv.next44.i358, %wide.trip.count.i343
  br i1 %exitcond47.not.i359, label %stbhw__change_color.exit361, label %.lr.ph38.i353, !llvm.loop !82

.thread418:                                       ; preds = %bb.ah, %bb.ai
  %i.fx = tail call i32 @rand() #16
  %i.fy = ashr i32 %i.fx, 4
  %i.fz = add nsw i32 %i.eu, -1
  %i.ga = srem i32 %i.fy, %i.fz
  %i.gb = add nsw i32 %i.ew, 1
  %i.gc = add nsw i32 %i.gb, %i.ga
  %i.gd = srem i32 %i.gc, %i.eu
  br label %stbhw__change_color.exit361

.loopexit.loopexit.split.loop.exit53.i360:        ; preds = %bb.aq
  %i.ge = trunc nuw nsw i64 %indvars.iv43.i354 to i32
  br label %stbhw__change_color.exit361

stbhw__change_color.exit361:                      ; preds = %bb.ar, %.thread418, %.loopexit.loopexit.split.loop.exit53.i360
  %.0.i341 = phi i32 [ %i.gd, %.thread418 ], [ %i.ge, %.loopexit.loopexit.split.loop.exit53.i360 ], [ %i.eu, %bb.ar ]
  %i.gf = trunc i32 %.0.i341 to i8
  store i8 %i.gf, ptr %i.eo, align 1, !tbaa !62
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge544, %bb.ag, %stbhw__change_color.exit361, %.thread587, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %indvars.iv.next513.pre-phi = phi i64 [ %.pre545, %._crit_edge544 ], [ %i.dx, %bb.ag ], [ %i.dx, %stbhw__change_color.exit361 ], [ %i.dx, %.thread587 ], [ %i.dx, %bb.ac ], [ %i.dx, %bb.ad ], [ %i.dx, %bb.ae ], [ %i.dx, %bb.af ] ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next513.pre-phi, %wide.trip.count516
  br i1 %exitcond517.not, label %._crit_edge, label %bb.k, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.as
  %exitcond523.not = icmp eq i64 %indvars.iv.next519.a, %wide.trip.count522
  br i1 %exitcond523.not, label %._crit_edge465.split, label %.preheader, !llvm.loop !94

._crit_edge465.split:                             ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %.preheader454
  %i.gg = sub nsw i32 0, %i.b                     ; 2 uses
  %.not306470 = icmp sgt i32 %5, %i.gg
  br i1 %.not306470, label %.lr.ph474, label %.critedge324

.lr.ph474:                                        ; preds = %._crit_edge465.split
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %factor.op.mul31.i = shl i32 %i.b, 1            ; 3 uses
  %i.gj = icmp sgt i32 %i.b, 0                    ; 2 uses
  %i.gk = sext i32 %4 to i64                      ; 3 uses
  %i.gl = sext i32 %5 to i64                      ; 3 uses
  %i.gm = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count39.i = zext nneg i32 %i.b to i64 ; 2 uses
  %wide.trip.count.i363 = zext i32 %factor.op.mul31.i to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 56
  %smax.i = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31.i, i32 1)
  %wide.trip.count39.i369 = zext nneg i32 %smax.i to i64
  %i.gp = sext i32 %i.b to i64                    ; 2 uses
  %i.gq = sext i32 %i.gg to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph474, %._crit_edge469
  %indvars.iv529 = phi i64 [ -1, %.lr.ph474 ], [ %indvars.iv.next530, %._crit_edge469 ] ; 3 uses
  %indvars.iv527 = phi i64 [ %i.gq, %.lr.ph474 ], [ %indvars.iv.next528, %._crit_edge469 ] ; 4 uses
  %i.gr = trunc nsw i64 %indvars.iv529 to i32     ; 2 uses
  %i.gs = and i32 %i.gr, 3
  %i.gt = icmp eq i32 %i.gs, 0
  %i.gu = or i32 %i.gr, -4
  %.2261 = select i1 %i.gt, i32 0, i32 %i.gu      ; 2 uses
  %i.gv = mul nsw i32 %.2261, %i.b                ; 2 uses
  %.not303466 = icmp slt i32 %i.gv, %4
  br i1 %.not303466, label %.lr.ph, label %._crit_edge469

.lr.ph:                                           ; preds = %bb.at
  %i.gw = getelementptr [106 x i8], ptr @c_color, i64 %indvars.iv529 ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 212    ; 5 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 318    ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gw, i64 424    ; 2 uses
  %i.ha = sext i32 %.2261 to i64
  %i.hb = sext i32 %i.gv to i64
  %i.hc = trunc nsw i64 %indvars.iv527 to i32
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %.loopexit451
  %indvars.iv524 = phi i64 [ %i.ha, %.lr.ph ], [ %indvars.iv.next525, %.loopexit451 ] ; 6 uses
  %i.hd = phi i64 [ %i.hb, %.lr.ph ], [ %i.jo, %.loopexit451 ]
  %i.he = trunc nsw i64 %indvars.iv524 to i32
  %i.hf = add i32 %i.he, 2                        ; 2 uses
  %i.hg = mul i32 %i.hf, %i.b                     ; 2 uses
  %i.hh = or i32 %i.hg, %i.hc
  %or.cond10 = icmp sgt i32 %i.hh, -1
  br i1 %or.cond10, label %bb.av, label %stbhw__draw_h_tile.exit

bb.av:                                            ; preds = %bb.au
  %i.hi = load ptr, ptr %i.gh, align 8, !tbaa !95
  %i.hj = load i32, ptr %i.gi, align 8, !tbaa !96
  %i.hk = sext i32 %i.hf to i64                   ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.gx, i64 %i.hk
  %i.hm = add nsw i64 %indvars.iv524, 3           ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %i.gx, i64 %i.hm
  %i.ho = add nsw i64 %indvars.iv524, 4           ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.gx, i64 %i.ho
  %i.hq = getelementptr inbounds i8, ptr %i.gy, i64 %i.hk
  %i.hr = getelementptr inbounds i8, ptr %i.gy, i64 %i.hm
  %i.hs = getelementptr inbounds i8, ptr %i.gy, i64 %i.ho
  %i.ht = tail call ptr @stbhw__choose_tile(ptr noundef %i.hi, i32 noundef %i.hj, ptr noundef %i.hl, ptr noundef %i.hn, ptr noundef %i.hp, ptr noundef %i.hq, ptr noundef %i.hr, ptr noundef %i.hs, ptr noundef %1) ; 2 uses
  %.not304 = icmp eq ptr %i.ht, null
  br i1 %.not304, label %.critedge324, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.gj, label %.lr.ph33.split.us.preheader.i, label %stbhw__draw_h_tile.exit

.lr.ph33.split.us.preheader.i:                    ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 6
  br label %.lr.ph33.split.us.i

.lr.ph33.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph33.split.us.preheader.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph33.split.us.preheader.i ], [ %indvars.iv.next37.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.hv = add nsw i64 %indvars.iv36.i, %indvars.iv527 ; 2 uses
  %i.hw = icmp slt i64 %i.hv, %i.gl
  br i1 %i.hw, label %.preheader.us.i, label %..loopexit_crit_edge.us.i

bb.ax:                                            ; preds = %.preheader.us.i, %bb.az
  %indvars.iv.i364 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i365, %bb.az ] ; 3 uses
  %i.hx = add nsw i64 %indvars.iv.i364, %i.hd     ; 3 uses
  %i.hy = icmp sgt i64 %i.hx, -1
  %i.hz = icmp slt i64 %i.hx, %i.gk
  %or.cond29.us.i = and i1 %i.hy, %i.hz
  br i1 %or.cond29.us.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ia = add nsw i64 %indvars.iv.i364, %i.ii
  %i.ib = mul nsw i64 %i.ia, 3
  %i.ic = getelementptr inbounds i8, ptr %i.hu, i64 %i.ib
  %i.id = mul nuw nsw i64 %i.hx, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.id
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ie, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ic, i64 3, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv.next.i365 = add nuw nsw i64 %indvars.iv.i364, 1 ; 2 uses
  %exitcond.not.i366 = icmp eq i64 %indvars.iv.next.i365, %wide.trip.count.i363
  br i1 %exitcond.not.i366, label %..loopexit_crit_edge.us.i, label %bb.ax, !llvm.loop !58

..loopexit_crit_edge.us.i:                        ; preds = %bb.az, %.lr.ph33.split.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %stbhw__draw_h_tile.exit, label %.lr.ph33.split.us.i, !llvm.loop !59

.preheader.us.i:                                  ; preds = %.lr.ph33.split.us.i
  %i.if = trunc nuw nsw i64 %indvars.iv36.i to i32
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul31.i, %i.if
  %i.ig = mul nsw i64 %i.hv, %i.gm
  %i.ih = getelementptr inbounds i8, ptr %2, i64 %i.ig
  %i.ii = sext i32 %factor.op.mul.reass.us.i to i64
  br label %bb.ax

stbhw__draw_h_tile.exit:                          ; preds = %..loopexit_crit_edge.us.i, %bb.aw, %bb.au
  %i.ij = add nsw i32 %i.hg, %i.b                 ; 2 uses
  %i.ik = icmp slt i32 %i.ij, %4
  br i1 %i.ik, label %bb.ba, label %.loopexit451

bb.ba:                                            ; preds = %stbhw__draw_h_tile.exit
  %i.il = load ptr, ptr %i.gn, align 8, !tbaa !97
  %i.im = load i32, ptr %i.go, align 8, !tbaa !98
  %i.in = add nsw i64 %indvars.iv524, 5           ; 3 uses
  %i.io = getelementptr inbounds i8, ptr %i.gx, i64 %i.in
  %i.ip = getelementptr inbounds i8, ptr %i.gy, i64 %i.in
  %i.iq = getelementptr inbounds i8, ptr %i.gz, i64 %i.in
  %i.ir = add nsw i64 %indvars.iv524, 6           ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %i.gx, i64 %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.gy, i64 %i.ir
  %i.iu = getelementptr inbounds i8, ptr %i.gz, i64 %i.ir
  %i.iv = tail call ptr @stbhw__choose_tile(ptr noundef %i.il, i32 noundef %i.im, ptr noundef %i.io, ptr noundef %i.ip, ptr noundef %i.iq, ptr noundef %i.is, ptr noundef %i.it, ptr noundef %i.iu, ptr noundef %1) ; 2 uses
  %.not305 = icmp eq ptr %i.iv, null
  br i1 %.not305, label %.critedge324, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gj, label %.lr.ph33.split.us.preheader.i368, label %.loopexit451

.lr.ph33.split.us.preheader.i368:                 ; preds = %bb.bb
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 6
  %i.ix = sext i32 %i.ij to i64
  br label %.lr.ph33.split.us.i371

.lr.ph33.split.us.i371:                           ; preds = %..loopexit_crit_edge.us.i374, %.lr.ph33.split.us.preheader.i368
  %indvars.iv36.i372 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i368 ], [ %indvars.iv.next37.i375, %..loopexit_crit_edge.us.i374 ] ; 3 uses
  %i.iy = add nsw i64 %indvars.iv36.i372, %indvars.iv527 ; 3 uses
  %i.iz = icmp sgt i64 %i.iy, -1
  %i.ja = icmp slt i64 %i.iy, %i.gl
  %or.cond.us.i373 = and i1 %i.iz, %i.ja
  br i1 %or.cond.us.i373, label %.preheader.us.i377, label %..loopexit_crit_edge.us.i374

bb.bc:                                            ; preds = %.preheader.us.i377, %bb.be
  %indvars.iv.i378 = phi i64 [ 0, %.preheader.us.i377 ], [ %indvars.iv.next.i380, %bb.be ] ; 3 uses
  %i.jb = add nsw i64 %indvars.iv.i378, %i.ix     ; 3 uses
  %i.jc = icmp sgt i64 %i.jb, -1
  %i.jd = icmp slt i64 %i.jb, %i.gk
  %or.cond29.us.i379 = and i1 %i.jc, %i.jd
  br i1 %or.cond29.us.i379, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.je = add nuw nsw i64 %indvars.iv.i378, %i.jn
  %i.jf = mul nuw nsw i64 %i.je, 3
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jf
  %i.jh = mul nuw nsw i64 %i.jb, 3
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ji, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jg, i64 3, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i378, 1 ; 2 uses
  %exitcond.not.i381 = icmp eq i64 %indvars.iv.next.i380, %wide.trip.count39.i
  br i1 %exitcond.not.i381, label %..loopexit_crit_edge.us.i374, label %bb.bc, !llvm.loop !60

..loopexit_crit_edge.us.i374:                     ; preds = %bb.be, %.lr.ph33.split.us.i371
  %indvars.iv.next37.i375 = add nuw nsw i64 %indvars.iv36.i372, 1 ; 2 uses
  %exitcond40.not.i376 = icmp eq i64 %indvars.iv.next37.i375, %wide.trip.count39.i369
  br i1 %exitcond40.not.i376, label %.loopexit451, label %.lr.ph33.split.us.i371, !llvm.loop !61

.preheader.us.i377:                               ; preds = %.lr.ph33.split.us.i371
  %i.jj = mul nsw i64 %i.iy, %i.gm
  %i.jk = getelementptr inbounds i8, ptr %2, i64 %i.jj
  %i.jl = trunc i64 %indvars.iv36.i372 to i32
  %i.jm = mul i32 %i.b, %i.jl
  %i.jn = zext i32 %i.jm to i64
  br label %bb.bc

.loopexit451:                                     ; preds = %..loopexit_crit_edge.us.i374, %stbhw__draw_h_tile.exit, %bb.bb
  %indvars.iv.next525 = add nsw i64 %indvars.iv524, 4 ; 2 uses
  %i.jo = mul nsw i64 %indvars.iv.next525, %i.gp  ; 2 uses
  %.not303 = icmp slt i64 %i.jo, %i.gk
  br i1 %.not303, label %bb.au, label %._crit_edge469

._crit_edge469:                                   ; preds = %.loopexit451, %bb.at
  %indvars.iv.next528 = add nsw i64 %indvars.iv527, %i.gp ; 2 uses
  %indvars.iv.next530 = add nsw i64 %indvars.iv529, 1
end_hunk_1
