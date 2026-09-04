Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@clusterManagerGetSlotOwner:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !87
  %i.b = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.a, ptr noundef nonnull @.str.315) #32 ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %clusterManagerCheckRedisReply.exit.thread.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr %i.b, align 8, !tbaa !50
  switch i32 %i.c, label %bb.e [
    i32 6, label %clusterManagerCheckRedisReply.exit.thread.thread74
    i32 2, label %.preheader
  ]

clusterManagerCheckRedisReply.exit.thread.thread74: ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @zmalloc(i64 noundef %i.f) #36 ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = load i64, ptr %i.d, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  %i.l = tail call i64 @redis_strlcpy(ptr noundef %i.g, ptr noundef %i.i, i64 noundef %i.k) #32 ; 0 uses
  br label %.thread69

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.thread69, label %.lr.ph80

.lr.ph80:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.7, i32 noundef 4878, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.f:                                             ; preds = %.lr.ph80, %select.unfold
  %i.p = phi i64 [ %i.n, %.lr.ph80 ], [ %i.bs, %select.unfold ] ; 2 uses
  %.04379 = phi i64 [ 0, %.lr.ph80 ], [ %i.bt, %select.unfold ] ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.04379
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46
  %i.x = icmp ugt i64 %i.w, 2
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.7, i32 noundef 4882, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !132
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp slt i32 %1, %i.ad
  br i1 %i.ae, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !132
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp sgt i32 %1, %i.aj
  br i1 %i.ak, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !50
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !46 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.7, i32 noundef 4888, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.n:                                             ; preds = %bb.l
  %.not52 = icmp eq i64 %i.aq, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47 ; 3 uses
  br i1 %.not52, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %.not53 = icmp eq ptr %i.av, null
  br i1 %.not53, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = call fastcc ptr @clusterManagerNodeByName(ptr noundef nonnull %i.av)
  br label %bb.u

.thread:                                          ; preds = %bb.n, %bb.o
  %i.ax = load ptr, ptr %.pre, align 8, !tbaa !49
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %.not54 = icmp eq ptr %i.az, null
  br i1 %.not54, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread
  call void @__assert_fail(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.7, i32 noundef 4896, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.r:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !132
  %i.be = trunc i64 %i.bd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  call void @listRewind(ptr noundef %i.bf, ptr noundef nonnull %3) #32
  %i.bg = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not5576 = icmp eq ptr %i.bg, null
  br i1 %.not5576, label %.thread62, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %i.bh = phi ptr [ %i.br, %bb.t ], [ %i.bg, %bb.r ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !99 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !81
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bl, ptr noundef nonnull dereferenceable(1) %i.az) #34
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !82
  %i.bq = icmp eq i32 %i.bp, %i.be
  br i1 %i.bq, label %.thread62, label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %i.br = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not55 = icmp eq ptr %i.br, null
  br i1 %.not55, label %.thread62, label %.lr.ph

.thread62:                                        ; preds = %bb.t, %bb.s, %bb.r
  %.3 = phi ptr [ null, %bb.r ], [ %i.bj, %bb.s ], [ null, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.u

bb.u:                                             ; preds = %.thread62, %bb.p
  %.4 = phi ptr [ %i.aw, %bb.p ], [ %.3, %.thread62 ] ; 2 uses
  %.not56 = icmp eq ptr %.4, null
  br i1 %.not56, label %.select.unfold_crit_edge, label %.thread69

.select.unfold_crit_edge:                         ; preds = %bb.u
  %.pre84 = load i64, ptr %i.m, align 8, !tbaa !46
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.j, %bb.i
  %i.bs = phi i64 [ %.pre84, %.select.unfold_crit_edge ], [ %i.p, %bb.j ], [ %i.p, %bb.i ] ; 2 uses
  %i.bt = add nuw i64 %.04379, 1                  ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %bb.f, label %.thread69, !llvm.loop !532

.thread69:                                        ; preds = %select.unfold, %bb.u, %.preheader, %clusterManagerCheckRedisReply.exit.thread.thread74
  %.771 = phi ptr [ null, %clusterManagerCheckRedisReply.exit.thread.thread74 ], [ null, %.preheader ], [ null, %select.unfold ], [ %.4, %bb.u ]
  call void @freeReplyObject(ptr noundef nonnull %i.b) #32
  br label %clusterManagerCheckRedisReply.exit.thread.thread

clusterManagerCheckRedisReply.exit.thread.thread: ; preds = %bb.c, %.thread69
  %.772 = phi ptr [ %.771, %.thread69 ], [ null, %bb.c ]
  ret ptr %.772
}

declare noalias ptr @zstrdup(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @clusterManagerMigrateKeysInReply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca [255 x i8], align 16              ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %6 = select i1 %.not, i32 7, i32 8              ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !133
  %.not102 = icmp eq ptr %i.d, null
  %7 = add nuw nsw i32 %6, 2
  %spec.select = select i1 %.not102, i32 %6, i32 %7
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !134
  %.not103 = icmp ne ptr %i.e, null
  %8 = zext i1 %.not103 to i32
  %.197 = add nuw nsw i32 %spec.select, %8
  %i.f = zext nneg i32 %.197 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = shl i64 %i.i, 3                          ; 2 uses
  %i.k = tail call noalias ptr @zcalloc(i64 noundef %i.j) #36 ; 16 uses
  %i.l = tail call noalias ptr @zcalloc(i64 noundef %i.j) #36 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !82
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.334, i32 noundef %i.n) #32 ; 0 uses
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 10, ptr noundef nonnull @.str.334, i32 noundef %4) #32 ; 0 uses
  store ptr @.str.335, ptr %i.k, align 8, !tbaa !40
  store i64 7, ptr %i.l, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !40
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #34
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.a, ptr %i.v, align 8, !tbaa !40
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #34
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @.str.34, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr @.str.336, ptr %i.aa, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 1, ptr %i.ab, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !40
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !38
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr @.str.337, ptr %i.af, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 7, ptr %i.ag, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 7, %bb.b ], [ 6, %bb.a ]        ; 6 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !133 ; 5 uses
  %.not104 = icmp eq ptr %i.ah, null
  br i1 %.not104, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !134 ; 3 uses
  %.not105 = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0 ; 2 uses
  %i.al = add nuw nsw i64 %.0, 1                  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.al ; 2 uses
  %i.ao = add nuw nsw i64 %.0, 2                  ; 3 uses
  br i1 %.not105, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @.str.338, ptr %i.aj, align 8, !tbaa !40
  store i64 5, ptr %i.ak, align 8, !tbaa !38
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !40
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #34
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ao
  store ptr %i.ah, ptr %i.aq, align 8, !tbaa !40
  %i.ar = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #34
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !38
  %i.at = add nuw nsw i64 %.0, 3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr @.str.339, ptr %i.aj, align 8, !tbaa !40
  store i64 4, ptr %i.ak, align 8, !tbaa !38
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !40
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #34
  store i64 %i.au, ptr %i.an, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.1 = phi i64 [ %i.at, %bb.e ], [ %i.ao, %bb.f ], [ %.0, %bb.c ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.1
  store ptr @.str.340, ptr %i.av, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.1
  store i64 4, ptr %i.aw, align 8, !tbaa !38
  %i.ax = add nuw nsw i64 %.1, 1                  ; 3 uses
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !46
  %.not115 = icmp eq i64 %i.ay, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not107 = icmp eq ptr %5, null
  br i1 %.not107, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.094110.us = phi i64 [ %i.bo, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.094110.us
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !50
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.bf = add i64 %.094110.us, %i.ax              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !70
  %i.bk = call ptr @hi_sdsnewlen(ptr noundef %i.bh, i64 noundef %i.bj) #32
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bf
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !40
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !70
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bf
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !38
  %i.bo = add nuw i64 %.094110.us, 1              ; 2 uses
  %i.bp = load i64, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !533

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.094110 = phi i64 [ %i.cg, %bb.i ], [ 0, %.lr.ph ] ; 4 uses
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.094110
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !50
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.i, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @__assert_fail(ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.7, i32 noundef 5165, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerMigrateKeysInReply) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph.split
  %i.bw = add i64 %.094110, %i.ax                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !70
  %i.cb = call ptr @hi_sdsnewlen(ptr noundef %i.by, i64 noundef %i.ca) #32
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bw
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !40
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 %.094110
  store i8 46, ptr %i.cf, align 1, !tbaa !73
  %i.cg = add nuw i64 %.094110, 1                 ; 2 uses
  %i.ch = load i64, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.ci = icmp ult i64 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph.split, label %._crit_edge.thread, !llvm.loop !533

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.lcssa = phi i64 [ 0, %bb.g ], [ %i.bp, %bb.h ]
  %.not106 = icmp eq ptr %5, null
  br i1 %.not106, label %bb.j, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge
  %.lcssa131 = phi i64 [ %.lcssa, %._crit_edge ], [ %i.ch, %bb.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 %.lcssa131
  store i8 0, ptr %i.cj, align 1, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr null, ptr %i.c, align 8, !tbaa !39
  %i.ck = load ptr, ptr %0, align 8, !tbaa !87
  %i.cl = trunc i64 %i.i to i32
  %i.cm = call i32 @redisAppendCommandArgv(ptr noundef %i.ck, i32 noundef %i.cl, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #32 ; 0 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !87
  %i.co = call i32 @redisGetReply(ptr noundef %i.cn, ptr noundef nonnull %i.c) #32
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.ax
  %i.cp = load i64, ptr %i.g, align 8, !tbaa !46
  %.not116 = icmp eq i64 %i.cp, 0
  br i1 %.not116, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.j, %.lr.ph113
  %.195111 = phi i64 [ %i.cr, %.lr.ph113 ], [ 0, %bb.j ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.195111
  %i.cq = load ptr, ptr %gep, align 8, !tbaa !40
  call void @hi_sdsfree(ptr noundef %i.cq) #32
  %i.cr = add nuw i64 %.195111, 1                 ; 2 uses
  %i.cs = load i64, ptr %i.g, align 8, !tbaa !46
  %i.ct = icmp ult i64 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph113, label %._crit_edge114, !llvm.loop !534

._crit_edge114:                                   ; preds = %.lr.ph113, %bb.j
  %i.cu = icmp eq i32 %i.co, 0
  %i.cv = load ptr, ptr %i.c, align 8
  %spec.select108 = select i1 %i.cu, ptr %i.cv, ptr null
  call void @zfree(ptr noundef nonnull %i.k) #32
  call void @zfree(ptr noundef nonnull %i.l) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
end_hunk_0
