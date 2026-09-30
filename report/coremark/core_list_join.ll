Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coremark/original/core_list_join?download=true
inline.NumInlined: 16
begin_hunk_0_@cmp_idx:bb.a
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
  %.0145 = phi i16 [ %i.am, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.048144 = phi ptr [ %.0.lcssa.i, %bb.f ], [ %i.b, %bb.a ] ; 5 uses
  %.050143 = phi i16 [ %.151, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.052142 = phi i16 [ %.153, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.054141 = phi i16 [ %.256, %bb.f ], [ 0, %bb.a ]
  %.sroa.6.0140 = phi i16 [ %spec.select, %bb.f ], [ %1, %bb.a ] ; 3 uses
  %i.f = icmp sgt i16 %.sroa.6.0140, -1           ; 2 uses
  %.not1625.i.not = icmp eq ptr %.048144, null
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.048144) ]
  br i1 %i.f, label %.lr.ph27.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.lr.ph, %bb.b
  %.01426.i = phi ptr [ %i.k, %bb.b ], [ %.048144, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01426.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !33
  %.not17.i = icmp eq i16 %i.j, %.sroa.6.0140
  br i1 %.not17.i, label %core_list_find.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph27.i
  %i.k = load ptr, ptr %.01426.i, align 8, !tbaa !37 ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  br i1 %.not16.i, label %core_list_find.exit, label %.lr.ph27.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.c
  %.122.i = phi ptr [ %i.q, %bb.c ], [ %.048144, %.lr.ph ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.122.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = load i16, ptr %i.m, align 2, !tbaa !32
  %i.o = xor i16 %i.n, %.0145
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
  %.079.i = phi ptr [ %i.r, %.lr.ph.i65 ], [ %.048144, %core_list_find.exit ] ; 4 uses
  %i.r = load ptr, ptr %.079.i, align 8, !tbaa !37 ; 2 uses
  store ptr %.010.i, ptr %.079.i, align 8, !tbaa !37
  %.not.i66 = icmp eq ptr %i.r, null
  br i1 %.not.i66, label %core_list_reverse.exit, label %.lr.ph.i65, !llvm.loop !2

core_list_reverse.exit:                           ; preds = %.lr.ph.i65, %core_list_find.exit
  %.0.lcssa.i = phi ptr [ null, %core_list_find.exit ], [ %.079.i, %.lr.ph.i65 ] ; 5 uses
  %i.s = icmp eq ptr %.0.i, null
  br i1 %i.s, label %core_list_reverse.exit.thread, label %bb.d

core_list_reverse.exit.thread:                    ; preds = %core_list_reverse.exit
  %i.t = add i16 %.050143, 1
  %i.u = load ptr, ptr %.0.lcssa.i, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = load i16, ptr %i.w, align 2, !tbaa !32
  %i.y = lshr i16 %i.x, 8
  %i.z = and i16 %i.y, 1
  br label %bb.f

bb.d:                                             ; preds = %core_list_reverse.exit
  %i.aa = add i16 %.052142, 1                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !32 ; 2 uses
  %i.ae = and i16 %i.ad, 1
  %.not63 = icmp eq i16 %i.ae, 0
  %i.af = lshr i16 %i.ad, 9
  %i.ag = and i16 %i.af, 1
  %i.ah = select i1 %.not63, i16 0, i16 %i.ag     ; 2 uses
  %i.ai = load ptr, ptr %.0.i, align 8, !tbaa !37 ; 4 uses
  %.not64 = icmp eq ptr %i.ai, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37
  store ptr %i.aj, ptr %.0.i, align 8, !tbaa !37
  %i.ak = load ptr, ptr %.0.lcssa.i, align 8, !tbaa !37
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !37
  store ptr %i.ai, ptr %.0.lcssa.i, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %core_list_reverse.exit.thread
  %.pn = phi i16 [ %i.z, %core_list_reverse.exit.thread ], [ %i.ah, %bb.e ], [ %i.ah, %bb.d ]
  %.153 = phi i16 [ %.052142, %core_list_reverse.exit.thread ], [ %i.aa, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %.151 = phi i16 [ %i.t, %core_list_reverse.exit.thread ], [ %.050143, %bb.e ], [ %.050143, %bb.d ] ; 2 uses
  %.256 = add i16 %.pn, %.054141                  ; 2 uses
  %i.al = zext i1 %i.f to i16
  %spec.select = add nuw i16 %.sroa.6.0140, %i.al ; 2 uses
  %i.am = add nuw nsw i16 %.0145, 1               ; 2 uses
  %exitcond.not = icmp eq i16 %i.am, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !39

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.an = add nuw i16 %i.d, 255
  %i.ao = and i16 %i.an, 255
  %i.ap = shl i16 %.153, 2
  %i.aq = sub i16 %.256, %.151
  %i.ar = add i16 %i.aq, %i.ap
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.6.0.lcssa = phi i16 [ %1, %bb.a ], [ %spec.select, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.0.lcssa = phi i16 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ]
  %.048.lcssa = phi ptr [ %i.b, %bb.a ], [ %.0.lcssa.i, %._crit_edge.loopexit ] ; 2 uses
  %i.as = phi i16 [ 0, %bb.a ], [ %i.ar, %._crit_edge.loopexit ] ; 2 uses
  %i.at = icmp sgt i16 %1, 0
  br i1 %i.at, label %.lr.ph79.i.preheader, label %core_list_mergesort.exit

.lr.ph79.i.preheader:                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 4 uses
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %._crit_edge80.i
  %.058.i = phi ptr [ %.260.us.i.ph, %._crit_edge80.i ], [ %.048.lcssa, %.lr.ph79.i.preheader ] ; 2 uses
  %.047.i = phi i32 [ %i.dw, %._crit_edge80.i ], [ 1, %.lr.ph79.i.preheader ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i) ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit.us.i, %.lr.ph79.i
  %.04677.us.i = phi i32 [ %i.bb, %.loopexit.us.i ], [ 0, %.lr.ph79.i ] ; 2 uses
  %.04876.us.i = phi ptr [ %.149.us.i, %.loopexit.us.i ], [ null, %.lr.ph79.i ]
  %.05575.us.i = phi ptr [ %.253.us.i, %.loopexit.us.i ], [ %.058.i, %.lr.ph79.i ] ; 2 uses
  %.15974.us.i = phi ptr [ %.260.us.i.ph, %.loopexit.us.i ], [ null, %.lr.ph79.i ]
  %i.bb = add nuw nsw i32 %.04677.us.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %exitcond.not.i = icmp eq i32 %i.bc, %.047.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i.preheader, label %bb.h, !llvm.loop !3

bb.h:                                             ; preds = %bb.g, %.lr.ph.us.i
  %.068.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.bc, %bb.g ]
  %.05166.us.i = phi ptr [ %.05575.us.i, %.lr.ph.us.i ], [ %i.bd, %bb.g ]
  %i.bc = add nuw nsw i32 %.068.us.i, 1           ; 3 uses
  %i.bd = load ptr, ptr %.05166.us.i, align 8, !tbaa !37 ; 3 uses
  %.not64.us.i = icmp eq ptr %i.bd, null
  br i1 %.not64.us.i, label %._crit_edge.us.i.preheader, label %bb.g

._crit_edge.us.i.preheader:                       ; preds = %bb.h, %bb.g
  %.2.us.i.ph = phi i32 [ %i.bc, %bb.h ], [ %.047.i, %bb.g ]
  br label %._crit_edge.us.i.outer

._crit_edge.us.i.outer:                           ; preds = %bb.ac, %._crit_edge.us.i.preheader
  %.260.us.i.ph = phi ptr [ %.15974.us.i, %._crit_edge.us.i.preheader ], [ %.050.us.i, %bb.ac ] ; 3 uses
  %.156.us.i.ph = phi ptr [ %.05575.us.i, %._crit_edge.us.i.preheader ], [ %.257.us.i, %bb.ac ]
  %.253.us.i.ph = phi ptr [ %i.bd, %._crit_edge.us.i.preheader ], [ %.354.us.i, %bb.ac ]
  %.149.us.i.ph = phi ptr [ %.04876.us.i, %._crit_edge.us.i.preheader ], [ %.050.us.i, %bb.ac ]
  %.2.us.i.ph213 = phi i32 [ %.2.us.i.ph, %._crit_edge.us.i.preheader ], [ %.3.us.i, %bb.ac ]
  %.043.us.i.ph = phi i32 [ %.047.i, %._crit_edge.us.i.preheader ], [ %.1.us.i, %bb.ac ]
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.outer, %bb.ad
  %.156.us.i = phi ptr [ %.257.us.i, %bb.ad ], [ %.156.us.i.ph, %._crit_edge.us.i.outer ] ; 7 uses
  %.253.us.i = phi ptr [ %.354.us.i, %bb.ad ], [ %.253.us.i.ph, %._crit_edge.us.i.outer ] ; 11 uses
  %.149.us.i = phi ptr [ %.050.us.i, %bb.ad ], [ %.149.us.i.ph, %._crit_edge.us.i.outer ] ; 4 uses
  %.2.us.i = phi i32 [ %.3.us.i, %bb.ad ], [ %.2.us.i.ph213, %._crit_edge.us.i.outer ] ; 5 uses
  %.043.us.i = phi i32 [ %.1.us.i, %bb.ad ], [ %.043.us.i.ph, %._crit_edge.us.i.outer ] ; 6 uses
  %i.be = icmp sgt i32 %.2.us.i, 0
  br i1 %i.be, label %.critedge.thread.us.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.us.i
  %i.bf = icmp sgt i32 %.043.us.i, 0
  %i.bg = icmp ne ptr %.253.us.i, null
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.critedge.us.i, label %.loopexit.us.i

.critedge.us.i:                                   ; preds = %bb.i
  %i.bi = icmp eq i32 %.2.us.i, 0
  br i1 %i.bi, label %bb.j, label %.critedge.thread.us.i

bb.j:                                             ; preds = %.critedge.us.i
  %i.bj = load ptr, ptr %.253.us.i, align 8, !tbaa !37
  %i.bk = add nsw i32 %.043.us.i, -1
  br label %bb.ac

.critedge.thread.us.i:                            ; preds = %.critedge.us.i, %._crit_edge.us.i
  %i.bl = icmp ne i32 %.043.us.i, 0
  %i.bm = icmp ne ptr %.253.us.i, null
  %or.cond.us.i = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond.us.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge.thread.us.i
  %i.bn = load ptr, ptr %.156.us.i, align 8, !tbaa !37
  %i.bo = add nsw i32 %.2.us.i, -1
  br label %bb.ac

bb.l:                                             ; preds = %.critedge.thread.us.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36 ; 2 uses
  %i.bt = load i16, ptr %i.bq, align 2, !tbaa !16 ; 6 uses
  %i.bu = and i16 %i.bt, 128
  %.not.i116 = icmp eq i16 %i.bu, 0
  br i1 %.not.i116, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = and i16 %i.bt, 127
  br label %calc_func.exit120

bb.n:                                             ; preds = %bb.l
  %i.bw = and i16 %i.bt, 7
  %i.bx = lshr i16 %i.bt, 3
  %i.by = and i16 %i.bx, 15
  %i.bz = mul nuw nsw i16 %i.by, 17               ; 2 uses
  switch i16 %i.bw, label %bb.s [
    i16 0, label %bb.o
    i16 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %spec.store.select.i119 = tail call i16 @llvm.umax.i16(i16 %i.bz, i16 34)
  %i.ca = load i32, ptr %i.ax, align 8, !tbaa !24
  %i.cb = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.cc = load i16, ptr %0, align 8, !tbaa !26
  %i.cd = load i16, ptr %i.az, align 2, !tbaa !27
  %i.ce = load i16, ptr %i.av, align 8, !tbaa !28
  %i.cf = tail call zeroext i16 @core_bench_state(i32 noundef %i.ca, ptr noundef %i.cb, i16 noundef signext %i.cc, i16 noundef signext %i.cd, i16 noundef signext %spec.store.select.i119, i16 noundef zeroext %i.ce) #9 ; 3 uses
  %i.cg = load i16, ptr %i.ba, align 2, !tbaa !29
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  store i16 %i.cf, ptr %i.ba, align 2, !tbaa !29
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ci = load i16, ptr %i.av, align 8, !tbaa !28
  %i.cj = tail call zeroext i16 @core_bench_matrix(ptr noundef nonnull %i.au, i16 noundef signext %i.bz, i16 noundef zeroext %i.ci) #9 ; 3 uses
  %i.ck = load i16, ptr %i.aw, align 4, !tbaa !30
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i16 %i.cj, ptr %i.aw, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.0.i118 = phi i16 [ %i.cj, %bb.q ], [ %i.cf, %bb.p ], [ %i.cf, %bb.o ], [ %i.cj, %bb.r ], [ %i.bt, %bb.n ] ; 2 uses
  %i.cm = load i16, ptr %i.av, align 8, !tbaa !28
  %i.cn = tail call zeroext i16 @crcu16(i16 noundef zeroext %.0.i118, i16 noundef zeroext %i.cm) #9
  store i16 %i.cn, ptr %i.av, align 8, !tbaa !28
  %i.co = and i16 %.0.i118, 127                   ; 2 uses
  %i.cp = and i16 %i.bt, -256
  %i.cq = or disjoint i16 %i.cp, %i.co
  %i.cr = or disjoint i16 %i.cq, 128
  store i16 %i.cr, ptr %i.bq, align 2, !tbaa !16
  br label %calc_func.exit120

calc_func.exit120:                                ; preds = %bb.m, %bb.s
  %.034.i117 = phi i16 [ %i.bv, %bb.m ], [ %i.co, %bb.s ]
  %i.cs = load i16, ptr %i.bs, align 2, !tbaa !16 ; 6 uses
  %i.ct = and i16 %i.cs, 128
  %.not.i114 = icmp eq i16 %i.ct, 0
  br i1 %.not.i114, label %bb.u, label %bb.t

bb.t:                                             ; preds = %calc_func.exit120
  %i.cu = and i16 %i.cs, 127
  br label %calc_func.exit

bb.u:                                             ; preds = %calc_func.exit120
  %i.cv = and i16 %i.cs, 7
  %i.cw = lshr i16 %i.cs, 3
  %i.cx = and i16 %i.cw, 15
  %i.cy = mul nuw nsw i16 %i.cx, 17               ; 2 uses
  switch i16 %i.cv, label %bb.z [
    i16 0, label %bb.v
    i16 1, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %spec.store.select.i = tail call i16 @llvm.umax.i16(i16 %i.cy, i16 34)
  %i.cz = load i32, ptr %i.ax, align 8, !tbaa !24
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.db = load i16, ptr %0, align 8, !tbaa !26
  %i.dc = load i16, ptr %i.az, align 2, !tbaa !27
  %i.dd = load i16, ptr %i.av, align 8, !tbaa !28
  %i.de = tail call zeroext i16 @core_bench_state(i32 noundef %i.cz, ptr noundef %i.da, i16 noundef signext %i.db, i16 noundef signext %i.dc, i16 noundef signext %spec.store.select.i, i16 noundef zeroext %i.dd) #9 ; 3 uses
  %i.df = load i16, ptr %i.ba, align 2, !tbaa !29
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  store i16 %i.de, ptr %i.ba, align 2, !tbaa !29
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.dh = load i16, ptr %i.av, align 8, !tbaa !28
  %i.di = tail call zeroext i16 @core_bench_matrix(ptr noundef nonnull %i.au, i16 noundef signext %i.cy, i16 noundef zeroext %i.dh) #9 ; 3 uses
  %i.dj = load i16, ptr %i.aw, align 4, !tbaa !30
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i16 %i.di, ptr %i.aw, align 4, !tbaa !30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.0.i115 = phi i16 [ %i.di, %bb.x ], [ %i.de, %bb.w ], [ %i.de, %bb.v ], [ %i.di, %bb.y ], [ %i.cs, %bb.u ] ; 2 uses
  %i.dl = load i16, ptr %i.av, align 8, !tbaa !28
  %i.dm = tail call zeroext i16 @crcu16(i16 noundef zeroext %.0.i115, i16 noundef zeroext %i.dl) #9
  store i16 %i.dm, ptr %i.av, align 8, !tbaa !28
  %i.dn = and i16 %.0.i115, 127                   ; 2 uses
  %i.do = and i16 %i.cs, -256
  %i.dp = or disjoint i16 %i.do, %i.dn
  %i.dq = or disjoint i16 %i.dp, 128
  store i16 %i.dq, ptr %i.bs, align 2, !tbaa !16
  br label %calc_func.exit

calc_func.exit:                                   ; preds = %bb.t, %bb.z
  %.034.i = phi i16 [ %i.cu, %bb.t ], [ %i.dn, %bb.z ]
  %.not132 = icmp samesign ugt i16 %.034.i117, %.034.i
  br i1 %.not132, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %calc_func.exit
  %i.dr = load ptr, ptr %.253.us.i, align 8, !tbaa !37
  %i.ds = add nsw i32 %.043.us.i, -1
  br label %bb.ac

bb.ab:                                            ; preds = %calc_func.exit
  %i.dt = load ptr, ptr %.156.us.i, align 8, !tbaa !37
  %i.du = add nsw i32 %.2.us.i, -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.k, %bb.j
  %.257.us.i = phi ptr [ %.156.us.i, %bb.j ], [ %i.dt, %bb.ab ], [ %.156.us.i, %bb.aa ], [ %i.bn, %bb.k ] ; 2 uses
  %.354.us.i = phi ptr [ %i.bj, %bb.j ], [ %.253.us.i, %bb.ab ], [ %i.dr, %bb.aa ], [ %.253.us.i, %bb.k ] ; 2 uses
  %.050.us.i = phi ptr [ %.253.us.i, %bb.j ], [ %.156.us.i, %bb.ab ], [ %.253.us.i, %bb.aa ], [ %.156.us.i, %bb.k ] ; 4 uses
  %.3.us.i = phi i32 [ 0, %bb.j ], [ %i.du, %bb.ab ], [ %.2.us.i, %bb.aa ], [ %i.bo, %bb.k ] ; 2 uses
  %.1.us.i = phi i32 [ %i.bk, %bb.j ], [ %.043.us.i, %bb.ab ], [ %i.ds, %bb.aa ], [ %.043.us.i, %bb.k ] ; 2 uses
  %.not65.us.i = icmp eq ptr %.149.us.i, null
  br i1 %.not65.us.i, label %._crit_edge.us.i.outer, label %bb.ad, !llvm.loop !4

bb.ad:                                            ; preds = %bb.ac
  store ptr %.050.us.i, ptr %.149.us.i, align 8, !tbaa !37
  br label %._crit_edge.us.i, !llvm.loop !4

.loopexit.us.i:                                   ; preds = %bb.i
  %.not.us.i = icmp eq ptr %.253.us.i, null
  br i1 %.not.us.i, label %._crit_edge80.i, label %.lr.ph.us.i, !llvm.loop !5

._crit_edge80.i:                                  ; preds = %.loopexit.us.i
  store ptr null, ptr %.149.us.i, align 8, !tbaa !37
  %i.dv = icmp eq i32 %.04677.us.i, 0
  %i.dw = shl nuw nsw i32 %.047.i, 1
  br i1 %i.dv, label %core_list_mergesort.exit, label %.lr.ph79.i

core_list_mergesort.exit:                         ; preds = %._crit_edge80.i, %._crit_edge
  %.149 = phi ptr [ %.048.lcssa, %._crit_edge ], [ %.260.us.i.ph, %._crit_edge80.i ] ; 7 uses
  %i.dx = load ptr, ptr %.149, align 8, !tbaa !37 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !37 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ec = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !25
  store <2 x ptr> %i.ec, ptr %i.dx, align 8, !tbaa !25
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !36
  store ptr null, ptr %i.dy, align 8, !tbaa !37
  %i.ed = icmp sgt i16 %.sroa.6.0.lcssa, -1
  br i1 %i.ed, label %.lr.ph27.i75, label %.lr.ph.i69

.lr.ph27.i75:                                     ; preds = %core_list_mergesort.exit, %bb.ae
  %.01426.i76 = phi ptr [ %i.ei, %bb.ae ], [ %.149, %core_list_mergesort.exit ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01426.i76, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !36
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !33
  %.not17.i77 = icmp eq i16 %i.eh, %.sroa.6.0.lcssa
  br i1 %.not17.i77, label %.lr.ph154, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph27.i75
  %i.ei = load ptr, ptr %.01426.i76, align 8, !tbaa !37 ; 2 uses
  %.not16.i78 = icmp eq ptr %i.ei, null
  br i1 %.not16.i78, label %core_list_find.exit79, label %.lr.ph27.i75, !llvm.loop !0

.lr.ph.i69:                                       ; preds = %core_list_mergesort.exit, %bb.af
  %.122.i70 = phi ptr [ %i.en, %bb.af ], [ %.149, %core_list_mergesort.exit ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.122.i70, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !32
  %i.em = and i16 %i.el, 255
  %.not15.i71 = icmp eq i16 %i.em, %.sroa.0.0.lcssa
  br i1 %.not15.i71, label %.lr.ph154, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i69
  %i.en = load ptr, ptr %.122.i70, align 8, !tbaa !37 ; 2 uses
  %.not.i72 = icmp eq ptr %i.en, null
  br i1 %.not.i72, label %core_list_find.exit79, label %.lr.ph.i69, !llvm.loop !1

core_list_find.exit79:                            ; preds = %bb.af, %bb.ae
  %i.eo = load ptr, ptr %.149, align 8, !tbaa !37 ; 2 uses
  %.not61151 = icmp eq ptr %i.eo, null
  br i1 %.not61151, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph.i69, %.lr.ph27.i75, %core_list_find.exit79
  %.047185 = phi ptr [ %i.eo, %core_list_find.exit79 ], [ %.01426.i76, %.lr.ph27.i75 ], [ %.122.i70, %.lr.ph.i69 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.149, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph154, %bb.ag
  %.1153 = phi ptr [ %.047185, %.lr.ph154 ], [ %i.et, %bb.ag ]
  %.3152 = phi i16 [ %i.as, %.lr.ph154 ], [ %i.es, %bb.ag ]
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !36
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !32
  %i.es = tail call zeroext i16 @crc16(i16 noundef signext %i.er, i16 noundef zeroext %.3152) #9 ; 2 uses
  %i.et = load ptr, ptr %.1153, align 8, !tbaa !37 ; 2 uses
  %.not61 = icmp eq ptr %i.et, null
  br i1 %.not61, label %._crit_edge155.loopexit, label %bb.ag, !llvm.loop !40

._crit_edge155.loopexit:                          ; preds = %bb.ag
  %.pre = load ptr, ptr %i.eb, align 8, !tbaa !36
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %core_list_find.exit79
  %i.eu = phi ptr [ %i.ea, %core_list_find.exit79 ], [ %.pre, %._crit_edge155.loopexit ]
  %.3.lcssa = phi i16 [ %i.as, %core_list_find.exit79 ], [ %i.es, %._crit_edge155.loopexit ] ; 2 uses
  %i.ev = load ptr, ptr %.149, align 8, !tbaa !37 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !25
  store <2 x ptr> %i.ex, ptr %i.dy, align 8, !tbaa !25
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !36
  store ptr %i.dy, ptr %i.ev, align 8, !tbaa !37
  br label %.lr.ph79.i80

.lr.ph79.i80:                                     ; preds = %._crit_edge80.i102, %._crit_edge155
  %.058.i81 = phi ptr [ %.149, %._crit_edge155 ], [ %.260.us.i94.ph, %._crit_edge80.i102 ] ; 2 uses
  %.047.i82 = phi i32 [ 1, %._crit_edge155 ], [ %i.gh, %._crit_edge80.i102 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i81) ]
  br label %.lr.ph.us.i83

.lr.ph.us.i83:                                    ; preds = %.loopexit.us.i100, %.lr.ph79.i80
  %.04677.us.i84 = phi i32 [ %i.ey, %.loopexit.us.i100 ], [ 0, %.lr.ph79.i80 ] ; 2 uses
  %.04876.us.i85 = phi ptr [ %.149.us.i97, %.loopexit.us.i100 ], [ null, %.lr.ph79.i80 ]
  %.05575.us.i86 = phi ptr [ %.253.us.i96, %.loopexit.us.i100 ], [ %.058.i81, %.lr.ph79.i80 ] ; 2 uses
  %.15974.us.i87 = phi ptr [ %.260.us.i94.ph, %.loopexit.us.i100 ], [ null, %.lr.ph79.i80 ]
  %i.ey = add nuw nsw i32 %.04677.us.i84, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %exitcond.not.i91 = icmp eq i32 %i.ez, %.047.i82
  br i1 %exitcond.not.i91, label %._crit_edge.us.i92.preheader, label %bb.ai, !llvm.loop !3

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.us.i83
  %.068.us.i88 = phi i32 [ 0, %.lr.ph.us.i83 ], [ %i.ez, %bb.ah ]
  %.05166.us.i89 = phi ptr [ %.05575.us.i86, %.lr.ph.us.i83 ], [ %i.fa, %bb.ah ]
  %i.ez = add nuw nsw i32 %.068.us.i88, 1         ; 3 uses
  %i.fa = load ptr, ptr %.05166.us.i89, align 8, !tbaa !37 ; 3 uses
  %.not64.us.i90 = icmp eq ptr %i.fa, null
  br i1 %.not64.us.i90, label %._crit_edge.us.i92.preheader, label %bb.ah

._crit_edge.us.i92.preheader:                     ; preds = %bb.ai, %bb.ah
  %.2.us.i98.ph = phi i32 [ %i.ez, %bb.ai ], [ %.047.i82, %bb.ah ]
  br label %._crit_edge.us.i92.outer

._crit_edge.us.i92.outer:                         ; preds = %bb.ap, %._crit_edge.us.i92.preheader
  %.260.us.i94.ph = phi ptr [ %.15974.us.i87, %._crit_edge.us.i92.preheader ], [ %.050.us.i108, %bb.ap ] ; 4 uses
  %.156.us.i95.ph = phi ptr [ %.05575.us.i86, %._crit_edge.us.i92.preheader ], [ %.257.us.i106, %bb.ap ]
  %.253.us.i96.ph = phi ptr [ %i.fa, %._crit_edge.us.i92.preheader ], [ %.354.us.i107, %bb.ap ]
  %.149.us.i97.ph = phi ptr [ %.04876.us.i85, %._crit_edge.us.i92.preheader ], [ %.050.us.i108, %bb.ap ]
  %.2.us.i98.ph204 = phi i32 [ %.2.us.i98.ph, %._crit_edge.us.i92.preheader ], [ %.3.us.i109, %bb.ap ]
  %.043.us.i99.ph = phi i32 [ %.047.i82, %._crit_edge.us.i92.preheader ], [ %.1.us.i110, %bb.ap ]
  br label %._crit_edge.us.i92

._crit_edge.us.i92:                               ; preds = %._crit_edge.us.i92.outer, %bb.aq
  %.156.us.i95 = phi ptr [ %.257.us.i106, %bb.aq ], [ %.156.us.i95.ph, %._crit_edge.us.i92.outer ] ; 7 uses
  %.253.us.i96 = phi ptr [ %.354.us.i107, %bb.aq ], [ %.253.us.i96.ph, %._crit_edge.us.i92.outer ] ; 11 uses
  %.149.us.i97 = phi ptr [ %.050.us.i108, %bb.aq ], [ %.149.us.i97.ph, %._crit_edge.us.i92.outer ] ; 4 uses
  %.2.us.i98 = phi i32 [ %.3.us.i109, %bb.aq ], [ %.2.us.i98.ph204, %._crit_edge.us.i92.outer ] ; 5 uses
  %.043.us.i99 = phi i32 [ %.1.us.i110, %bb.aq ], [ %.043.us.i99.ph, %._crit_edge.us.i92.outer ] ; 6 uses
  %i.fb = icmp sgt i32 %.2.us.i98, 0
  br i1 %i.fb, label %.critedge.thread.us.i104, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.us.i92
  %i.fc = icmp sgt i32 %.043.us.i99, 0
  %i.fd = icmp ne ptr %.253.us.i96, null
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %i.fe, label %.critedge.us.i103, label %.loopexit.us.i100

.critedge.us.i103:                                ; preds = %bb.aj
  %i.ff = icmp eq i32 %.2.us.i98, 0
  br i1 %i.ff, label %bb.ak, label %.critedge.thread.us.i104

bb.ak:                                            ; preds = %.critedge.us.i103
  %i.fg = load ptr, ptr %.253.us.i96, align 8, !tbaa !37
  %i.fh = add nsw i32 %.043.us.i99, -1
  br label %bb.ap

.critedge.thread.us.i104:                         ; preds = %.critedge.us.i103, %._crit_edge.us.i92
  %i.fi = icmp ne i32 %.043.us.i99, 0
  %i.fj = icmp ne ptr %.253.us.i96, null
  %or.cond.us.i105 = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %or.cond.us.i105, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.thread.us.i104
  %i.fk = load ptr, ptr %.156.us.i95, align 8, !tbaa !37
  %i.fl = add nsw i32 %.2.us.i98, -1
  br label %bb.ap

bb.am:                                            ; preds = %.critedge.thread.us.i104
  %i.fm = getelementptr inbounds nuw i8, ptr %.156.us.i95, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !36 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.253.us.i96, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !36 ; 3 uses
  %i.fq = load i16, ptr %i.fn, align 2, !tbaa !32 ; 2 uses
  %i.fr = and i16 %i.fq, -256
  %i.fs = lshr i16 %i.fq, 8
  %i.ft = or disjoint i16 %i.fs, %i.fr
  store i16 %i.ft, ptr %i.fn, align 2, !tbaa !32
  %i.fu = load i16, ptr %i.fp, align 2, !tbaa !32 ; 2 uses
  %i.fv = and i16 %i.fu, -256
  %i.fw = lshr i16 %i.fu, 8
  %i.fx = or disjoint i16 %i.fw, %i.fv
  store i16 %i.fx, ptr %i.fp, align 2, !tbaa !32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !33
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !33
  %.not = icmp sgt i16 %i.fz, %i.gb
  br i1 %.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gc = load ptr, ptr %.253.us.i96, align 8, !tbaa !37
  %i.gd = add nsw i32 %.043.us.i99, -1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ge = load ptr, ptr %.156.us.i95, align 8, !tbaa !37
  %i.gf = add nsw i32 %.2.us.i98, -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  %.257.us.i106 = phi ptr [ %.156.us.i95, %bb.ak ], [ %i.ge, %bb.ao ], [ %.156.us.i95, %bb.an ], [ %i.fk, %bb.al ] ; 2 uses
  %.354.us.i107 = phi ptr [ %i.fg, %bb.ak ], [ %.253.us.i96, %bb.ao ], [ %i.gc, %bb.an ], [ %.253.us.i96, %bb.al ] ; 2 uses
  %.050.us.i108 = phi ptr [ %.253.us.i96, %bb.ak ], [ %.156.us.i95, %bb.ao ], [ %.253.us.i96, %bb.an ], [ %.156.us.i95, %bb.al ] ; 4 uses
  %.3.us.i109 = phi i32 [ 0, %bb.ak ], [ %i.gf, %bb.ao ], [ %.2.us.i98, %bb.an ], [ %i.fl, %bb.al ] ; 2 uses
  %.1.us.i110 = phi i32 [ %i.fh, %bb.ak ], [ %.043.us.i99, %bb.ao ], [ %i.gd, %bb.an ], [ %.043.us.i99, %bb.al ] ; 2 uses
  %.not65.us.i111 = icmp eq ptr %.149.us.i97, null
  br i1 %.not65.us.i111, label %._crit_edge.us.i92.outer, label %bb.aq, !llvm.loop !4

bb.aq:                                            ; preds = %bb.ap
  store ptr %.050.us.i108, ptr %.149.us.i97, align 8, !tbaa !37
  br label %._crit_edge.us.i92, !llvm.loop !4

.loopexit.us.i100:                                ; preds = %bb.aj
  %.not.us.i101 = icmp eq ptr %.253.us.i96, null
  br i1 %.not.us.i101, label %._crit_edge80.i102, label %.lr.ph.us.i83, !llvm.loop !5

._crit_edge80.i102:                               ; preds = %.loopexit.us.i100
  store ptr null, ptr %.149.us.i97, align 8, !tbaa !37
  %i.gg = icmp eq i32 %.04677.us.i84, 0
  %i.gh = shl nuw nsw i32 %.047.i82, 1
  br i1 %i.gg, label %core_list_mergesort.exit113.preheader, label %.lr.ph79.i80

core_list_mergesort.exit113.preheader:            ; preds = %._crit_edge80.i102
  %.2157 = load ptr, ptr %.260.us.i94.ph, align 8, !tbaa !37 ; 2 uses
  %.not62158 = icmp eq ptr %.2157, null
  br i1 %.not62158, label %core_list_mergesort.exit113._crit_edge, label %.lr.ph161

.lr.ph161:                                        ; preds = %core_list_mergesort.exit113.preheader
  %i.gi = getelementptr inbounds nuw i8, ptr %.260.us.i94.ph, i64 8
  br label %core_list_mergesort.exit113

core_list_mergesort.exit113:                      ; preds = %.lr.ph161, %core_list_mergesort.exit113
  %.2160 = phi ptr [ %.2157, %.lr.ph161 ], [ %.2, %core_list_mergesort.exit113 ]
  %.4159 = phi i16 [ %.3.lcssa, %.lr.ph161 ], [ %i.gl, %core_list_mergesort.exit113 ]
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !36
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !32
  %i.gl = tail call zeroext i16 @crc16(i16 noundef signext %i.gk, i16 noundef zeroext %.4159) #9 ; 2 uses
  %.2 = load ptr, ptr %.2160, align 8, !tbaa !37  ; 2 uses
  %.not62 = icmp eq ptr %.2, null
  br i1 %.not62, label %core_list_mergesort.exit113._crit_edge, label %core_list_mergesort.exit113, !llvm.loop !41

core_list_mergesort.exit113._crit_edge:           ; preds = %core_list_mergesort.exit113, %core_list_mergesort.exit113.preheader
  %.4.lcssa = phi i16 [ %.3.lcssa, %core_list_mergesort.exit113.preheader ], [ %i.gl, %core_list_mergesort.exit113 ]
  ret i16 %.4.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @core_list_find(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !33   ; 2 uses
  %i.c = icmp sgt i16 %i.b, -1
  %.not1625 = icmp eq ptr %0, null                ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %bb.a
  br i1 %.not1625, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader18
  %i.d = load i16, ptr %1, align 2, !tbaa !32
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %.not1625, label %.critedge, label %.lr.ph27

.lr.ph27:                                         ; preds = %.preheader, %bb.b
  %.01426 = phi ptr [ %i.i, %bb.b ], [ %0, %.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01426, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !33
  %.not17 = icmp eq i16 %i.h, %i.b
  br i1 %.not17, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph27
  %i.i = load ptr, ptr %.01426, align 8, !tbaa !37 ; 2 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %.critedge, label %.lr.ph27, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.122 = phi ptr [ %0, %.lr.ph ], [ %i.n, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.122, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = load i16, ptr %i.k, align 2, !tbaa !32
  %i.m = and i16 %i.l, 255
  %.not15 = icmp eq i16 %i.m, %i.d
  br i1 %.not15, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.122, align 8, !tbaa !37  ; 2 uses
  %.not = icmp eq ptr %i.n, null
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
  %.2.us.ph89 = phi i32 [ %.2.us.ph, %._crit_edge.us.preheader ], [ %.3.us, %bb.j ]
  %.043.us.ph = phi i32 [ %.047, %._crit_edge.us.preheader ], [ %.1.us, %bb.j ]
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.outer, %bb.k
  %.156.us = phi ptr [ %.257.us, %bb.k ], [ %.156.us.ph, %._crit_edge.us.outer ] ; 7 uses
  %.253.us = phi ptr [ %.354.us, %bb.k ], [ %.253.us.ph, %._crit_edge.us.outer ] ; 11 uses
  %.149.us = phi ptr [ %.050.us, %bb.k ], [ %.149.us.ph, %._crit_edge.us.outer ] ; 4 uses
  %.2.us = phi i32 [ %.3.us, %bb.k ], [ %.2.us.ph89, %._crit_edge.us.outer ] ; 5 uses
  %.043.us = phi i32 [ %.1.us, %bb.k ], [ %.043.us.ph, %._crit_edge.us.outer ] ; 6 uses
  %i.d = icmp sgt i32 %.2.us, 0
  br i1 %i.d, label %.critedge.thread.us, label %bb.d

bb.d:                                             ; preds = %._crit_edge.us
  %i.e = icmp sgt i32 %.043.us, 0
  %i.f = icmp ne ptr %.253.us, null
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
  %.not.us = icmp eq ptr %.253.us, null
  br i1 %.not.us, label %._crit_edge80, label %.lr.ph.us, !llvm.loop !5

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
  store ptr %i.h, ptr %1, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.i, ptr %i.l, align 8, !tbaa !36
  store i16 -1, ptr %i.i, align 2, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i16 32767, ptr %i.m, align 2, !tbaa !33
  br label %core_list_insert_new.exit

core_list_insert_new.exit:                        ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.157 = phi ptr [ %i.j, %bb.b ], [ %i.h, %bb.a ]
  %.154 = phi ptr [ %i.k, %bb.b ], [ %i.i, %bb.a ]
  %.not69 = icmp eq i32 %i.b, 0
  br i1 %.not69, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %core_list_insert_new.exit42, %core_list_insert_new.exit
  %.064 = phi ptr [ %i.n, %core_list_insert_new.exit ], [ %i.ac, %core_list_insert_new.exit42 ] ; 2 uses
  %i.o = load ptr, ptr %.064, align 8, !tbaa !37  ; 2 uses
  %.not65 = icmp eq ptr %i.o, null
  br i1 %.not65, label %.lr.ph79.i.preheader, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader
  %i.p = udiv i32 %i.b, 5
  br label %bb.e

.lr.ph:                                           ; preds = %core_list_insert_new.exit, %core_list_insert_new.exit42
  %i.q = phi ptr [ %i.ac, %core_list_insert_new.exit42 ], [ %i.n, %core_list_insert_new.exit ] ; 3 uses
  %.03763 = phi i32 [ %i.ad, %core_list_insert_new.exit42 ], [ 0, %core_list_insert_new.exit ] ; 2 uses
  %.05362 = phi ptr [ %.255, %core_list_insert_new.exit42 ], [ %.154, %core_list_insert_new.exit ] ; 6 uses
  %.05661 = phi ptr [ %.258, %core_list_insert_new.exit42 ], [ %.157, %core_list_insert_new.exit ] ; 7 uses
  %i.r = trunc i32 %.03763 to i16                 ; 2 uses
  %i.s = xor i16 %2, %i.r
  %i.t = shl i16 %i.s, 3
  %i.u = and i16 %i.t, 120
  %i.v = and i16 %i.r, 7
  %i.w = or disjoint i16 %i.u, %i.v
  %i.x = mul nuw nsw i16 %i.w, 257
  %i.y = getelementptr inbounds nuw i8, ptr %.05661, i64 16 ; 2 uses
  %.not.i39 = icmp ult ptr %i.y, %i.d
  br i1 %.not.i39, label %bb.c, label %core_list_insert_new.exit42

bb.c:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.05362, i64 4 ; 2 uses
  %.not18.i41 = icmp ult ptr %i.z, %i.e
  br i1 %.not18.i41, label %bb.d, label %core_list_insert_new.exit42

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %.05661, align 8, !tbaa !37
  store ptr %.05661, ptr %1, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %.05661, i64 8
  store ptr %.05362, ptr %i.aa, align 8, !tbaa !36
  store i16 %i.x, ptr %.05362, align 2, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.05362, i64 2
  store i16 32767, ptr %i.ab, align 2, !tbaa !33
  br label %core_list_insert_new.exit42

core_list_insert_new.exit42:                      ; preds = %.lr.ph, %bb.c, %bb.d
  %i.ac = phi ptr [ %.05661, %bb.d ], [ %i.q, %bb.c ], [ %i.q, %.lr.ph ] ; 2 uses
  %.258 = phi ptr [ %i.y, %bb.d ], [ %.05661, %bb.c ], [ %.05661, %.lr.ph ]
  %.255 = phi ptr [ %i.z, %bb.d ], [ %.05362, %bb.c ], [ %.05362, %.lr.ph ]
  %i.ad = add nuw i32 %.03763, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %i.b
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !44

bb.e:                                             ; preds = %.lr.ph68, %bb.g
  %.0 = phi ptr [ %i.o, %.lr.ph68 ], [ %i.ap, %bb.g ] ; 2 uses
  %.067 = phi ptr [ %.064, %.lr.ph68 ], [ %.0, %bb.g ]
  %.166 = phi i32 [ 1, %.lr.ph68 ], [ %i.af, %bb.g ] ; 3 uses
  %i.ae = icmp ult i32 %.166, %i.p
  %i.af = add i32 %.166, 1                        ; 2 uses
  %i.ag = trunc i32 %.166 to i16                  ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = xor i16 %2, %i.ag
  %i.ai = and i16 %i.ah, 16383
  %.tr = trunc i32 %i.af to i16
  %i.aj = shl i16 %.tr, 8
  %i.ak = and i16 %i.aj, 1792
  %i.al = or i16 %i.ak, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i16 [ %i.al, %bb.f ], [ %i.ag, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i16 %.sink, ptr %i.ao, align 2, !tbaa !33
  %i.ap = load ptr, ptr %.0, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %.lr.ph79.i.preheader, label %bb.e, !llvm.loop !45

.lr.ph79.i.preheader:                             ; preds = %bb.g, %.preheader
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %._crit_edge80.i
  %.058.i = phi ptr [ %.260.us.i.ph, %._crit_edge80.i ], [ %1, %.lr.ph79.i.preheader ] ; 2 uses
  %.047.i = phi i32 [ %i.bz, %._crit_edge80.i ], [ 1, %.lr.ph79.i.preheader ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i) ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit.us.i, %.lr.ph79.i
  %.04677.us.i = phi i32 [ %i.aq, %.loopexit.us.i ], [ 0, %.lr.ph79.i ] ; 2 uses
  %.04876.us.i = phi ptr [ %.149.us.i, %.loopexit.us.i ], [ null, %.lr.ph79.i ]
  %.05575.us.i = phi ptr [ %.253.us.i, %.loopexit.us.i ], [ %.058.i, %.lr.ph79.i ] ; 2 uses
  %.15974.us.i = phi ptr [ %.260.us.i.ph, %.loopexit.us.i ], [ null, %.lr.ph79.i ]
  %i.aq = add nuw nsw i32 %.04677.us.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %exitcond.not.i = icmp eq i32 %i.ar, %.047.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i.preheader, label %bb.i, !llvm.loop !3

bb.i:                                             ; preds = %bb.h, %.lr.ph.us.i
  %.068.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.ar, %bb.h ]
  %.05166.us.i = phi ptr [ %.05575.us.i, %.lr.ph.us.i ], [ %i.as, %bb.h ]
  %i.ar = add nuw nsw i32 %.068.us.i, 1           ; 3 uses
  %i.as = load ptr, ptr %.05166.us.i, align 8, !tbaa !37 ; 3 uses
  %.not64.us.i = icmp eq ptr %i.as, null
  br i1 %.not64.us.i, label %._crit_edge.us.i.preheader, label %bb.h

._crit_edge.us.i.preheader:                       ; preds = %bb.i, %bb.h
  %.2.us.i.ph = phi i32 [ %i.ar, %bb.i ], [ %.047.i, %bb.h ]
  br label %._crit_edge.us.i.outer

._crit_edge.us.i.outer:                           ; preds = %bb.p, %._crit_edge.us.i.preheader
  %.260.us.i.ph = phi ptr [ %.15974.us.i, %._crit_edge.us.i.preheader ], [ %.050.us.i, %bb.p ] ; 3 uses
  %.156.us.i.ph = phi ptr [ %.05575.us.i, %._crit_edge.us.i.preheader ], [ %.257.us.i, %bb.p ]
  %.253.us.i.ph = phi ptr [ %i.as, %._crit_edge.us.i.preheader ], [ %.354.us.i, %bb.p ]
  %.149.us.i.ph = phi ptr [ %.04876.us.i, %._crit_edge.us.i.preheader ], [ %.050.us.i, %bb.p ]
  %.2.us.i.ph85 = phi i32 [ %.2.us.i.ph, %._crit_edge.us.i.preheader ], [ %.3.us.i, %bb.p ]
  %.043.us.i.ph = phi i32 [ %.047.i, %._crit_edge.us.i.preheader ], [ %.1.us.i, %bb.p ]
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.outer, %bb.q
  %.156.us.i = phi ptr [ %.257.us.i, %bb.q ], [ %.156.us.i.ph, %._crit_edge.us.i.outer ] ; 7 uses
  %.253.us.i = phi ptr [ %.354.us.i, %bb.q ], [ %.253.us.i.ph, %._crit_edge.us.i.outer ] ; 11 uses
  %.149.us.i = phi ptr [ %.050.us.i, %bb.q ], [ %.149.us.i.ph, %._crit_edge.us.i.outer ] ; 4 uses
  %.2.us.i = phi i32 [ %.3.us.i, %bb.q ], [ %.2.us.i.ph85, %._crit_edge.us.i.outer ] ; 5 uses
  %.043.us.i = phi i32 [ %.1.us.i, %bb.q ], [ %.043.us.i.ph, %._crit_edge.us.i.outer ] ; 6 uses
  %i.at = icmp sgt i32 %.2.us.i, 0
  br i1 %i.at, label %.critedge.thread.us.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.us.i
  %i.au = icmp sgt i32 %.043.us.i, 0
  %i.av = icmp ne ptr %.253.us.i, null
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.critedge.us.i, label %.loopexit.us.i

.critedge.us.i:                                   ; preds = %bb.j
  %i.ax = icmp eq i32 %.2.us.i, 0
  br i1 %i.ax, label %bb.k, label %.critedge.thread.us.i

bb.k:                                             ; preds = %.critedge.us.i
  %i.ay = load ptr, ptr %.253.us.i, align 8, !tbaa !37
  %i.az = add nsw i32 %.043.us.i, -1
  br label %bb.p

.critedge.thread.us.i:                            ; preds = %.critedge.us.i, %._crit_edge.us.i
  %i.ba = icmp ne i32 %.043.us.i, 0
  %i.bb = icmp ne ptr %.253.us.i, null
  %or.cond.us.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.us.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge.thread.us.i
  %i.bc = load ptr, ptr %.156.us.i, align 8, !tbaa !37
  %i.bd = add nsw i32 %.2.us.i, -1
  br label %bb.p

bb.m:                                             ; preds = %.critedge.thread.us.i
  %i.be = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36 ; 3 uses
  %i.bi = load i16, ptr %i.bf, align 2, !tbaa !32 ; 2 uses
  %i.bj = and i16 %i.bi, -256
  %i.bk = lshr i16 %i.bi, 8
  %i.bl = or disjoint i16 %i.bk, %i.bj
  store i16 %i.bl, ptr %i.bf, align 2, !tbaa !32
  %i.bm = load i16, ptr %i.bh, align 2, !tbaa !32 ; 2 uses
  %i.bn = and i16 %i.bm, -256
  %i.bo = lshr i16 %i.bm, 8
  %i.bp = or disjoint i16 %i.bo, %i.bn
  store i16 %i.bp, ptr %i.bh, align 2, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !33
  %.not60 = icmp sgt i16 %i.br, %i.bt
  br i1 %.not60, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %.253.us.i, align 8, !tbaa !37
  %i.bv = add nsw i32 %.043.us.i, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %.156.us.i, align 8, !tbaa !37
  %i.bx = add nsw i32 %.2.us.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.257.us.i = phi ptr [ %.156.us.i, %bb.k ], [ %i.bw, %bb.o ], [ %.156.us.i, %bb.n ], [ %i.bc, %bb.l ] ; 2 uses
  %.354.us.i = phi ptr [ %i.ay, %bb.k ], [ %.253.us.i, %bb.o ], [ %i.bu, %bb.n ], [ %.253.us.i, %bb.l ] ; 2 uses
  %.050.us.i = phi ptr [ %.253.us.i, %bb.k ], [ %.156.us.i, %bb.o ], [ %.253.us.i, %bb.n ], [ %.156.us.i, %bb.l ] ; 4 uses
  %.3.us.i = phi i32 [ 0, %bb.k ], [ %i.bx, %bb.o ], [ %.2.us.i, %bb.n ], [ %i.bd, %bb.l ] ; 2 uses
  %.1.us.i = phi i32 [ %i.az, %bb.k ], [ %.043.us.i, %bb.o ], [ %i.bv, %bb.n ], [ %.043.us.i, %bb.l ] ; 2 uses
  %.not65.us.i = icmp eq ptr %.149.us.i, null
  br i1 %.not65.us.i, label %._crit_edge.us.i.outer, label %bb.q, !llvm.loop !4

bb.q:                                             ; preds = %bb.p
  store ptr %.050.us.i, ptr %.149.us.i, align 8, !tbaa !37
  br label %._crit_edge.us.i, !llvm.loop !4

.loopexit.us.i:                                   ; preds = %bb.j
  %.not.us.i = icmp eq ptr %.253.us.i, null
  br i1 %.not.us.i, label %._crit_edge80.i, label %.lr.ph.us.i, !llvm.loop !5

._crit_edge80.i:                                  ; preds = %.loopexit.us.i
  store ptr null, ptr %.149.us.i, align 8, !tbaa !37
  %i.by = icmp eq i32 %.04677.us.i, 0
  %i.bz = shl nuw nsw i32 %.047.i, 1
  br i1 %i.by, label %core_list_mergesort.exit, label %.lr.ph79.i

core_list_mergesort.exit:                         ; preds = %._crit_edge80.i
  ret ptr %.260.us.i.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @core_list_insert_new(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readnone captures(address) %4, ptr nofree noundef readnone captures(address) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !46     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.not = icmp ult ptr %i.b, %4
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.not18 = icmp ult ptr %i.d, %5
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !46
  %i.e = load ptr, ptr %0, align 8, !tbaa !37
  store ptr %i.e, ptr %i.a, align 8, !tbaa !37
  store ptr %i.a, ptr %0, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !36
  %i.g = load ptr, ptr %3, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.h, ptr %3, align 8, !tbaa !47
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.j = load <2 x i16>, ptr %1, align 2, !tbaa !16
  store <2 x i16> %i.j, ptr %i.i, align 2, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.a, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"short", !11, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTS11list_head_s", !17, i64 0}
!19 = !{!"p1 short", !17, i64 0}
!20 = !{!"p1 int", !17, i64 0}
!21 = !{!"MAT_PARAMS_S", !12, i64 0, !19, i64 8, !19, i64 16, !20, i64 24}
!22 = !{!"CORE_PORTABLE_S", !11, i64 0}
!23 = !{!"RESULTS_S", !15, i64 0, !15, i64 2, !15, i64 4, !11, i64 8, !12, i64 40, !12, i64 44, !12, i64 48, !18, i64 56, !21, i64 64, !15, i64 96, !15, i64 98, !15, i64 100, !15, i64 102, !15, i64 104, !22, i64 106}
!24 = !{!23, !12, i64 40}
!25 = !{!17, !17, i64 0}
!26 = !{!23, !15, i64 0}
!27 = !{!23, !15, i64 2}
!28 = !{!23, !15, i64 96}
!29 = !{!23, !15, i64 102}
!30 = !{!23, !15, i64 100}
!31 = !{!"list_data_s", !15, i64 0, !15, i64 2}
!32 = !{!31, !15, i64 0}
!33 = !{!31, !15, i64 2}
!34 = !{!"p1 _ZTS11list_data_s", !17, i64 0}
!35 = !{!"list_head_s", !18, i64 0, !34, i64 8}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !18, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = !{!23, !18, i64 56}
!43 = !{!23, !15, i64 4}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !38}
!46 = !{!18, !18, i64 0}
!47 = !{!34, !34, i64 0}
end_hunk_0
