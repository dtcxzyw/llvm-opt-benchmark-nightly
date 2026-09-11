Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_conv?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@BN_bn2hex:bb.a
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = tail call i64 @ossl_to_hex(ptr noundef %.3.680, i8 noundef zeroext %i.bm) #3
  %i.bo = getelementptr inbounds nuw i8, ptr %.3.680, i64 %i.bn
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.p
  %.224.7 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]
  %.3.7 = phi ptr [ %i.bo, %bb.q ], [ %.3.5, %bb.p ] ; 2 uses
  %i.bp = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bp, label %.preheader, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.loopexit, %bb.f
  %.1.lcssa = phi ptr [ %.0, %bb.f ], [ %.3.7, %.loopexit ]
  store i8 0, ptr %.1.lcssa, align 1, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %.027 = phi ptr [ %i.b, %bb.b ], [ null, %bb.c ], [ %i.h, %._crit_edge ]
  ret ptr %.027
}

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #1

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ossl_to_hex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @BN_bn2dec(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %0) #3
  %i.b = mul nsw i32 %i.a, 3                      ; 2 uses
  %i.c = sdiv i32 %i.b, 10
  %i.d = sdiv i32 %i.b, 1000
  %i.e = add nsw i32 %i.c, %i.d                   ; 2 uses
  %i.f = add nsw i32 %i.e, 2
  %i.g = add nsw i32 %i.e, 5
  %i.h = sdiv i32 %i.f, 19
  %i.i = add nsw i32 %i.h, 1
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.j, i64 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 66) #3 ; 8 uses
  %i.l = sext i32 %i.g to i64                     ; 2 uses
  %i.m = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.l, ptr noundef nonnull @.str.1, i32 noundef 67) #3 ; 9 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp eq ptr %i.k, null
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @BN_dup(ptr noundef %0) #3 ; 11 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @BN_is_zero(ptr noundef nonnull %i.p) #3
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 48, ptr %i.m, align 1, !tbaa !13
  store i8 0, ptr %i.s, align 1, !tbaa !13
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i32 @BN_is_negative(ptr noundef nonnull %i.p) #3
  %.not62 = icmp eq i32 %i.t, 0
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 45, ptr %i.m, align 1, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052 = phi ptr [ %i.u, %bb.f ], [ %i.m, %bb.e ] ; 3 uses
  %i.v = tail call i32 @BN_is_zero(ptr noundef nonnull %i.p) #3
  %.not6372 = icmp eq i32 %i.v, 0
  br i1 %.not6372, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.w = ptrtoint ptr %i.k to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.073 = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %bb.j ] ; 3 uses
  %i.x = ptrtoint ptr %.073 to i64
  %i.y = sub i64 %i.x, %i.w
  %i.z = ashr exact i64 %i.y, 3
  %.not66 = icmp slt i64 %i.z, %i.j
  br i1 %.not66, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i64 @BN_div_word(ptr noundef nonnull %i.p, i64 noundef -8446744073709551616) #3 ; 2 uses
  store i64 %i.aa, ptr %.073, align 8, !tbaa !16
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.073, i64 8 ; 2 uses
  %i.ad = tail call i32 @BN_is_zero(ptr noundef nonnull %i.p) #3
  %.not63 = icmp eq i32 %i.ad, 0
  br i1 %.not63, label %bb.h, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %.0.lcssa = phi ptr [ %i.k, %bb.g ], [ %i.ac, %bb.j ]
  %i.ae = getelementptr inbounds i8, ptr %.0.lcssa, i64 -8 ; 3 uses
  %i.af = ptrtoint ptr %.052 to i64
  %i.ag = ptrtoint ptr %i.m to i64
  %.neg = add i64 %i.l, %i.ag                     ; 2 uses
  %i.ah = sub i64 %.neg, %i.af
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.aj = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %.052, i64 noundef %i.ah, ptr noundef nonnull @.str.2, i64 noundef %i.ai) #3 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %.not6474 = icmp eq ptr %i.ae, %i.k
  br i1 %.not6474, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.k
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.052, i64 %i.al
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph78, %bb.m
  %.176 = phi ptr [ %i.ae, %.lr.ph78 ], [ %i.an, %bb.m ]
  %.15375 = phi ptr [ %i.am, %.lr.ph78 ], [ %i.au, %bb.m ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.176, i64 -8 ; 3 uses
  %i.ao = ptrtoint ptr %.15375 to i64
  %i.ap = sub i64 %.neg, %i.ao
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ar = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %.15375, i64 noundef %i.ap, ptr noundef nonnull @.str.3, i64 noundef %i.aq) #3 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.15375, i64 %i.at
  %.not64 = icmp eq ptr %i.an, %i.k
  br i1 %.not64, label %.loopexit, label %bb.l, !llvm.loop !23

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.d
  tail call void @CRYPTO_free(ptr noundef %i.k, ptr noundef nonnull @.str.1, i32 noundef 110) #3
  tail call void @BN_free(ptr noundef nonnull %i.p) #3
  br label %bb.n

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.l, %._crit_edge, %bb.b, %bb.a
  %.051.ph = phi ptr [ %i.p, %._crit_edge ], [ null, %bb.b ], [ %i.p, %bb.l ], [ null, %bb.a ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  tail call void @CRYPTO_free(ptr noundef %i.k, ptr noundef nonnull @.str.1, i32 noundef 110) #3
  tail call void @BN_free(ptr noundef %.051.ph) #3
  tail call void @CRYPTO_free(ptr noundef %i.m, ptr noundef nonnull @.str.1, i32 noundef 114) #3
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %.loopexit
  %.055 = phi ptr [ %i.m, %.loopexit ], [ null, %.critedge ]
  ret ptr %.055
}

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc_array(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BN_dup(ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #1

declare i64 @BN_div_word(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BN_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @BN_hex2bn(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  switch i8 %i.b, label %bb.d [
    i8 0, label %.critedge.thread
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.054 = phi ptr [ %i.c, %bb.c ], [ %1, %bb.b ]  ; 2 uses
  %.051 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %indvars.iv83 = phi i32 [ -1, %bb.d ], [ %indvars.iv.next84, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.054, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @ossl_ctype_check(i32 noundef %i.f, i32 noundef 16) #3
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 536870912
  %indvars.iv.next84 = add nsw i32 %indvars.iv83, 1
  br i1 %exitcond.not, label %.critedge.thread, label %bb.e, !llvm.loop !24

.critedge:                                        ; preds = %bb.e
  %i.h = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %or.cond = icmp eq i64 %indvars.iv, 0
  br i1 %or.cond, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.i = add nuw nsw i32 %.051, %i.h              ; 3 uses
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = tail call ptr @BN_new() #3               ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge.thread, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = tail call i32 @BN_get_flags(ptr noundef nonnull %i.k, i32 noundef 2) #3
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 151, ptr noundef nonnull @__func__.BN_hex2bn) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524550, ptr noundef null) #3
  br label %.critedge.thread

bb.l:                                             ; preds = %bb.j
  tail call void @BN_zero_ex(ptr noundef nonnull %i.k) #3
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.053 = phi ptr [ %i.m, %bb.i ], [ %i.k, %bb.l ] ; 8 uses
  %i.p = icmp samesign ugt i64 %indvars.iv, 536870896
  br i1 %i.p, label %bn_expand.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = shl nuw nsw i32 %i.h, 2
  %i.r = add nuw nsw i32 %i.q, 60
  %i.s = lshr i32 %i.r, 6                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.053, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20
  %.not.i = icmp sgt i32 %i.s, %i.u
  br i1 %.not.i, label %bn_expand.exit, label %.critedge65.preheader.preheader

bn_expand.exit:                                   ; preds = %bb.n
  %i.v = tail call ptr @bn_expand2(ptr noundef nonnull %.053, i32 noundef %i.s) #3
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bn_expand.exit.thread, label %.critedge65.preheader.preheader

.critedge65.preheader.preheader:                  ; preds = %bn_expand.exit, %bb.n
  %2 = lshr i32 %indvars.iv83, 4
  %3 = add nuw nsw i32 %2, 1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.critedge65.preheader

.critedge65.preheader:                            ; preds = %.critedge65.preheader.preheader, %.critedge65
  %indvars.iv78 = phi i64 [ 0, %.critedge65.preheader.preheader ], [ %indvars.iv.next79, %.critedge65 ] ; 2 uses
  %indvars.iv74 = phi i64 [ %indvars.iv, %.critedge65.preheader.preheader ], [ %indvars.iv.next75, %.critedge65 ] ; 3 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv74, i64 16)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.critedge65.preheader
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %bb.o ], [ %umin, %.critedge65.preheader ] ; 3 uses
  %.052 = phi i64 [ %i.ad, %bb.o ], [ 0, %.critedge65.preheader ]
  %i.x = sub nsw i64 %indvars.iv74, %indvars.iv76
  %i.y = getelementptr inbounds i8, ptr %.054, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %i.z) #3
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ab = shl i64 %.052, 4
  %i.ac = zext nneg i32 %spec.store.select to i64
  %i.ad = or i64 %i.ab, %i.ac                     ; 2 uses
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, -1
  %i.ae = icmp samesign ult i64 %indvars.iv76, 2
  br i1 %i.ae, label %.critedge65, label %bb.o

.critedge65:                                      ; preds = %bb.o
  %i.af = load ptr, ptr %.053, align 8, !tbaa !14
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv78
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !16
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, -16
  %exitcond86.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond86.not, label %bb.p, label %.critedge65.preheader, !llvm.loop !25

bb.p:                                             ; preds = %.critedge65
  %i.ah = getelementptr inbounds nuw i8, ptr %.053, i64 8 ; 2 uses
  store i32 %3, ptr %i.ah, align 8, !tbaa !11
  tail call void @bn_correct_top(ptr noundef nonnull %.053) #3
  store ptr %.053, ptr %0, align 8, !tbaa !19
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !11
  %.not62 = icmp eq i32 %i.ai, 0
  br i1 %.not62, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %.053, i64 16
  store i32 %.051, ptr %i.aj, align 8, !tbaa !12
  br label %.critedge.thread

bn_expand.exit.thread:                            ; preds = %bb.m, %bn_expand.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !19
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %bn_expand.exit.thread
  tail call void @BN_free(ptr noundef nonnull %.053) #3
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.f, %bn_expand.exit.thread, %bb.r, %bb.p, %bb.q, %bb.i, %bb.g, %.critedge, %bb.b, %bb.a, %bb.k
  %.055 = phi i32 [ 0, %bb.k ], [ 0, %bb.a ], [ 0, %.critedge ], [ %i.i, %bb.g ], [ %i.i, %bb.p ], [ 0, %bb.i ], [ 0, %bb.b ], [ %i.i, %bb.q ], [ 0, %bb.r ], [ 0, %bn_expand.exit.thread ], [ 0, %bb.f ]
  ret i32 %.055
}

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BN_new() local_unnamed_addr #1

declare i32 @BN_get_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @BN_zero_ex(ptr noundef) local_unnamed_addr #1

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #1

declare void @bn_correct_top(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @BN_dec2bn(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  switch i8 %i.b, label %bb.d [
    i8 0, label %bb.t
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.047 = phi ptr [ %i.c, %bb.c ], [ %1, %bb.b ]  ; 2 uses
  %.042 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @ossl_isdigit(i32 noundef %i.f) #3
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 536870912
  br i1 %exitcond.not, label %.critedge.thread, label %bb.e, !llvm.loop !26

.critedge:                                        ; preds = %bb.e
  %i.h = trunc nuw nsw i64 %indvars.iv to i32     ; 4 uses
  %or.cond = icmp eq i64 %indvars.iv, 0
  br i1 %or.cond, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.i = add nuw nsw i32 %.042, %i.h              ; 3 uses
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = tail call ptr @BN_new() #3               ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.t, label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @BN_zero_ex(ptr noundef nonnull %i.k) #3
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.045 = phi ptr [ %i.m, %bb.i ], [ %i.k, %bb.j ] ; 12 uses
  %i.o = icmp samesign ugt i64 %indvars.iv, 536870896
  br i1 %i.o, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = shl nuw nsw i32 %i.h, 2
  %i.q = add nuw nsw i32 %i.p, 60
  %i.r = lshr i32 %i.q, 6                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.045, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %.not.i = icmp sgt i32 %i.r, %i.t
  br i1 %.not.i, label %bn_expand.exit, label %bn_expand.exit.thread62

bn_expand.exit:                                   ; preds = %bb.l
  %i.u = tail call ptr @bn_expand2(ptr noundef nonnull %.045, i32 noundef %i.r) #3
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.critedge.thread, label %bn_expand.exit.thread62

bn_expand.exit.thread62:                          ; preds = %bb.l, %bn_expand.exit
  %i.w = urem i32 %i.h, 19                        ; 2 uses
  %i.x = sub nuw nsw i32 19, %i.w
  %i.y = icmp eq i32 %i.w, 0
  %spec.store.select = select i1 %i.y, i32 0, i32 %i.x
  br label %bb.m

bb.m:                                             ; preds = %bn_expand.exit.thread62, %bb.p
  %.in = phi i32 [ %i.h, %bn_expand.exit.thread62 ], [ %i.z, %bb.p ] ; 2 uses
  %.069 = phi i32 [ %spec.store.select, %bn_expand.exit.thread62 ], [ %.1, %bb.p ]
  %.04368 = phi i64 [ 0, %bn_expand.exit.thread62 ], [ %.144, %bb.p ]
  %.14867 = phi ptr [ %.047, %bn_expand.exit.thread62 ], [ %i.af, %bb.p ] ; 2 uses
  %i.z = add nsw i32 %.in, -1
  %i.aa = mul i64 %.04368, 10
  %i.ab = load i8, ptr %.14867, align 1, !tbaa !13
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add i64 %i.aa, -48
  %i.ae = add i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.14867, i64 1
  %i.ag = add nsw i32 %.069, 1                    ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 19
  br i1 %i.ah, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call i32 @BN_mul_word(ptr noundef nonnull %.045, i64 noundef -8446744073709551616) #3
  %.not58 = icmp eq i32 %i.ai, 0
  br i1 %.not58, label %.critedge.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i32 @BN_add_word(ptr noundef nonnull %.045, i64 noundef %i.ae) #3
  %.not59 = icmp eq i32 %i.aj, 0
  br i1 %.not59, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.144 = phi i64 [ %i.ae, %bb.m ], [ 0, %bb.o ]
  %.1 = phi i32 [ %i.ag, %bb.m ], [ 0, %bb.o ]
  %i.ak = icmp samesign ugt i32 %.in, 1
  br i1 %i.ak, label %bb.m, label %bb.q, !llvm.loop !27

bb.q:                                             ; preds = %bb.p
  tail call void @bn_correct_top(ptr noundef nonnull %.045) #3
  store ptr %.045, ptr %0, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !11
  %.not57 = icmp eq i32 %i.am, 0
  br i1 %.not57, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 16
  store i32 %.042, ptr %i.an, align 8, !tbaa !12
  br label %bb.t

.critedge.thread:                                 ; preds = %bb.f, %bb.n, %bb.o, %bb.k, %bn_expand.exit, %.critedge
  %.146 = phi ptr [ null, %.critedge ], [ %.045, %bn_expand.exit ], [ %.045, %bb.n ], [ %.045, %bb.k ], [ %.045, %bb.o ], [ null, %bb.f ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !19
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge.thread
  tail call void @BN_free(ptr noundef %.146) #3
  br label %bb.t

bb.t:                                             ; preds = %.critedge.thread, %bb.s, %bb.q, %bb.r, %bb.i, %bb.g, %bb.b, %bb.a
  %.049 = phi i32 [ 0, %bb.i ], [ %i.i, %bb.q ], [ 0, %bb.a ], [ %i.i, %bb.g ], [ 0, %bb.b ], [ %i.i, %bb.r ], [ 0, %bb.s ], [ 0, %.critedge.thread ]
  ret i32 %.049
}

declare i32 @ossl_isdigit(i32 noundef) local_unnamed_addr #1

declare i32 @BN_mul_word(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_add_word(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_asc2bn(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
end_hunk_0
