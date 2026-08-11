inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@diffcore_count_changes:bb.a
  %.4.lcssa = phi i64 [ %.055.lcssa, %.preheader ], [ %i.ac, %.lr.ph106 ]
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef %.163) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  br i1 %.not78, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef %.161) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %.057.lcssa, ptr %5, align 8, !tbaa !20
  store i64 %.4.lcssa, ptr %6, align 8, !tbaa !20
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @hash_chars(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = tail call i32 @diff_filespec_is_binary(ptr noundef %0, ptr noundef %1) #8
  %i.g = tail call ptr @xmalloc(i64 noundef 4104) #8 ; 6 uses
  store i32 9, ptr %i.g, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 341, ptr %i.h, align 4, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false)
  %.not5658 = icmp eq i32 %i.e, 0
  br i1 %.not5658, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.fr = freeze i32 %i.f
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.064.us = phi i32 [ %.1.us, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.04763.us = phi i32 [ %.148.us, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.04962.us = phi i32 [ %.150.us, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.05161.us = phi i32 [ %i.m, %bb.c ], [ %i.e, %.lr.ph ]
  %.05260.us = phi ptr [ %i.j, %bb.c ], [ %i.b, %.lr.ph ] ; 2 uses
  %.05359.us = phi ptr [ %.154.us, %bb.c ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05260.us, i64 1
  %i.k = load i8, ptr %.05260.us, align 1, !tbaa !30 ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %.05161.us, -1                   ; 2 uses
  %i.n = tail call i32 @llvm.fshl.i32(i32 %.04763.us, i32 %.04962.us, i32 7)
  %i.o = tail call i32 @llvm.fshl.i32(i32 %.04962.us, i32 %.04763.us, i32 7) ; 2 uses
  %i.p = add i32 %i.n, %i.l                       ; 2 uses
  %i.q = add nsw i32 %.064.us, 1                  ; 2 uses
  %i.r = icmp slt i32 %.064.us, 63
  %i.s = icmp ne i8 %i.k, 10
  %or.cond5.us = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond5.us, label %bb.c, label %bb.b, !llvm.loop !31

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.t = mul i32 %i.o, 97
  %i.u = add i32 %i.p, %i.t
  %i.v = urem i32 %i.u, 107927
  %i.w = tail call fastcc ptr @add_spanhash(ptr noundef %.05359.us, i32 noundef %i.v, i32 noundef %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %.154.us = phi ptr [ %i.w, %bb.b ], [ %.05359.us, %.lr.ph.split.us ] ; 2 uses
  %.150.us = phi i32 [ 0, %bb.b ], [ %i.o, %.lr.ph.split.us ] ; 2 uses
  %.148.us = phi i32 [ 0, %bb.b ], [ %i.p, %.lr.ph.split.us ] ; 2 uses
  %.1.us = phi i32 [ 0, %bb.b ], [ %i.q, %.lr.ph.split.us ] ; 2 uses
  %.not56.us = icmp eq i32 %i.m, 0
  br i1 %.not56.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.064 = phi i32 [ %.1, %bb.g ], [ 0, %.lr.ph ]  ; 3 uses
  %.04763 = phi i32 [ %.148, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %.04962 = phi i32 [ %.150, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %.05161 = phi i32 [ %i.aa, %bb.g ], [ %i.e, %.lr.ph ]
  %.05260 = phi ptr [ %i.x, %bb.g ], [ %i.b, %.lr.ph ] ; 2 uses
  %.05359 = phi ptr [ %.154, %bb.g ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05260, i64 1 ; 2 uses
  %i.y = load i8, ptr %.05260, align 1, !tbaa !30 ; 3 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = add i32 %.05161, -1                     ; 3 uses
  %i.ab = icmp eq i8 %i.y, 13
  %i.ac = icmp ne i32 %i.aa, 0
  %or.cond3 = and i1 %i.ac, %i.ab
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !30
  %i.ae = icmp eq i8 %i.ad, 10
  br i1 %i.ae, label %bb.g, label %bb.e, !llvm.loop !31

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %i.af = tail call i32 @llvm.fshl.i32(i32 %.04763, i32 %.04962, i32 7)
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %.04962, i32 %.04763, i32 7) ; 2 uses
  %i.ah = add i32 %i.af, %i.z                     ; 2 uses
  %i.ai = add nsw i32 %.064, 1                    ; 2 uses
  %i.aj = icmp slt i32 %.064, 63
  %i.ak = icmp ne i8 %i.y, 10
  %or.cond5 = and i1 %i.aj, %i.ak
  br i1 %or.cond5, label %bb.g, label %bb.f, !llvm.loop !31

bb.f:                                             ; preds = %bb.e
  %i.al = mul i32 %i.ag, 97
  %i.am = add i32 %i.ah, %i.al
  %i.an = urem i32 %i.am, 107927
  %i.ao = tail call fastcc ptr @add_spanhash(ptr noundef %.05359, i32 noundef %i.an, i32 noundef %i.ai)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.154 = phi ptr [ %i.ao, %bb.f ], [ %.05359, %bb.d ], [ %.05359, %bb.e ] ; 2 uses
  %.150 = phi i32 [ 0, %bb.f ], [ %.04962, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %.148 = phi i32 [ 0, %bb.f ], [ %.04763, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.f ], [ %.064, %bb.d ], [ %i.ai, %bb.e ] ; 2 uses
  %.not56 = icmp eq i32 %i.aa, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.c, %bb.g
  %.053.lcssa = phi ptr [ %.154, %bb.g ], [ %.154.us, %bb.c ] ; 2 uses
  %.049.lcssa = phi i32 [ %.150, %bb.g ], [ %.150.us, %bb.c ]
  %.047.lcssa = phi i32 [ %.148, %bb.g ], [ %.148.us, %bb.c ]
  %.0.lcssa = phi i32 [ %.1, %bb.g ], [ %.1.us, %bb.c ] ; 2 uses
  %i.ap = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ap, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %._crit_edge
  %i.aq = mul i32 %.049.lcssa, 97
  %i.ar = add i32 %.047.lcssa, %i.aq
  %i.as = urem i32 %i.ar, 107927
  %i.at = tail call fastcc ptr @add_spanhash(ptr noundef %.053.lcssa, i32 noundef %i.as, i32 noundef %.0.lcssa)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.h, %._crit_edge
  %.2 = phi ptr [ %i.at, %bb.h ], [ %.053.lcssa, %._crit_edge ], [ %i.g, %bb.a ] ; 3 uses
  %i.au = load i32, ptr %.2, align 4, !tbaa !29   ; 2 uses
  %.not57 = icmp eq i32 %i.au, 0
  br i1 %.not57, label %sane_qsort.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.2, i64 8
  tail call void @qsort(ptr noundef nonnull %i.ax, i64 noundef %i.aw, i64 noundef 8, ptr noundef nonnull @spanhash_cmp) #8
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %._crit_edge.thread, %bb.i
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

declare i32 @diff_filespec_is_binary(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @add_spanhash(ptr noundef captures(ret: address, provenance) %0, i32 noundef range(i32 0, 107927) %1, i32 noundef range(i32 -2147483647, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !29
  %i.b = shl nuw i32 1, %i.a                      ; 2 uses
  %i.c = add nuw i32 %i.b, 131071
  %i.d = and i32 %i.c, %1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 2 uses
  %.not34 = icmp eq i32 %i.i, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = load i32, ptr %i.g, align 4, !tbaa !16
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %.lr.ph._crit_edge, label %.lr.ph57

._crit_edge:                                      ; preds = %.lr.ph57, %bb.a
  %.lcssa33 = phi ptr [ %i.g, %bb.a ], [ %i.bf, %.lr.ph57 ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa33, i64 4
  store i32 %1, ptr %.lcssa33, align 4, !tbaa !16
  store i32 %2, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !29   ; 2 uses
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !29
  %i.p = icmp slt i32 %i.n, 1
  br i1 %i.p, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %i.q = load i32, ptr %0, align 4, !tbaa !29     ; 3 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = shl i32 2, %i.q                          ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.c, label %st_mult.exit35.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1, i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.t) #9
  unreachable

st_mult.exit35.i:                                 ; preds = %bb.b
  %i.v = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %i.w = or disjoint i64 %i.v, 8
  %i.x = tail call ptr @xmalloc(i64 noundef %i.w) #8 ; 4 uses
  %i.y = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  %i.z = add nsw i32 %i.y, 1                      ; 3 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !29
  %i.aa = add nsw i32 %i.y, -2
  %i.ab = shl i32 %i.aa, %i.z
  %i.ac = sdiv i32 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 3 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.v, i1 false)
  %.not45.i = icmp eq i32 %i.q, 31
  br i1 %.not45.i, label %spanhash_rehash.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %st_mult.exit35.i
  %i.af = add nsw i32 %i.s, -1
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph44.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph44.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14 ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !16 ; 2 uses
  %i.ak = and i32 %i.aj, %i.af                    ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %.not3340.i = icmp eq i32 %i.ao, 0
  br i1 %.not3340.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %.lr.ph.i, %bb.e
  %.lcssa39.i = phi ptr [ %i.am, %bb.e ], [ %i.au, %.lr.ph.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa39.i, i64 4
  store i32 %i.aj, ptr %.lcssa39.i, align 4, !tbaa !16
  store i32 %i.ai, ptr %i.ap, align 4, !tbaa !14
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ad, align 4, !tbaa !29
  br label %bb.f

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.03241.i = phi i32 [ %spec.store.select.i, %.lr.ph.i ], [ %i.ak, %bb.e ]
  %i.as = add nsw i32 %.03241.i, 1                ; 2 uses
  %.not34.i = icmp sgt i32 %i.s, %i.as
  %spec.store.select.i = select i1 %.not34.i, i32 %i.as, i32 0 ; 2 uses
  %i.at = sext i32 %spec.store.select.i to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %.not33.i = icmp eq i32 %i.aw, 0
  br i1 %.not33.i, label %.thread.i, label %.lr.ph.i

bb.f:                                             ; preds = %.thread.i, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %spanhash_rehash.exit, label %bb.d, !llvm.loop !32

spanhash_rehash.exit:                             ; preds = %bb.f, %st_mult.exit35.i
  tail call void @free(ptr noundef nonnull %0) #8
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph57
  %i.ax = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.ay = icmp eq i32 %i.ax, %1
  br i1 %i.ay, label %.lr.ph._crit_edge, label %.lr.ph57

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa53 = phi i32 [ %i.i, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ]
  %i.az = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.be, %.lr.ph ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = add i32 %.lcssa53, %2
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !14
  br label %bb.g

.lr.ph57:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.in56 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.bd = add nsw i32 %.in56, 1                   ; 2 uses
  %.not23 = icmp sgt i32 %i.b, %i.bd
  %spec.store.select = select i1 %.not23, i32 %i.bd, i32 0 ; 2 uses
  %i.be = sext i32 %spec.store.select to i64      ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14 ; 2 uses
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge, %.lr.ph._crit_edge, %spanhash_rehash.exit
  %.0 = phi ptr [ %0, %.lr.ph._crit_edge ], [ %i.x, %spanhash_rehash.exit ], [ %0, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @spanhash_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp ne i32 %i.d, 0
  %i.e = zext i1 %.not11 to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %0, align 4, !tbaa !16
  %i.g = load i32, ptr %1, align 4, !tbaa !16
  %i.h = tail call i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.g)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.d ], [ %i.e, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!15, !9, i64 4}
!15 = !{!"spanhash", !9, i64 0, !9, i64 4}
!16 = !{!15, !9, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !10, i64 0}
!22 = !{!23, !13, i64 48}
!23 = !{!"diff_filespec", !24, i64 0, !25, i64 40, !13, i64 48, !13, i64 56, !21, i64 64, !9, i64 72, !9, i64 76, !26, i64 80, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !27, i64 88}
!24 = !{!"object_id", !10, i64 0, !9, i64 32}
!25 = !{!"p1 omnipotent char", !13, i64 0}
!26 = !{!"short", !10, i64 0}
!27 = !{!"p1 _ZTS15userdiff_driver", !13, i64 0}
!28 = !{!23, !21, i64 64}
!29 = !{!9, !9, i64 0}
!30 = !{!10, !10, i64 0}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
end_hunk_0
