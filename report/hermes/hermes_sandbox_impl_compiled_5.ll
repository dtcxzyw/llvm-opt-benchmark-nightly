Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringToBigInt0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
.lr.ph3717:                                       ; preds = %.preheader3597.preheader, %.preheader3597
  %i.gh = phi i32 [ %i.gg, %.preheader3597 ], [ %i.ge, %.preheader3597.preheader ]
  %indvars.iv.next36293716 = phi i64 [ %indvars.iv.next3629, %.preheader3597 ], [ %indvars.iv.next36293713, %.preheader3597.preheader ] ; 3 uses
  %.val3349 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val3349, i64 %indvars.iv.next36293716
  %.0.copyload.i3438 = load i8, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3438) #8, !srcloc !21
  %i.gj = zext i8 %.0.copyload.i3438 to i32       ; 2 uses
  %i.gk = and i32 %i.gj, 248
  %i.gl = icmp eq i32 %i.gk, 48
  br i1 %i.gl, label %.preheader3597, label %.loopexit3598

.loopexit3598:                                    ; preds = %.preheader3597, %.lr.ph3717, %.preheader3597.preheader, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.12854 = phi i32 [ %i.fo, %bb.ag ], [ %i.fo, %bb.ah ], [ %i.fw, %bb.ai ], [ %i.fw, %bb.aj ], [ %.32885, %.preheader3597.preheader ], [ %i.gh, %.lr.ph3717 ], [ %.32885, %.preheader3597 ] ; 2 uses
  %.val3260 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val3260, i64 %i.be
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 36
  %.0.copyload.i3439 = load i32, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3439) #8, !srcloc !19
  %.val3348 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val3348, i64 %i.bo
  %.0.copyload.i3440 = load i8, ptr %i.go, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3440) #8, !srcloc !21
  %i.gp = zext i8 %.0.copyload.i3440 to i32
  %.not30583591 = icmp slt i8 %.0.copyload.i3440, 0
  %i.gq = select i1 %.not30583591, i32 %.0.copyload.i3439, i32 %i.gp
  %.not3059 = icmp eq i32 %i.gq, 0
  br i1 %.not3059, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.ae, %bb.af, %.loopexit3598
  %.22855 = phi i32 [ %.12854, %.loopexit3598 ], [ %.22870, %bb.af ], [ %.22870, %bb.ae ] ; 3 uses
  %.not3060 = icmp ugt i32 %.32885, %.22855
  br i1 %.not3060, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.gr = zext i32 %.22855 to i64
  %.val3347 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val3347, i64 %i.gr
  %.0.copyload.i3441 = load i8, ptr %i.gs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3441) #8, !srcloc !21
  %i.gt = and i8 %.0.copyload.i3441, -33
  %.not3061 = icmp eq i8 %i.gt, 88
  br i1 %.not3061, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gu = add nuw i32 %.22855, 1
  %.val3172 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %.val3172, i64 %i.cg
  store i32 %i.gu, ptr %i.gv, align 1
  %.val3378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val3378, i64 %i.bj
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 79
  store i8 16, ptr %i.gx, align 1
  %i.gy = add i32 %i.bc, -2
  %i.gz = add i32 %i.bc, -40                      ; 2 uses
  tail call void @w2c_hermes_hermes0x3A0x3AOptValue0x3Cchar0x3E0x20hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3ABigIntLiteralParsingToolBox0x3Chermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AStringIntegerLiteralParser0x3Cllvh0x3A0x3AArrayRef0x3Cchar0x3E0x3E0x3E0x3A0x3AlookaheadAndEatIfAnyOf0x3C0x28char0x29480x2C0x200x28char0x29490x2C0x200x28char0x29500x2C0x200x28char0x29510x2C0x200x28char0x29520x2C0x200x28char0x29530x2C0x200x28char0x29540x2C0x200x28char0x29550x2C0x200x28char0x29560x2C0x200x28char0x29570x2C0x200x28char0x29650x2C0x200x28char0x29660x2C0x200x28char0x29670x2C0x200x28char0x29680x2C0x200x28char0x29690x2C0x200x28char0x29700x2C0x200x28char0x29970x2C0x200x28char0x29980x2C0x200x28char0x29990x2C0x200x28char0x291000x2C0x200x28char0x291010x2C0x200x28char0x291020x3E0x280x29(ptr noundef nonnull %0, i32 noundef %i.gy, i32 noundef %i.gz) #8
  %.val3346 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val3346, i64 %i.be
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 47
  %.0.copyload.i3442 = load i8, ptr %i.hb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3442) #8, !srcloc !21
  %.not3062 = icmp eq i8 %.0.copyload.i3442, 0
  br i1 %.not3062, label %.loopexit3596, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val3345 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val3345, i64 %i.be
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 46
  %.0.copyload.i3443 = load i8, ptr %i.hd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3443) #8, !srcloc !21
  %i.he = zext i8 %.0.copyload.i3443 to i32
  %i.hf = add i32 %i.bc, -4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.42886 = phi i32 [ %i.he, %bb.an ], [ %i.hl, %bb.ao ]
  %.val3259 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val3259, i64 %i.cj
  %.0.copyload.i3444 = load i32, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3444) #8, !srcloc !19
  %i.hh = shl i32 %.42886, 24
  %i.hi = ashr exact i32 %i.hh, 24
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3444, i32 noundef %i.hi) #8
  tail call void @w2c_hermes_hermes0x3A0x3AOptValue0x3Cchar0x3E0x20hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3ABigIntLiteralParsingToolBox0x3Chermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AStringIntegerLiteralParser0x3Cllvh0x3A0x3AArrayRef0x3Cchar0x3E0x3E0x3E0x3A0x3AlookaheadAndEatIfAnyOf0x3C0x28char0x29480x2C0x200x28char0x29490x2C0x200x28char0x29500x2C0x200x28char0x29510x2C0x200x28char0x29520x2C0x200x28char0x29530x2C0x200x28char0x29540x2C0x200x28char0x29550x2C0x200x28char0x29560x2C0x200x28char0x29570x2C0x200x28char0x29650x2C0x200x28char0x29660x2C0x200x28char0x29670x2C0x200x28char0x29680x2C0x200x28char0x29690x2C0x200x28char0x29700x2C0x200x28char0x29970x2C0x200x28char0x29980x2C0x200x28char0x29990x2C0x200x28char0x291000x2C0x200x28char0x291010x2C0x200x28char0x291020x3E0x280x29(ptr noundef nonnull %0, i32 noundef %i.hf, i32 noundef %i.gz) #8
  %.val3410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val3410, i64 %i.be
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 44
  %.0.copyload.i3445 = load i16, ptr %i.hk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3445) #8, !srcloc !24
  %i.hl = zext i16 %.0.copyload.i3445 to i32
  %i.hm = icmp ugt i16 %.0.copyload.i3445, 255
  br i1 %i.hm, label %bb.ao, label %.loopexit3596

.loopexit3596:                                    ; preds = %bb.ao, %bb.am
  %.val3258 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %.val3258, i64 %i.cj
  %.0.copyload.i3446 = load i32, ptr %i.hn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3446) #8, !srcloc !19
  %i.ho = zext i32 %.0.copyload.i3446 to i64      ; 2 uses
  %.val3257 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.val3257, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %.0.copyload.i3447 = load i32, ptr %i.hq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3447) #8, !srcloc !19
  %.val3344 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val3344, i64 %i.ho
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 11
  %.0.copyload.i3448 = load i8, ptr %i.hs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3448) #8, !srcloc !21
  %i.ht = zext i8 %.0.copyload.i3448 to i32
  %.not30643592 = icmp slt i8 %.0.copyload.i3448, 0
  %i.hu = select i1 %.not30643592, i32 %.0.copyload.i3447, i32 %i.ht
  %.not3065 = icmp eq i32 %i.hu, 0
  %.val3256 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val3256, i64 %i.ce
  %.0.copyload.i3449 = load i32, ptr %i.hv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3449) #8
  br i1 %.not3065, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.loopexit3596, %bb.al, %bb.ak
  %.52887 = phi i32 [ %.32885, %bb.ak ], [ %.32885, %bb.al ], [ %.0.copyload.i3449, %.loopexit3596 ]
  %.12850 = phi i32 [ %i.ci, %bb.ak ], [ %i.ci, %bb.al ], [ %.0.copyload.i3446, %.loopexit3596 ]
  %.val3171 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val3171, i64 %i.cg
  store i32 %.22859, ptr %i.hw, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.62888 = phi i32 [ %.52887, %bb.ap ], [ %.32885, %bb.w ] ; 11 uses
  %.22851 = phi i32 [ %.12850, %bb.ap ], [ %i.ci, %bb.w ] ; 4 uses
  %.not3069 = icmp ugt i32 %.62888, %.22859
  br i1 %.not3069, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %.val3343 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val3343, i64 %i.ed
  %.0.copyload.i3450 = load i8, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3450) #8, !srcloc !21
  switch i8 %.0.copyload.i3450, label %bb.ay [
    i8 43, label %bb.ax
    i8 45, label %bb.ax
  ]

bb.as:                                            ; preds = %.loopexit3596
  %.val3254 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val3254, i64 %i.cg
  %.0.copyload.i3452 = load i32, ptr %i.hy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3452) #8, !srcloc !19
  br label %bb.at

bb.at:                                            ; preds = %.loopexit3598, %bb.ad, %bb.as
  %.72889 = phi i32 [ %.0.copyload.i3449, %bb.as ], [ %.32885, %bb.ad ], [ %.32885, %.loopexit3598 ]
  %.42872 = phi i32 [ %.0.copyload.i3452, %bb.as ], [ %.12869, %bb.ad ], [ %.12854, %.loopexit3598 ] ; 2 uses
  %.not3066 = icmp ugt i32 %.72889, %.42872
  br i1 %.not3066, label %bb.au, label %bb.bs

bb.au:                                            ; preds = %bb.at
  %i.hz = zext i32 %.42872 to i64
  %.val3342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val3342, i64 %i.hz
  %.0.copyload.i3453 = load i8, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3453) #8, !srcloc !21
  %.not3067 = icmp eq i8 %.0.copyload.i3453, 0
  br i1 %.not3067, label %bb.bs, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val3253 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %.val3253, i64 %i.bs
  %.0.copyload.i3454 = load i32, ptr %i.ib, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3454) #8, !srcloc !19
  %.not3068 = icmp eq i32 %.0.copyload.i3454, 0
  br i1 %.not3068, label %bb.bq, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fassign_external0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3454, i32 noundef 43980, i32 noundef 36) #8
  br label %bb.bq

bb.ax:                                            ; preds = %bb.ar, %bb.ar
  %i.ic = add nuw i32 %.22859, 1                  ; 2 uses
  %.val3170 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val3170, i64 %i.cg
  store i32 %i.ic, ptr %i.id, align 1
  %.val3252 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val3252, i64 %i.bv
  %.0.copyload.i3455 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3455) #8, !srcloc !19
  %i.if = icmp eq i8 %.0.copyload.i3428, 43
  %i.ig = select i1 %i.if, i32 1, i32 -1
  %i.ih = zext i32 %.0.copyload.i3455 to i64
  %.val3169 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val3169, i64 %i.ih
  store i32 %i.ig, ptr %i.ii, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ar, %bb.aq, %bb.ax
  %.32860 = phi i32 [ %.22859, %bb.aq ], [ %.22859, %bb.ar ], [ %i.ic, %bb.ax ] ; 6 uses
  %.not3071 = icmp ugt i32 %.62888, %.32860
  br i1 %.not3071, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.ij = zext i32 %.32860 to i64                 ; 2 uses
  %.val3341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.val3341, i64 %i.ij
  %.0.copyload.i3456 = load i8, ptr %i.ik, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3456) #8, !srcloc !21
  %.not3072 = icmp eq i8 %.0.copyload.i3456, 48
  br i1 %.not3072, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.il = add nuw i32 %.32860, 1
  %.not3073 = icmp ult i32 %i.il, %.62888
  br i1 %.not3073, label %bb.bb, label %.loopexit3595

bb.bb:                                            ; preds = %bb.ba
  %i.im = add i32 %.62888, -1
  %4 = add nuw nsw i64 %i.ij, 1
  %5 = zext i32 %.62888 to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %indvars.iv3633 = phi i64 [ %indvars.iv.next3634, %bb.bd ], [ %4, %bb.bb ] ; 3 uses
  %.val3340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val3340, i64 %indvars.iv3633
  %.0.copyload.i3457 = load i8, ptr %i.in, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3457) #8, !srcloc !21
  %i.io = icmp eq i8 %.0.copyload.i3457, 48
  br i1 %i.io, label %bb.bd, label %.loopexit3595.loopexit.split.loop.exit3705

bb.bd:                                            ; preds = %bb.bc
  %indvars.iv.next3634 = add nuw nsw i64 %indvars.iv3633, 1 ; 2 uses
  %.not3074 = icmp eq i64 %indvars.iv.next3634, %5
  br i1 %.not3074, label %.loopexit3595, label %bb.bc

.loopexit3595.loopexit.split.loop.exit3705:       ; preds = %bb.bc
  %6 = trunc nuw i64 %indvars.iv3633 to i32
  br label %.loopexit3595

.loopexit3595:                                    ; preds = %bb.bd, %.loopexit3595.loopexit.split.loop.exit3705, %bb.ba
  %.42861 = phi i32 [ %.32860, %bb.ba ], [ %6, %.loopexit3595.loopexit.split.loop.exit3705 ], [ %i.im, %bb.bd ] ; 2 uses
  %.val3168 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val3168, i64 %i.cg
  store i32 %.42861, ptr %i.ip, align 1
  br label %bb.be

bb.be:                                            ; preds = %bb.az, %bb.ay, %.loopexit3595
  %.52862 = phi i32 [ %.32860, %bb.ay ], [ %.32860, %bb.az ], [ %.42861, %.loopexit3595 ] ; 4 uses
  %.not3075 = icmp ugt i32 %.62888, %.52862
  br i1 %.not3075, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %bb.be
  %i.iq = zext i32 %.52862 to i64                 ; 3 uses
  %.val3339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %.val3339, i64 %i.iq
  %.0.copyload.i3458 = load i8, ptr %i.ir, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3458) #8, !srcloc !21
  %i.is = add i8 %.0.copyload.i3458, -58
  %i.it = icmp ult i8 %i.is, -10
  br i1 %i.it, label %bb.bo, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val3251 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val3251, i64 %i.by
  %.0.copyload.i3459 = load i32, ptr %i.iu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3459) #8, !srcloc !19
  %i.iv = zext i32 %.0.copyload.i3459 to i64
  %.val3377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val3377, i64 %i.iv
  store i8 10, ptr %i.iw, align 1
  %.val3338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.val3338, i64 %i.iq
  %.0.copyload.i3460 = load i8, ptr %i.ix, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3460) #8, !srcloc !21
  %i.iy = add i8 %.0.copyload.i3460, -58
  %i.iz = icmp ult i8 %i.iy, -10
  br i1 %i.iz, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ja = add nuw i32 %.52862, 1                  ; 5 uses
  %.val3167 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %.val3167, i64 %i.cg
  store i32 %i.ja, ptr %i.jb, align 1
  %i.jc = zext nneg i8 %.0.copyload.i3460 to i32
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef nonnull %0, i32 noundef %.22851, i32 noundef %i.jc) #8
  %.not3076 = icmp ugt i32 %.62888, %i.ja
  br i1 %.not3076, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jd = zext i32 %i.ja to i64
  %.val3337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.val3337, i64 %i.jd
  %.0.copyload.i3461 = load i8, ptr %i.je, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3461) #8, !srcloc !21
  %i.jf = add i8 %.0.copyload.i3461, -58
  %i.jg = icmp ult i8 %i.jf, -10
  br i1 %i.jg, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bi
  %i.jh = add nuw nsw i64 %i.iq, 1                ; 2 uses
  %i.ji = add i32 %.62888, -1
  %wide.trip.count3636 = zext i32 %i.ji to i64    ; 2 uses
  %i.jj = zext nneg i8 %.0.copyload.i3461 to i32
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef nonnull %0, i32 noundef %.22851, i32 noundef %i.jj) #8
  %exitcond3637.not3719 = icmp eq i64 %i.jh, %wide.trip.count3636
  br i1 %exitcond3637.not3719, label %.loopexit, label %.lr.ph3721

.preheader:                                       ; preds = %.lr.ph3721
  %i.jk = zext nneg i8 %.0.copyload.i3462 to i32
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef nonnull %0, i32 noundef %.22851, i32 noundef %i.jk) #8
  %exitcond3637.not = icmp eq i64 %indvars.iv.next3634.a, %wide.trip.count3636
  br i1 %exitcond3637.not, label %.loopexit, label %.lr.ph3721

.lr.ph3721:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv36333720 = phi i64 [ %indvars.iv.next3634.a, %.preheader ], [ %i.jh, %.preheader.preheader ]
  %indvars.iv.next3634.a = add nuw nsw i64 %indvars.iv36333720, 1 ; 4 uses
  %.val3336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val3336, i64 %indvars.iv.next3634.a
  %.0.copyload.i3462 = load i8, ptr %i.jl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3462) #8, !srcloc !21
  %i.jm = add i8 %.0.copyload.i3462, -48
  %i.jn = icmp ult i8 %i.jm, 10
  br i1 %i.jn, label %.preheader, label %.loopexit.loopexit.split.loop.exit3704

.loopexit.loopexit.split.loop.exit3704:           ; preds = %.lr.ph3721
  %i.jo = trunc nuw i64 %indvars.iv.next3634.a to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %.loopexit.loopexit.split.loop.exit3704, %bb.bi
  %.72864 = phi i32 [ %i.ja, %bb.bi ], [ %i.jo, %.loopexit.loopexit.split.loop.exit3704 ], [ %.62888, %.preheader.preheader ], [ %.62888, %.preheader ] ; 2 uses
  %.val3166 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jp = getelementptr inbounds nuw i8, ptr %.val3166, i64 %i.cg
  store i32 %.72864, ptr %i.jp, align 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %.loopexit
  %.82865 = phi i32 [ %.52862, %bb.bg ], [ %i.ja, %bb.bh ], [ %.72864, %.loopexit ] ; 2 uses
  %i.jq = zext i32 %.22851 to i64                 ; 2 uses
  %.val3250 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val3250, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %.0.copyload.i3463 = load i32, ptr %i.js, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3463) #8, !srcloc !19
  %.val3335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val3335, i64 %i.jq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 11
  %.0.copyload.i3464 = load i8, ptr %i.ju, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3464) #8, !srcloc !21
  %i.jv = zext i8 %.0.copyload.i3464 to i32
  %.not30793593 = icmp slt i8 %.0.copyload.i3464, 0
  %i.jw = select i1 %.not30793593, i32 %.0.copyload.i3463, i32 %i.jv
  %.not3080 = icmp eq i32 %i.jw, 0
  br i1 %.not3080, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not3081 = icmp ugt i32 %.62888, %.82865
  br i1 %.not3081, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.jx = zext i32 %.82865 to i64
  %.val3334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val3334, i64 %i.jx
  %.0.copyload.i3465 = load i8, ptr %i.jy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3465) #8, !srcloc !21
  %.not3082 = icmp eq i8 %.0.copyload.i3465, 0
  br i1 %.not3082, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val3249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.val3249, i64 %i.bs
  %.0.copyload.i3466 = load i32, ptr %i.jz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3466) #8, !srcloc !19
  %.not3083 = icmp eq i32 %.0.copyload.i3466, 0
  br i1 %.not3083, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fassign_external0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3466, i32 noundef 44017, i32 noundef 32) #8
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj, %bb.bf, %bb.be
  %.val3248 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val3248, i64 %i.bs
  %.0.copyload.i3467 = load i32, ptr %i.ka, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3467) #8, !srcloc !19
  %.not3084 = icmp eq i32 %.0.copyload.i3467, 0
  br i1 %.not3084, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fassign_external0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3467, i32 noundef 43863, i32 noundef 22) #8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bm, %bb.av, %bb.bp, %bb.bn, %bb.aw
  %.val3295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val3295, i64 %i.bo
  %.0.copyload.i3468 = load i8, ptr %i.kb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3468) #8, !srcloc !22
  %i.kc = icmp sgt i8 %.0.copyload.i3468, -1
  br i1 %i.kc, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.val3247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val3247, i64 %i.bh
  %.0.copyload.i3469 = load i32, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3469) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3469) #8
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bl, %bb.bk, %bb.au, %bb.at, %bb.v
  %.val3312 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %.val3312, i64 %i.bh
  %.0.copyload.i3470 = load i64, ptr %i.ke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3470) #8, !srcloc !20
  %.val3281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %.val3281, i64 %i.bm
  store i64 %.0.copyload.i3470, ptr %i.kf, align 1
  %.val3246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val3246, i64 %i.bf
  %.0.copyload.i3471 = load i32, ptr %i.kg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3471) #8, !srcloc !19
  %.val3165 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kh = getelementptr inbounds nuw i8, ptr %.val3165, i64 %i.bj
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  store i32 %.0.copyload.i3471, ptr %i.ki, align 1
  %.val3376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %.val3376, i64 %i.bk
  store i8 1, ptr %i.kj, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bq, %bb.bs, %bb.br
  store i32 %i.bc, ptr %i.a, align 8, !tbaa !17
  %.val3333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kk = getelementptr inbounds nuw i8, ptr %.val3333, i64 %i.bk
  %.0.copyload.i3472 = load i8, ptr %i.kk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3472) #8, !srcloc !21
  %.not3085 = icmp eq i8 %.0.copyload.i3472, 0
  br i1 %.not3085, label %bb.gp, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kl = add nuw nsw i64 %i.bj, 67               ; 2 uses
  %.val3332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %.val3332, i64 %i.kl
end_hunk_0
