Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@BN_rand:bb.a

bb.v:                                             ; preds = %bb.r
  %i.az = zext nneg i32 %i.j to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = or i64 %i.al, %i.ba
  store i64 %i.bb, ptr %i.aj, align 8, !tbaa !80
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bn_wexpand.exit
  %i.bc = icmp eq i32 %3, 1
  br i1 %i.bc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bd = load i64, ptr %i.ah, align 8, !tbaa !80
  %i.be = or i64 %i.bd, 1
  store i64 %i.be, ptr %i.ah, align 8, !tbaa !80
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.bf, align 8, !tbaa !91
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.bg, align 8, !tbaa !93
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.o, %bb.n, %bb.l, %bb.y, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.g ], [ 0, %bb.i ], [ 1, %bb.y ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define noundef i32 @RAND_bytes(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_pseudo_rand(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_rand(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @bn_in_range_words(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bn_less_than_word_mask.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %3, label %.lr.ph.i.preheader [
    i64 0, label %bn_less_than_word_mask.exit
    i64 1, label %._crit_edge.i
  ]

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.b = add i64 %3, -1                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %i.c = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi6 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !80
  %wide.load7 = load <2 x i64>, ptr %i.f, align 8, !tbaa !80
  %i.g = freeze <2 x i64> %wide.load
  %i.h = freeze <2 x i64> %wide.load7
  %i.i = or <2 x i64> %i.g, %vec.phi              ; 2 uses
  %i.j = or <2 x i64> %i.h, %vec.phi6             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1531

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.j, %i.i
  %i.l = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader8

.lr.ph.i.preheader8:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.c, %middle.block ]
  %.01318.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.x, %.lr.ph.i ]
  %i.m = icmp eq i64 %.lcssa, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %.013.lcssa.i = phi i1 [ true, %bb.b ], [ %i.m, %._crit_edge.loopexit.i ]
  %i.n = load i64, ptr %0, align 8, !tbaa !80     ; 4 uses
  %i.o = xor i64 %i.n, %1
  %i.p = sub i64 %i.n, %1
  %i.q = xor i64 %i.p, %i.n
  %i.r = or i64 %i.q, %i.o
  %i.s = xor i64 %i.r, %i.n
  %.neg.i.i17.i = ashr i64 %i.s, 63
  %i.t = trunc nsw i64 %.neg.i.i17.i to i32
  %i.u = xor i32 %i.t, -1
  %spec.select = select i1 %.013.lcssa.i, i32 %i.u, i32 -1
  br label %bn_less_than_word_mask.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader8, %.lr.ph.i
  %.019.i = phi i64 [ %i.y, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader8 ] ; 2 uses
  %.01318.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.01318.i.ph, %.lr.ph.i.preheader8 ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80
  %.fr21.i = freeze i64 %i.w
  %i.x = or i64 %.fr21.i, %.01318.i               ; 2 uses
  %i.y = add nuw i64 %.019.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %3
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1532

bn_less_than_word_mask.exit:                      ; preds = %._crit_edge.i, %bb.a, %bb.b
  %.014.i = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %spec.select, %._crit_edge.i ]
  %i.z = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef readonly %0, i64 noundef %3, ptr noundef readonly %2, i64 noundef %3)
  %.lobit.i = lshr i32 %i.z, 31
  %i.aa = and i32 %.lobit.i, %.014.i
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @bn_rand_range_words(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %cond31.i = icmp eq i64 %3, 0
  br i1 %cond31.i, label %bn_range_to_mask.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.02732.i = phi i64 [ %i.e, %bb.b ], [ %3, %bb.a ] ; 12 uses
  %i.a = getelementptr [8 x i8], ptr %2, i64 %.02732.i
  %i.b = getelementptr i8, ptr %i.a, i64 -8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80   ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add i64 %.02732.i, -1                    ; 2 uses
  %cond.i = icmp eq i64 %i.e, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cond.i, label %bn_range_to_mask.exit.thread, label %.lr.ph.i, !llvm.loop !17

.critedge.i:                                      ; preds = %.lr.ph.i
  %cond29.i = icmp eq i64 %.02732.i, 1
  br i1 %cond29.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge.i
  %i.f = load i64, ptr %2, align 8, !tbaa !80
  %.not28.i = icmp ugt i64 %i.f, %1
  br i1 %.not28.i, label %bb.d, label %bn_range_to_mask.exit.thread

bn_range_to_mask.exit.thread:                     ; preds = %bb.b, %bb.a, %bb.c
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 108, ptr noundef nonnull @.str.11, i32 noundef 126) #46
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.critedge.i
  %i.g = lshr i64 %i.c, 1
  %i.h = or i64 %i.g, %i.c                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p                        ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.02732.i ; 2 uses
  %i.t = sub nuw i64 %3, %.02732.i
  %i.u = shl i64 %i.t, 3                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %OPENSSL_memset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.u, i1 false)
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bb.d, %bb.e
  %.not.i = icmp eq ptr %4, null
  %i.w = shl i64 %.02732.i, 3                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.s, i64 -8       ; 4 uses
  br i1 %.not.i, label %.split29.us, label %OPENSSL_memset.exit.split

OPENSSL_memset.exit.split:                        ; preds = %OPENSSL_memset.exit
  %i.y = icmp eq i64 %1, 0
  br i1 %i.y, label %RAND_bytes_with_user_prediction_resistance.exit.us, label %OPENSSL_memset.exit.split.split.preheader

OPENSSL_memset.exit.split.split.preheader:        ; preds = %OPENSSL_memset.exit.split
  %i.z = xor i64 %indvar, -1
  %i.aa = add i64 %3, %i.z                        ; 3 uses
  %cond = icmp eq i64 %.02732.i, 1
  %min.iters.check = icmp ult i64 %i.aa, 4
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ab = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %RAND_bytes_with_user_prediction_resistance.exit

OPENSSL_memset.exit.split.split.us:               ; preds = %RAND_bytes_with_user_prediction_resistance.exit.us
  %i.ac = add nsw i32 %i.ad, -1                   ; 2 uses
  %.not14.us31 = icmp eq i32 %i.ac, 0
  br i1 %.not14.us31, label %.split.us, label %RAND_bytes_with_user_prediction_resistance.exit.us, !llvm.loop !1533

RAND_bytes_with_user_prediction_resistance.exit.us: ; preds = %OPENSSL_memset.exit.split, %OPENSSL_memset.exit.split.split.us
  %i.ad = phi i32 [ %i.ac, %OPENSSL_memset.exit.split.split.us ], [ 99, %OPENSSL_memset.exit.split ]
  tail call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef %0, i64 noundef %i.w, ptr noundef nonnull readonly %4, i32 noundef 1)
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !80
  %i.af = and i64 %i.ae, %i.r
  store i64 %i.af, ptr %i.x, align 8, !tbaa !80
  %i.ag = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef nonnull readonly %0, i64 noundef %.02732.i, ptr noundef readonly %2, i64 noundef %.02732.i)
  %.lobit.i.i.us = lshr i32 %i.ag, 31
  %i.ah = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.lobit.i.i.us) #47, !srcloc !120
  %.not15.us = icmp eq i32 %i.ah, 0
  br i1 %.not15.us, label %OPENSSL_memset.exit.split.split.us, label %.loopexit, !llvm.loop !1533

OPENSSL_memset.exit.split.split:                  ; preds = %bn_in_range_words.exit
  %i.ai = add nsw i32 %i.aj, -1                   ; 2 uses
  %.not14 = icmp eq i32 %i.ai, 0
  br i1 %.not14, label %.split.us, label %RAND_bytes_with_user_prediction_resistance.exit, !llvm.loop !1533

.split.us:                                        ; preds = %OPENSSL_memset.exit.split.split, %OPENSSL_memset.exit.split.split.us
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.11, i32 noundef 172) #46
  br label %.loopexit

RAND_bytes_with_user_prediction_resistance.exit:  ; preds = %OPENSSL_memset.exit.split.split.preheader, %OPENSSL_memset.exit.split.split
  %i.aj = phi i32 [ 99, %OPENSSL_memset.exit.split.split.preheader ], [ %i.ai, %OPENSSL_memset.exit.split.split ]
  tail call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef %0, i64 noundef %i.w, ptr noundef nonnull readonly %4, i32 noundef 1)
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !80
  %i.al = and i64 %i.ak, %i.r
  store i64 %i.al, ptr %i.x, align 8, !tbaa !80
  br i1 %cond, label %bn_in_range_words.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %RAND_bytes_with_user_prediction_resistance.exit
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader57, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ar, %vector.body ], [ zeroinitializer, %.lr.ph.i.i.preheader ]
  %vec.phi55 = phi <2 x i64> [ %i.as, %vector.body ], [ zeroinitializer, %.lr.ph.i.i.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %wide.load = load <2 x i64>, ptr %i.an, align 8, !tbaa !80
  %wide.load56 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !80
  %i.ap = freeze <2 x i64> %wide.load
  %i.aq = freeze <2 x i64> %wide.load56
  %i.ar = or <2 x i64> %i.ap, %vec.phi            ; 2 uses
  %i.as = or <2 x i64> %i.aq, %vec.phi55          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1534

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader57

.lr.ph.i.i.preheader57:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.019.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01318.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i

.split29.us:                                      ; preds = %OPENSSL_memset.exit
  tail call void @abort() #49
  unreachable

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.au, %middle.block ], [ %i.ay, %.lr.ph.i.i ]
  %i.av = icmp eq i64 %.lcssa, 0
  br label %bn_in_range_words.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader57, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ %.019.i.i.ph, %.lr.ph.i.i.preheader57 ] ; 2 uses
  %.01318.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %.01318.i.i.ph, %.lr.ph.i.i.preheader57 ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80
  %.fr21.i.i = freeze i64 %i.ax
  %i.ay = or i64 %.fr21.i.i, %.01318.i.i          ; 2 uses
  %i.az = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.az, %.02732.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1535

bn_in_range_words.exit:                           ; preds = %RAND_bytes_with_user_prediction_resistance.exit, %._crit_edge.loopexit.i.i
  %.013.lcssa.i.i = phi i1 [ true, %RAND_bytes_with_user_prediction_resistance.exit ], [ %i.av, %._crit_edge.loopexit.i.i ]
  %i.ba = load i64, ptr %0, align 8, !tbaa !80    ; 4 uses
  %i.bb = sub i64 %i.ba, %1
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = xor i64 %i.ba, %1
  %i.be = or i64 %i.bc, %i.bd
  %i.bf = xor i64 %i.be, %i.ba
  %.neg.i.i17.i.i = ashr i64 %i.bf, 63
  %i.bg = trunc nsw i64 %.neg.i.i17.i.i to i32
  %i.bh = xor i32 %i.bg, -1
  %spec.select = select i1 %.013.lcssa.i.i, i32 %i.bh, i32 -1
  %i.bi = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef nonnull readonly %0, i64 noundef %.02732.i, ptr noundef readonly %2, i64 noundef %.02732.i)
  %.lobit.i.i = lshr i32 %i.bi, 31
  %i.bj = and i32 %.lobit.i.i, %spec.select
  %i.bk = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bj) #47, !srcloc !120
  %.not15 = icmp eq i32 %i.bk, 0
  br i1 %.not15, label %OPENSSL_memset.exit.split.split, label %.loopexit, !llvm.loop !1533

.loopexit:                                        ; preds = %bn_in_range_words.exit, %RAND_bytes_with_user_prediction_resistance.exit.us, %bn_range_to_mask.exit.thread, %.split.us
  %.012 = phi i32 [ 0, %bn_range_to_mask.exit.thread ], [ 0, %.split.us ], [ 1, %RAND_bytes_with_user_prediction_resistance.exit.us ], [ 1, %bn_in_range_words.exit ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define noundef i32 @RAND_bytes_with_user_prediction_resistance(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #49
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef 1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_rand_range(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_rand_range_ex(ptr noundef %0, i64 noundef 0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_pseudo_rand_range(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 2) i32 @BN_rand_range_ex(ptr noundef %0, i64 noundef 0, ptr noundef readonly %1)
  ret i32 %i.a
}

declare void @rsaz_1024_norm2red_avx2(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rsaz_1024_mul_avx2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rsaz_1024_scatter5_avx2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @rsaz_1024_sqr_avx2(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @rsaz_1024_gather5_avx2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @rsaz_1024_red2norm_avx2(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rsaz_amm52x20_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rsaz_amm52x30_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rsaz_amm52x40_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @to_words52(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 -33554428, 33554429) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %3, 103
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.053 = phi ptr [ %i.j, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.03552 = phi i32 [ %i.h, %.lr.ph ], [ %1, %bb.a ]
  %.03851 = phi ptr [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.03950 = phi i32 [ %i.i, %.lr.ph ], [ %3, %bb.a ] ; 2 uses
  %.0.copyload = load i64, ptr %.03851, align 1
  %i.b = and i64 %.0.copyload, 4503599627370495
  store i64 %i.b, ptr %.053, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %.03851, i64 6
  %.0.copyload3 = load i64, ptr %i.c, align 1
  %i.d = lshr i64 %.0.copyload3, 4
  %i.e = and i64 %i.d, 4503599627370495
  %i.f = getelementptr inbounds nuw i8, ptr %.053, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %.03851, i64 13 ; 2 uses
  %i.h = add nsw i32 %.03552, -2                  ; 2 uses
  %i.i = add nsw i32 %.03950, -104                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.053, i64 16 ; 2 uses
  %i.k = icmp samesign ugt i32 %.03950, 207
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !1536

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.039.lcssa = phi i32 [ %3, %bb.a ], [ %i.i, %.lr.ph ] ; 4 uses
  %.038.lcssa = phi ptr [ %2, %bb.a ], [ %i.g, %.lr.ph ] ; 17 uses
  %.035.lcssa = phi i32 [ %1, %bb.a ], [ %i.h, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %.lr.ph ] ; 6 uses
  %i.l = icmp sgt i32 %.039.lcssa, 52
  br i1 %i.l, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %._crit_edge
  %i.m = getelementptr i8, ptr %.038.lcssa, i64 6
  %i.n = load i8, ptr %i.m, align 1, !tbaa !76
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr i8, ptr %.038.lcssa, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !76
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.o, 16
  %i.t = shl nuw nsw i64 %i.r, 8
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = getelementptr i8, ptr %.038.lcssa, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !76
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = getelementptr i8, ptr %.038.lcssa, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !76
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.y, 16
  %i.ad = shl nuw nsw i64 %i.ab, 8
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %.038.lcssa, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !76
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %.038.lcssa, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !76
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.ai, 16
  %i.an = shl nuw nsw i64 %i.al, 8
  %i.ao = load i8, ptr %.038.lcssa, align 1, !tbaa !76
  %i.ap = zext i8 %i.ao to i64
  %.masked69 = and i64 %i.am, 4503599627304960
  %.masked = or disjoint i64 %.masked69, %i.an
  %i.aq = or disjoint i64 %.masked, %i.ap
  store i64 %i.aq, ptr %.0.lcssa, align 8, !tbaa !80
  %i.ar = add nsw i32 %.039.lcssa, -45
  %i.as = lshr i32 %i.ar, 3                       ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 4 uses
end_hunk_0
