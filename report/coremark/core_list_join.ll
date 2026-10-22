Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coremark/original/core_list_join?download=true
inline.NumInlined: 16
begin_hunk_0_@calc_func:bb.a
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
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.0146 = phi i16 [ %i.aj, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.048145 = phi ptr [ %.0.lcssa.i, %bb.f ], [ %i.b, %bb.a ] ; 5 uses
  %.050144 = phi i16 [ %.151, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.052143 = phi i16 [ %.153, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.054142 = phi i16 [ %.256, %bb.f ], [ 0, %bb.a ]
  %.sroa.6.0141 = phi i16 [ %spec.select, %bb.f ], [ %1, %bb.a ] ; 3 uses
  %i.f = icmp sgt i16 %.sroa.6.0141, -1           ; 2 uses
  %.not1625.i.not = icmp eq ptr %.048145, null
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.048145) ]
  br i1 %i.f, label %.lr.ph27.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.lr.ph, %bb.b
  %.01426.i = phi ptr [ %i.k, %bb.b ], [ %.048145, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01426.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !33
  %.not17.i = icmp eq i16 %i.j, %.sroa.6.0141
  br i1 %.not17.i, label %core_list_find.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph27.i
  %i.k = load ptr, ptr %.01426.i, align 8, !tbaa !37 ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  br i1 %.not16.i, label %core_list_find.exit, label %.lr.ph27.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.c
  %.122.i = phi ptr [ %i.q, %bb.c ], [ %.048145, %.lr.ph ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.122.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = load i16, ptr %i.m, align 2, !tbaa !32
  %i.o = xor i16 %i.n, %.0146
  %i.p = and i16 %i.o, 255
  %.not15.i = icmp eq i16 %i.p, 0
  br i1 %.not15.i, label %core_list_find.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.122.i, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %core_list_find.exit, label %.lr.ph.i, !llvm.loop !1

core_list_find.exit:                              ; preds = %.lr.ph.i, %bb.c, %.lr.ph27.i, %bb.b
  %.0.i = phi ptr [ %.01426.i, %.lr.ph27.i ], [ null, %bb.b ], [ null, %bb.c ], [ %.122.i, %.lr.ph.i ] ; 4 uses
  br i1 %.not1625.i.not, label %core_list_reverse.exit, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %core_list_find.exit, %.lr.ph.i65
  %.010.i = phi ptr [ %.079.i, %.lr.ph.i65 ], [ null, %core_list_find.exit ]
  %.079.i = phi ptr [ %i.r, %.lr.ph.i65 ], [ %.048145, %core_list_find.exit ] ; 4 uses
  %i.r = load ptr, ptr %.079.i, align 8, !tbaa !37 ; 2 uses
  store ptr %.010.i, ptr %.079.i, align 8, !tbaa !37
  %.not.i66 = icmp eq ptr %i.r, null
  br i1 %.not.i66, label %core_list_reverse.exit, label %.lr.ph.i65, !llvm.loop !2

core_list_reverse.exit:                           ; preds = %.lr.ph.i65, %core_list_find.exit
  %.0.lcssa.i = phi ptr [ null, %core_list_find.exit ], [ %.079.i, %.lr.ph.i65 ] ; 5 uses
  %i.s = icmp eq ptr %.0.i, null
  br i1 %i.s, label %core_list_reverse.exit.thread, label %bb.d

core_list_reverse.exit.thread:                    ; preds = %core_list_reverse.exit
  %i.t = add i16 %.050144, 1
  %i.u = load ptr, ptr %.0.lcssa.i, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = load i16, ptr %i.w, align 2, !tbaa !32
  %i.y = lshr i16 %i.x, 8
  %i.z = and i16 %i.y, 1
  br label %bb.f

bb.d:                                             ; preds = %core_list_reverse.exit
  %i.aa = add i16 %.052143, 1                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !32 ; 2 uses
  %i.ae = and i16 %i.ad, 1
  %.not63 = icmp eq i16 %i.ae, 0
  %2 = lshr i16 %i.ad, 9
  %3 = and i16 %2, 1
  %4 = select i1 %.not63, i16 0, i16 %3           ; 2 uses
  %i.af = load ptr, ptr %.0.i, align 8, !tbaa !37 ; 4 uses
  %.not64 = icmp eq ptr %i.af, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  store ptr %i.ag, ptr %.0.i, align 8, !tbaa !37
  %i.ah = load ptr, ptr %.0.lcssa.i, align 8, !tbaa !37
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !37
  store ptr %i.af, ptr %.0.lcssa.i, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %core_list_reverse.exit.thread
  %.pn = phi i16 [ %i.z, %core_list_reverse.exit.thread ], [ %4, %bb.e ], [ %4, %bb.d ]
  %.153 = phi i16 [ %.052143, %core_list_reverse.exit.thread ], [ %i.aa, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %.151 = phi i16 [ %i.t, %core_list_reverse.exit.thread ], [ %.050144, %bb.e ], [ %.050144, %bb.d ] ; 2 uses
  %.256 = add i16 %.pn, %.054142                  ; 2 uses
  %i.ai = zext i1 %i.f to i16
  %spec.select = add nuw i16 %.sroa.6.0141, %i.ai ; 2 uses
  %i.aj = add nuw nsw i16 %.0146, 1               ; 2 uses
  %exitcond.not = icmp eq i16 %i.aj, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !39

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.ak = add nuw i16 %i.d, 255
  %i.al = and i16 %i.ak, 255
  %i.am = shl i16 %.153, 2
  %i.an = sub i16 %.256, %.151
  %i.ao = add i16 %i.an, %i.am
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.6.0.lcssa = phi i16 [ %1, %bb.a ], [ %spec.select, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.0.lcssa = phi i16 [ 0, %bb.a ], [ %i.al, %._crit_edge.loopexit ]
  %.048.lcssa = phi ptr [ %i.b, %bb.a ], [ %.0.lcssa.i, %._crit_edge.loopexit ] ; 2 uses
  %i.ap = phi i16 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ] ; 2 uses
  %i.aq = icmp sgt i16 %1, 0
  br i1 %i.aq, label %.lr.ph79.i.preheader, label %core_list_mergesort.exit

.lr.ph79.i.preheader:                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 4 uses
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %._crit_edge80.i
  %.058.i = phi ptr [ %.260.us.i.ph, %._crit_edge80.i ], [ %.048.lcssa, %.lr.ph79.i.preheader ] ; 2 uses
  %.047.i = phi i32 [ %i.dt, %._crit_edge80.i ], [ 1, %.lr.ph79.i.preheader ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i) ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit.us.i, %.lr.ph79.i
  %.04677.us.i = phi i32 [ %i.ay, %.loopexit.us.i ], [ 0, %.lr.ph79.i ] ; 2 uses
  %.04876.us.i = phi ptr [ %.149.us.i, %.loopexit.us.i ], [ null, %.lr.ph79.i ]
  %.05575.us.i = phi ptr [ %.253.us.i, %.loopexit.us.i ], [ %.058.i, %.lr.ph79.i ] ; 2 uses
  %.15974.us.i = phi ptr [ %.260.us.i.ph, %.loopexit.us.i ], [ null, %.lr.ph79.i ]
  %i.ay = add nuw nsw i32 %.04677.us.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %exitcond.not.i = icmp eq i32 %i.az, %.047.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i.preheader, label %bb.h, !llvm.loop !3

bb.h:                                             ; preds = %bb.g, %.lr.ph.us.i
  %.068.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.az, %bb.g ]
  %.05166.us.i = phi ptr [ %.05575.us.i, %.lr.ph.us.i ], [ %i.ba, %bb.g ]
  %i.az = add nuw nsw i32 %.068.us.i, 1           ; 3 uses
  %i.ba = load ptr, ptr %.05166.us.i, align 8, !tbaa !37 ; 3 uses
  %.not64.us.i = icmp eq ptr %i.ba, null
  br i1 %.not64.us.i, label %._crit_edge.us.i.preheader, label %bb.g

._crit_edge.us.i.preheader:                       ; preds = %bb.h, %bb.g
  %.2.us.i.ph = phi i32 [ %i.az, %bb.h ], [ %.047.i, %bb.g ]
  br label %._crit_edge.us.i.outer

._crit_edge.us.i.outer:                           ; preds = %bb.ac, %._crit_edge.us.i.preheader
  %.260.us.i.ph = phi ptr [ %.15974.us.i, %._crit_edge.us.i.preheader ], [ %.050.us.i, %bb.ac ] ; 3 uses
  %.156.us.i.ph = phi ptr [ %.05575.us.i, %._crit_edge.us.i.preheader ], [ %.257.us.i, %bb.ac ]
  %.253.us.i.ph = phi ptr [ %i.ba, %._crit_edge.us.i.preheader ], [ %.354.us.i, %bb.ac ]
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
  %i.bb = icmp sgt i32 %.2.us.i, 0
  br i1 %i.bb, label %.critedge.thread.us.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.us.i
  %i.bc = icmp sgt i32 %.043.us.i, 0
  %i.bd = icmp ne ptr %.253.us.i, null            ; 2 uses
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %.critedge.us.i, label %.loopexit.us.i

.critedge.us.i:                                   ; preds = %bb.i
  %i.bf = icmp eq i32 %.2.us.i, 0
  br i1 %i.bf, label %bb.j, label %.critedge.thread.us.i

bb.j:                                             ; preds = %.critedge.us.i
  %i.bg = load ptr, ptr %.253.us.i, align 8, !tbaa !37
  %i.bh = add nsw i32 %.043.us.i, -1
  br label %bb.ac

.critedge.thread.us.i:                            ; preds = %.critedge.us.i, %._crit_edge.us.i
  %i.bi = icmp ne i32 %.043.us.i, 0
  %i.bj = icmp ne ptr %.253.us.i, null
  %or.cond.us.i = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond.us.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge.thread.us.i
  %i.bk = load ptr, ptr %.156.us.i, align 8, !tbaa !37
  %i.bl = add nsw i32 %.2.us.i, -1
  br label %bb.ac

bb.l:                                             ; preds = %.critedge.thread.us.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !36 ; 2 uses
  %i.bq = load i16, ptr %i.bn, align 2, !tbaa !16 ; 6 uses
  %i.br = and i16 %i.bq, 128
  %.not.i115 = icmp eq i16 %i.br, 0
  br i1 %.not.i115, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = and i16 %i.bq, 127
  br label %calc_func.exit119

bb.n:                                             ; preds = %bb.l
  %i.bt = and i16 %i.bq, 7
  %i.bu = lshr i16 %i.bq, 3
  %i.bv = and i16 %i.bu, 15
  %i.bw = mul nuw nsw i16 %i.bv, 17               ; 2 uses
  switch i16 %i.bt, label %bb.s [
    i16 0, label %bb.o
    i16 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %spec.store.select.i118 = tail call i16 @llvm.umax.i16(i16 %i.bw, i16 34)
  %i.bx = load i32, ptr %i.au, align 8, !tbaa !24
  %i.by = load ptr, ptr %i.av, align 8, !tbaa !25
  %i.bz = load i16, ptr %0, align 8, !tbaa !26
  %i.ca = load i16, ptr %i.aw, align 2, !tbaa !27
  %i.cb = load i16, ptr %i.as, align 8, !tbaa !28
  %i.cc = tail call zeroext i16 @core_bench_state(i32 noundef %i.bx, ptr noundef %i.by, i16 noundef signext %i.bz, i16 noundef signext %i.ca, i16 noundef signext %spec.store.select.i118, i16 noundef zeroext %i.cb) #9 ; 3 uses
  %i.cd = load i16, ptr %i.ax, align 2, !tbaa !29
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  store i16 %i.cc, ptr %i.ax, align 2, !tbaa !29
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.cf = load i16, ptr %i.as, align 8, !tbaa !28
  %i.cg = tail call zeroext i16 @core_bench_matrix(ptr noundef nonnull %i.ar, i16 noundef signext %i.bw, i16 noundef zeroext %i.cf) #9 ; 3 uses
  %i.ch = load i16, ptr %i.at, align 4, !tbaa !30
  %i.ci = icmp eq i16 %i.ch, 0
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i16 %i.cg, ptr %i.at, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.0.i117 = phi i16 [ %i.cg, %bb.q ], [ %i.cc, %bb.p ], [ %i.cc, %bb.o ], [ %i.cg, %bb.r ], [ %i.bq, %bb.n ] ; 2 uses
  %i.cj = load i16, ptr %i.as, align 8, !tbaa !28
  %i.ck = tail call zeroext i16 @crcu16(i16 noundef zeroext %.0.i117, i16 noundef zeroext %i.cj) #9
  store i16 %i.ck, ptr %i.as, align 8, !tbaa !28
  %i.cl = and i16 %.0.i117, 127                   ; 2 uses
  %i.cm = and i16 %i.bq, -256
  %i.cn = or disjoint i16 %i.cm, %i.cl
  %i.co = or disjoint i16 %i.cn, 128
  store i16 %i.co, ptr %i.bn, align 2, !tbaa !16
  br label %calc_func.exit119

calc_func.exit119:                                ; preds = %bb.m, %bb.s
  %.034.i116 = phi i16 [ %i.bs, %bb.m ], [ %i.cl, %bb.s ]
  %i.cp = load i16, ptr %i.bp, align 2, !tbaa !16 ; 6 uses
  %i.cq = and i16 %i.cp, 128
  %.not.i113 = icmp eq i16 %i.cq, 0
  br i1 %.not.i113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %calc_func.exit119
  %i.cr = and i16 %i.cp, 127
  br label %calc_func.exit

bb.u:                                             ; preds = %calc_func.exit119
  %i.cs = and i16 %i.cp, 7
  %i.ct = lshr i16 %i.cp, 3
  %i.cu = and i16 %i.ct, 15
  %i.cv = mul nuw nsw i16 %i.cu, 17               ; 2 uses
  switch i16 %i.cs, label %bb.z [
    i16 0, label %bb.v
    i16 1, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %spec.store.select.i = tail call i16 @llvm.umax.i16(i16 %i.cv, i16 34)
  %i.cw = load i32, ptr %i.au, align 8, !tbaa !24
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !25
  %i.cy = load i16, ptr %0, align 8, !tbaa !26
  %i.cz = load i16, ptr %i.aw, align 2, !tbaa !27
  %i.da = load i16, ptr %i.as, align 8, !tbaa !28
end_hunk_0
