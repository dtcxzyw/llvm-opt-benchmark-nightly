inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@ossl_ec_GFp_simple_set_compressed_coordinates:bb.a
bb.t:                                             ; preds = %bb.s
  %i.bg = tail call i32 %i.bd(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef %i.bf, ptr noundef nonnull %.0114) #3
  %.not137 = icmp eq i32 %i.bg, 0
  br i1 %.not137, label %bb.aj, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.bi = tail call i32 @BN_mod_add_quick(ptr noundef %i.h, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.bh) #3
  %.not138 = icmp eq i32 %i.bi, 0
  br i1 %.not138, label %bb.aj, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.bk = tail call i32 @BN_mod_add_quick(ptr noundef %i.h, ptr noundef %i.h, ptr noundef %i.bf, ptr noundef %i.bj) #3
  %.not136 = icmp eq i32 %i.bk, 0
  br i1 %.not136, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bl = tail call i32 @ERR_set_mark() #3        ; 0 uses
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.bn = tail call ptr @BN_mod_sqrt(ptr noundef nonnull %i.k, ptr noundef %i.h, ptr noundef %i.bm, ptr noundef nonnull %.0114) #3
  %.not139 = icmp eq ptr %i.bn, null
  br i1 %.not139, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bo = tail call i64 @ERR_peek_last_error() #3
  %i.bp = and i64 %i.bo, 4294967295
  %or.cond = icmp eq i64 %i.bp, 25165935
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bq = tail call i32 @ERR_pop_to_mark() #3     ; 0 uses
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 112, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_set_compressed_coordinates) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 110, ptr noundef null) #3
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  %i.br = tail call i32 @ERR_clear_last_mark() #3 ; 0 uses
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 117, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_set_compressed_coordinates) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, ptr noundef null) #3
  br label %bb.aj

bb.aa:                                            ; preds = %bb.w
  %i.bs = tail call i32 @ERR_clear_last_mark() #3 ; 0 uses
  %i.bt = tail call i32 @BN_is_odd(ptr noundef nonnull %i.k) #3
  %.not140 = icmp eq i32 %i.bt, %i.g
  br i1 %.not140, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = tail call i32 @BN_is_zero(ptr noundef nonnull %i.k) #3
  %.not141 = icmp eq i32 %i.bu, 0
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !18  ; 2 uses
  br i1 %.not141, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = tail call i32 @BN_kronecker(ptr noundef %i.j, ptr noundef %i.bv, ptr noundef nonnull %.0114) #3
  switch i32 %i.bw, label %bb.ae [
    i32 -2, label %bb.aj
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 132, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_set_compressed_coordinates) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 109, ptr noundef null) #3
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_set_compressed_coordinates) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 110, ptr noundef null) #3
  br label %bb.aj

bb.af:                                            ; preds = %bb.ab
  %i.bx = tail call i32 @BN_usub(ptr noundef nonnull %i.k, ptr noundef %i.bv, ptr noundef nonnull %i.k) #3
  %.not142 = icmp eq i32 %i.bx, 0
  br i1 %.not142, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %i.by = tail call i32 @BN_is_odd(ptr noundef nonnull %i.k) #3
  %.not143 = icmp eq i32 %i.by, %i.g
  br i1 %.not143, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 144, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_set_compressed_coordinates) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, ptr noundef null) #3
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bz = tail call i32 @EC_POINT_set_affine_coordinates(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %.0114) #3
  %.not144 = icmp ne i32 %i.bz, 0
  %spec.select = zext i1 %.not144 to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ac, %bb.ae, %bb.ad, %bb.y, %bb.z, %bb.af, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.ah
  %.0113 = phi i32 [ 0, %bb.c ], [ 0, %bb.y ], [ 0, %bb.ah ], [ 0, %bb.ac ], [ %spec.select, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.d ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.z ], [ 0, %bb.ad ], [ 0, %bb.ae ]
  tail call void @BN_CTX_end(ptr noundef nonnull %.0114) #3
  tail call void @BN_CTX_free(ptr noundef %.0115) #3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.b, %bb.aj
  %.0 = phi i32 [ %.0113, %bb.aj ], [ 0, %bb.b ]
  ret i32 %.0
}

declare ptr @BN_CTX_new_ex(ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_start(ptr noundef) local_unnamed_addr #1

declare ptr @BN_CTX_get(ptr noundef) local_unnamed_addr #1

declare i32 @BN_nnmod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mod_sqr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mod_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mod_lshift1_quick(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mod_add_quick(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mod_sub_quick(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare ptr @BN_mod_sqrt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ERR_peek_last_error() local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare i32 @BN_is_odd(ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #1

declare i32 @BN_kronecker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_usub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EC_POINT_set_affine_coordinates(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_end(ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i64 -536870909, 536870912) i64 @ossl_ec_GFp_simple_point2oct(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.b [
    i32 6, label %bb.c
    i32 4, label %bb.c
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_point2oct) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 104, ptr noundef null) #3
  br label %bb.w

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = tail call i32 @EC_POINT_is_at_infinity(ptr noundef %0, ptr noundef %1) #3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not110 = icmp eq ptr %3, null
  br i1 %.not110, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_point2oct) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, ptr noundef null) #3
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %bb.x

bb.h:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = tail call i32 @BN_num_bits(ptr noundef %i.d) #3
  %i.f = add nsw i32 %i.e, 7
  %i.g = sdiv i32 %i.f, 8                         ; 6 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp eq i32 %2, 2
  %i.j = add nsw i64 %i.h, 1                      ; 6 uses
  %i.k = shl nsw i64 %i.h, 1
  %i.l = or disjoint i64 %i.k, 1
  %i.m = select i1 %i.i, i64 %i.j, i64 %i.l       ; 3 uses
  %.not100 = icmp eq ptr %3, null
  br i1 %.not100, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_point2oct) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, ptr noundef null) #3
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.o = icmp eq ptr %5, null
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = tail call ptr @BN_CTX_new_ex(ptr noundef %i.q) #3 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.086 = phi ptr [ %i.r, %bb.l ], [ null, %bb.k ] ; 2 uses
  %.083 = phi ptr [ %i.r, %bb.l ], [ %5, %bb.k ]  ; 6 uses
  tail call void @BN_CTX_start(ptr noundef nonnull %.083) #3
  %i.t = tail call ptr @BN_CTX_get(ptr noundef nonnull %.083) #3 ; 3 uses
  %i.u = tail call ptr @BN_CTX_get(ptr noundef nonnull %.083) #3 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = tail call i32 @EC_POINT_get_affine_coordinates(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %.083) #3
  %.not101 = icmp eq i32 %i.w, 0
  br i1 %.not101, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i32 %2, label %bb.q [
    i32 6, label %bb.p
    i32 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.x = tail call i32 @BN_is_odd(ptr noundef nonnull %i.u) #3
  %.not102 = icmp ne i32 %i.x, 0
  %i.y = zext i1 %.not102 to i32
  %spec.select = or disjoint i32 %2, %i.y
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge.in = phi i32 [ %spec.select, %bb.p ], [ %2, %bb.o ]
  %storemerge = trunc nuw nsw i32 %storemerge.in to i8
  store i8 %storemerge, ptr %3, align 1, !tbaa !27
  %i.z = tail call i32 @BN_num_bits(ptr noundef %i.t) #3
  %i.aa = add nsw i32 %i.z, 7
  %.neg = sdiv i32 %i.aa, -8                      ; 2 uses
  %narrow = add nsw i32 %.neg, %i.g               ; 3 uses
  %i.ab = icmp ugt i32 %narrow, %i.g
  br i1 %i.ab, label %.sink.split, label %.preheader122

.preheader122:                                    ; preds = %bb.q
  %.not103123 = icmp eq i32 %narrow, 0
  br i1 %.not103123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader122
  %i.ac = sext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %3, i64 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ac, i1 false), !tbaa !27
  %narrow140 = add nsw i32 %i.g, %.neg
  %i.ad = sext i32 %narrow140 to i64
  %i.ae = add nsw i64 %i.ad, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader122
  %.080.lcssa = phi i64 [ 1, %.preheader122 ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.080.lcssa
  %i.ag = tail call i32 @BN_bn2bin(ptr noundef %i.t, ptr noundef nonnull %i.af) #3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add nsw i64 %.080.lcssa, %i.ah
  %.not104 = icmp eq i64 %i.ai, %i.j
  br i1 %.not104, label %bb.r, label %.sink.split

bb.r:                                             ; preds = %._crit_edge
  switch i32 %2, label %bb.t [
    i32 6, label %bb.s
    i32 4, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.aj = tail call i32 @BN_num_bits(ptr noundef nonnull %i.u) #3
  %i.ak = add nsw i32 %i.aj, 7
  %.neg106 = sdiv i32 %i.ak, -8                   ; 2 uses
  %narrow105 = add nsw i32 %.neg106, %i.g         ; 3 uses
  %i.al = icmp ugt i32 %narrow105, %i.g
  br i1 %i.al, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.s
  %.not107126 = icmp eq i32 %narrow105, 0
  br i1 %.not107126, label %._crit_edge130, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %.preheader
  %i.am = sext i32 %narrow105 to i64
  %scevgep133 = getelementptr i8, ptr %3, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep133, i8 0, i64 %i.am, i1 false), !tbaa !27
  %i.an = add nsw i64 %i.j, %i.h
  %i.ao = sext i32 %.neg106 to i64
  %i.ap = add nsw i64 %i.an, %i.ao
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %.lr.ph129.preheader, %.preheader
  %.181.lcssa = phi i64 [ %i.j, %.preheader ], [ %i.ap, %.lr.ph129.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.181.lcssa
  %i.ar = tail call i32 @BN_bn2bin(ptr noundef nonnull %i.u, ptr noundef nonnull %i.aq) #3
  %i.as = sext i32 %i.ar to i64
  %i.at = add nsw i64 %.181.lcssa, %i.as
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %._crit_edge130
  %.2 = phi i64 [ %i.at, %._crit_edge130 ], [ %i.j, %bb.r ]
  %.not108 = icmp eq i64 %.2, %i.m
  br i1 %.not108, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %bb.t
  tail call void @BN_CTX_end(ptr noundef nonnull %.083) #3
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.u
  %.187114 = phi ptr [ %.086, %bb.u ], [ null, %bb.h ]
  tail call void @BN_CTX_free(ptr noundef %.187114) #3
  br label %bb.x

.sink.split:                                      ; preds = %bb.t, %bb.s, %._crit_edge, %bb.q
  %.sink = phi i32 [ 244, %bb.s ], [ 226, %bb.q ], [ 236, %._crit_edge ], [ 256, %bb.t ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_point2oct) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, ptr noundef null) #3
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.m, %bb.n
  tail call void @BN_CTX_end(ptr noundef nonnull %.083) #3
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.j, %bb.v
  %.288120 = phi ptr [ %.086, %bb.v ], [ null, %bb.b ], [ null, %bb.j ]
  tail call void @BN_CTX_free(ptr noundef %.288120) #3
  br label %bb.x

bb.x:                                             ; preds = %bb.l, %bb.d, %bb.g, %bb.w, %.thread, %bb.f
  %.082 = phi i64 [ 0, %bb.w ], [ 0, %bb.f ], [ %i.m, %.thread ], [ 1, %bb.d ], [ 1, %bb.g ], [ 0, %bb.l ]
  ret i64 %.082
}

declare i32 @EC_POINT_is_at_infinity(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare i32 @EC_POINT_get_affine_coordinates(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ossl_ec_GFp_simple_oct2point(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 285, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_oct2point) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, ptr noundef null) #3
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !27      ; 3 uses
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = and i32 %i.c, 1                          ; 2 uses
  %i.e = and i32 %i.c, 254                        ; 4 uses
  %or.cond = icmp ugt i8 %i.b, 3
  %i.f = and i32 %i.c, 252
  %i.g = icmp ne i32 %i.f, 4
  %or.cond5 = and i1 %or.cond, %i.g
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_oct2point) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, ptr noundef null) #3
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.i = icmp eq i32 %i.e, 4
  %or.cond7 = or i1 %i.h, %i.i
  %i.j = trunc i8 %i.b to i1
  %or.cond9 = and i1 %or.cond7, %i.j
  br i1 %or.cond9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 298, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_oct2point) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, ptr noundef null) #3
  br label %bb.ad

bb.g:                                             ; preds = %bb.e
  br i1 %i.h, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not78 = icmp eq i64 %3, 1
  br i1 %.not78, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_oct2point) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, ptr noundef null) #3
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.k = tail call i32 @EC_POINT_set_to_infinity(ptr noundef %0, ptr noundef %1) #3
  br label %bb.ad

bb.k:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = tail call i32 @BN_num_bits(ptr noundef %i.m) #3
  %i.o = add nsw i32 %i.n, 7
  %i.p = sdiv i32 %i.o, 8                         ; 5 uses
  %i.q = icmp eq i32 %i.e, 2                      ; 2 uses
  %i.r = add nsw i32 %i.p, 1
  %i.s = shl nsw i32 %i.p, 1
  %i.t = or disjoint i32 %i.s, 1
  %i.u = select i1 %i.q, i32 %i.r, i32 %i.t
  %i.v = sext i32 %i.u to i64
  %.not = icmp eq i64 %3, %i.v
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 315, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_oct2point) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, ptr noundef null) #3
  br label %bb.ad

bb.m:                                             ; preds = %bb.k
  %i.w = icmp eq ptr %4, null
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = tail call ptr @BN_CTX_new_ex(ptr noundef %i.y) #3 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.067 = phi ptr [ %i.z, %bb.n ], [ null, %bb.m ]
  %.066 = phi ptr [ %i.z, %bb.n ], [ %4, %bb.m ]  ; 6 uses
  tail call void @BN_CTX_start(ptr noundef nonnull %.066) #3
  %i.ab = tail call ptr @BN_CTX_get(ptr noundef nonnull %.066) #3 ; 4 uses
  %i.ac = tail call ptr @BN_CTX_get(ptr noundef nonnull %.066) #3 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.af = tail call ptr @BN_bin2bn(ptr noundef nonnull %i.ae, i32 noundef %i.p, ptr noundef %i.ab) #3
  %.not73 = icmp eq ptr %i.af, null
  br i1 %.not73, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.ah = tail call i32 @BN_ucmp(ptr noundef %i.ab, ptr noundef %i.ag) #3
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 334, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_oct2point) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, ptr noundef null) #3
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  br i1 %i.q, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aj = tail call i32 @EC_POINT_set_compressed_coordinates(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.ab, i32 noundef %i.d, ptr noundef nonnull %.066) #3
  %.not77 = icmp eq i32 %i.aj, 0
  br i1 %.not77, label %bb.ac, label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.ak = sext i32 %i.p to i64
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ak
  %i.am = tail call ptr @BN_bin2bn(ptr noundef nonnull %i.al, i32 noundef %i.p, ptr noundef nonnull %i.ac) #3
  %.not74 = icmp eq ptr %i.am, null
  br i1 %.not74, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.ao = tail call i32 @BN_ucmp(ptr noundef nonnull %i.ac, ptr noundef %i.an) #3
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 345, ptr noundef nonnull @__func__.ossl_ec_GFp_simple_oct2point) #3
end_hunk_0
