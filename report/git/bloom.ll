Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/bloom?download=true
inline.NumInlined: 43
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@bloom_key_fill:bb.a
  %.0 = phi i32 [ %i.ek, %murmur3_seeded_v2.exit34 ], [ %i.em, %bb.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !30
  %i.ep = zext i32 %i.eo to i64
  %i.eq = tail call ptr @xcalloc(i64 noundef %i.ep, i64 noundef 4) #16 ; 2 uses
  store ptr %i.eq, ptr %0, align 8, !tbaa !32
  %i.er = load i32, ptr %i.en, align 4, !tbaa !30
  %.not = icmp eq i32 %i.er, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.j ] ; 3 uses
  %i.es = trunc nuw nsw i64 %indvars.iv to i32
  %i.et = mul i32 %.0, %i.es
  %i.eu = add i32 %i.et, %.018
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = load i32, ptr %i.en, align 4, !tbaa !30
  %i.ex = zext i32 %i.ew to i64
  %i.ey = icmp samesign ult i64 %indvars.iv.next, %i.ex
  br i1 %i.ey, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @murmur3_seeded_v1(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %2, 2                           ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.051 = phi i32 [ %0, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  %i.d = shl nuw nsw i64 %indvars.iv, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !22
  %i.g = sext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  %i.j = sext i8 %i.i to i32
  %i.k = shl nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = sext i8 %i.m to i32
  %i.o = shl nsw i32 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = sext i8 %i.q to i32
  %i.s = shl nsw i32 %i.r, 24
  %i.t = or i32 %i.k, %i.g
  %i.u = or i32 %i.t, %i.o
  %i.v = or i32 %i.u, %i.s                        ; 2 uses
  %i.w = mul i32 %i.v, -862048943
  %i.x = mul i32 %i.v, 380141568
  %i.y = lshr i32 %i.w, 17
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = mul i32 %i.z, 461845907
  %i.ab = xor i32 %i.aa, %.051                    ; 2 uses
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 13)
  %i.ad = mul i32 %i.ac, 5
  %i.ae = add i32 %i.ad, -430675100               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %0, %bb.a ], [ %i.ae, %.lr.ph ] ; 2 uses
  %sext = shl i64 %i.a, 32
  %i.af = ashr exact i64 %sext, 30
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 3 uses
  %i.ah = and i64 %2, 3
  switch i64 %i.ah, label %default.unreachable53 [
    i64 3, label %bb.b
    i64 2, label %bb.c
    i64 1, label %bb.d
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = sext i8 %i.aj to i32
  %i.al = shl nsw i32 %i.ak, 16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.046 = phi i32 [ %i.al, %bb.b ], [ 0, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ao = sext i8 %i.an to i32
  %i.ap = shl nsw i32 %i.ao, 8
  %i.aq = xor i32 %i.ap, %.046
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.147 = phi i32 [ %i.aq, %bb.c ], [ 0, %._crit_edge ]
  %i.ar = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.as = sext i8 %i.ar to i32
  %i.at = xor i32 %.147, %i.as                    ; 2 uses
  %i.au = mul i32 %i.at, -862048943
  %i.av = mul i32 %i.at, 380141568
  %i.aw = lshr i32 %i.au, 17
  %i.ax = or disjoint i32 %i.aw, %i.av
  %i.ay = mul i32 %i.ax, 461845907
  %i.az = xor i32 %i.ay, %.0.lcssa
  br label %bb.e

default.unreachable53:                            ; preds = %._crit_edge
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.1 = phi i32 [ %i.az, %bb.d ], [ %.0.lcssa, %._crit_edge ]
  %i.ba = trunc i64 %2 to i32
  %i.bb = xor i32 %.1, %i.ba                      ; 2 uses
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = xor i32 %i.bc, %i.bb
  %i.be = mul i32 %i.bd, -2048144789              ; 2 uses
  %i.bf = lshr i32 %i.be, 13
  %i.bg = xor i32 %i.bf, %i.be
  %i.bh = mul i32 %i.bg, -1028477387              ; 2 uses
  %i.bi = lshr i32 %i.bh, 16
  %i.bj = xor i32 %i.bi, %i.bh
  ret i32 %i.bj
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @bloom_key_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.a) #16
  store ptr null, ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @add_key_to_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !33
  %i.i = zext i32 %i.h to i64
  %i.j = urem i64 %i.i, %i.c                      ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = trunc i64 %i.j to i8
  %i.m = and i8 %i.l, 7
  %i.n = shl nuw i8 1, %i.m
  %i.o = load ptr, ptr %1, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = or i8 %i.n, %i.q
  store i8 %i.r, ptr %i.p, align 1, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !30
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_bloom_filters() local_unnamed_addr #7 {
bb.a:
  store i1 true, ptr @bloom_filters.1, align 4
  store i1 true, ptr @bloom_filters.0, align 8
  store i32 0, ptr @bloom_filters.2, align 8, !tbaa !37
  store ptr null, ptr @bloom_filters.3, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @deinit_bloom_filters() local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @bloom_filters.2, align 8, !tbaa !37 ; 2 uses
  %.not5.i = icmp eq i32 %i.a, 0
  %.pre5 = load ptr, ptr @bloom_filters.3, align 8, !tbaa !38 ; 3 uses
  br i1 %.not5.i, label %deep_clear_bloom_filter_slab.exit, label %.lr.ph3.preheader.i

.lr.ph3.preheader.i:                              ; preds = %bb.a
  %.pre.i.b = load i1, ptr @bloom_filters.0, align 8
  %.pre.i.a = select i1 %.pre.i.b, i32 16383, i32 0 ; 2 uses
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.loopexit.i, %.lr.ph3.preheader.i
  %.pre10.i = phi ptr [ %.pre5, %.lr.ph3.preheader.i ], [ %.pre1014.i, %.loopexit.i ] ; 3 uses
  %0 = phi ptr [ %.pre5, %.lr.ph3.preheader.i ], [ %2, %.loopexit.i ] ; 2 uses
  %i.b = phi i32 [ %i.a, %.lr.ph3.preheader.i ], [ %3, %.loopexit.i ]
  %i.c = phi i32 [ %.pre.i.a, %.lr.ph3.preheader.i ], [ %4, %.loopexit.i ] ; 2 uses
  %1 = phi i32 [ %.pre.i.a, %.lr.ph3.preheader.i ], [ %5, %.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph3.preheader.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %.not.i = icmp ne ptr %i.e, null
  %i.f = icmp ne i32 %1, 0
  %or.cond.i = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %or.cond.i, label %.lr.ph.split.i, label %.loopexit.i

.lr.ph.split.i:                                   ; preds = %.lr.ph3.i, %free_one_bloom_filter.exit.i
  %.pre1016.i = phi ptr [ %.pre1015.i, %free_one_bloom_filter.exit.i ], [ %.pre10.i, %.lr.ph3.i ]
  %i.g = phi i32 [ %i.p, %free_one_bloom_filter.exit.i ], [ %i.c, %.lr.ph3.i ]
  %i.h = phi ptr [ %i.q, %free_one_bloom_filter.exit.i ], [ %.pre10.i, %.lr.ph3.i ] ; 2 uses
  %.01.i = phi i32 [ %i.r, %free_one_bloom_filter.exit.i ], [ 0, %.lr.ph3.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %free_one_bloom_filter.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.i
  %.b = load i1, ptr @bloom_filters.1, align 4
  %i.k = zext i32 %.01.i to i64
  %i.l = select i1 %.b, i64 %i.k, i64 0
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.o) #16
  %.pre9.i = load ptr, ptr @bloom_filters.3, align 8, !tbaa !38 ; 2 uses
  %.pre11.i.b = load i1, ptr @bloom_filters.0, align 8
  %.pre11.i = select i1 %.pre11.i.b, i32 16383, i32 0
  br label %free_one_bloom_filter.exit.i

free_one_bloom_filter.exit.i:                     ; preds = %bb.b, %.lr.ph.split.i
  %.pre1015.i = phi ptr [ %.pre1016.i, %.lr.ph.split.i ], [ %.pre9.i, %bb.b ] ; 2 uses
  %i.p = phi i32 [ %i.g, %.lr.ph.split.i ], [ %.pre11.i, %bb.b ] ; 4 uses
  %i.q = phi ptr [ %i.h, %.lr.ph.split.i ], [ %.pre9.i, %bb.b ] ; 2 uses
  %i.r = add nuw i32 %.01.i, 1                    ; 2 uses
  %i.s = icmp ult i32 %i.r, %i.p
  br i1 %i.s, label %.lr.ph.split.i, label %.loopexit.loopexit6.i, !llvm.loop !59

.loopexit.loopexit6.i:                            ; preds = %free_one_bloom_filter.exit.i
  %.pre12.i = load i32, ptr @bloom_filters.2, align 8, !tbaa !37
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit6.i, %.lr.ph3.i
  %.pre1014.i = phi ptr [ %.pre1015.i, %.loopexit.loopexit6.i ], [ %.pre10.i, %.lr.ph3.i ] ; 2 uses
  %2 = phi ptr [ %i.q, %.loopexit.loopexit6.i ], [ %0, %.lr.ph3.i ]
  %3 = phi i32 [ %.pre12.i, %.loopexit.loopexit6.i ], [ %i.b, %.lr.ph3.i ] ; 3 uses
  %4 = phi i32 [ %i.p, %.loopexit.loopexit6.i ], [ %i.c, %.lr.ph3.i ]
  %5 = phi i32 [ %i.p, %.loopexit.loopexit6.i ], [ %1, %.lr.ph3.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = zext i32 %3 to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %.lr.ph3.i, label %._crit_edge.i, !llvm.loop !60

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.v = icmp eq i32 %3, 0
  br i1 %i.v, label %deep_clear_bloom_filter_slab.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.i
  %i.w = load ptr, ptr @bloom_filters.3, align 8, !tbaa !38
  %i.x = load i32, ptr @bloom_filters.2, align 8, !tbaa !37
  %i.y = zext i32 %i.x to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.aa) #16
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next.i.i, %i.y
  br i1 %i.ab, label %.lr.ph.i.i, label %deep_clear_bloom_filter_slab.exit.loopexit, !llvm.loop !61

deep_clear_bloom_filter_slab.exit.loopexit:       ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr @bloom_filters.3, align 8, !tbaa !38
  br label %deep_clear_bloom_filter_slab.exit

deep_clear_bloom_filter_slab.exit:                ; preds = %deep_clear_bloom_filter_slab.exit.loopexit, %bb.a, %._crit_edge.i
  %i.ac = phi ptr [ %.pre, %deep_clear_bloom_filter_slab.exit.loopexit ], [ %.pre5, %bb.a ], [ %.pre1014.i, %._crit_edge.i ]
  store i32 0, ptr @bloom_filters.2, align 8, !tbaa !37
  tail call void @free(ptr noundef %i.ac) #16
  store ptr null, ptr @bloom_filters.3, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bloom_keyvec_new(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.030 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.d ]  ; 2 uses
  %.0 = phi i64 [ 1, %bb.a ], [ %.1, %bb.d ]      ; 4 uses
  %i.a = load i8, ptr %.030, align 1, !tbaa !22
  switch i8 %i.a, label %bb.d [
    i8 0, label %bb.e
    i8 47, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %.0, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i64 [ %i.b, %bb.c ], [ %.0, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.030, i64 1
  br label %bb.b, !llvm.loop !63

bb.e:                                             ; preds = %bb.b
  %i.d = shl i64 %.0, 3
  %i.e = add i64 %i.d, 8
  %i.f = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %i.e) #16 ; 5 uses
  %.not36 = icmp eq ptr %i.f, null
  br i1 %.not36, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %.0, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @bloom_key_fill(ptr noundef nonnull %i.g, ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %i.h = icmp sgt i64 %1, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.i = getelementptr i8, ptr %0, i64 %1
  %.13137 = getelementptr i8, ptr %i.i, i64 -1
  %i.j = ptrtoint ptr %0 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.13139 = phi ptr [ %.13137, %.lr.ph ], [ %.131, %bb.i ] ; 3 uses
  %.238 = phi i64 [ 1, %.lr.ph ], [ %.3, %bb.i ]  ; 3 uses
  %i.k = load i8, ptr %.13139, align 1, !tbaa !22
  %i.l = icmp eq i8 %i.k, 47
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = add i64 %.238, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.238
  %i.o = ptrtoint ptr %.13139 to i64
  %i.p = sub i64 %i.o, %i.j
  tail call void @bloom_key_fill(ptr noundef nonnull %i.n, ptr noundef %0, i64 noundef %i.p, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i64 [ %i.m, %bb.h ], [ %.238, %bb.g ] ; 2 uses
  %.131 = getelementptr inbounds i8, ptr %.13139, i64 -1 ; 2 uses
  %i.q = icmp ugt ptr %.131, %0
  br i1 %i.q, label %bb.g, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %.2.lcssa = phi i64 [ 1, %bb.f ], [ %.3, %bb.i ]
  %i.r = load i64, ptr %i.f, align 8, !tbaa !41
  %i.s = icmp eq i64 %.2.lcssa, %i.r
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 317, ptr noundef nonnull @__PRETTY_FUNCTION__.bloom_keyvec_new) #17
  unreachable

bb.k:                                             ; preds = %._crit_edge, %bb.e
  ret ptr %i.f
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @bloom_keyvec_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !41
  %.not8 = icmp eq i64 %i.a, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  tail call void @free(ptr noundef nonnull %0) #16
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ]  ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.07 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.d) #16
  store ptr null, ptr %i.c, align 8, !tbaa !32
  %i.e = add nuw i64 %.07, 1                      ; 2 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !41
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %._crit_edge, !llvm.loop !65

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @get_bloom_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @get_or_compute_bloom_filter(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @prepare_repo_settings(ptr noundef %0) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi ptr [ %i.a, %bb.d ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @get_or_compute_bloom_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.diff_options, align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.hashmap, align 8            ; 13 uses
  %7 = alloca %struct.hashmap_iter, align 8       ; 7 uses
  %8 = alloca %struct.bloom_key, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %.not = icmp eq ptr %4, null                    ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %4, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.b183 = load i1, ptr @bloom_filters.0, align 8
  br i1 %.b183, label %bb.d, label %.thread130

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr i8, ptr %1, i64 72
  %.val = load i32, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.c = udiv i32 %.val, 16383                    ; 7 uses
  %i.d = urem i32 %.val, 16383
  %i.e = load i32, ptr @bloom_filters.2, align 8, !tbaa !37
  %.not.i.i = icmp ugt i32 %i.e, %i.c
  %.pre.i.i = load ptr, ptr @bloom_filters.3, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call ptr @xrealloc(ptr noundef %.pre.i.i, i64 noundef %i.h) #16 ; 4 uses
  store ptr %i.i, ptr @bloom_filters.3, align 8, !tbaa !38
  %i.j = load i32, ptr @bloom_filters.2, align 8, !tbaa !37 ; 9 uses
  %.not331.i.i = icmp ugt i32 %i.j, %i.c
  br i1 %.not331.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.k = add i32 %i.j, 1
  %i.l = add nuw nsw i32 %i.c, 1
  %i.m = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.l)
  %i.n = sub i32 %i.m, %i.j                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader194, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.o = add i32 %i.j, 1
  %i.p = add nuw nsw i32 %i.c, 1
end_hunk_0
