Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/indxpath?download=true
inline.NumInlined: 126
inline.NumDeleted: 43
begin_hunk_0_@equal
; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @is_pseudo_constant_for_index(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call ptr @pull_varnos(ptr noundef %0, ptr noundef %1) #6
  %i.f = tail call zeroext i1 @bms_is_member(i32 noundef %i.d, ptr noundef %i.e) #6
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @contain_volatile_functions(ptr noundef %1) #6
  %not. = xor i1 %i.g, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %not., %bb.b ]
  ret i1 %.0
}

declare ptr @pull_varnos(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @contain_volatile_functions(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @consider_index_join_outer_rels(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef nonnull captures(none) %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.critedge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.c = mul i32 %8, 10                           ; 2 uses
  %i.d = load i32, ptr %i.a, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph80, label %.critedge

.lr.ph80:                                         ; preds = %.lr.ph60, %bb.i
  %indvars.iv6979 = phi i64 [ %indvars.iv.next70, %bb.i ], [ 0, %.lr.ph60 ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv6979
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.n = load ptr, ptr %i.m, align 8
  %.fr = freeze ptr %i.n                          ; 2 uses
  %i.o = load ptr, ptr %9, align 8
  %i.p = tail call zeroext i1 @list_member(ptr noundef %i.o, ptr noundef %i.l) #6
  br i1 %i.p, label %bb.i, label %bb.b

.critedge:                                        ; preds = %bb.i, %.lr.ph60, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph80
  %i.q = load ptr, ptr %9, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %eclass_already_used.exit, label %list_length.exit

list_length.exit:                                 ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %eclass_already_used.exit

.lr.ph:                                           ; preds = %list_length.exit
  %.not49 = icmp eq ptr %.fr, null
  %wide.trip.count67 = zext nneg i32 %i.s to i64  ; 2 uses
  br i1 %.not49, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.u = load ptr, ptr %9, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val.us = load ptr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %indvars.iv64
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = tail call i32 @bms_subset_compare(ptr noundef %i.l, ptr noundef %i.x) #6
  %.not48.us = icmp eq i32 %i.y, 3
  br i1 %.not48.us, label %eclass_already_used.exit.thread.us, label %bb.e

eclass_already_used.exit.thread.us:               ; preds = %.lr.ph.split.us
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %.not.i52.us = icmp eq ptr %i.z, null
  br i1 %.not.i52.us, label %list_length.exit53.us, label %bb.c

bb.c:                                             ; preds = %eclass_already_used.exit.thread.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  br label %list_length.exit53.us

list_length.exit53.us:                            ; preds = %bb.c, %eclass_already_used.exit.thread.us
  %i.ac = phi i32 [ %i.ab, %bb.c ], [ 0, %eclass_already_used.exit.thread.us ]
  %.not50.us = icmp slt i32 %i.ac, %i.c
  br i1 %.not50.us, label %bb.d, label %eclass_already_used.exit

bb.d:                                             ; preds = %list_length.exit53.us
  %i.ad = tail call ptr @bms_union(ptr noundef %i.l, ptr noundef %i.x) #6
  tail call fastcc void @get_join_index_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %i.ad, ptr noundef %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %eclass_already_used.exit, label %.lr.ph.split.us, !llvm.loop !25

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ae = load ptr, ptr %9, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %.val = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = tail call i32 @bms_subset_compare(ptr noundef %i.l, ptr noundef %i.ah) #6
  %.not48 = icmp eq i32 %i.ai, 3
  br i1 %.not48, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %i.aj = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph32.i, label %eclass_already_used.exit.thread

.lr.ph32.i:                                       ; preds = %.lr.ph.i, %.critedge.i
  %i.al = phi i32 [ %i.ax, %.critedge.i ], [ %i.aj, %.lr.ph.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %i.as, %.fr
  br i1 %i.at, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph32.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call zeroext i1 @bms_is_subset(ptr noundef %i.av, ptr noundef %i.ah) #6
  br i1 %i.aw, label %.loopexit, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.f
  %.pre.i = load i32, ptr %i.a, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %.lr.ph32.i
  %i.ax = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.al, %.lr.ph32.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %.lr.ph32.i, label %eclass_already_used.exit.thread

eclass_already_used.exit.thread:                  ; preds = %.critedge.i, %.lr.ph.i
  %i.ba = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i52 = icmp eq ptr %i.ba, null
  br i1 %.not.i52, label %list_length.exit53, label %bb.g

bb.g:                                             ; preds = %eclass_already_used.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %list_length.exit53

list_length.exit53:                               ; preds = %eclass_already_used.exit.thread, %bb.g
  %i.bd = phi i32 [ %i.bc, %bb.g ], [ 0, %eclass_already_used.exit.thread ]
  %.not50 = icmp slt i32 %i.bd, %i.c
  br i1 %.not50, label %bb.h, label %eclass_already_used.exit

bb.h:                                             ; preds = %list_length.exit53
  %i.be = tail call ptr @bms_union(ptr noundef %i.l, ptr noundef %i.ah) #6
  tail call fastcc void @get_join_index_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %i.be, ptr noundef %9)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %eclass_already_used.exit, label %.lr.ph.split, !llvm.loop !25

eclass_already_used.exit:                         ; preds = %.loopexit, %list_length.exit53, %bb.e, %list_length.exit53.us, %bb.b, %list_length.exit
  tail call fastcc void @get_join_index_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %i.l, ptr noundef %9)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph80, %eclass_already_used.exit
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv6979, 1 ; 2 uses
  %i.bf = load i32, ptr %i.a, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next70, %i.bg
  br i1 %i.bh, label %.lr.ph80, label %.critedge
}

declare zeroext i1 @list_member(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bms_subset_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @get_join_index_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr noundef %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.IndexClauseSet, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.a = load ptr, ptr %8, align 8
  %i.b = tail call zeroext i1 @list_member(ptr noundef %i.a, ptr noundef %7) #6
  br i1 %i.b, label %bb.f, label %.preheader73.preheader

.preheader73.preheader:                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %9, i8 0, i64 264, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %.preheader73.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.promoted = load i8, ptr %9, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %.critedge70
  %10 = phi i8 [ %.promoted, %.lr.ph84 ], [ %spec.select, %.critedge70 ]
  %indvars.iv90 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next91, %.critedge70 ] ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv90
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv90 ; 2 uses
  %i.o = load i32, ptr %i.l, align 4
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph78, label %.critedge

.lr.ph78:                                         ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call zeroext i1 @bms_is_subset(ptr noundef %i.w, ptr noundef %7) #6
  br i1 %i.x, label %bb.c, label %bb.d

.critedge:                                        ; preds = %bb.d, %.lr.ph, %bb.b
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv90
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not66 = icmp eq ptr %i.z, null
  br i1 %.not66, label %.critedge70, label %.lr.ph80

.lr.ph80:                                         ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i32, ptr %i.aa, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.critedge72, label %.critedge70

bb.c:                                             ; preds = %.lr.ph78
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = tail call ptr @lappend(ptr noundef %i.ae, ptr noundef nonnull %i.s) #6
  store ptr %i.af, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.l, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph78, label %.critedge

bb.e:                                             ; preds = %.critedge72
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.aj = load i32, ptr %i.aa, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next88, %i.ak
  br i1 %i.al, label %.critedge72, label %.critedge70

.critedge72:                                      ; preds = %.lr.ph80, %bb.e
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %bb.e ], [ 0, %.lr.ph80 ] ; 2 uses
  %i.am = load ptr, ptr %i.ab, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv87
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call zeroext i1 @bms_is_subset(ptr noundef %i.as, ptr noundef %7) #6
  br i1 %i.at, label %.split, label %bb.e

.split:                                           ; preds = %.critedge72
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv90 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call ptr @lappend(ptr noundef %i.av, ptr noundef nonnull %i.ao) #6
  store ptr %i.aw, ptr %i.au, align 8
  br label %.critedge70

.critedge70:                                      ; preds = %bb.e, %.critedge, %.lr.ph80, %.split
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv90 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv90
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call ptr @list_concat(ptr noundef %i.ay, ptr noundef %i.ba) #6 ; 2 uses
  store ptr %i.bb, ptr %i.ax, align 8
  %.not68 = icmp eq ptr %i.bb, null
  %spec.select = select i1 %.not68, i8 %10, i8 1  ; 2 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.bc = load i32, ptr %i.c, align 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next91, %i.bd
  br i1 %i.be, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.critedge70
  store i8 %spec.select, ptr %9, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader73.preheader
  call fastcc void @get_index_paths(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %9, ptr noundef %6)
  %i.bf = load ptr, ptr %8, align 8
  %i.bg = tail call ptr @lappend(ptr noundef %i.bf, ptr noundef %7) #6
  store ptr %i.bg, ptr %8, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @build_index_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i1 noundef zeroext %4, i32 noundef range(i32 1, 3) %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %struct.EquivalenceMemberIterator, align 8 ; 6 uses
  %cond149 = icmp eq i32 %5, 1
  br i1 %cond149, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 179
  %i.c = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @bms_copy(ptr noundef %i.f) #6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph279, label %._crit_edge

.lr.ph279:                                        ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not152 = icmp eq ptr %6, null
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 175 ; 2 uses
  br i1 %.not152, label %.lr.ph279.split.us, label %.lr.ph279.split

.lr.ph279.split.us:                               ; preds = %.lr.ph279, %.critedge154.us
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %.critedge154.us ], [ 0, %.lr.ph279 ] ; 2 uses
  %.0135277.us = phi ptr [ %.1.lcssa.us, %.critedge154.us ], [ %i.g, %.lr.ph279 ] ; 3 uses
  %.0136276.us = phi ptr [ %.1137.lcssa.us, %.critedge154.us ], [ null, %.lr.ph279 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv324
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %.not150.us = icmp eq ptr %i.o, null
  br i1 %.not150.us, label %.critedge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph279.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i32, ptr %i.p, align 4
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph273.us, label %.critedge.us

.lr.ph273.us:                                     ; preds = %.lr.ph.us, %.lr.ph273.us
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %.lr.ph273.us ], [ 0, %.lr.ph.us ] ; 2 uses
  %.1137238.us272.us = phi ptr [ %i.y, %.lr.ph273.us ], [ %.0136276.us, %.lr.ph.us ]
  %.1239.us271.us = phi ptr [ %i.ab, %.lr.ph273.us ], [ %.0135277.us, %.lr.ph.us ]
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv321
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @lappend(ptr noundef %.1137238.us272.us, ptr noundef nonnull %i.v) #6 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @bms_add_members(ptr noundef %.1239.us271.us, ptr noundef %i.aa) #6 ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.ac = load i32, ptr %i.p, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next322, %i.ad
  br i1 %i.ae, label %.lr.ph273.us, label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph273.us, %.lr.ph.us, %.lr.ph279.split.us
  %.1137.lcssa.us = phi ptr [ %.0136276.us, %.lr.ph.us ], [ %.0136276.us, %.lr.ph279.split.us ], [ %i.y, %.lr.ph273.us ] ; 3 uses
  %.1.lcssa.us = phi ptr [ %.0135277.us, %.lr.ph.us ], [ %.0135277.us, %.lr.ph279.split.us ], [ %i.ab, %.lr.ph273.us ] ; 2 uses
  %i.af = icmp eq ptr %.1137.lcssa.us, null
  br i1 %i.af, label %bb.d, label %.critedge154.us

bb.d:                                             ; preds = %.critedge.us
  %i.ag = load i8, ptr %i.m, align 1, !range !4, !noundef !5
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.critedge154.us, label %.loopexit

.critedge154.us:                                  ; preds = %bb.d, %.critedge.us
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %i.ai = load i32, ptr %i.h, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next325, %i.aj
  br i1 %i.ak, label %.lr.ph279.split.us, label %._crit_edge, !llvm.loop !27

.lr.ph279.split:                                  ; preds = %.lr.ph279, %.critedge154
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %.critedge154 ], [ 0, %.lr.ph279 ] ; 2 uses
  %.0135277 = phi ptr [ %.1.lcssa, %.critedge154 ], [ %i.g, %.lr.ph279 ] ; 3 uses
  %.0136276 = phi ptr [ %.1137.lcssa, %.critedge154 ], [ null, %.lr.ph279 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv318
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %.not150 = icmp eq ptr %i.am, null
  br i1 %.not150, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph279.split
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load i32, ptr %i.an, align 4
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph264, label %.critedge

.lr.ph264:                                        ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.1137238263 = phi ptr [ %.2138, %bb.h ], [ %.0136276, %.lr.ph ] ; 2 uses
  %.1239262 = phi ptr [ %.2, %bb.h ], [ %.0135277, %.lr.ph ] ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load i8, ptr %i.l, align 8, !range !4, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.g, label %bb.e

.critedge:                                        ; preds = %bb.h, %.lr.ph, %.lr.ph279.split
  %.1137.lcssa = phi ptr [ %.0136276, %.lr.ph279.split ], [ %.0136276, %.lr.ph ], [ %.2138, %bb.h ] ; 3 uses
  %.1.lcssa = phi ptr [ %.0135277, %.lr.ph279.split ], [ %.0135277, %.lr.ph ], [ %.2, %bb.h ] ; 2 uses
  %i.ay = icmp eq ptr %.1137.lcssa, null
  br i1 %i.ay, label %bb.i, label %.critedge154

bb.e:                                             ; preds = %.lr.ph264
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, 20
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %6, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %.lr.ph264
  %i.bd = tail call ptr @lappend(ptr noundef %.1137238263, ptr noundef nonnull %i.at) #6
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call ptr @bms_add_members(ptr noundef %.1239262, ptr noundef %i.bf) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2138 = phi ptr [ %i.bd, %bb.g ], [ %.1137238263, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %i.bg, %bb.g ], [ %.1239262, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.an, align 4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph264, label %.critedge

bb.i:                                             ; preds = %.critedge
  %i.bk = load i8, ptr %i.m, align 1, !range !4, !noundef !5
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.critedge154, label %.loopexit

.critedge154:                                     ; preds = %bb.i, %.critedge
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %i.bm = load i32, ptr %i.h, align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next319, %i.bn
  br i1 %i.bo, label %.lr.ph279.split, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.critedge154, %.critedge154.us, %bb.c
  %.0136.lcssa = phi ptr [ null, %bb.c ], [ %.1137.lcssa.us, %.critedge154.us ], [ %.1137.lcssa, %.critedge154 ] ; 5 uses
  %.0135.lcssa = phi ptr [ %i.g, %bb.c ], [ %.1.lcssa.us, %.critedge154.us ], [ %.1.lcssa, %.critedge154 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = tail call ptr @bms_del_member(ptr noundef %.0135.lcssa, i32 noundef %i.bq) #6 ; 5 uses
  %i.bs = load i32, ptr %i.bp, align 8
  %i.bt = tail call fastcc double @get_loop_count(ptr noundef %0, i32 noundef %i.bs, ptr noundef %i.br) ; 4 uses
  %i.bu = icmp ne i32 %5, 1                       ; 3 uses
  br i1 %i.bu, label %bb.j, label %.thread212

bb.j:                                             ; preds = %._crit_edge
  %i.bv = tail call zeroext i1 @has_useful_pathkeys(ptr noundef %0, ptr noundef nonnull %1) #6 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp ne ptr %i.bx, null
  %or.cond = select i1 %i.by, i1 %i.bv, i1 false  ; 2 uses
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = tail call ptr @build_index_pathkeys(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #6
  %i.ca = tail call ptr @truncate_useless_pathkeys(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.bz) #6
  br label %.thread199

bb.l:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 174
  %i.cc = load i8, ptr %i.cb, align 2, !range !4, !noundef !5
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond3 = select i1 %i.cd, i1 %i.bv, i1 false
  br i1 %or.cond3, label %bb.m, label %.thread199

bb.m:                                             ; preds = %bb.l
end_hunk_0
