inline.NumInlined: 38
inline.NumDeleted: 15
begin_hunk_0_@onas_ht_remove:bb.a

bb.p:                                             ; preds = %bb.l
  %.not.i29 = icmp eq ptr %i.bt, null
  br i1 %.not.i29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.038.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %i.bt, ptr %i.by, align 8, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.038.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.k
  %i.ca = load i32, ptr %i.ac, align 8, !tbaa !20
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr %i.ac, align 8, !tbaa !20
  br label %onas_bucket_remove.exit

onas_bucket_remove.exit:                          ; preds = %bb.g, %bb.s
  %.033.i = phi i32 [ 0, %bb.s ], [ 3, %bb.g ]    ; 2 uses
  %.not25 = icmp eq ptr %3, null
  br i1 %.not25, label %onas_ht_get.exit.thread, label %bb.t

bb.t:                                             ; preds = %onas_bucket_remove.exit
  store ptr %.038.i, ptr %3, align 8, !tbaa !51
  br label %onas_ht_get.exit.thread

onas_ht_get.exit.thread:                          ; preds = %bb.e, %bb.d, %bb.c, %onas_hash.exit.i, %bb.t, %onas_bucket_remove.exit, %onas_hash.exit, %bb.a
  %.2 = phi i32 [ 2, %bb.a ], [ 3, %onas_hash.exit ], [ %.033.i, %onas_bucket_remove.exit ], [ %.033.i, %bb.t ], [ 3, %bb.d ], [ 3, %onas_hash.exit.i ], [ 3, %bb.c ], [ 3, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @onas_free_dirlist(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %onas_free_listnode.exit

onas_free_listnode.exit:                          ; preds = %bb.a, %onas_free_listnode.exit
  %.09 = phi ptr [ %i.b, %onas_free_listnode.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.09, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %.09, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.c) #22
  tail call void @free(ptr noundef nonnull %.09) #22
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %.loopexit, label %onas_free_listnode.exit

.loopexit:                                        ; preds = %onas_free_listnode.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @onas_free_listnode(ptr noundef captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.b) #22
  tail call void @free(ptr noundef nonnull %0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 3) i32 @onas_add_listnode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !33
  store ptr %1, ptr %i.c, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 35) i32 @onas_rm_listnode(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %.not34 = icmp eq ptr %i.e, null
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %i.f = phi ptr [ %i.q, %bb.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str) #22 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #23
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %1, i64 %i.c)
  %.not27 = icmp eq i32 %bcmp, 0
  br i1 %.not27, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 3 uses
  %.not28 = icmp eq ptr %i.m, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !52 ; 3 uses
  br i1 %.not28, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.pre, ptr %i.n, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %.not29 = icmp eq ptr %.pre, null
  br i1 %.not29, label %onas_free_listnode.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !33
  br label %onas_free_listnode.exit

onas_free_listnode.exit:                          ; preds = %bb.h, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  tail call void @free(ptr noundef nonnull %i.g) #22
  tail call void @free(ptr noundef nonnull %i.f) #22
  br label %.loopexit

bb.i:                                             ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.i, %bb.b, %bb.c, %onas_free_listnode.exit, %bb.a
  %.1 = phi i32 [ 2, %bb.a ], [ 34, %bb.c ], [ 0, %onas_free_listnode.exit ], [ 34, %bb.b ], [ 34, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @logg(i32 noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @onas_ht_rm_child(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not24.not28.not34 = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %2, 0
  %or.cond3.not25.not31 = or i1 %or.cond.not24.not28.not34, %i.c
  %i.d = icmp eq ptr %3, null
  %or.cond5.not29 = or i1 %or.cond3.not25.not31, %i.d
  %i.e = icmp ult i64 %4, 2
  %or.cond7 = or i1 %or.cond5.not29, %i.e
  br i1 %or.cond7, label %onas_ht_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %4 to i32
  %i.g = add i32 %i.f, -2                         ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.lr.ph.preheader.i, label %onas_get_dirname_idx.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %5 = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %5, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !43
  %.not.i = icmp eq i8 %i.j, 47
  br i1 %.not.i, label %.critedge.loopexit.split.loop.exit21.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.k = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.k, label %.lr.ph.i, label %onas_get_dirname_idx.exit

.critedge.loopexit.split.loop.exit21.i:           ; preds = %.lr.ph.i
  %6 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %onas_get_dirname_idx.exit

onas_get_dirname_idx.exit:                        ; preds = %bb.c, %bb.b, %.critedge.loopexit.split.loop.exit21.i
  %.0.lcssa.i = phi i32 [ %i.g, %bb.b ], [ %6, %.critedge.loopexit.split.loop.exit21.i ], [ -1, %bb.c ] ; 2 uses
  %i.l = sext i32 %.0.lcssa.i to i64
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43
  %i.o = icmp eq i8 %i.n, 47
  %i.p = zext i1 %i.o to i32
  %.012.i = add nsw i32 %.0.lcssa.i, %i.p         ; 2 uses
  %i.q = icmp slt i32 %.012.i, 1
  br i1 %i.q, label %onas_ht_get.exit.thread, label %bb.d

bb.d:                                             ; preds = %onas_get_dirname_idx.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %i.u = phi i64 [ %i.ak, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.011.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.0810.i.i = phi i32 [ %i.ai, %.lr.ph.i.i ], [ 1, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !43
  %i.x = sext i8 %i.w to i32
  %i.y = add i32 %.0810.i.i, %i.x
  %i.z = xor i32 %i.y, -1
  %i.aa = mul i32 %i.z, 32769                     ; 2 uses
  %i.ab = lshr i32 %i.aa, 12
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = mul i32 %i.ac, 5                        ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = xor i32 %i.ae, %i.ad
  %i.ag = mul i32 %i.af, 18441                    ; 2 uses
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = xor i32 %i.ah, %i.ag                    ; 2 uses
  %i.aj = add i32 %.011.i.i, 1                    ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp ugt i64 %2, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %onas_hash.exit.i

onas_hash.exit.i:                                 ; preds = %.lr.ph.i.i
  %i.am = add i32 %i.t, -1
  %i.an = and i32 %i.ai, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 3 uses
  %.not31.i = icmp eq ptr %i.aq, null
  br i1 %.not31.i, label %onas_ht_get.exit.thread, label %bb.e

bb.e:                                             ; preds = %onas_hash.exit.i
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !20
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %onas_ht_get.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.036.i = load ptr, ptr %i.at, align 8, !tbaa !51 ; 2 uses
  %.not3237.i = icmp eq ptr %.036.i, null
  br i1 %.not3237.i, label %onas_ht_get.exit.thread, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.f, %bb.g
  %.038.i = phi ptr [ %.0.i, %bb.g ], [ %.036.i, %bb.f ] ; 3 uses
  %i.au = load ptr, ptr %.038.i, align 8, !tbaa !41
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull readonly dereferenceable(1) %1) #23
  %.not33.i = icmp eq i32 %i.av, 0
  br i1 %.not33.i, label %onas_ht_get.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i37
  %i.aw = getelementptr inbounds nuw i8, ptr %.038.i, i64 24
  %.0.i = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %.not32.i = icmp eq ptr %.0.i, null
  br i1 %.not32.i, label %onas_ht_get.exit.thread, label %.lr.ph.i37

onas_ht_get.exit:                                 ; preds = %.lr.ph.i37
  %i.ax = getelementptr inbounds nuw i8, ptr %.038.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bb = zext nneg i32 %.012.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bd = tail call i32 @onas_rm_listnode(ptr noundef %i.ba, ptr noundef nonnull %i.bc)
  %.not35 = icmp eq i32 %i.bd, 0
  %. = select i1 %.not35, i32 0, i32 3
  br label %onas_ht_get.exit.thread

onas_ht_get.exit.thread:                          ; preds = %bb.g, %bb.e, %onas_hash.exit.i, %bb.f, %onas_get_dirname_idx.exit, %onas_ht_get.exit, %bb.a
  %.1 = phi i32 [ 2, %bb.a ], [ %., %onas_ht_get.exit ], [ 0, %onas_get_dirname_idx.exit ], [ 3, %bb.f ], [ 3, %onas_hash.exit.i ], [ 3, %bb.e ], [ 3, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 21) i32 @onas_ht_add_child(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not24.not28.not34 = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %2, 0
  %or.cond3.not25.not31 = or i1 %or.cond.not24.not28.not34, %i.c
  %i.d = icmp eq ptr %3, null
  %or.cond5.not29 = or i1 %or.cond3.not25.not31, %i.d
  %i.e = icmp ult i64 %4, 2
  %or.cond7 = or i1 %or.cond5.not29, %i.e
  br i1 %or.cond7, label %onas_add_hashnode_child.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %4 to i32
  %i.g = add i32 %i.f, -2                         ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.lr.ph.preheader.i, label %onas_get_dirname_idx.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %5 = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %5, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !43
  %.not.i = icmp eq i8 %i.j, 47
  br i1 %.not.i, label %.critedge.loopexit.split.loop.exit21.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.k = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.k, label %.lr.ph.i, label %onas_get_dirname_idx.exit

.critedge.loopexit.split.loop.exit21.i:           ; preds = %.lr.ph.i
  %6 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %onas_get_dirname_idx.exit

onas_get_dirname_idx.exit:                        ; preds = %bb.c, %bb.b, %.critedge.loopexit.split.loop.exit21.i
  %.0.lcssa.i = phi i32 [ %i.g, %bb.b ], [ %6, %.critedge.loopexit.split.loop.exit21.i ], [ -1, %bb.c ] ; 2 uses
  %i.l = sext i32 %.0.lcssa.i to i64
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43
  %i.o = icmp eq i8 %i.n, 47
  %i.p = zext i1 %i.o to i32
  %.012.i = add nsw i32 %.0.lcssa.i, %i.p         ; 2 uses
  %i.q = icmp slt i32 %.012.i, 1
  br i1 %i.q, label %onas_add_hashnode_child.exit, label %bb.d

bb.d:                                             ; preds = %onas_get_dirname_idx.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %i.u = phi i64 [ %i.ak, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.011.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.0810.i.i = phi i32 [ %i.ai, %.lr.ph.i.i ], [ 1, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !43
  %i.x = sext i8 %i.w to i32
  %i.y = add i32 %.0810.i.i, %i.x
  %i.z = xor i32 %i.y, -1
  %i.aa = mul i32 %i.z, 32769                     ; 2 uses
  %i.ab = lshr i32 %i.aa, 12
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = mul i32 %i.ac, 5                        ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = xor i32 %i.ae, %i.ad
  %i.ag = mul i32 %i.af, 18441                    ; 2 uses
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = xor i32 %i.ah, %i.ag                    ; 2 uses
  %i.aj = add i32 %.011.i.i, 1                    ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp ugt i64 %2, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %onas_hash.exit.i

onas_hash.exit.i:                                 ; preds = %.lr.ph.i.i
  %i.am = add i32 %i.t, -1
  %i.an = and i32 %i.ai, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 3 uses
  %.not31.i = icmp eq ptr %i.aq, null
  br i1 %.not31.i, label %onas_add_hashnode_child.exit, label %bb.e

bb.e:                                             ; preds = %onas_hash.exit.i
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !20
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %onas_add_hashnode_child.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.036.i = load ptr, ptr %i.at, align 8, !tbaa !51 ; 2 uses
  %.not3237.i = icmp eq ptr %.036.i, null
  br i1 %.not3237.i, label %onas_add_hashnode_child.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.f, %bb.g
  %.038.i = phi ptr [ %.0.i, %bb.g ], [ %.036.i, %bb.f ] ; 3 uses
  %i.au = load ptr, ptr %.038.i, align 8, !tbaa !41
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull readonly dereferenceable(1) %1) #23
  %.not33.i = icmp eq i32 %i.av, 0
  br i1 %.not33.i, label %onas_ht_get.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i36
  %i.aw = getelementptr inbounds nuw i8, ptr %.038.i, i64 24
  %.0.i = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %.not32.i = icmp eq ptr %.0.i, null
  br i1 %.not32.i, label %onas_add_hashnode_child.exit, label %.lr.ph.i36

onas_ht_get.exit:                                 ; preds = %.lr.ph.i36
  %i.ax = getelementptr inbounds nuw i8, ptr %.038.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.az = zext nneg i32 %.012.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %i.az ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %onas_add_hashnode_child.exit, label %bb.h

bb.h:                                             ; preds = %onas_ht_get.exit
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 6 uses
  %.not.i39 = icmp eq ptr %calloc.i.i, null
  br i1 %.not.i39, label %onas_add_hashnode_child.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ba) #23
  %i.bc = tail call noalias ptr @strndup(ptr noundef nonnull readonly %i.ba, i64 noundef %i.bb) #22
  store ptr %i.bc, ptr %calloc.i.i, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !53 ; 3 uses
  %.not13.i = icmp eq ptr %i.be, null
  br i1 %.not13.i, label %onas_add_hashnode_child.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %calloc.i.i, ptr %i.bh, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %i.be, ptr %i.bj, align 8, !tbaa !33
  store ptr %calloc.i.i, ptr %i.bf, align 8, !tbaa !52
  br label %onas_add_hashnode_child.exit

onas_add_hashnode_child.exit:                     ; preds = %bb.g, %bb.e, %onas_hash.exit.i, %bb.f, %onas_get_dirname_idx.exit, %onas_ht_get.exit, %bb.h, %bb.i, %bb.j, %bb.a
  %.1 = phi i32 [ 2, %bb.a ], [ 0, %bb.j ], [ 0, %onas_get_dirname_idx.exit ], [ 2, %onas_ht_get.exit ], [ 20, %bb.h ], [ 0, %bb.i ], [ 3, %bb.f ], [ 3, %onas_hash.exit.i ], [ 3, %bb.e ], [ 3, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 21) i32 @onas_ht_add_hierarchy(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 3 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %onas_get_parent.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %i.d to i32
  %i.g = add i32 %i.f, -2                         ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %2 = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %2, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !43
  %.not.i = icmp eq i8 %i.j, 47
  br i1 %.not.i, label %.critedge.loopexit.split.loop.exit27.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.k = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.k, label %.lr.ph.i, label %.critedge.i

.critedge.loopexit.split.loop.exit27.i:           ; preds = %.lr.ph.i
  %3 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.critedge.loopexit.split.loop.exit27.i, %bb.c
  %.0.lcssa.i = phi i32 [ %i.g, %bb.c ], [ %3, %.critedge.loopexit.split.loop.exit27.i ], [ -1, %bb.d ]
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.0.lcssa.i, i32 1)
  %i.l = sext i32 %spec.select.i to i64
  %i.m = tail call noalias ptr @strndup(ptr noundef nonnull readonly %1, i64 noundef %i.l) #22 ; 4 uses
  %.not19.i = icmp eq ptr %i.m, null
  br i1 %.not19.i, label %bb.e, label %onas_get_parent.exit

bb.e:                                             ; preds = %.critedge.i
  %i.n = tail call ptr @__errno_location() #24
  store i32 12, ptr %i.n, align 4, !tbaa !12
  br label %onas_get_parent.exit.thread

onas_get_parent.exit:                             ; preds = %.critedge.i
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #23
  %i.p = tail call i32 @onas_ht_add_child(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef %i.o, ptr noundef nonnull %1, i64 noundef %i.d) ; 0 uses
  br label %onas_get_parent.exit.thread

onas_get_parent.exit.thread:                      ; preds = %bb.e, %bb.b, %onas_get_parent.exit
  %.115.i100 = phi ptr [ %i.m, %onas_get_parent.exit ], [ null, %bb.b ], [ null, %bb.e ]
  tail call void @free(ptr noundef %.115.i100) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %1, ptr %i.a, align 16, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !38
  %i.r = call ptr @fts_open(ptr noundef nonnull %i.a, i32 noundef 80, ptr noundef null) #22 ; 5 uses
  %.not65 = icmp eq ptr %i.r, null
  br i1 %.not65, label %.thread108, label %.preheader116

.preheader116:                                    ; preds = %onas_get_parent.exit.thread
  %i.s = call ptr @fts_read(ptr noundef nonnull %i.r) #22 ; 2 uses
  %.not66139 = icmp eq ptr %i.s, null
  br i1 %.not66139, label %.thread111, label %.lr.ph

.thread108:                                       ; preds = %onas_get_parent.exit.thread
  %i.t = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #22 ; 0 uses
  br label %bb.w

.lr.ph:                                           ; preds = %.preheader116, %bb.v
  %i.u = phi ptr [ %i.cn, %bb.v ], [ %i.s, %.preheader116 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 98
  %i.w = load i16, ptr %i.v, align 2, !tbaa !54
  %cond = icmp eq i16 %i.w, 1
  br i1 %cond, label %bb.f, label %bb.v

bb.f:                                             ; preds = %.lr.ph
  %calloc.i = call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) ; 19 uses
  %.not.i74 = icmp eq ptr %calloc.i, null
  br i1 %.not.i74, label %.thread111, label %bb.g

bb.g:                                             ; preds = %bb.f
  %calloc.i.i = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store ptr %calloc.i.i, ptr %i.x, align 8, !tbaa !30
  %.not13.i = icmp eq ptr %calloc.i.i, null
  br i1 %.not13.i, label %onas_free_hashnode.exit.i, label %bb.h

onas_free_hashnode.exit.i:                        ; preds = %bb.g
  call void @free(ptr noundef nonnull %calloc.i) #22
  br label %.thread111

bb.h:                                             ; preds = %bb.g
  %calloc.i15.i = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40 ; 2 uses
  store ptr %calloc.i15.i, ptr %i.y, align 8, !tbaa !53
  %.not14.i = icmp eq ptr %calloc.i15.i, null
  br i1 %.not14.i, label %onas_free_listnode.exit.i.i18.i.preheader, label %bb.i

onas_free_listnode.exit.i.i18.i.preheader:        ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  br label %onas_free_listnode.exit.i.i18.i

onas_free_listnode.exit.i.i18.i:                  ; preds = %onas_free_listnode.exit.i.i18.i.preheader, %onas_free_listnode.exit.i.i18.i
  %.09.i.i19.i = phi ptr [ %i.ab, %onas_free_listnode.exit.i.i18.i ], [ %calloc.i.i, %onas_free_listnode.exit.i.i18.i.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i19.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %.09.i.i19.i, align 8, !tbaa !35
  call void @free(ptr noundef %i.ac) #22
  call void @free(ptr noundef nonnull %.09.i.i19.i) #22
  %.not8.i.i20.i = icmp eq ptr %i.ab, null
  br i1 %.not8.i.i20.i, label %onas_free_hashnode.exit22.i, label %onas_free_listnode.exit.i.i18.i

onas_free_hashnode.exit22.i:                      ; preds = %onas_free_listnode.exit.i.i18.i
  store ptr null, ptr %i.z, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36
  call void @free(ptr noundef %i.ae) #22
  store ptr null, ptr %i.ad, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  call void @free(ptr noundef %i.ag) #22
  call void @free(ptr noundef nonnull %calloc.i) #22
  br label %.thread111

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %calloc.i15.i, ptr %i.ah, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %calloc.i15.i, i64 16
  store ptr %calloc.i.i, ptr %i.ai, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !59 ; 3 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  store i32 %i.al, ptr %calloc.i, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.ao = zext i16 %i.ak to i64
  %i.ap = call noalias ptr @strndup(ptr noundef %i.an, i64 noundef %i.ao) #22 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8 ; 6 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !36
  %i.ar = icmp eq ptr %i.ap, null
  %i.as = icmp ult i16 %i.ak, 2
  %or.cond.i75 = or i1 %i.as, %i.ar
  br i1 %or.cond.i75, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i32 %i.al, -2
  %4 = zext nneg i32 %i.at to i64
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %bb.k, %bb.j
  %indvars.iv.i83 = phi i64 [ %4, %bb.j ], [ %indvars.iv.next.i85, %bb.k ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i83
  %i.av = load i8, ptr %i.au, align 1, !tbaa !43
  %.not.i83 = icmp eq i8 %i.av, 47
  br i1 %.not.i83, label %.critedge.loopexit.split.loop.exit27.i86, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i81
  %indvars.iv.next.i85 = add nsw i64 %indvars.iv.i83, -1
  %i.aw = icmp sgt i64 %indvars.iv.i83, 0
  br i1 %i.aw, label %.lr.ph.i81, label %.critedge.i76

.critedge.loopexit.split.loop.exit27.i86:         ; preds = %.lr.ph.i81
  %5 = trunc nuw nsw i64 %indvars.iv.i83 to i32
  %6 = call i32 @llvm.umax.i32(i32 %5, i32 1)
  %7 = sext i32 %6 to i64
  br label %.critedge.i76

.critedge.i76:                                    ; preds = %bb.k, %.critedge.loopexit.split.loop.exit27.i86
  %.0.lcssa.i77 = phi i64 [ %7, %.critedge.loopexit.split.loop.exit27.i86 ], [ -1, %bb.k ]
  %i.ax = call noalias ptr @strndup(ptr noundef nonnull readonly %i.ap, i64 noundef %.0.lcssa.i77) #22 ; 3 uses
  %.not19.i79 = icmp eq ptr %i.ax, null
  br i1 %.not19.i79, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge.i76
  %i.ay = tail call ptr @__errno_location() #24
  store i32 12, ptr %i.ay, align 4, !tbaa !12
  br label %bb.n

bb.m:                                             ; preds = %.critedge.i76
  %i.az = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24 ; 2 uses
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !37
  %i.ba = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #23
  %i.bb = trunc i64 %i.ba to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.i, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24 ; 2 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink = phi i32 [ %i.bb, %bb.m ], [ 0, %bb.n ]
  %i.bd = phi ptr [ %i.az, %bb.m ], [ %i.bc, %bb.n ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %.sink, ptr %i.be, align 8, !tbaa !62
  %i.bf = call ptr @fts_children(ptr noundef nonnull %i.r, i32 noundef 0) #22 ; 2 uses
  %.not69 = icmp eq ptr %i.bf, null
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o, %onas_add_hashnode_child.exit.thread
  %.050 = phi ptr [ %i.ca, %onas_add_hashnode_child.exit.thread ], [ %i.bf, %bb.o ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.050, i64 98
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !54
  %i.bi = icmp eq i16 %i.bh, 1
  br i1 %i.bi, label %bb.p, label %onas_add_hashnode_child.exit.thread

bb.p:                                             ; preds = %.preheader
  %calloc.i.i86 = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 6 uses
  %.not.i87 = icmp eq ptr %calloc.i.i86, null
  br i1 %.not.i87, label %onas_add_hashnode_child.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %.050, i64 112 ; 2 uses
  %i.bk = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bj) #23
  %i.bl = call noalias ptr @strndup(ptr noundef nonnull readonly %i.bj, i64 noundef %i.bk) #22
  store ptr %i.bl, ptr %calloc.i.i86, align 8, !tbaa !35
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !53  ; 3 uses
  %.not13.i88 = icmp eq ptr %i.bm, null
  br i1 %.not13.i88, label %onas_add_hashnode_child.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %calloc.i.i86, ptr %i.bp, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %calloc.i.i86, i64 16
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %calloc.i.i86, i64 8
  store ptr %i.bm, ptr %i.br, align 8, !tbaa !33
  store ptr %calloc.i.i86, ptr %i.bn, align 8, !tbaa !52
  br label %onas_add_hashnode_child.exit.thread

onas_add_hashnode_child.exit:                     ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %onas_free_hashnode.exit, label %onas_free_listnode.exit.i.i

onas_free_listnode.exit.i.i:                      ; preds = %onas_add_hashnode_child.exit, %onas_free_listnode.exit.i.i
  %.09.i.i = phi ptr [ %i.bv, %onas_free_listnode.exit.i.i ], [ %i.bt, %onas_add_hashnode_child.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bw = load ptr, ptr %.09.i.i, align 8, !tbaa !35
  call void @free(ptr noundef %i.bw) #22
  call void @free(ptr noundef nonnull %.09.i.i) #22
  %.not8.i.i = icmp eq ptr %i.bv, null
  br i1 %.not8.i.i, label %onas_free_hashnode.exit, label %onas_free_listnode.exit.i.i

onas_free_hashnode.exit:                          ; preds = %onas_free_listnode.exit.i.i, %onas_add_hashnode_child.exit
  store ptr null, ptr %i.bs, align 8, !tbaa !30
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !36
  call void @free(ptr noundef %i.bx) #22
  store ptr null, ptr %i.aq, align 8, !tbaa !36
  %i.by = load ptr, ptr %i.bd, align 8, !tbaa !37
  call void @free(ptr noundef %i.by) #22
  call void @free(ptr noundef nonnull %calloc.i) #22
  br label %.thread111

onas_add_hashnode_child.exit.thread:              ; preds = %bb.q, %bb.r, %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !63 ; 2 uses
  %.not70 = icmp eq ptr %i.ca, null
  br i1 %.not70, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %onas_add_hashnode_child.exit.thread, %bb.o
  %i.cb = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.cc = load i32, ptr %calloc.i, align 8, !tbaa !60
  %i.cd = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #20 ; 7 uses
  %.not.i90 = icmp eq ptr %i.cd, null
  br i1 %.not.i90, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.ce = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i92, label %onas_free_hashnode.exit97, label %onas_free_listnode.exit.i.i93

onas_free_listnode.exit.i.i93:                    ; preds = %bb.s, %onas_free_listnode.exit.i.i93
  %.09.i.i94 = phi ptr [ %i.ch, %onas_free_listnode.exit.i.i93 ], [ %i.cf, %bb.s ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i.i94, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !33 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.ci = load ptr, ptr %.09.i.i94, align 8, !tbaa !35
  call void @free(ptr noundef %i.ci) #22
  call void @free(ptr noundef nonnull %.09.i.i94) #22
  %.not8.i.i95 = icmp eq ptr %i.ch, null
  br i1 %.not8.i.i95, label %onas_free_hashnode.exit97.loopexit, label %onas_free_listnode.exit.i.i93

onas_free_hashnode.exit97.loopexit:               ; preds = %onas_free_listnode.exit.i.i93
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !36
  br label %onas_free_hashnode.exit97

onas_free_hashnode.exit97:                        ; preds = %onas_free_hashnode.exit97.loopexit, %bb.s
  %i.cj = phi ptr [ %.pre, %onas_free_hashnode.exit97.loopexit ], [ %i.cb, %bb.s ]
  store ptr null, ptr %i.ce, align 8, !tbaa !30
  call void @free(ptr noundef %i.cj) #22
  store ptr null, ptr %i.aq, align 8, !tbaa !36
  %i.ck = load ptr, ptr %i.bd, align 8, !tbaa !37
  call void @free(ptr noundef %i.ck) #22
  call void @free(ptr noundef nonnull %calloc.i) #22
  br label %.thread111

bb.t:                                             ; preds = %.loopexit
  %i.cl = sext i32 %i.cc to i64
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.cl, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !39
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %calloc.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.cm = call i32 @onas_ht_insert(ptr noundef nonnull %0, ptr noundef nonnull %i.cd)
  %.not72 = icmp eq i32 %i.cm, 0
  br i1 %.not72, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @onas_free_element(ptr noundef nonnull %i.cd)
  br label %.thread111

bb.v:                                             ; preds = %bb.t, %.lr.ph
  %i.cn = call ptr @fts_read(ptr noundef nonnull %i.r) #22 ; 2 uses
  %.not66 = icmp eq ptr %i.cn, null
  br i1 %.not66, label %.thread111, label %.lr.ph

.thread111:                                       ; preds = %bb.v, %bb.f, %.preheader116, %onas_free_hashnode.exit97, %bb.u, %onas_free_hashnode.exit, %onas_free_hashnode.exit22.i, %onas_free_hashnode.exit.i
  %.3113.a = phi i32 [ -1, %bb.u ], [ 20, %onas_free_hashnode.exit22.i ], [ 20, %onas_free_hashnode.exit ], [ 20, %onas_free_hashnode.exit.i ], [ 20, %onas_free_hashnode.exit97 ], [ 0, %.preheader116 ], [ 0, %bb.v ], [ 20, %bb.f ]
  %i.co = call i32 @fts_close(ptr noundef nonnull %i.r) #22 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.thread108, %.thread111
  %.3110 = phi i32 [ 3, %.thread108 ], [ %.3113.a, %.thread111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.w
  %.154 = phi i32 [ %.3110, %bb.w ], [ 2, %bb.a ]
  ret i32 %.154
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 0, 21) i32 @onas_ht_rm_hierarchy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not54 = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %2, 0
  %or.cond3 = or i1 %or.cond.not54, %i.c
  br i1 %or.cond3, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.b
  %i.g = phi i64 [ %i.w, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.011.i.i = phi i32 [ %i.v, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.0810.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ 1, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !43
  %i.j = sext i8 %i.i to i32
  %i.k = add i32 %.0810.i.i, %i.j
  %i.l = xor i32 %i.k, -1
  %i.m = mul i32 %i.l, 32769                      ; 2 uses
  %i.n = lshr i32 %i.m, 12
  %i.o = xor i32 %i.n, %i.m
  %i.p = mul i32 %i.o, 5                          ; 2 uses
  %i.q = lshr i32 %i.p, 4
  %i.r = xor i32 %i.q, %i.p
  %i.s = mul i32 %i.r, 18441                      ; 2 uses
  %i.t = lshr i32 %i.s, 16
  %i.u = xor i32 %i.t, %i.s                       ; 2 uses
  %i.v = add i32 %.011.i.i, 1                     ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp ugt i64 %2, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %onas_hash.exit.i

onas_hash.exit.i:                                 ; preds = %.lr.ph.i.i
  %i.y = add i32 %i.f, -1
  %i.z = and i32 %i.u, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %.not31.i = icmp eq ptr %i.ac, null
  br i1 %.not31.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %onas_hash.exit.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !20
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.036.i = load ptr, ptr %i.af, align 8, !tbaa !51 ; 2 uses
  %.not3237.i = icmp eq ptr %.036.i, null
  br i1 %.not3237.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.038.i = phi ptr [ %.0.i, %bb.e ], [ %.036.i, %bb.d ] ; 4 uses
  %i.ag = load ptr, ptr %.038.i, align 8, !tbaa !41
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull readonly dereferenceable(1) %1) #23
  %.not33.i = icmp eq i32 %i.ah, 0
  br i1 %.not33.i, label %onas_ht_get.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.038.i, i64 24
  %.0.i = load ptr, ptr %i.ai, align 8, !tbaa !51 ; 2 uses
  %.not32.i = icmp eq ptr %.0.i, null
  br i1 %.not32.i, label %.critedge, label %.lr.ph.i

onas_ht_get.exit:                                 ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.038.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = icmp eq i32 %3, 0
  br i1 %i.an, label %bb.f, label %bb.j

bb.f:                                             ; preds = %onas_ht_get.exit
  %i.ao = icmp ult i64 %2, 2
  br i1 %i.ao, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = trunc nuw i64 %2 to i32
  %i.aq = add i32 %i.ap, -2                       ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %.lr.ph.preheader.i, label %.critedge.i59

.lr.ph.preheader.i:                               ; preds = %bb.g
  %4 = zext nneg i32 %i.aq to i64
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %4, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !43
  %.not.i = icmp eq i8 %i.at, 47
  br i1 %.not.i, label %.critedge.loopexit.split.loop.exit27.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i60
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.au = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.au, label %.lr.ph.i60, label %.critedge.i59

.critedge.loopexit.split.loop.exit27.i:           ; preds = %.lr.ph.i60
  %5 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i59

.critedge.i59:                                    ; preds = %bb.h, %.critedge.loopexit.split.loop.exit27.i, %bb.g
  %.0.lcssa.i = phi i32 [ %i.aq, %bb.g ], [ %5, %.critedge.loopexit.split.loop.exit27.i ], [ -1, %bb.h ]
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.0.lcssa.i, i32 1)
  %i.av = sext i32 %spec.select.i to i64
  %i.aw = tail call noalias ptr @strndup(ptr noundef nonnull readonly %1, i64 noundef %i.av) #22 ; 4 uses
  %.not19.i = icmp eq ptr %i.aw, null
  br i1 %.not19.i, label %bb.i, label %onas_get_parent.exit

bb.i:                                             ; preds = %.critedge.i59
  %i.ax = tail call ptr @__errno_location() #24
  store i32 12, ptr %i.ax, align 4, !tbaa !12
  br label %.critedge

onas_get_parent.exit:                             ; preds = %.critedge.i59
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #23
  %i.az = tail call i32 @onas_ht_rm_child(ptr noundef nonnull %0, ptr noundef nonnull %i.aw, i64 noundef %i.ay, ptr noundef nonnull %1, i64 noundef %2)
  %.not56 = icmp eq i32 %i.az, 0
  tail call void @free(ptr noundef nonnull %i.aw) #22
  br i1 %.not56, label %bb.j, label %.critedge

bb.j:                                             ; preds = %onas_get_parent.exit, %onas_ht_get.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !53
  %.not5770 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not5770, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.be = add nuw nsw i64 %2, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bg = add nsw i32 %3, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.l
  %i.bh = phi ptr [ %i.bc, %.lr.ph ], [ %i.bu, %bb.l ] ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35 ; 2 uses
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #23
  %i.bk = add i64 %i.be, %i.bj                    ; 3 uses
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bk) #20 ; 4 uses
  %.not58 = icmp eq ptr %i.bl, null
  br i1 %.not58, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 %2
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !43
  %i.bq = icmp eq i8 %i.bp, 47
  %.str.2..str.3 = select i1 %i.bq, ptr @.str.2, ptr @.str.3
  %i.br = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bl, i64 noundef %i.bk, ptr noundef nonnull %.str.2..str.3, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bi) #22 ; 0 uses
  %i.bs = tail call i32 @onas_ht_rm_hierarchy(ptr noundef nonnull %0, ptr noundef nonnull %i.bl, i64 noundef %i.bk, i32 noundef %i.bg) ; 0 uses
  tail call void @free(ptr noundef nonnull %i.bl) #22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33 ; 2 uses
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !53
  %.not57 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not57, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.l, %bb.j
  %i.bw = tail call i32 @onas_ht_remove(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef null) ; 0 uses
  tail call void @onas_free_element(ptr noundef nonnull %.038.i)
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.k, %onas_get_parent.exit, %bb.i, %bb.f, %bb.c, %onas_hash.exit.i, %bb.d, %._crit_edge, %bb.a
  %.4 = phi i32 [ 2, %bb.a ], [ 3, %onas_get_parent.exit ], [ 20, %bb.k ], [ 3, %bb.i ], [ 0, %._crit_edge ], [ 3, %bb.d ], [ 3, %onas_hash.exit.i ], [ 3, %bb.c ], [ 3, %bb.f ], [ 3, %bb.e ]
  ret i32 %.4
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

declare ptr @fts_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

declare ptr @fts_read(ptr noundef) local_unnamed_addr #14

declare ptr @fts_children(ptr noundef, i32 noundef) local_unnamed_addr #14

declare i32 @fts_close(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS7onas_ht", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"onas_ht", !15, i64 0, !17, i64 8, !17, i64 16, !6, i64 24, !6, i64 28}
!15 = !{!"p2 _ZTS11onas_bucket", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 _ZTS11onas_bucket", !11, i64 0}
!18 = !{!14, !6, i64 24}
!19 = !{!17, !17, i64 0}
!20 = !{!21, !6, i64 0}
!21 = !{!"onas_bucket", !6, i64 0, !22, i64 8, !22, i64 16, !17, i64 24, !17, i64 32}
!22 = !{!"p1 _ZTS12onas_element", !11, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!25, !22, i64 24}
!25 = !{!"onas_element", !26, i64 0, !27, i64 8, !28, i64 16, !22, i64 24, !22, i64 32}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"p1 _ZTS10onas_hnode", !11, i64 0}
!29 = !{!25, !28, i64 16}
!30 = !{!31, !32, i64 32}
!31 = !{!"onas_hnode", !6, i64 0, !26, i64 8, !6, i64 16, !26, i64 24, !32, i64 32, !32, i64 40, !6, i64 48, !6, i64 52}
!32 = !{!"p1 _ZTS10onas_lnode", !11, i64 0}
!33 = !{!34, !32, i64 8}
!34 = !{!"onas_lnode", !26, i64 0, !32, i64 8, !32, i64 16}
!35 = !{!34, !26, i64 0}
!36 = !{!31, !26, i64 8}
!37 = !{!31, !26, i64 24}
!38 = !{!26, !26, i64 0}
!39 = !{!27, !27, i64 0}
!40 = !{!28, !28, i64 0}
!41 = !{!25, !26, i64 0}
!42 = !{!25, !27, i64 8}
!43 = !{!7, !7, i64 0}
!44 = !{!14, !6, i64 28}
!45 = !{!14, !17, i64 8}
!46 = !{!14, !17, i64 16}
!47 = !{!21, !17, i64 24}
!48 = !{!21, !17, i64 32}
!49 = !{!21, !22, i64 16}
!50 = !{!25, !22, i64 32}
!51 = !{!22, !22, i64 0}
!52 = !{!34, !32, i64 16}
!53 = !{!31, !32, i64 40}
!54 = !{!55, !57, i64 98}
!55 = !{!"_ftsent", !56, i64 0, !56, i64 8, !56, i64 16, !27, i64 24, !11, i64 32, !26, i64 40, !26, i64 48, !6, i64 56, !6, i64 60, !57, i64 64, !57, i64 66, !27, i64 72, !27, i64 80, !27, i64 88, !57, i64 96, !57, i64 98, !57, i64 100, !57, i64 102, !58, i64 104, !7, i64 112}
!56 = !{!"p1 _ZTS7_ftsent", !11, i64 0}
!57 = !{!"short", !7, i64 0}
!58 = !{!"p1 _ZTS4stat", !11, i64 0}
!59 = !{!55, !57, i64 64}
!60 = !{!31, !6, i64 0}
!61 = !{!55, !26, i64 48}
!62 = !{!31, !6, i64 16}
!63 = !{!55, !56, i64 16}
end_hunk_0
