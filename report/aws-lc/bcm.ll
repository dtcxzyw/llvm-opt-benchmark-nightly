Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 551
begin_hunk_0_@BN_mul:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.c, %.lr.ph.i.i ], [ %i.k, %bb.d ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bn_minimal_width.exit.thread5.i

bn_minimal_width.exit.thread5.i:                  ; preds = %bb.c
  store i32 %.05.i.i, ptr %i.b, align 8, !tbaa !93
  br label %bn_set_minimal_width.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %.05.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i, 1
  br i1 %i.l, label %bb.c, label %bn_minimal_width.exit.thread.i, !llvm.loop !10

bn_minimal_width.exit.thread.i:                   ; preds = %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !93
  br label %bb.e

bn_minimal_width.exit.i:                          ; preds = %bb.b
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %bb.e, label %bn_set_minimal_width.exit

bb.e:                                             ; preds = %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !91
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bb.e, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread5.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bn_minimal_width.exit.thread5.i ], [ 1, %bn_minimal_width.exit.i ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_mod_sqr(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @bn_sqr_consttime(ptr noundef %0, ptr noundef readonly %1, ptr noundef %3)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %BN_sqr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bn_minimal_width.exit.thread5.i.i

bn_minimal_width.exit.thread5.i.i:                ; preds = %bb.c
  store i32 %.05.i.i.i, ptr %i.b, align 8, !tbaa !93
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %.05.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.l, label %bb.c, label %bn_minimal_width.exit.thread.i.i, !llvm.loop !10

bn_minimal_width.exit.thread.i.i:                 ; preds = %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !93
  br label %bb.e

bn_minimal_width.exit.i.i:                        ; preds = %bb.b
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bn_minimal_width.exit.thread5.i.i, %bn_minimal_width.exit.i.i, %bb.e
  %i.o = tail call i32 @BN_div(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3)
  br label %BN_sqr.exit

BN_sqr.exit:                                      ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_mod_lshift(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_div(ptr noundef null, ptr noundef %0, ptr noundef readonly %1, ptr noundef %3, ptr noundef %4)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %BN_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !91
  %.not9.i = icmp eq i32 %i.c, 0
  br i1 %.not9.i, label %BN_nnmod.exit.thread26, label %BN_nnmod.exit

BN_nnmod.exit:                                    ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91
  %.not10.i = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not10.i, ptr @BN_add, ptr @BN_sub
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %3) #46, !callees !116, !inline_history !117
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %BN_free.exit, label %BN_nnmod.exit.thread26

BN_nnmod.exit.thread26:                           ; preds = %bb.b, %BN_nnmod.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %.thread, label %bb.c

.thread:                                          ; preds = %BN_nnmod.exit.thread26
  %i.j = tail call i32 @bn_mod_lshift_consttime(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4)
  br label %BN_free.exit

bb.c:                                             ; preds = %BN_nnmod.exit.thread26
  %i.k = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %BN_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 5 uses
  store i32 1, ptr %i.m, align 4, !tbaa !95
  %i.n = tail call ptr @BN_copy(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %3)
  %.not.i21 = icmp eq ptr %i.n, null
  br i1 %.not.i21, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 4, !tbaa !95   ; 2 uses
  %i.p = and i32 %i.o, 2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.r) #46
  %.pre.i.i = load i32, ptr %i.m, align 4, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = phi i32 [ %.pre.i.i, %bb.f ], [ %i.o, %bb.e ]
  %i.t = and i32 %i.s, 1
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @OPENSSL_free(ptr noundef nonnull %i.k) #46
  br label %BN_free.exit

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.k, align 8, !tbaa !92
  br label %BN_free.exit

bb.j:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !91
  %i.v = tail call i32 @bn_mod_lshift_consttime(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.k, ptr noundef %4) ; 2 uses
  %i.w = load i32, ptr %i.m, align 4, !tbaa !95   ; 2 uses
  %i.x = and i32 %i.w, 2
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.z) #46
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = phi i32 [ %.pre.i, %bb.k ], [ %i.w, %bb.j ]
  %i.ab = and i32 %i.aa, 1
  %.not.i23 = icmp eq i32 %i.ab, 0
  br i1 %.not.i23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @OPENSSL_free(ptr noundef nonnull %i.k) #46
  br label %BN_free.exit

bb.n:                                             ; preds = %bb.l
  store ptr null, ptr %i.k, align 8, !tbaa !92
  br label %BN_free.exit

BN_free.exit:                                     ; preds = %bb.h, %bb.i, %bb.c, %bb.a, %bb.n, %bb.m, %.thread, %BN_nnmod.exit
  %.017 = phi i32 [ 0, %BN_nnmod.exit ], [ %i.v, %bb.m ], [ 0, %bb.a ], [ %i.j, %.thread ], [ %i.v, %bb.n ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @bn_mod_lshift_consttime(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %1)
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %BN_CTX_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i32 @bn_resize_words(ptr noundef %0, i64 noundef %i.d)
  %.not23 = icmp eq i32 %i.e, 0
  br i1 %.not23, label %BN_CTX_end.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !110
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.d, label %BN_CTX_start.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !112  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !113
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.l, 0
  %i.p = mul i64 %i.l, 3
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %.not.i.i, i64 32, i64 %i.q    ; 4 uses
  %i.s = icmp ule i64 %i.r, %i.l
  %i.t = icmp samesign ugt i64 %i.r, 2305843009213693951
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.v = shl nuw i64 %i.r, 3
  %i.w = tail call ptr @OPENSSL_realloc(ptr noundef %i.u, i64 noundef %i.v) #46 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.w, ptr %i.h, align 8, !tbaa !109
  store i64 %i.r, ptr %i.m, align 8, !tbaa !113
  %.pre26.i.i = load i64, ptr %i.k, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i

BN_STACK_push.exit.i:                             ; preds = %bb.g, %._crit_edge.i.i
  %i.y = phi i64 [ %i.l, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.g ]
  %i.z = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.w, %bb.g ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  store i64 %i.j, ptr %i.aa, align 8, !tbaa !80
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !112
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !112
  br label %BN_CTX_start.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  store i8 1, ptr %i.f, align 8, !tbaa !110
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 41
  store i8 1, ptr %i.ad, align 1, !tbaa !114
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.c, %BN_STACK_push.exit.i, %bb.h
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !93
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call fastcc ptr @bn_scratch_space_from_ctx(i64 noundef %i.af, ptr noundef nonnull %4) ; 2 uses
  %i.ah = icmp ne ptr %i.ag, null                 ; 3 uses
  br i1 %i.ah, label %.preheader, label %bb.i

.preheader:                                       ; preds = %BN_CTX_start.exit
  %i.ai = icmp sgt i32 %2, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bn_mod_add_words.exit, %.lr.ph, %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !91
  br label %bb.i

.lr.ph.splitthread-pre-split:                     ; preds = %bn_mod_add_words.exit
  %.pr = load i32, ptr %i.b, align 8, !tbaa !93
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.am = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.aj, %.lr.ph ] ; 4 uses
  %.025 = phi i32 [ %i.cp, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.an = load ptr, ptr %0, align 8, !tbaa !92    ; 10 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 7 uses
  %i.ap = sext i32 %i.am to i64                   ; 7 uses
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %bn_mod_add_words.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split
  %i.ar = load ptr, ptr %3, align 8, !tbaa !92
  %i.as = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.an, ptr %i.an, ptr %i.an, i64 %i.ap, i64 0) #46, !srcloc !96
  %i.at = extractvalue { i64, i64, i64 } %i.as, 0
  %i.au = and i64 %i.at, 1
  %i.av = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09sbbq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ao, ptr %i.an, ptr %i.ar, i64 %i.ap, i64 0) #46, !srcloc !97
  %i.aw = extractvalue { i64, i64, i64 } %i.av, 0
  %i.ax = and i64 %i.aw, 1
  %i.ay = sub nsw i64 %i.au, %i.ax                ; 2 uses
  %i.az = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ay) #47, !srcloc !81 ; 4 uses
  %i.ba = xor i64 %i.ay, -1
  %i.bb = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ba) #47, !srcloc !81 ; 4 uses
  %min.iters.check = icmp ult i32 %i.am, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i
  %i.bc = shl nsw i64 %i.ap, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.bc
  %scevgep32 = getelementptr i8, ptr %i.ao, i64 %i.bc
  %bound0 = icmp ult ptr %i.an, %scevgep32
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert33 = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat34 = shufflevector <2 x i64> %broadcast.splatinsert33, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bd, align 8, !tbaa !80, !alias.scope !1198, !noalias !1199
  %wide.load35 = load <2 x i64>, ptr %i.be, align 8, !tbaa !80, !alias.scope !1198, !noalias !1199
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !80, !alias.scope !1199
  %wide.load37 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !80, !alias.scope !1199
  %i.bh = and <2 x i64> %wide.load, %broadcast.splat
  %i.bi = and <2 x i64> %wide.load35, %broadcast.splat
  %i.bj = and <2 x i64> %wide.load36, %broadcast.splat34
  %i.bk = and <2 x i64> %wide.load37, %broadcast.splat34
  %i.bl = or <2 x i64> %i.bj, %i.bh
  %i.bm = or <2 x i64> %i.bk, %i.bi
  store <2 x i64> %i.bl, ptr %i.bd, align 8, !tbaa !80, !alias.scope !1198, !noalias !1199
  store <2 x i64> %i.bm, ptr %i.be, align 8, !tbaa !80, !alias.scope !1198, !noalias !1199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ap
  br i1 %cmp.n, label %bn_mod_add_words.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %i.bo = and i32 %i.am, 1
  %lcmp.mod.not = icmp eq i32 %i.bo, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.09.i.i.i.ph ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !80
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.09.i.i.i.ph
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80
  %i.bt = and i64 %i.bq, %i.az
  %i.bu = and i64 %i.bs, %i.bb
  %i.bv = or i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !80
  %i.bw = or disjoint i64 %.09.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.unr = phi i64 [ %.09.i.i.i.ph, %scalar.ph.preheader ], [ %i.bw, %scalar.ph.prol ]
  %i.bx = add nsw i64 %i.ap, -1
  %i.by = icmp eq i64 %.09.i.i.i.ph, %i.bx
  br i1 %i.by, label %bn_mod_add_words.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i = phi i64 [ %i.co, %scalar.ph ], [ %.09.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.09.i.i.i ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.09.i.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !80
  %i.cd = and i64 %i.ca, %i.az
  %i.ce = and i64 %i.cc, %i.bb
  %i.cf = or i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !80
  %i.cg = add nuw i64 %.09.i.i.i, 1               ; 2 uses
end_hunk_0
begin_hunk_1_@ec_GFp_simple_points_equal:bb.a
  store <2 x i64> %i.bx, ptr %i.br, align 8, !tbaa !80
  store <2 x i64> %i.by, ptr %i.bs, align 8, !tbaa !80
  %index.next129 = add nuw i64 %index124, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next129, %n.vec118
  br i1 %i.bz, label %middle.block130, label %vector.body123, !llvm.loop !1691

middle.block130:                                  ; preds = %vector.body123
  %cmp.n131 = icmp eq i64 %n.vec118, %i.bd
  br i1 %cmp.n131, label %ec_felem_sub.exit45, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %.lr.ph.i.i.i42, %middle.block130
  %.09.i.i.i43.ph = phi i64 [ 0, %.lr.ph.i.i.i42 ], [ %n.vec118, %middle.block130 ]
  br label %scalar.ph115

scalar.ph115:                                     ; preds = %scalar.ph115.preheader, %scalar.ph115
  %.09.i.i.i43 = phi i64 [ %i.ch, %scalar.ph115 ], [ %.09.i.i.i43.ph, %scalar.ph115.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i.i.i43
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.09.i.i.i43 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !80
  %i.ce = and i64 %i.cb, %i.bm
  %i.cf = and i64 %i.cd, %i.bo
  %i.cg = or i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.cc, align 8, !tbaa !80
  %i.ch = add nuw nsw i64 %.09.i.i.i43, 1         ; 2 uses
  %exitcond.not.i.i.i44 = icmp eq i64 %i.ch, %i.bd
  br i1 %exitcond.not.i.i.i44, label %ec_felem_sub.exit45, label %scalar.ph115, !llvm.loop !1692

ec_felem_sub.exit45:                              ; preds = %scalar.ph115, %middle.block130
  %.pr76 = load i32, ptr %i.h, align 8, !tbaa !277 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.ci = icmp sgt i32 %.pr76, 0
  br i1 %i.ci, label %.lr.ph.preheader.i47, label %ec_felem_non_zero_mask.exit75

.lr.ph.preheader.i47:                             ; preds = %ec_felem_sub.exit45
  %wide.trip.count.i48 = zext nneg i32 %.pr76 to i64 ; 9 uses
  %min.iters.check134 = icmp ult i32 %.pr76, 4
  br i1 %min.iters.check134, label %.lr.ph.i49.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph.preheader.i47
  %n.vec136 = and i64 %wide.trip.count.i48, 2147483644 ; 3 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %vec.phi139 = phi <2 x i64> [ zeroinitializer, %vector.ph135 ], [ %i.cl, %vector.body137 ]
  %vec.phi140 = phi <2 x i64> [ zeroinitializer, %vector.ph135 ], [ %i.cm, %vector.body137 ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index138 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load141 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !80
  %wide.load142 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !80
  %i.cl = or <2 x i64> %wide.load141, %vec.phi139 ; 2 uses
  %i.cm = or <2 x i64> %wide.load142, %vec.phi140 ; 2 uses
  %index.next143 = add nuw i64 %index138, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.cn, label %middle.block144, label %vector.body137, !llvm.loop !1693

middle.block144:                                  ; preds = %vector.body137
  %bin.rdx145 = or <2 x i64> %i.cm, %i.cl
  %i.co = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx145) ; 2 uses
  %cmp.n146 = icmp eq i64 %n.vec136, %wide.trip.count.i48
  br i1 %cmp.n146, label %.lr.ph.preheader.i57, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %.lr.ph.preheader.i47, %middle.block144
  %indvars.iv.i50.ph = phi i64 [ 0, %.lr.ph.preheader.i47 ], [ %n.vec136, %middle.block144 ]
  %.067.i51.ph = phi i64 [ 0, %.lr.ph.preheader.i47 ], [ %i.co, %middle.block144 ]
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader, %.lr.ph.i49
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i52, %.lr.ph.i49 ], [ %indvars.iv.i50.ph, %.lr.ph.i49.preheader ] ; 2 uses
  %.067.i51 = phi i64 [ %i.cr, %.lr.ph.i49 ], [ %.067.i51.ph, %.lr.ph.i49.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i50
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !80
  %i.cr = or i64 %i.cq, %.067.i51                 ; 2 uses
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count.i48
  br i1 %exitcond.not.i53, label %.lr.ph.preheader.i57, label %.lr.ph.i49, !llvm.loop !1694

.lr.ph.preheader.i57:                             ; preds = %.lr.ph.i49, %middle.block144
  %.lcssa95 = phi i64 [ %i.co, %middle.block144 ], [ %i.cr, %.lr.ph.i49 ]
  %min.iters.check150 = icmp ult i32 %.pr76, 4
  br i1 %min.iters.check150, label %.lr.ph.i59.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.preheader.i57
  %n.vec152 = and i64 %wide.trip.count.i48, 2147483644 ; 3 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %vec.phi155 = phi <2 x i64> [ zeroinitializer, %vector.ph151 ], [ %i.cu, %vector.body153 ]
  %vec.phi156 = phi <2 x i64> [ zeroinitializer, %vector.ph151 ], [ %i.cv, %vector.body153 ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index154 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load157 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !80
  %wide.load158 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !80
  %i.cu = or <2 x i64> %wide.load157, %vec.phi155 ; 2 uses
  %i.cv = or <2 x i64> %wide.load158, %vec.phi156 ; 2 uses
  %index.next159 = add nuw i64 %index154, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.cw, label %middle.block160, label %vector.body153, !llvm.loop !1695

middle.block160:                                  ; preds = %vector.body153
  %bin.rdx161 = or <2 x i64> %i.cv, %i.cu
  %i.cx = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx161) ; 2 uses
  %cmp.n162 = icmp eq i64 %n.vec152, %wide.trip.count.i48
  br i1 %cmp.n162, label %.lr.ph.preheader.i67, label %.lr.ph.i59.preheader

.lr.ph.i59.preheader:                             ; preds = %.lr.ph.preheader.i57, %middle.block160
  %indvars.iv.i60.ph = phi i64 [ 0, %.lr.ph.preheader.i57 ], [ %n.vec152, %middle.block160 ]
  %.067.i61.ph = phi i64 [ 0, %.lr.ph.preheader.i57 ], [ %i.cx, %middle.block160 ]
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader, %.lr.ph.i59
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i62, %.lr.ph.i59 ], [ %indvars.iv.i60.ph, %.lr.ph.i59.preheader ] ; 2 uses
  %.067.i61 = phi i64 [ %i.da, %.lr.ph.i59 ], [ %.067.i61.ph, %.lr.ph.i59.preheader ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i60
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !80
  %i.da = or i64 %i.cz, %.067.i61                 ; 2 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, %wide.trip.count.i48
  br i1 %exitcond.not.i63, label %.lr.ph.preheader.i67, label %.lr.ph.i59, !llvm.loop !1696

.lr.ph.preheader.i67:                             ; preds = %.lr.ph.i59, %middle.block160
  %.lcssa94 = phi i64 [ %i.cx, %middle.block160 ], [ %i.da, %.lr.ph.i59 ] ; 2 uses
  %min.iters.check166 = icmp ult i32 %.pr76, 4
  br i1 %min.iters.check166, label %.lr.ph.i69.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph.preheader.i67
  %n.vec168 = and i64 %wide.trip.count.i48, 2147483644 ; 3 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %vec.phi171 = phi <2 x i64> [ zeroinitializer, %vector.ph167 ], [ %i.dd, %vector.body169 ]
  %vec.phi172 = phi <2 x i64> [ zeroinitializer, %vector.ph167 ], [ %i.de, %vector.body169 ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index170 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load173 = load <2 x i64>, ptr %i.db, align 8, !tbaa !80
  %wide.load174 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !80
  %i.dd = or <2 x i64> %wide.load173, %vec.phi171 ; 2 uses
  %i.de = or <2 x i64> %wide.load174, %vec.phi172 ; 2 uses
  %index.next175 = add nuw i64 %index170, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.df, label %middle.block176, label %vector.body169, !llvm.loop !1697

middle.block176:                                  ; preds = %vector.body169
  %bin.rdx177 = or <2 x i64> %i.de, %i.dd
  %i.dg = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx177) ; 2 uses
  %cmp.n178 = icmp eq i64 %n.vec168, %wide.trip.count.i48
  br i1 %cmp.n178, label %._crit_edge.loopexit.i74, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %.lr.ph.preheader.i67, %middle.block176
  %indvars.iv.i70.ph = phi i64 [ 0, %.lr.ph.preheader.i67 ], [ %n.vec168, %middle.block176 ]
  %.067.i71.ph = phi i64 [ 0, %.lr.ph.preheader.i67 ], [ %i.dg, %middle.block176 ]
  br label %.lr.ph.i69

._crit_edge.loopexit.i74:                         ; preds = %.lr.ph.i69, %middle.block176
  %.lcssa = phi i64 [ %i.dg, %middle.block176 ], [ %i.dq, %.lr.ph.i69 ] ; 2 uses
  %.not = icmp ne i64 %.lcssa95, 0
  %.not82 = icmp eq i64 %.lcssa94, 0
  %i.dh = icmp eq i64 %.lcssa, 0
  %i.di = or i64 %.lcssa, %.lcssa94
  %i.dj = icmp eq i64 %i.di, 0
  %i.dk = select i1 %.not82, i1 true, i1 %i.dh
  %i.dl = select i1 %i.dk, i1 true, i1 %.not
  %i.dm = select i1 %i.dl, i32 0, i32 %.06.lcssa.i
  %i.dn = select i1 %i.dj, i32 1, i32 %i.dm
  br label %ec_felem_non_zero_mask.exit75

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i72, %.lr.ph.i69 ], [ %indvars.iv.i70.ph, %.lr.ph.i69.preheader ] ; 2 uses
  %.067.i71 = phi i64 [ %i.dq, %.lr.ph.i69 ], [ %.067.i71.ph, %.lr.ph.i69.preheader ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i70
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !80
  %i.dq = or i64 %i.dp, %.067.i71                 ; 2 uses
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i48
  br i1 %exitcond.not.i73, label %._crit_edge.loopexit.i74, label %.lr.ph.i69, !llvm.loop !1698

ec_felem_non_zero_mask.exit75:                    ; preds = %ec_felem_sub.exit45.thread, %ec_felem_sub.exit45, %._crit_edge.loopexit.i74
  %i.dr = phi i32 [ %i.dn, %._crit_edge.loopexit.i74 ], [ 1, %ec_felem_sub.exit45 ], [ 1, %ec_felem_sub.exit45.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  ret i32 %i.dr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @EC_GROUP_get0_generator(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.b = load i32, ptr %i.a, align 4, !tbaa !276
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = select i1 %.not, ptr null, ptr %i.c
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @EC_GROUP_get_order(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = tail call ptr @BN_copy(ptr noundef %1, ptr noundef nonnull %i.a)
  %i.c = icmp ne ptr %i.b, null
  %. = zext i1 %i.c to i32
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @EC_GROUP_order_bits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.c, %.lr.ph.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bn_minimal_width.exit.thread7.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i, 1
  br i1 %i.l, label %bb.b, label %BN_num_bits.exit, !llvm.loop !10

bn_minimal_width.exit.i:                          ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %BN_num_bits.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !92
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.n = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i, -1           ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0                 ; 2 uses
  %i.v = select i1 %.not.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i, i64 %i.s, i64 %i.u  ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i = icmp eq i64 %i.y, 0               ; 2 uses
  %i.z = select i1 %.not52.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ab, 0              ; 2 uses
  %i.ac = select i1 %.not53.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.ae, 0              ; 2 uses
  %i.af = select i1 %.not54.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.ah, 0              ; 2 uses
  %i.ai = select i1 %.not55.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, %i.w
  %i.am = or disjoint i32 %i.al, %i.v
  %i.an = or disjoint i32 %i.am, %i.z
  %i.ao = or disjoint i32 %i.an, %i.ac
  %i.ap = or disjoint i32 %i.ao, %i.af
  %i.aq = or disjoint i32 %i.ap, %i.ai
  %i.ar = add i32 %i.aq, %.neg.i.i
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.c, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread7.i
  %.0.i = phi i32 [ %i.ar, %bn_minimal_width.exit.thread7.i ], [ 0, %bn_minimal_width.exit.i ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EC_GROUP_get_cofactor(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !94
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %.bn_wexpand.exit_crit_edge.i

.bn_wexpand.exit_crit_edge.i:                     ; preds = %bb.a
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !92
  br label %bn_wexpand.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95
  %i.e = and i32 %i.d, 2
  %.not16.i.i = icmp eq i32 %i.e, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 316) #46
  br label %BN_set_word.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @OPENSSL_calloc(i64 noundef 1, i64 noundef 8) #46 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %BN_set_word.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %OPENSSL_memcpy.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.i to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = load ptr, ptr %1, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr readonly align 1 %i.m, i64 %i.l, i1 false)
  br label %OPENSSL_memcpy.exit.i.i

OPENSSL_memcpy.exit.i.i:                          ; preds = %bb.f, %bb.e
  %i.n = load ptr, ptr %1, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.n) #46
  store ptr %i.f, ptr %1, align 8, !tbaa !92
  store i32 1, ptr %i.a, align 4, !tbaa !94
  br label %bn_wexpand.exit.i

bn_wexpand.exit.i:                                ; preds = %OPENSSL_memcpy.exit.i.i, %.bn_wexpand.exit_crit_edge.i
  %i.o = phi ptr [ %.pre.i, %.bn_wexpand.exit_crit_edge.i ], [ %i.f, %OPENSSL_memcpy.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !91
  store i64 1, ptr %i.o, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !93
  br label %BN_set_word.exit

BN_set_word.exit:                                 ; preds = %bb.c, %bb.d, %bn_wexpand.exit.i
  %.0.i = phi i32 [ 0, %bb.c ], [ 1, %bn_wexpand.exit.i ], [ 0, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EC_GROUP_get_curve_GFp(ptr noundef %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(address) %2, ptr nofree noundef captures(address) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [66 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [66 x i8], align 16               ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = tail call ptr @BN_copy(ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  %.not14.i = icmp eq ptr %i.f, null
  br i1 %.not14.i, label %ec_GFp_simple_group_get_curve.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15.i = icmp eq ptr %2, null
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.h = load ptr, ptr %0, align 8, !tbaa !271
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282
  call void %i.j(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g) #46, !inline_history !1699
  %i.k = load i64, ptr %i.d, align 8, !tbaa !80
  %i.l = call ptr @BN_bin2bn(ptr noundef nonnull %i.c, i64 noundef %i.k, ptr noundef nonnull %2)
  %.not19.i = icmp eq ptr %i.l, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br i1 %.not19.i, label %ec_GFp_simple_group_get_curve.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not17.i = icmp eq ptr %3, null
  br i1 %.not17.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.n = load ptr, ptr %0, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !282
  call void %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.m) #46, !inline_history !1699
  %i.q = load i64, ptr %i.b, align 8, !tbaa !80
  %i.r = call ptr @BN_bin2bn(ptr noundef nonnull %i.a, i64 noundef %i.q, ptr noundef nonnull %3)
end_hunk_1
begin_hunk_2_@mldsa44_keypair_internal:bb.a
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !73
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.km = load i32, ptr %i.kl, align 16, !tbaa !73
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 20
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !73
  %i.kp = sub i32 2, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !73
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kb, i64 28
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !73
  %i.ku = shl i32 %i.kf, 3
  %i.kv = sub i32 16, %i.ku
  %i.kw = or i32 %i.kv, %i.kd
  %i.kx = and i32 %i.ki, 255                      ; 2 uses
  %i.ky = shl nuw nsw i32 %i.kx, 6
  %i.kz = or i32 %i.kw, %i.ky
  %i.la = trunc i32 %i.kz to i8
  %i.lb = mul nuw nsw i64 %indvars.iv.i.1.i.i58, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.lb ; 3 uses
  store i8 %i.la, ptr %i.lc, align 1, !tbaa !76
  %i.ld = lshr i32 %i.kx, 2
  %i.le = shl i32 %i.kk, 1
  %i.lf = sub i32 4, %i.le
  %i.lg = and i32 %i.lf, 254
  %i.lh = or i32 %i.lg, %i.ld
  %i.li = shl i32 %i.km, 4
  %i.lj = sub i32 32, %i.li
  %i.lk = or i32 %i.lh, %i.lj
  %i.ll = and i32 %i.kp, 255                      ; 2 uses
  %i.lm = shl nuw nsw i32 %i.ll, 7
  %i.ln = or i32 %i.lk, %i.lm
  %i.lo = trunc i32 %i.ln to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !76
  %i.lq = lshr i32 %i.ll, 1
  %i.lr = shl i32 %i.kr, 2
  %i.ls = sub i32 8, %i.lr
  %i.lt = or i32 %i.lq, %i.ls
  %i.lu = shl i32 %i.kt, 5
  %i.lv = sub i32 64, %i.lu
  %i.lw = or i32 %i.lt, %i.lv
  %i.lx = trunc i32 %i.lw to i8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !76
  %indvars.iv.next.i.1.i.i60 = add nuw nsw i64 %indvars.iv.i.1.i.i58, 1 ; 2 uses
  %exitcond.not.i.1.i.i61 = icmp eq i64 %indvars.iv.next.i.1.i.i60, 32
  br i1 %exitcond.not.i.1.i.i61, label %mldsa44_polyeta_pack.exit.1.i.i62, label %bb.h, !llvm.loop !2091

mldsa44_polyeta_pack.exit.1.i.i62:                ; preds = %bb.h
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 704
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %mldsa44_polyeta_pack.exit.1.i.i62
  %indvars.iv.i.2.i.i63 = phi i64 [ 0, %mldsa44_polyeta_pack.exit.1.i.i62 ], [ %indvars.iv.next.i.2.i.i65, %bb.i ] ; 3 uses
  %.idx.i.2.i.i64 = shl nuw nsw i64 %indvars.iv.i.2.i.i63, 5
  %i.ma = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.2.i.i64 ; 8 uses
  %i.mb = load i32, ptr %i.ma, align 32, !tbaa !73
  %i.mc = sub i32 2, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !73
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !73
  %i.mh = sub i32 2, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !73
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.ml = load i32, ptr %i.mk, align 16, !tbaa !73
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ma, i64 20
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !73
  %i.mo = sub i32 2, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !73
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ma, i64 28
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !73
  %i.mt = shl i32 %i.me, 3
  %i.mu = sub i32 16, %i.mt
  %i.mv = or i32 %i.mu, %i.mc
  %i.mw = and i32 %i.mh, 255                      ; 2 uses
  %i.mx = shl nuw nsw i32 %i.mw, 6
  %i.my = or i32 %i.mv, %i.mx
  %i.mz = trunc i32 %i.my to i8
  %i.na = mul nuw nsw i64 %indvars.iv.i.2.i.i63, 3
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.na ; 3 uses
  store i8 %i.mz, ptr %i.nb, align 1, !tbaa !76
  %i.nc = lshr i32 %i.mw, 2
  %i.nd = shl i32 %i.mj, 1
  %i.ne = sub i32 4, %i.nd
  %i.nf = and i32 %i.ne, 254
  %i.ng = or i32 %i.nf, %i.nc
  %i.nh = shl i32 %i.ml, 4
  %i.ni = sub i32 32, %i.nh
  %i.nj = or i32 %i.ng, %i.ni
  %i.nk = and i32 %i.mo, 255                      ; 2 uses
  %i.nl = shl nuw nsw i32 %i.nk, 7
  %i.nm = or i32 %i.nj, %i.nl
  %i.nn = trunc i32 %i.nm to i8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !76
  %i.np = lshr i32 %i.nk, 1
  %i.nq = shl i32 %i.mq, 2
  %i.nr = sub i32 8, %i.nq
  %i.ns = or i32 %i.np, %i.nr
  %i.nt = shl i32 %i.ms, 5
  %i.nu = sub i32 64, %i.nt
  %i.nv = or i32 %i.ns, %i.nu
  %i.nw = trunc i32 %i.nv to i8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !76
  %indvars.iv.next.i.2.i.i65 = add nuw nsw i64 %indvars.iv.i.2.i.i63, 1 ; 2 uses
  %exitcond.not.i.2.i.i66 = icmp eq i64 %indvars.iv.next.i.2.i.i65, 32
  br i1 %exitcond.not.i.2.i.i66, label %mldsa44_polyeta_pack.exit.2.i.i67, label %bb.i, !llvm.loop !2091

mldsa44_polyeta_pack.exit.2.i.i67:                ; preds = %bb.i
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 800
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %mldsa44_polyeta_pack.exit.2.i.i67
  %indvars.iv.i.3.i.i68 = phi i64 [ 0, %mldsa44_polyeta_pack.exit.2.i.i67 ], [ %indvars.iv.next.i.3.i.i70, %bb.j ] ; 3 uses
  %.idx.i.3.i.i69 = shl nuw nsw i64 %indvars.iv.i.3.i.i68, 5
  %i.nz = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.3.i.i69 ; 8 uses
  %i.oa = load i32, ptr %i.nz, align 32, !tbaa !73
  %i.ob = sub i32 2, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !73
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !73
  %i.og = sub i32 2, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !73
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ok = load i32, ptr %i.oj, align 16, !tbaa !73
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nz, i64 20
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !73
  %i.on = sub i32 2, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !73
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nz, i64 28
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !73
  %i.os = shl i32 %i.od, 3
  %i.ot = sub i32 16, %i.os
  %i.ou = or i32 %i.ot, %i.ob
  %i.ov = and i32 %i.og, 255                      ; 2 uses
  %i.ow = shl nuw nsw i32 %i.ov, 6
  %i.ox = or i32 %i.ou, %i.ow
  %i.oy = trunc i32 %i.ox to i8
  %i.oz = mul nuw nsw i64 %indvars.iv.i.3.i.i68, 3
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.oz ; 3 uses
  store i8 %i.oy, ptr %i.pa, align 1, !tbaa !76
  %i.pb = lshr i32 %i.ov, 2
  %i.pc = shl i32 %i.oi, 1
  %i.pd = sub i32 4, %i.pc
  %i.pe = and i32 %i.pd, 254
  %i.pf = or i32 %i.pe, %i.pb
  %i.pg = shl i32 %i.ok, 4
  %i.ph = sub i32 32, %i.pg
  %i.pi = or i32 %i.pf, %i.ph
  %i.pj = and i32 %i.on, 255                      ; 2 uses
  %i.pk = shl nuw nsw i32 %i.pj, 7
  %i.pl = or i32 %i.pi, %i.pk
  %i.pm = trunc i32 %i.pl to i8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pa, i64 1
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !76
  %i.po = lshr i32 %i.pj, 1
  %i.pp = shl i32 %i.op, 2
  %i.pq = sub i32 8, %i.pp
  %i.pr = or i32 %i.po, %i.pq
  %i.ps = shl i32 %i.or, 5
  %i.pt = sub i32 64, %i.ps
  %i.pu = or i32 %i.pr, %i.pt
  %i.pv = trunc i32 %i.pu to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pa, i64 2
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !76
  %indvars.iv.next.i.3.i.i70 = add nuw nsw i64 %indvars.iv.i.3.i.i68, 1 ; 2 uses
  %exitcond.not.i.3.i.i71 = icmp eq i64 %indvars.iv.next.i.3.i.i70, 32
  br i1 %exitcond.not.i.3.i.i71, label %mldsa44_pack_sk_rho_key_tr_s2.exit, label %bb.j, !llvm.loop !2091

mldsa44_pack_sk_rho_key_tr_s2.exit:               ; preds = %bb.j
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef 4096) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 4096) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 34) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 128) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_44_keypair(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) #0 {
.split6:
  tail call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef %2, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  tail call fastcc void @mldsa44_keypair_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_44_pack_pk_from_sk(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 6 uses
  %i.b = alloca [64 x i8], align 32               ; 8 uses
  %i.c = alloca [64 x i8], align 32               ; 8 uses
  %i.d = alloca [32 x i8], align 32               ; 4 uses
  %3 = alloca [1 x %struct.mld_polyvecl44], align 32 ; 10 uses
  %4 = alloca [1 x %struct.mld_polyveck44], align 32 ; 10 uses
  %i.e = alloca [1664 x i8], align 32             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.g, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1024 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.i, ptr noundef nonnull readonly %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2048 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.k, ptr noundef nonnull readonly %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 3072 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 416
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.m, ptr noundef nonnull readonly %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 512
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1024 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 608
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.p, ptr noundef nonnull readonly %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 2048 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 704
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.r, ptr noundef nonnull readonly %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 3072 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 800
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.t, ptr noundef nonnull readonly %i.u)
  %i.v = call fastcc i32 @mldsa44_polyvecl_chknorm(ptr noundef %3, i32 noundef 3)
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.x = and i32 %i.w, 32
  %.not.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, label %mld_poly_chknorm_native.exit.i.i.i

mld_poly_chknorm_native.exit.thread.i.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.i.i, %bb.a
  br label %mld_poly_chknorm_native.exit.thread.i.i.i

mld_poly_chknorm_native.exit.i.i.i:               ; preds = %bb.a
  %i.y = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %4, i32 noundef range(i32 3, 524169) 3) #46 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.y, -1
  br i1 %.not.i.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, label %bb.b

bb.b:                                             ; preds = %mld_poly_chknorm_native.exit.i.i.i
  %i.z = zext i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.aa) #46, !srcloc !449
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  br label %mldsa_poly_chknorm.exit.i.i

mld_poly_chknorm_native.exit.thread.i.i.i:        ; preds = %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %mld_poly_chknorm_native.exit.thread.i.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.i.i.preheader ] ; 2 uses
  %.08.i.i.i.i = phi i32 [ %i.au, %mld_poly_chknorm_native.exit.thread.i.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !73 ; 4 uses
  %i.ag = sub nsw i32 0, %i.af
  %i.ah = sext i32 %i.af to i64
  %i.ai = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ah) #46, !srcloc !449
  %i.aj = lshr i64 %i.ai, 31
  %i.ak = trunc i64 %i.aj to i32
  %i.al = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ak) #46, !srcloc !450
  %i.am = xor i32 %i.af, %i.ag
  %i.an = and i32 %i.al, %i.am
  %i.ao = xor i32 %i.an, %i.af
  %i.ap = sub i32 2, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.aq) #46, !srcloc !449
  %i.as = lshr i64 %i.ar, 31
  %i.at = trunc i64 %i.as to i32
  %i.au = or i32 %.08.i.i.i.i, %i.at              ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 256
  br i1 %exitcond.not.i.i.i.i, label %mldsa_poly_chknorm.exit.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i, !llvm.loop !32

mldsa_poly_chknorm.exit.i.i:                      ; preds = %mld_poly_chknorm_native.exit.thread.i.i.i, %bb.b
  %.0.i.i.i = phi i32 [ %i.ad, %bb.b ], [ %i.au, %mld_poly_chknorm_native.exit.thread.i.i.i ]
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.aw = and i32 %i.av, 32
  %.not.i.i.1.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.1.i.i, label %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader, label %mld_poly_chknorm_native.exit.i.1.i.i

mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.1.i.i, %mldsa_poly_chknorm.exit.i.i
  br label %mld_poly_chknorm_native.exit.thread.i.1.i.i

mld_poly_chknorm_native.exit.i.1.i.i:             ; preds = %mldsa_poly_chknorm.exit.i.i
  %i.ax = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.p, i32 noundef range(i32 3, 524169) 3) #46 ; 2 uses
  %.not.i.1.i.i = icmp eq i32 %i.ax, -1
  br i1 %.not.i.1.i.i, label %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %mld_poly_chknorm_native.exit.i.1.i.i
  %i.ay = zext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.az) #46, !srcloc !449
  %i.bb = lshr i64 %i.ba, 32
  %i.bc = trunc nuw i64 %i.bb to i32
  br label %mldsa_poly_chknorm.exit.1.i.i

mld_poly_chknorm_native.exit.thread.i.1.i.i:      ; preds = %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.1.i.i
  %indvars.iv.i.i.1.i.i = phi i64 [ %indvars.iv.next.i.i.1.i.i, %mld_poly_chknorm_native.exit.thread.i.1.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader ] ; 2 uses
  %.08.i.i.1.i.i = phi i32 [ %i.bt, %mld_poly_chknorm_native.exit.thread.i.1.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.1.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !73 ; 4 uses
  %i.bf = sub nsw i32 0, %i.be
  %i.bg = sext i32 %i.be to i64
  %i.bh = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.bg) #46, !srcloc !449
  %i.bi = lshr i64 %i.bh, 31
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bj) #46, !srcloc !450
  %i.bl = xor i32 %i.be, %i.bf
  %i.bm = and i32 %i.bk, %i.bl
  %i.bn = xor i32 %i.bm, %i.be
  %i.bo = sub i32 2, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.bp) #46, !srcloc !449
  %i.br = lshr i64 %i.bq, 31
  %i.bs = trunc i64 %i.br to i32
  %i.bt = or i32 %.08.i.i.1.i.i, %i.bs            ; 2 uses
  %indvars.iv.next.i.i.1.i.i = add nuw nsw i64 %indvars.iv.i.i.1.i.i, 1 ; 2 uses
  %exitcond.not.i.i.1.i.i = icmp eq i64 %indvars.iv.next.i.i.1.i.i, 256
  br i1 %exitcond.not.i.i.1.i.i, label %mldsa_poly_chknorm.exit.1.i.i, label %mld_poly_chknorm_native.exit.thread.i.1.i.i, !llvm.loop !32

mldsa_poly_chknorm.exit.1.i.i:                    ; preds = %mld_poly_chknorm_native.exit.thread.i.1.i.i, %bb.c
  %.0.i.1.i.i = phi i32 [ %i.bc, %bb.c ], [ %i.bt, %mld_poly_chknorm_native.exit.thread.i.1.i.i ]
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.bv = and i32 %i.bu, 32
  %.not.i.i.2.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.2.i.i, label %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader, label %mld_poly_chknorm_native.exit.i.2.i.i

mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.2.i.i, %mldsa_poly_chknorm.exit.1.i.i
  br label %mld_poly_chknorm_native.exit.thread.i.2.i.i

mld_poly_chknorm_native.exit.i.2.i.i:             ; preds = %mldsa_poly_chknorm.exit.1.i.i
  %i.bw = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.r, i32 noundef range(i32 3, 524169) 3) #46 ; 2 uses
  %.not.i.2.i.i = icmp eq i32 %i.bw, -1
  br i1 %.not.i.2.i.i, label %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader, label %bb.d

bb.d:                                             ; preds = %mld_poly_chknorm_native.exit.i.2.i.i
  %i.bx = zext i32 %i.bw to i64
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.by) #46, !srcloc !449
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  br label %mldsa_poly_chknorm.exit.2.i.i

mld_poly_chknorm_native.exit.thread.i.2.i.i:      ; preds = %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.2.i.i
  %indvars.iv.i.i.2.i.i = phi i64 [ %indvars.iv.next.i.i.2.i.i, %mld_poly_chknorm_native.exit.thread.i.2.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader ] ; 2 uses
  %.08.i.i.2.i.i = phi i32 [ %i.cs, %mld_poly_chknorm_native.exit.thread.i.2.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.2.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !73 ; 4 uses
  %i.ce = sub nsw i32 0, %i.cd
  %i.cf = sext i32 %i.cd to i64
  %i.cg = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.cf) #46, !srcloc !449
  %i.ch = lshr i64 %i.cg, 31
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ci) #46, !srcloc !450
  %i.ck = xor i32 %i.cd, %i.ce
  %i.cl = and i32 %i.cj, %i.ck
  %i.cm = xor i32 %i.cl, %i.cd
  %i.cn = sub i32 2, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.co) #46, !srcloc !449
  %i.cq = lshr i64 %i.cp, 31
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = or i32 %.08.i.i.2.i.i, %i.cr            ; 2 uses
  %indvars.iv.next.i.i.2.i.i = add nuw nsw i64 %indvars.iv.i.i.2.i.i, 1 ; 2 uses
  %exitcond.not.i.i.2.i.i = icmp eq i64 %indvars.iv.next.i.i.2.i.i, 256
  br i1 %exitcond.not.i.i.2.i.i, label %mldsa_poly_chknorm.exit.2.i.i, label %mld_poly_chknorm_native.exit.thread.i.2.i.i, !llvm.loop !32

mldsa_poly_chknorm.exit.2.i.i:                    ; preds = %mld_poly_chknorm_native.exit.thread.i.2.i.i, %bb.d
  %.0.i.2.i.i = phi i32 [ %i.cb, %bb.d ], [ %i.cs, %mld_poly_chknorm_native.exit.thread.i.2.i.i ]
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.cu = and i32 %i.ct, 32
  %.not.i.i.3.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.3.i.i, label %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader, label %mld_poly_chknorm_native.exit.i.3.i.i

mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.3.i.i, %mldsa_poly_chknorm.exit.2.i.i
  br label %mld_poly_chknorm_native.exit.thread.i.3.i.i

mld_poly_chknorm_native.exit.i.3.i.i:             ; preds = %mldsa_poly_chknorm.exit.2.i.i
  %i.cv = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.t, i32 noundef range(i32 3, 524169) 3) #46 ; 2 uses
  %.not.i.3.i.i = icmp eq i32 %i.cv, -1
  br i1 %.not.i.3.i.i, label %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader, label %bb.e

bb.e:                                             ; preds = %mld_poly_chknorm_native.exit.i.3.i.i
  %i.cw = zext i32 %i.cv to i64
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.cx) #46, !srcloc !449
  %i.cz = lshr i64 %i.cy, 32
  %i.da = trunc nuw i64 %i.cz to i32
  br label %mldsa44_polyveck_chknorm.exit.i

mld_poly_chknorm_native.exit.thread.i.3.i.i:      ; preds = %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.3.i.i
  %indvars.iv.i.i.3.i.i = phi i64 [ %indvars.iv.next.i.i.3.i.i, %mld_poly_chknorm_native.exit.thread.i.3.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader ] ; 2 uses
  %.08.i.i.3.i.i = phi i32 [ %i.dr, %mld_poly_chknorm_native.exit.thread.i.3.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.3.i.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !73 ; 4 uses
  %i.dd = sub nsw i32 0, %i.dc
  %i.de = sext i32 %i.dc to i64
  %i.df = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.de) #46, !srcloc !449
  %i.dg = lshr i64 %i.df, 31
  %i.dh = trunc i64 %i.dg to i32
  %i.di = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dh) #46, !srcloc !450
  %i.dj = xor i32 %i.dc, %i.dd
  %i.dk = and i32 %i.di, %i.dj
  %i.dl = xor i32 %i.dk, %i.dc
  %i.dm = sub i32 2, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.dn) #46, !srcloc !449
  %i.dp = lshr i64 %i.do, 31
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = or i32 %.08.i.i.3.i.i, %i.dq            ; 2 uses
  %indvars.iv.next.i.i.3.i.i = add nuw nsw i64 %indvars.iv.i.i.3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.3.i.i = icmp eq i64 %indvars.iv.next.i.i.3.i.i, 256
  br i1 %exitcond.not.i.i.3.i.i, label %mldsa44_polyveck_chknorm.exit.i, label %mld_poly_chknorm_native.exit.thread.i.3.i.i, !llvm.loop !32

mldsa44_polyveck_chknorm.exit.i:                  ; preds = %mld_poly_chknorm_native.exit.thread.i.3.i.i, %bb.e
  %.0.i.3.i.i = phi i32 [ %i.da, %bb.e ], [ %i.dr, %mld_poly_chknorm_native.exit.thread.i.3.i.i ]
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %3)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.i)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.k)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull readonly align 32 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  call fastcc void @mld_compute_pack_t0_t144(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef %4, ptr noundef %i.a)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %mldsa44_polyveck_chknorm.exit.i
  %index = phi i64 [ 0, %mldsa44_polyveck_chknorm.exit.i ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %mldsa44_polyveck_chknorm.exit.i ], [ %i.em, %vector.body ]
  %vec.phi33 = phi <16 x i8> [ zeroinitializer, %mldsa44_polyveck_chknorm.exit.i ], [ %i.en, %vector.body ]
  %vec.phi34 = phi <16 x i8> [ zeroinitializer, %mldsa44_polyveck_chknorm.exit.i ], [ %i.ek, %vector.body ]
  %vec.phi35 = phi <16 x i8> [ zeroinitializer, %mldsa44_polyveck_chknorm.exit.i ], [ %i.el, %vector.body ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load = load <16 x i8>, ptr %i.du, align 32, !tbaa !76
  %wide.load36 = load <16 x i8>, ptr %i.dv, align 16, !tbaa !76
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load37 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !76
  %wide.load38 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !76
  %i.dy = xor <16 x i8> %wide.load37, %wide.load  ; 2 uses
  %i.dz = xor <16 x i8> %wide.load38, %wide.load36 ; 2 uses
  %i.ea = or <16 x i8> %i.dy, %vec.phi34
  %i.eb = or <16 x i8> %i.dz, %vec.phi35
  %i.ec = xor <16 x i8> %i.dy, %vec.phi
  %i.ed = xor <16 x i8> %i.dz, %vec.phi33
  %index.next = or disjoint i64 %index, 32        ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 %index.next ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.ee, align 32, !tbaa !76
  %wide.load36.1 = load <16 x i8>, ptr %i.ef, align 16, !tbaa !76
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index.next ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load37.1 = load <16 x i8>, ptr %i.eg, align 1, !tbaa !76
  %wide.load38.1 = load <16 x i8>, ptr %i.eh, align 1, !tbaa !76
  %i.ei = xor <16 x i8> %wide.load37.1, %wide.load.1 ; 2 uses
  %i.ej = xor <16 x i8> %wide.load38.1, %wide.load36.1 ; 2 uses
  %i.ek = or <16 x i8> %i.ei, %i.ea               ; 2 uses
  %i.el = or <16 x i8> %i.ej, %i.eb               ; 2 uses
  %i.em = xor <16 x i8> %i.ei, %i.ec              ; 2 uses
  %i.en = xor <16 x i8> %i.ej, %i.ed              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 64      ; 2 uses
  %i.eo = icmp eq i64 %index.next.1, 1664
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !2092

middle.block:                                     ; preds = %vector.body
  %bin.rdx39 = or <16 x i8> %i.el, %i.ek
  %i.ep = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx39)
  %bin.rdx = xor <16 x i8> %i.en, %i.em
  %i.eq = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx) ; 2 uses
  %i.er = zext i8 %i.ep to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.es) #46, !srcloc !449
  %i.eu = lshr i64 %i.et, 32
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = xor i8 %i.eq, %i.ev
  %i.ex = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ew) #46, !srcloc !451
  %i.ey = xor i8 %i.ex, %i.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, i8 0, i64 200, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 0, ptr %i.ez, align 8, !tbaa !444
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 393
  store i8 0, ptr %i.fa, align 1, !tbaa !445
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 136, ptr %i.fb, align 8, !tbaa !446
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 0, ptr %i.fc, align 8, !tbaa !447
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i8 31, ptr %i.fd, align 8, !tbaa !448
  %i.fe = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %2, ptr noundef nonnull readonly %0, i64 noundef 1312)
  %.not6.i.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not6.i.i.i, label %mld_shake256.exit.i, label %SHAKE_Absorb.exit.thread9.i.i.i

SHAKE_Absorb.exit.thread9.i.i.i:                  ; preds = %middle.block
  %i.ff = call i32 @SHAKE_Final(ptr noundef nonnull %i.c, ptr noundef nonnull %2, i64 noundef 64) ; 0 uses
  br label %mld_shake256.exit.i

mld_shake256.exit.i:                              ; preds = %SHAKE_Absorb.exit.thread9.i.i.i, %middle.block
  call void @OPENSSL_cleanse(ptr noundef nonnull %2, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load47 = load <16 x i8>, ptr %i.b, align 32, !tbaa !76
  %wide.load48 = load <16 x i8>, ptr %i.fg, align 16, !tbaa !76
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load49 = load <16 x i8>, ptr %i.c, align 32, !tbaa !76
  %wide.load50 = load <16 x i8>, ptr %i.fh, align 16, !tbaa !76
  %i.fi = xor <16 x i8> %wide.load49, %wide.load47 ; 2 uses
  %i.fj = xor <16 x i8> %wide.load50, %wide.load48 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load47.1 = load <16 x i8>, ptr %i.fk, align 32, !tbaa !76
  %wide.load48.1 = load <16 x i8>, ptr %i.fl, align 16, !tbaa !76
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %wide.load49.1 = load <16 x i8>, ptr %i.fm, align 32, !tbaa !76
  %wide.load50.1 = load <16 x i8>, ptr %i.fn, align 16, !tbaa !76
  %i.fo = xor <16 x i8> %wide.load49.1, %wide.load47.1 ; 2 uses
  %i.fp = xor <16 x i8> %wide.load50.1, %wide.load48.1 ; 2 uses
  %i.fq = or <16 x i8> %i.fo, %i.fi
  %i.fr = xor <16 x i8> %i.fo, %i.fi
  %i.fs = or <16 x i8> %i.fj, %i.fq
  %bin.rdx54 = or <16 x i8> %i.fs, %i.fp
  %i.ft = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx54)
  %i.fu = xor <16 x i8> %i.fj, %i.fr
  %bin.rdx53 = xor <16 x i8> %i.fu, %i.fp
  %i.fv = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx53) ; 2 uses
  %i.fw = zext i8 %i.ft to i64
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.fx) #46, !srcloc !449
  %i.fz = lshr i64 %i.fy, 32
  %i.ga = trunc i64 %i.fz to i8
  %i.gb = xor i8 %i.fv, %i.ga
  %i.gc = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.gb) #46, !srcloc !451
  %i.gd = xor i8 %i.gc, %i.fv
  %i.ge = or i32 %.0.i.i.i, %i.v
  %i.gf = or i32 %i.ge, %.0.i.1.i.i
  %i.gg = or i32 %i.gf, %.0.i.2.i.i
  %i.gh = or i32 %i.gg, %.0.i.3.i.i
  %i.gi = trunc i32 %i.gh to i8
  %i.gj = or i8 %i.ey, %i.gi
  %i.gk = or i8 %i.gj, %i.gd
  %i.gl = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.gk) #46, !srcloc !451
  %.not.i = icmp eq i8 %i.gl, 0                   ; 2 uses
  br i1 %.not.i, label %mldsa44_pk_from_sk.exit, label %bb.f

bb.f:                                             ; preds = %mld_shake256.exit.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 1312) #46
  br label %mldsa44_pk_from_sk.exit

mldsa44_pk_from_sk.exit:                          ; preds = %mld_shake256.exit.i, %bb.f
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 1664) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 4096) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 4096) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.gm = zext i1 %.not.i to i32
  ret i32 %i.gm
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_44_sign(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca [332 x i8], align 32              ; 7 uses
  %i.b = alloca [32 x i8], align 32               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.c = icmp ugt i64 %6, 255
  br i1 %i.c, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 32, !tbaa !76
  %i.d = trunc nuw i64 %6 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !76
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(1) %5, i64 range(i64 1, 256) %6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nuw nsw i64 %6, 2
  call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.h = call fastcc i32 @mldsa44_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef %4, ptr noundef nonnull %i.a, i64 noundef %i.g, ptr noundef nonnull %i.b, ptr noundef readonly %0, i32 noundef 0)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %mldsa44_signature.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.a
  call void @OPENSSL_cleanse(ptr noundef %1, i64 noundef 2420) #46
  br label %mldsa44_signature.exit

mldsa44_signature.exit:                           ; preds = %bb.d, %.thread.i
  %i.i = phi i1 [ true, %bb.d ], [ false, %.thread.i ] ; 2 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 332) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %spec.select11 = select i1 %i.i, i64 2420, i64 0
  store i64 %spec.select11, ptr %2, align 8, !tbaa !80
  %spec.select = zext i1 %i.i to i32
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_extmu_44_sign(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 5 uses
  %i.b = icmp eq i64 %4, 64
  br i1 %i.b, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.c = call fastcc i32 @mldsa44_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef 64, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef readonly %0, i32 noundef 1)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = select i1 %i.d, i64 2420, i64 0
  %spec.select = zext i1 %i.d to i32
  br label %.split

.split:                                           ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %phi.call = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %2, align 8, !tbaa !80
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_44_sign_internal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mldsa44_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef %4, ptr noundef readonly %5, i64 noundef %6, ptr noundef readonly %7, ptr noundef readonly %0, i32 noundef 0)
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = select i1 %i.b, i64 2420, i64 0
  store i64 %i.c, ptr %2, align 8, !tbaa !80
  %i.d = zext i1 %i.b to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @ml_dsa_44_sign_internal_no_self_test(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mldsa44_signature_internal(ptr noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %0, i32 noundef 0)
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = select i1 %i.b, i64 2420, i64 0
  store i64 %i.c, ptr %2, align 8, !tbaa !80
  %i.d = zext i1 %i.b to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @mldsa44_signature_internal(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.keccak_ctx_st, align 8      ; 12 uses
  %i.a = alloca [4 x [704 x i8]], align 32        ; 8 uses
  %i.b = alloca [4 x [96 x i8]], align 32         ; 16 uses
  %9 = alloca %struct.mld_shake256x4ctx_s, align 8 ; 28 uses
  %i.c = alloca [32 x i8], align 32               ; 6 uses
  %10 = alloca [1 x %struct.mld_yvec_eager44], align 32 ; 9 uses
  %11 = alloca [1 x %struct.mld_poly], align 32   ; 23 uses
  %12 = alloca [1 x %union.w1tmp_u], align 32     ; 20 uses
  %13 = alloca [1 x %struct.mld_polyveck44], align 32 ; 15 uses
  %14 = alloca [1 x %struct.mld_poly], align 32   ; 14 uses
  %15 = alloca [1 x %struct.mld_poly], align 32   ; 14 uses
  %16 = alloca %struct.keccak_ctx_st, align 8     ; 13 uses
  %17 = alloca %struct.keccak_ctx_st, align 8     ; 13 uses
  %i.d = alloca [256 x i8], align 32              ; 9 uses
  %18 = alloca [1 x %struct.mld_polymat_eager44], align 32 ; 9 uses
  %19 = alloca [1 x %struct.mld_sk_s1hat_eager44], align 32 ; 9 uses
  %20 = alloca [1 x %struct.mld_sk_t0hat_eager44], align 32 ; 9 uses
  %21 = alloca [1 x %struct.mld_sk_s2hat_eager44], align 32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %6, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 128
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef nonnull %19, ptr noundef nonnull readonly %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %19, i64 1024 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 224
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.l, ptr noundef nonnull readonly %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %19, i64 2048 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 320
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.n, ptr noundef nonnull readonly %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 3072 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 416
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.p, ptr noundef nonnull readonly %i.q)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %19)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.l)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.n)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 512
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef nonnull %21, ptr noundef nonnull readonly %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 1024 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 608
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.s, ptr noundef nonnull readonly %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 2048 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 704
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.u, ptr noundef nonnull readonly %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %21, i64 3072 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 800
  call fastcc void @mldsa44_polyeta_unpack(ptr noundef %i.w, ptr noundef nonnull readonly %i.x)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %21)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.s)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.u)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 896
  call fastcc void @mldsa_polyt0_unpack(ptr noundef nonnull %20, ptr noundef nonnull readonly %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %20, i64 1024 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 1312
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.z, ptr noundef nonnull readonly %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %20, i64 2048 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 1728
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ab, ptr noundef nonnull readonly %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %20, i64 3072 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 2144
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ad, ptr noundef nonnull readonly %i.ae)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %20)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.z)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ab)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ad)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %17, i8 0, i64 200, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 216
  store i64 0, ptr %i.af, align 8, !tbaa !444
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 393
  store i8 0, ptr %i.ag, align 1, !tbaa !445
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 200
  store i64 136, ptr %i.ah, align 8, !tbaa !446
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i64 0, ptr %i.ai, align 8, !tbaa !447
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 392
  store i8 31, ptr %i.aj, align 8, !tbaa !448
  %i.ak = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %17, ptr noundef nonnull readonly %i.e, i64 noundef range(i64 1, 0) 64) ; 0 uses
  %.not.i = icmp eq i64 %4, 0
  %i.al = icmp eq ptr %3, null
  %or.cond.i = or i1 %i.al, %.not.i
  br i1 %or.cond.i, label %mld_shake256_absorb.exit11.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %17, ptr noundef nonnull readonly %3, i64 noundef range(i64 1, 0) %4) ; 0 uses
  br label %mld_shake256_absorb.exit11.i

mld_shake256_absorb.exit11.i:                     ; preds = %bb.c, %bb.b
  %.not10.i = icmp eq i64 %2, 0
  %i.an = icmp eq ptr %1, null
end_hunk_2
begin_hunk_3_@mldsa65_keypair_internal:bb.a
  %i.en = trunc <4 x i32> %i.el to <4 x i8>
  %i.eo = trunc <4 x i32> %i.em to <4 x i8>
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 %index51 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store <4 x i8> %i.en, ptr %i.ep, align 1, !tbaa !76
  store <4 x i8> %i.eo, ptr %i.eq, align 1, !tbaa !76
  %index.next58 = add nuw i64 %index51, 8         ; 2 uses
  %i.er = icmp eq i64 %index.next58, 128
  br i1 %i.er, label %mldsa65_polyeta_pack.exit.i.i57, label %vector.body50, !llvm.loop !2117

mldsa65_polyeta_pack.exit.i.i57:                  ; preds = %vector.body50
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 896
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %mldsa65_polyeta_pack.exit.i.i57
  %index62 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.i.i57 ], [ %index.next69, %vector.body61 ] ; 4 uses
  %i.et = shl nuw nsw i64 %index62, 3
  %i.eu = shl i64 %index62, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.et
  %i.ew = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.eu
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %wide.vec63 = load <8 x i32>, ptr %i.ev, align 32, !tbaa !73 ; 2 uses
  %strided.vec64 = shufflevector <8 x i32> %wide.vec63, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec65 = shufflevector <8 x i32> %wide.vec63, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec66 = load <8 x i32>, ptr %i.ex, align 32, !tbaa !73 ; 2 uses
  %strided.vec67 = shufflevector <8 x i32> %wide.vec66, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec68 = shufflevector <8 x i32> %wide.vec66, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ey = sub <4 x i32> splat (i32 4), %strided.vec64
  %i.ez = sub <4 x i32> splat (i32 4), %strided.vec67
  %i.fa = shl <4 x i32> %strided.vec65, splat (i32 4)
  %i.fb = shl <4 x i32> %strided.vec68, splat (i32 4)
  %i.fc = sub <4 x i32> splat (i32 64), %i.fa
  %i.fd = sub <4 x i32> splat (i32 64), %i.fb
  %i.fe = or <4 x i32> %i.fc, %i.ey
  %i.ff = or <4 x i32> %i.fd, %i.ez
  %i.fg = trunc <4 x i32> %i.fe to <4 x i8>
  %i.fh = trunc <4 x i32> %i.ff to <4 x i8>
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 %index62 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store <4 x i8> %i.fg, ptr %i.fi, align 1, !tbaa !76
  store <4 x i8> %i.fh, ptr %i.fj, align 1, !tbaa !76
  %index.next69 = add nuw i64 %index62, 8         ; 2 uses
  %i.fk = icmp eq i64 %index.next69, 128
  br i1 %i.fk, label %mldsa65_polyeta_pack.exit.1.i.i62, label %vector.body61, !llvm.loop !2118

mldsa65_polyeta_pack.exit.1.i.i62:                ; preds = %vector.body61
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %mldsa65_polyeta_pack.exit.1.i.i62
  %index73 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.1.i.i62 ], [ %index.next80, %vector.body72 ] ; 4 uses
  %i.fm = shl nuw nsw i64 %index73, 3
  %i.fn = shl i64 %index73, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.fn
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %wide.vec74 = load <8 x i32>, ptr %i.fo, align 32, !tbaa !73 ; 2 uses
  %strided.vec75 = shufflevector <8 x i32> %wide.vec74, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec76 = shufflevector <8 x i32> %wide.vec74, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec77 = load <8 x i32>, ptr %i.fq, align 32, !tbaa !73 ; 2 uses
  %strided.vec78 = shufflevector <8 x i32> %wide.vec77, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec79 = shufflevector <8 x i32> %wide.vec77, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fr = sub <4 x i32> splat (i32 4), %strided.vec75
  %i.fs = sub <4 x i32> splat (i32 4), %strided.vec78
  %i.ft = shl <4 x i32> %strided.vec76, splat (i32 4)
  %i.fu = shl <4 x i32> %strided.vec79, splat (i32 4)
  %i.fv = sub <4 x i32> splat (i32 64), %i.ft
  %i.fw = sub <4 x i32> splat (i32 64), %i.fu
  %i.fx = or <4 x i32> %i.fv, %i.fr
  %i.fy = or <4 x i32> %i.fw, %i.fs
  %i.fz = trunc <4 x i32> %i.fx to <4 x i8>
  %i.ga = trunc <4 x i32> %i.fy to <4 x i8>
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 %index73 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store <4 x i8> %i.fz, ptr %i.gb, align 1, !tbaa !76
  store <4 x i8> %i.ga, ptr %i.gc, align 1, !tbaa !76
  %index.next80 = add nuw i64 %index73, 8         ; 2 uses
  %i.gd = icmp eq i64 %index.next80, 128
  br i1 %i.gd, label %mldsa65_polyeta_pack.exit.2.i.i67, label %vector.body72, !llvm.loop !2119

mldsa65_polyeta_pack.exit.2.i.i67:                ; preds = %vector.body72
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 1152
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %mldsa65_polyeta_pack.exit.2.i.i67
  %index84 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.2.i.i67 ], [ %index.next91, %vector.body83 ] ; 4 uses
  %i.gf = shl nuw nsw i64 %index84, 3
  %i.gg = shl i64 %index84, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %wide.vec85 = load <8 x i32>, ptr %i.gh, align 32, !tbaa !73 ; 2 uses
  %strided.vec86 = shufflevector <8 x i32> %wide.vec85, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec87 = shufflevector <8 x i32> %wide.vec85, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec88 = load <8 x i32>, ptr %i.gj, align 32, !tbaa !73 ; 2 uses
  %strided.vec89 = shufflevector <8 x i32> %wide.vec88, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec90 = shufflevector <8 x i32> %wide.vec88, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gk = sub <4 x i32> splat (i32 4), %strided.vec86
  %i.gl = sub <4 x i32> splat (i32 4), %strided.vec89
  %i.gm = shl <4 x i32> %strided.vec87, splat (i32 4)
  %i.gn = shl <4 x i32> %strided.vec90, splat (i32 4)
  %i.go = sub <4 x i32> splat (i32 64), %i.gm
  %i.gp = sub <4 x i32> splat (i32 64), %i.gn
  %i.gq = or <4 x i32> %i.go, %i.gk
  %i.gr = or <4 x i32> %i.gp, %i.gl
  %i.gs = trunc <4 x i32> %i.gq to <4 x i8>
  %i.gt = trunc <4 x i32> %i.gr to <4 x i8>
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 %index84 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store <4 x i8> %i.gs, ptr %i.gu, align 1, !tbaa !76
  store <4 x i8> %i.gt, ptr %i.gv, align 1, !tbaa !76
  %index.next91 = add nuw i64 %index84, 8         ; 2 uses
  %i.gw = icmp eq i64 %index.next91, 128
  br i1 %i.gw, label %mldsa65_polyeta_pack.exit.3.i.i72, label %vector.body83, !llvm.loop !2120

mldsa65_polyeta_pack.exit.3.i.i72:                ; preds = %vector.body83
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 1280
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %mldsa65_polyeta_pack.exit.3.i.i72
  %index95 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.3.i.i72 ], [ %index.next102, %vector.body94 ] ; 4 uses
  %i.gy = shl nuw nsw i64 %index95, 3
  %i.gz = shl i64 %index95, 3
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %wide.vec96 = load <8 x i32>, ptr %i.ha, align 32, !tbaa !73 ; 2 uses
  %strided.vec97 = shufflevector <8 x i32> %wide.vec96, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec98 = shufflevector <8 x i32> %wide.vec96, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec99 = load <8 x i32>, ptr %i.hc, align 32, !tbaa !73 ; 2 uses
  %strided.vec100 = shufflevector <8 x i32> %wide.vec99, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec101 = shufflevector <8 x i32> %wide.vec99, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hd = sub <4 x i32> splat (i32 4), %strided.vec97
  %i.he = sub <4 x i32> splat (i32 4), %strided.vec100
  %i.hf = shl <4 x i32> %strided.vec98, splat (i32 4)
  %i.hg = shl <4 x i32> %strided.vec101, splat (i32 4)
  %i.hh = sub <4 x i32> splat (i32 64), %i.hf
  %i.hi = sub <4 x i32> splat (i32 64), %i.hg
  %i.hj = or <4 x i32> %i.hh, %i.hd
  %i.hk = or <4 x i32> %i.hi, %i.he
  %i.hl = trunc <4 x i32> %i.hj to <4 x i8>
  %i.hm = trunc <4 x i32> %i.hk to <4 x i8>
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 %index95 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store <4 x i8> %i.hl, ptr %i.hn, align 1, !tbaa !76
  store <4 x i8> %i.hm, ptr %i.ho, align 1, !tbaa !76
  %index.next102 = add nuw i64 %index95, 8        ; 2 uses
  %i.hp = icmp eq i64 %index.next102, 128
  br i1 %i.hp, label %mldsa65_polyeta_pack.exit.4.i.i, label %vector.body94, !llvm.loop !2121

mldsa65_polyeta_pack.exit.4.i.i:                  ; preds = %vector.body94
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 1408
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %mldsa65_polyeta_pack.exit.4.i.i
  %index106 = phi i64 [ 0, %mldsa65_polyeta_pack.exit.4.i.i ], [ %index.next113, %vector.body105 ] ; 4 uses
  %i.hr = shl nuw nsw i64 %index106, 3
  %i.hs = shl i64 %index106, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hr
  %i.hu = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %wide.vec107 = load <8 x i32>, ptr %i.ht, align 32, !tbaa !73 ; 2 uses
  %strided.vec108 = shufflevector <8 x i32> %wide.vec107, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec109 = shufflevector <8 x i32> %wide.vec107, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec110 = load <8 x i32>, ptr %i.hv, align 32, !tbaa !73 ; 2 uses
  %strided.vec111 = shufflevector <8 x i32> %wide.vec110, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec112 = shufflevector <8 x i32> %wide.vec110, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hw = sub <4 x i32> splat (i32 4), %strided.vec108
  %i.hx = sub <4 x i32> splat (i32 4), %strided.vec111
  %i.hy = shl <4 x i32> %strided.vec109, splat (i32 4)
  %i.hz = shl <4 x i32> %strided.vec112, splat (i32 4)
  %i.ia = sub <4 x i32> splat (i32 64), %i.hy
  %i.ib = sub <4 x i32> splat (i32 64), %i.hz
  %i.ic = or <4 x i32> %i.ia, %i.hw
  %i.id = or <4 x i32> %i.ib, %i.hx
  %i.ie = trunc <4 x i32> %i.ic to <4 x i8>
  %i.if = trunc <4 x i32> %i.id to <4 x i8>
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 %index106 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store <4 x i8> %i.ie, ptr %i.ig, align 1, !tbaa !76
  store <4 x i8> %i.if, ptr %i.ih, align 1, !tbaa !76
  %index.next113 = add nuw i64 %index106, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next113, 128
  br i1 %i.ii, label %mldsa65_pack_sk_rho_key_tr_s2.exit, label %vector.body105, !llvm.loop !2122

mldsa65_pack_sk_rho_key_tr_s2.exit:               ; preds = %vector.body105
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef 6144) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 5120) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 34) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 128) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_65_pack_pk_from_sk(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 6 uses
  %i.b = alloca [64 x i8], align 32               ; 8 uses
  %i.c = alloca [64 x i8], align 32               ; 8 uses
  %i.d = alloca [32 x i8], align 32               ; 4 uses
  %3 = alloca [1 x %struct.mld_polyvecl65], align 32 ; 11 uses
  %4 = alloca [1 x %struct.mld_polyveck65], align 32 ; 12 uses
  %i.e = alloca [2496 x i8], align 32             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.g, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  call fastcc void @mldsa65_polyvecl_unpack_eta(ptr noundef %3, ptr noundef nonnull readonly %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 768
  call fastcc void @mldsa65_polyveck_unpack_eta(ptr noundef %4, ptr noundef nonnull readonly %i.i)
  %i.j = call fastcc i32 @mldsa65_polyvecl_chknorm(ptr noundef %3, i32 noundef 5)
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.l = and i32 %i.k, 32
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, label %mld_poly_chknorm_native.exit.i.i.i

mld_poly_chknorm_native.exit.thread.i.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.i.i, %bb.a
  br label %mld_poly_chknorm_native.exit.thread.i.i.i

mld_poly_chknorm_native.exit.i.i.i:               ; preds = %bb.a
  %i.m = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %4, i32 noundef range(i32 3, 524169) 5) #46 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, -1
  br i1 %.not.i.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, label %bb.b

bb.b:                                             ; preds = %mld_poly_chknorm_native.exit.i.i.i
  %i.n = zext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.o) #46, !srcloc !449
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32
  br label %mldsa_poly_chknorm.exit.i.i

mld_poly_chknorm_native.exit.thread.i.i.i:        ; preds = %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %mld_poly_chknorm_native.exit.thread.i.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.i.i.preheader ] ; 2 uses
  %.08.i.i.i.i = phi i32 [ %i.ai, %mld_poly_chknorm_native.exit.thread.i.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.i.i.preheader ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !73   ; 4 uses
  %i.u = sub nsw i32 0, %i.t
  %i.v = sext i32 %i.t to i64
  %i.w = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.v) #46, !srcloc !449
  %i.x = lshr i64 %i.w, 31
  %i.y = trunc i64 %i.x to i32
  %i.z = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.y) #46, !srcloc !450
  %i.aa = xor i32 %i.t, %i.u
  %i.ab = and i32 %i.z, %i.aa
  %i.ac = xor i32 %i.ab, %i.t
  %i.ad = sub i32 4, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ae) #46, !srcloc !449
  %i.ag = lshr i64 %i.af, 31
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = or i32 %.08.i.i.i.i, %i.ah              ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 256
  br i1 %exitcond.not.i.i.i.i, label %mldsa_poly_chknorm.exit.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i, !llvm.loop !32

mldsa_poly_chknorm.exit.i.i:                      ; preds = %mld_poly_chknorm_native.exit.thread.i.i.i, %bb.b
  %.0.i.i.i = phi i32 [ %i.r, %bb.b ], [ %i.ai, %mld_poly_chknorm_native.exit.thread.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 1024 ; 2 uses
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.al = and i32 %i.ak, 32
  %.not.i.i.1.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.1.i.i, label %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader, label %mld_poly_chknorm_native.exit.i.1.i.i

mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.1.i.i, %mldsa_poly_chknorm.exit.i.i
  br label %mld_poly_chknorm_native.exit.thread.i.1.i.i

mld_poly_chknorm_native.exit.i.1.i.i:             ; preds = %mldsa_poly_chknorm.exit.i.i
  %i.am = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.aj, i32 noundef range(i32 3, 524169) 5) #46 ; 2 uses
  %.not.i.1.i.i = icmp eq i32 %i.am, -1
  br i1 %.not.i.1.i.i, label %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %mld_poly_chknorm_native.exit.i.1.i.i
  %i.an = zext i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ao) #46, !srcloc !449
  %i.aq = lshr i64 %i.ap, 32
  %i.ar = trunc nuw i64 %i.aq to i32
  br label %mldsa_poly_chknorm.exit.1.i.i

mld_poly_chknorm_native.exit.thread.i.1.i.i:      ; preds = %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.1.i.i
  %indvars.iv.i.i.1.i.i = phi i64 [ %indvars.iv.next.i.i.1.i.i, %mld_poly_chknorm_native.exit.thread.i.1.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader ] ; 2 uses
  %.08.i.i.1.i.i = phi i32 [ %i.bi, %mld_poly_chknorm_native.exit.thread.i.1.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.1.i.i.preheader ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.i.1.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !73 ; 4 uses
  %i.au = sub nsw i32 0, %i.at
  %i.av = sext i32 %i.at to i64
  %i.aw = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.av) #46, !srcloc !449
  %i.ax = lshr i64 %i.aw, 31
  %i.ay = trunc i64 %i.ax to i32
  %i.az = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #46, !srcloc !450
  %i.ba = xor i32 %i.at, %i.au
  %i.bb = and i32 %i.az, %i.ba
  %i.bc = xor i32 %i.bb, %i.at
  %i.bd = sub i32 4, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.be) #46, !srcloc !449
  %i.bg = lshr i64 %i.bf, 31
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = or i32 %.08.i.i.1.i.i, %i.bh            ; 2 uses
  %indvars.iv.next.i.i.1.i.i = add nuw nsw i64 %indvars.iv.i.i.1.i.i, 1 ; 2 uses
  %exitcond.not.i.i.1.i.i = icmp eq i64 %indvars.iv.next.i.i.1.i.i, 256
  br i1 %exitcond.not.i.i.1.i.i, label %mldsa_poly_chknorm.exit.1.i.i, label %mld_poly_chknorm_native.exit.thread.i.1.i.i, !llvm.loop !32

mldsa_poly_chknorm.exit.1.i.i:                    ; preds = %mld_poly_chknorm_native.exit.thread.i.1.i.i, %bb.c
  %.0.i.1.i.i = phi i32 [ %i.ar, %bb.c ], [ %i.bi, %mld_poly_chknorm_native.exit.thread.i.1.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 2048 ; 2 uses
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.bl = and i32 %i.bk, 32
  %.not.i.i.2.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.2.i.i, label %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader, label %mld_poly_chknorm_native.exit.i.2.i.i

mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.2.i.i, %mldsa_poly_chknorm.exit.1.i.i
  br label %mld_poly_chknorm_native.exit.thread.i.2.i.i

mld_poly_chknorm_native.exit.i.2.i.i:             ; preds = %mldsa_poly_chknorm.exit.1.i.i
  %i.bm = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.bj, i32 noundef range(i32 3, 524169) 5) #46 ; 2 uses
  %.not.i.2.i.i = icmp eq i32 %i.bm, -1
  br i1 %.not.i.2.i.i, label %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader, label %bb.d

bb.d:                                             ; preds = %mld_poly_chknorm_native.exit.i.2.i.i
  %i.bn = zext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.bo) #46, !srcloc !449
  %i.bq = lshr i64 %i.bp, 32
  %i.br = trunc nuw i64 %i.bq to i32
  br label %mldsa_poly_chknorm.exit.2.i.i

mld_poly_chknorm_native.exit.thread.i.2.i.i:      ; preds = %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.2.i.i
  %indvars.iv.i.i.2.i.i = phi i64 [ %indvars.iv.next.i.i.2.i.i, %mld_poly_chknorm_native.exit.thread.i.2.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader ] ; 2 uses
  %.08.i.i.2.i.i = phi i32 [ %i.ci, %mld_poly_chknorm_native.exit.thread.i.2.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.2.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.i.2.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !73 ; 4 uses
  %i.bu = sub nsw i32 0, %i.bt
  %i.bv = sext i32 %i.bt to i64
  %i.bw = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.bv) #46, !srcloc !449
  %i.bx = lshr i64 %i.bw, 31
  %i.by = trunc i64 %i.bx to i32
  %i.bz = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.by) #46, !srcloc !450
  %i.ca = xor i32 %i.bt, %i.bu
  %i.cb = and i32 %i.bz, %i.ca
  %i.cc = xor i32 %i.cb, %i.bt
  %i.cd = sub i32 4, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ce) #46, !srcloc !449
  %i.cg = lshr i64 %i.cf, 31
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = or i32 %.08.i.i.2.i.i, %i.ch            ; 2 uses
  %indvars.iv.next.i.i.2.i.i = add nuw nsw i64 %indvars.iv.i.i.2.i.i, 1 ; 2 uses
  %exitcond.not.i.i.2.i.i = icmp eq i64 %indvars.iv.next.i.i.2.i.i, 256
  br i1 %exitcond.not.i.i.2.i.i, label %mldsa_poly_chknorm.exit.2.i.i, label %mld_poly_chknorm_native.exit.thread.i.2.i.i, !llvm.loop !32

mldsa_poly_chknorm.exit.2.i.i:                    ; preds = %mld_poly_chknorm_native.exit.thread.i.2.i.i, %bb.d
  %.0.i.2.i.i = phi i32 [ %i.br, %bb.d ], [ %i.ci, %mld_poly_chknorm_native.exit.thread.i.2.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 3072 ; 2 uses
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.cl = and i32 %i.ck, 32
  %.not.i.i.3.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.3.i.i, label %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader, label %mld_poly_chknorm_native.exit.i.3.i.i

mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.3.i.i, %mldsa_poly_chknorm.exit.2.i.i
  br label %mld_poly_chknorm_native.exit.thread.i.3.i.i

mld_poly_chknorm_native.exit.i.3.i.i:             ; preds = %mldsa_poly_chknorm.exit.2.i.i
  %i.cm = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.cj, i32 noundef range(i32 3, 524169) 5) #46 ; 2 uses
  %.not.i.3.i.i = icmp eq i32 %i.cm, -1
  br i1 %.not.i.3.i.i, label %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader, label %bb.e

bb.e:                                             ; preds = %mld_poly_chknorm_native.exit.i.3.i.i
  %i.cn = zext i32 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.co) #46, !srcloc !449
  %i.cq = lshr i64 %i.cp, 32
  %i.cr = trunc nuw i64 %i.cq to i32
  br label %mldsa_poly_chknorm.exit.3.i.i

mld_poly_chknorm_native.exit.thread.i.3.i.i:      ; preds = %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.3.i.i
  %indvars.iv.i.i.3.i.i = phi i64 [ %indvars.iv.next.i.i.3.i.i, %mld_poly_chknorm_native.exit.thread.i.3.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader ] ; 2 uses
  %.08.i.i.3.i.i = phi i32 [ %i.di, %mld_poly_chknorm_native.exit.thread.i.3.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.3.i.i.preheader ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.3.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !73 ; 4 uses
  %i.cu = sub nsw i32 0, %i.ct
  %i.cv = sext i32 %i.ct to i64
  %i.cw = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.cv) #46, !srcloc !449
  %i.cx = lshr i64 %i.cw, 31
end_hunk_3
begin_hunk_4_@ml_dsa_65_pack_pk_from_sk:bb.a
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.eo) #46, !srcloc !449
  %i.eq = lshr i64 %i.ep, 32
  %i.er = trunc nuw i64 %i.eq to i32
  br label %mldsa65_polyveck_chknorm.exit.i

mld_poly_chknorm_native.exit.thread.i.5.i.i:      ; preds = %mld_poly_chknorm_native.exit.thread.i.5.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.5.i.i
  %indvars.iv.i.i.5.i.i = phi i64 [ %indvars.iv.next.i.i.5.i.i, %mld_poly_chknorm_native.exit.thread.i.5.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.5.i.i.preheader ] ; 2 uses
  %.08.i.i.5.i.i = phi i32 [ %i.fi, %mld_poly_chknorm_native.exit.thread.i.5.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.5.i.i.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i.5.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !73 ; 4 uses
  %i.eu = sub nsw i32 0, %i.et
  %i.ev = sext i32 %i.et to i64
  %i.ew = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ev) #46, !srcloc !449
  %i.ex = lshr i64 %i.ew, 31
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ey) #46, !srcloc !450
  %i.fa = xor i32 %i.et, %i.eu
  %i.fb = and i32 %i.ez, %i.fa
  %i.fc = xor i32 %i.fb, %i.et
  %i.fd = sub i32 4, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.fe) #46, !srcloc !449
  %i.fg = lshr i64 %i.ff, 31
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = or i32 %.08.i.i.5.i.i, %i.fh            ; 2 uses
  %indvars.iv.next.i.i.5.i.i = add nuw nsw i64 %indvars.iv.i.i.5.i.i, 1 ; 2 uses
  %exitcond.not.i.i.5.i.i = icmp eq i64 %indvars.iv.next.i.i.5.i.i, 256
  br i1 %exitcond.not.i.i.5.i.i, label %mldsa65_polyveck_chknorm.exit.i, label %mld_poly_chknorm_native.exit.thread.i.5.i.i, !llvm.loop !32

mldsa65_polyveck_chknorm.exit.i:                  ; preds = %mld_poly_chknorm_native.exit.thread.i.5.i.i, %bb.g
  %.0.i.5.i.i = phi i32 [ %i.er, %bb.g ], [ %i.fi, %mld_poly_chknorm_native.exit.thread.i.5.i.i ]
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %3)
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 1024
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 2048
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.fk)
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 3072
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 4096
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.fm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull readonly align 32 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32
  call fastcc void @mld_compute_pack_t0_t165(ptr noundef nonnull %i.fn, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef %4, ptr noundef %i.a)
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %mldsa65_polyveck_chknorm.exit.i
  %index = phi i64 [ 0, %mldsa65_polyveck_chknorm.exit.i ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %mldsa65_polyveck_chknorm.exit.i ], [ %i.gh, %vector.body ]
  %vec.phi43 = phi <16 x i8> [ zeroinitializer, %mldsa65_polyveck_chknorm.exit.i ], [ %i.gi, %vector.body ]
  %vec.phi44 = phi <16 x i8> [ zeroinitializer, %mldsa65_polyveck_chknorm.exit.i ], [ %i.gf, %vector.body ]
  %vec.phi45 = phi <16 x i8> [ zeroinitializer, %mldsa65_polyveck_chknorm.exit.i ], [ %i.gg, %vector.body ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <16 x i8>, ptr %i.fp, align 32, !tbaa !76
  %wide.load46 = load <16 x i8>, ptr %i.fq, align 16, !tbaa !76
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %index ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %wide.load47 = load <16 x i8>, ptr %i.fr, align 1, !tbaa !76
  %wide.load48 = load <16 x i8>, ptr %i.fs, align 1, !tbaa !76
  %i.ft = xor <16 x i8> %wide.load47, %wide.load  ; 2 uses
  %i.fu = xor <16 x i8> %wide.load48, %wide.load46 ; 2 uses
  %i.fv = or <16 x i8> %i.ft, %vec.phi44
  %i.fw = or <16 x i8> %i.fu, %vec.phi45
  %i.fx = xor <16 x i8> %i.ft, %vec.phi
  %i.fy = xor <16 x i8> %i.fu, %vec.phi43
  %index.next = or disjoint i64 %index, 32        ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 %index.next ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.fz, align 32, !tbaa !76
  %wide.load46.1 = load <16 x i8>, ptr %i.ga, align 16, !tbaa !76
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %index.next ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load47.1 = load <16 x i8>, ptr %i.gb, align 1, !tbaa !76
  %wide.load48.1 = load <16 x i8>, ptr %i.gc, align 1, !tbaa !76
  %i.gd = xor <16 x i8> %wide.load47.1, %wide.load.1 ; 2 uses
  %i.ge = xor <16 x i8> %wide.load48.1, %wide.load46.1 ; 2 uses
  %i.gf = or <16 x i8> %i.gd, %i.fv               ; 2 uses
  %i.gg = or <16 x i8> %i.ge, %i.fw               ; 2 uses
  %i.gh = xor <16 x i8> %i.gd, %i.fx              ; 2 uses
  %i.gi = xor <16 x i8> %i.ge, %i.fy              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 64      ; 2 uses
  %i.gj = icmp eq i64 %index.next.1, 2496
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !2123

middle.block:                                     ; preds = %vector.body
  %bin.rdx49 = or <16 x i8> %i.gg, %i.gf
  %i.gk = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx49)
  %bin.rdx = xor <16 x i8> %i.gi, %i.gh
  %i.gl = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx) ; 2 uses
  %i.gm = zext i8 %i.gk to i64
  %i.gn = sub nsw i64 0, %i.gm
  %i.go = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.gn) #46, !srcloc !449
  %i.gp = lshr i64 %i.go, 32
  %i.gq = trunc i64 %i.gp to i8
  %i.gr = xor i8 %i.gl, %i.gq
  %i.gs = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.gr) #46, !srcloc !451
  %i.gt = xor i8 %i.gs, %i.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, i8 0, i64 200, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 0, ptr %i.gu, align 8, !tbaa !444
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 393
  store i8 0, ptr %i.gv, align 1, !tbaa !445
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 136, ptr %i.gw, align 8, !tbaa !446
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 0, ptr %i.gx, align 8, !tbaa !447
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i8 31, ptr %i.gy, align 8, !tbaa !448
  %i.gz = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %2, ptr noundef nonnull readonly %0, i64 noundef 1952)
  %.not6.i.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not6.i.i.i, label %mld_shake256.exit.i, label %SHAKE_Absorb.exit.thread9.i.i.i

SHAKE_Absorb.exit.thread9.i.i.i:                  ; preds = %middle.block
  %i.ha = call i32 @SHAKE_Final(ptr noundef nonnull %i.c, ptr noundef nonnull %2, i64 noundef 64) ; 0 uses
  br label %mld_shake256.exit.i

mld_shake256.exit.i:                              ; preds = %SHAKE_Absorb.exit.thread9.i.i.i, %middle.block
  call void @OPENSSL_cleanse(ptr noundef nonnull %2, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load57 = load <16 x i8>, ptr %i.b, align 32, !tbaa !76
  %wide.load58 = load <16 x i8>, ptr %i.hb, align 16, !tbaa !76
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load59 = load <16 x i8>, ptr %i.c, align 32, !tbaa !76
  %wide.load60 = load <16 x i8>, ptr %i.hc, align 16, !tbaa !76
  %i.hd = xor <16 x i8> %wide.load59, %wide.load57 ; 2 uses
  %i.he = xor <16 x i8> %wide.load60, %wide.load58 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load57.1 = load <16 x i8>, ptr %i.hf, align 32, !tbaa !76
  %wide.load58.1 = load <16 x i8>, ptr %i.hg, align 16, !tbaa !76
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %wide.load59.1 = load <16 x i8>, ptr %i.hh, align 32, !tbaa !76
  %wide.load60.1 = load <16 x i8>, ptr %i.hi, align 16, !tbaa !76
  %i.hj = xor <16 x i8> %wide.load59.1, %wide.load57.1 ; 2 uses
  %i.hk = xor <16 x i8> %wide.load60.1, %wide.load58.1 ; 2 uses
  %i.hl = or <16 x i8> %i.hj, %i.hd
  %i.hm = xor <16 x i8> %i.hj, %i.hd
  %i.hn = or <16 x i8> %i.he, %i.hl
  %bin.rdx64 = or <16 x i8> %i.hn, %i.hk
  %i.ho = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx64)
  %i.hp = xor <16 x i8> %i.he, %i.hm
  %bin.rdx63 = xor <16 x i8> %i.hp, %i.hk
  %i.hq = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx63) ; 2 uses
  %i.hr = zext i8 %i.ho to i64
  %i.hs = sub nsw i64 0, %i.hr
  %i.ht = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.hs) #46, !srcloc !449
  %i.hu = lshr i64 %i.ht, 32
  %i.hv = trunc i64 %i.hu to i8
  %i.hw = xor i8 %i.hq, %i.hv
  %i.hx = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.hw) #46, !srcloc !451
  %i.hy = xor i8 %i.hx, %i.hq
  %i.hz = or i32 %.0.i.i.i, %i.j
  %i.ia = or i32 %i.hz, %.0.i.1.i.i
  %i.ib = or i32 %i.ia, %.0.i.2.i.i
  %i.ic = or i32 %i.ib, %.0.i.3.i.i
  %i.id = or i32 %i.ic, %.0.i.4.i.i
  %i.ie = or i32 %i.id, %.0.i.5.i.i
  %i.if = trunc i32 %i.ie to i8
  %i.ig = or i8 %i.gt, %i.if
  %i.ih = or i8 %i.ig, %i.hy
  %i.ii = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ih) #46, !srcloc !451
  %.not.i = icmp eq i8 %i.ii, 0                   ; 2 uses
  br i1 %.not.i, label %mldsa65_pk_from_sk.exit, label %bb.h

bb.h:                                             ; preds = %mld_shake256.exit.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 1952) #46
  br label %mldsa65_pk_from_sk.exit

mldsa65_pk_from_sk.exit:                          ; preds = %mld_shake256.exit.i, %bb.h
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 2496) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 6144) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 5120) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.ij = zext i1 %.not.i to i32
  ret i32 %i.ij
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_65_keypair_internal(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  tail call fastcc void @mldsa65_keypair_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_65_sign(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca [332 x i8], align 32              ; 7 uses
  %i.b = alloca [32 x i8], align 32               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.c = icmp ugt i64 %6, 255
  br i1 %i.c, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 32, !tbaa !76
  %i.d = trunc nuw i64 %6 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !76
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(1) %5, i64 range(i64 1, 256) %6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nuw nsw i64 %6, 2
  call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.h = call fastcc i32 @mldsa65_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef %4, ptr noundef nonnull %i.a, i64 noundef %i.g, ptr noundef nonnull %i.b, ptr noundef readonly %0, i32 noundef 0)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %mldsa65_signature.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.a
  call void @OPENSSL_cleanse(ptr noundef %1, i64 noundef 3309) #46
  br label %mldsa65_signature.exit

mldsa65_signature.exit:                           ; preds = %bb.d, %.thread.i
  %i.i = phi i1 [ true, %bb.d ], [ false, %.thread.i ] ; 2 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 332) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %spec.select11 = select i1 %i.i, i64 3309, i64 0
  store i64 %spec.select11, ptr %2, align 8, !tbaa !80
  %spec.select = zext i1 %i.i to i32
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_extmu_65_sign(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 5 uses
  %i.b = icmp eq i64 %4, 64
  br i1 %i.b, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.c = call fastcc i32 @mldsa65_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef 64, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef readonly %0, i32 noundef 1)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = select i1 %i.d, i64 3309, i64 0
  %spec.select = zext i1 %i.d to i32
  br label %.split

.split:                                           ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %phi.call = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %2, align 8, !tbaa !80
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_65_sign_internal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mldsa65_signature_internal(ptr noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %0, i32 noundef 0)
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = select i1 %i.b, i64 3309, i64 0
  store i64 %i.c, ptr %2, align 8, !tbaa !80
  %i.d = zext i1 %i.b to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @mldsa65_signature_internal(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.keccak_ctx_st, align 8      ; 12 uses
  %i.a = alloca [680 x i8], align 32              ; 6 uses
  %i.b = alloca [66 x i8], align 32               ; 6 uses
  %9 = alloca %struct.keccak_ctx_st, align 8      ; 10 uses
  %i.c = alloca [4 x [704 x i8]], align 32        ; 9 uses
  %i.d = alloca [4 x [96 x i8]], align 32         ; 16 uses
  %10 = alloca %struct.mld_shake256x4ctx_s, align 8 ; 28 uses
  %i.e = alloca [48 x i8], align 32               ; 6 uses
  %11 = alloca [1 x %struct.mld_yvec_eager65], align 32 ; 11 uses
  %12 = alloca [1 x %struct.mld_poly], align 32   ; 23 uses
  %13 = alloca [1 x %union.w1tmp_u.15], align 32  ; 27 uses
  %14 = alloca [1 x %struct.mld_polyveck65], align 32 ; 17 uses
  %15 = alloca [1 x %struct.mld_poly], align 32   ; 14 uses
  %16 = alloca [1 x %struct.mld_poly], align 32   ; 14 uses
  %17 = alloca %struct.keccak_ctx_st, align 8     ; 13 uses
  %18 = alloca %struct.keccak_ctx_st, align 8     ; 13 uses
  %i.f = alloca [256 x i8], align 32              ; 9 uses
  %19 = alloca [1 x %struct.mld_polymat_eager65], align 32 ; 11 uses
  %20 = alloca [1 x %struct.mld_sk_s1hat_eager65], align 32 ; 10 uses
  %21 = alloca [1 x %struct.mld_sk_t0hat_eager65], align 32 ; 11 uses
  %22 = alloca [1 x %struct.mld_sk_s2hat_eager65], align 32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(32) %6, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.l, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 128
  call fastcc void @mldsa65_polyvecl_unpack_eta(ptr noundef nonnull %20, ptr noundef nonnull readonly %i.m)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %20)
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 1024
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %20, i64 2048
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %20, i64 3072
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %20, i64 4096
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 768
  call fastcc void @mldsa65_polyveck_unpack_eta(ptr noundef nonnull %22, ptr noundef nonnull readonly %i.r)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %22)
  %i.s = getelementptr inbounds nuw i8, ptr %22, i64 1024
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %22, i64 2048
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 3072
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 4096
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 5120
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 1536
  call fastcc void @mldsa_polyt0_unpack(ptr noundef nonnull %21, ptr noundef nonnull readonly %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 1024 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 1952
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.y, ptr noundef nonnull readonly %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %21, i64 2048 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 2368
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.aa, ptr noundef nonnull readonly %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 3072 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 2784
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ac, ptr noundef nonnull readonly %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 4096 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 3200
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ae, ptr noundef nonnull readonly %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 5120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 3616
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ag, ptr noundef nonnull readonly %i.ah)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %21)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.y)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.aa)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ac)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ae)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ag)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %18, i8 0, i64 200, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 216
  store i64 0, ptr %i.ai, align 8, !tbaa !444
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 393
  store i8 0, ptr %i.aj, align 1, !tbaa !445
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 200
  store i64 136, ptr %i.ak, align 8, !tbaa !446
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 208
  store i64 0, ptr %i.al, align 8, !tbaa !447
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 392
  store i8 31, ptr %i.am, align 8, !tbaa !448
  %i.an = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %18, ptr noundef nonnull readonly %i.g, i64 noundef range(i64 1, 0) 64) ; 0 uses
  %.not.i = icmp eq i64 %4, 0
  %i.ao = icmp eq ptr %3, null
  %or.cond.i = or i1 %i.ao, %.not.i
  br i1 %or.cond.i, label %mld_shake256_absorb.exit11.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %18, ptr noundef nonnull readonly %3, i64 noundef range(i64 1, 0) %4) ; 0 uses
  br label %mld_shake256_absorb.exit11.i

mld_shake256_absorb.exit11.i:                     ; preds = %bb.c, %bb.b
  %.not10.i = icmp eq i64 %2, 0
  %i.aq = icmp eq ptr %1, null
  %or.cond13.i = or i1 %i.aq, %.not10.i
  br i1 %or.cond13.i, label %mld_H65.exit, label %bb.d

bb.d:                                             ; preds = %mld_shake256_absorb.exit11.i
  %i.ar = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %18, ptr noundef nonnull readonly %1, i64 noundef range(i64 1, 0) %2) ; 0 uses
  br label %mld_H65.exit
end_hunk_4
begin_hunk_5_@mldsa87_keypair_internal:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %indvars.iv.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i ; 8 uses
  %i.af = load i32, ptr %i.ae, align 32, !tbaa !73
  %i.ag = sub i32 2, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !73
  %i.al = sub i32 2, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !73
  %i.as = sub i32 2, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !73
  %i.ax = shl i32 %i.ai, 3
  %i.ay = sub i32 16, %i.ax
  %i.az = or i32 %i.ay, %i.ag
  %i.ba = and i32 %i.al, 255                      ; 2 uses
  %i.bb = shl nuw nsw i32 %i.ba, 6
  %i.bc = or i32 %i.az, %i.bb
  %i.bd = trunc i32 %i.bc to i8
  %i.be = mul nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.be ; 3 uses
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !76
  %i.bg = lshr i32 %i.ba, 2
  %i.bh = shl i32 %i.an, 1
  %i.bi = sub i32 4, %i.bh
  %i.bj = and i32 %i.bi, 254
  %i.bk = or i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.ap, 4
  %i.bm = sub i32 32, %i.bl
  %i.bn = or i32 %i.bk, %i.bm
  %i.bo = and i32 %i.as, 255                      ; 2 uses
  %i.bp = shl nuw nsw i32 %i.bo, 7
  %i.bq = or i32 %i.bn, %i.bp
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !76
  %i.bt = lshr i32 %i.bo, 1
  %i.bu = shl i32 %i.au, 2
  %i.bv = sub i32 8, %i.bu
  %i.bw = or i32 %i.bt, %i.bv
  %i.bx = shl i32 %i.aw, 5
  %i.by = sub i32 64, %i.bx
  %i.bz = or i32 %i.bw, %i.by
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !76
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %mldsa87_polyeta_pack.exit.i.i, label %bb.c, !llvm.loop !2150

mldsa87_polyeta_pack.exit.i.i:                    ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 7
  br i1 %exitcond.not.i.i, label %bb.d, label %bb.b, !llvm.loop !2151

bb.d:                                             ; preds = %mldsa87_polyeta_pack.exit.i.i
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %5)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.n)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.o)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.p)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.q)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.r)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull readonly align 32 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 1568
  call fastcc void @mld_compute_pack_t0_t187(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd, ptr noundef %5, ptr noundef %6, ptr noundef %i.a)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %3, i8 0, i64 200, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i64 0, ptr %i.cf, align 8, !tbaa !444
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 393
  store i8 0, ptr %i.cg, align 1, !tbaa !445
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i64 136, ptr %i.ch, align 8, !tbaa !446
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 0, ptr %i.ci, align 8, !tbaa !447
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 392
  store i8 31, ptr %i.cj, align 8, !tbaa !448
  %i.ck = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %3, ptr noundef nonnull readonly %0, i64 noundef 2592)
  %.not6.i.i50 = icmp eq i32 %i.ck, 0
  br i1 %.not6.i.i50, label %mld_shake256.exit52, label %SHAKE_Absorb.exit.thread9.i.i51

SHAKE_Absorb.exit.thread9.i.i51:                  ; preds = %bb.d
  %i.cl = call i32 @SHAKE_Final(ptr noundef nonnull %i.c, ptr noundef nonnull %3, i64 noundef 64) ; 0 uses
  br label %mld_shake256.exit52

mld_shake256.exit52:                              ; preds = %bb.d, %SHAKE_Absorb.exit.thread9.i.i51
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 32 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cm, ptr noundef nonnull readonly align 32 dereferenceable(32) %i.ce, i64 32, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cn, ptr noundef nonnull readonly align 32 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 800
  br label %bb.e

bb.e:                                             ; preds = %mldsa87_polyeta_pack.exit.i.i58, %mld_shake256.exit52
  %indvars.iv.i.i53 = phi i64 [ 0, %mld_shake256.exit52 ], [ %indvars.iv.next.i.i59, %mldsa87_polyeta_pack.exit.i.i58 ] ; 3 uses
  %i.cp = mul nuw nsw i64 %indvars.iv.i.i53, 96
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [1024 x i8], ptr %6, i64 %indvars.iv.i.i53
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i.i.i54 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.i.i56, %bb.f ] ; 3 uses
  %.idx.i.i.i55 = shl nuw nsw i64 %indvars.iv.i.i.i54, 5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i.i.i55 ; 8 uses
  %i.ct = load i32, ptr %i.cs, align 32, !tbaa !73
  %i.cu = sub i32 2, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !73
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !73
  %i.cz = sub i32 2, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !73
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dd = load i32, ptr %i.dc, align 16, !tbaa !73
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !73
  %i.dg = sub i32 2, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !73
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !73
  %i.dl = shl i32 %i.cw, 3
  %i.dm = sub i32 16, %i.dl
  %i.dn = or i32 %i.dm, %i.cu
  %i.do = and i32 %i.cz, 255                      ; 2 uses
  %i.dp = shl nuw nsw i32 %i.do, 6
  %i.dq = or i32 %i.dn, %i.dp
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = mul nuw nsw i64 %indvars.iv.i.i.i54, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ds ; 3 uses
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !76
  %i.du = lshr i32 %i.do, 2
  %i.dv = shl i32 %i.db, 1
  %i.dw = sub i32 4, %i.dv
  %i.dx = and i32 %i.dw, 254
  %i.dy = or i32 %i.dx, %i.du
  %i.dz = shl i32 %i.dd, 4
  %i.ea = sub i32 32, %i.dz
  %i.eb = or i32 %i.dy, %i.ea
  %i.ec = and i32 %i.dg, 255                      ; 2 uses
  %i.ed = shl nuw nsw i32 %i.ec, 7
  %i.ee = or i32 %i.eb, %i.ed
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !76
  %i.eh = lshr i32 %i.ec, 1
  %i.ei = shl i32 %i.di, 2
  %i.ej = sub i32 8, %i.ei
  %i.ek = or i32 %i.eh, %i.ej
  %i.el = shl i32 %i.dk, 5
  %i.em = sub i32 64, %i.el
  %i.en = or i32 %i.ek, %i.em
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !76
  %indvars.iv.next.i.i.i56 = add nuw nsw i64 %indvars.iv.i.i.i54, 1 ; 2 uses
  %exitcond.not.i.i.i57 = icmp eq i64 %indvars.iv.next.i.i.i56, 32
  br i1 %exitcond.not.i.i.i57, label %mldsa87_polyeta_pack.exit.i.i58, label %bb.f, !llvm.loop !2150

mldsa87_polyeta_pack.exit.i.i58:                  ; preds = %bb.f
  %indvars.iv.next.i.i59 = add nuw nsw i64 %indvars.iv.i.i53, 1 ; 2 uses
  %exitcond.not.i.i60 = icmp eq i64 %indvars.iv.next.i.i59, 8
  br i1 %exitcond.not.i.i60, label %mldsa87_pack_sk_rho_key_tr_s2.exit, label %bb.e, !llvm.loop !2152

mldsa87_pack_sk_rho_key_tr_s2.exit:               ; preds = %mldsa87_polyeta_pack.exit.i.i58
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef 8192) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 7168) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 34) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 128) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_87_pack_pk_from_sk(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 6 uses
  %i.b = alloca [64 x i8], align 32               ; 8 uses
  %i.c = alloca [64 x i8], align 32               ; 8 uses
  %i.d = alloca [32 x i8], align 32               ; 4 uses
  %3 = alloca [1 x %struct.mld_polyvecl87], align 32 ; 13 uses
  %4 = alloca [1 x %struct.mld_polyveck87], align 32 ; 13 uses
  %i.e = alloca [3328 x i8], align 32             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.g, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1024 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.i, ptr noundef nonnull readonly %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2048 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.k, ptr noundef nonnull readonly %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 3072 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 416
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.m, ptr noundef nonnull readonly %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4096 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 512
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.o, ptr noundef nonnull readonly %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 5120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 608
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.q, ptr noundef nonnull readonly %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 6144 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 704
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.s, ptr noundef nonnull readonly %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 800
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 896
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.v, ptr noundef nonnull readonly %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 2048
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 992
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.x, ptr noundef nonnull readonly %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 3072
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1088
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.z, ptr noundef nonnull readonly %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4096
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.ab, ptr noundef nonnull readonly %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 5120
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1280
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.ad, ptr noundef nonnull readonly %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 6144
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1376
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.af, ptr noundef nonnull readonly %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 7168
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1472
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.ah, ptr noundef nonnull readonly %i.ai)
  %i.aj = call fastcc i32 @mldsa87_polyvecl_chknorm(ptr noundef %3, i32 noundef 3)
  br label %bb.b

bb.b:                                             ; preds = %mldsa_poly_chknorm.exit.i.i, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i, %mldsa_poly_chknorm.exit.i.i ] ; 2 uses
  %.08.i.i = phi i32 [ 0, %bb.a ], [ %i.bk, %mldsa_poly_chknorm.exit.i.i ]
  %i.ak = getelementptr inbounds nuw [1024 x i8], ptr %4, i64 %indvars.iv.i.i ; 2 uses
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.am = and i32 %i.al, 32
  %.not.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, label %mld_poly_chknorm_native.exit.i.i.i

mld_poly_chknorm_native.exit.thread.i.i.i.preheader: ; preds = %mld_poly_chknorm_native.exit.i.i.i, %bb.b
  br label %mld_poly_chknorm_native.exit.thread.i.i.i

mld_poly_chknorm_native.exit.i.i.i:               ; preds = %bb.b
  %i.an = call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.ak, i32 noundef range(i32 3, 524169) 3) #46 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.an, -1
  br i1 %.not.i.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %mld_poly_chknorm_native.exit.i.i.i
  %i.ao = zext i32 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ap) #46, !srcloc !449
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  br label %mldsa_poly_chknorm.exit.i.i

mld_poly_chknorm_native.exit.thread.i.i.i:        ; preds = %mld_poly_chknorm_native.exit.thread.i.i.i.preheader, %mld_poly_chknorm_native.exit.thread.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %mld_poly_chknorm_native.exit.thread.i.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.i.i.preheader ] ; 2 uses
  %.08.i.i.i.i = phi i32 [ %i.bj, %mld_poly_chknorm_native.exit.thread.i.i.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.i.i.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !73 ; 4 uses
  %i.av = sub nsw i32 0, %i.au
  %i.aw = sext i32 %i.au to i64
  %i.ax = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.aw) #46, !srcloc !449
  %i.ay = lshr i64 %i.ax, 31
  %i.az = trunc i64 %i.ay to i32
  %i.ba = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.az) #46, !srcloc !450
  %i.bb = xor i32 %i.au, %i.av
  %i.bc = and i32 %i.ba, %i.bb
  %i.bd = xor i32 %i.bc, %i.au
  %i.be = sub i32 2, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.bf) #46, !srcloc !449
  %i.bh = lshr i64 %i.bg, 31
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = or i32 %.08.i.i.i.i, %i.bi              ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 256
  br i1 %exitcond.not.i.i.i.i, label %mldsa_poly_chknorm.exit.i.i, label %mld_poly_chknorm_native.exit.thread.i.i.i, !llvm.loop !32

mldsa_poly_chknorm.exit.i.i:                      ; preds = %mld_poly_chknorm_native.exit.thread.i.i.i, %bb.c
  %.0.i.i.i = phi i32 [ %i.as, %bb.c ], [ %i.bj, %mld_poly_chknorm_native.exit.thread.i.i.i ]
  %i.bk = or i32 %.0.i.i.i, %.08.i.i              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 8
  br i1 %exitcond.not.i.i, label %mldsa87_polyveck_chknorm.exit.i, label %bb.b, !llvm.loop !2153

mldsa87_polyveck_chknorm.exit.i:                  ; preds = %mldsa_poly_chknorm.exit.i.i
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %3)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.i)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.k)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.m)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.o)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.q)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull readonly align 32 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  call fastcc void @mld_compute_pack_t0_t187(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef %4, ptr noundef %i.a)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %mldsa87_polyveck_chknorm.exit.i
  %index = phi i64 [ 0, %mldsa87_polyveck_chknorm.exit.i ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %mldsa87_polyveck_chknorm.exit.i ], [ %i.cf, %vector.body ]
  %vec.phi22 = phi <16 x i8> [ zeroinitializer, %mldsa87_polyveck_chknorm.exit.i ], [ %i.cg, %vector.body ]
  %vec.phi23 = phi <16 x i8> [ zeroinitializer, %mldsa87_polyveck_chknorm.exit.i ], [ %i.cd, %vector.body ]
  %vec.phi24 = phi <16 x i8> [ zeroinitializer, %mldsa87_polyveck_chknorm.exit.i ], [ %i.ce, %vector.body ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <16 x i8>, ptr %i.bn, align 32, !tbaa !76
  %wide.load25 = load <16 x i8>, ptr %i.bo, align 16, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load26 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !76
  %wide.load27 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !76
  %i.br = xor <16 x i8> %wide.load26, %wide.load  ; 2 uses
  %i.bs = xor <16 x i8> %wide.load27, %wide.load25 ; 2 uses
  %i.bt = or <16 x i8> %i.br, %vec.phi23
  %i.bu = or <16 x i8> %i.bs, %vec.phi24
  %i.bv = xor <16 x i8> %i.br, %vec.phi
  %i.bw = xor <16 x i8> %i.bs, %vec.phi22
  %index.next = or disjoint i64 %index, 32        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 %index.next ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.bx, align 32, !tbaa !76
  %wide.load25.1 = load <16 x i8>, ptr %i.by, align 16, !tbaa !76
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index.next ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load26.1 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !76
  %wide.load27.1 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !76
  %i.cb = xor <16 x i8> %wide.load26.1, %wide.load.1 ; 2 uses
  %i.cc = xor <16 x i8> %wide.load27.1, %wide.load25.1 ; 2 uses
  %i.cd = or <16 x i8> %i.cb, %i.bt               ; 2 uses
  %i.ce = or <16 x i8> %i.cc, %i.bu               ; 2 uses
  %i.cf = xor <16 x i8> %i.cb, %i.bv              ; 2 uses
  %i.cg = xor <16 x i8> %i.cc, %i.bw              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 64      ; 2 uses
  %i.ch = icmp eq i64 %index.next.1, 3328
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !2154

middle.block:                                     ; preds = %vector.body
  %bin.rdx28 = or <16 x i8> %i.ce, %i.cd
  %i.ci = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx28)
  %bin.rdx = xor <16 x i8> %i.cg, %i.cf
  %i.cj = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx) ; 2 uses
  %i.ck = zext i8 %i.ci to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.cl) #46, !srcloc !449
  %i.cn = lshr i64 %i.cm, 32
  %i.co = trunc i64 %i.cn to i8
  %i.cp = xor i8 %i.cj, %i.co
  %i.cq = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.cp) #46, !srcloc !451
  %i.cr = xor i8 %i.cq, %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, i8 0, i64 200, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 0, ptr %i.cs, align 8, !tbaa !444
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 393
  store i8 0, ptr %i.ct, align 1, !tbaa !445
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 136, ptr %i.cu, align 8, !tbaa !446
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 0, ptr %i.cv, align 8, !tbaa !447
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i8 31, ptr %i.cw, align 8, !tbaa !448
  %i.cx = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %2, ptr noundef nonnull readonly %0, i64 noundef 2592)
  %.not6.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not6.i.i.i, label %mld_shake256.exit.i, label %SHAKE_Absorb.exit.thread9.i.i.i

SHAKE_Absorb.exit.thread9.i.i.i:                  ; preds = %middle.block
  %i.cy = call i32 @SHAKE_Final(ptr noundef nonnull %i.c, ptr noundef nonnull %2, i64 noundef 64) ; 0 uses
  br label %mld_shake256.exit.i

mld_shake256.exit.i:                              ; preds = %SHAKE_Absorb.exit.thread9.i.i.i, %middle.block
  call void @OPENSSL_cleanse(ptr noundef nonnull %2, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load36 = load <16 x i8>, ptr %i.b, align 32, !tbaa !76
  %wide.load37 = load <16 x i8>, ptr %i.cz, align 16, !tbaa !76
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load38 = load <16 x i8>, ptr %i.c, align 32, !tbaa !76
  %wide.load39 = load <16 x i8>, ptr %i.da, align 16, !tbaa !76
  %i.db = xor <16 x i8> %wide.load38, %wide.load36 ; 2 uses
  %i.dc = xor <16 x i8> %wide.load39, %wide.load37 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load36.1 = load <16 x i8>, ptr %i.dd, align 32, !tbaa !76
  %wide.load37.1 = load <16 x i8>, ptr %i.de, align 16, !tbaa !76
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %wide.load38.1 = load <16 x i8>, ptr %i.df, align 32, !tbaa !76
  %wide.load39.1 = load <16 x i8>, ptr %i.dg, align 16, !tbaa !76
  %i.dh = xor <16 x i8> %wide.load38.1, %wide.load36.1 ; 2 uses
  %i.di = xor <16 x i8> %wide.load39.1, %wide.load37.1 ; 2 uses
  %i.dj = or <16 x i8> %i.dh, %i.db
  %i.dk = xor <16 x i8> %i.dh, %i.db
  %i.dl = or <16 x i8> %i.dc, %i.dj
  %bin.rdx43 = or <16 x i8> %i.dl, %i.di
  %i.dm = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx43)
  %i.dn = xor <16 x i8> %i.dc, %i.dk
  %bin.rdx42 = xor <16 x i8> %i.dn, %i.di
  %i.do = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx42) ; 2 uses
  %i.dp = zext i8 %i.dm to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.dq) #46, !srcloc !449
  %i.ds = lshr i64 %i.dr, 32
  %i.dt = trunc i64 %i.ds to i8
  %i.du = xor i8 %i.do, %i.dt
  %i.dv = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.du) #46, !srcloc !451
  %i.dw = xor i8 %i.dv, %i.do
  %i.dx = or i32 %i.bk, %i.aj
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = or i8 %i.cr, %i.dy
  %i.ea = or i8 %i.dz, %i.dw
  %i.eb = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ea) #46, !srcloc !451
  %.not.i = icmp eq i8 %i.eb, 0                   ; 2 uses
  br i1 %.not.i, label %mldsa87_pk_from_sk.exit, label %bb.d

bb.d:                                             ; preds = %mld_shake256.exit.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 2592) #46
  br label %mldsa87_pk_from_sk.exit

mldsa87_pk_from_sk.exit:                          ; preds = %mld_shake256.exit.i, %bb.d
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 3328) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 8192) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 7168) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.ec = zext i1 %.not.i to i32
  ret i32 %i.ec
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_87_keypair_internal(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  tail call fastcc void @mldsa87_keypair_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @ml_dsa_87_sign(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca [332 x i8], align 32              ; 7 uses
  %i.b = alloca [32 x i8], align 32               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.c = icmp ugt i64 %6, 255
  br i1 %i.c, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 32, !tbaa !76
  %i.d = trunc nuw i64 %6 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !76
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(1) %5, i64 range(i64 1, 256) %6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nuw nsw i64 %6, 2
  call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.h = call fastcc i32 @mldsa87_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef %4, ptr noundef nonnull %i.a, i64 noundef %i.g, ptr noundef nonnull %i.b, ptr noundef readonly %0, i32 noundef 0)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %mldsa87_signature.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.a
  call void @OPENSSL_cleanse(ptr noundef %1, i64 noundef 4627) #46
  br label %mldsa87_signature.exit

mldsa87_signature.exit:                           ; preds = %bb.d, %.thread.i
  %i.i = phi i1 [ true, %bb.d ], [ false, %.thread.i ] ; 2 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 32) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 332) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %spec.select11 = select i1 %i.i, i64 4627, i64 0
  store i64 %spec.select11, ptr %2, align 8, !tbaa !80
  %spec.select = zext i1 %i.i to i32
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_extmu_87_sign(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 5 uses
  %i.b = icmp eq i64 %4, 64
  br i1 %i.b, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @rand_bytes_impl(i32 noundef 5, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @RAND_bytes.kZeroPredResistance, i32 noundef 0)
  %i.c = call fastcc i32 @mldsa87_signature_internal(ptr noundef %1, ptr noundef readonly %3, i64 noundef 64, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef readonly %0, i32 noundef 1)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = select i1 %i.d, i64 4627, i64 0
  %spec.select = zext i1 %i.d to i32
  br label %.split

.split:                                           ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %phi.call = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %2, align 8, !tbaa !80
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_dsa_87_sign_internal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mldsa87_signature_internal(ptr noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %0, i32 noundef 0)
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = select i1 %i.b, i64 4627, i64 0
  store i64 %i.c, ptr %2, align 8, !tbaa !80
  %i.d = zext i1 %i.b to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @mldsa87_signature_internal(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.keccak_ctx_st, align 8      ; 12 uses
  %i.a = alloca [64 x i8], align 32               ; 6 uses
  %9 = alloca [1 x %struct.mld_yvec_eager87], align 32 ; 12 uses
  %10 = alloca [1 x %struct.mld_poly], align 32   ; 23 uses
  %11 = alloca [1 x %union.w1tmp_u.17], align 32  ; 18 uses
  %12 = alloca [1 x %struct.mld_polyveck87], align 32 ; 17 uses
  %13 = alloca [1 x %struct.mld_poly], align 32   ; 14 uses
  %14 = alloca [1 x %struct.mld_poly], align 32   ; 14 uses
  %15 = alloca %struct.keccak_ctx_st, align 8     ; 13 uses
  %16 = alloca %struct.keccak_ctx_st, align 8     ; 13 uses
  %i.b = alloca [256 x i8], align 32              ; 9 uses
  %17 = alloca [1 x %struct.mld_polymat_eager87], align 32 ; 5 uses
  %18 = alloca [1 x %struct.mld_sk_s1hat_eager87], align 32 ; 12 uses
  %19 = alloca [1 x %struct.mld_sk_t0hat_eager87], align 32 ; 13 uses
  %20 = alloca [1 x %struct.mld_sk_s2hat_eager87], align 32 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %6, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.h, i64 64, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 128
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef nonnull %18, ptr noundef nonnull readonly %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 1024 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 224
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.j, ptr noundef nonnull readonly %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 2048 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 320
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.l, ptr noundef nonnull readonly %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 3072 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 416
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.n, ptr noundef nonnull readonly %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 4096 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 512
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.p, ptr noundef nonnull readonly %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %18, i64 5120 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 608
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.r, ptr noundef nonnull readonly %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 6144 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 704
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.t, ptr noundef nonnull readonly %i.u)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %18)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.j)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.l)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.n)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.p)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.r)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 800
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef nonnull %20, ptr noundef nonnull readonly %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 1024 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 896
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.w, ptr noundef nonnull readonly %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %20, i64 2048 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 992
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.y, ptr noundef nonnull readonly %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %20, i64 3072 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 1088
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.aa, ptr noundef nonnull readonly %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %20, i64 4096 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 1184
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.ac, ptr noundef nonnull readonly %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 5120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 1280
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.ae, ptr noundef nonnull readonly %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 6144 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 1376
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.ag, ptr noundef nonnull readonly %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 7168 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 1472
  call fastcc void @mldsa87_polyeta_unpack(ptr noundef %i.ai, ptr noundef nonnull readonly %i.aj)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %20)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.w)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.y)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.aa)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ac)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ae)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ag)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 1568
  call fastcc void @mldsa_polyt0_unpack(ptr noundef nonnull %19, ptr noundef nonnull readonly %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %19, i64 1024 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 1984
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.al, ptr noundef nonnull readonly %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 2048 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 2400
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.an, ptr noundef nonnull readonly %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 3072 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 2816
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ap, ptr noundef nonnull readonly %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 4096 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 3232
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ar, ptr noundef nonnull readonly %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 5120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 3648
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.at, ptr noundef nonnull readonly %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 6144 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4064
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.av, ptr noundef nonnull readonly %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 7168 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 4480
  call fastcc void @mldsa_polyt0_unpack(ptr noundef %i.ax, ptr noundef nonnull readonly %i.ay)
  call fastcc void @mldsa_poly_ntt(ptr noundef nonnull %19)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.al)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.an)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ap)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.ar)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.at)
  call fastcc void @mldsa_poly_ntt(ptr noundef %i.av)
end_hunk_5
begin_hunk_6_@RSA_generate_key_ex_maybe_fips:bb.a
  br i1 %i.mz, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.na = load ptr, ptr %i.mu, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.na) #46
  %.pre.i.i91 = load i32, ptr %i.mw, align 4, !tbaa !95
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.nb = phi i32 [ %.pre.i.i91, %bb.dc ], [ %i.mx, %bb.db ]
  %i.nc = and i32 %i.nb, 1
  %.not.i.i90 = icmp eq i32 %i.nc, 0
  br i1 %.not.i.i90, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @OPENSSL_free(ptr noundef nonnull %i.mu) #46
  br label %replace_bignum.exit92

bb.df:                                            ; preds = %bb.dd
  store ptr null, ptr %i.mu, align 8, !tbaa !92
  br label %replace_bignum.exit92

replace_bignum.exit92:                            ; preds = %replace_bignum.exit89, %bb.de, %bb.df
  %i.nd = load ptr, ptr %i.mt, align 8, !tbaa !119
  store ptr %i.nd, ptr %i.ms, align 8, !tbaa !119
  store ptr null, ptr %i.mt, align 8, !tbaa !119
  %i.ne = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.nf = load i8, ptr %i.ne, align 8
  %i.ng = and i8 %i.nf, 1
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 8
  %i.nj = and i8 %i.ni, -2
  %i.nk = or disjoint i8 %i.nj, %i.ng
  store i8 %i.nk, ptr %i.nh, align 8
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %rsa_generate_key_impl.exit.thread, %.split, %.split.us, %rsa_generate_key_impl.exit.thread.us, %replace_bignum.exit92, %bb.aw
  %.1.sink = phi ptr [ %i.r, %bb.aw ], [ %i.r, %replace_bignum.exit92 ], [ null, %.split.us ], [ null, %rsa_generate_key_impl.exit.thread.us ], [ null, %.split ], [ null, %rsa_generate_key_impl.exit.thread ]
  %.052 = phi i32 [ 0, %bb.aw ], [ 1, %replace_bignum.exit92 ], [ 0, %.split.us ], [ 0, %rsa_generate_key_impl.exit.thread.us ], [ 0, %.split ], [ 0, %rsa_generate_key_impl.exit.thread ]
  tail call void @RSA_free(ptr noundef %.1.sink)
  ret i32 %.052
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_generate_key_fips(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 2047
  %i.b = and i32 %1, 127
  %.not = icmp eq i32 %i.b, 0
  %or.cond = and i1 %i.a, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 104, ptr noundef nonnull @.str.52, i32 noundef 1235) #46
  br label %BN_free.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 14 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %BN_free.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  store i32 1, ptr %i.e, align 4, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.e, label %.bn_wexpand.exit_crit_edge.i

.bn_wexpand.exit_crit_edge.i:                     ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @OPENSSL_calloc(i64 noundef 1, i64 noundef 8) #46 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %BN_set_word.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %OPENSSL_memcpy.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %i.o, i64 %i.n, i1 false)
  br label %OPENSSL_memcpy.exit.i.i

OPENSSL_memcpy.exit.i.i:                          ; preds = %bb.g, %bb.f
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.p) #46
  store ptr %i.h, ptr %i.c, align 8, !tbaa !92
  store i32 1, ptr %i.f, align 4, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %OPENSSL_memcpy.exit.i.i, %.bn_wexpand.exit_crit_edge.i
  %i.q = phi ptr [ %.pre.i, %.bn_wexpand.exit_crit_edge.i ], [ %i.h, %OPENSSL_memcpy.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !91
  store i64 65537, ptr %i.q, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !93
  %i.t = tail call fastcc i32 @RSA_generate_key_ex_maybe_fips(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef %2, i32 noundef 1)
  br label %BN_set_word.exit.thread

BN_set_word.exit.thread:                          ; preds = %bb.e, %bb.h
  %.ph = phi i32 [ %i.t, %bb.h ], [ 0, %bb.e ]    ; 2 uses
  %i.u = load i32, ptr %i.e, align 4, !tbaa !95   ; 2 uses
  %i.v = and i32 %i.u, 2
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %BN_set_word.exit.thread
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.x) #46
  %.pre.i15 = load i32, ptr %i.e, align 4, !tbaa !95
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %BN_set_word.exit.thread
  %i.y = phi i32 [ %.pre.i15, %bb.i ], [ %i.u, %BN_set_word.exit.thread ]
  %i.z = and i32 %i.y, 1
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %.split, label %BN_free.exit

.split:                                           ; preds = %bb.j
  store ptr null, ptr %i.c, align 8, !tbaa !92
  br label %BN_free.exit.thread

BN_free.exit:                                     ; preds = %bb.j
  tail call void @OPENSSL_free(ptr noundef nonnull %i.c) #46
  br label %BN_free.exit.thread

BN_free.exit.thread:                              ; preds = %bb.c, %.split, %BN_free.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.ph, %.split ], [ %.ph, %BN_free.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RSA_get_default_method_init() #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) @RSA_get_default_method_storage, i8 0, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @FIPS_mode() local_unnamed_addr #17 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @FIPS_is_entropy_cpu_jitter() local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_STATIC_MUTEX_lock_read(ptr noundef nonnull @global_entropy_source_lock) #46
  %.b.i.i = load i1, ptr @allow_entropy_source_methods_override, align 4
  br i1 %.b.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @entropy_source_methods_override, align 8, !tbaa !496
  br label %get_entropy_source_method_id_FOR_TESTING.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @CRYPTO_get_vm_ube_supported() #46
  %.not.i.i = icmp eq i32 %i.b, 1
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_once(ptr noundef nonnull @opt_out_cpu_jitter_entropy_source_methods_once, ptr noundef nonnull @opt_out_cpu_jitter_entropy_source_methods_init) #46
  br label %get_entropy_source_method_id_FOR_TESTING.exit

bb.e:                                             ; preds = %bb.c
  tail call void @CRYPTO_once(ptr noundef nonnull @tree_jitter_entropy_source_methods_once, ptr noundef nonnull @tree_jitter_entropy_source_methods_init) #46
  br label %get_entropy_source_method_id_FOR_TESTING.exit

get_entropy_source_method_id_FOR_TESTING.exit:    ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.a, %bb.b ], [ @opt_out_cpu_jitter_entropy_source_methods_storage, %bb.d ], [ @tree_jitter_entropy_source_methods_storage, %bb.e ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !499
  tail call void @CRYPTO_STATIC_MUTEX_unlock_read(ptr noundef nonnull @global_entropy_source_lock) #46
  %i.e = icmp ne i32 %i.d, 2
  %. = zext i1 %i.e to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @FIPS_version() local_unnamed_addr #17 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @FIPS_module_name() local_unnamed_addr #17 {
bb.a:
  ret ptr @.str.53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @FIPS_mode_set(i32 noundef %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: noinline nounwind uwtable
define hidden range(i32 0, 2) i32 @boringssl_self_test_sha256() local_unnamed_addr #32 {
bb.a:
  %0 = alloca %struct.sha256_state_st, align 16   ; 9 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.b, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 16, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.c, align 16, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 32, ptr %i.d, align 4, !tbaa !288
  %i.e = call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef nonnull @boringssl_self_test_sha256.kInput, i64 noundef 16) ; 0 uses
  %i.f = call fastcc range(i32 0, 2) i32 @sha256_final_impl(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %0) ; 0 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 112) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  %i.g = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_sha256.kPlaintextSHA256, ptr noundef %i.a, i64 noundef 32, ptr noundef nonnull @.str.54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_test(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 16, 2561) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5120 x i8], align 16             ; 5 uses
  %i.b = alloca [5120 x i8], align 16             ; 5 uses
  %i.c = alloca [10315 x i8], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(5120) %i.a, i8 0, i64 5120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(5120) %i.b, i8 0, i64 5120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10315) %i.c, i8 0, i64 10315, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.018.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.01517.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.d = add nsw i64 %.01517.i.i, -1              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !76    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.h = load i8, ptr %i.g, align 1, !tbaa !76    ; 2 uses
  %i.i = zext i8 %i.f to i64
  %i.j = zext i8 %i.h to i64
  %i.k = icmp eq i8 %i.f, %i.h
  %.neg.i.i.i.i = sext i1 %i.k to i64             ; 2 uses
  %i.l = xor i64 %.neg.i.i.i.i, -1
  %i.m = sub nsw i64 %i.i, %i.j
  %i.n = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.l) #47, !srcloc !81
  %i.o = and i64 %i.m, %i.n
  %i.p = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #47, !srcloc !81
  %i.q = and i64 %i.p, %.018.i.i
  %i.r = or i64 %i.q, %i.o                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %OPENSSL_memcmp.exit.i, label %.lr.ph.i.i, !llvm.loop !20

OPENSSL_memcmp.exit.i:                            ; preds = %.lr.ph.i.i
  %i.s = and i64 %i.r, 4294967295
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %check_test_optional_abort.exit, label %.preheader.i

.preheader.i:                                     ; preds = %OPENSSL_memcmp.exit.i, %.preheader.i
  %.010.i.i = phi i64 [ %i.ab, %.preheader.i ], [ 0, %OPENSSL_memcmp.exit.i ] ; 2 uses
  %.089.i.i = phi i64 [ %i.aa, %.preheader.i ], [ 0, %OPENSSL_memcmp.exit.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.089.i.i
  %i.u = sub i64 5120, %.089.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.010.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !76
  %i.x = zext i8 %i.w to i32
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.126, i32 noundef %i.x) #46
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %.089.i.i, %i.z
  %i.ab = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not.i.i, label %hexdump.exit.i, label %.preheader.i, !llvm.loop !2389

hexdump.exit.i:                                   ; preds = %.preheader.i, %hexdump.exit.i
  %.010.i9.i = phi i64 [ %i.ak, %hexdump.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %.089.i10.i = phi i64 [ %i.aj, %hexdump.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %.089.i10.i
  %i.ad = sub i64 5120, %.089.i10.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i9.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !76
  %i.ag = zext i8 %i.af to i32
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.126, i32 noundef %i.ag) #46
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add i64 %.089.i10.i, %i.ai
  %i.ak = add nuw nsw i64 %.010.i9.i, 1           ; 2 uses
  %exitcond.not.i11.i = icmp eq i64 %i.ak, %2
  br i1 %exitcond.not.i11.i, label %hexdump.exit12.i, label %hexdump.exit.i, !llvm.loop !2389

hexdump.exit12.i:                                 ; preds = %hexdump.exit.i
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 10315, ptr noundef nonnull @.str.124, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #46 ; 0 uses
  call void @AWS_LC_FIPS_failure(ptr noundef nonnull %i.c)
  br label %check_test_optional_abort.exit

check_test_optional_abort.exit:                   ; preds = %OPENSSL_memcmp.exit.i, %hexdump.exit12.i
  %.0.i = phi i32 [ 0, %hexdump.exit12.i ], [ 1, %OPENSSL_memcmp.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.0.i
}

; Function Attrs: noinline nounwind uwtable
define hidden range(i32 0, 2) i32 @boringssl_self_test_hmac_sha256() local_unnamed_addr #32 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i32 0, ptr %i.b, align 4, !tbaa !73
  tail call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.c = call ptr @HMAC(ptr noundef nonnull @EVP_sha256_storage, ptr noundef nonnull @boringssl_self_test_hmac_sha256.kInput, i64 noundef 16, ptr noundef nonnull @boringssl_self_test_hmac_sha256.kInput, i64 noundef 16, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !73
  %i.e = icmp eq i32 %i.d, 32
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_hmac_sha256.kPlaintextHMACSHA256, ptr noundef %i.a, i64 noundef 32, ptr noundef nonnull @.str.55)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BORINGSSL_self_test() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @boringssl_self_test_fast()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @boringssl_self_test_rsa()
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @boringssl_self_test_ecc()
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @boringssl_self_test_ffdh()
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call fastcc i32 @boringssl_self_test_ml_kem()
  %.not4 = icmp eq i32 %i.e, 0
  br i1 %.not4, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call fastcc i32 @boringssl_self_test_ml_dsa()
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call fastcc i32 @boringssl_self_test_eddsa()
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call fastcc i32 @boringssl_self_test_hasheddsa()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @boringssl_self_test_fast() unnamed_addr #33 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.b = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.c = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.d = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %0 = alloca %struct.evp_aead_ctx_st, align 8    ; 11 uses
  %1 = alloca %struct.aes_key_st, align 16        ; 28 uses
  %i.g = alloca [16 x i8], align 16               ; 8 uses
  %i.h = alloca [256 x i8], align 16              ; 26 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %i.j = alloca [24 x i8], align 16               ; 3 uses
  %2 = alloca %struct.ctr_drbg_state_st, align 8  ; 6 uses
end_hunk_6
