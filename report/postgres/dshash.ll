Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dshash?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
begin_hunk_0_@pfree
declare void @pfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dshash_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3096
  %i.f = load i64, ptr %i.e, align 8
  %.not.i = icmp eq i64 %i.b, %i.f
  br i1 %.not.i, label %ensure_valid_bucket_pointers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 3104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call ptr @dsa_get_address(ptr noundef %i.g, i64 noundef %i.i) #11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3096
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  store i64 %i.n, ptr %i.a, align 8
  br label %ensure_valid_bucket_pointers.exit

ensure_valid_bucket_pointers.exit:                ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.b, %bb.a ], [ %i.n, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %ensure_valid_bucket_pointers.exit, %._crit_edge
  %.022 = phi i64 [ 0, %ensure_valid_bucket_pointers.exit ], [ %i.x, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.022
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.not20 = icmp eq i64 %i.s, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01921 = phi i64 [ %i.v, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = tail call ptr @dsa_get_address(ptr noundef %i.t, i64 noundef %.01921) #11
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = load ptr, ptr %0, align 8
  tail call void @dsa_free(ptr noundef %i.w, i64 noundef %.01921) #11
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.x = add i64 %.022, 1                         ; 2 uses
  %.0.highbits = lshr i64 %i.x, %i.o
  %i.y = icmp eq i64 %.0.highbits, 0
  br i1 %i.y, label %bb.c, label %bb.d, !llvm.loop !9

bb.d:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3104
  %i.ae = load i64, ptr %i.ad, align 8
  tail call void @dsa_free(ptr noundef %i.ab, i64 noundef %i.ae) #11
  %i.af = load ptr, ptr %0, align 8
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = load i64, ptr %i.ag, align 8
  tail call void @dsa_free(ptr noundef %i.af, i64 noundef %i.ah) #11
  tail call void @pfree(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @dshash_get_hash_table_handle(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @dshash_find(ptr nofree noundef captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.c(ptr noundef %1, i64 noundef %i.d, ptr noundef %i.f) #11, !inline_history !0 ; 2 uses
  %i.h = lshr i32 %i.g, 25
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.i
  %not. = xor i1 %2, true
  %i.n = zext i1 %not. to i32
  %i.o = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.m, i32 noundef %i.n) #11 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 3096
  %i.t = load i64, ptr %i.s, align 8
  %.not.i = icmp eq i64 %i.q, %i.t
  br i1 %.not.i, label %.ensure_valid_bucket_pointers.exit_crit_edge, label %bb.b

.ensure_valid_bucket_pointers.exit_crit_edge:     ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %ensure_valid_bucket_pointers.exit

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 3104
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call ptr @dsa_get_address(ptr noundef %i.u, i64 noundef %i.w) #11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3096
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  store i64 %i.ab, ptr %i.p, align 8
  br label %ensure_valid_bucket_pointers.exit

ensure_valid_bucket_pointers.exit:                ; preds = %.ensure_valid_bucket_pointers.exit_crit_edge, %bb.b
  %i.ac = phi ptr [ %i.r, %.ensure_valid_bucket_pointers.exit_crit_edge ], [ %i.z, %bb.b ]
  %i.ad = phi i64 [ %i.q, %.ensure_valid_bucket_pointers.exit_crit_edge ], [ %i.ab, %bb.b ]
  %i.ae = phi ptr [ %.pre, %.ensure_valid_bucket_pointers.exit_crit_edge ], [ %i.x, %bb.b ]
  %i.af = trunc i64 %i.ad to i32
  %i.ag = sub i32 32, %i.af
  %i.ah = lshr i32 %i.g, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %.not14.i = icmp eq i64 %i.ak, 0
  br i1 %.not14.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ensure_valid_bucket_pointers.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.0915.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.au, %bb.d ]
  %i.am = load ptr, ptr %0, align 8
  %i.an = tail call ptr @dsa_get_address(ptr noundef %i.am, i64 noundef %.0915.i) #11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = load i64, ptr %i.a, align 8
  %i.ar = load ptr, ptr %i.e, align 8
  %i.as = tail call i32 %i.ap(ptr noundef %1, ptr noundef nonnull %i.ao, i64 noundef %i.aq, ptr noundef %i.ar) #11, !inline_history !1
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %find_in_bucket.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = load i64, ptr %i.an, align 8            ; 2 uses
  %.not.i17 = icmp eq i64 %i.au, 0
  br i1 %.not.i17, label %.loopexit.loopexit, label %bb.c

.loopexit.loopexit:                               ; preds = %bb.d
  %.pre22 = load ptr, ptr %i.j, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %ensure_valid_bucket_pointers.exit
  %i.av = phi ptr [ %.pre22, %.loopexit.loopexit ], [ %i.ac, %ensure_valid_bucket_pointers.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.i
  tail call void @LWLockRelease(ptr noundef nonnull %i.ax) #11
  br label %find_in_bucket.exit

find_in_bucket.exit:                              ; preds = %bb.c, %.loopexit
  %.0 = phi ptr [ null, %.loopexit ], [ %i.ao, %bb.c ]
  ret ptr %.0
}

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @dshash_find_or_insert_extended(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.c(ptr noundef %1, i64 noundef %i.d, ptr noundef %i.f) #11, !inline_history !0 ; 4 uses
  %i.h = lshr i32 %i.g, 25
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 14 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %4 = and i32 %3, 1
  %.not.i41 = icmp eq i32 %4, 0
  %spec.select.i = select i1 %.not.i41, i32 5, i32 7
  br label %bb.b

bb.b:                                             ; preds = %resize.exit, %bb.a
  %i.q = phi ptr [ %.pre, %resize.exit ], [ %i.k, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.i
  %i.t = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.s, i32 noundef 0) #11 ; 0 uses
  %i.u = load i64, ptr %i.m, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 3096
  %i.x = load i64, ptr %i.w, align 8
  %.not.i = icmp eq i64 %i.u, %i.x
  br i1 %.not.i, label %.ensure_valid_bucket_pointers.exit_crit_edge, label %bb.c

.ensure_valid_bucket_pointers.exit_crit_edge:     ; preds = %bb.b
  %.pre60 = load ptr, ptr %i.n, align 8
  br label %ensure_valid_bucket_pointers.exit

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 3104
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = tail call ptr @dsa_get_address(ptr noundef %i.y, i64 noundef %i.aa) #11 ; 2 uses
  store ptr %i.ab, ptr %i.n, align 8
  %i.ac = load ptr, ptr %i.j, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3096
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  store i64 %i.ae, ptr %i.m, align 8
  br label %ensure_valid_bucket_pointers.exit

ensure_valid_bucket_pointers.exit:                ; preds = %.ensure_valid_bucket_pointers.exit_crit_edge, %bb.c
  %i.af = phi i64 [ %i.u, %.ensure_valid_bucket_pointers.exit_crit_edge ], [ %i.ae, %bb.c ]
  %i.ag = phi ptr [ %.pre60, %.ensure_valid_bucket_pointers.exit_crit_edge ], [ %i.ab, %bb.c ]
  %i.ah = trunc i64 %i.af to i32
  %i.ai = sub i32 32, %i.ah
  %i.aj = lshr i32 %i.g, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %.not14.i = icmp eq i64 %i.am, 0
  br i1 %.not14.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ensure_valid_bucket_pointers.exit, %bb.d
  %.0915.i = phi i64 [ %i.av, %bb.d ], [ %i.am, %ensure_valid_bucket_pointers.exit ]
  %i.an = load ptr, ptr %0, align 8
  %i.ao = tail call ptr @dsa_get_address(ptr noundef %i.an, i64 noundef %.0915.i) #11 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.o, align 8
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = load ptr, ptr %i.e, align 8
  %i.at = tail call i32 %i.aq(ptr noundef %1, ptr noundef nonnull %i.ap, i64 noundef %i.ar, ptr noundef %i.as) #11, !inline_history !1
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %find_in_bucket.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.av = load i64, ptr %i.ao, align 8            ; 2 uses
  %.not.i40 = icmp eq i64 %i.av, 0
  br i1 %.not.i40, label %.loopexit, label %.lr.ph.i

find_in_bucket.exit:                              ; preds = %.lr.ph.i
  store i8 1, ptr %2, align 1
  br label %bb.n

.loopexit:                                        ; preds = %bb.d, %ensure_valid_bucket_pointers.exit
  store i8 0, ptr %2, align 1
  %i.aw = load i64, ptr %i.p, align 8
  %i.ax = load i64, ptr %i.m, align 8             ; 2 uses
  %i.ay = add i64 %i.ax, -7
  %i.az = shl nuw i64 1, %i.ay                    ; 2 uses
  %i.ba = lshr i64 %i.az, 1
  %i.bb = lshr i64 %i.az, 2
  %i.bc = add nuw nsw i64 %i.ba, %i.bb
  %i.bd = icmp ugt i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.e, label %bb.k

bb.e:                                             ; preds = %.loopexit
  %i.be = load ptr, ptr %i.j, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.i
  tail call void @LWLockRelease(ptr noundef nonnull %i.bg) #11
  %i.bh = load i64, ptr %i.m, align 8
  %i.bi = add i64 %i.bh, 1                        ; 4 uses
  %i.bj = load ptr, ptr %i.j, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.bk, i32 noundef 0) #11 ; 0 uses
  %i.bm = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3096
  %i.bo = load i64, ptr %i.bn, align 8
  %.not57.peel.i = icmp ult i64 %i.bo, %i.bi
  br i1 %.not57.peel.i, label %.peel.next.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  tail call void @LWLockRelease(ptr noundef nonnull %i.bp) #11
  br label %resize.exit

.peel.next.i:                                     ; preds = %bb.e, %.peel.next.i
  %.05359.i = phi i64 [ %i.bu, %.peel.next.i ], [ 1, %bb.e ] ; 2 uses
  %i.bq = load ptr, ptr %i.j, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.05359.i
  %i.bt = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.bs, i32 noundef 0) #11 ; 0 uses
  %i.bu = add nuw nsw i64 %.05359.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, 128
  br i1 %exitcond.not.i, label %.loopexit68.i, label %.peel.next.i, !llvm.loop !10

.loopexit68.i:                                    ; preds = %.peel.next.i
  %i.bv = load ptr, ptr %0, align 8
  %i.bw = shl i64 8, %i.bi
  %i.bx = tail call i64 @dsa_allocate_extended(ptr noundef %i.bv, i64 noundef %i.bw, i32 noundef %spec.select.i) #11 ; 3 uses
  %.not55.i = icmp eq i64 %i.bx, 0
  br i1 %.not55.i, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %.loopexit68.i, %.preheader.i
  %.164.i = phi i64 [ %i.cb, %.preheader.i ], [ 0, %.loopexit68.i ] ; 2 uses
  %i.by = load ptr, ptr %i.j, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %.164.i
  tail call void @LWLockRelease(ptr noundef nonnull %i.ca) #11
  %i.cb = add nuw nsw i64 %.164.i, 1              ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.cb, 128
  br i1 %exitcond70.not.i, label %resize.exit.thread, label %.preheader.i, !llvm.loop !11

bb.g:                                             ; preds = %.loopexit68.i
  %i.cc = load ptr, ptr %0, align 8
  %i.cd = tail call ptr @dsa_get_address(ptr noundef %i.cc, i64 noundef %i.bx) #11 ; 2 uses
  %i.ce = load ptr, ptr %i.j, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 3096
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = trunc i64 %i.bi to i32
  %i.ci = sub i32 32, %i.ch
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.g
  %.262.i = phi i64 [ 0, %bb.g ], [ %i.cv, %._crit_edge.i ] ; 2 uses
  %i.cj = load ptr, ptr %i.n, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.262.i
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %.not5660.i = icmp eq i64 %i.cl, 0
  br i1 %.not5660.i, label %._crit_edge.i, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.h, %.lr.ph.i42
  %.05161.i = phi i64 [ %i.co, %.lr.ph.i42 ], [ %i.cl, %bb.h ] ; 2 uses
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = tail call ptr @dsa_get_address(ptr noundef %i.cm, i64 noundef %.05161.i) #11 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = lshr i32 %i.cq, %i.ci
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cs ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  store i64 %i.cu, ptr %i.cn, align 8
  store i64 %.05161.i, ptr %i.ct, align 8
  %.not56.i = icmp eq i64 %i.co, 0
  br i1 %.not56.i, label %._crit_edge.i, label %.lr.ph.i42, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %bb.h
  %i.cv = add i64 %.262.i, 1                      ; 2 uses
  %.2.highbits.i = lshr i64 %i.cv, %i.cg
  %i.cw = icmp eq i64 %.2.highbits.i, 0
  br i1 %i.cw, label %bb.h, label %bb.i, !llvm.loop !13

bb.i:                                             ; preds = %._crit_edge.i
  %i.cx = load ptr, ptr %i.j, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 3104 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8
  store i64 %i.bx, ptr %i.cy, align 8
  %i.da = load ptr, ptr %i.j, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 3096
  store i64 %i.bi, ptr %i.db, align 8
  store ptr %i.cd, ptr %i.n, align 8
  %i.dc = load ptr, ptr %0, align 8
  tail call void @dsa_free(ptr noundef %i.dc, i64 noundef %i.cz) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.363.i = phi i64 [ 0, %bb.i ], [ %i.dg, %bb.j ] ; 2 uses
  %i.dd = load ptr, ptr %i.j, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.363.i
  tail call void @LWLockRelease(ptr noundef nonnull %i.df) #11
  %i.dg = add nuw nsw i64 %.363.i, 1              ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.dg, 128
  br i1 %exitcond69.not.i, label %resize.exit, label %bb.j, !llvm.loop !14

resize.exit:                                      ; preds = %bb.j, %bb.f
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.b

bb.k:                                             ; preds = %.loopexit
  %i.dh = load ptr, ptr %i.n, align 8
  %5 = shl i32 %3, 1
  %6 = and i32 %5, 2
  %i.di = load ptr, ptr %0, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = add i64 %i.dk, 16
  %i.dm = tail call i64 @dsa_allocate_extended(ptr noundef %i.di, i64 noundef %i.dl, i32 noundef %6) #11 ; 3 uses
  %.not.i43 = icmp eq i64 %i.dm, 0
  br i1 %.not.i43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dn = load ptr, ptr %i.j, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.i
  tail call void @LWLockRelease(ptr noundef nonnull %i.dp) #11
  br label %resize.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.dq = trunc i64 %i.ax to i32
  %i.dr = sub i32 32, %i.dq
  %i.ds = lshr i32 %i.g, %i.dr
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %0, align 8
  %i.dw = tail call ptr @dsa_get_address(ptr noundef %i.dv, i64 noundef %i.dm) #11 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load i64, ptr %i.a, align 8
  %i.eb = load ptr, ptr %i.e, align 8
  tail call void %i.dz(ptr noundef nonnull %i.dx, ptr noundef %1, i64 noundef %i.ea, ptr noundef %i.eb) #11, !inline_history !15
  %i.ec = load i64, ptr %i.du, align 8
  store i64 %i.ec, ptr %i.dw, align 8
  store i64 %i.dm, ptr %i.du, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 %i.g, ptr %i.ed, align 8
  %i.ee = load i64, ptr %i.p, align 8
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.p, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %find_in_bucket.exit
  %.0 = phi ptr [ %i.ao, %find_in_bucket.exit ], [ %i.dw, %bb.m ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %resize.exit.thread

resize.exit.thread:                               ; preds = %.preheader.i, %bb.n, %bb.l
  %.037 = phi ptr [ %i.eg, %bb.n ], [ null, %bb.l ], [ null, %.preheader.i ]
  ret ptr %.037
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @dshash_delete_key(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.c(ptr noundef %1, i64 noundef %i.d, ptr noundef %i.f) #11, !inline_history !0 ; 2 uses
  %i.h = lshr i32 %i.g, 25
  %i.i = zext nneg i32 %i.h to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.i
  %i.n = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.m, i32 noundef 0) #11 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3096
  %i.s = load i64, ptr %i.r, align 8
  %.not.i = icmp eq i64 %i.p, %i.s
  br i1 %.not.i, label %.ensure_valid_bucket_pointers.exit_crit_edge, label %bb.b

.ensure_valid_bucket_pointers.exit_crit_edge:     ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %ensure_valid_bucket_pointers.exit

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 3104
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call ptr @dsa_get_address(ptr noundef %i.t, i64 noundef %i.v) #11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.j, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3096
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  store i64 %i.aa, ptr %i.o, align 8
  br label %ensure_valid_bucket_pointers.exit

ensure_valid_bucket_pointers.exit:                ; preds = %.ensure_valid_bucket_pointers.exit_crit_edge, %bb.b
  %i.ab = phi i64 [ %i.p, %.ensure_valid_bucket_pointers.exit_crit_edge ], [ %i.aa, %bb.b ]
  %i.ac = phi ptr [ %.pre, %.ensure_valid_bucket_pointers.exit_crit_edge ], [ %i.w, %bb.b ]
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = sub i32 32, %i.ad
  %i.af = lshr i32 %i.g, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %ensure_valid_bucket_pointers.exit
  %.014.i = phi ptr [ %i.ah, %ensure_valid_bucket_pointers.exit ], [ %i.al, %bb.d ] ; 3 uses
  %i.aj = load i64, ptr %.014.i, align 8          ; 2 uses
  %.not.not.not.not.i.not.not.not.not.not = icmp ne i64 %i.aj, 0 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.d, label %delete_key_from_bucket.exit

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %0, align 8
  %i.al = tail call ptr @dsa_get_address(ptr noundef %i.ak, i64 noundef %i.aj) #11 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = load i64, ptr %i.a, align 8
  %i.ap = load ptr, ptr %i.e, align 8
  %i.aq = tail call i32 %i.an(ptr noundef %1, ptr noundef nonnull %i.am, i64 noundef %i.ao, ptr noundef %i.ap) #11, !inline_history !17
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.as = load i64, ptr %i.al, align 8
  %i.at = load ptr, ptr %0, align 8
  %i.au = load i64, ptr %.014.i, align 8
  tail call void @dsa_free(ptr noundef %i.at, i64 noundef %i.au) #11
  store i64 %i.as, ptr %.014.i, align 8
  %i.av = load ptr, ptr %i.j, align 8
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.ax, align 8
  br label %delete_key_from_bucket.exit

delete_key_from_bucket.exit:                      ; preds = %bb.c, %bb.e
  %i.ba = load ptr, ptr %i.j, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.i
  tail call void @LWLockRelease(ptr noundef nonnull %i.bc) #11
  ret i1 %.not.not.not.not.i.not.not.not.not.not
}

; Function Attrs: nounwind uwtable
define dso_local void @dshash_delete_entry(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %i.i = sub i64 32, %i.h
  %i.j = lshr i64 %i.d, %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.013.i.i = phi ptr [ %i.k, %bb.a ], [ %i.n, %bb.c ] ; 3 uses
  %i.l = load i64, ptr %.013.i.i, align 8         ; 2 uses
  %.not.not.not.not.i.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.not.not.not.i.not.i, label %delete_item.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8
  %i.n = tail call ptr @dsa_get_address(ptr noundef %i.m, i64 noundef %i.l) #11 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8
  %i.q = load ptr, ptr %0, align 8
  %i.r = load i64, ptr %.013.i.i, align 8
  tail call void @dsa_free(ptr noundef %i.q, i64 noundef %i.r) #11
  store i64 %i.p, ptr %.013.i.i, align 8
  %i.s = lshr i64 %i.d, 25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.w, align 8
  br label %delete_item.exit

delete_item.exit:                                 ; preds = %bb.b, %bb.d
  %i.z = lshr i32 %i.c, 25
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.aa
  tail call void @LWLockRelease(ptr noundef nonnull %i.ae) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dshash_release_lock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 25
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
