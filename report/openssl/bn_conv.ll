Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_conv?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@BN_bn2dec:bb.a
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
  br label %.critedge65.preheader

.critedge65.preheader:                            ; preds = %.critedge65.preheader.preheader, %.critedge65
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.critedge65 ], [ 0, %.critedge65.preheader.preheader ] ; 2 uses
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.critedge65 ], [ %indvars.iv, %.critedge65.preheader.preheader ] ; 4 uses
  %2 = trunc nuw nsw i64 %indvars.iv74 to i32
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 16)
  %4 = zext nneg i32 %3 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.critedge65.preheader
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %bb.o ], [ %4, %.critedge65.preheader ] ; 3 uses
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
  %i.ah = icmp sgt i64 %indvars.iv74, 16
  br i1 %i.ah, label %.critedge65.preheader, label %bb.p, !llvm.loop !25

bb.p:                                             ; preds = %.critedge65
  %i.ai = trunc nuw nsw i64 %indvars.iv.next79 to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.053, i64 8 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !11
  tail call void @bn_correct_top(ptr noundef nonnull %.053) #3
  store ptr %.053, ptr %0, align 8, !tbaa !19
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !11
  %.not62 = icmp eq i32 %i.ak, 0
  br i1 %.not62, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.053, i64 16
  store i32 %.051, ptr %i.al, align 8, !tbaa !12
  br label %.critedge.thread

bn_expand.exit.thread:                            ; preds = %bb.m, %bn_expand.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !19
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.r, label %.critedge.thread

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
  %i.a = load i8, ptr %1, align 1, !tbaa !13
  %i.b = icmp eq i8 %i.a, 45
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 4 uses
  %i.c = load i8, ptr %spec.select, align 1, !tbaa !13
  %i.d = icmp eq i8 %i.c, 48
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  switch i8 %i.f, label %bb.d [
    i8 88, label %bb.c
    i8 120, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.h = tail call i32 @BN_hex2bn(ptr noundef %0, ptr noundef nonnull %i.g)
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call i32 @BN_dec2bn(ptr noundef %0, ptr noundef nonnull %spec.select)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !11
  %.not16 = icmp eq i32 %i.n, 0
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 1, ptr %i.o, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.c
  %.013 = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  ret i32 %.013
}

declare ptr @bn_expand2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 long", !8, i64 0}
!10 = !{!"bignum_st", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!11 = !{!10, !5, i64 8}
!12 = !{!10, !5, i64 16}
!13 = !{!4, !4, i64 0}
!14 = !{!10, !9, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"p1 _ZTS9bignum_st", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!10, !5, i64 12}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
end_hunk_0
