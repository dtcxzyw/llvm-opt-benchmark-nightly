inline.NumInlined: 205
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@blame_chunk:bb.a
  %i.gh = getelementptr i8, ptr %i.gg, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !327
  %i.gj = getelementptr inbounds nuw i8, ptr %.03849.i, i64 24
  store i32 %i.gi, ptr %i.gj, align 8, !tbaa !56
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.gk = getelementptr inbounds nuw i8, ptr %.03849.i, i64 36
  store i32 1, ptr %i.gk, align 4, !tbaa !59
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %blame_origin_incref.exit45.i
  %.sink58.i = phi ptr [ %i.a, %bb.ai ], [ %i.b, %blame_origin_incref.exit45.i ] ; 2 uses
  %i.gl = load ptr, ptr %.sink58.i, align 8, !tbaa !38
  store ptr %i.gl, ptr %.03849.i, align 8, !tbaa !40
  store ptr %.03849.i, ptr %.sink58.i, align 8, !tbaa !38
  %i.gm = getelementptr inbounds nuw i8, ptr %.03849.i, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !57
  %i.go = icmp eq i32 %i.gn, %.03750.i
  br i1 %i.go, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 1783, ptr noundef nonnull @__PRETTY_FUNCTION__.ignore_blame_entry) #21
  unreachable

bb.al:                                            ; preds = %bb.aj, %bb.ad
  %.139.i = phi ptr [ %.03849.i, %bb.ad ], [ %.0.i, %bb.aj ] ; 2 uses
  %.1.i = phi i32 [ %i.ez, %bb.ad ], [ 1, %bb.aj ]
  %exitcond.not.i105 = icmp eq i64 %indvars.iv.next.i104, %i.en
  br i1 %exitcond.not.i105, label %._crit_edge.i, label %bb.ab, !llvm.loop !329

._crit_edge.i:                                    ; preds = %bb.al
  %i.gp = icmp eq ptr %.139.i, null
  br i1 %i.gp, label %ignore_blame_entry.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 1787, ptr noundef nonnull @__PRETTY_FUNCTION__.ignore_blame_entry) #21
  unreachable

bb.am:                                            ; preds = %bb.z
  %.0..0..0.133 = load ptr, ptr %i.a, align 8, !tbaa !38
  store ptr %.0..0..0.133, ptr %.1151, align 8, !tbaa !40
  store ptr %.1151, ptr %i.a, align 8, !tbaa !38
  br label %ignore_blame_entry.exit

ignore_blame_entry.exit:                          ; preds = %._crit_edge.i, %bb.am
  %.not86 = icmp eq ptr %i.dj, null
  br i1 %.not86, label %.critedge2, label %bb.v, !llvm.loop !330

.critedge2:                                       ; preds = %bb.v, %ignore_blame_entry.exit, %bb.u
  %.175.lcssa = phi ptr [ null, %bb.u ], [ %.2, %ignore_blame_entry.exit ], [ %.175150, %bb.v ] ; 2 uses
  %.1.lcssa = phi ptr [ null, %bb.u ], [ null, %ignore_blame_entry.exit ], [ %.1151, %bb.v ] ; 2 uses
  call void @free(ptr noundef %.076) #20
  %.0..0..0. = load ptr, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %.not87 = icmp eq ptr %.0..0..0., null
  br i1 %.not87, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.critedge2
  %i.gq = load ptr, ptr %0, align 8, !tbaa !118   ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !38
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.an, %.lr.ph.i107
  %.010.i108 = phi ptr [ %i.gs, %.lr.ph.i107 ], [ %.0..0..0., %bb.an ] ; 4 uses
  %.079.i109 = phi ptr [ %.010.i108, %.lr.ph.i107 ], [ %i.gr, %bb.an ]
  %i.gs = load ptr, ptr %.010.i108, align 8, !tbaa !40 ; 2 uses
  store ptr %.079.i109, ptr %.010.i108, align 8, !tbaa !40
  %.not.i110 = icmp eq ptr %i.gs, null
  br i1 %.not.i110, label %reverse_blame.exit113, label %.lr.ph.i107, !llvm.loop !164

reverse_blame.exit113:                            ; preds = %.lr.ph.i107
  store ptr %.010.i108, ptr %i.gq, align 8, !tbaa !38
  store ptr %.0..0..0., ptr %0, align 8, !tbaa !118
  br label %bb.ao

bb.ao:                                            ; preds = %reverse_blame.exit113, %.critedge2
  %.0..0..0.134 = load ptr, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %.not8.i114 = icmp eq ptr %.175.lcssa, null
  br i1 %.not8.i114, label %reverse_blame.exit121, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %bb.ao, %.lr.ph.i115
  %.010.i116 = phi ptr [ %i.gt, %.lr.ph.i115 ], [ %.175.lcssa, %bb.ao ] ; 4 uses
  %.079.i117 = phi ptr [ %.010.i116, %.lr.ph.i115 ], [ %.1.lcssa, %bb.ao ]
  %i.gt = load ptr, ptr %.010.i116, align 8, !tbaa !40 ; 2 uses
  store ptr %.079.i117, ptr %.010.i116, align 8, !tbaa !40
  %.not.i118 = icmp eq ptr %i.gt, null
  br i1 %.not.i118, label %reverse_blame.exit121, label %.lr.ph.i115, !llvm.loop !164

reverse_blame.exit121:                            ; preds = %.lr.ph.i115, %bb.ao
  %.07.lcssa.i120 = phi ptr [ %.1.lcssa, %bb.ao ], [ %.010.i116, %.lr.ph.i115 ] ; 2 uses
  %.not8.i122 = icmp eq ptr %.0..0..0.134, null
  br i1 %.not8.i122, label %reverse_blame.exit129, label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %reverse_blame.exit121, %.lr.ph.i123
  %.010.i124 = phi ptr [ %i.gu, %.lr.ph.i123 ], [ %.0..0..0.134, %reverse_blame.exit121 ] ; 4 uses
  %.079.i125 = phi ptr [ %.010.i124, %.lr.ph.i123 ], [ %.07.lcssa.i120, %reverse_blame.exit121 ]
  %i.gu = load ptr, ptr %.010.i124, align 8, !tbaa !40 ; 2 uses
  store ptr %.079.i125, ptr %.010.i124, align 8, !tbaa !40
  %.not.i126 = icmp eq ptr %i.gu, null
  br i1 %.not.i126, label %reverse_blame.exit129, label %.lr.ph.i123, !llvm.loop !164

reverse_blame.exit129:                            ; preds = %.lr.ph.i123, %reverse_blame.exit121
  %.07.lcssa.i128 = phi ptr [ %.07.lcssa.i120, %reverse_blame.exit121 ], [ %.010.i124, %.lr.ph.i123 ]
  %i.gv = load ptr, ptr %1, align 8, !tbaa !118
  store ptr %.07.lcssa.i128, ptr %i.gv, align 8, !tbaa !38
  %.0..0..0.135 = load ptr, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %.not88 = icmp eq ptr %.0..0..0.135, null
  br i1 %.not88, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %reverse_blame.exit129
  store ptr %.0..0..0.135, ptr %1, align 8, !tbaa !118
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %reverse_blame.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

declare void @hashmap_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @hashmap_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @hashmap_add(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @xdi_diff(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @fuzzy_find_matching_lines_recurse(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef range(i32 0, 11) %10, i32 noundef range(i32 -2147483648, 2147483647) %11, ptr noundef nonnull %12) unnamed_addr #2 {
bb.a:
  %13 = alloca %struct.hashmap_iter, align 8      ; 6 uses
  %14 = alloca %struct.hashmap_iter, align 8      ; 5 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.e = zext nneg i32 %10 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %i.e
  %i.f = shl nuw nsw i32 %10, 1
  %i.g = or disjoint i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %find_best_line_matches.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %find_best_line_matches.exit ] ; 8 uses
  %.0161 = phi i32 [ -1, %.lr.ph ], [ %spec.select147, %find_best_line_matches.exit ] ; 2 uses
  %.0130160 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %find_best_line_matches.exit ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !30   ; 2 uses
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %bb.c, label %find_best_line_matches.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 4, !tbaa !321
  %i.l = trunc i64 %indvars.iv to i32
  %i.m = add i32 %1, %i.l
  %i.n = sub i32 %i.m, %i.k
  %i.o = shl nsw i32 %i.n, 1
  %i.p = or disjoint i32 %i.o, 1
  %i.q = load i32, ptr %i.c, align 4, !tbaa !320
  %i.r = mul nsw i32 %i.p, %i.q
  %i.s = load i32, ptr %i.d, align 4, !tbaa !322
  %i.t = shl nsw i32 %i.s, 1
  %i.u = sdiv i32 %i.r, %i.t
  %i.v = load i32, ptr %12, align 4, !tbaa !318
  %i.w = sub i32 %i.u, %0
  %i.x = add i32 %i.w, %i.v                       ; 4 uses
  %i.y = sub nsw i32 %i.x, %10
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.y, i32 0) ; 2 uses
  %i.z = add nsw i32 %i.x, %10                    ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  %.not72.i = icmp slt i32 %i.z, %2
  %spec.select.i = select i1 %.not72.i, i32 %i.aa, i32 %2 ; 2 uses
  %i.ab = icmp slt i32 %spec.store.select.i, %spec.select.i
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ac = sext i32 %i.x to i64
  %i.ad = sub nsw i64 0, %i.ac
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ad
  %i.ae = mul nuw nsw i64 %indvars.iv, %i.h
  %invariant.gep91.i = getelementptr [4 x i8], ptr %gep, i64 %i.ae
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %5, i64 %indvars.iv
  %i.ag = zext nneg i32 %spec.store.select.i to i64
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 4 uses
  %.085.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.k ]
  %.05984.i = phi i32 [ 0, %.lr.ph.i ], [ %.160.i, %bb.k ] ; 2 uses
  %.06183.i = phi i32 [ 0, %.lr.ph.i ], [ %.162.i, %bb.k ] ; 2 uses
  %.06382.i = phi i32 [ 0, %.lr.ph.i ], [ %.164.i, %bb.k ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ai = sub i32 %i.ah, %i.x
  %i.aj = call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.aj, %10
  br i1 %.not.i.i, label %bb.e, label %get_similarity.exit.i

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 603, ptr noundef nonnull @__PRETTY_FUNCTION__.get_similarity) #21
  unreachable

get_similarity.exit.i:                            ; preds = %bb.d
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep91.i, i64 %indvars.iv.i ; 2 uses
  %i.ak = load i32, ptr %gep.i, align 4, !tbaa !30 ; 2 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %get_similarity.exit.i
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @hashmap_iter_init(ptr noundef %i.am, ptr noundef nonnull %14) #20
  %i.an = call ptr @hashmap_iter_next(ptr noundef nonnull %14) #20 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.an, null
  br i1 %.not15.i.i, label %fingerprint_similarity.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.h
  %.017.i.i = phi ptr [ %i.au, %bb.h ], [ %i.an, %bb.f ] ; 2 uses
  %.01016.i.i = phi i32 [ %.1.i.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.ao = call ptr @hashmap_get(ptr noundef %i.af, ptr noundef nonnull %.017.i.i, ptr noundef null) #20 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ao, null
  br i1 %.not14.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !313
  %i.ar = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !313
  %..i.i = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.as)
  %i.at = add nsw i32 %..i.i, %.01016.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.at, %bb.g ], [ %.01016.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = call ptr @hashmap_iter_next(ptr noundef nonnull %14) #20 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.au, null
  br i1 %.not.i75.i, label %fingerprint_similarity.exit.i, label %.lr.ph.i.i, !llvm.loop !323

fingerprint_similarity.exit.i:                    ; preds = %bb.h, %bb.f
  %.010.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %.1.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.av = sub nuw nsw i32 1000, %i.aj
  %i.aw = mul nsw i32 %.010.lcssa.i.i, %i.av      ; 2 uses
  store i32 %i.aw, ptr %gep.i, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %fingerprint_similarity.exit.i, %get_similarity.exit.i
  %i.ax = phi i32 [ %i.aw, %fingerprint_similarity.exit.i ], [ %i.ak, %get_similarity.exit.i ] ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, %.06382.i
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp sgt i32 %i.ax, %.06183.i
  %spec.select73.i = call i32 @llvm.smax.i32(i32 %i.ax, i32 %.06183.i)
  %spec.select74.i = select i1 %i.az, i32 %i.ah, i32 %.085.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.164.i = phi i32 [ %.06382.i, %bb.j ], [ %i.ax, %bb.i ] ; 3 uses
  %.162.i = phi i32 [ %spec.select73.i, %bb.j ], [ %.06382.i, %bb.i ] ; 2 uses
  %.160.i = phi i32 [ %.05984.i, %bb.j ], [ %i.ah, %bb.i ] ; 2 uses
  %.1.i = phi i32 [ %spec.select74.i, %bb.j ], [ %.05984.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %15 = icmp samesign ult i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %15, label %bb.d, label %._crit_edge.i, !llvm.loop !331

._crit_edge.i:                                    ; preds = %bb.k
  %i.ba = icmp eq i32 %.164.i, 0
  br i1 %i.ba, label %._crit_edge.thread.i, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  store i32 -2, ptr %i.i, align 4, !tbaa !30
  br label %.sink.split.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.bb = shl nuw nsw i32 %.164.i, 1
  %i.bc = sub nsw i32 %i.bb, %.162.i
  store i32 %i.bc, ptr %i.i, align 4, !tbaa !30
  %i.bd = add nsw i32 %.160.i, %0
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !30
  %i.bf = add nsw i32 %.1.i, %0
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %._crit_edge.thread.i
  %.sink104.i = phi ptr [ %9, %._crit_edge.thread.i ], [ %8, %bb.l ]
  %.sink.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %i.bf, %bb.l ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sink104.i, i64 %indvars.iv
  store i32 %.sink.i, ptr %i.bg, align 4, !tbaa !30
  %.pre = load i32, ptr %i.i, align 4, !tbaa !30
  br label %find_best_line_matches.exit

find_best_line_matches.exit:                      ; preds = %bb.b, %.sink.split.i
  %i.bh = phi i32 [ %i.j, %bb.b ], [ %.pre, %.sink.split.i ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, %.0161
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.bi, i32 %i.bj, i32 %.0130160 ; 11 uses
  %spec.select147 = call i32 @llvm.smax.i32(i32 %i.bh, i32 %.0161)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !332

._crit_edge:                                      ; preds = %find_best_line_matches.exit
  %i.bk = icmp eq i32 %spec.select, -1
  br i1 %i.bk, label %._crit_edge.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bl = sext i32 %spec.select to i64            ; 6 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %9, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !30 ; 17 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [56 x i8], ptr %4, i64 %i.bo
  %i.bq = sext i32 %0 to i64
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [56 x i8], ptr %i.bp, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds [56 x i8], ptr %5, i64 %i.bl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @hashmap_iter_init(ptr noundef %i.bt, ptr noundef nonnull %13) #20
  call void @hashmap_iter_init(ptr noundef %i.bt, ptr noundef nonnull %13) #20
  %i.bu = call ptr @hashmap_iter_next(ptr noundef nonnull %13) #20 ; 2 uses
  %.not17.i = icmp eq ptr %i.bu, null
  br i1 %.not17.i, label %fingerprint_subtract.exit, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %bb.m, %bb.q
  %.018.i = phi ptr [ %i.cc, %bb.q ], [ %i.bu, %bb.m ] ; 3 uses
  %i.bv = call ptr @hashmap_get(ptr noundef %i.bs, ptr noundef nonnull %.018.i, ptr noundef null) #20 ; 2 uses
  %.not15.i = icmp eq ptr %i.bv, null
  br i1 %.not15.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i149
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !313 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !313 ; 2 uses
  %.not16.i = icmp sgt i32 %i.bx, %i.bz
  br i1 %.not16.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = call ptr @hashmap_remove(ptr noundef %i.bs, ptr noundef nonnull %.018.i, ptr noundef null) #20 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cb = sub nsw i32 %i.bx, %i.bz
  store i32 %i.cb, ptr %i.bw, align 8, !tbaa !313
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph.i149
  %i.cc = call ptr @hashmap_iter_next(ptr noundef nonnull %13) #20 ; 2 uses
  %.not.i150 = icmp eq ptr %i.cc, null
  br i1 %.not.i150, label %fingerprint_subtract.exit, label %.lr.ph.i149, !llvm.loop !333

fingerprint_subtract.exit:                        ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.cd = sub nsw i32 %spec.select, %11
  %i.ce = add nsw i32 %spec.select, %11           ; 2 uses
  %i.cf = add nsw i32 %i.ce, 1
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.cd, i32 0) ; 4 uses
  %.not = icmp slt i32 %i.ce, %3
  %spec.select148 = select i1 %.not, i32 %i.cf, i32 %3 ; 6 uses
  %i.cg = icmp slt i32 %spec.store.select, %spec.select148
  br i1 %i.cg, label %.lr.ph163, label %.preheader

.lr.ph163:                                        ; preds = %fingerprint_subtract.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ck = sub nsw i32 %i.bn, %0                   ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cl
  %i.cn = zext nneg i32 %10 to i64
  %invariant.gep164 = getelementptr [4 x i8], ptr %i.cm, i64 %i.cn
  %i.co = shl nuw nsw i32 %10, 1
  %i.cp = or disjoint i32 %i.co, 1
  %i.cq = zext nneg i32 %spec.store.select to i64
  %i.cr = zext nneg i32 %i.cp to i64
  %wide.trip.count179 = zext nneg i32 %spec.select148 to i64
  br label %bb.u

.preheader:                                       ; preds = %bb.v, %fingerprint_subtract.exit
  %.not142.not167 = icmp sgt i32 %spec.select, %spec.store.select
  br i1 %.not142.not167, label %.lr.ph169.preheader, label %._crit_edge170

.lr.ph169.preheader:                              ; preds = %.preheader
  %i.cs = zext nneg i32 %spec.store.select to i64 ; 3 uses
  %i.ct = sub nsw i64 %i.bl, %i.cs
  %xtraiter = and i64 %i.ct, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph169.prol.loopexit, label %.lr.ph169.prol

.lr.ph169.prol:                                   ; preds = %.lr.ph169.preheader
  %indvars.iv.next182.prol = add nsw i64 %i.bl, -1 ; 6 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next182.prol ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %bb.r, label %.lr.ph169.prol.loopexit

bb.r:                                             ; preds = %.lr.ph169.prol
  %i.cx = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next182.prol
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !30
  %.not145.prol = icmp slt i32 %i.cy, %i.bn
  br i1 %.not145.prol, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv.next182.prol
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !30
  %.not146.prol = icmp slt i32 %i.da, %i.bn
  br i1 %.not146.prol, label %.lr.ph169.prol.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i32 -1, ptr %i.cu, align 4, !tbaa !30
  br label %.lr.ph169.prol.loopexit

.lr.ph169.prol.loopexit:                          ; preds = %.lr.ph169.prol, %bb.s, %bb.t, %.lr.ph169.preheader
  %indvars.iv181.unr = phi i64 [ %i.bl, %.lr.ph169.preheader ], [ %indvars.iv.next182.prol, %bb.t ], [ %indvars.iv.next182.prol, %bb.s ], [ %indvars.iv.next182.prol, %.lr.ph169.prol ]
  %i.db = add nsw i64 %i.bl, -1
  %i.dc = icmp eq i64 %i.db, %i.cs
  br i1 %i.dc, label %._crit_edge170, label %.lr.ph169

bb.u:                                             ; preds = %.lr.ph163, %bb.v
  %indvars.iv176 = phi i64 [ %i.cq, %.lr.ph163 ], [ %indvars.iv.next177, %bb.v ] ; 3 uses
  %i.dd = load i32, ptr %i.ch, align 4, !tbaa !321
  %i.de = trunc i64 %indvars.iv176 to i32
  %i.df = add i32 %1, %i.de
  %i.dg = sub i32 %i.df, %i.dd
  %i.dh = shl nsw i32 %i.dg, 1
  %i.di = or disjoint i32 %i.dh, 1
  %i.dj = load i32, ptr %i.ci, align 4, !tbaa !320
  %i.dk = mul nsw i32 %i.di, %i.dj
  %i.dl = load i32, ptr %i.cj, align 4, !tbaa !322
  %i.dm = shl nsw i32 %i.dl, 1
  %i.dn = sdiv i32 %i.dk, %i.dm
  %i.do = load i32, ptr %12, align 4, !tbaa !318
  %i.dp = sub i32 %i.dn, %0
  %i.dq = add i32 %i.dp, %i.do                    ; 2 uses
  %i.dr = sub nsw i32 %i.ck, %i.dq
  %i.ds = call i32 @llvm.abs.i32(i32 %i.dr, i1 true)
  %i.dt = icmp samesign ugt i32 %i.ds, %10
  br i1 %i.dt, label %bb.v, label %get_similarity.exit

get_similarity.exit:                              ; preds = %bb.u
  %i.du = sext i32 %i.dq to i64
  %i.dv = sub nsw i64 0, %i.du
  %gep165 = getelementptr [4 x i8], ptr %invariant.gep164, i64 %i.dv
  %i.dw = mul nuw nsw i64 %indvars.iv176, %i.cr
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %gep165, i64 %i.dw
  store i32 -1, ptr %i.dx, align 4, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %get_similarity.exit
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.preheader, label %bb.u, !llvm.loop !334

.lr.ph169:                                        ; preds = %.lr.ph169.prol.loopexit, %bb.ac
  %indvars.iv181 = phi i64 [ %indvars.iv.next182.1, %bb.ac ], [ %indvars.iv181.unr, %.lr.ph169.prol.loopexit ] ; 2 uses
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, -1 ; 3 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next182 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.ea = icmp sgt i32 %i.dz, -1
  br i1 %i.ea, label %bb.w, label %.lr.ph169.1

bb.w:                                             ; preds = %.lr.ph169
  %i.eb = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next182
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !30
  %.not145 = icmp slt i32 %i.ec, %i.bn
end_hunk_0
