inline.NumInlined: 71
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cache_tree:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @cache_tree_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.f = phi i32 [ %i.c, %.lr.ph ], [ %i.m, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cache_tree_free(ptr noundef nonnull %i.i)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.l) #18
  %.pre = load i32, ptr %i.b, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.q) #18
  tail call void @free(ptr noundef nonnull %i.a) #18
  store ptr null, ptr %0, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @cache_tree_subtree_pos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %i.e = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %subtree_name_cmp.exit, %bb.a
  %.024 = phi i32 [ %i.d, %bb.a ], [ %.125, %subtree_name_cmp.exit ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.a ], [ %.122, %subtree_name_cmp.exit ] ; 5 uses
  %i.f = icmp slt i32 %.021, %.024
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i32 %.024, %.021
  %i.h = lshr i32 %i.g, 1
  %i.i = add nuw nsw i32 %i.h, %.021              ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26   ; 2 uses
  %i.p = icmp slt i32 %2, %i.o
  br i1 %i.p, label %subtree_name_cmp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %i.o, %2
  br i1 %i.q, label %subtree_name_cmp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @memcmp(ptr noundef readonly %1, ptr noundef nonnull readonly %i.m, i64 noundef %i.e) #19
  br label %subtree_name_cmp.exit

subtree_name_cmp.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.r, %bb.e ], [ -1, %bb.c ], [ 1, %bb.d ] ; 2 uses
  %.not.not = icmp eq i32 %.0.i, 0
  %i.s = icmp slt i32 %.0.i, 0                    ; 2 uses
  %i.t = add nuw nsw i32 %i.i, 1
  %.125 = select i1 %i.s, i32 %i.i, i32 %.024
  %.122 = select i1 %i.s, i32 %.021, i32 %i.t
  br i1 %.not.not, label %.loopexit, label %bb.b, !llvm.loop !27

bb.f:                                             ; preds = %bb.b
  %i.u = xor i32 %.021, -1
  br label %.loopexit

.loopexit:                                        ; preds = %subtree_name_cmp.exit, %bb.f
  %.2 = phi i32 [ %i.u, %bb.f ], [ %i.i, %subtree_name_cmp.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cache_tree_sub(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call fastcc ptr @find_subtree(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.b, i32 noundef 1)
  ret ptr %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_subtree(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 4 uses
  %i.e = sext i32 %2 to i64                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %subtree_name_cmp.exit.i, %bb.a
  %.024.i = phi i32 [ %i.d, %bb.a ], [ %.125.i, %subtree_name_cmp.exit.i ] ; 3 uses
  %.021.i = phi i32 [ 0, %bb.a ], [ %.122.i, %subtree_name_cmp.exit.i ] ; 5 uses
  %i.f = icmp slt i32 %.021.i, %.024.i
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i32 %.024.i, %.021.i
  %i.h = lshr i32 %i.g, 1
  %i.i = add nuw nsw i32 %i.h, %.021.i            ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26   ; 2 uses
  %i.p = icmp slt i32 %2, %i.o
  br i1 %i.p, label %subtree_name_cmp.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %i.o, %2
  br i1 %i.q, label %subtree_name_cmp.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @memcmp(ptr noundef readonly %1, ptr noundef nonnull readonly %i.m, i64 noundef %i.e) #19
  br label %subtree_name_cmp.exit.i

subtree_name_cmp.exit.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.r, %bb.e ], [ -1, %bb.c ], [ 1, %bb.d ] ; 2 uses
  %.not.not.i = icmp eq i32 %.0.i.i, 0
  %i.s = icmp slt i32 %.0.i.i, 0                  ; 2 uses
  %i.t = add nuw nsw i32 %i.i, 1
  %.125.i = select i1 %i.s, i32 %i.i, i32 %.024.i
  %.122.i = select i1 %i.s, i32 %.021.i, i32 %i.t
  br i1 %.not.not.i, label %cache_tree_subtree_pos.exit, label %bb.b, !llvm.loop !27

bb.f:                                             ; preds = %bb.b
  %i.u = xor i32 %.021.i, -1
  br label %cache_tree_subtree_pos.exit

cache_tree_subtree_pos.exit:                      ; preds = %subtree_name_cmp.exit.i, %bb.f
  %.2.i = phi i32 [ %i.u, %bb.f ], [ %i.i, %subtree_name_cmp.exit.i ] ; 4 uses
  %i.v = icmp sgt i32 %.2.i, -1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %cache_tree_subtree_pos.exit
  %i.w = zext nneg i32 %.2.i to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  br label %bb.p

bb.h:                                             ; preds = %cache_tree_subtree_pos.exit
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = xor i32 %.2.i, -1                        ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28 ; 2 uses
  %.not46 = icmp slt i32 %i.d, %i.ab
  br i1 %.not46, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i32 %i.d, 1
  %i.ad = mul i32 %i.ab, 3
  %i.ae = add i32 %i.ad, 48
  %i.af = sdiv i32 %i.ae, 2
  %. = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %i.ac) ; 3 uses
  store i32 %., ptr %i.aa, align 4, !tbaa !28
  %i.ag = sext i32 %. to i64                      ; 2 uses
  %i.ah = icmp slt i32 %., 0
  br i1 %i.ah, label %bb.k, label %st_mult.exit

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.13, i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.ag) #20
  unreachable

st_mult.exit:                                     ; preds = %bb.j
  %i.ai = shl nuw nsw i64 %i.ag, 3
  %i.aj = tail call ptr @xrealloc(ptr noundef %i.b, i64 noundef %i.ai) #18
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !21
  %.pre = load i32, ptr %i.c, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %st_mult.exit, %bb.i
  %i.ak = phi i32 [ %.pre, %st_mult.exit ], [ %i.d, %bb.i ]
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.c, align 8, !tbaa !20
  %i.am = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.e, i64 24) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.m, label %st_add.exit

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14, i64 noundef 24, i64 noundef range(i64 -2147483648, 2147483648) %i.e) #20
  unreachable

st_add.exit:                                      ; preds = %bb.l
  %i.ao = extractvalue { i64, i1 } %i.am, 0       ; 2 uses
  %i.ap = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ao, i64 1) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %bb.n, label %st_add.exit48

bb.n:                                             ; preds = %st_add.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14, i64 noundef %i.ao, i64 noundef 1) #20
  unreachable

st_add.exit48:                                    ; preds = %st_add.exit
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %i.ar) #18 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 1 %1, i64 %i.e, i1 false)
  store ptr null, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %2, ptr %i.au, align 4, !tbaa !26
  %i.av = load i32, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, %i.z
  br i1 %i.aw, label %bb.o, label %move_array.exit

bb.o:                                             ; preds = %st_add.exit48
  %i.ax = add nsw i32 %i.av, %.2.i                ; 2 uses
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %move_array.exit, label %st_mult.exit.i

st_mult.exit.i:                                   ; preds = %bb.o
  %4 = sext i32 %i.ax to i64
  %5 = load ptr, ptr %i.a, align 8, !tbaa !21
  %6 = zext nneg i32 %i.z to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = shl nuw nsw i64 %4, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %8, ptr readonly align 1 %7, i64 %9, i1 false)
  br label %move_array.exit

move_array.exit:                                  ; preds = %st_mult.exit.i, %bb.o, %st_add.exit48
  %10 = load ptr, ptr %i.a, align 8, !tbaa !21
  %11 = zext nneg i32 %i.z to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %11
  store ptr %i.as, ptr %i.ay, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %move_array.exit, %bb.g
  %.0 = phi ptr [ %i.y, %bb.g ], [ %i.as, %move_array.exit ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @cache_tree_invalidate_path(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not48.i = icmp eq ptr %i.b, null
  br i1 %.not48.i, label %do_invalidate_path.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %tailrecurse.i
  %.tr3550.i = phi ptr [ %i.bs, %tailrecurse.i ], [ %1, %bb.a ] ; 4 uses
  %.tr49.i = phi ptr [ %i.br, %tailrecurse.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = tail call ptr @strchrnul(ptr noundef %.tr3550.i, i32 noundef 47) #19, !inline_history !44 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.tr3550.i to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 4 uses
  store i32 -1, ptr %.tr49.i, align 8, !tbaa !12
  %i.h = load i8, ptr %i.c, align 1, !tbaa !45
  %.not30.i = icmp eq i8 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.tr49.i, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr49.i, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %sext34.i = shl i64 %i.f, 32
  %i.m = ashr exact i64 %sext34.i, 32             ; 2 uses
  br i1 %.not30.i, label %.preheader, label %.preheader48

.preheader:                                       ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.tr49.i, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.tr49.i, i64 40 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %subtree_name_cmp.exit.i.i
  %.024.i.i = phi i32 [ %.125.i.i, %subtree_name_cmp.exit.i.i ], [ %i.l, %.preheader ] ; 3 uses
  %.021.i.i = phi i32 [ %.122.i.i, %subtree_name_cmp.exit.i.i ], [ 0, %.preheader ] ; 5 uses
  %i.p = icmp slt i32 %.021.i.i, %.024.i.i
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = sub nsw i32 %.024.i.i, %.021.i.i
  %i.r = lshr i32 %i.q, 1
  %i.s = add nuw nsw i32 %i.r, %.021.i.i          ; 4 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !26   ; 2 uses
  %i.z = icmp sgt i32 %i.y, %i.g
  br i1 %i.z, label %subtree_name_cmp.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp slt i32 %i.y, %i.g
  br i1 %i.aa, label %subtree_name_cmp.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i32 @memcmp(ptr noundef readonly %.tr3550.i, ptr noundef nonnull readonly %i.w, i64 noundef %i.m) #19, !inline_history !44
  br label %subtree_name_cmp.exit.i.i

subtree_name_cmp.exit.i.i:                        ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.ab, %bb.e ], [ -1, %bb.c ], [ 1, %bb.d ] ; 2 uses
  %.not.not.i.i = icmp eq i32 %.0.i.i.i, 0
  %i.ac = icmp slt i32 %.0.i.i.i, 0               ; 2 uses
  %i.ad = add nuw nsw i32 %i.s, 1
  %.125.i.i = select i1 %i.ac, i32 %i.s, i32 %.024.i.i
  %.122.i.i = select i1 %i.ac, i32 %.021.i.i, i32 %i.ad
  br i1 %.not.not.i.i, label %cache_tree_subtree_pos.exit.i, label %bb.b, !llvm.loop !27

bb.f:                                             ; preds = %bb.b
  %i.ae = xor i32 %.021.i.i, -1
  br label %cache_tree_subtree_pos.exit.i

cache_tree_subtree_pos.exit.i:                    ; preds = %subtree_name_cmp.exit.i.i, %bb.f
  %.2.i.i = phi i32 [ %i.ae, %bb.f ], [ %i.s, %subtree_name_cmp.exit.i.i ] ; 3 uses
  %i.af = icmp sgt i32 %.2.i.i, -1
  br i1 %i.af, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %cache_tree_subtree_pos.exit.i
  %i.ag = zext nneg i32 %.2.i.i to i64            ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  tail call void @cache_tree_free(ptr noundef %i.ai), !inline_history !44
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.al) #18, !inline_history !44
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ag ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !20  ; 2 uses
  %i.aq = xor i32 %.2.i.i, -1
  %i.ar = add i32 %i.ap, %i.aq                    ; 3 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %move_array.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp slt i32 %i.ar, 0
  br i1 %i.at, label %bb.i, label %st_mult.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.13, i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483647) %i.as) #20, !inline_history !44
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.h
  %i.au = shl nuw nsw i64 %i.as, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr nonnull readonly align 1 %i.ao, i64 %i.au, i1 false)
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !20
  br label %move_array.exit.i

move_array.exit.i:                                ; preds = %st_mult.exit.i.i, %bb.g
  %i.av = phi i32 [ %i.ap, %bb.g ], [ %.pre.i, %st_mult.exit.i.i ]
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.o, align 8, !tbaa !20
  br label %.loopexit

.preheader48:                                     ; preds = %.lr.ph.i, %subtree_name_cmp.exit.i.i.i
  %.024.i.i.i = phi i32 [ %.125.i.i.i, %subtree_name_cmp.exit.i.i.i ], [ %i.l, %.lr.ph.i ] ; 3 uses
  %.021.i.i.i = phi i32 [ %.122.i.i.i, %subtree_name_cmp.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.ax = icmp slt i32 %.021.i.i.i, %.024.i.i.i
  br i1 %i.ax, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.preheader48
  %i.ay = sub nsw i32 %.024.i.i.i, %.021.i.i.i
  %i.az = lshr i32 %i.ay, 1
  %i.ba = add nuw nsw i32 %i.az, %.021.i.i.i      ; 4 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !22 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !26 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, %i.g
  br i1 %i.bh, label %subtree_name_cmp.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp slt i32 %i.bg, %i.g
  br i1 %i.bi, label %subtree_name_cmp.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = tail call i32 @memcmp(ptr noundef readonly %.tr3550.i, ptr noundef nonnull readonly %i.be, i64 noundef %i.m) #19, !inline_history !44
  br label %subtree_name_cmp.exit.i.i.i

subtree_name_cmp.exit.i.i.i:                      ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.l ], [ -1, %bb.j ], [ 1, %bb.k ] ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.0.i.i.i.i, 0
  %i.bk = icmp slt i32 %.0.i.i.i.i, 0             ; 2 uses
  %i.bl = add nuw nsw i32 %i.ba, 1
  %.125.i.i.i = select i1 %i.bk, i32 %i.ba, i32 %.024.i.i.i
  %.122.i.i.i = select i1 %i.bk, i32 %.021.i.i.i, i32 %i.bl
  br i1 %.not.not.i.i.i, label %cache_tree_subtree_pos.exit.i.i, label %.preheader48, !llvm.loop !27

bb.m:                                             ; preds = %.preheader48
  %i.bm = xor i32 %.021.i.i.i, -1
  br label %cache_tree_subtree_pos.exit.i.i

cache_tree_subtree_pos.exit.i.i:                  ; preds = %subtree_name_cmp.exit.i.i.i, %bb.m
  %.2.i.i.i = phi i32 [ %i.bm, %bb.m ], [ %i.ba, %subtree_name_cmp.exit.i.i.i ] ; 2 uses
  %i.bn = icmp sgt i32 %.2.i.i.i, -1
  br i1 %i.bn, label %find_subtree.exit.i, label %.loopexit

find_subtree.exit.i:                              ; preds = %cache_tree_subtree_pos.exit.i.i
  %i.bo = zext nneg i32 %.2.i.i.i to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22 ; 2 uses
  %.not31.i = icmp eq ptr %i.bq, null
  br i1 %.not31.i, label %.loopexit, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %find_subtree.exit.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %cache_tree_subtree_pos.exit.i.i, %find_subtree.exit.i, %tailrecurse.i, %cache_tree_subtree_pos.exit.i, %move_array.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !46
  %i.bv = or i32 %i.bu, 32
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !46
  br label %do_invalidate_path.exit

do_invalidate_path.exit:                          ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cache_tree_fully_valid(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
