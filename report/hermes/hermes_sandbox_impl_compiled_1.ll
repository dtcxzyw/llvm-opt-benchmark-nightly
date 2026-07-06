inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a

._crit_edge55835:                                 ; preds = %bb.bmy, %bb.bna
  %.pre-phi55887 = phi i32 [ %i.rou, %bb.bna ], [ 0, %bb.bmy ]
  %.3543164 = phi i32 [ %i.rov, %bb.bna ], [ 0, %bb.bmy ] ; 2 uses
  %i.row = and i32 %i.rok, -8
  %i.rox = add i32 %.3543164, %i.row              ; 2 uses
  %i.roy = zext i32 %.3543520 to i64
  %i.roz = or disjoint i64 %.043124, %i.roy
  %i.rpa = zext i32 %i.rox to i64
  %.val50785 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpb = getelementptr inbounds nuw i8, ptr %.val50785, i64 %i.rpa
  store i64 %i.roz, ptr %i.rpb, align 1
  %i.rpc = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.3543164, i32 noundef %.15144402, i32 noundef %i.rok) #7 ; 4 uses
  %i.rpd = add i32 %i.rpc, %.pre-phi55887         ; 3 uses
  %.val49545 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpe = getelementptr inbounds nuw i8, ptr %.val49545, i64 %i.rlm
  store i32 %i.rpd, ptr %i.rpe, align 1
  %i.rpf = add i32 %i.rox, 8                      ; 3 uses
  %.val49544 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpg = getelementptr inbounds nuw i8, ptr %.val49544, i64 %i.rea
  %i.rph = getelementptr inbounds nuw i8, ptr %i.rpg, i64 304
  store i32 %i.rpf, ptr %i.rph, align 1
  %.val49543 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpi = getelementptr inbounds nuw i8, ptr %.val49543, i64 %i.rlo
  store i32 %i.rpc, ptr %i.rpi, align 1
  %.not46539 = icmp eq i32 %.15144402, 0
  br i1 %.not46539, label %bb.bnc, label %bb.bnb

bb.bnb:                                           ; preds = %._crit_edge55835
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.15144402) #7
  br label %bb.bnc

bb.bnc:                                           ; preds = %._crit_edge55835, %bb.bnb, %bb.bmw
  %.15244403 = phi i32 [ %.15144402, %bb.bmw ], [ %i.rpc, %bb.bnb ], [ %i.rpc, %._crit_edge55835 ]
  %.14344239 = phi i32 [ %i.roh, %bb.bmw ], [ %i.rpf, %bb.bnb ], [ %i.rpf, %._crit_edge55835 ]
  %.1343544 = phi i32 [ %.1243543, %bb.bmw ], [ %i.rpd, %bb.bnb ], [ %i.rpd, %._crit_edge55835 ]
  %i.rpj = add i32 %.1843565, 12                  ; 2 uses
  %i.rpk = zext i32 %.343477 to i64               ; 2 uses
  %.val47218 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpl = getelementptr inbounds nuw i8, ptr %.val47218, i64 %i.rpk
  %.0.copyload.i53690 = load i32, ptr %i.rpl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53690) #7, !srcloc !19
  %i.rpm = sub i32 %i.rpj, %.0.copyload.i53690
  %i.rpn = icmp eq i32 %i.rpm, 4092
  br i1 %i.rpn, label %bb.bnd, label %bb.bne

bb.bnd:                                           ; preds = %bb.bnc
  %.val47217 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpo = getelementptr inbounds nuw i8, ptr %.val47217, i64 %i.rpk
  %i.rpp = getelementptr inbounds nuw i8, ptr %i.rpo, i64 4
  %.0.copyload.i53691 = load i32, ptr %i.rpp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53691) #7, !srcloc !19
  %i.rpq = add i32 %.343477, 4
  br label %bb.bne

bb.bne:                                           ; preds = %bb.bnd, %bb.bnc
  %.1943566 = phi i32 [ %.0.copyload.i53691, %bb.bnd ], [ %i.rpj, %bb.bnc ] ; 2 uses
  %.443478 = phi i32 [ %i.rpq, %bb.bnd ], [ %.343477, %bb.bnc ]
  %i.rpr = lshr exact i64 %.043124, 32
  %i.rps = trunc nuw i64 %i.rpr to i32
  %i.rpt = add i32 %.3543520, %i.rps
  %.not46540 = icmp eq i32 %i.rmx, %.1943566
  br i1 %.not46540, label %.loopexit54268, label %.preheader54265

.loopexit54268:                                   ; preds = %bb.bne, %bb.bmq, %bb.bmp
  %i.rpu = add i32 %i.qzu, -64                    ; 2 uses
  %i.rpv = zext i32 %i.rpu to i64                 ; 6 uses
  %i.rpw = add nuw nsw i64 %i.rpv, 8              ; 3 uses
  %.val49542 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpx = getelementptr inbounds nuw i8, ptr %.val49542, i64 %i.rpw
  store i32 0, ptr %i.rpx, align 1
  %.val50784 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpy = getelementptr inbounds nuw i8, ptr %.val50784, i64 %i.rpv
  store i64 0, ptr %i.rpy, align 1
  %.val47216 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rpz = getelementptr inbounds nuw i8, ptr %.val47216, i64 %i.rma
  %.0.copyload.i53692 = load i32, ptr %i.rpz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53692) #7, !srcloc !19
  %.val47215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rqa = getelementptr inbounds nuw i8, ptr %.val47215, i64 %i.rmc
  %.0.copyload.i53693 = load i32, ptr %i.rqa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53693) #7, !srcloc !19
  %i.rqb = icmp eq i32 %.0.copyload.i53692, %.0.copyload.i53693
  br i1 %i.rqb, label %.loopexit54263, label %bb.bnf

bb.bnf:                                           ; preds = %.loopexit54268
  %.val47214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rqc = getelementptr inbounds nuw i8, ptr %.val47214, i64 %.pre-phi55858
  %i.rqd = getelementptr inbounds nuw i8, ptr %i.rqc, i64 276
  %.0.copyload.i53694 = load i32, ptr %i.rqd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53694) #7, !srcloc !19
  %i.rqe = udiv i32 %.0.copyload.i53694, 341      ; 2 uses
  %i.rqf = shl nuw nsw i32 %i.rqe, 2
  %i.rqg = add i32 %i.rqf, %.0.copyload.i53692    ; 2 uses
  %i.rqh = zext i32 %i.rqg to i64
  %.val47213 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rqi = getelementptr inbounds nuw i8, ptr %.val47213, i64 %i.rqh
  %.0.copyload.i53695 = load i32, ptr %i.rqi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53695) #7, !srcloc !19
  %.val47212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rqj = getelementptr inbounds nuw i8, ptr %.val47212, i64 %i.rlq
  %.0.copyload.i53696 = load i32, ptr %i.rqj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53696) #7, !srcloc !19
  %i.rqk = add i32 %.0.copyload.i53696, %.0.copyload.i53694 ; 2 uses
  %.neg46541 = mul i32 %i.rqe, -341
  %i.rql = add i32 %.neg46541, %.0.copyload.i53694
  %i.rqm = mul i32 %i.rql, 12
  %i.rqn = add i32 %i.rqm, %.0.copyload.i53695    ; 2 uses
  %i.rqo = udiv i32 %i.rqk, 341                   ; 2 uses
  %i.rqp = shl nuw nsw i32 %i.rqo, 2
  %i.rqq = add i32 %i.rqp, %.0.copyload.i53692
  %i.rqr = zext i32 %i.rqq to i64
  %.val47211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rqs = getelementptr inbounds nuw i8, ptr %.val47211, i64 %i.rqr
  %.0.copyload.i53697 = load i32, ptr %i.rqs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53697) #7, !srcloc !19
  %.neg46542 = mul i32 %i.rqo, -341
  %i.rqt = add i32 %.neg46542, %i.rqk
  %i.rqu = mul i32 %i.rqt, 12
  %i.rqv = add i32 %i.rqu, %.0.copyload.i53697    ; 2 uses
  %i.rqw = icmp eq i32 %i.rqn, %i.rqv
  br i1 %i.rqw, label %.loopexit54263, label %.preheader54262

.preheader54262:                                  ; preds = %bb.bnf, %bb.bno
  %.14444240 = phi i32 [ %.14544241, %bb.bno ], [ %i.rqn, %bb.bnf ] ; 2 uses
  %.3643521 = phi i32 [ %.3743522, %bb.bno ], [ %i.rqg, %bb.bnf ] ; 3 uses
  %.val47210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rqx = getelementptr inbounds nuw i8, ptr %.val47210, i64 %i.rpv
  %i.rqy = getelementptr inbounds nuw i8, ptr %i.rqx, i64 4
  %.0.copyload.i53698 = load i32, ptr %i.rqy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53698) #7, !srcloc !19
  %i.rqz = zext i32 %.14444240 to i64             ; 2 uses
  %.val47209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rra = getelementptr inbounds nuw i8, ptr %.val47209, i64 %i.rqz
  %i.rrb = getelementptr inbounds nuw i8, ptr %i.rra, i64 4
  %.0.copyload.i53699 = load i32, ptr %i.rrb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53699) #7, !srcloc !19
  %.val47208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rrc = getelementptr inbounds nuw i8, ptr %.val47208, i64 %i.rqz
  %.0.copyload.i53700 = load i32, ptr %i.rrc, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53700) #7, !srcloc !19
  %i.rrd = sub i32 %.0.copyload.i53699, %.0.copyload.i53700 ; 2 uses
  %.not46543 = icmp eq i32 %.0.copyload.i53699, %.0.copyload.i53700
  br i1 %.not46543, label %bb.bng, label %bb.bnh

bb.bng:                                           ; preds = %.preheader54262
  %i.rre = zext i32 %.0.copyload.i53700 to i64
  br label %bb.bnm

bb.bnh:                                           ; preds = %.preheader54262
  %i.rrf = zext i32 %i.rrd to i64                 ; 2 uses
  %i.rrg = shl nuw i64 %i.rrf, 32                 ; 3 uses
  %i.rrh = zext i32 %.0.copyload.i53700 to i64    ; 5 uses
  %i.rri = add i32 %.0.copyload.i53699, -1
  %i.rrj = zext i32 %i.rri to i64
  %.val51111 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rrk = getelementptr inbounds nuw i8, ptr %.val51111, i64 %i.rrj
  %.0.copyload.i53701 = load i8, ptr %i.rrk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i53701) #7, !srcloc !21
  %i.rrl = zext i8 %.0.copyload.i53701 to i32
  %sext46544 = shl nuw i32 %i.rrl, 24
  %i.rrm = ashr i32 %sext46544, 31                ; 3 uses
  %i.rrn = trunc nsw i32 %i.rrm to i8
  %.not46545 = icmp eq i8 %.0.copyload.i53701, %i.rrn
  br i1 %.not46545, label %bb.bni, label %bb.bnl

bb.bni:                                           ; preds = %bb.bnh
  %i.rro = add i32 %i.rrd, -1                     ; 2 uses
  %i.rrp = or disjoint i64 %i.rrg, %i.rrh
  %i.rrq = zext i32 %i.rro to i64                 ; 2 uses
  %i.rrr = shl nuw i64 %i.rrq, 32
  %i.rrs = sub i64 %i.rrp, %i.rrr                 ; 2 uses
  %i.rrt = add i32 %.0.copyload.i53700, -1
  %.not4654657442 = icmp eq i32 %i.rro, 0
  br i1 %.not4654657442, label %.loopexit54261, label %.lr.ph57446

bb.bnj:                                           ; preds = %.lr.ph57446
  %i.rru = add nsw i64 %.04318257444, -1          ; 2 uses
  %i.rrv = add nsw i64 %.14318557443, -1
  %.not46546 = icmp eq i64 %i.rru, 0
  br i1 %.not46546, label %.loopexit54261, label %.lr.ph57446

.lr.ph57446:                                      ; preds = %bb.bni, %bb.bnj
  %.04318257444 = phi i64 [ %i.rru, %bb.bnj ], [ %i.rrq, %bb.bni ] ; 3 uses
  %.14318557443 = phi i64 [ %i.rrv, %bb.bnj ], [ %i.rrf, %bb.bni ] ; 2 uses
  %i.rrw = trunc nuw i64 %.04318257444 to i32
  %i.rrx = add i32 %i.rrt, %i.rrw
  %i.rry = zext i32 %i.rrx to i64
  %.val51110 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rrz = getelementptr inbounds nuw i8, ptr %.val51110, i64 %i.rry
  %.0.copyload.i53702 = load i8, ptr %i.rrz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i53702) #7, !srcloc !21
  %i.rsa = icmp eq i8 %.0.copyload.i53701, %.0.copyload.i53702
  br i1 %i.rsa, label %bb.bnj, label %bb.bnk

bb.bnk:                                           ; preds = %.lr.ph57446
  %i.rsb = zext i8 %.0.copyload.i53702 to i32
  %i.rsc = shl i64 %.14318557443, 32
  %sext46547 = shl nuw i32 %i.rsb, 24
  %i.rsd = ashr i32 %sext46547, 31
  %.pre55771 = shl i64 %.04318257444, 32
  br label %bb.bnl

bb.bnl:                                           ; preds = %bb.bnh, %bb.bnk
  %.pre-phi55774 = phi i64 [ %i.rrg, %bb.bnh ], [ %.pre55771, %bb.bnk ]
  %.143183 = phi i64 [ %i.rrg, %bb.bnh ], [ %i.rsc, %bb.bnk ]
  %.2 = phi i32 [ %i.rrm, %bb.bnh ], [ %i.rsd, %bb.bnk ]
  %i.rse = or disjoint i64 %.143183, %i.rrh
  %i.rsf = or disjoint i64 %.pre-phi55774, %i.rrh
  br label %.loopexit54261

.loopexit54261:                                   ; preds = %bb.bnj, %bb.bni, %bb.bnl
  %.15344404 = phi i32 [ %.2, %bb.bnl ], [ 0, %bb.bni ], [ 0, %bb.bnj ]
  %.1643605 = phi i64 [ %i.rsf, %bb.bnl ], [ %i.rrh, %bb.bni ], [ %i.rrh, %bb.bnj ]
  %.143179 = phi i64 [ %i.rse, %bb.bnl ], [ %i.rrs, %bb.bni ], [ %i.rrs, %bb.bnj ]
  %i.rsg = icmp eq i32 %.15344404, %i.rrm
  %i.rsh = select i1 %i.rsg, i64 %.1643605, i64 %.143179
  br label %bb.bnm

bb.bnm:                                           ; preds = %.loopexit54261, %bb.bng
  %.0 = phi i64 [ %i.rre, %bb.bng ], [ %i.rsh, %.loopexit54261 ] ; 2 uses
  %i.rsi = trunc i64 %.0 to i32                   ; 2 uses
  %i.rsj = lshr i64 %.0, 32
  %i.rsk = trunc nuw i64 %i.rsj to i32
  %i.rsl = add i32 %i.rsk, %i.rsi
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cunsigned0x20char0x20const0x2A0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20char0x20const0x2A0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x3A0x3Ainsert0x3Cunsigned0x20char0x20const0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x20const0x2A0x3E0x2C0x20unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.rpu, i32 noundef %.0.copyload.i53698, i32 noundef %i.rsi, i32 noundef %i.rsl) #7
  %i.rsm = add i32 %.14444240, 12                 ; 2 uses
  %i.rsn = zext i32 %.3643521 to i64              ; 2 uses
  %.val47207 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rso = getelementptr inbounds nuw i8, ptr %.val47207, i64 %i.rsn
  %.0.copyload.i53703 = load i32, ptr %i.rso, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53703) #7, !srcloc !19
  %i.rsp = sub i32 %i.rsm, %.0.copyload.i53703
  %i.rsq = icmp eq i32 %i.rsp, 4092
  br i1 %i.rsq, label %bb.bnn, label %bb.bno

bb.bnn:                                           ; preds = %bb.bnm
  %.val47206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rsr = getelementptr inbounds nuw i8, ptr %.val47206, i64 %i.rsn
  %i.rss = getelementptr inbounds nuw i8, ptr %i.rsr, i64 4
  %.0.copyload.i53704 = load i32, ptr %i.rss, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53704) #7, !srcloc !19
  %i.rst = add i32 %.3643521, 4
  br label %bb.bno

bb.bno:                                           ; preds = %bb.bnn, %bb.bnm
  %.14544241 = phi i32 [ %.0.copyload.i53704, %bb.bnn ], [ %i.rsm, %bb.bnm ] ; 2 uses
  %.3743522 = phi i32 [ %i.rst, %bb.bnn ], [ %.3643521, %bb.bnm ]
  %.not46548 = icmp eq i32 %.14544241, %i.rqv
  br i1 %.not46548, label %.loopexit54263, label %.preheader54262

.loopexit54263:                                   ; preds = %bb.bno, %bb.bnf, %.loopexit54268
  %i.rsu = add nuw nsw i64 %i.rea, 284            ; 5 uses
  %.val49541 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rsv = getelementptr inbounds nuw i8, ptr %.val49541, i64 %i.rsu
  store i32 0, ptr %i.rsv, align 1
  %i.rsw = add nuw nsw i64 %i.rea, 276            ; 6 uses
  %.val50783 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rsx = getelementptr inbounds nuw i8, ptr %.val50783, i64 %i.rsw
  store i64 0, ptr %i.rsx, align 1
  %i.rsy = add nuw nsw i64 %.pre-phi55858, 304    ; 2 uses
  %.val47205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rsz = getelementptr inbounds nuw i8, ptr %.val47205, i64 %i.rsy
  %.0.copyload.i53705 = load i32, ptr %i.rsz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53705) #7, !srcloc !19
  %i.rta = add nuw nsw i64 %.pre-phi55858, 300    ; 2 uses
  %.val47204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rtb = getelementptr inbounds nuw i8, ptr %.val47204, i64 %i.rta
  %.0.copyload.i53706 = load i32, ptr %i.rtb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53706) #7, !srcloc !19
  %.not46549 = icmp eq i32 %.0.copyload.i53705, %.0.copyload.i53706
  br i1 %.not46549, label %.loopexit54260, label %bb.bnp

bb.bnp:                                           ; preds = %.loopexit54263
  %i.rtc = sub i32 %.0.copyload.i53705, %.0.copyload.i53706 ; 2 uses
  %i.rtd = icmp ugt i32 %i.rtc, 2147483644
  br i1 %i.rtd, label %.loopexit54247, label %bb.bnq

bb.bnq:                                           ; preds = %bb.bnp
  %i.rte = shl nuw i32 %i.rtc, 1                  ; 2 uses
  %i.rtf = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.rte) #7 ; 5 uses
  %i.rtg = add nuw nsw i64 %i.rea, 280            ; 3 uses
  %.val49540 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rth = getelementptr inbounds nuw i8, ptr %.val49540, i64 %i.rtg
  store i32 %i.rtf, ptr %i.rth, align 1
  %.val49539 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rti = getelementptr inbounds nuw i8, ptr %.val49539, i64 %i.rsw
  store i32 %i.rtf, ptr %i.rti, align 1
  %i.rtj = and i32 %i.rte, -8
  %i.rtk = add i32 %i.rtf, %i.rtj                 ; 2 uses
  %.val49538 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rtl = getelementptr inbounds nuw i8, ptr %.val49538, i64 %i.rsu
  store i32 %i.rtk, ptr %i.rtl, align 1
  br label %bb.bnr

bb.bnr:                                           ; preds = %bb.bny, %bb.bnq
  %.15444405 = phi i32 [ %i.rtf, %bb.bnq ], [ %.15544406, %bb.bny ] ; 6 uses
  %.14644242 = phi i32 [ %i.rtf, %bb.bnq ], [ %.14744243, %bb.bny ] ; 4 uses
  %.2043567 = phi i32 [ 0, %bb.bnq ], [ %i.rvc, %bb.bny ] ; 3 uses
  %.3843523 = phi i32 [ %.0.copyload.i53706, %bb.bnq ], [ %i.rvd, %bb.bny ] ; 2 uses
  %.543479 = phi i32 [ %i.rtk, %bb.bnq ], [ %.643480, %bb.bny ] ; 3 uses
  %i.rtm = zext i32 %.3843523 to i64
  %.val47203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rtn = getelementptr inbounds nuw i8, ptr %.val47203, i64 %i.rtm
  %.0.copyload.i53707 = load i32, ptr %i.rtn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53707) #7, !srcloc !19
  %i.rto = zext i32 %.0.copyload.i53707 to i64    ; 2 uses
  %.val47202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rtp = getelementptr inbounds nuw i8, ptr %.val47202, i64 %i.rto
  %i.rtq = getelementptr inbounds nuw i8, ptr %i.rtp, i64 4
  %.0.copyload.i53708 = load i32, ptr %i.rtq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53708) #7, !srcloc !19
  %.val47201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rtr = getelementptr inbounds nuw i8, ptr %.val47201, i64 %i.rto
  %.0.copyload.i53709 = load i32, ptr %i.rtr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53709) #7, !srcloc !19
  %i.rts = sub i32 %.0.copyload.i53708, %.0.copyload.i53709 ; 3 uses
  %i.rtt = icmp ult i32 %.14644242, %.543479
  br i1 %i.rtt, label %bb.bns, label %bb.bnt

bb.bns:                                           ; preds = %bb.bnr
  %i.rtu = zext i32 %.2043567 to i64
  %i.rtv = zext i32 %i.rts to i64
  %i.rtw = shl nuw i64 %i.rtv, 32
  %i.rtx = or disjoint i64 %i.rtw, %i.rtu
  %i.rty = zext i32 %.14644242 to i64
  %.val50782 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rtz = getelementptr inbounds nuw i8, ptr %.val50782, i64 %i.rty
  store i64 %i.rtx, ptr %i.rtz, align 1
  %i.rua = add i32 %.14644242, 8                  ; 2 uses
  %.val49537 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rub = getelementptr inbounds nuw i8, ptr %.val49537, i64 %i.rtg
  store i32 %i.rua, ptr %i.rub, align 1
  br label %bb.bny

bb.bnt:                                           ; preds = %bb.bnr
  %i.ruc = sub i32 %.14644242, %.15444405         ; 3 uses
  %i.rud = ashr i32 %i.ruc, 3
  %i.rue = add nsw i32 %i.rud, 1                  ; 2 uses
  %i.ruf = icmp ugt i32 %i.rue, 536870911
  br i1 %i.ruf, label %.loopexit54247, label %bb.bnu

bb.bnu:                                           ; preds = %bb.bnt
  %i.rug = sub i32 %.543479, %.15444405           ; 2 uses
  %i.ruh = ashr i32 %i.rug, 2
  %i.rui = tail call i32 @llvm.umax.i32(i32 %i.ruh, i32 %i.rue)
  %i.ruj = icmp ugt i32 %i.rug, 2147483639
  %i.ruk = select i1 %i.ruj, i32 536870911, i32 %i.rui ; 3 uses
  %.not46550 = icmp eq i32 %i.ruk, 0
  br i1 %.not46550, label %._crit_edge55836, label %bb.bnv

bb.bnv:                                           ; preds = %bb.bnu
  %i.rul = icmp ugt i32 %i.ruk, 536870911
  br i1 %i.rul, label %.loopexit54248, label %bb.bnw

bb.bnw:                                           ; preds = %bb.bnv
  %i.rum = shl nuw i32 %i.ruk, 3                  ; 2 uses
  %i.run = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.rum) #7
  br label %._crit_edge55836

._crit_edge55836:                                 ; preds = %bb.bnu, %bb.bnw
  %.pre-phi55885 = phi i32 [ %i.rum, %bb.bnw ], [ 0, %bb.bnu ]
  %.3643165 = phi i32 [ %i.run, %bb.bnw ], [ 0, %bb.bnu ] ; 2 uses
  %i.ruo = and i32 %i.ruc, -8
  %i.rup = add i32 %.3643165, %i.ruo              ; 2 uses
  %i.ruq = zext i32 %.2043567 to i64
  %i.rur = zext i32 %i.rts to i64
  %i.rus = shl nuw i64 %i.rur, 32
  %i.rut = or disjoint i64 %i.rus, %i.ruq
  %i.ruu = zext i32 %i.rup to i64
  %.val50781 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ruv = getelementptr inbounds nuw i8, ptr %.val50781, i64 %i.ruu
  store i64 %i.rut, ptr %i.ruv, align 1
  %i.ruw = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.3643165, i32 noundef %.15444405, i32 noundef %i.ruc) #7 ; 4 uses
  %i.rux = add i32 %i.ruw, %.pre-phi55885         ; 3 uses
  %.val49536 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ruy = getelementptr inbounds nuw i8, ptr %.val49536, i64 %i.rsu
  store i32 %i.rux, ptr %i.ruy, align 1
  %i.ruz = add i32 %i.rup, 8                      ; 3 uses
  %.val49535 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rva = getelementptr inbounds nuw i8, ptr %.val49535, i64 %i.rtg
  store i32 %i.ruz, ptr %i.rva, align 1
  %.val49534 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rvb = getelementptr inbounds nuw i8, ptr %.val49534, i64 %i.rsw
  store i32 %i.ruw, ptr %i.rvb, align 1
  %.not46551 = icmp eq i32 %.15444405, 0
  br i1 %.not46551, label %bb.bny, label %bb.bnx

bb.bnx:                                           ; preds = %._crit_edge55836
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.15444405) #7
  br label %bb.bny

bb.bny:                                           ; preds = %._crit_edge55836, %bb.bnx, %bb.bns
  %.15544406 = phi i32 [ %.15444405, %bb.bns ], [ %i.ruw, %bb.bnx ], [ %i.ruw, %._crit_edge55836 ]
  %.14744243 = phi i32 [ %i.rua, %bb.bns ], [ %i.ruz, %bb.bnx ], [ %i.ruz, %._crit_edge55836 ]
  %.643480 = phi i32 [ %.543479, %bb.bns ], [ %i.rux, %bb.bnx ], [ %i.rux, %._crit_edge55836 ]
  %i.rvc = add i32 %i.rts, %.2043567
  %i.rvd = add i32 %.3843523, 4                   ; 2 uses
  %.not46552 = icmp eq i32 %i.rvd, %.0.copyload.i53705
  br i1 %.not46552, label %.loopexit54260, label %bb.bnr

end_hunk_0
