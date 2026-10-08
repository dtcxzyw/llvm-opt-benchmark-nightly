Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/mempool_multiple?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@mempool_multiple_alloc_chunk:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.al, ptr %i.ar, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.al, ptr %i.r, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.0 = phi ptr [ %i.al, %bb.h ], [ %i.s, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %.fr59 = freeze ptr %i.at
  %i.au = ptrtoint ptr %.fr59 to i64
  %i.av = add i64 %1, -1
  %i.aw = add i64 %i.av, %i.au                    ; 2 uses
  %i.ax = urem i64 %i.aw, %1
  %i.ay = sub nuw i64 %i.aw, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ay
  %i.bd = icmp ult i64 %i.bc, %2
  br i1 %i.bd, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i64, ptr %i.c, align 8
  %.pre61 = load i64, ptr %i.a, align 8
  br label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.be = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %2
  store ptr %i.bi, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.j
  %.053 = phi ptr [ %i.be, %bb.j ], [ null, %bb.b ], [ %i.j, %bb.c ], [ null, %bb.e ]
  ret ptr %.053
}

; Function Attrs: noredzone optsize
declare dso_local i32 @mempool_deinit(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @mempool_multiple_free_chunk(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.g(ptr noundef %i.i, ptr noundef %1) #11
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = tail call i32 @nxrmutex_lock(ptr noundef nonnull %i.j) #11 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %.03846 = load ptr, ptr %i.l, align 8           ; 2 uses
  %.not47 = icmp eq ptr %.03846, null
  br i1 %.not47, label %.loopexit44, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.q
  %.03848 = phi ptr [ %.038, %bb.q ], [ %.03846, %bb.c ] ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03848, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %.not41 = icmp ult ptr %1, %i.n
  br i1 %.not41, label %bb.q, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.03848, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ult ptr %1, %i.p
  br i1 %i.q, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.03848, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.03848, i64 32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %.loopexit44

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not42 = icmp eq ptr %i.w, null
  br i1 %.not42, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq ptr %.03848, %i.w
  br i1 %i.x, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %.03848, align 8
  store ptr %i.z, ptr %i.l, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %.03848, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.aa, align 8
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %.03848, align 8
  br label %.loopexit

bb.k:                                             ; preds = %.preheader, %sq_remafter.exit
  %.049 = phi ptr [ %i.w, %.preheader ], [ %i.aj, %sq_remafter.exit ] ; 4 uses
  %i.ad = load ptr, ptr %.049, align 8            ; 5 uses
  %i.ae = icmp eq ptr %i.ad, %.03848
  br i1 %i.ae, label %bb.l, label %sq_remafter.exit

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.l, align 8
  %.not50 = icmp eq ptr %i.af, null
  br i1 %.not50, label %sq_remafter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.y, align 8
  %i.ah = icmp eq ptr %i.ag, %.03848
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %.049, ptr %i.y, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ad, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge.i = phi ptr [ %i.ai, %bb.o ], [ null, %bb.n ]
  store ptr %storemerge.i, ptr %.049, align 8
  store ptr null, ptr %i.ad, align 8
  %.pre = load ptr, ptr %.049, align 8
  br label %sq_remafter.exit

sq_remafter.exit:                                 ; preds = %bb.p, %bb.l, %bb.k
  %i.aj = phi ptr [ %.pre, %bb.p ], [ %i.ad, %bb.l ], [ %i.ad, %bb.k ] ; 2 uses
  %.not43 = icmp eq ptr %i.aj, null
  br i1 %.not43, label %.loopexit, label %bb.k, !llvm.loop !13

.loopexit:                                        ; preds = %sq_remafter.exit, %bb.j, %bb.i, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.r, align 8
  tail call void %i.al(ptr noundef %i.an, ptr noundef %i.ao) #11
  br label %.loopexit44

bb.q:                                             ; preds = %.lr.ph, %bb.d
  %.038 = load ptr, ptr %.03848, align 8          ; 2 uses
  %.not = icmp eq ptr %.038, null
  br i1 %.not, label %.loopexit44, label %.lr.ph, !llvm.loop !14

.loopexit44:                                      ; preds = %bb.q, %bb.c, %bb.e, %.loopexit
  %i.ap = tail call i32 @nxrmutex_unlock(ptr noundef nonnull %i.j) #11 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit44, %bb.b
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local ptr @mempool_multiple_alloc(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mempool_multiple_find.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %.not39.i = icmp eq i64 %i.c, 0
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = load ptr, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not36.i = icmp ult i64 %i.h, %1
  br i1 %.not36.i, label %bb.d, label %mempool_multiple_find.exit.thread17

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %1, -1
  %i.j = add i64 %i.i, %i.e
  %i.k = sub i64 %i.j, %i.h
  %i.l = udiv i64 %i.k, %i.e                      ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.c
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %i.l
  br i1 %i.m, label %mempool_multiple_find.exit, label %mempool_multiple_find.exit.thread

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.038.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %.02837.i = phi i64 [ %i.c, %.lr.ph.i ], [ %.129.i, %bb.e ] ; 2 uses
  %i.o = add i64 %.02837.i, %.038.i
  %i.p = lshr i64 %i.o, 1                         ; 3 uses
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.f, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ugt i64 %i.r, %1                    ; 2 uses
  %i.t = add nuw i64 %i.p, 1
  %.129.i = select i1 %i.s, i64 %i.p, i64 %.02837.i ; 2 uses
  %.1.i = select i1 %i.s, i64 %.038.i, i64 %i.t   ; 3 uses
  %i.u = icmp ult i64 %.1.i, %.129.i
  br i1 %i.u, label %bb.e, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.1.i, %bb.e ] ; 2 uses
  %i.v = icmp eq i64 %.0.lcssa.i, %i.c
  br i1 %i.v, label %mempool_multiple_find.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %2 = load ptr, ptr %0, align 8                  ; 2 uses
  %i.w = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %.0.lcssa.i
  br label %mempool_multiple_find.exit

mempool_multiple_find.exit:                       ; preds = %bb.d, %bb.f
  %i.x = phi ptr [ %2, %bb.f ], [ %i.g, %bb.d ]
  %.030.i = phi ptr [ %i.w, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.y = icmp eq ptr %.030.i, null
  br i1 %i.y, label %mempool_multiple_find.exit.thread, label %mempool_multiple_find.exit.thread17

mempool_multiple_find.exit.thread17:              ; preds = %bb.c, %mempool_multiple_find.exit
  %i.z = phi ptr [ %i.x, %mempool_multiple_find.exit ], [ %i.g, %bb.c ]
  %.030.i19 = phi ptr [ %.030.i, %mempool_multiple_find.exit ], [ %i.g, %bb.c ]
  %i.aa = getelementptr inbounds nuw [192 x i8], ptr %i.z, i64 %i.c
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %mempool_multiple_find.exit.thread17
  %.011 = phi ptr [ %.030.i19, %mempool_multiple_find.exit.thread17 ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ab = tail call ptr @mempool_allocate(ptr noundef nonnull %.011) #11 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.h, label %mempool_multiple_find.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.011, i64 192 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.g, label %mempool_multiple_find.exit.thread, !llvm.loop !15

mempool_multiple_find.exit.thread:                ; preds = %bb.h, %bb.g, %._crit_edge.i, %bb.d, %bb.a, %mempool_multiple_find.exit
  %.2 = phi ptr [ null, %bb.d ], [ null, %mempool_multiple_find.exit ], [ null, %._crit_edge.i ], [ null, %bb.a ], [ null, %bb.h ], [ %i.ab, %bb.g ]
  ret ptr %.2
}

; Function Attrs: noredzone optsize
declare dso_local ptr @mempool_allocate(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local ptr @mempool_multiple_realloc(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @mempool_multiple_alloc(ptr noundef %0, i64 noundef %2) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @mempool_multiple_get_dict(ptr noundef %0, ptr noundef nonnull %1) #12 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @mempool_multiple_alloc(ptr noundef %0, i64 noundef %2) #12 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %memcpy.inline.exit

memcpy.inline.exit:                               ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = load i64, ptr %i.f, align 8
  %. = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.g)
  %i.h = tail call ptr @memcpy(ptr noundef nonnull %i.e, ptr noundef nonnull %1, i64 noundef %.) #12 ; 0 uses
  %i.i = tail call i32 @mempool_multiple_free(ptr noundef %0, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %memcpy.inline.exit, %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.c ], [ %i.e, %memcpy.inline.exit ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @mempool_multiple_get_dict(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = urem i64 %i.f, %i.h                      ; 2 uses
  %i.j = sub nuw i64 %i.f, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = icmp eq ptr %1, %i.k
  br i1 %i.l, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i64, ptr %i.n, align 8
  %.not = icmp ult i64 %i.m, %i.o
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = lshr i64 %i.m, %i.q                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = shl i64 %i.r, %i.q
  %i.w = sub i64 %i.m, %i.v
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %.not38 = icmp eq ptr %i.z, %i.k
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %.not39 = icmp ult i64 %i.i, %i.ab
  %spec.select = select i1 %.not39, ptr %i.x, ptr null
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.b ], [ %spec.select, %bb.g ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -22, 1) i32 @mempool_multiple_free(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc ptr @mempool_multiple_get_dict(ptr noundef %0, ptr noundef %1) #12 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = urem i64 %i.j, %i.l
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @mempool_release(ptr noundef nonnull %i.k, ptr noundef %i.o) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local void @mempool_release(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i64 @mempool_multiple_alloc_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 665, ptr noundef nonnull @.str.1) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call fastcc ptr @mempool_multiple_get_dict(ptr noundef %0, ptr noundef nonnull %1) #12 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i64, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.d, %bb.d ], [ -22, %bb.c ]
  ret i64 %.0
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local ptr @mempool_multiple_memalign(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.b = icmp samesign ugt i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 709, ptr noundef nonnull @.str.2) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 3 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %mempool_multiple_find.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %.not39.i = icmp eq i64 %i.f, 0
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = load ptr, ptr %0, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8                ; 5 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.not36.i = icmp ult i64 %i.k, %i.c
  br i1 %.not36.i, label %bb.f, label %mempool_multiple_find.exit.thread25

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %i.c, -1
  %i.m = add i64 %i.l, %i.h
  %i.n = sub i64 %i.m, %i.k
  %i.o = udiv i64 %i.n, %i.h                      ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.f
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.o
  br i1 %i.p, label %mempool_multiple_find.exit, label %mempool_multiple_find.exit.thread

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.038.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.02837.i = phi i64 [ %i.f, %.lr.ph.i ], [ %.129.i, %bb.g ] ; 2 uses
  %i.r = add i64 %.02837.i, %.038.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.i, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp ugt i64 %i.u, %i.c                  ; 2 uses
  %i.w = add nuw i64 %i.s, 1
  %.129.i = select i1 %i.v, i64 %i.s, i64 %.02837.i ; 2 uses
  %.1.i = select i1 %i.v, i64 %.038.i, i64 %i.w   ; 3 uses
  %i.x = icmp ult i64 %.1.i, %.129.i
  br i1 %i.x, label %bb.g, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.g, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.1.i, %bb.g ] ; 2 uses
  %i.y = icmp eq i64 %.0.lcssa.i, %i.f
  br i1 %i.y, label %mempool_multiple_find.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %3 = load ptr, ptr %0, align 8                  ; 2 uses
  %i.z = getelementptr inbounds nuw [192 x i8], ptr %3, i64 %.0.lcssa.i
  br label %mempool_multiple_find.exit

mempool_multiple_find.exit:                       ; preds = %bb.f, %bb.h
  %i.aa = phi ptr [ %3, %bb.h ], [ %i.j, %bb.f ]
  %.030.i = phi ptr [ %i.z, %bb.h ], [ %i.q, %bb.f ] ; 2 uses
  %i.ab = icmp eq ptr %.030.i, null
  br i1 %i.ab, label %mempool_multiple_find.exit.thread, label %mempool_multiple_find.exit.thread25

mempool_multiple_find.exit.thread25:              ; preds = %bb.e, %mempool_multiple_find.exit
  %i.ac = phi ptr [ %i.aa, %mempool_multiple_find.exit ], [ %i.j, %bb.e ]
  %.030.i27 = phi ptr [ %.030.i, %mempool_multiple_find.exit ], [ %i.j, %bb.e ]
  %i.ad = getelementptr inbounds nuw [192 x i8], ptr %i.ac, i64 %i.f
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %mempool_multiple_find.exit.thread25
  %.017 = phi ptr [ %.030.i27, %mempool_multiple_find.exit.thread25 ], [ %i.al, %bb.k ] ; 2 uses
  %i.ae = tail call ptr @mempool_allocate(ptr noundef nonnull %.017) #11
  %.fr23 = freeze ptr %i.ae                       ; 2 uses
  %.not = icmp eq ptr %.fr23, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %.fr23 to i64
  %i.ag = add i64 %1, -1
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = urem i64 %i.ah, %1
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %mempool_multiple_find.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.017, i64 192 ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.ad
  br i1 %i.am, label %bb.i, label %mempool_multiple_find.exit.thread, !llvm.loop !16

mempool_multiple_find.exit.thread:                ; preds = %bb.k, %._crit_edge.i, %bb.f, %bb.c, %bb.j, %mempool_multiple_find.exit
  %.2 = phi ptr [ %i.ak, %bb.j ], [ null, %mempool_multiple_find.exit ], [ null, %._crit_edge.i ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.k ]
  ret ptr %.2
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @mempool_multiple_foreach(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %.06
  tail call void %1(ptr noundef %i.d, ptr noundef %2) #11
  %i.e = add nuw i64 %.06, 1                      ; 2 uses
  %i.f = load i64, ptr %i.a, align 8
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @mempool_multiple_mallinfo(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.mallinfo) align 4 captures(none) initializes((0, 28)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.mempoolinfo_s, align 8      ; 7 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = tail call i32 @nxrmutex_lock(ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %0, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %.not = icmp ult i64 %i.i, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  store i32 %i.v, ptr %i.u, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.promoted = phi i32 [ %i.v, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.w = tail call i32 @nxrmutex_unlock(ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %.not23 = icmp eq i64 %i.y, 0
  br i1 %.not23, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.ah = phi i64 [ 0, %.lr.ph ], [ %spec.select24, %bb.f ]
  %i.ai = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.f ]
  %i.aj = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.f ]
  %i.ak = phi i32 [ %.promoted, %.lr.ph ], [ %i.au, %bb.f ]
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.al = load ptr, ptr %1, align 8
  %i.am = getelementptr inbounds nuw [192 x i8], ptr %i.al, i64 %.016
  %i.an = call i32 @mempool_info(ptr noundef %i.am, ptr noundef nonnull %2) #11 ; 0 uses
  %i.ao = load i64, ptr %i.z, align 8
  %i.ap = load i64, ptr %i.aa, align 8
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.ak, %i.at                    ; 3 uses
  %i.av = trunc i64 %i.aq to i32
  %i.aw = add i32 %i.aj, %i.av                    ; 2 uses
  %i.ax = load i64, ptr %i.ae, align 8
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.ai, %i.ay                    ; 2 uses
  %sext = shl i64 %i.ah, 32
  %i.ba = ashr exact i64 %sext, 32
  %spec.select24 = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ba) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.bb = add nuw i64 %.016, 1                    ; 2 uses
  %i.bc = load i64, ptr %i.x, align 8
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.f
  %spec.select = trunc i64 %spec.select24 to i32
  store i32 %i.au, ptr %i.ac, align 4
  store i32 %i.aw, ptr %i.ad, align 4
  store i32 %i.az, ptr %i.af, align 4
  store i32 %spec.select, ptr %i.ag, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e
  %i.be = phi i32 [ %i.au, %._crit_edge ], [ %.promoted, %bb.e ]
  %i.bf = load i64, ptr %i.e, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = sub i32 %i.bh, %i.be
  store i32 %i.bi, ptr %i.bg, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nxrmutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @nxrmutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @mempool_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i64 @mempool_multiple_info_task(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.sroa.07.016 = phi i32 [ %i.f, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.49.014 = phi i32 [ %i.g, %.lr.ph ], [ 0, %.preheader ]
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = tail call i64 @mempool_info_task(ptr noundef %i.d, ptr noundef %1) #11 ; 2 uses
  %.sroa.01.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.e, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.f = add nsw i32 %.sroa.07.016, %.sroa.01.0.extract.trunc ; 2 uses
  %i.g = add nsw i32 %.sroa.49.014, %.sroa.4.0.extract.trunc ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i64, ptr %i.a, align 8
  %i.i = icmp ugt i64 %i.h, %indvars.iv.next
  br i1 %i.i, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !19

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.j = zext i32 %i.g to i64
  %i.k = shl nuw i64 %i.j, 32
  %i.l = zext i32 %i.f to i64
  %i.m = or disjoint i64 %i.k, %i.l
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %.sroa.49.1 = phi i64 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.m, %.loopexit.loopexit ]
  ret i64 %.sroa.49.1
}

; Function Attrs: noredzone optsize
declare dso_local i64 @mempool_info_task(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @mempool_multiple_memdump(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
end_hunk_0
