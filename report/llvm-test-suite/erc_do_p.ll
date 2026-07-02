inline.NumInlined: 24
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@get_pic_from_dpb:bb.a
  %i.k = load ptr, ptr @dpb, align 8
  %i.l = zext i32 %i.a to i64
  %indvars.iv.next18 = add nsw i64 %i.l, -1       ; 2 uses
  %indvars19 = trunc i64 %indvars.iv.next18 to i32 ; 2 uses
  %i.m = icmp sgt i32 %indvars19, -1
  br i1 %i.m, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next20, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.n = icmp sgt i32 %indvars, -1
  br i1 %i.n, label %.lr.ph, label %.loopexit, !llvm.loop !140

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %indvars21 = phi i32 [ %indvars, %bb.e ], [ %indvars19, %bb.d ]
  %indvars.iv.next20 = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.next18, %bb.d ] ; 2 uses
  %i.o = and i64 %indvars.iv.next20, 2147483647
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !141
  %i.t = icmp eq i32 %i.s, %.0
  br i1 %i.t, label %bb.f, label %bb.e, !llvm.loop !140

bb.f:                                             ; preds = %.lr.ph
  store i32 %indvars21, ptr %1, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.f
  %.011 = phi ptr [ %i.v, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @comp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = load i32, ptr %1, align 4, !tbaa !4
  %i.c = sub nsw i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @init_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.c, align 8, !tbaa !145
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_node(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !145
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_list(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not3 = icmp eq ptr %0, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.04, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !145
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.04, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @add_node(ptr noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr @concealment_head, align 8, !tbaa !148
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @concealment_head, align 8, !tbaa !148
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @concealment_end, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.d, align 8, !tbaa !146
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %0, ptr @concealment_end, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @delete_node(ptr noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr @concealment_head, align 8, !tbaa !148 ; 2 uses
  %i.b = icmp eq ptr %0, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146
  store ptr %i.d, ptr @concealment_head, align 8, !tbaa !148
  %i.e = load ptr, ptr @concealment_end, align 8, !tbaa !148 ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  store ptr %i.h, ptr @concealment_end, align 8, !tbaa !148
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef %0) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @delete_list(ptr noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr @concealment_head, align 8, !tbaa !148 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %i.a
  br i1 %i.c, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @concealment_head, align 8, !tbaa !148
  br label %.loopexit14

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0 = phi ptr [ %i.e, %.preheader ], [ %i.a, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146  ; 2 uses
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %.loopexit14, label %.preheader, !llvm.loop !149

.loopexit14:                                      ; preds = %.preheader, %bb.c
  %storemerge = phi ptr [ null, %bb.c ], [ %.0, %.preheader ]
  store ptr %storemerge, ptr @concealment_end, align 8, !tbaa !148
  %.not1315 = icmp eq ptr %0, null
  br i1 %.not1315, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit14, %.lr.ph
  %.0916 = phi ptr [ %i.g, %.lr.ph ], [ %0, %.loopexit14 ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0916, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146  ; 2 uses
  tail call void @free(ptr noundef nonnull %.0916) #23
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %.loopexit, label %.lr.ph, !llvm.loop !150

.loopexit:                                        ; preds = %.lr.ph, %.loopexit14, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @conceal_non_ref_pics(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !151
  %i.d = zext i32 %i.c to i64
  tail call void @qsort(ptr noundef nonnull @pocs_in_dpb, i64 noundef %i.d, i64 noundef 4, ptr noundef nonnull @comp) #23
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !151 ; 2 uses
  %.not = icmp eq i32 %i.e, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i32 [ %i.cl, %bb.r ], [ %i.e, %bb.b ]
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @pocs_in_dpb, i64 %indvars.iv.next
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @pocs_in_dpb, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = sub nsw i32 %i.h, %i.j
  %1 = load ptr, ptr @img, align 8, !tbaa !14     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 6064
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.r

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !85
  %i.w = tail call ptr @alloc_storable_picture(i32 noundef 0, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v) #23 ; 3 uses
  %i.x = load i32, ptr %i.i, align 4, !tbaa !4    ; 2 uses
  %i.y = load ptr, ptr @img, align 8, !tbaa !14   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6064
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !76  ; 2 uses
  %i.ab = add nsw i32 %i.aa, %i.x                 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 6072 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !78
  %i.ae = icmp sgt i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ag = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %i.ah = shufflevector <4 x i32> %i.ag, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ah, ptr %i.af, align 4, !tbaa !4
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 6068
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !139
  switch i32 %i.ak, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = add nsw i32 %i.ab, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i32 [ %i.x, %bb.e ], [ %i.al, %bb.f ], [ 0, %bb.d ]
  %i.am = load ptr, ptr @dpb, align 8             ; 4 uses
  %i.an = zext i32 %i.ai to i64                   ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %i.an, %bb.g ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.ao = icmp sgt i32 %indvars.i, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = and i64 %indvars.iv.next.i, 2147483647
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load i32, ptr %i.as, align 8, !tbaa !141
  %i.au = icmp eq i32 %i.at, %.0.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.au, label %get_pic_from_dpb.exit, label %bb.h, !llvm.loop !140

get_pic_from_dpb.exit:                            ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103 ; 2 uses
  %i.ax = add nuw i32 %indvars.i, 1               ; 3 uses
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 316824
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !88
  %i.ba = add i32 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 6076
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !121
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8 ; 3 uses
  %wide.trip.count.i = zext i32 %i.ax to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bd = add nsw i64 %i.an, -1
  %i.be = icmp eq i64 %indvar, %i.bd
  br i1 %i.be, label %.epil.preheader, label %get_pic_from_dpb.exit.new

get_pic_from_dpb.exit.new:                        ; preds = %get_pic_from_dpb.exit
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %get_pic_from_dpb.exit.new
  %indvars.iv.i25 = phi i64 [ 0, %get_pic_from_dpb.exit.new ], [ %indvars.iv.next.i26.1, %bb.m ] ; 3 uses
  %.07.i = phi i32 [ 0, %get_pic_from_dpb.exit.new ], [ %.1.i.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %get_pic_from_dpb.exit.new ], [ %niter.next.1, %bb.m ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i25
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !100 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !110
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = add i32 %.07.i, 1
  %i.bk = zext i32 %.07.i to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  store ptr %i.bg, ptr %i.bl, align 8, !tbaa !100
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i = phi i32 [ %i.bj, %bb.j ], [ %.07.i, %bb.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !100 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !110
  %.not.i.1 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = add i32 %.1.i, 1
  %i.bs = zext i32 %.1.i to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bs
  store ptr %i.bo, ptr %i.bt, align 8, !tbaa !100
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i.1 = phi i32 [ %i.br, %bb.l ], [ %.1.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i26.1 = add nuw nsw i64 %indvars.iv.i25, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %update_ref_list_for_concealment.exit.unr-lcssa, label %bb.i, !llvm.loop !111

update_ref_list_for_concealment.exit.unr-lcssa:   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %update_ref_list_for_concealment.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %update_ref_list_for_concealment.exit.unr-lcssa, %get_pic_from_dpb.exit
  %indvars.iv.i25.epil.init = phi i64 [ 0, %get_pic_from_dpb.exit ], [ %indvars.iv.next.i26.1, %update_ref_list_for_concealment.exit.unr-lcssa ]
  %.07.i.epil.init = phi i32 [ 0, %get_pic_from_dpb.exit ], [ %.1.i.1, %update_ref_list_for_concealment.exit.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i25.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !100 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !110
  %.not.i.epil = icmp eq i32 %i.bx, 0
  br i1 %.not.i.epil, label %update_ref_list_for_concealment.exit, label %bb.n

bb.n:                                             ; preds = %.epil.preheader
  %i.by = zext i32 %.07.i.epil.init to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.by
  store ptr %i.bv, ptr %i.bz, align 8, !tbaa !100
  br label %update_ref_list_for_concealment.exit

update_ref_list_for_concealment.exit:             ; preds = %.epil.preheader, %bb.n, %update_ref_list_for_concealment.exit.unr-lcssa
  %i.ca = load ptr, ptr @active_pps, align 8, !tbaa !112
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1112
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !113
  store i32 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !115
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 6084
  store i32 1, ptr %i.cd, align 4, !tbaa !106
  tail call fastcc void @copy_to_conceal(ptr noundef %i.aw, ptr noundef %i.w, ptr noundef %i.y)
  %i.ce = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 6 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %init_node.exit, label %bb.o

bb.o:                                             ; preds = %update_ref_list_for_concealment.exit
  store ptr %i.w, ptr %i.ce, align 8, !tbaa !142
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %i.ab, ptr %i.cg, align 8, !tbaa !145
  br label %init_node.exit

init_node.exit:                                   ; preds = %update_ref_list_for_concealment.exit, %bb.o
  %i.ch = load ptr, ptr @concealment_head, align 8, !tbaa !148
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %init_node.exit
  store ptr %i.ce, ptr @concealment_head, align 8, !tbaa !148
  br label %add_node.exit

bb.q:                                             ; preds = %init_node.exit
  %i.cj = load ptr, ptr @concealment_end, align 8, !tbaa !148
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.ce, ptr %i.ck, align 8, !tbaa !146
  br label %add_node.exit

add_node.exit:                                    ; preds = %bb.p, %bb.q
  store ptr %i.ce, ptr @concealment_end, align 8, !tbaa !148
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %add_node.exit, %bb.c
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !151 ; 2 uses
  %i.cm = sub i32 %i.cl, %0
  %i.cn = zext i32 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.r, %bb.b
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_to_conceal(ptr noundef initializes((317024, 317028), (317040, 317044)) %0, ptr nofree noundef captures(none) initializes((316912, 316916), (317024, 317076), (317084, 317088)) %1, ptr noundef initializes((4, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x [4 x i32]], align 16         ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316912 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 316912 ; 3 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !154
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 6084 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !106  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 317024
  store i32 %i.g, ptr %i.h, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 317024 ; 2 uses
  store i32 %i.g, ptr %i.i, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 317028
  store i32 0, ptr %i.j, align 4, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 317032
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 317032
  %i.m = load <2 x i32>, ptr %i.k, align 8, !tbaa !4
  store <2 x i32> %i.m, ptr %i.l, align 8, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 317040
  store i32 0, ptr %i.n, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 317040
  store i32 0, ptr %i.o, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 317044 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 317044
  %i.r = load <4 x i32>, ptr %i.p, align 4, !tbaa !4
  %i.s = load i32, ptr %i.p, align 4, !tbaa !63
  store <4 x i32> %i.r, ptr %i.q, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 317060
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 317060
  %i.v = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  store <4 x i32> %i.v, ptr %i.u, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 317084
  %i.x = load i32, ptr %i.w, align 4, !tbaa !155
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 317084
  store i32 %i.x, ptr %i.y, align 4, !tbaa !155
  store ptr %0, ptr @dec_picture, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 6068
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !139
  switch i32 %i.aa, label %CopyImgData.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 316908
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !156
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 316908
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !156
  store i32 %i.d, ptr %i.e, align 8, !tbaa !154
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 316920
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 316928
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 316920
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 316928
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !82 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !83 ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = icmp sgt i32 %i.an, 0
  %or.cond.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i, label %.preheader33.preheader.i, label %.preheader32.i

.preheader33.preheader.i:                         ; preds = %bb.b
  %wide.trip.count44.i = zext nneg i32 %i.ap to i64
  %wide.trip.count.i = zext nneg i32 %i.an to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  %min.iters.check220 = icmp ult i32 %i.an, 16
  %n.mod.vf = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec223 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n227 = icmp eq i64 %n.vec223, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader33.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.preheader33.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv41.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60 ; 8 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv41.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60 ; 8 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = ptrtoaddr ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %diff.check = icmp ult i64 %i.ay, 32
  %or.cond270 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond270, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check220, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <8 x i16>, ptr %i.az, align 2, !tbaa !61
  %wide.load221 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !61
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <8 x i16> %wide.load, ptr %i.bb, align 2, !tbaa !61
  store <8 x i16> %wide.load221, ptr %i.bc, align 2, !tbaa !61
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index224 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index224
  %wide.load225 = load <4 x i16>, ptr %i.be, align 2, !tbaa !61
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index224
  store <4 x i16> %wide.load225, ptr %i.bf, align 2, !tbaa !61
  %index.next226 = add nuw i64 %index224, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next226, %n.vec223
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !158

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n227, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec223, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i.prol
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !61
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.i.prol
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !61
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !159

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge.i, label %vec.epilog.scalar.ph

.preheader32.i:                                   ; preds = %._crit_edge.i, %bb.b
  %i.bm = icmp sgt i32 %i.ap, 1
  %i.bn = icmp sgt i32 %i.an, 1
  %or.cond157 = and i1 %i.bn, %i.bm
  br i1 %or.cond157, label %.preheader.lr.ph.split.i, label %CopyImgData.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader32.i
  %i.bo = lshr i32 %i.ap, 1
  %i.bp = lshr i32 %i.an, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !65
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !65
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !65
  %wide.trip.count54.i = zext nneg i32 %i.bo to i64
  %wide.trip.count49.i = zext nneg i32 %i.bp to i64 ; 8 uses
  %min.iters.check237 = icmp ult i32 %i.an, 8
  %min.iters.check239 = icmp ult i32 %i.an, 32
  %n.mod.vf241 = and i64 %wide.trip.count49.i, 12
  %n.vec242 = and i64 %wide.trip.count49.i, 1073741808 ; 4 uses
  %cmp.n251 = icmp eq i64 %n.vec242, %wide.trip.count49.i
  %min.epilog.iters.check256 = icmp eq i64 %n.mod.vf241, 0
  %n.vec259 = and i64 %wide.trip.count49.i, 1073741820 ; 3 uses
  %cmp.n266 = icmp eq i64 %n.vec259, %wide.trip.count49.i
  %xtraiter271 = and i64 %wide.trip.count49.i, 1
end_hunk_0
