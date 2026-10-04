Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a

.preheader54367.6:                                ; preds = %.preheader54367.5
  %i.lqu = zext i32 %i.lqt to i64
  %.val49792.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqv = getelementptr inbounds nuw i8, ptr %.val49792.6, i64 %i.lqu
  store i32 -4, ptr %i.lqv, align 1
  %i.lqw = add i32 %i.lpv, 448
  br label %.loopexit54368

.loopexit54368:                                   ; preds = %.preheader54367, %.preheader54367.1, %.preheader54367.2, %.preheader54367.3, %.preheader54367.4, %.preheader54367.5, %.preheader54367.6, %bb.aud
  %.3844134 = phi i32 [ %i.lpv, %bb.aud ], [ %i.lqe, %.preheader54367 ], [ %i.lqh, %.preheader54367.1 ], [ %i.lqk, %.preheader54367.2 ], [ %i.lqn, %.preheader54367.3 ], [ %i.lqq, %.preheader54367.4 ], [ %i.lqt, %.preheader54367.5 ], [ %i.lqw, %.preheader54367.6 ]
  %i.lqx = icmp samesign ult i32 %i.lqa, 7
  br i1 %i.lqx, label %.loopexit54366, label %bb.aue

bb.aue:                                           ; preds = %.loopexit54368
  %i.lqy = shl i32 %.0.copyload.i52832, 6
  %i.lqz = add i32 %i.lqy, %i.lpv
  br label %bb.auf

bb.auf:                                           ; preds = %bb.auf, %bb.aue
  %.3944135 = phi i32 [ %.3844134, %bb.aue ], [ %i.lrq, %bb.auf ] ; 2 uses
  %i.lra = zext i32 %.3944135 to i64              ; 8 uses
  %.val49791 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrb = getelementptr inbounds nuw i8, ptr %.val49791, i64 %i.lra
  %i.lrc = getelementptr inbounds nuw i8, ptr %i.lrb, i64 448
  store i32 -4, ptr %i.lrc, align 1
  %.val49790 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrd = getelementptr inbounds nuw i8, ptr %.val49790, i64 %i.lra
  %i.lre = getelementptr inbounds nuw i8, ptr %i.lrd, i64 384
  store i32 -4, ptr %i.lre, align 1
  %.val49789 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrf = getelementptr inbounds nuw i8, ptr %.val49789, i64 %i.lra
  %i.lrg = getelementptr inbounds nuw i8, ptr %i.lrf, i64 320
  store i32 -4, ptr %i.lrg, align 1
  %.val49788 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrh = getelementptr inbounds nuw i8, ptr %.val49788, i64 %i.lra
  %i.lri = getelementptr inbounds nuw i8, ptr %i.lrh, i64 256
  store i32 -4, ptr %i.lri, align 1
  %.val49787 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrj = getelementptr inbounds nuw i8, ptr %.val49787, i64 %i.lra
  %i.lrk = getelementptr inbounds nuw i8, ptr %i.lrj, i64 192
  store i32 -4, ptr %i.lrk, align 1
  %.val49786 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrl = getelementptr inbounds nuw i8, ptr %.val49786, i64 %i.lra
  %i.lrm = getelementptr inbounds nuw i8, ptr %i.lrl, i64 128
  store i32 -4, ptr %i.lrm, align 1
  %.val49785 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrn = getelementptr inbounds nuw i8, ptr %.val49785, i64 %i.lra
  %i.lro = getelementptr inbounds nuw i8, ptr %i.lrn, i64 64
  store i32 -4, ptr %i.lro, align 1
  %.val49784 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrp = getelementptr inbounds nuw i8, ptr %.val49784, i64 %i.lra
  store i32 -4, ptr %i.lrp, align 1
  %i.lrq = add i32 %.3944135, 512                 ; 2 uses
  %.not46004 = icmp eq i32 %i.lrq, %i.lqz
  br i1 %.not46004, label %.loopexit54366, label %bb.auf

bb.aug:                                           ; preds = %bb.auc
  %i.lrr = shl i32 %.0.copyload.i52827, 6
  %i.lrs = add i32 %i.lrr, %.0.copyload.i52826
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hei, i32 noundef %.0.copyload.i52826, i32 noundef %i.lrs) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52826) #7
  %.val48008 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrt = getelementptr inbounds nuw i8, ptr %.val48008, i64 %i.hek
  %.0.copyload.i52833 = load i32, ptr %i.lrt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52833) #7, !srcloc !19
  %.val48007 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lru = getelementptr inbounds nuw i8, ptr %.val48007, i64 %i.hej
  %.0.copyload.i52834 = load i32, ptr %i.lru, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52834) #7, !srcloc !19
  br label %.loopexit54366

.loopexit54366:                                   ; preds = %bb.auf, %.loopexit54368, %bb.aug
  %.10044351 = phi i32 [ %i.lpv, %.loopexit54368 ], [ %.0.copyload.i52833, %bb.aug ], [ %i.lpv, %bb.auf ] ; 2 uses
  %.843682 = phi i32 [ %.0.copyload.i52832, %.loopexit54368 ], [ %.0.copyload.i52834, %bb.aug ], [ %.0.copyload.i52832, %bb.auf ]
  %i.lrv = add i32 %.843682, -1                   ; 2 uses
  %i.lrw = lshr i32 %i.lns, 4
  %i.lrx = lshr i32 %i.lns, 9
  %i.lry = xor i32 %i.lrw, %i.lrx
  %i.lrz = and i32 %i.lrv, %i.lry                 ; 2 uses
  %i.lsa = shl i32 %i.lrz, 6
  %i.lsb = add i32 %i.lsa, %.10044351             ; 3 uses
  %i.lsc = zext i32 %i.lsb to i64
  %.val48006 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsd = getelementptr inbounds nuw i8, ptr %.val48006, i64 %i.lsc
  %.0.copyload.i52835 = load i32, ptr %i.lsd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52835) #7, !srcloc !19
  %.not46005 = icmp eq i32 %.0.copyload.i52835, %i.lns
  br i1 %.not46005, label %.loopexit54365, label %.preheader54364

.preheader54364:                                  ; preds = %.loopexit54366, %bb.aui
  %.4044136 = phi i32 [ %.0.copyload.i52836, %bb.aui ], [ %.0.copyload.i52835, %.loopexit54366 ] ; 2 uses
  %.115 = phi i32 [ %i.lsk, %bb.aui ], [ 1, %.loopexit54366 ] ; 2 uses
  %.943683 = phi i32 [ %i.lsi, %bb.aui ], [ 0, %.loopexit54366 ] ; 3 uses
  %.2343508 = phi i32 [ %i.lsn, %bb.aui ], [ %i.lsb, %.loopexit54366 ] ; 2 uses
  %.1843391 = phi i32 [ %i.lsl, %bb.aui ], [ %i.lrz, %.loopexit54366 ]
  %i.lse = icmp eq i32 %.4044136, -4
  %.not46008 = icmp eq i32 %.943683, 0            ; 2 uses
  br i1 %i.lse, label %bb.auh, label %bb.aui

bb.auh:                                           ; preds = %.preheader54364
  %i.lsf = select i1 %.not46008, i32 %.2343508, i32 %.943683
  br label %bb.auj

bb.aui:                                           ; preds = %.preheader54364
  %i.lsg = icmp eq i32 %.4044136, -8
  %i.lsh = select i1 %i.lsg, i1 %.not46008, i1 false
  %i.lsi = select i1 %i.lsh, i32 %.2343508, i32 %.943683
  %i.lsj = add i32 %.1843391, %.115
  %i.lsk = add i32 %.115, 1
  %i.lsl = and i32 %i.lsj, %i.lrv                 ; 2 uses
  %i.lsm = shl i32 %i.lsl, 6
  %i.lsn = add i32 %i.lsm, %.10044351             ; 3 uses
  %i.lso = zext i32 %i.lsn to i64
  %.val48005 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsp = getelementptr inbounds nuw i8, ptr %.val48005, i64 %i.lso
  %.0.copyload.i52836 = load i32, ptr %i.lsp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52836) #7, !srcloc !19
  %.not46007 = icmp eq i32 %i.lns, %.0.copyload.i52836
  br i1 %.not46007, label %.loopexit54365, label %.preheader54364

bb.auj:                                           ; preds = %bb.aub, %bb.auh
  %.2543510 = phi i32 [ %i.lsf, %bb.auh ], [ %.2243507, %bb.aub ] ; 2 uses
  %i.lsq = zext i32 %.2543510 to i64
  %.val48004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsr = getelementptr inbounds nuw i8, ptr %.val48004, i64 %i.lsq
  %.0.copyload.i52837 = load i32, ptr %i.lsr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52837) #7, !srcloc !19
  br label %.loopexit54365

.loopexit54365:                                   ; preds = %bb.aui, %.loopexit54366, %bb.auj
  %.2643511 = phi i32 [ %.2543510, %bb.auj ], [ %i.lsb, %.loopexit54366 ], [ %i.lsn, %bb.aui ]
  %.2043149 = phi i32 [ %.0.copyload.i52837, %bb.auj ], [ %i.lns, %.loopexit54366 ], [ %i.lns, %bb.aui ]
  %.val48003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lss = getelementptr inbounds nuw i8, ptr %.val48003, i64 %i.hel
  %.0.copyload.i52838 = load i32, ptr %i.lss, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52838) #7, !srcloc !19
  %i.lst = add i32 %.0.copyload.i52838, 1
  %.val49783 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsu = getelementptr inbounds nuw i8, ptr %.val49783, i64 %i.hel
  store i32 %i.lst, ptr %i.lsu, align 1
  %.not46009 = icmp eq i32 %.2043149, -4
  br i1 %.not46009, label %bb.aul, label %bb.auk

bb.auk:                                           ; preds = %.loopexit54365
  %.val48002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsv = getelementptr inbounds nuw i8, ptr %.val48002, i64 %i.hem
  %.0.copyload.i52839 = load i32, ptr %i.lsv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52839) #7, !srcloc !19
  %i.lsw = add i32 %.0.copyload.i52839, -1
  %.val49782 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsx = getelementptr inbounds nuw i8, ptr %.val49782, i64 %i.hem
  store i32 %i.lsw, ptr %i.lsx, align 1
  br label %bb.aul

bb.aul:                                           ; preds = %bb.auk, %.loopexit54365
  %i.lsy = zext i32 %.2643511 to i64              ; 10 uses
  %.val50854 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsz = getelementptr inbounds nuw i8, ptr %.val50854, i64 %i.lsy
  %i.lta = getelementptr inbounds nuw i8, ptr %i.lsz, i64 4
  store i64 0, ptr %i.lta, align 1
  %.val49781 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltb = getelementptr inbounds nuw i8, ptr %.val49781, i64 %i.lsy
  store i32 %i.lns, ptr %i.ltb, align 1
  %.val50853 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltc = getelementptr inbounds nuw i8, ptr %.val50853, i64 %i.lsy
  %i.ltd = getelementptr inbounds nuw i8, ptr %i.ltc, i64 12
  store i64 0, ptr %i.ltd, align 1
  %.val50852 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lte = getelementptr inbounds nuw i8, ptr %.val50852, i64 %i.lsy
  %i.ltf = getelementptr inbounds nuw i8, ptr %i.lte, i64 20
  store i64 0, ptr %i.ltf, align 1
  %.val50851 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltg = getelementptr inbounds nuw i8, ptr %.val50851, i64 %i.lsy
  %i.lth = getelementptr inbounds nuw i8, ptr %i.ltg, i64 28
  store i64 0, ptr %i.lth, align 1
  %.val50850 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lti = getelementptr inbounds nuw i8, ptr %.val50850, i64 %i.lsy
  %i.ltj = getelementptr inbounds nuw i8, ptr %i.lti, i64 36
  store i64 0, ptr %i.ltj, align 1
  %.val50849 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltk = getelementptr inbounds nuw i8, ptr %.val50849, i64 %i.lsy
  %i.ltl = getelementptr inbounds nuw i8, ptr %i.ltk, i64 44
  store i64 0, ptr %i.ltl, align 1
  %.val50848 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltm = getelementptr inbounds nuw i8, ptr %.val50848, i64 %i.lsy
  %i.ltn = getelementptr inbounds nuw i8, ptr %i.ltm, i64 52
  store i64 0, ptr %i.ltn, align 1
  %.val49780 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lto = getelementptr inbounds nuw i8, ptr %.val49780, i64 %i.lsy
  %i.ltp = getelementptr inbounds nuw i8, ptr %i.lto, i64 60
  store i32 0, ptr %i.ltp, align 1
  br label %.loopexit54370

.loopexit54370:                                   ; preds = %bb.aty, %bb.atw, %bb.aul
  %.pre-phi55804.a = phi i64 [ %i.lsy, %bb.aul ], [ %i.loc, %bb.atw ], [ %i.lop, %bb.aty ] ; 4 uses
  %.val48001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltq = getelementptr inbounds nuw i8, ptr %.val48001, i64 %i.lnm
  %.0.copyload.i52840 = load i32, ptr %i.ltq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52840) #7, !srcloc !19
  %i.ltr = add i32 %.0.copyload.i52840, 31
  %i.lts = lshr i32 %i.ltr, 5                     ; 2 uses
  %i.ltt = add nuw nsw i64 %.pre-phi55804.a, 36   ; 2 uses
  %.val48000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltu = getelementptr inbounds nuw i8, ptr %.val48000, i64 %i.ltt
  %.0.copyload.i52841 = load i32, ptr %i.ltu, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52841) #7, !srcloc !19
  %i.ltv = add i32 %.0.copyload.i52841, 31        ; 2 uses
  %i.ltw = lshr i32 %i.ltv, 5                     ; 9 uses
  %i.ltx = tail call i32 @llvm.umin.i32(i32 %i.lts, i32 %i.ltw) ; 3 uses
  %.not46010 = icmp eq i32 %i.ltx, 0
  br i1 %.not46010, label %.loopexit54363, label %bb.aum

bb.aum:                                           ; preds = %.loopexit54370
  %.val47999 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lty = getelementptr inbounds nuw i8, ptr %.val47999, i64 %i.lnl
  %i.ltz = getelementptr inbounds nuw i8, ptr %i.lty, i64 40
  %.0.copyload.i52842 = load i32, ptr %i.ltz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52842) #7, !srcloc !19
  %.val47998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lua = getelementptr inbounds nuw i8, ptr %.val47998, i64 %.pre-phi55804.a
  %i.lub = getelementptr inbounds nuw i8, ptr %i.lua, i64 28
  %.0.copyload.i52843 = load i32, ptr %i.lub, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52843) #7, !srcloc !19
  %i.luc = zext nneg i32 %i.ltx to i64
  br label %bb.aun

bb.aun:                                           ; preds = %bb.auo, %bb.aum
  %indvars.iv55674 = phi i64 [ %indvars.iv.next55675, %bb.auo ], [ 0, %bb.aum ] ; 2 uses
  %indvars.iv55674.tr = trunc nuw nsw i64 %indvars.iv55674 to i32
  %i.lud = shl nuw nsw i32 %indvars.iv55674.tr, 2 ; 2 uses
  %i.lue = add i32 %i.lud, %.0.copyload.i52843
  %i.luf = zext i32 %i.lue to i64
  %.val47997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lug = getelementptr inbounds nuw i8, ptr %.val47997, i64 %i.luf
  %.0.copyload.i52844 = load i32, ptr %i.lug, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52844) #7, !srcloc !19
  %i.luh = add i32 %i.lud, %.0.copyload.i52842
  %i.lui = zext i32 %i.luh to i64
  %.val47996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luj = getelementptr inbounds nuw i8, ptr %.val47996, i64 %i.lui
  %.0.copyload.i52845 = load i32, ptr %i.luj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52845) #7, !srcloc !19
  %i.luk = xor i32 %.0.copyload.i52845, -1
  %i.lul = and i32 %.0.copyload.i52844, %i.luk
  %.not46011 = icmp eq i32 %i.lul, 0
  br i1 %.not46011, label %bb.auo, label %.loopexit54361

bb.auo:                                           ; preds = %bb.aun
  %indvars.iv.next55675 = add nuw nsw i64 %indvars.iv55674, 1 ; 2 uses
  %.not46012 = icmp eq i64 %indvars.iv.next55675, %i.luc
  br i1 %.not46012, label %.loopexit54363, label %bb.aun

.loopexit54363:                                   ; preds = %bb.auo, %.loopexit54370
  %.not46013 = icmp samesign ult i32 %i.lts, %i.ltw
  br i1 %.not46013, label %bb.aup, label %.loopexit54361

bb.aup:                                           ; preds = %.loopexit54363
  %.val47995 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lum = getelementptr inbounds nuw i8, ptr %.val47995, i64 %.pre-phi55804.a
  %i.lun = getelementptr inbounds nuw i8, ptr %i.lum, i64 28
  %.0.copyload.i52846 = load i32, ptr %i.lun, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52846) #7, !srcloc !19
  br label %bb.auq

bb.auq:                                           ; preds = %bb.aur, %bb.aup
  %.4144137 = phi i32 [ %i.ltx, %bb.aup ], [ %6, %bb.aur ] ; 2 uses
  %i.luo = shl i32 %.4144137, 2
  %i.lup = add i32 %i.luo, %.0.copyload.i52846
  %i.luq = zext i32 %i.lup to i64
  %.val47994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lur = getelementptr inbounds nuw i8, ptr %.val47994, i64 %i.luq
  %.0.copyload.i52847 = load i32, ptr %i.lur, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52847) #7, !srcloc !19
  %.not46014 = icmp eq i32 %.0.copyload.i52847, 0
  br i1 %.not46014, label %bb.aur, label %.loopexit54361

bb.aur:                                           ; preds = %bb.auq
  %6 = add i32 %.4144137, 1                       ; 2 uses
  %.not46015 = icmp eq i32 %i.ltw, %6
  br i1 %.not46015, label %.loopexit54361, label %bb.auq

.loopexit54361:                                   ; preds = %bb.aun, %bb.auq, %bb.aur, %.loopexit54363
  %.343196 = phi i32 [ %.243195, %bb.aur ], [ %.243195, %.loopexit54363 ], [ 1, %bb.auq ], [ 1, %bb.aun ] ; 2 uses
  %.not46016 = icmp ult i32 %.0.copyload.i52840, %.0.copyload.i52841
  br i1 %.not46016, label %bb.aus, label %bb.avm

bb.aus:                                           ; preds = %.loopexit54361
  %.val47993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lus = getelementptr inbounds nuw i8, ptr %.val47993, i64 %i.lnn
  %.0.copyload.i52848 = load i32, ptr %i.lus, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52848) #7, !srcloc !19
  %i.lut = shl i32 %.0.copyload.i52848, 5
  %.not46017 = icmp ult i32 %i.lut, %.0.copyload.i52841
  br i1 %.not46017, label %bb.aut, label %bb.avb

bb.aut:                                           ; preds = %bb.aus
  %.val47992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luu = getelementptr inbounds nuw i8, ptr %.val47992, i64 %i.lno
  %.0.copyload.i52849 = load i32, ptr %i.luu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52849) #7, !srcloc !19
  %i.luv = shl i32 %.0.copyload.i52848, 1
  %i.luw = tail call i32 @llvm.umax.i32(i32 %i.luv, i32 %i.ltw) ; 6 uses
  %i.lux = shl i32 %i.luw, 2
  %i.luy = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52849, i32 noundef %i.lux) #7 ; 4 uses
  %.not46018 = icmp eq i32 %i.luy, 0
  br i1 %.not46018, label %bb.auu, label %bb.auv

bb.auu:                                           ; preds = %bb.aut
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.auv

bb.auv:                                           ; preds = %bb.auu, %bb.aut
  %.val49779 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luz = getelementptr inbounds nuw i8, ptr %.val49779, i64 %i.lnn
  store i32 %i.luw, ptr %i.luz, align 1
  %.val49778 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lva = getelementptr inbounds nuw i8, ptr %.val49778, i64 %i.lno
  store i32 %i.luy, ptr %i.lva, align 1
  %.val47991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvb = getelementptr inbounds nuw i8, ptr %.val47991, i64 %i.lnm
  %.0.copyload.i52850 = load i32, ptr %i.lvb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52850) #7, !srcloc !19
  %i.lvc = add i32 %.0.copyload.i52850, 31
  %i.lvd = lshr i32 %i.lvc, 5                     ; 4 uses
  %i.lve = icmp ult i32 %i.lvd, %i.luw
  br i1 %i.lve, label %bb.auw, label %bb.aux

bb.auw:                                           ; preds = %bb.auv
  %i.lvf = shl nuw nsw i32 %i.lvd, 2
  %i.lvg = add i32 %i.lvf, %i.luy
  %i.lvh = sub nuw i32 %i.luw, %i.lvd
  %i.lvi = shl i32 %i.lvh, 2
  %i.lvj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lvg, i32 noundef 0, i32 noundef %i.lvi) #7 ; 0 uses
  br label %bb.aux

bb.aux:                                           ; preds = %bb.auw, %bb.auv
  %i.lvk = and i32 %.0.copyload.i52850, 31        ; 2 uses
  %.not46019 = icmp eq i32 %i.lvk, 0
  br i1 %.not46019, label %bb.auz, label %bb.auy

bb.auy:                                           ; preds = %bb.aux
  %i.lvl = shl nuw nsw i32 %i.lvd, 2
  %i.lvm = add i32 %i.luy, -4
  %i.lvn = add i32 %i.lvm, %i.lvl
  %i.lvo = zext i32 %i.lvn to i64                 ; 2 uses
  %.val47990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvp = getelementptr inbounds nuw i8, ptr %.val47990, i64 %i.lvo
  %.0.copyload.i52851 = load i32, ptr %i.lvp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52851) #7, !srcloc !19
  %i.lvq = shl nsw i32 -1, %i.lvk
  %i.lvr = xor i32 %i.lvq, -1
  %i.lvs = and i32 %.0.copyload.i52851, %i.lvr
  %.val49777 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvt = getelementptr inbounds nuw i8, ptr %.val49777, i64 %i.lvo
  store i32 %i.lvs, ptr %i.lvt, align 1
  br label %bb.auz

bb.auz:                                           ; preds = %bb.auy, %bb.aux
  %i.lvu = icmp eq i32 %.0.copyload.i52848, %i.luw
  br i1 %i.lvu, label %bb.avb, label %bb.ava

bb.ava:                                           ; preds = %bb.auz
  %.val47989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvv = getelementptr inbounds nuw i8, ptr %.val47989, i64 %i.lno
  %.0.copyload.i52852 = load i32, ptr %i.lvv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52852) #7, !srcloc !19
  %i.lvw = shl i32 %.0.copyload.i52848, 2
  %i.lvx = add i32 %.0.copyload.i52852, %i.lvw
  %i.lvy = sub i32 %i.luw, %.0.copyload.i52848
  %i.lvz = shl i32 %i.lvy, 2
  %i.lwa = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lvx, i32 noundef 0, i32 noundef %i.lvz) #7 ; 0 uses
  br label %bb.avb

bb.avb:                                           ; preds = %bb.auz, %bb.aus, %bb.ava
  %.val47988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwb = getelementptr inbounds nuw i8, ptr %.val47988, i64 %i.lnm
  %.0.copyload.i52853 = load i32, ptr %i.lwb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52853) #7, !srcloc !19
  %.not46020 = icmp ult i32 %.0.copyload.i52853, %.0.copyload.i52841
  br i1 %.not46020, label %bb.avc, label %bb.avg

bb.avc:                                           ; preds = %bb.avb
  %.val47987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwc = getelementptr inbounds nuw i8, ptr %.val47987, i64 %i.lnn
  %.0.copyload.i52854 = load i32, ptr %i.lwc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52854) #7, !srcloc !19
  %i.lwd = add i32 %.0.copyload.i52853, 31
  %i.lwe = lshr i32 %i.lwd, 5                     ; 4 uses
  %i.lwf = icmp ugt i32 %.0.copyload.i52854, %i.lwe
  br i1 %i.lwf, label %bb.avd, label %bb.ave

bb.avd:                                           ; preds = %bb.avc
  %.val47986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwg = getelementptr inbounds nuw i8, ptr %.val47986, i64 %i.lnl
  %i.lwh = getelementptr inbounds nuw i8, ptr %i.lwg, i64 40
  %.0.copyload.i52855 = load i32, ptr %i.lwh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52855) #7, !srcloc !19
  %i.lwi = shl nuw nsw i32 %i.lwe, 2
  %i.lwj = add i32 %.0.copyload.i52855, %i.lwi
  %i.lwk = sub nuw i32 %.0.copyload.i52854, %i.lwe
  %i.lwl = shl i32 %i.lwk, 2
  %i.lwm = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lwj, i32 noundef 0, i32 noundef %i.lwl) #7 ; 0 uses
  %.val47985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwn = getelementptr inbounds nuw i8, ptr %.val47985, i64 %i.lnm
  %.0.copyload.i52856 = load i32, ptr %i.lwn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52856) #7, !srcloc !19
  br label %bb.ave

bb.ave:                                           ; preds = %bb.avd, %bb.avc
  %.4044037 = phi i32 [ %.0.copyload.i52856, %bb.avd ], [ %.0.copyload.i52853, %bb.avc ] ; 3 uses
  %i.lwo = and i32 %.4044037, 31                  ; 2 uses
  %.not46021 = icmp eq i32 %i.lwo, 0
  br i1 %.not46021, label %bb.avg, label %bb.avf

bb.avf:                                           ; preds = %bb.ave
  %.val47984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwp = getelementptr inbounds nuw i8, ptr %.val47984, i64 %i.lnl
  %i.lwq = getelementptr inbounds nuw i8, ptr %i.lwp, i64 40
  %.0.copyload.i52857 = load i32, ptr %i.lwq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52857) #7, !srcloc !19
  %i.lwr = shl nuw nsw i32 %i.lwe, 2
  %i.lws = add nsw i32 %i.lwr, -4
  %i.lwt = add i32 %i.lws, %.0.copyload.i52857
  %i.lwu = zext i32 %i.lwt to i64                 ; 2 uses
  %.val47983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwv = getelementptr inbounds nuw i8, ptr %.val47983, i64 %i.lwu
  %.0.copyload.i52858 = load i32, ptr %i.lwv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52858) #7, !srcloc !19
  %i.lww = shl nsw i32 -1, %i.lwo
  %i.lwx = xor i32 %i.lww, -1
  %i.lwy = and i32 %.0.copyload.i52858, %i.lwx
  %.val49776 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwz = getelementptr inbounds nuw i8, ptr %.val49776, i64 %i.lwu
  store i32 %i.lwy, ptr %i.lwz, align 1
  br label %bb.avg

bb.avg:                                           ; preds = %bb.ave, %bb.avb, %bb.avf
  %.4144038 = phi i32 [ %.0.copyload.i52853, %bb.avb ], [ %.4044037, %bb.ave ], [ %.4044037, %bb.avf ]
  %.val49775 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxa = getelementptr inbounds nuw i8, ptr %.val49775, i64 %i.lnm
  store i32 %.0.copyload.i52841, ptr %i.lxa, align 1
  %.not46022 = icmp ugt i32 %.4144038, %.0.copyload.i52841
  br i1 %.not46022, label %bb.avh, label %bb.avl

bb.avh:                                           ; preds = %bb.avg
  %.val47982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxb = getelementptr inbounds nuw i8, ptr %.val47982, i64 %i.lnn
  %.0.copyload.i52859 = load i32, ptr %i.lxb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52859) #7, !srcloc !19
  %i.lxc = icmp ult i32 %i.ltw, %.0.copyload.i52859
  br i1 %i.lxc, label %bb.avi, label %bb.avj

bb.avi:                                           ; preds = %bb.avh
  %.val47981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxd = getelementptr inbounds nuw i8, ptr %.val47981, i64 %i.lnl
  %i.lxe = getelementptr inbounds nuw i8, ptr %i.lxd, i64 40
  %.0.copyload.i52860 = load i32, ptr %i.lxe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52860) #7, !srcloc !19
  %i.lxf = shl nuw nsw i32 %i.ltw, 2
  %i.lxg = add i32 %.0.copyload.i52860, %i.lxf
  %i.lxh = sub nuw i32 %.0.copyload.i52859, %i.ltw
  %i.lxi = shl i32 %i.lxh, 2
  %i.lxj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lxg, i32 noundef 0, i32 noundef %i.lxi) #7 ; 0 uses
  %.val47980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxk = getelementptr inbounds nuw i8, ptr %.val47980, i64 %i.lnm
  %.0.copyload.i52861 = load i32, ptr %i.lxk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52861) #7, !srcloc !19
  br label %bb.avj

bb.avj:                                           ; preds = %bb.avi, %bb.avh
  %.116 = phi i32 [ %.0.copyload.i52861, %bb.avi ], [ %.0.copyload.i52841, %bb.avh ] ; 3 uses
  %i.lxl = and i32 %.116, 31                      ; 2 uses
  %.not46023 = icmp eq i32 %i.lxl, 0
  br i1 %.not46023, label %bb.avl, label %bb.avk

bb.avk:                                           ; preds = %bb.avj
  %.val47979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxm = getelementptr inbounds nuw i8, ptr %.val47979, i64 %i.lnl
  %i.lxn = getelementptr inbounds nuw i8, ptr %i.lxm, i64 40
end_hunk_0
