Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coremark/original/core_list_join?download=true
inline.NumInlined: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local signext range(i16 0, 128) i16 @calc_func(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !16     ; 6 uses
  %i.b = and i16 %i.a, 128
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %i.a, 127
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = and i16 %i.a, 7
  %i.e = lshr i16 %i.a, 3
  %i.f = and i16 %i.e, 15
  %i.g = mul nuw nsw i16 %i.f, 17                 ; 2 uses
  switch i16 %i.d, label %bb.h [
    i16 0, label %bb.d
    i16 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i16 @llvm.umax.i16(i16 %i.g, i16 34)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = load i16, ptr %1, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load i16, ptr %i.o, align 8, !tbaa !28
  %i.q = tail call zeroext i16 @core_bench_state(i32 noundef %i.i, ptr noundef %i.k, i16 noundef signext %i.l, i16 noundef signext %i.n, i16 noundef signext %spec.store.select, i16 noundef zeroext %i.p) #9 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 102 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store i16 %i.q, ptr %i.r, align 2, !tbaa !29
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i16, ptr %i.v, align 8, !tbaa !28
  %i.x = tail call zeroext i16 @core_bench_matrix(ptr noundef nonnull %i.u, i16 noundef signext %i.g, i16 noundef zeroext %i.w) #9 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.z = load i16, ptr %i.y, align 4, !tbaa !30
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 %i.x, ptr %i.y, align 4, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g, %bb.d, %bb.e
  %.0 = phi i16 [ %i.x, %bb.f ], [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.x, %bb.g ], [ %i.a, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !28
  %i.ad = tail call zeroext i16 @crcu16(i16 noundef zeroext %.0, i16 noundef zeroext %i.ac) #9
  store i16 %i.ad, ptr %i.ab, align 8, !tbaa !28
  %i.ae = and i16 %.0, 127                        ; 2 uses
  %i.af = and i16 %i.a, -256
  %i.ag = or disjoint i16 %i.af, %i.ae
  %i.ah = or disjoint i16 %i.ag, 128
  store i16 %i.ah, ptr %0, align 2, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.034 = phi i16 [ %i.c, %bb.b ], [ %i.ae, %bb.h ]
  ret i16 %.034
}

declare zeroext i16 @core_bench_state(i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

declare zeroext i16 @core_bench_matrix(ptr noundef, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

declare zeroext i16 @crcu16(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -127, 128) i32 @cmp_complex(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call signext i16 @calc_func(ptr noundef %0, ptr noundef %2)
  %i.b = tail call signext i16 @calc_func(ptr noundef %1, ptr noundef %2)
  %i.c = zext nneg i16 %i.a to i32
  %i.d = zext nneg i16 %i.b to i32
  %i.e = sub nsw i32 %i.c, %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -65535, 65536) i32 @cmp_idx(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !32     ; 2 uses
  %i.c = and i16 %i.b, -256
  %i.d = lshr i16 %i.b, 8
  %i.e = or disjoint i16 %i.d, %i.c
  store i16 %i.e, ptr %0, align 2, !tbaa !32
  %i.f = load i16, ptr %1, align 2, !tbaa !32     ; 2 uses
  %i.g = and i16 %i.f, -256
  %i.h = lshr i16 %i.f, 8
  %i.i = or disjoint i16 %i.h, %i.g
  store i16 %i.i, ptr %1, align 2, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !33
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !33
  %i.o = sext i16 %i.n to i32
  %i.p = sub nsw i32 %i.l, %i.o
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_info(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load <2 x i16>, ptr %1, align 2, !tbaa !16
  store <2 x i16> %i.a, ptr %0, align 2, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @core_bench_list(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !43   ; 3 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.a, %bb.f
  %.0146 = phi i16 [ %i.ak, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.048145 = phi ptr [ %.0.lcssa.i, %bb.f ], [ %i.b, %bb.a ] ; 5 uses
  %.050144 = phi i16 [ %.151, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.052143 = phi i16 [ %.153, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.054142 = phi i16 [ %.256, %bb.f ], [ 0, %bb.a ]
  %.sroa.6.0141 = phi i16 [ %spec.select, %bb.f ], [ %1, %bb.a ] ; 3 uses
  %2 = icmp sgt i16 %.sroa.6.0141, -1             ; 2 uses
  %.not1625.i.not = icmp eq ptr %.048145, null
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.048145) ]
  br i1 %2, label %.lr.ph27.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.lr.ph.a, %bb.b
  %.01426.i = phi ptr [ %i.j, %bb.b ], [ %.048145, %.lr.ph.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01426.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !33
  %.not17.i = icmp eq i16 %i.i, %.sroa.6.0141
  br i1 %.not17.i, label %core_list_find.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph27.i
  %i.j = load ptr, ptr %.01426.i, align 8, !tbaa !37 ; 2 uses
  %.not16.i = icmp eq ptr %i.j, null
  br i1 %.not16.i, label %core_list_find.exit, label %.lr.ph27.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.a, %bb.c
  %.122.i = phi ptr [ %i.p, %bb.c ], [ %.048145, %.lr.ph.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.122.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = load i16, ptr %i.l, align 2, !tbaa !32
  %i.n = xor i16 %i.m, %.0146
  %i.o = and i16 %i.n, 255
  %.not15.i = icmp eq i16 %i.o, 0
  br i1 %.not15.i, label %core_list_find.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %.122.i, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %core_list_find.exit, label %.lr.ph.i, !llvm.loop !1

core_list_find.exit:                              ; preds = %.lr.ph.i, %bb.c, %.lr.ph27.i, %bb.b
  %.0.i = phi ptr [ %.01426.i, %.lr.ph27.i ], [ null, %bb.b ], [ null, %bb.c ], [ %.122.i, %.lr.ph.i ] ; 4 uses
  br i1 %.not1625.i.not, label %core_list_reverse.exit, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %core_list_find.exit, %.lr.ph.i65
  %.010.i = phi ptr [ %.079.i, %.lr.ph.i65 ], [ null, %core_list_find.exit ]
  %.079.i = phi ptr [ %i.q, %.lr.ph.i65 ], [ %.048145, %core_list_find.exit ] ; 4 uses
  %i.q = load ptr, ptr %.079.i, align 8, !tbaa !37 ; 2 uses
  store ptr %.010.i, ptr %.079.i, align 8, !tbaa !37
  %.not.i66 = icmp eq ptr %i.q, null
  br i1 %.not.i66, label %core_list_reverse.exit, label %.lr.ph.i65, !llvm.loop !2

core_list_reverse.exit:                           ; preds = %.lr.ph.i65, %core_list_find.exit
  %.0.lcssa.i = phi ptr [ null, %core_list_find.exit ], [ %.079.i, %.lr.ph.i65 ] ; 5 uses
  %i.r = icmp eq ptr %.0.i, null
  br i1 %i.r, label %core_list_reverse.exit.thread, label %bb.d

core_list_reverse.exit.thread:                    ; preds = %core_list_reverse.exit
  %i.s = add i16 %.050144, 1
  %3 = load ptr, ptr %.0.lcssa.i, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = load i16, ptr %i.u, align 2, !tbaa !32
  %i.w = lshr i16 %i.v, 8
  %i.x = and i16 %i.w, 1
  br label %bb.f

bb.d:                                             ; preds = %core_list_reverse.exit
  %i.y = add i16 %.052143, 1                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !32 ; 2 uses
  %i.ac = and i16 %i.ab, 1
  %.not63 = icmp eq i16 %i.ac, 0
  %i.ad = lshr i16 %i.ab, 9
  %i.ae = and i16 %i.ad, 1
  %i.af = select i1 %.not63, i16 0, i16 %i.ae     ; 2 uses
  %i.ag = load ptr, ptr %.0.i, align 8, !tbaa !37 ; 4 uses
  %.not64 = icmp eq ptr %i.ag, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37
  store ptr %i.ah, ptr %.0.i, align 8, !tbaa !37
  %i.ai = load ptr, ptr %.0.lcssa.i, align 8, !tbaa !37
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !37
  store ptr %i.ag, ptr %.0.lcssa.i, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %core_list_reverse.exit.thread
  %.pn = phi i16 [ %i.x, %core_list_reverse.exit.thread ], [ %i.af, %bb.e ], [ %i.af, %bb.d ]
  %.153 = phi i16 [ %.052143, %core_list_reverse.exit.thread ], [ %i.y, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.151 = phi i16 [ %i.s, %core_list_reverse.exit.thread ], [ %.050144, %bb.e ], [ %.050144, %bb.d ] ; 2 uses
  %.256 = add i16 %.pn, %.054142                  ; 2 uses
  %i.aj = zext i1 %2 to i16
  %spec.select = add nuw i16 %.sroa.6.0141, %i.aj ; 2 uses
  %i.ak = add nuw nsw i16 %.0146, 1               ; 2 uses
  %exitcond.not = icmp eq i16 %i.ak, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph.a, !llvm.loop !39

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.al = add nuw i16 %i.d, 255
  %i.am = and i16 %i.al, 255
  %i.an = shl i16 %.153, 2
  %i.ao = sub i16 %.256, %.151
  %i.ap = add i16 %i.ao, %i.an
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.6.0.lcssa = phi i16 [ %1, %bb.a ], [ %spec.select, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.0.lcssa = phi i16 [ 0, %bb.a ], [ %i.am, %._crit_edge.loopexit ]
  %.048.lcssa = phi ptr [ %i.b, %bb.a ], [ %.0.lcssa.i, %._crit_edge.loopexit ] ; 2 uses
  %i.aq = phi i16 [ 0, %bb.a ], [ %i.ap, %._crit_edge.loopexit ] ; 2 uses
  %i.ar = icmp sgt i16 %1, 0
  br i1 %i.ar, label %.lr.ph79.i.preheader, label %core_list_mergesort.exit

.lr.ph79.i.preheader:                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 4 uses
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %._crit_edge80.i
  %.058.i = phi ptr [ %.260.us.i.ph, %._crit_edge80.i ], [ %.048.lcssa, %.lr.ph79.i.preheader ] ; 2 uses
  %.047.i = phi i32 [ %i.du, %._crit_edge80.i ], [ 1, %.lr.ph79.i.preheader ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i) ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit.us.i, %.lr.ph79.i
  %.04677.us.i = phi i32 [ %i.az, %.loopexit.us.i ], [ 0, %.lr.ph79.i ] ; 2 uses
  %.04876.us.i = phi ptr [ %.149.us.i, %.loopexit.us.i ], [ null, %.lr.ph79.i ]
  %.05575.us.i = phi ptr [ %.253.us.i, %.loopexit.us.i ], [ %.058.i, %.lr.ph79.i ] ; 2 uses
  %.15974.us.i = phi ptr [ %.260.us.i.ph, %.loopexit.us.i ], [ null, %.lr.ph79.i ]
  %i.az = add nuw nsw i32 %.04677.us.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %exitcond.not.i = icmp eq i32 %i.ba, %.047.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i.preheader, label %bb.h, !llvm.loop !3

bb.h:                                             ; preds = %bb.g, %.lr.ph.us.i
  %.068.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.ba, %bb.g ]
  %.05166.us.i = phi ptr [ %.05575.us.i, %.lr.ph.us.i ], [ %i.bb, %bb.g ]
  %i.ba = add nuw nsw i32 %.068.us.i, 1           ; 3 uses
  %i.bb = load ptr, ptr %.05166.us.i, align 8, !tbaa !37 ; 3 uses
  %.not64.us.i = icmp eq ptr %i.bb, null
  br i1 %.not64.us.i, label %._crit_edge.us.i.preheader, label %bb.g

._crit_edge.us.i.preheader:                       ; preds = %bb.h, %bb.g
  %.2.us.i.ph = phi i32 [ %i.ba, %bb.h ], [ %.047.i, %bb.g ]
  br label %._crit_edge.us.i.outer

._crit_edge.us.i.outer:                           ; preds = %bb.ac, %._crit_edge.us.i.preheader
  %.260.us.i.ph = phi ptr [ %.15974.us.i, %._crit_edge.us.i.preheader ], [ %.050.us.i, %bb.ac ] ; 3 uses
  %.156.us.i.ph = phi ptr [ %.05575.us.i, %._crit_edge.us.i.preheader ], [ %.257.us.i, %bb.ac ]
  %.253.us.i.ph = phi ptr [ %i.bb, %._crit_edge.us.i.preheader ], [ %.354.us.i, %bb.ac ]
  %.149.us.i.ph = phi ptr [ %.04876.us.i, %._crit_edge.us.i.preheader ], [ %.050.us.i, %bb.ac ]
  %.2.us.i.ph221 = phi i32 [ %.2.us.i.ph, %._crit_edge.us.i.preheader ], [ %.3.us.i, %bb.ac ]
  %.043.us.i.ph = phi i32 [ %.047.i, %._crit_edge.us.i.preheader ], [ %.1.us.i, %bb.ac ]
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.outer, %bb.ad
  %.156.us.i = phi ptr [ %.257.us.i, %bb.ad ], [ %.156.us.i.ph, %._crit_edge.us.i.outer ] ; 7 uses
  %.253.us.i = phi ptr [ %.354.us.i, %bb.ad ], [ %.253.us.i.ph, %._crit_edge.us.i.outer ] ; 10 uses
  %.149.us.i = phi ptr [ %.050.us.i, %bb.ad ], [ %.149.us.i.ph, %._crit_edge.us.i.outer ] ; 4 uses
  %.2.us.i = phi i32 [ %.3.us.i, %bb.ad ], [ %.2.us.i.ph221, %._crit_edge.us.i.outer ] ; 5 uses
  %.043.us.i = phi i32 [ %.1.us.i, %bb.ad ], [ %.043.us.i.ph, %._crit_edge.us.i.outer ] ; 6 uses
  %i.bc = icmp sgt i32 %.2.us.i, 0
  br i1 %i.bc, label %.critedge.thread.us.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.us.i
  %i.bd = icmp sgt i32 %.043.us.i, 0
  %i.be = icmp ne ptr %.253.us.i, null            ; 2 uses
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.critedge.us.i, label %.loopexit.us.i

.critedge.us.i:                                   ; preds = %bb.i
  %i.bg = icmp eq i32 %.2.us.i, 0
  br i1 %i.bg, label %bb.j, label %.critedge.thread.us.i

bb.j:                                             ; preds = %.critedge.us.i
  %i.bh = load ptr, ptr %.253.us.i, align 8, !tbaa !37
  %i.bi = add nsw i32 %.043.us.i, -1
  br label %bb.ac

.critedge.thread.us.i:                            ; preds = %.critedge.us.i, %._crit_edge.us.i
  %i.bj = icmp ne i32 %.043.us.i, 0
  %i.bk = icmp ne ptr %.253.us.i, null
  %or.cond.us.i = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.us.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge.thread.us.i
  %i.bl = load ptr, ptr %.156.us.i, align 8, !tbaa !37
  %i.bm = add nsw i32 %.2.us.i, -1
  br label %bb.ac

bb.l:                                             ; preds = %.critedge.thread.us.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.br = load i16, ptr %i.bo, align 2, !tbaa !16 ; 6 uses
  %i.bs = and i16 %i.br, 128
  %.not.i115 = icmp eq i16 %i.bs, 0
  br i1 %.not.i115, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = and i16 %i.br, 127
  br label %calc_func.exit119

bb.n:                                             ; preds = %bb.l
  %i.bu = and i16 %i.br, 7
  %i.bv = lshr i16 %i.br, 3
  %i.bw = and i16 %i.bv, 15
  %i.bx = mul nuw nsw i16 %i.bw, 17               ; 2 uses
  switch i16 %i.bu, label %bb.s [
    i16 0, label %bb.o
    i16 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %spec.store.select.i118 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 34)
  %i.by = load i32, ptr %i.av, align 8, !tbaa !24
  %i.bz = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ca = load i16, ptr %0, align 8, !tbaa !26
  %i.cb = load i16, ptr %i.ax, align 2, !tbaa !27
  %i.cc = load i16, ptr %i.at, align 8, !tbaa !28
  %i.cd = tail call zeroext i16 @core_bench_state(i32 noundef %i.by, ptr noundef %i.bz, i16 noundef signext %i.ca, i16 noundef signext %i.cb, i16 noundef signext %spec.store.select.i118, i16 noundef zeroext %i.cc) #9 ; 3 uses
  %i.ce = load i16, ptr %i.ay, align 2, !tbaa !29
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  store i16 %i.cd, ptr %i.ay, align 2, !tbaa !29
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.cg = load i16, ptr %i.at, align 8, !tbaa !28
  %i.ch = tail call zeroext i16 @core_bench_matrix(ptr noundef nonnull %i.as, i16 noundef signext %i.bx, i16 noundef zeroext %i.cg) #9 ; 3 uses
  %i.ci = load i16, ptr %i.au, align 4, !tbaa !30
  %i.cj = icmp eq i16 %i.ci, 0
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i16 %i.ch, ptr %i.au, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.0.i117 = phi i16 [ %i.ch, %bb.q ], [ %i.cd, %bb.p ], [ %i.cd, %bb.o ], [ %i.ch, %bb.r ], [ %i.br, %bb.n ] ; 2 uses
  %i.ck = load i16, ptr %i.at, align 8, !tbaa !28
  %i.cl = tail call zeroext i16 @crcu16(i16 noundef zeroext %.0.i117, i16 noundef zeroext %i.ck) #9
  store i16 %i.cl, ptr %i.at, align 8, !tbaa !28
  %i.cm = and i16 %.0.i117, 127                   ; 2 uses
  %i.cn = and i16 %i.br, -256
  %i.co = or disjoint i16 %i.cn, %i.cm
  %i.cp = or disjoint i16 %i.co, 128
  store i16 %i.cp, ptr %i.bo, align 2, !tbaa !16
  br label %calc_func.exit119

calc_func.exit119:                                ; preds = %bb.m, %bb.s
  %.034.i116 = phi i16 [ %i.bt, %bb.m ], [ %i.cm, %bb.s ]
  %i.cq = load i16, ptr %i.bq, align 2, !tbaa !16 ; 6 uses
  %i.cr = and i16 %i.cq, 128
  %.not.i113 = icmp eq i16 %i.cr, 0
  br i1 %.not.i113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %calc_func.exit119
  %i.cs = and i16 %i.cq, 127
  br label %calc_func.exit

bb.u:                                             ; preds = %calc_func.exit119
  %i.ct = and i16 %i.cq, 7
  %i.cu = lshr i16 %i.cq, 3
  %i.cv = and i16 %i.cu, 15
  %i.cw = mul nuw nsw i16 %i.cv, 17               ; 2 uses
  switch i16 %i.ct, label %bb.z [
    i16 0, label %bb.v
    i16 1, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %spec.store.select.i = tail call i16 @llvm.umax.i16(i16 %i.cw, i16 34)
  %i.cx = load i32, ptr %i.av, align 8, !tbaa !24
  %i.cy = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.cz = load i16, ptr %0, align 8, !tbaa !26
  %i.da = load i16, ptr %i.ax, align 2, !tbaa !27
  %i.db = load i16, ptr %i.at, align 8, !tbaa !28
  %i.dc = tail call zeroext i16 @core_bench_state(i32 noundef %i.cx, ptr noundef %i.cy, i16 noundef signext %i.cz, i16 noundef signext %i.da, i16 noundef signext %spec.store.select.i, i16 noundef zeroext %i.db) #9 ; 3 uses
  %i.dd = load i16, ptr %i.ay, align 2, !tbaa !29
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  store i16 %i.dc, ptr %i.ay, align 2, !tbaa !29
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.df = load i16, ptr %i.at, align 8, !tbaa !28
  %i.dg = tail call zeroext i16 @core_bench_matrix(ptr noundef nonnull %i.as, i16 noundef signext %i.cw, i16 noundef zeroext %i.df) #9 ; 3 uses
  %i.dh = load i16, ptr %i.au, align 4, !tbaa !30
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i16 %i.dg, ptr %i.au, align 4, !tbaa !30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
end_hunk_0
begin_hunk_1_@core_bench_list:bb.a
  %.not15.i71 = icmp eq i16 %i.ek, %.sroa.0.0.lcssa
  br i1 %.not15.i71, label %.lr.ph155, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i69
  %i.el = load ptr, ptr %.122.i70, align 8, !tbaa !37 ; 2 uses
  %.not.i72 = icmp eq ptr %i.el, null
  br i1 %.not.i72, label %core_list_find.exit79, label %.lr.ph.i69, !llvm.loop !1

core_list_find.exit79:                            ; preds = %bb.af, %bb.ae
  %i.em = load ptr, ptr %.149, align 8, !tbaa !37 ; 2 uses
  %.not61152 = icmp eq ptr %i.em, null
  br i1 %.not61152, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph.i69, %.lr.ph27.i75, %core_list_find.exit79
  %.047188 = phi ptr [ %i.em, %core_list_find.exit79 ], [ %.01426.i76, %.lr.ph27.i75 ], [ %.122.i70, %.lr.ph.i69 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.149, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph155, %bb.ag
  %.1154 = phi ptr [ %.047188, %.lr.ph155 ], [ %i.er, %bb.ag ]
  %.3153 = phi i16 [ %i.aq, %.lr.ph155 ], [ %i.eq, %bb.ag ]
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !36
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !32
  %i.eq = tail call zeroext i16 @crc16(i16 noundef signext %i.ep, i16 noundef zeroext %.3153) #9 ; 2 uses
  %i.er = load ptr, ptr %.1154, align 8, !tbaa !37 ; 2 uses
  %.not61 = icmp eq ptr %i.er, null
  br i1 %.not61, label %._crit_edge156.loopexit, label %bb.ag, !llvm.loop !40

._crit_edge156.loopexit:                          ; preds = %bb.ag
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !36
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %._crit_edge156.loopexit, %core_list_find.exit79
  %i.es = phi ptr [ %i.dy, %core_list_find.exit79 ], [ %.pre, %._crit_edge156.loopexit ]
  %.3.lcssa = phi i16 [ %i.aq, %core_list_find.exit79 ], [ %i.eq, %._crit_edge156.loopexit ] ; 2 uses
  %i.et = load ptr, ptr %.149, align 8, !tbaa !37 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load <2 x ptr>, ptr %i.et, align 8, !tbaa !25
  store <2 x ptr> %i.ev, ptr %i.dw, align 8, !tbaa !25
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !36
  store ptr %i.dw, ptr %i.et, align 8, !tbaa !37
  br label %.lr.ph79.i80

.lr.ph79.i80:                                     ; preds = %._crit_edge80.i101, %._crit_edge156
  %.058.i81 = phi ptr [ %.149, %._crit_edge156 ], [ %.260.us.i94.ph, %._crit_edge80.i101 ] ; 2 uses
  %.047.i82 = phi i32 [ 1, %._crit_edge156 ], [ %i.gf, %._crit_edge80.i101 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i81) ]
  br label %.lr.ph.us.i83

.lr.ph.us.i83:                                    ; preds = %.loopexit.us.i100, %.lr.ph79.i80
  %.04677.us.i84 = phi i32 [ %i.ew, %.loopexit.us.i100 ], [ 0, %.lr.ph79.i80 ] ; 2 uses
  %.04876.us.i85 = phi ptr [ %.149.us.i97, %.loopexit.us.i100 ], [ null, %.lr.ph79.i80 ]
  %.05575.us.i86 = phi ptr [ %.253.us.i96, %.loopexit.us.i100 ], [ %.058.i81, %.lr.ph79.i80 ] ; 2 uses
  %.15974.us.i87 = phi ptr [ %.260.us.i94.ph, %.loopexit.us.i100 ], [ null, %.lr.ph79.i80 ]
  %i.ew = add nuw nsw i32 %.04677.us.i84, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %exitcond.not.i91 = icmp eq i32 %i.ex, %.047.i82
  br i1 %exitcond.not.i91, label %._crit_edge.us.i92.preheader, label %bb.ai, !llvm.loop !3

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.us.i83
  %.068.us.i88 = phi i32 [ 0, %.lr.ph.us.i83 ], [ %i.ex, %bb.ah ]
  %.05166.us.i89 = phi ptr [ %.05575.us.i86, %.lr.ph.us.i83 ], [ %i.ey, %bb.ah ]
  %i.ex = add nuw nsw i32 %.068.us.i88, 1         ; 3 uses
  %i.ey = load ptr, ptr %.05166.us.i89, align 8, !tbaa !37 ; 3 uses
  %.not64.us.i90 = icmp eq ptr %i.ey, null
  br i1 %.not64.us.i90, label %._crit_edge.us.i92.preheader, label %bb.ah

._crit_edge.us.i92.preheader:                     ; preds = %bb.ai, %bb.ah
  %.2.us.i98.ph = phi i32 [ %i.ex, %bb.ai ], [ %.047.i82, %bb.ah ]
  br label %._crit_edge.us.i92.outer

._crit_edge.us.i92.outer:                         ; preds = %bb.ap, %._crit_edge.us.i92.preheader
  %.260.us.i94.ph = phi ptr [ %.15974.us.i87, %._crit_edge.us.i92.preheader ], [ %.050.us.i107, %bb.ap ] ; 4 uses
  %.156.us.i95.ph = phi ptr [ %.05575.us.i86, %._crit_edge.us.i92.preheader ], [ %.257.us.i105, %bb.ap ]
  %.253.us.i96.ph = phi ptr [ %i.ey, %._crit_edge.us.i92.preheader ], [ %.354.us.i106, %bb.ap ]
  %.149.us.i97.ph = phi ptr [ %.04876.us.i85, %._crit_edge.us.i92.preheader ], [ %.050.us.i107, %bb.ap ]
  %.2.us.i98.ph211 = phi i32 [ %.2.us.i98.ph, %._crit_edge.us.i92.preheader ], [ %.3.us.i108, %bb.ap ]
  %.043.us.i99.ph = phi i32 [ %.047.i82, %._crit_edge.us.i92.preheader ], [ %.1.us.i109, %bb.ap ]
  br label %._crit_edge.us.i92

._crit_edge.us.i92:                               ; preds = %._crit_edge.us.i92.outer, %bb.aq
  %.156.us.i95 = phi ptr [ %.257.us.i105, %bb.aq ], [ %.156.us.i95.ph, %._crit_edge.us.i92.outer ] ; 7 uses
  %.253.us.i96 = phi ptr [ %.354.us.i106, %bb.aq ], [ %.253.us.i96.ph, %._crit_edge.us.i92.outer ] ; 10 uses
  %.149.us.i97 = phi ptr [ %.050.us.i107, %bb.aq ], [ %.149.us.i97.ph, %._crit_edge.us.i92.outer ] ; 4 uses
  %.2.us.i98 = phi i32 [ %.3.us.i108, %bb.aq ], [ %.2.us.i98.ph211, %._crit_edge.us.i92.outer ] ; 5 uses
  %.043.us.i99 = phi i32 [ %.1.us.i109, %bb.aq ], [ %.043.us.i99.ph, %._crit_edge.us.i92.outer ] ; 6 uses
  %i.ez = icmp sgt i32 %.2.us.i98, 0
  br i1 %i.ez, label %.critedge.thread.us.i103, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.us.i92
  %i.fa = icmp sgt i32 %.043.us.i99, 0
  %i.fb = icmp ne ptr %.253.us.i96, null          ; 2 uses
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %i.fc, label %.critedge.us.i102, label %.loopexit.us.i100

.critedge.us.i102:                                ; preds = %bb.aj
  %i.fd = icmp eq i32 %.2.us.i98, 0
  br i1 %i.fd, label %bb.ak, label %.critedge.thread.us.i103

bb.ak:                                            ; preds = %.critedge.us.i102
  %i.fe = load ptr, ptr %.253.us.i96, align 8, !tbaa !37
  %i.ff = add nsw i32 %.043.us.i99, -1
  br label %bb.ap

.critedge.thread.us.i103:                         ; preds = %.critedge.us.i102, %._crit_edge.us.i92
  %i.fg = icmp ne i32 %.043.us.i99, 0
  %i.fh = icmp ne ptr %.253.us.i96, null
  %or.cond.us.i104 = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.us.i104, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.thread.us.i103
  %i.fi = load ptr, ptr %.156.us.i95, align 8, !tbaa !37
  %i.fj = add nsw i32 %.2.us.i98, -1
  br label %bb.ap

bb.am:                                            ; preds = %.critedge.thread.us.i103
  %i.fk = getelementptr inbounds nuw i8, ptr %.156.us.i95, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !36 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.253.us.i96, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !36 ; 3 uses
  %i.fo = load i16, ptr %i.fl, align 2, !tbaa !32 ; 2 uses
  %i.fp = and i16 %i.fo, -256
  %i.fq = lshr i16 %i.fo, 8
  %i.fr = or disjoint i16 %i.fq, %i.fp
  store i16 %i.fr, ptr %i.fl, align 2, !tbaa !32
  %i.fs = load i16, ptr %i.fn, align 2, !tbaa !32 ; 2 uses
  %i.ft = and i16 %i.fs, -256
  %i.fu = lshr i16 %i.fs, 8
  %i.fv = or disjoint i16 %i.fu, %i.ft
  store i16 %i.fv, ptr %i.fn, align 2, !tbaa !32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !33
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !33
  %.not = icmp sgt i16 %i.fx, %i.fz
  br i1 %.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ga = load ptr, ptr %.253.us.i96, align 8, !tbaa !37
  %i.gb = add nsw i32 %.043.us.i99, -1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gc = load ptr, ptr %.156.us.i95, align 8, !tbaa !37
  %i.gd = add nsw i32 %.2.us.i98, -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  %.257.us.i105 = phi ptr [ %.156.us.i95, %bb.ak ], [ %i.gc, %bb.ao ], [ %.156.us.i95, %bb.an ], [ %i.fi, %bb.al ] ; 2 uses
  %.354.us.i106 = phi ptr [ %i.fe, %bb.ak ], [ %.253.us.i96, %bb.ao ], [ %i.ga, %bb.an ], [ %.253.us.i96, %bb.al ] ; 2 uses
  %.050.us.i107 = phi ptr [ %.253.us.i96, %bb.ak ], [ %.156.us.i95, %bb.ao ], [ %.253.us.i96, %bb.an ], [ %.156.us.i95, %bb.al ] ; 4 uses
  %.3.us.i108 = phi i32 [ 0, %bb.ak ], [ %i.gd, %bb.ao ], [ %.2.us.i98, %bb.an ], [ %i.fj, %bb.al ] ; 2 uses
  %.1.us.i109 = phi i32 [ %i.ff, %bb.ak ], [ %.043.us.i99, %bb.ao ], [ %i.gb, %bb.an ], [ %.043.us.i99, %bb.al ] ; 2 uses
  %.not65.us.i110 = icmp eq ptr %.149.us.i97, null
  br i1 %.not65.us.i110, label %._crit_edge.us.i92.outer, label %bb.aq, !llvm.loop !4

bb.aq:                                            ; preds = %bb.ap
  store ptr %.050.us.i107, ptr %.149.us.i97, align 8, !tbaa !37
  br label %._crit_edge.us.i92, !llvm.loop !4

.loopexit.us.i100:                                ; preds = %bb.aj
  br i1 %i.fb, label %.lr.ph.us.i83, label %._crit_edge80.i101, !llvm.loop !5

._crit_edge80.i101:                               ; preds = %.loopexit.us.i100
  store ptr null, ptr %.149.us.i97, align 8, !tbaa !37
  %i.ge = icmp eq i32 %.04677.us.i84, 0
  %i.gf = shl nuw nsw i32 %.047.i82, 1
  br i1 %i.ge, label %core_list_mergesort.exit112.preheader, label %.lr.ph79.i80

core_list_mergesort.exit112.preheader:            ; preds = %._crit_edge80.i101
  %.2158 = load ptr, ptr %.260.us.i94.ph, align 8, !tbaa !37 ; 2 uses
  %.not62159 = icmp eq ptr %.2158, null
  br i1 %.not62159, label %core_list_mergesort.exit112._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %core_list_mergesort.exit112.preheader
  %i.gg = getelementptr inbounds nuw i8, ptr %.260.us.i94.ph, i64 8
  br label %core_list_mergesort.exit112

core_list_mergesort.exit112:                      ; preds = %.lr.ph162, %core_list_mergesort.exit112
  %.2161 = phi ptr [ %.2158, %.lr.ph162 ], [ %.2, %core_list_mergesort.exit112 ]
  %.4160 = phi i16 [ %.3.lcssa, %.lr.ph162 ], [ %i.gj, %core_list_mergesort.exit112 ]
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !36
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !32
  %i.gj = tail call zeroext i16 @crc16(i16 noundef signext %i.gi, i16 noundef zeroext %.4160) #9 ; 2 uses
  %.2 = load ptr, ptr %.2161, align 8, !tbaa !37  ; 2 uses
  %.not62 = icmp eq ptr %.2, null
  br i1 %.not62, label %core_list_mergesort.exit112._crit_edge, label %core_list_mergesort.exit112, !llvm.loop !41

core_list_mergesort.exit112._crit_edge:           ; preds = %core_list_mergesort.exit112, %core_list_mergesort.exit112.preheader
  %.4.lcssa = phi i16 [ %.3.lcssa, %core_list_mergesort.exit112.preheader ], [ %i.gj, %core_list_mergesort.exit112 ]
  ret i16 %.4.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @core_list_find(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !33   ; 2 uses
  %2 = icmp sgt i16 %i.b, -1
  %.not1625 = icmp eq ptr %0, null                ; 2 uses
  br i1 %2, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %bb.a
  br i1 %.not1625, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader18
  %i.c = load i16, ptr %1, align 2, !tbaa !32
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %.not1625, label %.critedge, label %.lr.ph27

.lr.ph27:                                         ; preds = %.preheader, %bb.b
  %.01426 = phi ptr [ %i.h, %bb.b ], [ %0, %.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01426, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !33
  %.not17 = icmp eq i16 %i.g, %i.b
  br i1 %.not17, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph27
  %i.h = load ptr, ptr %.01426, align 8, !tbaa !37 ; 2 uses
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %.critedge, label %.lr.ph27, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.122 = phi ptr [ %0, %.lr.ph ], [ %i.m, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.122, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = load i16, ptr %i.j, align 2, !tbaa !32
  %i.l = and i16 %i.k, 255
  %.not15 = icmp eq i16 %i.l, %i.c
  br i1 %.not15, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %.122, align 8, !tbaa !37  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !1

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph27, %.preheader18, %.preheader
  %.0 = phi ptr [ null, %.preheader18 ], [ null, %.preheader ], [ %.01426, %.lr.ph27 ], [ null, %bb.b ], [ %.122, %bb.c ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @core_list_reverse(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not8 = icmp eq ptr %0, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %.079, %.lr.ph ], [ null, %bb.a ]
  %.079 = phi ptr [ %i.a, %.lr.ph ], [ %0, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.079, align 8, !tbaa !37  ; 2 uses
  store ptr %.010, ptr %.079, align 8, !tbaa !37
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.079, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @core_list_mergesort(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %._crit_edge80, %bb.a
  %.058 = phi ptr [ %0, %bb.a ], [ %.260.us.ph, %._crit_edge80 ] ; 2 uses
  %.047 = phi i32 [ 1, %bb.a ], [ %i.z, %._crit_edge80 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058) ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph79, %.loopexit.us
  %.04677.us = phi i32 [ %i.a, %.loopexit.us ], [ 0, %.lr.ph79 ] ; 2 uses
  %.04876.us = phi ptr [ %.149.us, %.loopexit.us ], [ null, %.lr.ph79 ]
  %.05575.us = phi ptr [ %.253.us, %.loopexit.us ], [ %.058, %.lr.ph79 ] ; 2 uses
  %.15974.us = phi ptr [ %.260.us.ph, %.loopexit.us ], [ null, %.lr.ph79 ]
  %i.a = add nuw nsw i32 %.04677.us, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i32 %i.b, %.047
  br i1 %exitcond.not, label %._crit_edge.us.preheader, label %bb.c, !llvm.loop !3

bb.c:                                             ; preds = %.lr.ph.us, %bb.b
  %.068.us = phi i32 [ 0, %.lr.ph.us ], [ %i.b, %bb.b ]
  %.05166.us = phi ptr [ %.05575.us, %.lr.ph.us ], [ %i.c, %bb.b ]
  %i.b = add nuw nsw i32 %.068.us, 1              ; 3 uses
  %i.c = load ptr, ptr %.05166.us, align 8, !tbaa !37 ; 3 uses
  %.not64.us = icmp eq ptr %i.c, null
  br i1 %.not64.us, label %._crit_edge.us.preheader, label %bb.b

._crit_edge.us.preheader:                         ; preds = %bb.b, %bb.c
  %.2.us.ph = phi i32 [ %.047, %bb.b ], [ %i.b, %bb.c ]
  br label %._crit_edge.us.outer

._crit_edge.us.outer:                             ; preds = %bb.j, %._crit_edge.us.preheader
  %.260.us.ph = phi ptr [ %.15974.us, %._crit_edge.us.preheader ], [ %.050.us, %bb.j ] ; 3 uses
  %.156.us.ph = phi ptr [ %.05575.us, %._crit_edge.us.preheader ], [ %.257.us, %bb.j ]
  %.253.us.ph = phi ptr [ %i.c, %._crit_edge.us.preheader ], [ %.354.us, %bb.j ]
  %.149.us.ph = phi ptr [ %.04876.us, %._crit_edge.us.preheader ], [ %.050.us, %bb.j ]
  %.2.us.ph92 = phi i32 [ %.2.us.ph, %._crit_edge.us.preheader ], [ %.3.us, %bb.j ]
  %.043.us.ph = phi i32 [ %.047, %._crit_edge.us.preheader ], [ %.1.us, %bb.j ]
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.outer, %bb.k
  %.156.us = phi ptr [ %.257.us, %bb.k ], [ %.156.us.ph, %._crit_edge.us.outer ] ; 7 uses
  %.253.us = phi ptr [ %.354.us, %bb.k ], [ %.253.us.ph, %._crit_edge.us.outer ] ; 10 uses
  %.149.us = phi ptr [ %.050.us, %bb.k ], [ %.149.us.ph, %._crit_edge.us.outer ] ; 4 uses
  %.2.us = phi i32 [ %.3.us, %bb.k ], [ %.2.us.ph92, %._crit_edge.us.outer ] ; 5 uses
  %.043.us = phi i32 [ %.1.us, %bb.k ], [ %.043.us.ph, %._crit_edge.us.outer ] ; 6 uses
  %i.d = icmp sgt i32 %.2.us, 0
  br i1 %i.d, label %.critedge.thread.us, label %bb.d

bb.d:                                             ; preds = %._crit_edge.us
  %i.e = icmp sgt i32 %.043.us, 0
  %i.f = icmp ne ptr %.253.us, null               ; 2 uses
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %.critedge.us, label %.loopexit.us

.critedge.us:                                     ; preds = %bb.d
  %i.h = icmp eq i32 %.2.us, 0
  br i1 %i.h, label %bb.e, label %.critedge.thread.us

bb.e:                                             ; preds = %.critedge.us
  %i.i = load ptr, ptr %.253.us, align 8, !tbaa !37
  %i.j = add nsw i32 %.043.us, -1
  br label %bb.j

.critedge.thread.us:                              ; preds = %.critedge.us, %._crit_edge.us
  %i.k = icmp ne i32 %.043.us, 0
  %i.l = icmp ne ptr %.253.us, null
  %or.cond.us = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.thread.us
  %i.m = load ptr, ptr %.156.us, align 8, !tbaa !37
  %i.n = add nsw i32 %.2.us, -1
  br label %bb.j

bb.g:                                             ; preds = %.critedge.thread.us
  %i.o = getelementptr inbounds nuw i8, ptr %.156.us, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %.253.us, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.s = tail call i32 %1(ptr noundef %i.p, ptr noundef %i.r, ptr noundef %2) #9
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %.253.us, align 8, !tbaa !37
  %i.v = add nsw i32 %.043.us, -1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %.156.us, align 8, !tbaa !37
  %i.x = add nsw i32 %.2.us, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.257.us = phi ptr [ %.156.us, %bb.e ], [ %i.w, %bb.i ], [ %.156.us, %bb.h ], [ %i.m, %bb.f ] ; 2 uses
  %.354.us = phi ptr [ %i.i, %bb.e ], [ %.253.us, %bb.i ], [ %i.u, %bb.h ], [ %.253.us, %bb.f ] ; 2 uses
  %.050.us = phi ptr [ %.253.us, %bb.e ], [ %.156.us, %bb.i ], [ %.253.us, %bb.h ], [ %.156.us, %bb.f ] ; 4 uses
  %.3.us = phi i32 [ 0, %bb.e ], [ %i.x, %bb.i ], [ %.2.us, %bb.h ], [ %i.n, %bb.f ] ; 2 uses
  %.1.us = phi i32 [ %i.j, %bb.e ], [ %.043.us, %bb.i ], [ %i.v, %bb.h ], [ %.043.us, %bb.f ] ; 2 uses
  %.not65.us = icmp eq ptr %.149.us, null
  br i1 %.not65.us, label %._crit_edge.us.outer, label %bb.k, !llvm.loop !4

bb.k:                                             ; preds = %bb.j
  store ptr %.050.us, ptr %.149.us, align 8, !tbaa !37
  br label %._crit_edge.us, !llvm.loop !4

.loopexit.us:                                     ; preds = %bb.d
  br i1 %i.f, label %.lr.ph.us, label %._crit_edge80, !llvm.loop !5

._crit_edge80:                                    ; preds = %.loopexit.us
  store ptr null, ptr %.149.us, align 8, !tbaa !37
  %i.y = icmp eq i32 %.04677.us, 0
  %i.z = shl nuw nsw i32 %.047, 1
  br i1 %i.y, label %bb.l, label %.lr.ph79

bb.l:                                             ; preds = %._crit_edge80
  ret ptr %.260.us.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @core_list_remove(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !25
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !25
  store ptr %i.c, ptr %i.d, align 8, !tbaa !36
  store ptr null, ptr %i.a, align 8, !tbaa !37
  ret ptr %i.a
}

declare zeroext i16 @crc16(i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @core_list_undo_remove(ptr noundef returned initializes((0, 8)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !25
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !25
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36
  store ptr %0, ptr %1, align 8, !tbaa !37
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local ptr @core_list_init(i32 noundef %0, ptr noundef initializes((0, 8)) %1, i16 noundef signext %2) local_unnamed_addr #6 {
bb.a:
  %i.a = udiv i32 %0, 20
  %i.b = add nsw i32 %i.a, -2                     ; 5 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 8 uses
  %.idx59 = shl nuw nsw i64 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx59
  store ptr null, ptr %1, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 0, ptr %i.g, align 2, !tbaa !33
  store i16 -32640, ptr %i.d, align 2, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %.not.i = icmp ugt i32 %i.b, 2
  br i1 %.not.i, label %bb.b, label %core_list_insert_new.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !37
end_hunk_1
