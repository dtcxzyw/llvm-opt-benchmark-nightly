Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AESTree0x3A0x3ARecursiveVisitorDispatch0x3Chermes0x3A0x3Asem0x3A0x3ASemanticValidator0x2C0x20true0x3E0x3A0x3Avisit0x28hermes0x3A0x3Asem0x3A0x3ASemanticValidator0x260x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x29:bb.a
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bds, i32 noundef %i.bdh, i32 noundef 0, i32 noundef 2) #16
  %.val8748 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.beg = getelementptr inbounds nuw i8, ptr %.val8748, i64 %i.bdf
  %.0.copyload.i9990 = load i32, ptr %i.beg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9990) #16, !srcloc !22
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.38141 = phi i32 [ %.0.copyload.i9990, %bb.hi ], [ %.0.copyload.i9986, %bb.hh ]
  %.val8747 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.beh = getelementptr inbounds nuw i8, ptr %.val8747, i64 %i.bdi
  %.0.copyload.i9991 = load i32, ptr %i.beh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9991) #16, !srcloc !22
  %i.bei = shl i32 %.38141, 1
  %i.bej = add i32 %.0.copyload.i9991, %i.bei
  %i.bek = add i32 %.2, 983040
  %i.bel = lshr i32 %i.bek, 10
  %i.bem = zext i32 %i.bej to i64
  %.val9633 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ben = trunc i32 %i.bel to i16
  %i.beo = and i16 %i.ben, 1023
  %i.bep = or disjoint i16 %i.beo, -10240
  %i.beq = getelementptr inbounds nuw i8, ptr %.val9633, i64 %i.bem
  store i16 %i.bep, ptr %i.beq, align 1
  %.val8746 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ber = getelementptr inbounds nuw i8, ptr %.val8746, i64 %i.bdf
  %.0.copyload.i9992 = load i32, ptr %i.ber, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9992) #16, !srcloc !22
  %i.bes = add i32 %.0.copyload.i9992, 1          ; 3 uses
  %.val9160 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bet = getelementptr inbounds nuw i8, ptr %.val9160, i64 %i.bdf
  store i32 %i.bes, ptr %i.bet, align 1
  %i.beu = and i32 %.2, 1023
  %i.bev = or disjoint i32 %i.beu, -9216          ; 2 uses
  %.val8745 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bew = getelementptr inbounds nuw i8, ptr %.val8745, i64 %i.bdr
  %.0.copyload.i9993 = load i32, ptr %i.bew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9993) #16, !srcloc !22
  %i.bex = icmp ult i32 %i.bes, %.0.copyload.i9993
  br i1 %i.bex, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hg
  %.208212 = phi i32 [ %.2, %bb.hg ], [ %i.bev, %bb.hj ]
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bds, i32 noundef %i.bdh, i32 noundef 0, i32 noundef 2) #16
  %.val8744 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bey = getelementptr inbounds nuw i8, ptr %.val8744, i64 %i.bdf
  %.0.copyload.i9994 = load i32, ptr %i.bey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9994) #16, !srcloc !22
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hj, %bb.hg, %bb.hk
  %.218213 = phi i32 [ %.208212, %bb.hk ], [ %.2, %bb.hg ], [ %i.bev, %bb.hj ]
  %.4 = phi i32 [ %.0.copyload.i9994, %bb.hk ], [ %.0.copyload.i9986, %bb.hg ], [ %i.bes, %bb.hj ]
  %.val8743 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bez = getelementptr inbounds nuw i8, ptr %.val8743, i64 %i.bdi
  %.0.copyload.i9995 = load i32, ptr %i.bez, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9995) #16, !srcloc !22
  %i.bfa = shl i32 %.4, 1
  %i.bfb = add i32 %.0.copyload.i9995, %i.bfa
  %i.bfc = zext i32 %i.bfb to i64
  %.val9632 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfd = trunc i32 %.218213 to i16
  %i.bfe = getelementptr inbounds nuw i8, ptr %.val9632, i64 %i.bfc
  store i16 %i.bfd, ptr %i.bfe, align 1
  %.val8742 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bff = getelementptr inbounds nuw i8, ptr %.val8742, i64 %i.bdf
  %.0.copyload.i9996 = load i32, ptr %i.bff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9996) #16, !srcloc !22
  %i.bfg = add i32 %.0.copyload.i9996, 1          ; 2 uses
  %.val9159 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfh = getelementptr inbounds nuw i8, ptr %.val9159, i64 %i.bdf
  store i32 %i.bfg, ptr %i.bfh, align 1
  %.val8741 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfi = getelementptr inbounds nuw i8, ptr %.val8741, i64 %i.bbh
  %.0.copyload.i9997 = load i32, ptr %i.bfi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9997) #16, !srcloc !22
  %i.bfj = icmp ult i32 %.0.copyload.i9997, %i.bdp
  br i1 %i.bfj, label %bb.hc, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %.val8740 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfk = getelementptr inbounds nuw i8, ptr %.val8740, i64 %i.baz
  %.0.copyload.i9998 = load i32, ptr %i.bfk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9998) #16, !srcloc !22
  %.val8739 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfl = getelementptr inbounds nuw i8, ptr %.val8739, i64 %i.bdi
  %.0.copyload.i9999 = load i32, ptr %i.bfl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i9999) #16, !srcloc !22
  br label %bb.hn

bb.hn:                                            ; preds = %.loopexit10332._crit_edge, %bb.hm
  %.pre-phi10390 = phi i32 [ %.pre10389, %.loopexit10332._crit_edge ], [ %i.bdq, %bb.hm ]
  %.228214 = phi i32 [ %i.bdh, %.loopexit10332._crit_edge ], [ %.0.copyload.i9999, %bb.hm ]
  %.68152 = phi i32 [ 0, %.loopexit10332._crit_edge ], [ %i.bfg, %bb.hm ]
  %.5 = phi i32 [ %.28140, %.loopexit10332._crit_edge ], [ %.0.copyload.i9998, %bb.hm ]
  %i.bfm = add i32 %i.azz, -96                    ; 4 uses
  %i.bfn = add i32 %i.azz, -16                    ; 3 uses
  %.val9158 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfo = getelementptr inbounds nuw i8, ptr %.val9158, i64 %i.bay
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 144
  store i32 %.5, ptr %i.bfp, align 1
  %.val8738 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfq = getelementptr inbounds nuw i8, ptr %.val8738, i64 %i.bbc
  %.0.copyload.i10000 = load i32, ptr %i.bfq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10000) #16, !srcloc !22
  %i.bfr = add nuw nsw i64 %i.bay, 140            ; 2 uses
  %.val9157 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfs = getelementptr inbounds nuw i8, ptr %.val9157, i64 %i.bfr
  store i32 %.0.copyload.i10000, ptr %i.bfs, align 1
  %.val9156 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bft = getelementptr inbounds nuw i8, ptr %.val9156, i64 %i.bay
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 136
  store i32 %.68152, ptr %i.bfu, align 1
  %i.bfv = add nuw nsw i64 %i.bay, 132            ; 2 uses
  %.val9155 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfw = getelementptr inbounds nuw i8, ptr %.val9155, i64 %i.bfv
  store i32 %.228214, ptr %i.bfw, align 1
  %.val9556 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfx = getelementptr inbounds nuw i8, ptr %.val9556, i64 %i.bfr
  %.0.copyload.i10001 = load i64, ptr %i.bfx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10001) #16, !srcloc !36
  %.val9411 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bfy = getelementptr inbounds nuw i8, ptr %.val9411, i64 %i.bay
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 8
  store i64 %.0.copyload.i10001, ptr %i.bfz, align 1
  %.val9555 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bga = getelementptr inbounds nuw i8, ptr %.val9555, i64 %i.bfv
  %.0.copyload.i10002 = load i64, ptr %i.bga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10002) #16, !srcloc !36
  %.val9410 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgb = getelementptr inbounds nuw i8, ptr %.val9410, i64 %i.bay
  store i64 %.0.copyload.i10002, ptr %i.bgb, align 1
  %i.bgc = add i32 %i.baw, -440
  %i.bgd = tail call i32 @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3ARegex0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %.pre-phi10390, i32 noundef %i.bgc, i32 noundef %i.bax) #16 ; 3 uses
  %i.bge = zext i32 %i.bgd to i64                 ; 8 uses
  %.val8737 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgf = getelementptr inbounds nuw i8, ptr %.val8737, i64 %i.bge
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 168
  %.0.copyload.i10003 = load i32, ptr %i.bgg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10003) #16, !srcloc !22
  %.not8391 = icmp eq i32 %.0.copyload.i10003, 0
  br i1 %.not8391, label %bb.hr, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.not8397 = icmp eq i32 %i.bfn, 0
  br i1 %.not8397, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bgh = shl i32 %.0.copyload.i10003, 2
  %i.bgi = add i32 %i.bgh, 264352
  %i.bgj = zext i32 %i.bgi to i64
  %.val8736 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgk = getelementptr inbounds nuw i8, ptr %.val8736, i64 %i.bgj
  %.0.copyload.i10004 = load i32, ptr %i.bgk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10004) #16, !srcloc !22
  %i.bgl = tail call i32 @w2c_hermes_strlen(ptr noundef nonnull %0, i32 noundef %.0.copyload.i10004) #16
  %i.bgm = zext i32 %i.bfn to i64                 ; 2 uses
  %.val9154 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgn = getelementptr inbounds nuw i8, ptr %.val9154, i64 %i.bgm
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 4
  store i32 %i.bgl, ptr %i.bgo, align 1
  %.val9153 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgp = getelementptr inbounds nuw i8, ptr %.val9153, i64 %i.bgm
  store i32 %.0.copyload.i10004, ptr %i.bgp, align 1
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.bgq = zext i32 %i.bfm to i64
  %.val9588 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgr = getelementptr inbounds nuw i8, ptr %.val9588, i64 %i.bgq
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 76
  store i8 0, ptr %i.bgs, align 1
  br label %bb.in

bb.hr:                                            ; preds = %bb.hn
  %i.bgt = add i32 %i.baw, -404
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3Acompile0x280x290x20const(ptr noundef nonnull %0, i32 noundef %i.bgt, i32 noundef %i.bgd) #16
  %.not8392 = icmp eq i32 %.0.copyload.i9967, 0
  br i1 %.not8392, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %.val9152 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgu = getelementptr inbounds nuw i8, ptr %.val9152, i64 %i.bay
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 40
  store i32 0, ptr %i.bgv, align 1
  %.val9409 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bgw = getelementptr inbounds nuw i8, ptr %.val9409, i64 %i.bay
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  store i64 0, ptr %i.bgx, align 1
  br label %bb.hz

bb.ht:                                            ; preds = %bb.hr
  %i.bgy = icmp ugt i32 %.0.copyload.i9966, 2147483631
  br i1 %i.bgy, label %bb.is, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bgz = icmp samesign ugt i32 %.0.copyload.i9966, 10
  br i1 %i.bgz, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.bha = or i32 %.0.copyload.i9966, 15
  %i.bhb = add nuw nsw i32 %i.bha, 1              ; 2 uses
  %i.bhc = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bhb) #16 ; 3 uses
  %5 = or disjoint i32 %i.bhb, -2147483648
  %.val9151 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhd = getelementptr inbounds nuw i8, ptr %.val9151, i64 %i.bay
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 40
  store i32 %5, ptr %i.bhe, align 1
  %.val9150 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhf = getelementptr inbounds nuw i8, ptr %.val9150, i64 %i.bay
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 32
  store i32 %i.bhc, ptr %i.bhg, align 1
  %.val9149 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhh = getelementptr inbounds nuw i8, ptr %.val9149, i64 %i.bay
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 36
  store i32 %.0.copyload.i9966, ptr %i.bhi, align 1
  %i.bhj = add i32 %i.bhc, %.0.copyload.i9966
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hu
  %.val9587 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhk = trunc nuw nsw i32 %.0.copyload.i9966 to i8
  %i.bhl = getelementptr inbounds nuw i8, ptr %.val9587, i64 %i.bay
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 43
  store i8 %i.bhk, ptr %i.bhm, align 1
  %i.bhn = add i32 %i.baw, -416                   ; 2 uses
  %i.bho = add i32 %.0.copyload.i9966, %i.bhn     ; 2 uses
  %.not8393 = icmp eq i32 %.0.copyload.i9966, 0
  br i1 %.not8393, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.7 = phi i32 [ %i.bhj, %bb.hv ], [ %i.bho, %bb.hw ]
  %.6 = phi i32 [ %i.bhc, %bb.hv ], [ %i.bhn, %bb.hw ]
  %i.bhp = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.6, i32 noundef %.0.copyload.i9967, i32 noundef %.0.copyload.i9966) #16 ; 0 uses
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hw, %bb.hx
  %.8 = phi i32 [ %.7, %bb.hx ], [ %i.bho, %bb.hw ]
  %i.bhq = zext i32 %.8 to i64
  %.val9586 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhr = getelementptr inbounds nuw i8, ptr %.val9586, i64 %i.bhq
  store i8 0, ptr %i.bhr, align 1
  %.val8735 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhs = getelementptr inbounds nuw i8, ptr %.val8735, i64 %i.bau
  %.0.copyload.i10005 = load i32, ptr %i.bhs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10005) #16, !srcloc !22
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hs
  %.138188 = phi i32 [ %.0.copyload.i9983, %bb.hs ], [ %.0.copyload.i10005, %bb.hy ] ; 2 uses
  %.not8394 = icmp eq i32 %.138188, 0
  %.val9148 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  br i1 %.not8394, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.bht = getelementptr inbounds nuw i8, ptr %.val9148, i64 %i.bay
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 24
  store i32 0, ptr %i.bhu, align 1
  %.val9408 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bhv = getelementptr inbounds nuw i8, ptr %.val9408, i64 %i.bay
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 16
  store i64 0, ptr %i.bhw, align 1
  br label %bb.ih

bb.ib:                                            ; preds = %bb.hz
  %i.bhx = getelementptr inbounds nuw i8, ptr %.val9148, i64 %i.bdk
  %.0.copyload.i10006 = load i32, ptr %i.bhx, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10006) #16, !srcloc !22
  %i.bhy = icmp ugt i32 %.0.copyload.i10006, 2147483631
  br i1 %i.bhy, label %bb.is, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bhz = icmp samesign ugt i32 %.0.copyload.i10006, 10
  br i1 %i.bhz, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.bia = or i32 %.0.copyload.i10006, 15
  %i.bib = add nuw nsw i32 %i.bia, 1              ; 2 uses
  %i.bic = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bib) #16 ; 3 uses
  %6 = or disjoint i32 %i.bib, -2147483648
  %.val9147 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bid = getelementptr inbounds nuw i8, ptr %.val9147, i64 %i.bay
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bid, i64 24
  store i32 %6, ptr %i.bie, align 1
  %.val9146 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bif = getelementptr inbounds nuw i8, ptr %.val9146, i64 %i.bay
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 16
  store i32 %i.bic, ptr %i.big, align 1
  %.val9145 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bih = getelementptr inbounds nuw i8, ptr %.val9145, i64 %i.bay
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 20
  store i32 %.0.copyload.i10006, ptr %i.bii, align 1
  %i.bij = add i32 %i.bic, %.0.copyload.i10006
  br label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %.val9585 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bik = trunc nuw nsw i32 %.0.copyload.i10006 to i8
  %i.bil = getelementptr inbounds nuw i8, ptr %.val9585, i64 %i.bay
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 27
  store i8 %i.bik, ptr %i.bim, align 1
  %i.bin = add i32 %i.baw, -432                   ; 2 uses
  %i.bio = add i32 %.0.copyload.i10006, %i.bin    ; 2 uses
  %.not8395 = icmp eq i32 %.0.copyload.i10006, 0
  br i1 %.not8395, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.238215 = phi i32 [ %i.bij, %bb.id ], [ %i.bio, %bb.ie ]
  %.9 = phi i32 [ %i.bic, %bb.id ], [ %i.bin, %bb.ie ]
  %i.bip = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.9, i32 noundef %.138188, i32 noundef %.0.copyload.i10006) #16 ; 0 uses
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.248216 = phi i32 [ %.238215, %bb.if ], [ %i.bio, %bb.ie ]
  %i.biq = zext i32 %.248216 to i64
  %.val9584 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bir = getelementptr inbounds nuw i8, ptr %.val9584, i64 %i.biq
  store i8 0, ptr %i.bir, align 1
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.ia
  %i.bis = add nuw nsw i64 %i.bge, 176            ; 2 uses
  %.val9554 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bit = getelementptr inbounds nuw i8, ptr %.val9554, i64 %i.bis
  %.0.copyload.i10007 = load i64, ptr %i.bit, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10007) #16, !srcloc !36
  %.val9407 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.biu = getelementptr inbounds nuw i8, ptr %.val9407, i64 %i.bis
  store i64 0, ptr %i.biu, align 1
  %i.biv = add nuw nsw i64 %i.bge, 184            ; 2 uses
  %.val9553 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.biw = getelementptr inbounds nuw i8, ptr %.val9553, i64 %i.biv
  %.0.copyload.i10008 = load i64, ptr %i.biw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10008) #16, !srcloc !36
  %.val9406 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bix = getelementptr inbounds nuw i8, ptr %.val9406, i64 %i.biv
  store i64 0, ptr %i.bix, align 1
  %i.biy = add nuw nsw i64 %i.bge, 192            ; 2 uses
  %.val9552 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.biz = getelementptr inbounds nuw i8, ptr %.val9552, i64 %i.biy
  %.0.copyload.i10009 = load i64, ptr %i.biz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10009) #16, !srcloc !36
  %.val9405 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bja = getelementptr inbounds nuw i8, ptr %.val9405, i64 %i.biy
  store i64 0, ptr %i.bja, align 1
  %.val8733 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjb = getelementptr inbounds nuw i8, ptr %.val8733, i64 %i.bge
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 204
  %.0.copyload.i10010 = load i32, ptr %i.bjc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10010) #16, !srcloc !22
  %i.bjd = add nuw nsw i64 %i.bge, 200            ; 2 uses
  %.val8732 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bje = getelementptr inbounds nuw i8, ptr %.val8732, i64 %i.bjd
  %.0.copyload.i10011 = load i32, ptr %i.bje, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10011) #16, !srcloc !22
  %.val9404 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjf = getelementptr inbounds nuw i8, ptr %.val9404, i64 %i.bjd
  store i64 0, ptr %i.bjf, align 1
  %.val8731 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjg = getelementptr inbounds nuw i8, ptr %.val8731, i64 %i.bge
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 212
  %.0.copyload.i10012 = load i32, ptr %i.bjh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10012) #16, !srcloc !22
  %i.bji = add nuw nsw i64 %i.bge, 208            ; 2 uses
  %.val8730 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjj = getelementptr inbounds nuw i8, ptr %.val8730, i64 %i.bji
  %.0.copyload.i10013 = load i32, ptr %i.bjj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10013) #16, !srcloc !22
  %.val9403 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjk = getelementptr inbounds nuw i8, ptr %.val9403, i64 %i.bji
  store i64 0, ptr %i.bjk, align 1
  %i.bjl = add nuw nsw i64 %i.bay, 24             ; 2 uses
  %.val8729 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjm = getelementptr inbounds nuw i8, ptr %.val8729, i64 %i.bjl
  %.0.copyload.i10014 = load i32, ptr %i.bjm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10014) #16, !srcloc !22
  %i.bjn = add nuw nsw i64 %i.bay, 88             ; 3 uses
  %.val9144 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjo = getelementptr inbounds nuw i8, ptr %.val9144, i64 %i.bjn
  store i32 %.0.copyload.i10014, ptr %i.bjo, align 1
  %.val9143 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjp = getelementptr inbounds nuw i8, ptr %.val9143, i64 %i.bjl
  store i32 0, ptr %i.bjp, align 1
  %i.bjq = add nuw nsw i64 %i.bay, 40             ; 2 uses
  %.val8728 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjr = getelementptr inbounds nuw i8, ptr %.val8728, i64 %i.bjq
  %.0.copyload.i10015 = load i32, ptr %i.bjr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10015) #16, !srcloc !22
  %i.bjs = add nuw nsw i64 %i.bay, 76             ; 3 uses
  %.val9142 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjt = getelementptr inbounds nuw i8, ptr %.val9142, i64 %i.bjs
  store i32 %.0.copyload.i10015, ptr %i.bjt, align 1
  %.val9141 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bju = getelementptr inbounds nuw i8, ptr %.val9141, i64 %i.bjq
  store i32 0, ptr %i.bju, align 1
  %i.bjv = add nuw nsw i64 %i.bay, 44             ; 3 uses
  %.val9551 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjw = getelementptr inbounds nuw i8, ptr %.val9551, i64 %i.bjv
  %.0.copyload.i10016 = load i64, ptr %i.bjw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10016) #16, !srcloc !36
  %.val9402 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjx = getelementptr inbounds nuw i8, ptr %.val9402, i64 %i.bjv
  store i64 0, ptr %i.bjx, align 1
  %i.bjy = add nuw nsw i64 %i.bay, 16             ; 3 uses
  %.val9550 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bjz = getelementptr inbounds nuw i8, ptr %.val9550, i64 %i.bjy
  %.0.copyload.i10017 = load i64, ptr %i.bjz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10017) #16, !srcloc !36
  %i.bka = add nuw nsw i64 %i.bay, 80             ; 3 uses
  %.val9401 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkb = getelementptr inbounds nuw i8, ptr %.val9401, i64 %i.bka
  store i64 %.0.copyload.i10017, ptr %i.bkb, align 1
  %.val9400 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkc = getelementptr inbounds nuw i8, ptr %.val9400, i64 %i.bjy
  store i64 0, ptr %i.bkc, align 1
  %i.bkd = add nuw nsw i64 %i.bay, 32             ; 3 uses
  %.val9549 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bke = getelementptr inbounds nuw i8, ptr %.val9549, i64 %i.bkd
  %.0.copyload.i10018 = load i64, ptr %i.bke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10018) #16, !srcloc !36
  %i.bkf = add nuw nsw i64 %i.bay, 68             ; 3 uses
  %.val9399 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkg = getelementptr inbounds nuw i8, ptr %.val9399, i64 %i.bkf
  store i64 %.0.copyload.i10018, ptr %i.bkg, align 1
  %.val9398 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkh = getelementptr inbounds nuw i8, ptr %.val9398, i64 %i.bkd
  store i64 0, ptr %i.bkh, align 1
  %i.bki = add nuw nsw i64 %i.bay, 52             ; 2 uses
  %.val8727 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkj = getelementptr inbounds nuw i8, ptr %.val8727, i64 %i.bki
  %.0.copyload.i10019 = load i32, ptr %i.bkj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10019) #16, !srcloc !22
  %.val9140 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkk = getelementptr inbounds nuw i8, ptr %.val9140, i64 %i.bki
  store i32 0, ptr %i.bkk, align 1
  %i.bkl = zext i32 %i.bfm to i64                 ; 13 uses
  %.val9139 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkm = getelementptr inbounds nuw i8, ptr %.val9139, i64 %i.bkl
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkm, i64 8
  store i32 %.0.copyload.i10019, ptr %i.bkn, align 1
  %.val9397 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bko = getelementptr inbounds nuw i8, ptr %.val9397, i64 %i.bkl
  store i64 %.0.copyload.i10016, ptr %i.bko, align 1
  %.val9583 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkp = getelementptr inbounds nuw i8, ptr %.val9583, i64 %i.bkl
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 76
  store i8 1, ptr %i.bkq, align 1
  %.val9138 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkr = getelementptr inbounds nuw i8, ptr %.val9138, i64 %i.bay
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 64
  store i32 0, ptr %i.bks, align 1
  %.val9396 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkt = getelementptr inbounds nuw i8, ptr %.val9396, i64 %i.bay
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 56
  store i64 0, ptr %i.bku, align 1
  %.val8726 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkv = getelementptr inbounds nuw i8, ptr %.val8726, i64 %i.bjs
  %.0.copyload.i10020 = load i32, ptr %i.bkv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i10020) #16, !srcloc !22
  %.val9137 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkw = getelementptr inbounds nuw i8, ptr %.val9137, i64 %i.bkl
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 20
  store i32 %.0.copyload.i10020, ptr %i.bkx, align 1
  %.val9548 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bky = getelementptr inbounds nuw i8, ptr %.val9548, i64 %i.bkf
  %.0.copyload.i10021 = load i64, ptr %i.bky, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i10021) #16, !srcloc !36
  %.val9395 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bkz = getelementptr inbounds nuw i8, ptr %.val9395, i64 %i.bkl
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 12
  store i64 %.0.copyload.i10021, ptr %i.bla, align 1
  %.val9136 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.blb = getelementptr inbounds nuw i8, ptr %.val9136, i64 %i.bjs
  store i32 0, ptr %i.blb, align 1
  %.val9394 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.blc = getelementptr inbounds nuw i8, ptr %.val9394, i64 %i.bkf
  store i64 0, ptr %i.blc, align 1
  %.val8725 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bld = getelementptr inbounds nuw i8, ptr %.val8725, i64 %i.bjn
  %.0.copyload.i10022 = load i32, ptr %i.bld, align 1 ; 2 uses
end_hunk_0
