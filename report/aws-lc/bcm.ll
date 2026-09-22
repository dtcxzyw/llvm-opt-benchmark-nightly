Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 549
begin_hunk_0_@BN_generate_prime_ex:bb.a
bb.as:                                            ; preds = %bb.ar
  %i.gz = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.ha = shl nuw i64 %i.gw, 3
  %i.hb = tail call ptr @OPENSSL_realloc(ptr noundef %i.gz, i64 noundef %i.ha) #46 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.hb, ptr %i.q, align 8, !tbaa !109
  store i64 %i.gw, ptr %i.ah, align 8, !tbaa !113
  %.pre26.i.i.i83 = load i64, ptr %i.ag, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i.i80

BN_STACK_push.exit.i.i80:                         ; preds = %bb.at, %._crit_edge.i.i.i78
  %i.hd = phi i64 [ %i.gr, %._crit_edge.i.i.i78 ], [ %.pre26.i.i.i83, %bb.at ]
  %i.he = phi ptr [ %.pre.i.i.i79, %._crit_edge.i.i.i78 ], [ %i.hb, %bb.at ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hd
  store i64 %i.gq, ptr %i.hf, align 8, !tbaa !80
  %i.hg = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.ag, align 8, !tbaa !112
  br label %BN_CTX_start.exit.i73

bb.au:                                            ; preds = %bb.as, %bb.ar
  store i8 1, ptr %i.r, align 8, !tbaa !110
  store i8 1, ptr %i.ai, align 1, !tbaa !114
  br label %BN_CTX_start.exit.i73

BN_CTX_start.exit.i73:                            ; preds = %bb.au, %BN_STACK_push.exit.i.i80, %bb.ap
  %i.hi = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %.thread40.i, label %bb.av

bb.av:                                            ; preds = %BN_CTX_start.exit.i73
  %i.hk = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 0, i32 noundef 1)
  %.not.i74 = icmp eq i32 %i.hk, 0
  br i1 %.not.i74, label %.thread40.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = tail call i32 @BN_div(ptr noundef null, ptr noundef nonnull %i.hi, ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull %i.p)
  %.not33.i = icmp eq i32 %i.hl, 0
  br i1 %.not33.i, label %.thread40.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hm = tail call i32 @BN_sub(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.hi)
  %.not34.i = icmp eq i32 %i.hm, 0
  br i1 %.not34.i, label %.thread40.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.aj, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hn = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef 1)
  %.not36.i = icmp eq i32 %i.hn, 0
  br i1 %.not36.i, label %.thread40.i, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ho = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull readonly %4)
  %.not35.i = icmp eq i32 %i.ho, 0
  br i1 %.not35.i, label %.thread40.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.val.i75 = load i32, ptr %i.ak, align 8, !tbaa !93
  %i.hp = icmp sgt i32 %.val.i75, 16
  %..i.i76 = select i1 %i.hp, i64 1024, i64 512
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bd
  %i.hq = add nuw nsw i64 %.02843.i, 1            ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %i.hq, %..i.i76
  br i1 %exitcond.not.i77, label %.thread40.i, label %.backedge186

.backedge186:                                     ; preds = %bb.bc, %bb.be
  %.02843.i.be = phi i64 [ %i.hq, %bb.bc ], [ 1, %bb.be ]
  br label %bb.bd, !llvm.loop !1485

bb.bd:                                            ; preds = %.backedge186, %bb.bb
  %.02843.i = phi i64 [ 1, %bb.bb ], [ %.02843.i.be, %.backedge186 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr @kPrimes, i64 %.02843.i
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !131
  %i.ht = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef %0, i16 noundef zeroext %i.hs)
  %i.hu = icmp ult i16 %i.ht, 2                   ; 3 uses
  br i1 %i.hu, label %bb.be, label %bb.bc

bb.be:                                            ; preds = %bb.bd
  %i.hv = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull readonly %3)
  %.not37.i = icmp eq i32 %i.hv, 0
  br i1 %.not37.i, label %.thread40.i, label %.backedge186

.thread40.i:                                      ; preds = %bb.be, %bb.bc, %bb.ba, %bb.az, %bb.ax, %bb.aw, %bb.av, %BN_CTX_start.exit.i73
  %.not60 = phi i1 [ true, %BN_CTX_start.exit.i73 ], [ true, %bb.av ], [ true, %bb.aw ], [ true, %bb.az ], [ true, %bb.ba ], [ true, %bb.ax ], [ %i.hu, %bb.bc ], [ %i.hu, %bb.be ]
  %i.hw = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i38.i = icmp eq i8 %i.hw, 0
  br i1 %.not.i38.i, label %bb.bf, label %probable_prime_dh.exit

bb.bf:                                            ; preds = %.thread40.i
  %i.hx = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.hy = add i64 %i.hx, -1                       ; 2 uses
  store i64 %i.hy, ptr %i.ag, align 8, !tbaa !112
  %i.hz = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !80
  store i64 %i.ib, ptr %i.af, align 8, !tbaa !111
  br label %probable_prime_dh.exit

probable_prime_dh.exit:                           ; preds = %.thread40.i, %bb.bf
  br i1 %.not60, label %probable_prime.exit.thread115.loopexit187, label %probable_prime.exit.thread

probable_prime.exit.thread:                       ; preds = %bn_odd_number_is_obviously_composite.exit.i, %.split.i, %bb.p, %probable_prime_dh_safe.exit, %probable_prime_dh.exit
  %i.ic = add nuw nsw i32 %.0, 1
  br i1 %.not.i84, label %BN_GENCB_call.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %probable_prime.exit.thread
  %i.id = load i8, ptr %5, align 8, !tbaa !128
  switch i8 %i.id, label %probable_prime.exit.thread115.loopexit187 [
    i8 1, label %BN_GENCB_call.exit
    i8 2, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ie = load ptr, ptr %i.an, align 8, !tbaa !76
  tail call void %i.ie(i32 noundef 0, i32 noundef %.0, ptr noundef nonnull %5) #46, !inline_history !132
  br label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit:                               ; preds = %bb.bg
  %i.if = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ig = tail call i32 %i.if(i32 noundef 0, i32 noundef %.0, ptr noundef nonnull %5) #46, !inline_history !132
  %.not63 = icmp eq i32 %i.ig, 0
  br i1 %.not63, label %probable_prime.exit.thread115.loopexit187, label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit.thread:                        ; preds = %probable_prime.exit.thread, %bb.bh, %BN_GENCB_call.exit
  br i1 %i.o, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %BN_GENCB_call.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.ih = call i32 @BN_primality_test(ptr noundef nonnull %i.c, ptr noundef readonly %0, i32 noundef %.0.i98101, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef %5)
  %.not.i86 = icmp eq i32 %i.ih, 0
  %i.ii = load i32, ptr %i.c, align 4
  %.0.i87 = select i1 %.not.i86, i32 -1, i32 %i.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  switch i32 %.0.i87, label %probable_prime.exit.thread115 [
    i32 -1, label %probable_prime.exit.thread115.loopexit187
    i32 0, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %.preheader, %bb.bk, %bb.bi
  br label %.backedge

bb.bj:                                            ; preds = %BN_GENCB_call.exit.thread
  %i.ij = tail call i32 @BN_rshift1(ptr noundef nonnull %i.ad, ptr noundef %0)
  %.not64 = icmp eq i32 %i.ij, 0
  br i1 %.not64, label %probable_prime.exit.thread115.loopexit187, label %.preheader

.preheader:                                       ; preds = %bb.bj, %BN_GENCB_call.exit94.thread
  %.051131 = phi i32 [ %i.is, %BN_GENCB_call.exit94.thread ], [ 0, %bb.bj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.ik = call i32 @BN_primality_test(ptr noundef nonnull %i.b, ptr noundef readonly %0, i32 noundef 1, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef null)
  %.not.i88 = icmp eq i32 %i.ik, 0
  %i.il = load i32, ptr %i.b, align 4
  %.0.i89 = select i1 %.not.i88, i32 -1, i32 %i.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  switch i32 %.0.i89, label %bb.bk [
    i32 -1, label %probable_prime.exit.thread115
    i32 0, label %.backedge.backedge
  ]

bb.bk:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.im = call i32 @BN_primality_test(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.ad, i32 noundef 1, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef null)
  %.not.i90 = icmp eq i32 %i.im, 0
  %i.in = load i32, ptr %i.a, align 4
  %.0.i91 = select i1 %.not.i90, i32 -1, i32 %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  switch i32 %.0.i91, label %bb.bl [
    i32 -1, label %probable_prime.exit.thread115
    i32 0, label %.backedge.backedge
  ]

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not.i84, label %BN_GENCB_call.exit94.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.io = load i8, ptr %5, align 8, !tbaa !128
  switch i8 %i.io, label %probable_prime.exit.thread115 [
    i8 1, label %BN_GENCB_call.exit94
    i8 2, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.ip = load ptr, ptr %i.an, align 8, !tbaa !76
  tail call void %i.ip(i32 noundef 1, i32 noundef %.051131, ptr noundef nonnull %5) #46, !inline_history !132
  br label %BN_GENCB_call.exit94.thread

BN_GENCB_call.exit94:                             ; preds = %bb.bm
  %i.iq = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ir = tail call i32 %i.iq(i32 noundef 1, i32 noundef %.051131, ptr noundef nonnull %5) #46, !inline_history !132
  %.not65 = icmp eq i32 %i.ir, 0
  br i1 %.not65, label %probable_prime.exit.thread115, label %BN_GENCB_call.exit94.thread

BN_GENCB_call.exit94.thread:                      ; preds = %bb.bl, %bb.bn, %BN_GENCB_call.exit94
  %i.is = add nuw i32 %.051131, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.is, %.0.i98101
  br i1 %exitcond.not, label %probable_prime.exit.thread115, label %.preheader, !llvm.loop !1486

probable_prime.exit.thread115.loopexit187:        ; preds = %bb.n, %bb.bi, %probable_prime_dh.exit, %probable_prime_dh_safe.exit, %bb.bg, %bb.bj, %BN_GENCB_call.exit
  br label %probable_prime.exit.thread115

probable_prime.exit.thread115:                    ; preds = %.critedge.backedge.i, %BN_GENCB_call.exit94.thread, %bb.bm, %BN_GENCB_call.exit94, %.preheader, %bb.bk, %bb.bi, %probable_prime.exit.thread115.loopexit187, %BN_CTX_start.exit
  %.052117 = phi i32 [ 0, %probable_prime.exit.thread115.loopexit187 ], [ 0, %bb.bk ], [ 0, %BN_CTX_start.exit ], [ 1, %bb.bi ], [ 1, %BN_GENCB_call.exit94.thread ], [ 0, %bb.bm ], [ 0, %BN_GENCB_call.exit94 ], [ 0, %.preheader ], [ 0, %.critedge.backedge.i ]
  %i.it = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i95 = icmp eq i8 %i.it, 0
  br i1 %.not.i95, label %bb.bo, label %BN_CTX_free.exit

bb.bo:                                            ; preds = %probable_prime.exit.thread115
  %i.iu = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !112
  %i.iw = add i64 %i.iv, -1                       ; 2 uses
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !112
  %i.ix = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !80
  %i.ja = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %i.iz, ptr %i.ja, align 8, !tbaa !111
  br label %BN_CTX_free.exit

BN_CTX_free.exit:                                 ; preds = %probable_prime.exit.thread115, %bb.bo
  %i.jb = load ptr, ptr %i.p, align 8, !tbaa !108
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.jb, ptr noundef nonnull @sk_BIGNUM_call_free_func, ptr noundef nonnull @BN_free) #46
  %.val.i96 = load ptr, ptr %i.q, align 8, !tbaa !109
  tail call void @OPENSSL_free(ptr noundef %.val.i96) #46
  tail call void @OPENSSL_free(ptr noundef nonnull %i.p) #46
  br label %probable_prime.exit.thread118

probable_prime.exit.thread118:                    ; preds = %bb.j, %BN_CTX_free.exit, %bb.i, %bb.g
  %.053 = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ %.052117, %BN_CTX_free.exit ], [ 0, %bb.j ]
  ret i32 %.053
}

; Function Attrs: nounwind uwtable
define i32 @BN_is_prime_fasttest_ex(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = call i32 @BN_primality_test(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr %i.a, align 4
  %.0 = select i1 %.not, i32 -1, i32 %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.0
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @bn_odd_number_is_obviously_composite(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !93 ; 5 uses
  %i.b = icmp sgt i32 %.val.i, 16
  %..i.i = select i1 %i.b, i64 1024, i64 512
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = add nuw nsw i64 %.0914.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.c, %..i.i
  br i1 %exitcond.not.i, label %bn_trial_division.exit.thread, label %bb.c, !llvm.loop !16

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0914.i = phi i64 [ 1, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @kPrimes, i64 %.0914.i
  %i.e = load i16, ptr %i.d, align 2, !tbaa !131  ; 2 uses
  %i.f = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef readonly %0, i16 noundef zeroext %i.e)
  %i.g = icmp eq i16 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.h) #47, !srcloc !120
  %.not.not.not.i.not = icmp eq i32 %i.i, 0
  br i1 %.not.not.not.i.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i16 %i.e to i64                     ; 2 uses
  %i.k = icmp eq i32 %.val.i, 0
  br i1 %i.k, label %BN_abs_is_word.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !80
  %i.n = xor i64 %i.m, %i.j                       ; 3 uses
  %i.o = icmp sgt i32 %.val.i, 1
  br i1 %i.o, label %.lr.ph.preheader.i.i, label %BN_abs_is_word.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %wide.trip.count.i.i = zext nneg i32 %.val.i to i64 ; 2 uses
  %i.p = add nsw i64 %wide.trip.count.i.i, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %.val.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.q = or disjoint i64 %n.vec, 1
  %i.r = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.n, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.r, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi13 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !tbaa !80
  %wide.load14 = load <2 x i64>, ptr %i.u, align 8, !tbaa !80
  %i.v = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.w = or <2 x i64> %wide.load14, %vec.phi13    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1487

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.w, %i.v
  %i.y = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %BN_abs_is_word.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.q, %middle.block ]
  %.01113.i.i.ph = phi i64 [ %i.n, %.lr.ph.preheader.i.i ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01113.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %.01113.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80
  %i.ab = or i64 %i.aa, %.01113.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %BN_abs_is_word.exit.i, label %.lr.ph.i.i, !llvm.loop !1488

BN_abs_is_word.exit.i:                            ; preds = %.lr.ph.i.i, %middle.block, %bb.e, %bb.d
  %.012.in.in.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ], [ %i.y, %middle.block ], [ %i.ab, %.lr.ph.i.i ]
  %.012.in.i.not.i = icmp eq i64 %.012.in.in.i.i, 0
  br i1 %.012.in.i.not.i, label %bb.f, label %bn_trial_division.exit.thread

bb.f:                                             ; preds = %BN_abs_is_word.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !91
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  br label %bn_trial_division.exit.thread

bn_trial_division.exit.thread:                    ; preds = %bb.b, %bb.f, %BN_abs_is_word.exit.i
  %i.ag = phi i32 [ %i.af, %bb.f ], [ 1, %BN_abs_is_word.exit.i ], [ 0, %bb.b ]
  ret i32 %i.ag
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @bn_miller_rabin_init(ptr nofree noundef captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = tail call ptr @BN_CTX_get(ptr noundef %2)
  store ptr %i.b, ptr %0, align 8, !tbaa !134
  %i.c = tail call ptr @BN_CTX_get(ptr noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !135
  %i.e = tail call ptr @BN_CTX_get(ptr noundef %2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !136
  %i.g = tail call ptr @BN_CTX_get(ptr noundef %2) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !137
  %i.i = load ptr, ptr %0, align 8, !tbaa !134    ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_once(ptr noundef nonnull @BN_value_one_once, ptr noundef nonnull @BN_value_one_init) #46
  %i.p = tail call i32 @bn_usub_consttime(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull @BN_value_one_storage)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !134    ; 2 uses
  %i.r = tail call i32 @BN_count_low_zero_bits(ptr noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.r, ptr %i.s, align 4, !tbaa !138
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.u = tail call i32 @bn_rshift_secret_shift(ptr noundef %i.t, ptr noundef %i.q, i32 noundef %i.r, ptr noundef %2)
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@BN_mod_sqrt:bb.a
  %.lcssa515 = phi i64 [ %i.jg, %middle.block581 ], [ %i.jj, %scalar.ph570 ]
  %.not422 = icmp eq i64 %.lcssa515, 0
  br i1 %.not422, label %BN_is_zero.exit344.thread, label %bb.cd

BN_is_zero.exit344.thread:                        ; preds = %bb.ca, %BN_is_zero.exit344
  %i.jl = tail call i32 @BN_nnmod(ptr noundef nonnull %i.ge, ptr noundef %i.gb, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not243 = icmp eq i32 %i.jl, 0
  br i1 %.not243, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %BN_is_zero.exit344.thread
  %i.jm = load i32, ptr %i.ix, align 8, !tbaa !93 ; 3 uses
  %i.jn = sext i32 %i.jm to i64                   ; 3 uses
  %.not.i345 = icmp eq i32 %i.jm, 0
  br i1 %.not.i345, label %BN_is_zero.exit352.thread, label %.lr.ph.i.i346

.lr.ph.i.i346:                                    ; preds = %bb.cb
  %i.jo = load ptr, ptr %i.ge, align 8, !tbaa !92 ; 2 uses
  %min.iters.check603 = icmp ult i32 %i.jm, 4
  br i1 %min.iters.check603, label %scalar.ph602.preheader, label %vector.ph604

vector.ph604:                                     ; preds = %.lr.ph.i.i346
  %n.vec605 = and i64 %i.jn, -4                   ; 3 uses
  br label %vector.body606

vector.body606:                                   ; preds = %vector.body606, %vector.ph604
  %index607 = phi i64 [ 0, %vector.ph604 ], [ %index.next612, %vector.body606 ] ; 2 uses
  %vec.phi608 = phi <2 x i64> [ zeroinitializer, %vector.ph604 ], [ %i.jr, %vector.body606 ]
  %vec.phi609 = phi <2 x i64> [ zeroinitializer, %vector.ph604 ], [ %i.js, %vector.body606 ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %index607 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load610 = load <2 x i64>, ptr %i.jp, align 8, !tbaa !80
  %wide.load611 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !80
  %i.jr = or <2 x i64> %wide.load610, %vec.phi608 ; 2 uses
  %i.js = or <2 x i64> %wide.load611, %vec.phi609 ; 2 uses
  %index.next612 = add nuw i64 %index607, 4       ; 2 uses
  %i.jt = icmp eq i64 %index.next612, %n.vec605
  br i1 %i.jt, label %middle.block613, label %vector.body606, !llvm.loop !1569

middle.block613:                                  ; preds = %vector.body606
  %bin.rdx614 = or <2 x i64> %i.js, %i.jr
  %i.ju = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx614) ; 2 uses
  %cmp.n615 = icmp eq i64 %n.vec605, %i.jn
  br i1 %cmp.n615, label %BN_is_zero.exit352, label %scalar.ph602.preheader

scalar.ph602.preheader:                           ; preds = %.lr.ph.i.i346, %middle.block613
  %.09.i.i347.ph = phi i64 [ 0, %.lr.ph.i.i346 ], [ %n.vec605, %middle.block613 ]
  %.078.i.i348.ph = phi i64 [ 0, %.lr.ph.i.i346 ], [ %i.ju, %middle.block613 ]
  br label %scalar.ph602

scalar.ph602:                                     ; preds = %scalar.ph602.preheader, %scalar.ph602
  %.09.i.i347 = phi i64 [ %i.jy, %scalar.ph602 ], [ %.09.i.i347.ph, %scalar.ph602.preheader ] ; 2 uses
  %.078.i.i348 = phi i64 [ %i.jx, %scalar.ph602 ], [ %.078.i.i348.ph, %scalar.ph602.preheader ]
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.09.i.i347
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !80
  %i.jx = or i64 %i.jw, %.078.i.i348              ; 2 uses
  %i.jy = add nuw i64 %.09.i.i347, 1              ; 2 uses
  %exitcond.not.i.i349 = icmp eq i64 %i.jy, %i.jn
  br i1 %exitcond.not.i.i349, label %BN_is_zero.exit352, label %scalar.ph602, !llvm.loop !1570

BN_is_zero.exit352:                               ; preds = %scalar.ph602, %middle.block613
  %.lcssa513 = phi i64 [ %i.ju, %middle.block613 ], [ %i.jx, %scalar.ph602 ]
  %.not424 = icmp eq i64 %.lcssa513, 0
  br i1 %.not424, label %BN_is_zero.exit352.thread, label %bb.cc

BN_is_zero.exit352.thread:                        ; preds = %bb.cb, %BN_is_zero.exit352
  %i.jz = getelementptr inbounds nuw i8, ptr %.2215.ph, i64 16
  store i32 0, ptr %i.jz, align 8, !tbaa !91
  %i.ka = getelementptr inbounds nuw i8, ptr %.2215.ph, i64 8
  store i32 0, ptr %i.ka, align 8, !tbaa !93
  br label %BN_new.exit325

bb.cc:                                            ; preds = %BN_is_zero.exit352
  %i.kb = tail call i32 @BN_one(ptr noundef %i.gf)
  %.not245 = icmp eq i32 %i.kb, 0
  br i1 %.not245, label %.loopexit, label %bb.cf

bb.cd:                                            ; preds = %BN_is_zero.exit344
  %i.kc = tail call i32 @BN_mod_exp_mont(ptr noundef %i.gf, ptr noundef %i.gb, ptr noundef nonnull %i.ge, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null)
  %.not241 = icmp eq i32 %i.kc, 0
  br i1 %.not241, label %.loopexit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !93 ; 3 uses
  %i.kf = sext i32 %i.ke to i64                   ; 3 uses
  %.not.i353 = icmp eq i32 %i.ke, 0
  br i1 %.not.i353, label %BN_is_zero.exit360.thread, label %.lr.ph.i.i354

.lr.ph.i.i354:                                    ; preds = %bb.ce
  %i.kg = load ptr, ptr %i.gf, align 8, !tbaa !92 ; 2 uses
  %min.iters.check587 = icmp ult i32 %i.ke, 4
  br i1 %min.iters.check587, label %scalar.ph586.preheader, label %vector.ph588

vector.ph588:                                     ; preds = %.lr.ph.i.i354
  %n.vec589 = and i64 %i.kf, -4                   ; 3 uses
  br label %vector.body590

vector.body590:                                   ; preds = %vector.body590, %vector.ph588
  %index591 = phi i64 [ 0, %vector.ph588 ], [ %index.next596, %vector.body590 ] ; 2 uses
  %vec.phi592 = phi <2 x i64> [ zeroinitializer, %vector.ph588 ], [ %i.kj, %vector.body590 ]
  %vec.phi593 = phi <2 x i64> [ zeroinitializer, %vector.ph588 ], [ %i.kk, %vector.body590 ]
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %index591 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %wide.load594 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !80
  %wide.load595 = load <2 x i64>, ptr %i.ki, align 8, !tbaa !80
  %i.kj = or <2 x i64> %wide.load594, %vec.phi592 ; 2 uses
  %i.kk = or <2 x i64> %wide.load595, %vec.phi593 ; 2 uses
  %index.next596 = add nuw i64 %index591, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next596, %n.vec589
  br i1 %i.kl, label %middle.block597, label %vector.body590, !llvm.loop !1571

middle.block597:                                  ; preds = %vector.body590
  %bin.rdx598 = or <2 x i64> %i.kk, %i.kj
  %i.km = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx598) ; 2 uses
  %cmp.n599 = icmp eq i64 %n.vec589, %i.kf
  br i1 %cmp.n599, label %BN_is_zero.exit360, label %scalar.ph586.preheader

scalar.ph586.preheader:                           ; preds = %.lr.ph.i.i354, %middle.block597
  %.09.i.i355.ph = phi i64 [ 0, %.lr.ph.i.i354 ], [ %n.vec589, %middle.block597 ]
  %.078.i.i356.ph = phi i64 [ 0, %.lr.ph.i.i354 ], [ %i.km, %middle.block597 ]
  br label %scalar.ph586

scalar.ph586:                                     ; preds = %scalar.ph586.preheader, %scalar.ph586
  %.09.i.i355 = phi i64 [ %i.kq, %scalar.ph586 ], [ %.09.i.i355.ph, %scalar.ph586.preheader ] ; 2 uses
  %.078.i.i356 = phi i64 [ %i.kp, %scalar.ph586 ], [ %.078.i.i356.ph, %scalar.ph586.preheader ]
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.09.i.i355
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !80
  %i.kp = or i64 %i.ko, %.078.i.i356              ; 2 uses
  %i.kq = add nuw i64 %.09.i.i355, 1              ; 2 uses
  %exitcond.not.i.i357 = icmp eq i64 %i.kq, %i.kf
  br i1 %exitcond.not.i.i357, label %BN_is_zero.exit360, label %scalar.ph586, !llvm.loop !1572

BN_is_zero.exit360:                               ; preds = %scalar.ph586, %middle.block597
  %.lcssa514 = phi i64 [ %i.km, %middle.block597 ], [ %i.kp, %scalar.ph586 ]
  %.not423 = icmp eq i64 %.lcssa514, 0
  br i1 %.not423, label %BN_is_zero.exit360.thread, label %bb.cf

BN_is_zero.exit360.thread:                        ; preds = %bb.ce, %BN_is_zero.exit360
  %i.kr = getelementptr inbounds nuw i8, ptr %.2215.ph, i64 16
  store i32 0, ptr %i.kr, align 8, !tbaa !91
  %i.ks = getelementptr inbounds nuw i8, ptr %.2215.ph, i64 8
  store i32 0, ptr %i.ks, align 8, !tbaa !93
  br label %BN_new.exit325

bb.cf:                                            ; preds = %BN_is_zero.exit360, %bb.cc
  %i.kt = tail call i32 @BN_mod_sqr(ptr noundef %i.gc, ptr noundef %i.gf, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not246 = icmp eq i32 %i.kt, 0
  br i1 %.not246, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ku = tail call i32 @BN_mod_mul(ptr noundef %i.gc, ptr noundef %i.gc, ptr noundef %i.gb, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not247 = icmp eq i32 %i.ku, 0
  br i1 %.not247, label %.loopexit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kv = tail call i32 @BN_mod_mul(ptr noundef %i.gf, ptr noundef %i.gf, ptr noundef %i.gb, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not248 = icmp eq i32 %i.kv, 0
  br i1 %.not248, label %.loopexit, label %.preheader427

.preheader427:                                    ; preds = %bb.ch, %bb.cq
  %.1210 = phi i32 [ %.1441.lcssa451, %bb.cq ], [ %i.gw, %bb.ch ] ; 4 uses
  %i.kw = tail call i32 @BN_is_one(ptr noundef %i.gc)
  %.not249 = icmp eq i32 %i.kw, 0
  br i1 %.not249, label %.preheader, label %bb.ck

.preheader:                                       ; preds = %.preheader427
  %i.kx = icmp samesign ugt i32 %.1210, 1
  br i1 %i.kx, label %.lr.ph.preheader, label %.preheader._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ky = tail call i32 @BN_mod_sqr(ptr noundef %i.ge, ptr noundef %i.gc, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not251.peel = icmp eq i32 %i.ky, 0
  br i1 %.not251.peel, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.preheader
  %i.kz = tail call i32 @BN_is_one(ptr noundef %i.ge)
  %.not252.peel = icmp eq i32 %i.kz, 0
  br i1 %.not252.peel, label %bb.cj, label %.loopexit466

bb.cj:                                            ; preds = %bb.ci
  %exitcond464.peel.not = icmp eq i32 %.1210, 2
  br i1 %exitcond464.peel.not, label %.preheader._crit_edge, label %.lr.ph.peel.next

bb.ck:                                            ; preds = %.preheader427
  %i.la = tail call ptr @BN_copy(ptr noundef nonnull %.2215.ph, ptr noundef %i.gf)
  %.not259 = icmp eq ptr %i.la, null
  br i1 %.not259, label %.loopexit, label %bb.cr

.lr.ph.peel.next:                                 ; preds = %bb.cj, %bb.cm
  %.1441 = phi i32 [ %i.ld, %bb.cm ], [ 2, %bb.cj ] ; 2 uses
  %i.lb = tail call i32 @BN_mod_mul(ptr noundef %i.ge, ptr noundef %i.ge, ptr noundef %i.ge, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not250 = icmp eq i32 %i.lb, 0
  br i1 %.not250, label %.loopexit, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.peel.next
  %i.lc = tail call i32 @BN_is_one(ptr noundef %i.ge)
  %.not252 = icmp eq i32 %i.lc, 0
  br i1 %.not252, label %bb.cm, label %.loopexit466

bb.cm:                                            ; preds = %bb.cl
  %i.ld = add nuw i32 %.1441, 1                   ; 2 uses
  %exitcond464.not = icmp eq i32 %i.ld, %.1210
  br i1 %exitcond464.not, label %.preheader._crit_edge, label %.lr.ph.peel.next, !llvm.loop !1573

.preheader._crit_edge:                            ; preds = %.preheader, %bb.cj, %bb.cm
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 110, ptr noundef nonnull @.str.13, i32 noundef 328) #46
  br label %.loopexit

.loopexit466:                                     ; preds = %bb.cl, %bb.ci
  %.1441.lcssa451 = phi i32 [ 1, %bb.ci ], [ %.1441, %bb.cl ] ; 2 uses
  %i.le = tail call ptr @BN_copy(ptr noundef %i.ge, ptr noundef nonnull %i.gg)
  %.not254 = icmp eq ptr %i.le, null
  br i1 %.not254, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %.loopexit466
  %i.lf = xor i32 %.1441.lcssa451, -1
  %i.lg = add nsw i32 %.1210, %i.lf               ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %.lr.ph444, label %._crit_edge445

bb.co:                                            ; preds = %.lr.ph444
  %i.li = add nsw i32 %.0442, -1
  %i.lj = icmp sgt i32 %.0442, 1
  br i1 %i.lj, label %.lr.ph444, label %._crit_edge445, !llvm.loop !1574

.lr.ph444:                                        ; preds = %bb.cn, %bb.co
  %.0442 = phi i32 [ %i.li, %bb.co ], [ %i.lg, %bb.cn ] ; 2 uses
  %i.lk = tail call i32 @BN_mod_sqr(ptr noundef %i.ge, ptr noundef %i.ge, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not258 = icmp eq i32 %i.lk, 0
  br i1 %.not258, label %.loopexit, label %bb.co

._crit_edge445:                                   ; preds = %bb.co, %bb.cn
  %i.ll = tail call i32 @BN_mod_mul(ptr noundef nonnull %i.gg, ptr noundef %i.ge, ptr noundef %i.ge, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not255 = icmp eq i32 %i.ll, 0
  br i1 %.not255, label %.loopexit, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge445
  %i.lm = tail call i32 @BN_mod_mul(ptr noundef %i.gf, ptr noundef %i.gf, ptr noundef %i.ge, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not256 = icmp eq i32 %i.lm, 0
  br i1 %.not256, label %.loopexit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ln = tail call i32 @BN_mod_mul(ptr noundef %i.gc, ptr noundef %i.gc, ptr noundef nonnull %i.gg, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not257 = icmp eq i32 %i.ln, 0
  br i1 %.not257, label %.loopexit, label %.preheader427

bb.cr:                                            ; preds = %bb.az, %bb.bi, %bb.ck
  %i.lo = tail call i32 @BN_mod_sqr(ptr noundef %i.gf, ptr noundef nonnull %.2215.ph, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not272.not = icmp eq i32 %i.lo, 0
  br i1 %.not272.not, label %.loopexit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lp = tail call i32 @BN_cmp(ptr noundef %i.gf, ptr noundef %i.gb)
  %.not274 = icmp eq i32 %i.lp, 0
  br i1 %.not274, label %BN_new.exit325, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 110, ptr noundef nonnull @.str.13, i32 noundef 360) #46
  br label %.loopexit

.loopexit:                                        ; preds = %bb.br, %bb.bm, %BN_is_zero.exit336.thread, %bb.bp, %bb.bn, %bb.cq, %bb.cp, %._crit_edge445, %.loopexit466, %.lr.ph.preheader, %.lr.ph.peel.next, %.lr.ph444, %bb.bj, %bb.au, %bb.cr, %bb.ct, %bb.az, %bb.ay, %bb.ax, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.bt, %.critedge, %bb.by, %bb.ck, %.preheader._crit_edge, %bb.ch, %bb.cg, %bb.cf, %bb.cc, %BN_is_zero.exit344.thread, %bb.cd, %bb.bz, %bb.bw, %bb.bv, %bb.as
  %.3.ph = phi ptr [ null, %bb.as ], [ %.2215.ph, %bb.bh ], [ %.2215.ph, %bb.bi ], [ %.2215.ph, %bb.ax ], [ %.2215.ph, %bb.ay ], [ %.2215.ph, %bb.bv ], [ %.2215.ph, %bb.bw ], [ %.2215.ph, %bb.bz ], [ %.2215.ph, %bb.cd ], [ %.2215.ph, %BN_is_zero.exit344.thread ], [ %.2215.ph, %bb.cc ], [ %.2215.ph, %bb.cf ], [ %.2215.ph, %bb.cg ], [ %.2215.ph, %bb.ch ], [ %.2215.ph, %bb.au ], [ %.2215.ph, %.lr.ph.peel.next ], [ %.2215.ph, %bb.az ], [ %.2215.ph, %bb.ct ], [ %.2215.ph, %bb.cr ], [ %.2215.ph, %bb.cq ], [ %.2215.ph, %bb.bj ], [ %.2215.ph, %.preheader._crit_edge ], [ %.2215.ph, %bb.ck ], [ %.2215.ph, %bb.by ], [ %.2215.ph, %.critedge ], [ %.2215.ph, %bb.bt ], [ %.2215.ph, %.lr.ph444 ], [ %.2215.ph, %bb.ba ], [ %.2215.ph, %bb.bb ], [ %.2215.ph, %bb.bc ], [ %.2215.ph, %bb.bd ], [ %.2215.ph, %bb.be ], [ %.2215.ph, %bb.bf ], [ %.2215.ph, %bb.bg ], [ %.2215.ph, %.lr.ph.preheader ], [ %.2215.ph, %.loopexit466 ], [ %.2215.ph, %._crit_edge445 ], [ %.2215.ph, %bb.cp ], [ %.2215.ph, %bb.bn ], [ %.2215.ph, %bb.bp ], [ %.2215.ph, %BN_is_zero.exit336.thread ], [ %.2215.ph, %bb.bm ], [ %.2215.ph, %bb.br ] ; 2 uses
  %.not276 = icmp eq ptr %.3.ph, %0
  br i1 %.not276, label %BN_new.exit325, label %bb.cu

bb.cu:                                            ; preds = %.loopexit
  tail call void @BN_clear_free(ptr noundef %.3.ph)
  br label %BN_new.exit325

BN_new.exit325:                                   ; preds = %BN_CTX_start.exit, %BN_is_zero.exit352.thread, %BN_is_zero.exit360.thread, %bb.cs, %.loopexit, %bb.cu
  %.4 = phi ptr [ null, %.loopexit ], [ null, %bb.cu ], [ %.2215.ph, %BN_is_zero.exit352.thread ], [ %.2215.ph, %BN_is_zero.exit360.thread ], [ %.2215.ph, %bb.cs ], [ null, %BN_CTX_start.exit ] ; 2 uses
  %i.lq = load i8, ptr %i.fc, align 8, !tbaa !110
  %.not.i361 = icmp eq i8 %i.lq, 0
  br i1 %.not.i361, label %bb.cv, label %BN_set_word.exit

bb.cv:                                            ; preds = %BN_new.exit325
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !112
  %i.lu = add i64 %i.lt, -1                       ; 2 uses
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !112
  %i.lv = load ptr, ptr %i.lr, align 8, !tbaa !109
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lu
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !80
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !111
  br label %BN_set_word.exit

BN_set_word.exit:                                 ; preds = %bb.w, %bb.f, %bb.cv, %BN_new.exit325, %bb.al, %bb.ak, %bn_wexpand.exit.i315, %BN_is_one.exit311.thread, %bb.s, %bb.r, %bn_wexpand.exit.i, %BN_is_bit_set.exit.thread, %BN_new.exit299, %BN_new.exit, %BN_abs_is_word.exit292.thread
  %.0216 = phi ptr [ null, %bb.al ], [ null, %BN_new.exit ], [ null, %BN_abs_is_word.exit292.thread ], [ null, %bb.s ], [ null, %BN_new.exit299 ], [ %.4, %BN_new.exit325 ], [ null, %bb.ak ], [ %.0213.ph, %BN_is_bit_set.exit.thread ], [ %.0213.ph, %bn_wexpand.exit.i ], [ %.4, %bb.cv ], [ null, %bb.f ], [ null, %bb.r ], [ %.1214.ph, %BN_is_one.exit311.thread ], [ %.1214.ph, %bn_wexpand.exit.i315 ], [ null, %bb.w ]
  ret ptr %.0216
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_sqrt(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.13, i32 noundef 381) #46
  br label %BN_CTX_end.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93   ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %BN_is_zero.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.e, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi119 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !80
  %wide.load120 = load <2 x i64>, ptr %i.h, align 8, !tbaa !80
  %i.i = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.j = or <2 x i64> %wide.load120, %vec.phi119  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1575

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.j, %i.i
  %i.l = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %BN_is_zero.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.p, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i.i = phi i64 [ %i.o, %scalar.ph ], [ %.078.i.i.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.09.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !80
  %i.o = or i64 %i.n, %.078.i.i                   ; 2 uses
  %i.p = add nuw i64 %.09.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.e
  br i1 %exitcond.not.i.i, label %BN_is_zero.exit, label %scalar.ph, !llvm.loop !1576

BN_is_zero.exit:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.o, %scalar.ph ]
  %.not90 = icmp eq i64 %.lcssa, 0
  br i1 %.not90, label %BN_is_zero.exit.thread, label %bb.d

BN_is_zero.exit.thread:                           ; preds = %bb.c, %BN_is_zero.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !91
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !93
  br label %BN_CTX_end.exit

bb.d:                                             ; preds = %BN_is_zero.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !110
  %.not.i74 = icmp eq i8 %i.t, 0
  br i1 %.not.i74, label %bb.e, label %BN_CTX_start.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !111
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !112  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !113
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i64 %i.y, 0
  %i.ac = mul i64 %i.y, 3
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = select i1 %.not.i.i, i64 32, i64 %i.ad  ; 4 uses
  %i.af = icmp ule i64 %i.ae, %i.y
  %i.ag = icmp samesign ugt i64 %i.ae, 2305843009213693951
  %or.cond.i.i = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !109
end_hunk_1
begin_hunk_2_@CRYPTO_gcm128_tag:bb.a
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.g = load i32, ptr %i.f, align 4, !tbaa !465
  %.not24.i = icmp eq i32 %i.g, 0
  br i1 %.not24.i, label %CRYPTO_gcm128_finish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #46, !inline_history !472
  br label %CRYPTO_gcm128_finish.exit

CRYPTO_gcm128_finish.exit:                        ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load <2 x i64>, ptr %i.i, align 16, !tbaa !80
  %i.l = shl <2 x i64> %i.k, splat (i64 3)
  %i.m = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.l)
  %i.n = load <2 x i64>, ptr %i.j, align 16
  %i.o = xor <2 x i64> %i.m, %i.n
  store <2 x i64> %i.o, ptr %i.j, align 16
  tail call void %i.c(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #46, !inline_history !472
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <2 x i64>, ptr %i.j, align 16
  %i.r = load <2 x i64>, ptr %i.p, align 16
  %i.s = xor <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.j, align 16
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %OPENSSL_memcpy.exit, label %bb.d

bb.d:                                             ; preds = %CRYPTO_gcm128_finish.exit
  %i.u = tail call i64 @llvm.umin.i64(i64 %2, i64 16)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 16 %i.j, i64 %i.u, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %CRYPTO_gcm128_finish.exit, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 2) i64 @CRYPTO_xts128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon.2, align 16             ; 16 uses
  %7 = alloca %union.anon.2, align 16             ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.a = icmp ult i64 %4, 16
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2295
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2296
  call void %i.c(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %i.e) #46
  %.not = icmp ne i32 %5, 0                       ; 2 uses
  %i.f = and i64 %4, 15
  %.not61 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %.not61
  %i.g = add i64 %4, -16
  %spec.select = select i1 %or.cond, i64 %4, i64 %i.g ; 3 uses
  %i.h = icmp ugt i64 %spec.select, 15
  br i1 %i.h, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x i64>, ptr %6, align 16, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.05268 = phi ptr [ %2, %.lr.ph ], [ %i.w, %select.unfold ] ; 2 uses
  %.05367 = phi ptr [ %3, %.lr.ph ], [ %i.v, %select.unfold ] ; 2 uses
  %.166 = phi i64 [ %spec.select, %.lr.ph ], [ %i.t, %select.unfold ]
  %i.l = phi <2 x i64> [ %i.k, %.lr.ph ], [ %i.af, %select.unfold ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull readonly align 1 dereferenceable(16) %.05268, i64 16, i1 false)
  %i.m = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.n = xor <2 x i64> %i.m, %i.l
  store <2 x i64> %i.n, ptr %7, align 16, !tbaa !76
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !2297
  %i.p = load ptr, ptr %0, align 8, !tbaa !2298
  call void %i.o(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.p) #46
  %i.q = load <2 x i64>, ptr %6, align 16, !tbaa !76 ; 3 uses
  %i.r = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.s = xor <2 x i64> %i.r, %i.q                 ; 2 uses
  store <2 x i64> %i.s, ptr %7, align 16, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05367, ptr noundef nonnull readonly align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.t = add i64 %.166, -16                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %select.unfold

select.unfold:                                    ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.05367, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05268, i64 16 ; 2 uses
  %i.x = extractelement <2 x i64> %i.q, i64 1     ; 2 uses
  %isneg62 = icmp slt i64 %i.x, 0
  %i.y = extractelement <2 x i64> %i.q, i64 0     ; 2 uses
  %i.z = shl i64 %i.y, 1
  %i.aa = select i1 %isneg62, i64 135, i64 0
  %i.ab = xor i64 %i.aa, %i.z                     ; 2 uses
  store i64 %i.ab, ptr %6, align 16, !tbaa !76
  %i.ac = call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.y, i64 1) ; 2 uses
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !76
  %i.ad = icmp ugt i64 %i.t, 15
  %i.ae = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.af = insertelement <2 x i64> %i.ae, i64 %i.ac, i64 1
  br i1 %i.ad, label %bb.c, label %select.unfold._crit_edge.loopexit, !llvm.loop !2282

select.unfold._crit_edge.loopexit:                ; preds = %select.unfold
  %i.ag = extractelement <2 x i64> %i.s, i64 0
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold._crit_edge.loopexit, %bb.b
  %i.ah = phi i64 [ undef, %bb.b ], [ %i.ag, %select.unfold._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %spec.select, %bb.b ], [ %i.t, %select.unfold._crit_edge.loopexit ] ; 19 uses
  %.053.lcssa = phi ptr [ %3, %bb.b ], [ %i.v, %select.unfold._crit_edge.loopexit ] ; 15 uses
  %.052.lcssa = phi ptr [ %2, %bb.b ], [ %i.w, %select.unfold._crit_edge.loopexit ] ; 14 uses
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %select.unfold._crit_edge
  %.not77 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not77, label %._crit_edge75, label %iter.check153

iter.check153:                                    ; preds = %.preheader
  %min.iters.check138 = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check138, label %.lr.ph74.preheader, label %vector.memcheck123

vector.memcheck123:                               ; preds = %iter.check153
  %scevgep124 = getelementptr i8, ptr %.053.lcssa, i64 %.1.lcssa ; 2 uses
  %scevgep125 = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %scevgep126 = getelementptr i8, ptr %.052.lcssa, i64 %.1.lcssa ; 2 uses
  %bound0127 = icmp ult ptr %.053.lcssa, %scevgep125
  %bound1128 = icmp ult ptr %7, %scevgep124
  %found.conflict129 = and i1 %bound0127, %bound1128
  %bound0130 = icmp ult ptr %.053.lcssa, %scevgep126
  %bound1131 = icmp ult ptr %.052.lcssa, %scevgep124
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %found.conflict129, %found.conflict132
  %bound0134 = icmp ult ptr %7, %scevgep126
  %bound1135 = icmp ult ptr %.052.lcssa, %scevgep125
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  br i1 %conflict.rdx137, label %.lr.ph74.preheader, label %vec.epilog.ph157

vec.epilog.ph157:                                 ; preds = %vector.memcheck123
  %n.vec158 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph157
  %index160 = phi i64 [ 0, %vec.epilog.ph157 ], [ %index.next163, %vec.epilog.vector.body159 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %index160
  %wide.load161 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !76, !alias.scope !2299
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 %index160 ; 2 uses
  %wide.load162 = load <4 x i8>, ptr %i.aj, align 4, !tbaa !76, !alias.scope !2300, !noalias !2299
  %i.ak = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %index160
  store <4 x i8> %wide.load162, ptr %i.ak, align 1, !tbaa !76, !alias.scope !2301, !noalias !2302
  store <4 x i8> %wide.load161, ptr %i.aj, align 4, !tbaa !76, !alias.scope !2300, !noalias !2299
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.al, label %vec.epilog.middle.block164, label %vec.epilog.vector.body159, !llvm.loop !2287

vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body159
  %cmp.n165 = icmp eq i64 %.1.lcssa, %n.vec158
  br i1 %cmp.n165, label %._crit_edge75.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %vector.memcheck123, %iter.check153, %vec.epilog.middle.block164
  %indvars.iv82.ph = phi i64 [ 0, %vector.memcheck123 ], [ 0, %iter.check153 ], [ %n.vec158, %vec.epilog.middle.block164 ] ; 6 uses
  %.neg173 = or disjoint i64 %indvars.iv82.ph, 1
  %xtraiter171 = and i64 %.1.lcssa, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv82.ph
  %i.an = load i8, ptr %i.am, align 1, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv82.ph ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv82.ph
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !76
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !76
  %indvars.iv.next83.prol = or disjoint i64 %indvars.iv82.ph, 1
  br label %.lr.ph74.prol.loopexit

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %.lr.ph74.preheader ], [ %indvars.iv.next83.prol, %.lr.ph74.prol ]
  %i.ar = icmp eq i64 %.1.lcssa, %.neg173
  br i1 %i.ar, label %._crit_edge75.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.1, %.lr.ph74 ], [ %indvars.iv82.unr, %.lr.ph74.prol.loopexit ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv82
  %i.at = load i8, ptr %i.as, align 1, !tbaa !76
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv82 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv82
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !76
  store i8 %i.at, ptr %i.au, align 1, !tbaa !76
  %indvars.iv.next83 = add nuw i64 %indvars.iv82, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv.next83
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next83 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv.next83
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !76
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !76
  %indvars.iv.next83.1 = add nuw i64 %indvars.iv82, 2 ; 2 uses
  %exitcond85.not.1 = icmp eq i64 %indvars.iv.next83.1, %.1.lcssa
  br i1 %exitcond85.not.1, label %._crit_edge75.loopexit, label %.lr.ph74, !llvm.loop !2288

._crit_edge75.loopexit:                           ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %vec.epilog.middle.block164
  %.pre89 = load i64, ptr %7, align 16, !tbaa !76
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %.preheader
  %i.bc = phi i64 [ %.pre89, %._crit_edge75.loopexit ], [ %i.ah, %.preheader ]
  %i.bd = load i64, ptr %6, align 16, !tbaa !76
  %i.be = xor i64 %i.bc, %i.bd
  store i64 %i.be, ptr %7, align 16, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !76
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !76
  %i.bj = xor i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2297
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2298
  call void %i.bl(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.bm) #46
  %i.bn = load <2 x i64>, ptr %6, align 16, !tbaa !76
  %i.bo = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.bp = xor <2 x i64> %i.bo, %i.bn
  store <2 x i64> %i.bp, ptr %7, align 16, !tbaa !76
  %i.bq = getelementptr inbounds i8, ptr %.053.lcssa, i64 -16
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %select.unfold._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !76 ; 2 uses
  %isneg = icmp slt i64 %i.bs, 0
  %i.bt = load i64, ptr %6, align 16, !tbaa !76   ; 2 uses
  %i.bu = shl i64 %i.bt, 1
  %i.bv = select i1 %isneg, i64 135, i64 0
  %i.bw = xor i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bt, i64 1) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull readonly align 1 dereferenceable(16) %.052.lcssa, i64 16, i1 false)
  %i.by = load i64, ptr %7, align 16, !tbaa !76
  %i.bz = xor i64 %i.by, %i.bw
  store i64 %i.bz, ptr %7, align 16, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !76
  %i.cc = xor i64 %i.cb, %i.bx
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2297
  %i.cf = load ptr, ptr %0, align 8, !tbaa !2298
  call void %i.ce(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.cf) #46
  %i.cg = load i64, ptr %7, align 16, !tbaa !76
  %i.ch = xor i64 %i.cg, %i.bw                    ; 2 uses
  store i64 %i.ch, ptr %7, align 16, !tbaa !76
  %i.ci = load i64, ptr %i.ca, align 8, !tbaa !76
  %i.cj = xor i64 %i.ci, %i.bx                    ; 2 uses
  store i64 %i.cj, ptr %i.ca, align 8, !tbaa !76
  %.not76 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not76, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph72.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.053.lcssa, i64 16 ; 2 uses
  %i.ck = or disjoint i64 %.1.lcssa, 16           ; 2 uses
  %scevgep102 = getelementptr i8, ptr %.053.lcssa, i64 %i.ck ; 2 uses
  %scevgep103 = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %scevgep104 = getelementptr i8, ptr %.052.lcssa, i64 16 ; 2 uses
  %scevgep105 = getelementptr i8, ptr %.052.lcssa, i64 %i.ck ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %7, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  %bound0106 = icmp ult ptr %scevgep, %scevgep105
  %bound1107 = icmp ult ptr %scevgep104, %scevgep102
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict, %found.conflict108
  %bound0109 = icmp ult ptr %7, %scevgep105
  %bound1110 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph72.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec117 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = add nuw i64 %index118, 16               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.cl
  %wide.load119 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !76, !alias.scope !2303
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 %index118 ; 2 uses
  %wide.load120 = load <4 x i8>, ptr %i.cn, align 4, !tbaa !76, !alias.scope !2304, !noalias !2303
  %i.co = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.cl
  store <4 x i8> %wide.load120, ptr %i.co, align 1, !tbaa !76, !alias.scope !2305, !noalias !2306
  store <4 x i8> %wide.load119, ptr %i.cn, align 4, !tbaa !76, !alias.scope !2304, !noalias !2303
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next121, %n.vec117
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2293

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n122 = icmp eq i64 %.1.lcssa, %n.vec117
  br i1 %cmp.n122, label %._crit_edge.loopexit, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec117, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %.1.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader
  %i.cq = or disjoint i64 %indvars.iv.ph, 16      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !76
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.ph ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !76
  %i.cv = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.cq
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !76
  store i8 %i.cs, ptr %i.ct, align 4, !tbaa !76
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph72.prol.loopexit

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph72.preheader ], [ %indvars.iv.next.prol, %.lr.ph72.prol ]
  %i.cw = icmp eq i64 %.1.lcssa, %.neg
  br i1 %i.cw, label %._crit_edge.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph72 ], [ %indvars.iv.unr, %.lr.ph72.prol.loopexit ] ; 5 uses
  %i.cx = add nuw i64 %indvars.iv, 16             ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !76
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !76
  %i.dc = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.cx
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !76
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !76
  %i.dd = add nuw i64 %indvars.iv, 17             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !76
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.dd
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !76
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %.1.lcssa
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph72, !llvm.loop !2294

._crit_edge.loopexit:                             ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %vec.epilog.middle.block
  %.pre87 = load i64, ptr %7, align 16, !tbaa !76
  %.pre88 = load i64, ptr %i.ca, align 8, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.dk = phi i64 [ %.pre88, %._crit_edge.loopexit ], [ %i.cj, %bb.d ]
  %i.dl = phi i64 [ %.pre87, %._crit_edge.loopexit ], [ %i.ch, %bb.d ]
  %i.dm = load i64, ptr %6, align 16, !tbaa !76
  %i.dn = xor i64 %i.dl, %i.dm
  store i64 %i.dn, ptr %7, align 16, !tbaa !76
  %i.do = load i64, ptr %i.br, align 8, !tbaa !76
  %i.dp = xor i64 %i.dk, %i.do
  store i64 %i.dp, ptr %i.ca, align 8, !tbaa !76
  %i.dq = load ptr, ptr %i.cd, align 8, !tbaa !2297
  %i.dr = load ptr, ptr %0, align 8, !tbaa !2298
  call void %i.dq(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.dr) #46
  %i.ds = load <2 x i64>, ptr %6, align 16, !tbaa !76
  %i.dt = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.du = xor <2 x i64> %i.dt, %i.ds
  store <2 x i64> %i.du, ptr %7, align 16, !tbaa !76
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %._crit_edge, %._crit_edge75
  %.sink = phi ptr [ %i.bq, %._crit_edge75 ], [ %.053.lcssa, %._crit_edge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sink, ptr noundef nonnull readonly align 16 dereferenceable(16) %7, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.sink.split, %bb.a
  %.0 = phi i64 [ 1, %.loopexit.sink.split ], [ 0, %bb.a ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_POLYVAL_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %.0.copyload.i.i = load i64, ptr %i.a, align 8  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.0.copyload.i12.i = load i64, ptr %i.c, align 8 ; 2 uses
  %i.d = and i64 %.0.copyload.i.i, 1              ; 2 uses
  %.neg.i.i.i.i = sub nsw i64 0, %i.d
  %i.e = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i12.i, i64 %.0.copyload.i.i, i64 63)
  %i.f = lshr i64 %.0.copyload.i12.i, 1
  %i.g = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #47, !srcloc !81
  %i.h = add nsw i64 %i.d, -1
  %i.i = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.h) #47, !srcloc !81 ; 0 uses
  %i.j = shl i64 %i.g, 56
  %i.k = and i64 %i.j, -2233785415175766016
  %i.l = xor i64 %i.k, %i.f
  %i.m = tail call noundef i64 @llvm.bswap.i64(i64 %i.l)
  store i64 %i.m, ptr %i.a, align 8
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  store i64 %i.n, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @CRYPTO_ghash_init(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_POLYVAL_update_blocks(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %._crit_edge23, label %OPENSSL_memcpy.exit.lr.ph

OPENSSL_memcpy.exit.lr.ph:                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %OPENSSL_memcpy.exit.lr.ph, %._crit_edge
  %.01722 = phi i64 [ %2, %OPENSSL_memcpy.exit.lr.ph ], [ %i.e, %._crit_edge ] ; 2 uses
  %.01821 = phi ptr [ %1, %OPENSSL_memcpy.exit.lr.ph ], [ %i.d, %._crit_edge ] ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %.01722, i64 512) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr readonly align 1 %.01821, i64 %spec.store.select, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.01821, i64 %spec.store.select
  %i.e = sub nuw i64 %.01722, %spec.store.select  ; 2 uses
  %i.f = lshr i64 %spec.store.select, 4           ; 3 uses
  switch i64 %i.f, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %OPENSSL_memcpy.exit
  %unroll_iter = and i64 %i.f, 62
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.g = and i64 %spec.store.select, 16
  %lcmp.mod.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %OPENSSL_memcpy.exit, %._crit_edge.loopexit.unr-lcssa
  %.019.epil.init = phi i64 [ 0, %OPENSSL_memcpy.exit ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod27)
  %i.h = shl nuw nsw i64 %.019.epil.init, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 3 uses
  %.0.copyload.i.i.epil = load i64, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.0.copyload.i5.i.epil = load i64, ptr %i.j, align 8
  %i.k = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i.epil)
  store i64 %i.k, ptr %i.i, align 8
  %i.l = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.epil)
  store i64 %i.l, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %OPENSSL_memcpy.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !2310
  call void %i.m(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %spec.store.select) #46
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge23, label %OPENSSL_memcpy.exit, !llvm.loop !2307

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.019 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = shl nuw nsw i64 %.019, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n ; 3 uses
  %.0.copyload.i.i = load i64, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.0.copyload.i5.i = load i64, ptr %i.p, align 8
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i)
  store i64 %i.q, ptr %i.o, align 8
  %i.r = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.r, ptr %i.p, align 8
  %i.s = shl i64 %.019, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.0.copyload.i.i.1 = load i64, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.0.copyload.i5.i.1 = load i64, ptr %i.v, align 8
  %i.w = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i.1)
  store i64 %i.w, ptr %i.u, align 8
  %i.x = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.1)
  store i64 %i.x, ptr %i.v, align 8
  %i.y = add nuw nsw i64 %.019, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2308

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @CRYPTO_POLYVAL_finish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 16)) %1) local_unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %.0.copyload.i.i = load i64, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0.copyload.i5.i = load i64, ptr %i.a, align 1
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i)
  store i64 %i.b, ptr %1, align 1
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.c, ptr %i.a, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS5_PBKDF2_HMAC(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %8 = alloca %struct.hmac_ctx_st, align 8        ; 16 uses
  %i.c = alloca [64 x i8], align 16               ; 10 uses
  %i.d = alloca [4 x i8], align 1                 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207  ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1224) %8, i8 0, i64 1224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.h = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef %0, i64 noundef %1, ptr noundef %5, ptr poison)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not53112 = icmp eq i64 %6, 0
  br i1 %.not53112, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
end_hunk_2
