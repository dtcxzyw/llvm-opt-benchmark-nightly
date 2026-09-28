Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
bb.ahp:                                           ; preds = %bb.aho
  %.val48348 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ikc = getelementptr inbounds nuw i8, ptr %.val48348, i64 %i.heh
  %i.ikd = getelementptr inbounds nuw i8, ptr %i.ikc, i64 4
  %.0.copyload.i52445 = load i32, ptr %i.ikd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52445) #7, !srcloc !19
  %i.ike = add i32 %.0.copyload.i52444, -1        ; 2 uses
  %i.ikf = lshr i32 %.0.copyload.i52443, 4
  %i.ikg = lshr i32 %.0.copyload.i52443, 9
  %i.ikh = xor i32 %i.ikf, %i.ikg
  %i.iki = and i32 %i.ike, %i.ikh                 ; 2 uses
  %i.ikj = shl i32 %i.iki, 6
  %i.ikk = add i32 %.0.copyload.i52445, %i.ikj    ; 3 uses
  %i.ikl = zext i32 %i.ikk to i64
  %.val48347 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ikm = getelementptr inbounds nuw i8, ptr %.val48347, i64 %i.ikl
  %.0.copyload.i52446 = load i32, ptr %i.ikm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52446) #7, !srcloc !19
  %i.ikn = icmp eq i32 %.0.copyload.i52443, %.0.copyload.i52446
  br i1 %i.ikn, label %.loopexit54593, label %.preheader54592

.preheader54592:                                  ; preds = %bb.ahp, %bb.ahq
  %.1144107 = phi i32 [ %i.ikv, %bb.ahq ], [ %i.ikk, %bb.ahp ] ; 2 uses
  %.1443499 = phi i32 [ %i.ikq, %bb.ahq ], [ 0, %bb.ahp ] ; 3 uses
  %.343245 = phi i32 [ %i.iks, %bb.ahq ], [ 1, %bb.ahp ] ; 2 uses
  %.143219 = phi i32 [ %.0.copyload.i52447, %bb.ahq ], [ %.0.copyload.i52446, %bb.ahp ] ; 2 uses
  %.043193 = phi i32 [ %i.ikt, %bb.ahq ], [ %i.iki, %bb.ahp ]
  %.not45899 = icmp eq i32 %.143219, -4
  %.not45900 = icmp eq i32 %.1443499, 0           ; 2 uses
  br i1 %.not45899, label %bb.ahr, label %bb.ahq

bb.ahq:                                           ; preds = %.preheader54592
  %i.iko = icmp eq i32 %.143219, -8
  %i.ikp = select i1 %i.iko, i1 %.not45900, i1 false
  %i.ikq = select i1 %i.ikp, i32 %.1144107, i32 %.1443499
  %i.ikr = add i32 %.043193, %.343245
  %i.iks = add i32 %.343245, 1
  %i.ikt = and i32 %i.ikr, %i.ike                 ; 2 uses
  %i.iku = shl i32 %i.ikt, 6
  %i.ikv = add i32 %i.iku, %.0.copyload.i52445    ; 3 uses
  %i.ikw = zext i32 %i.ikv to i64
  %.val48346 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ikx = getelementptr inbounds nuw i8, ptr %.val48346, i64 %i.ikw
  %.0.copyload.i52447 = load i32, ptr %i.ikx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52447) #7, !srcloc !19
  %.not45902 = icmp eq i32 %.0.copyload.i52447, %.0.copyload.i52443
  br i1 %.not45902, label %.loopexit54593, label %.preheader54592

bb.ahr:                                           ; preds = %.preheader54592
  %i.iky = select i1 %.not45900, i32 %.1144107, i32 %.1443499
  br label %bb.ahs

bb.ahs:                                           ; preds = %bb.aho, %bb.ahr
  %.33 = phi i32 [ %i.iky, %bb.ahr ], [ 0, %bb.aho ]
  %i.ikz = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.hei, i32 noundef %.33, i32 noundef %i.ijx) #7
  br label %.loopexit54593

.loopexit54593:                                   ; preds = %bb.ahq, %bb.ahp, %bb.ahs
  %.1244108 = phi i32 [ %i.ikk, %bb.ahp ], [ %i.ikz, %bb.ahs ], [ %i.ikv, %bb.ahq ] ; 5 uses
  %i.ila = add i32 %.1244108, 4
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ila, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ilb = add i32 %.1244108, 16
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ilb, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ilc = add i32 %.1244108, 28
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ilc, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ild = add i32 %.1244108, 40
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ild, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ile = add i32 %.1244108, 52
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.ile, i32 noundef %.0.copyload.i52442, i32 noundef 0) #7
  %i.ilf = add i32 %.10143935, 4                  ; 2 uses
  %.not45903 = icmp eq i32 %i.iji, %i.ilf
  br i1 %.not45903, label %.preheader54642, label %bb.aho

bb.aht:                                           ; preds = %bb.ahj, %bb.ahi
  %i.ilg = add nuw nsw i64 %i.htf, 8              ; 3 uses
  %.val50885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilh = getelementptr inbounds nuw i8, ptr %.val50885, i64 %i.ilg
  store i64 %.0.copyload.i52345, ptr %i.ilh, align 1
  %.val50884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ili = getelementptr inbounds nuw i8, ptr %.val50884, i64 %i.htf
  %i.ilj = getelementptr inbounds nuw i8, ptr %i.ili, i64 376
  store i64 %.0.copyload.i52345, ptr %i.ilj, align 1
  %i.ilk = load i32, ptr %i.a, align 8, !tbaa !17 ; 4 uses
  %i.ill = add i32 %i.ilk, -48                    ; 3 uses
  store i32 %i.ill, ptr %i.a, align 8, !tbaa !17
  %i.ilm = add nuw nsw i64 %i.htf, 12             ; 2 uses
  %.val48345 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iln = getelementptr inbounds nuw i8, ptr %.val48345, i64 %i.ilm
  %.0.copyload.i52448 = load i32, ptr %i.iln, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52448) #7, !srcloc !19
  %.not46345 = icmp eq i32 %.0.copyload.i52448, 0
  br i1 %.not46345, label %..loopexit54619_crit_edge, label %bb.ahu

..loopexit54619_crit_edge:                        ; preds = %bb.aht
  %.pre55896 = zext i32 %i.ill to i64
  br label %.loopexit54619

bb.ahu:                                           ; preds = %bb.aht
  %.val48344 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilo = getelementptr inbounds nuw i8, ptr %.val48344, i64 %i.ilg
  %.0.copyload.i52449 = load i32, ptr %i.ilo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52449) #7, !srcloc !19
  %i.ilp = shl i32 %.0.copyload.i52448, 2
  %i.ilq = add i32 %.0.copyload.i52449, %i.ilp
  %i.ilr = add i32 %i.ilk, -44
  %i.ils = zext i32 %i.ilr to i64                 ; 2 uses
  %i.ilt = zext i32 %i.ill to i64                 ; 2 uses
  br label %bb.ahv

bb.ahv:                                           ; preds = %.loopexit54553, %bb.ahu
  %.4743778 = phi i32 [ %.0.copyload.i52449, %bb.ahu ], [ %i.iyp, %.loopexit54553 ] ; 2 uses
  %i.ilu = zext i32 %.4743778 to i64
  %.val48343 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilv = getelementptr inbounds nuw i8, ptr %.val48343, i64 %i.ilu
  %.0.copyload.i52450 = load i32, ptr %i.ilv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52450) #7, !srcloc !19
  %i.ilw = zext i32 %.0.copyload.i52450 to i64
  %.val48342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ilx = getelementptr inbounds nuw i8, ptr %.val48342, i64 %i.ilw
  %i.ily = getelementptr inbounds nuw i8, ptr %i.ilx, i64 40
  %.0.copyload.i52451 = load i32, ptr %i.ily, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52451) #7, !srcloc !19
  %i.ilz = add i32 %.0.copyload.i52450, 36        ; 2 uses
  %.not46346 = icmp eq i32 %.0.copyload.i52451, %i.ilz
  br i1 %.not46346, label %.loopexit54553, label %.preheader54552

.preheader54552:                                  ; preds = %bb.ahv, %.loopexit54403
  %.102 = phi i32 [ %.0.copyload.i52515, %.loopexit54403 ], [ %.0.copyload.i52451, %bb.ahv ] ; 4 uses
  %.val48341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ima = getelementptr inbounds nuw i8, ptr %.val48341, i64 %i.heh
  %.0.copyload.i52452 = load i32, ptr %i.ima, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52452) #7, !srcloc !19
  %i.imb = zext i32 %.0.copyload.i52452 to i64
  %.val48340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.imc = getelementptr inbounds nuw i8, ptr %.val48340, i64 %i.imb
  %i.imd = getelementptr inbounds nuw i8, ptr %i.imc, i64 12
  %.0.copyload.i52453 = load i32, ptr %i.imd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52453) #7, !srcloc !19
  %i.ime = load i32, ptr %i.hdo, align 4, !tbaa !25
  %i.imf = icmp ult i32 %.0.copyload.i52453, %i.ime
  br i1 %i.imf, label %bb.ahw, label %.critedge46778, !prof !26

bb.ahw:                                           ; preds = %.preheader54552
  %i.img = load ptr, ptr %i.hdn, align 8, !tbaa !27
  %i.imh = zext i32 %.0.copyload.i52453 to i64
  %i.imi = getelementptr inbounds nuw [24 x i8], ptr %i.img, i64 %i.imh ; 3 uses
  %i.imj = getelementptr inbounds nuw i8, ptr %i.imi, i64 8
  %i.imk = load ptr, ptr %i.imj, align 8, !tbaa !29 ; 2 uses
  %.not46347 = icmp eq ptr %i.imk, null
  br i1 %.not46347, label %.critedge46778, label %bb.ahx, !prof !30

bb.ahx:                                           ; preds = %bb.ahw
  %i.iml = load ptr, ptr %i.imi, align 8, !tbaa !32 ; 4 uses
  %i.imm = icmp eq ptr %i.heu, %i.iml
  br i1 %i.imm, label %func_types_eq.exit52457.thread, label %bb.ahy

bb.ahy:                                           ; preds = %bb.ahx
  %i.imn = icmp ne ptr %i.iml, null
  %or.cond.i52454 = and i1 %i.hev, %i.imn
  br i1 %or.cond.i52454, label %func_types_eq.exit52457, label %.critedge46778, !prof !33

func_types_eq.exit52457:                          ; preds = %bb.ahy
  %i.imo = load i128, ptr %i.heu, align 1
  %i.imp = load i128, ptr %i.iml, align 1
  %i.imq = xor i128 %i.imo, %i.imp
  %i.imr = getelementptr i8, ptr %i.heu, i64 16
  %i.ims = getelementptr i8, ptr %i.iml, i64 16
  %i.imt = load i128, ptr %i.imr, align 1
  %i.imu = load i128, ptr %i.ims, align 1
  %i.imv = xor i128 %i.imt, %i.imu
  %i.imw = or i128 %i.imq, %i.imv
  %i.imx = icmp ne i128 %i.imw, 0
  %i.imy = zext i1 %i.imx to i32
  %.not.i52456 = icmp eq i32 %i.imy, 0
  br i1 %.not.i52456, label %func_types_eq.exit52457.thread, label %.critedge46778, !prof !34

.critedge46778:                                   ; preds = %bb.ahy, %bb.ahw, %.preheader54552, %func_types_eq.exit52457
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit52457.thread:                   ; preds = %bb.ahx, %func_types_eq.exit52457
  %i.imz = getelementptr inbounds nuw i8, ptr %i.imi, i64 16
  %i.ina = load ptr, ptr %i.imz, align 8, !tbaa !35
  tail call void %i.imk(ptr noundef %i.ina, i32 noundef %i.auh, i32 noundef %.102) #7
  %.not46348 = icmp eq i32 %.102, 0
  br i1 %.not46348, label %.loopexit54403, label %bb.ahz

bb.ahz:                                           ; preds = %func_types_eq.exit52457.thread
  %i.inb = zext i32 %.102 to i64                  ; 6 uses
  %.val51132 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inc = getelementptr inbounds nuw i8, ptr %.val51132, i64 %i.inb
  %i.ind = getelementptr inbounds nuw i8, ptr %i.inc, i64 8
  %.0.copyload.i52458 = load i8, ptr %i.ind, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i52458) #7, !srcloc !21
  %.not46349 = icmp eq i8 %.0.copyload.i52458, 33
  br i1 %.not46349, label %bb.aia, label %.loopexit54403

bb.aia:                                           ; preds = %bb.ahz
  %.val48339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ine = getelementptr inbounds nuw i8, ptr %.val48339, i64 %i.hez
  %.0.copyload.i52459 = load i32, ptr %i.ine, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52459) #7, !srcloc !19
  %i.inf = add i32 %.0.copyload.i52459, 31        ; 3 uses
  %i.ing = icmp ult i32 %i.inf, 32
  br i1 %i.ing, label %.loopexit54409, label %bb.aib

bb.aib:                                           ; preds = %bb.aia
  %.val48338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inh = getelementptr inbounds nuw i8, ptr %.val48338, i64 %i.heh
  %i.ini = getelementptr inbounds nuw i8, ptr %i.inh, i64 1100
  %.0.copyload.i52460 = load i32, ptr %i.ini, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52460) #7, !srcloc !19
  %i.inj = zext i32 %.0.copyload.i52460 to i64
  %.val48337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ink = getelementptr inbounds nuw i8, ptr %.val48337, i64 %i.inj
  %.0.copyload.i52461 = load i32, ptr %i.ink, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52461) #7, !srcloc !19
  %.not46350 = icmp eq i32 %.0.copyload.i52461, 0
  br i1 %.not46350, label %bb.aic, label %bb.aix

bb.aic:                                           ; preds = %bb.aib
  %i.inl = lshr i32 %i.inf, 5                     ; 2 uses
  %i.inm = icmp ult i32 %i.inf, 64
  %i.inn = add nsw i32 %i.inl, -1
  %i.ino = select i1 %i.inm, i32 0, i32 %i.inn    ; 2 uses
  %wide.trip.count55716 = zext nneg i32 %i.ino to i64
  %exitcond5571757421 = icmp eq i32 %i.ino, 0
  br i1 %exitcond5571757421, label %.loopexit54409, label %.lr.ph57424

bb.aid:                                           ; preds = %.lr.ph57424
  %exitcond55717 = icmp eq i64 %indvars.iv.next55713, %wide.trip.count55716
  br i1 %exitcond55717, label %.loopexit54409, label %.lr.ph57424

.lr.ph57424:                                      ; preds = %bb.aic, %bb.aid
  %indvars.iv5571257422 = phi i64 [ %indvars.iv.next55713, %bb.aid ], [ 0, %bb.aic ]
  %indvars.iv.next55713 = add nuw nsw i64 %indvars.iv5571257422, 1 ; 3 uses
  %indvars55714 = trunc i64 %indvars.iv.next55713 to i32 ; 2 uses
  %i.inp = shl i32 %indvars55714, 2
  %i.inq = add i32 %i.inp, %.0.copyload.i52460
  %i.inr = zext i32 %i.inq to i64
  %.val48336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ins = getelementptr inbounds nuw i8, ptr %.val48336, i64 %i.inr
  %.0.copyload.i52462 = load i32, ptr %i.ins, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52462) #7, !srcloc !19
  %.not46351 = icmp eq i32 %.0.copyload.i52462, 0
  br i1 %.not46351, label %bb.aid, label %bb.aie

bb.aie:                                           ; preds = %.lr.ph57424
  %i.int = icmp ugt i32 %i.inl, %indvars55714
  br i1 %i.int, label %bb.aix, label %.loopexit54409

.loopexit54409:                                   ; preds = %bb.aid, %bb.aic, %bb.aie, %bb.aia
  %i.inu = add i32 %.0.copyload.i52459, 1         ; 5 uses
  %.val48335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inv = getelementptr inbounds nuw i8, ptr %.val48335, i64 %i.hfa
  %.0.copyload.i52463 = load i32, ptr %i.inv, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52463) #7, !srcloc !19
  %i.inw = shl i32 %.0.copyload.i52463, 5
  %.not46355 = icmp ugt i32 %i.inu, %i.inw
  br i1 %.not46355, label %bb.aif, label %bb.ain

bb.aif:                                           ; preds = %.loopexit54409
  %.val48334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inx = getelementptr inbounds nuw i8, ptr %.val48334, i64 %i.hfb
  %.0.copyload.i52464 = load i32, ptr %i.inx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52464) #7, !srcloc !19
  %i.iny = add i32 %.0.copyload.i52459, 32
  %i.inz = lshr i32 %i.iny, 5
  %i.ioa = shl i32 %.0.copyload.i52463, 1
  %i.iob = tail call i32 @llvm.umax.i32(i32 %i.ioa, i32 %i.inz) ; 6 uses
  %i.ioc = shl i32 %i.iob, 2
  %i.iod = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52464, i32 noundef %i.ioc) #7 ; 5 uses
  %.not46356 = icmp eq i32 %i.iod, 0
  br i1 %.not46356, label %bb.aig, label %bb.aih

bb.aig:                                           ; preds = %bb.aif
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.aih

bb.aih:                                           ; preds = %bb.aig, %bb.aif
  %.val49911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ioe = getelementptr inbounds nuw i8, ptr %.val49911, i64 %i.hfa
  store i32 %i.iob, ptr %i.ioe, align 1
  %.val49910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iof = getelementptr inbounds nuw i8, ptr %.val49910, i64 %i.hfb
  store i32 %i.iod, ptr %i.iof, align 1
  %.val48333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iog = getelementptr inbounds nuw i8, ptr %.val48333, i64 %i.hez
  %.0.copyload.i52465 = load i32, ptr %i.iog, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52465) #7, !srcloc !19
  %i.ioh = add i32 %.0.copyload.i52465, 31
  %i.ioi = lshr i32 %i.ioh, 5                     ; 4 uses
  %i.ioj = icmp ult i32 %i.ioi, %i.iob
  br i1 %i.ioj, label %bb.aii, label %bb.aij

bb.aii:                                           ; preds = %bb.aih
  %i.iok = shl nuw nsw i32 %i.ioi, 2
  %i.iol = add i32 %i.iok, %i.iod
  %i.iom = sub nuw i32 %i.iob, %i.ioi
  %i.ion = shl i32 %i.iom, 2
  %i.ioo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iol, i32 noundef 0, i32 noundef %i.ion) #7 ; 0 uses
  br label %bb.aij

bb.aij:                                           ; preds = %bb.aii, %bb.aih
  %i.iop = and i32 %.0.copyload.i52465, 31        ; 2 uses
  %.not46357 = icmp eq i32 %i.iop, 0
  br i1 %.not46357, label %bb.ail, label %bb.aik

bb.aik:                                           ; preds = %bb.aij
  %i.ioq = shl nuw nsw i32 %i.ioi, 2
  %i.ior = add i32 %i.iod, -4
  %i.ios = add i32 %i.ior, %i.ioq
  %i.iot = zext i32 %i.ios to i64                 ; 2 uses
  %.val48332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iou = getelementptr inbounds nuw i8, ptr %.val48332, i64 %i.iot
  %.0.copyload.i52466 = load i32, ptr %i.iou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52466) #7, !srcloc !19
  %i.iov = shl nsw i32 -1, %i.iop
  %i.iow = xor i32 %i.iov, -1
  %i.iox = and i32 %.0.copyload.i52466, %i.iow
  %.val49909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ioy = getelementptr inbounds nuw i8, ptr %.val49909, i64 %i.iot
  store i32 %i.iox, ptr %i.ioy, align 1
  br label %bb.ail

bb.ail:                                           ; preds = %bb.aik, %bb.aij
  %i.ioz = icmp eq i32 %.0.copyload.i52463, %i.iob
  br i1 %i.ioz, label %bb.ain, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  %i.ipa = shl i32 %.0.copyload.i52463, 2
  %i.ipb = add i32 %i.iod, %i.ipa
  %i.ipc = sub i32 %i.iob, %.0.copyload.i52463
  %i.ipd = shl i32 %i.ipc, 2
  %i.ipe = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ipb, i32 noundef 0, i32 noundef %i.ipd) #7 ; 0 uses
  br label %bb.ain

bb.ain:                                           ; preds = %bb.ail, %.loopexit54409, %bb.aim
  %.6144312 = phi i32 [ %.0.copyload.i52459, %.loopexit54409 ], [ %.0.copyload.i52465, %bb.ail ], [ %.0.copyload.i52465, %bb.aim ] ; 4 uses
  %.not46358 = icmp ult i32 %.6144312, %i.inu
  br i1 %.not46358, label %bb.aio, label %bb.ais

bb.aio:                                           ; preds = %bb.ain
  %.val48331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipf = getelementptr inbounds nuw i8, ptr %.val48331, i64 %i.hfa
  %.0.copyload.i52467 = load i32, ptr %i.ipf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52467) #7, !srcloc !19
  %i.ipg = add i32 %.6144312, 31
  %i.iph = lshr i32 %i.ipg, 5                     ; 4 uses
  %i.ipi = icmp ugt i32 %.0.copyload.i52467, %i.iph
  br i1 %i.ipi, label %bb.aip, label %bb.aiq

bb.aip:                                           ; preds = %bb.aio
  %.val48330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipj = getelementptr inbounds nuw i8, ptr %.val48330, i64 %i.heh
  %i.ipk = getelementptr inbounds nuw i8, ptr %i.ipj, i64 1100
  %.0.copyload.i52468 = load i32, ptr %i.ipk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52468) #7, !srcloc !19
  %i.ipl = shl nuw nsw i32 %i.iph, 2
  %i.ipm = add i32 %.0.copyload.i52468, %i.ipl
  %i.ipn = sub nuw i32 %.0.copyload.i52467, %i.iph
  %i.ipo = shl i32 %i.ipn, 2
  %i.ipp = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ipm, i32 noundef 0, i32 noundef %i.ipo) #7 ; 0 uses
  %.val48329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipq = getelementptr inbounds nuw i8, ptr %.val48329, i64 %i.hez
  %.0.copyload.i52469 = load i32, ptr %i.ipq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52469) #7, !srcloc !19
  br label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip, %bb.aio
  %.6244313 = phi i32 [ %.0.copyload.i52469, %bb.aip ], [ %.6144312, %bb.aio ] ; 3 uses
  %i.ipr = and i32 %.6244313, 31                  ; 2 uses
  %.not46359 = icmp eq i32 %i.ipr, 0
  br i1 %.not46359, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %.val48328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ips = getelementptr inbounds nuw i8, ptr %.val48328, i64 %i.heh
  %i.ipt = getelementptr inbounds nuw i8, ptr %i.ips, i64 1100
  %.0.copyload.i52470 = load i32, ptr %i.ipt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52470) #7, !srcloc !19
  %i.ipu = shl nuw nsw i32 %i.iph, 2
  %i.ipv = add nsw i32 %i.ipu, -4
  %i.ipw = add i32 %i.ipv, %.0.copyload.i52470
  %i.ipx = zext i32 %i.ipw to i64                 ; 2 uses
  %.val48327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipy = getelementptr inbounds nuw i8, ptr %.val48327, i64 %i.ipx
  %.0.copyload.i52471 = load i32, ptr %i.ipy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52471) #7, !srcloc !19
  %i.ipz = shl nsw i32 -1, %i.ipr
  %i.iqa = xor i32 %i.ipz, -1
  %i.iqb = and i32 %.0.copyload.i52471, %i.iqa
  %.val49908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqc = getelementptr inbounds nuw i8, ptr %.val49908, i64 %i.ipx
  store i32 %i.iqb, ptr %i.iqc, align 1
  br label %bb.ais

bb.ais:                                           ; preds = %bb.aiq, %bb.ain, %bb.air
  %.6344314 = phi i32 [ %.6144312, %bb.ain ], [ %.6244313, %bb.aiq ], [ %.6244313, %bb.air ]
  %.val49907 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqd = getelementptr inbounds nuw i8, ptr %.val49907, i64 %i.hez
  store i32 %i.inu, ptr %i.iqd, align 1
  %.not46360 = icmp ugt i32 %.6344314, %i.inu
  br i1 %.not46360, label %bb.ait, label %bb.ajc

bb.ait:                                           ; preds = %bb.ais
  %.val48326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqe = getelementptr inbounds nuw i8, ptr %.val48326, i64 %i.hfa
  %.0.copyload.i52472 = load i32, ptr %i.iqe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52472) #7, !srcloc !19
  %i.iqf = add i32 %.0.copyload.i52459, 32
  %i.iqg = lshr i32 %i.iqf, 5                     ; 4 uses
  %i.iqh = icmp ugt i32 %.0.copyload.i52472, %i.iqg
  br i1 %i.iqh, label %bb.aiu, label %bb.aiv

bb.aiu:                                           ; preds = %bb.ait
  %.val48325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqi = getelementptr inbounds nuw i8, ptr %.val48325, i64 %i.heh
  %i.iqj = getelementptr inbounds nuw i8, ptr %i.iqi, i64 1100
  %.0.copyload.i52473 = load i32, ptr %i.iqj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52473) #7, !srcloc !19
  %i.iqk = shl nuw nsw i32 %i.iqg, 2
  %i.iql = add i32 %.0.copyload.i52473, %i.iqk
  %i.iqm = sub nuw i32 %.0.copyload.i52472, %i.iqg
  %i.iqn = shl i32 %i.iqm, 2
  %i.iqo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iql, i32 noundef 0, i32 noundef %i.iqn) #7 ; 0 uses
  %.val48324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqp = getelementptr inbounds nuw i8, ptr %.val48324, i64 %i.hez
  %.0.copyload.i52474 = load i32, ptr %i.iqp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52474) #7, !srcloc !19
  br label %bb.aiv

bb.aiv:                                           ; preds = %bb.ait, %bb.aiu
  %.34 = phi i32 [ %.0.copyload.i52474, %bb.aiu ], [ %i.inu, %bb.ait ]
  %i.iqq = and i32 %.34, 31                       ; 2 uses
  %.not46361 = icmp eq i32 %i.iqq, 0
  br i1 %.not46361, label %bb.ajc, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  %i.iqr = shl nsw i32 -1, %i.iqq
  %.val48323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqs = getelementptr inbounds nuw i8, ptr %.val48323, i64 %i.heh
  %i.iqt = getelementptr inbounds nuw i8, ptr %i.iqs, i64 1100
  %.0.copyload.i52475 = load i32, ptr %i.iqt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52475) #7, !srcloc !19
  %i.iqu = shl nuw nsw i32 %i.iqg, 2
  %i.iqv = add nsw i32 %i.iqu, -4
  %i.iqw = add i32 %i.iqv, %.0.copyload.i52475
  br label %bb.ajb

bb.aix:                                           ; preds = %bb.aie, %bb.aib
  %i.iqx = sub i32 0, %.0.copyload.i52459
  %i.iqy = and i32 %i.iqx, 31
  %i.iqz = lshr i32 -1, %i.iqy
  %i.ira = add i32 %.0.copyload.i52459, -1
  %i.irb = lshr i32 %i.ira, 5
  %i.irc = zext nneg i32 %i.irb to i64
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aja, %bb.aix
  %indvars.iv55718 = phi i64 [ %indvars.iv.next55719, %bb.aja ], [ 0, %bb.aix ] ; 4 uses
  %indvars.iv55718.tr = trunc nuw nsw i64 %indvars.iv55718 to i32
  %i.ird = shl nuw nsw i32 %indvars.iv55718.tr, 2
  %i.ire = add i32 %i.ird, %.0.copyload.i52460
  %i.irf = zext i32 %i.ire to i64
  %.val48322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.irg = getelementptr inbounds nuw i8, ptr %.val48322, i64 %i.irf
  %.0.copyload.i52476 = load i32, ptr %i.irg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52476) #7, !srcloc !19
  %.not46353 = icmp eq i64 %indvars.iv55718, %i.irc ; 2 uses
  %i.irh = select i1 %.not46353, i32 %i.iqz, i32 -1
  %i.iri = and i32 %.0.copyload.i52476, %i.irh    ; 2 uses
  %.not46354 = icmp eq i32 %i.iri, 0
  br i1 %.not46354, label %bb.aja, label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy
  %i.irj = trunc nuw nsw i64 %indvars.iv55718 to i32
  %i.irk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.iri, i1 true)
  %i.irl = shl i32 %i.irj, 5
  %i.irm = or disjoint i32 %i.irk, %i.irl
  br label %.loopexit54408

bb.aja:                                           ; preds = %bb.aiy
  %indvars.iv.next55719 = add nuw nsw i64 %indvars.iv55718, 1
  br i1 %.not46353, label %.loopexit54408, label %bb.aiy

.loopexit54408:                                   ; preds = %bb.aja, %bb.aiz
  %.35 = phi i32 [ %i.irm, %bb.aiz ], [ -1, %bb.aja ] ; 3 uses
  %i.irn = and i32 %.35, 31
  %i.iro = shl nuw i32 1, %i.irn
  %i.irp = lshr i32 %.35, 3
  %i.irq = and i32 %i.irp, 536870908
  %i.irr = add i32 %i.irq, %.0.copyload.i52460
  br label %bb.ajb

bb.ajb:                                           ; preds = %.loopexit54408, %bb.aiw
  %.3543660 = phi i32 [ %.0.copyload.i52459, %bb.aiw ], [ %.35, %.loopexit54408 ]
  %.1043350 = phi i32 [ %i.iqr, %bb.aiw ], [ %i.iro, %.loopexit54408 ]
  %.643135 = phi i32 [ %i.iqw, %bb.aiw ], [ %i.irr, %.loopexit54408 ]
  %i.irs = zext i32 %.643135 to i64               ; 2 uses
  %.val48321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.irt = getelementptr inbounds nuw i8, ptr %.val48321, i64 %i.irs
  %.0.copyload.i52477 = load i32, ptr %i.irt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52477) #7, !srcloc !19
  %i.iru = xor i32 %.1043350, -1
  %i.irv = and i32 %.0.copyload.i52477, %i.iru
  %.val49906 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.irw = getelementptr inbounds nuw i8, ptr %.val49906, i64 %i.irs
  store i32 %i.irv, ptr %i.irw, align 1
  br label %bb.ajc

bb.ajc:                                           ; preds = %bb.aiv, %bb.ais, %bb.ajb
  %.3643661 = phi i32 [ %.0.copyload.i52459, %bb.ais ], [ %.0.copyload.i52459, %bb.aiv ], [ %.3543660, %bb.ajb ] ; 2 uses
  %i.irx = add i32 %.102, 8                       ; 11 uses
  %.val48320 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iry = getelementptr inbounds nuw i8, ptr %.val48320, i64 %i.hex
  %.0.copyload.i52478 = load i32, ptr %i.iry, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52478) #7, !srcloc !19
  %.not46362 = icmp eq i32 %.0.copyload.i52478, 0
  br i1 %.not46362, label %bb.ajg, label %bb.ajd

bb.ajd:                                           ; preds = %bb.ajc
  %.val48319 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.irz = getelementptr inbounds nuw i8, ptr %.val48319, i64 %i.heh
  %i.isa = getelementptr inbounds nuw i8, ptr %i.irz, i64 1084
  %.0.copyload.i52479 = load i32, ptr %i.isa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52479) #7, !srcloc !19
  %i.isb = add i32 %.0.copyload.i52478, -1        ; 2 uses
  %i.isc = lshr i32 %i.irx, 4
  %i.isd = lshr i32 %i.irx, 9
  %i.ise = xor i32 %i.isc, %i.isd
  %i.isf = and i32 %i.isb, %i.ise                 ; 2 uses
  %i.isg = shl nuw nsw i32 %i.isf, 3
  %i.ish = add i32 %.0.copyload.i52479, %i.isg    ; 2 uses
  %i.isi = zext i32 %i.ish to i64                 ; 2 uses
  %.val48318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.isj = getelementptr inbounds nuw i8, ptr %.val48318, i64 %i.isi
  %.0.copyload.i52480 = load i32, ptr %i.isj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52480) #7, !srcloc !19
  %i.isk = icmp eq i32 %.0.copyload.i52480, %i.irx
  br i1 %i.isk, label %.loopexit54407, label %.preheader54406

.preheader54406:                                  ; preds = %bb.ajd, %bb.ajf
  %.1144008 = phi i32 [ %.0.copyload.i52481, %bb.ajf ], [ %.0.copyload.i52480, %bb.ajd ] ; 2 uses
  %.243575 = phi i32 [ %i.isr, %bb.ajf ], [ 1, %bb.ajd ] ; 2 uses
  %.043413 = phi i32 [ %i.iss, %bb.ajf ], [ %i.isf, %bb.ajd ]
  %.1143351 = phi i32 [ %i.isu, %bb.ajf ], [ %i.ish, %bb.ajd ] ; 2 uses
  %.843323 = phi i32 [ %i.isp, %bb.ajf ], [ 0, %bb.ajd ] ; 3 uses
  %i.isl = icmp eq i32 %.1144008, -4
  %.not46365 = icmp eq i32 %.843323, 0            ; 2 uses
  br i1 %i.isl, label %bb.aje, label %bb.ajf

bb.aje:                                           ; preds = %.preheader54406
  %i.ism = select i1 %.not46365, i32 %.1143351, i32 %.843323
  br label %bb.ajg

bb.ajf:                                           ; preds = %.preheader54406
  %i.isn = icmp eq i32 %.1144008, -8
  %i.iso = select i1 %i.isn, i1 %.not46365, i1 false
  %i.isp = select i1 %i.iso, i32 %.1143351, i32 %.843323
  %i.isq = add i32 %.043413, %.243575
  %i.isr = add i32 %.243575, 1
  %i.iss = and i32 %i.isq, %i.isb                 ; 2 uses
  %i.ist = shl i32 %i.iss, 3
  %i.isu = add i32 %i.ist, %.0.copyload.i52479    ; 2 uses
  %i.isv = zext i32 %i.isu to i64                 ; 2 uses
  %.val48317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.isw = getelementptr inbounds nuw i8, ptr %.val48317, i64 %i.isv
  %.0.copyload.i52481 = load i32, ptr %i.isw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52481) #7, !srcloc !19
  %.not46364 = icmp eq i32 %.0.copyload.i52481, %i.irx
  br i1 %.not46364, label %.loopexit54407, label %.preheader54406

bb.ajg:                                           ; preds = %bb.ajc, %bb.aje
  %.1243352 = phi i32 [ %i.ism, %bb.aje ], [ 0, %bb.ajc ]
  %.val48316 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.isx = getelementptr inbounds nuw i8, ptr %.val48316, i64 %i.hfc
  %.0.copyload.i52482 = load i32, ptr %i.isx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52482) #7, !srcloc !19
  %i.isy = shl i32 %.0.copyload.i52482, 2
  %i.isz = add i32 %i.isy, 4
  %i.ita = mul i32 %.0.copyload.i52478, 3
  %.not46366 = icmp ult i32 %i.isz, %i.ita
  br i1 %.not46366, label %bb.aji, label %bb.ajh

bb.ajh:                                           ; preds = %bb.ajg
  %i.itb = shl i32 %.0.copyload.i52478, 1
  br label %bb.ajj

bb.aji:                                           ; preds = %bb.ajg
  %i.itc = xor i32 %.0.copyload.i52482, -1
  %i.itd = add i32 %.0.copyload.i52478, %i.itc
  %.val48315 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ite = getelementptr inbounds nuw i8, ptr %.val48315, i64 %i.heh
  %i.itf = getelementptr inbounds nuw i8, ptr %i.ite, i64 1092
  %.0.copyload.i52483 = load i32, ptr %i.itf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52483) #7, !srcloc !19
  %i.itg = sub i32 %i.itd, %.0.copyload.i52483
  %i.ith = lshr i32 %.0.copyload.i52478, 3
  %i.iti = icmp ugt i32 %i.itg, %i.ith
  br i1 %i.iti, label %bb.ajm, label %bb.ajj

bb.ajj:                                           ; preds = %bb.aji, %bb.ajh
  %.043300 = phi i32 [ %i.itb, %bb.ajh ], [ %.0.copyload.i52478, %bb.aji ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hdj, i32 noundef %.043300) #7
  %.val48314 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.itj = getelementptr inbounds nuw i8, ptr %.val48314, i64 %i.heh
  %i.itk = getelementptr inbounds nuw i8, ptr %i.itj, i64 1084
  %.0.copyload.i52484 = load i32, ptr %i.itk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52484) #7, !srcloc !19
  %.val48313 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.itl = getelementptr inbounds nuw i8, ptr %.val48313, i64 %i.hex
  %.0.copyload.i52485 = load i32, ptr %i.itl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52485) #7, !srcloc !19
  %i.itm = add i32 %.0.copyload.i52485, -1        ; 2 uses
  %i.itn = lshr i32 %i.irx, 4
  %i.ito = lshr i32 %i.irx, 9
  %i.itp = xor i32 %i.itn, %i.ito
  %i.itq = and i32 %i.itm, %i.itp                 ; 2 uses
  %i.itr = shl nuw nsw i32 %i.itq, 3
  %i.its = add i32 %i.itr, %.0.copyload.i52484    ; 3 uses
  %i.itt = zext i32 %i.its to i64
  %.val48312 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.itu = getelementptr inbounds nuw i8, ptr %.val48312, i64 %i.itt
  %.0.copyload.i52486 = load i32, ptr %i.itu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52486) #7, !srcloc !19
  %.not46367 = icmp eq i32 %.0.copyload.i52486, %i.irx
  br i1 %.not46367, label %.loopexit54405, label %.preheader54404

.preheader54404:                                  ; preds = %bb.ajj, %bb.ajl
  %.1244009 = phi i32 [ %i.iuc, %bb.ajl ], [ %i.itq, %bb.ajj ]
  %.343576 = phi i32 [ %i.itz, %bb.ajl ], [ 0, %bb.ajj ] ; 3 uses
  %.1343353 = phi i32 [ %i.iue, %bb.ajl ], [ %i.its, %bb.ajj ] ; 2 uses
  %.943324 = phi i32 [ %i.iub, %bb.ajl ], [ 1, %bb.ajj ] ; 2 uses
  %.143301 = phi i32 [ %.0.copyload.i52487, %bb.ajl ], [ %.0.copyload.i52486, %bb.ajj ] ; 2 uses
  %i.itv = icmp eq i32 %.143301, -4
  %.not46370 = icmp eq i32 %.343576, 0            ; 2 uses
  br i1 %i.itv, label %bb.ajk, label %bb.ajl

bb.ajk:                                           ; preds = %.preheader54404
  %i.itw = select i1 %.not46370, i32 %.1343353, i32 %.343576
  br label %bb.ajm

bb.ajl:                                           ; preds = %.preheader54404
  %i.itx = icmp eq i32 %.143301, -8
  %i.ity = select i1 %i.itx, i1 %.not46370, i1 false
  %i.itz = select i1 %i.ity, i32 %.1343353, i32 %.343576
  %i.iua = add i32 %.943324, %.1244009
  %i.iub = add i32 %.943324, 1
  %i.iuc = and i32 %i.iua, %i.itm                 ; 2 uses
  %i.iud = shl i32 %i.iuc, 3
  %i.iue = add i32 %i.iud, %.0.copyload.i52484    ; 3 uses
  %i.iuf = zext i32 %i.iue to i64
  %.val48311 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iug = getelementptr inbounds nuw i8, ptr %.val48311, i64 %i.iuf
  %.0.copyload.i52487 = load i32, ptr %i.iug, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52487) #7, !srcloc !19
  %.not46369 = icmp eq i32 %i.irx, %.0.copyload.i52487
  br i1 %.not46369, label %.loopexit54405, label %.preheader54404

bb.ajm:                                           ; preds = %bb.aji, %bb.ajk
  %.1543355 = phi i32 [ %i.itw, %bb.ajk ], [ %.1243352, %bb.aji ] ; 2 uses
  %i.iuh = zext i32 %.1543355 to i64
  %.val48310 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iui = getelementptr inbounds nuw i8, ptr %.val48310, i64 %i.iuh
  %.0.copyload.i52488 = load i32, ptr %i.iui, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52488) #7, !srcloc !19
  br label %.loopexit54405

.loopexit54405:                                   ; preds = %bb.ajl, %bb.ajj, %bb.ajm
  %.1643356 = phi i32 [ %.1543355, %bb.ajm ], [ %i.its, %bb.ajj ], [ %i.iue, %bb.ajl ]
  %.743136 = phi i32 [ %.0.copyload.i52488, %bb.ajm ], [ %i.irx, %bb.ajj ], [ %i.irx, %bb.ajl ]
  %.val48309 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iuj = getelementptr inbounds nuw i8, ptr %.val48309, i64 %i.hfc
  %.0.copyload.i52489 = load i32, ptr %i.iuj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52489) #7, !srcloc !19
  %i.iuk = add i32 %.0.copyload.i52489, 1
  %.val49905 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iul = getelementptr inbounds nuw i8, ptr %.val49905, i64 %i.hfc
  store i32 %i.iuk, ptr %i.iul, align 1
  %.not46371 = icmp eq i32 %.743136, -4
  br i1 %.not46371, label %bb.ajo, label %bb.ajn

bb.ajn:                                           ; preds = %.loopexit54405
  %.val48308 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ium = getelementptr inbounds nuw i8, ptr %.val48308, i64 %i.hfd
  %.0.copyload.i52490 = load i32, ptr %i.ium, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52490) #7, !srcloc !19
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.6544316 = phi i32 [ %i.iwl, %bb.ajr ], [ %i.ivy, %bb.ajp ] ; 2 uses
  %.843799 = phi i32 [ %i.iwg, %bb.ajr ], [ 0, %bb.ajp ] ; 3 uses
  %.443577 = phi i32 [ %i.iwj, %bb.ajr ], [ %i.ivw, %bb.ajp ]
  %.1843358 = phi i32 [ %i.iwi, %bb.ajr ], [ 1, %bb.ajp ] ; 2 uses
  %.1043325 = phi i32 [ %.0.copyload.i52505, %bb.ajr ], [ %.0.copyload.i52504, %bb.ajp ] ; 2 uses
  %i.iwc = icmp eq i32 %.1043325, -4
  %.not46376 = icmp eq i32 %.843799, 0            ; 2 uses
  br i1 %i.iwc, label %bb.ajq, label %bb.ajr

bb.ajq:                                           ; preds = %.preheader54311
  %i.iwd = select i1 %.not46376, i32 %.6544316, i32 %.843799
  br label %bb.ajs

bb.ajr:                                           ; preds = %.preheader54311
  %i.iwe = icmp eq i32 %.1043325, -8
  %i.iwf = select i1 %i.iwe, i1 %.not46376, i1 false
  %i.iwg = select i1 %i.iwf, i32 %.6544316, i32 %.843799
  %i.iwh = add i32 %.1843358, %.443577
  %i.iwi = add i32 %.1843358, 1
  %i.iwj = and i32 %i.iwh, %i.ivs                 ; 2 uses
  %i.iwk = shl i32 %i.iwj, 3
  %i.iwl = add i32 %i.iwk, %.0.copyload.i52503    ; 2 uses
  %i.iwm = zext i32 %i.iwl to i64                 ; 2 uses
  %.val48302 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwn = getelementptr inbounds nuw i8, ptr %.val48302, i64 %i.iwm
  %.0.copyload.i52505 = load i32, ptr %i.iwn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52505) #7, !srcloc !19
  %.not46375 = icmp eq i32 %.0.copyload.i52505, %.0.copyload.i52501
  br i1 %.not46375, label %.loopexit54312, label %.preheader54311

bb.ajs:                                           ; preds = %.preheader54402, %bb.ajq
  %.6644317 = phi i32 [ 0, %.preheader54402 ], [ %i.iwd, %bb.ajq ]
  %.val48301 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwo = getelementptr inbounds nuw i8, ptr %.val48301, i64 %i.hfc
  %.0.copyload.i52506 = load i32, ptr %i.iwo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52506) #7, !srcloc !19
  %i.iwp = shl i32 %.0.copyload.i52506, 2
  %i.iwq = add i32 %i.iwp, 4
  %i.iwr = mul i32 %.0.copyload.i52502, 3
  %.not46377 = icmp ult i32 %i.iwq, %i.iwr
  br i1 %.not46377, label %bb.aju, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  %i.iws = shl i32 %.0.copyload.i52502, 1
  br label %bb.ajv

bb.aju:                                           ; preds = %bb.ajs
  %i.iwt = xor i32 %.0.copyload.i52506, -1
  %i.iwu = add i32 %.0.copyload.i52502, %i.iwt
  %.val48300 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwv = getelementptr inbounds nuw i8, ptr %.val48300, i64 %i.heh
  %i.iww = getelementptr inbounds nuw i8, ptr %i.iwv, i64 1092
  %.0.copyload.i52507 = load i32, ptr %i.iww, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52507) #7, !srcloc !19
  %i.iwx = sub i32 %i.iwu, %.0.copyload.i52507
  %i.iwy = lshr i32 %.0.copyload.i52502, 3
  %i.iwz = icmp ugt i32 %i.iwx, %i.iwy
  br i1 %i.iwz, label %bb.ajy, label %bb.ajv

bb.ajv:                                           ; preds = %bb.aju, %bb.ajt
  %.1344010 = phi i32 [ %i.iws, %bb.ajt ], [ %.0.copyload.i52502, %bb.aju ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hdj, i32 noundef %.1344010) #7
  %.val48299 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixa = getelementptr inbounds nuw i8, ptr %.val48299, i64 %i.heh
  %i.ixb = getelementptr inbounds nuw i8, ptr %i.ixa, i64 1084
  %.0.copyload.i52508 = load i32, ptr %i.ixb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52508) #7, !srcloc !19
  %.val48298 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixc = getelementptr inbounds nuw i8, ptr %.val48298, i64 %i.hex
  %.0.copyload.i52509 = load i32, ptr %i.ixc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52509) #7, !srcloc !19
  %i.ixd = add i32 %.0.copyload.i52509, -1        ; 2 uses
  %i.ixe = lshr i32 %.0.copyload.i52501, 4
  %i.ixf = lshr i32 %.0.copyload.i52501, 9
  %i.ixg = xor i32 %i.ixe, %i.ixf
  %i.ixh = and i32 %i.ixd, %i.ixg                 ; 2 uses
  %i.ixi = shl nuw nsw i32 %i.ixh, 3
  %i.ixj = add i32 %i.ixi, %.0.copyload.i52508    ; 3 uses
  %i.ixk = zext i32 %i.ixj to i64
  %.val48297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixl = getelementptr inbounds nuw i8, ptr %.val48297, i64 %i.ixk
  %.0.copyload.i52510 = load i32, ptr %i.ixl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52510) #7, !srcloc !19
  %.not46378 = icmp eq i32 %.0.copyload.i52510, %.0.copyload.i52501
  br i1 %.not46378, label %.loopexit54310, label %.preheader54309

.preheader54309:                                  ; preds = %bb.ajv, %bb.ajx
  %.6744318 = phi i32 [ %i.ixv, %bb.ajx ], [ %i.ixj, %bb.ajv ] ; 2 uses
  %.1444011 = phi i32 [ %.0.copyload.i52511, %bb.ajx ], [ %.0.copyload.i52510, %bb.ajv ] ; 2 uses
  %.943800 = phi i32 [ %i.ixs, %bb.ajx ], [ 1, %bb.ajv ] ; 2 uses
  %.543578 = phi i32 [ %i.ixq, %bb.ajx ], [ 0, %bb.ajv ] ; 3 uses
  %.1143326 = phi i32 [ %i.ixt, %bb.ajx ], [ %i.ixh, %bb.ajv ]
  %i.ixm = icmp eq i32 %.1444011, -4
  %.not46381 = icmp eq i32 %.543578, 0            ; 2 uses
  br i1 %i.ixm, label %bb.ajw, label %bb.ajx

bb.ajw:                                           ; preds = %.preheader54309
  %i.ixn = select i1 %.not46381, i32 %.6744318, i32 %.543578
  br label %bb.ajy

bb.ajx:                                           ; preds = %.preheader54309
  %i.ixo = icmp eq i32 %.1444011, -8
  %i.ixp = select i1 %i.ixo, i1 %.not46381, i1 false
  %i.ixq = select i1 %i.ixp, i32 %.6744318, i32 %.543578
  %i.ixr = add i32 %.1143326, %.943800
  %i.ixs = add i32 %.943800, 1
  %i.ixt = and i32 %i.ixr, %i.ixd                 ; 2 uses
  %i.ixu = shl i32 %i.ixt, 3
  %i.ixv = add i32 %i.ixu, %.0.copyload.i52508    ; 3 uses
  %i.ixw = zext i32 %i.ixv to i64
  %.val48296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixx = getelementptr inbounds nuw i8, ptr %.val48296, i64 %i.ixw
  %.0.copyload.i52511 = load i32, ptr %i.ixx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52511) #7, !srcloc !19
  %.not46380 = icmp eq i32 %.0.copyload.i52501, %.0.copyload.i52511
  br i1 %.not46380, label %.loopexit54310, label %.preheader54309

bb.ajy:                                           ; preds = %bb.aju, %bb.ajw
  %.6944320 = phi i32 [ %i.ixn, %bb.ajw ], [ %.6644317, %bb.aju ] ; 2 uses
  %i.ixy = zext i32 %.6944320 to i64
  %.val48295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixz = getelementptr inbounds nuw i8, ptr %.val48295, i64 %i.ixy
  %.0.copyload.i52512 = load i32, ptr %i.ixz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52512) #7, !srcloc !19
  br label %.loopexit54310

.loopexit54310:                                   ; preds = %bb.ajx, %bb.ajv, %bb.ajy
  %.7044321 = phi i32 [ %.6944320, %bb.ajy ], [ %i.ixj, %bb.ajv ], [ %i.ixv, %bb.ajx ]
  %.843137 = phi i32 [ %.0.copyload.i52512, %bb.ajy ], [ %.0.copyload.i52501, %bb.ajv ], [ %.0.copyload.i52501, %bb.ajx ]
  %.val48294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iya = getelementptr inbounds nuw i8, ptr %.val48294, i64 %i.hfc
  %.0.copyload.i52513 = load i32, ptr %i.iya, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52513) #7, !srcloc !19
  %i.iyb = add i32 %.0.copyload.i52513, 1
  %.val49900 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyc = getelementptr inbounds nuw i8, ptr %.val49900, i64 %i.hfc
  store i32 %i.iyb, ptr %i.iyc, align 1
  %.not46382 = icmp eq i32 %.843137, -4
  br i1 %.not46382, label %bb.aka, label %bb.ajz

bb.ajz:                                           ; preds = %.loopexit54310
  %.val48293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyd = getelementptr inbounds nuw i8, ptr %.val48293, i64 %i.hfd
  %.0.copyload.i52514 = load i32, ptr %i.iyd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52514) #7, !srcloc !19
  %i.iye = add i32 %.0.copyload.i52514, -1
  %.val49899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyf = getelementptr inbounds nuw i8, ptr %.val49899, i64 %i.hfd
  store i32 %i.iye, ptr %i.iyf, align 1
  br label %bb.aka

bb.aka:                                           ; preds = %bb.ajz, %.loopexit54310
  %i.iyg = zext i32 %.7044321 to i64              ; 3 uses
  %.val49898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyh = getelementptr inbounds nuw i8, ptr %.val49898, i64 %i.iyg
  %i.iyi = getelementptr inbounds nuw i8, ptr %i.iyh, i64 4
  store i32 -1, ptr %i.iyi, align 1
  %.val49897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyj = getelementptr inbounds nuw i8, ptr %.val49897, i64 %i.iyg
  store i32 %.0.copyload.i52501, ptr %i.iyj, align 1
  br label %.loopexit54312

.loopexit54312:                                   ; preds = %bb.ajr, %bb.ajp, %bb.aka
  %.pre-phi55783 = phi i64 [ %i.iyg, %bb.aka ], [ %i.ivz, %bb.ajp ], [ %i.iwm, %bb.ajr ]
  %.val49896 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyk = getelementptr inbounds nuw i8, ptr %.val49896, i64 %.pre-phi55783
  %i.iyl = getelementptr inbounds nuw i8, ptr %i.iyk, i64 4
  store i32 %.3643661, ptr %i.iyl, align 1
  %i.iym = add nuw nsw i32 %.243302, 1            ; 2 uses
  %.not46383 = icmp eq i32 %i.iym, %i.iux
  br i1 %.not46383, label %.loopexit54403, label %.preheader54402

.loopexit54403:                                   ; preds = %.loopexit54312, %func_types_eq.exit52457.thread, %.loopexit54407, %bb.ahz
  %.pre-phi55899 = phi i64 [ %i.inb, %bb.ahz ], [ 0, %func_types_eq.exit52457.thread ], [ %i.inb, %.loopexit54407 ], [ %i.inb, %.loopexit54312 ]
  %.val48292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyn = getelementptr inbounds nuw i8, ptr %.val48292, i64 %.pre-phi55899
  %i.iyo = getelementptr inbounds nuw i8, ptr %i.iyn, i64 4
  %.0.copyload.i52515 = load i32, ptr %i.iyo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52515) #7, !srcloc !19
  %.not46384 = icmp eq i32 %.0.copyload.i52515, %i.ilz
  br i1 %.not46384, label %.loopexit54553, label %.preheader54552

.loopexit54553:                                   ; preds = %.loopexit54403, %bb.ahv
  %i.iyp = add i32 %.4743778, 4                   ; 2 uses
  %.not46385 = icmp eq i32 %i.iyp, %i.ilq
  br i1 %.not46385, label %.loopexit54619, label %bb.ahv

.loopexit54619:                                   ; preds = %.loopexit54553, %..loopexit54619_crit_edge
  %.pre-phi55897 = phi i64 [ %.pre55896, %..loopexit54619_crit_edge ], [ %i.ilt, %.loopexit54553 ] ; 3 uses
  %i.iyq = add nuw nsw i64 %.pre-phi55897, 8      ; 7 uses
  %.val50883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyr = getelementptr inbounds nuw i8, ptr %.val50883, i64 %i.iyq
  store i64 34359738368, ptr %i.iyr, align 1
  %i.iys = add i32 %i.ilk, -32                    ; 3 uses
  %i.iyt = add nuw nsw i64 %.pre-phi55897, 4      ; 4 uses
  %.val49895 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyu = getelementptr inbounds nuw i8, ptr %.val49895, i64 %i.iyt
  store i32 %i.iys, ptr %i.iyu, align 1
  %.val48291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyv = getelementptr inbounds nuw i8, ptr %.val48291, i64 %i.hff
  %.0.copyload.i52516 = load i32, ptr %i.iyv, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52516) #7, !srcloc !19
  %i.iyw = add i32 %.0.copyload.i52516, 31        ; 3 uses
  %i.iyx = icmp ult i32 %i.iyw, 32
  br i1 %i.iyx, label %.loopexit54618, label %bb.akb

bb.akb:                                           ; preds = %.loopexit54619
  %.val48290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyy = getelementptr inbounds nuw i8, ptr %.val48290, i64 %i.hey
  %.0.copyload.i52517 = load i32, ptr %i.iyy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52517) #7, !srcloc !19
  %i.iyz = zext i32 %.0.copyload.i52517 to i64
  %.val48289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iza = getelementptr inbounds nuw i8, ptr %.val48289, i64 %i.iyz
  %.0.copyload.i52518 = load i32, ptr %i.iza, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52518) #7, !srcloc !19
  %.not46386 = icmp eq i32 %.0.copyload.i52518, 0
  br i1 %.not46386, label %bb.akc, label %bb.akf

bb.akc:                                           ; preds = %bb.akb
  %i.izb = lshr i32 %i.iyw, 5                     ; 2 uses
  %i.izc = icmp ult i32 %i.iyw, 64
  %i.izd = add nsw i32 %i.izb, -1
  %i.ize = select i1 %i.izc, i32 0, i32 %i.izd    ; 2 uses
  %wide.trip.count55726 = zext nneg i32 %i.ize to i64
  %exitcond5572757425 = icmp eq i32 %i.ize, 0
  br i1 %exitcond5572757425, label %.loopexit54618, label %.lr.ph57428

bb.akd:                                           ; preds = %.lr.ph57428
  %exitcond55727 = icmp eq i64 %indvars.iv.next55723, %wide.trip.count55726
  br i1 %exitcond55727, label %.loopexit54618, label %.lr.ph57428

.lr.ph57428:                                      ; preds = %bb.akc, %bb.akd
  %indvars.iv5572257426 = phi i64 [ %indvars.iv.next55723, %bb.akd ], [ 0, %bb.akc ]
  %indvars.iv.next55723 = add nuw nsw i64 %indvars.iv5572257426, 1 ; 3 uses
  %indvars55724 = trunc i64 %indvars.iv.next55723 to i32 ; 2 uses
  %i.izf = shl i32 %indvars55724, 2
  %i.izg = add i32 %i.izf, %.0.copyload.i52517
  %i.izh = zext i32 %i.izg to i64
  %.val48288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.izi = getelementptr inbounds nuw i8, ptr %.val48288, i64 %i.izh
  %.0.copyload.i52519 = load i32, ptr %i.izi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52519) #7, !srcloc !19
  %.not46387 = icmp eq i32 %.0.copyload.i52519, 0
  br i1 %.not46387, label %bb.akd, label %bb.ake

bb.ake:                                           ; preds = %.lr.ph57428
  %i.izj = icmp ugt i32 %i.izb, %indvars55724
  br i1 %i.izj, label %bb.akf, label %.loopexit54618

.loopexit54618:                                   ; preds = %bb.akd, %bb.akc, %bb.ake, %.loopexit54619
  %i.izk = add i32 %.0.copyload.i52516, 1
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.hes, i32 noundef %i.izk, i32 noundef 0) #7
  br label %bb.akj

bb.akf:                                           ; preds = %bb.ake, %bb.akb
  %i.izl = sub i32 0, %.0.copyload.i52516
  %i.izm = and i32 %i.izl, 31
  %i.izn = lshr i32 -1, %i.izm
  %i.izo = add i32 %.0.copyload.i52516, -1
  %i.izp = lshr i32 %i.izo, 5
  %i.izq = zext nneg i32 %i.izp to i64
  br label %bb.akg

bb.akg:                                           ; preds = %bb.aki, %bb.akf
  %indvars.iv55728 = phi i64 [ %indvars.iv.next55729, %bb.aki ], [ 0, %bb.akf ] ; 4 uses
  %indvars.iv55728.tr = trunc nuw nsw i64 %indvars.iv55728 to i32
  %i.izr = shl nuw nsw i32 %indvars.iv55728.tr, 2
  %i.izs = add i32 %i.izr, %.0.copyload.i52517
  %i.izt = zext i32 %i.izs to i64
  %.val48287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.izu = getelementptr inbounds nuw i8, ptr %.val48287, i64 %i.izt
  %.0.copyload.i52520 = load i32, ptr %i.izu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52520) #7, !srcloc !19
  %.not46389 = icmp eq i64 %indvars.iv55728, %i.izq ; 2 uses
  %i.izv = select i1 %.not46389, i32 %i.izn, i32 -1
  %i.izw = and i32 %.0.copyload.i52520, %i.izv    ; 2 uses
  %.not46390 = icmp eq i32 %i.izw, 0
  br i1 %.not46390, label %bb.aki, label %bb.akh

bb.akh:                                           ; preds = %bb.akg
  %i.izx = trunc nuw nsw i64 %indvars.iv55728 to i32
  %i.izy = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.izw, i1 true)
  %i.izz = shl i32 %i.izx, 5
  %i.jaa = or disjoint i32 %i.izy, %i.izz
  br label %.loopexit54617

bb.aki:                                           ; preds = %bb.akg
  %indvars.iv.next55729 = add nuw nsw i64 %indvars.iv55728, 1
  br i1 %.not46389, label %.loopexit54617, label %bb.akg

.loopexit54617:                                   ; preds = %bb.aki, %bb.akh
  %.943138 = phi i32 [ %i.jaa, %bb.akh ], [ -1, %bb.aki ] ; 3 uses
  %i.jab = lshr i32 %.943138, 3
  %i.jac = and i32 %i.jab, 536870908
  %i.jad = add i32 %i.jac, %.0.copyload.i52517
  %i.jae = zext i32 %i.jad to i64                 ; 2 uses
  %.val48286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaf = getelementptr inbounds nuw i8, ptr %.val48286, i64 %i.jae
  %.0.copyload.i52521 = load i32, ptr %i.jaf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52521) #7, !srcloc !19
  %i.jag = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %.943138)
  %i.jah = and i32 %.0.copyload.i52521, %i.jag
  %.val49894 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jai = getelementptr inbounds nuw i8, ptr %.val49894, i64 %i.jae
  store i32 %i.jah, ptr %i.jai, align 1
  br label %bb.akj

bb.akj:                                           ; preds = %.loopexit54617, %.loopexit54618
  %.043447 = phi i32 [ %.0.copyload.i52516, %.loopexit54618 ], [ %.943138, %.loopexit54617 ]
  %.val48285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaj = getelementptr inbounds nuw i8, ptr %.val48285, i64 %i.ilm
  %.0.copyload.i52522 = load i32, ptr %i.jaj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52522) #7, !srcloc !19
  %.not46391 = icmp eq i32 %.0.copyload.i52522, 0
  br i1 %.not46391, label %.loopexit54616, label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  %.val48284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jak = getelementptr inbounds nuw i8, ptr %.val48284, i64 %i.ilg
  %.0.copyload.i52523 = load i32, ptr %i.jak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52523) #7, !srcloc !19
  %i.jal = shl i32 %.0.copyload.i52522, 2
  %i.jam = add i32 %.0.copyload.i52523, %i.jal
  %i.jan = add i32 %i.ilk, -44
  br label %bb.akl

bb.akl:                                           ; preds = %.loopexit54551, %bb.akk
  %.1344109 = phi i32 [ 0, %bb.akk ], [ %.2244118, %.loopexit54551 ] ; 2 uses
  %.4843779 = phi i32 [ 0, %bb.akk ], [ %.5743788, %.loopexit54551 ] ; 2 uses
  %.1243385 = phi i32 [ %i.jam, %bb.akk ], [ %i.jao, %.loopexit54551 ]
  %.043278 = phi i32 [ 0, %bb.akk ], [ %.1043288, %.loopexit54551 ] ; 2 uses
  %i.jao = add i32 %.1243385, -4                  ; 3 uses
  %i.jap = zext i32 %i.jao to i64
  %.val48283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaq = getelementptr inbounds nuw i8, ptr %.val48283, i64 %i.jap
  %.0.copyload.i52524 = load i32, ptr %i.jaq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52524) #7, !srcloc !19
  %i.jar = zext i32 %.0.copyload.i52524 to i64
  %.val48282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jas = getelementptr inbounds nuw i8, ptr %.val48282, i64 %i.jar
  %i.jat = getelementptr inbounds nuw i8, ptr %i.jas, i64 36
  %.0.copyload.i52525 = load i32, ptr %i.jat, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52525) #7, !srcloc !19
  %i.jau = add i32 %.0.copyload.i52524, 36        ; 2 uses
  %.not46392 = icmp eq i32 %.0.copyload.i52525, %i.jau
  br i1 %.not46392, label %.loopexit54551, label %.preheader54550

.preheader54550:                                  ; preds = %bb.akl, %.loopexit54392
  %.1444110 = phi i32 [ %.2144117, %.loopexit54392 ], [ %.1344109, %bb.akl ] ; 2 uses
  %.4943780 = phi i32 [ %.5643787, %.loopexit54392 ], [ %.4843779, %bb.akl ] ; 3 uses
  %.3743662 = phi i32 [ %.0.copyload.i52647, %.loopexit54392 ], [ %.0.copyload.i52525, %bb.akl ] ; 2 uses
  %.143279 = phi i32 [ %.943287, %.loopexit54392 ], [ %.043278, %bb.akl ] ; 3 uses
  %i.jav = add i32 %.3743662, 8                   ; 18 uses
  %.val48281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaw = getelementptr inbounds nuw i8, ptr %.val48281, i64 %i.hex
  %.0.copyload.i52526 = load i32, ptr %i.jaw, align 1 ; 13 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52526) #7, !srcloc !19
  %.not46393 = icmp eq i32 %.0.copyload.i52526, 0
  br i1 %.not46393, label %bb.akv, label %bb.akm

bb.akm:                                           ; preds = %.preheader54550
  %.val48280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jax = getelementptr inbounds nuw i8, ptr %.val48280, i64 %i.hew
  %.0.copyload.i52527 = load i32, ptr %i.jax, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52527) #7, !srcloc !19
  %i.jay = add i32 %.0.copyload.i52526, -1        ; 4 uses
  %i.jaz = lshr i32 %i.jav, 4
  %i.jba = lshr i32 %i.jav, 9
  %i.jbb = xor i32 %i.jaz, %i.jba                 ; 2 uses
  %i.jbc = and i32 %i.jay, %i.jbb                 ; 4 uses
  %i.jbd = shl nuw nsw i32 %i.jbc, 3
  %i.jbe = add i32 %.0.copyload.i52527, %i.jbd    ; 3 uses
  %i.jbf = zext i32 %i.jbe to i64                 ; 2 uses
  %.val48279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbg = getelementptr inbounds nuw i8, ptr %.val48279, i64 %i.jbf
  %.0.copyload.i52528 = load i32, ptr %i.jbg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52528) #7, !srcloc !19
  %i.jbh = icmp eq i32 %.0.copyload.i52528, %i.jav
  br i1 %i.jbh, label %.loopexit54400, label %.preheader54401

.preheader54401:                                  ; preds = %bb.akm, %bb.akn
  %.1043801 = phi i32 [ %i.jbl, %bb.akn ], [ %i.jbc, %bb.akm ]
  %.643579 = phi i32 [ %i.jbk, %bb.akn ], [ 1, %bb.akm ] ; 2 uses
  %.143414 = phi i32 [ %.0.copyload.i52529, %bb.akn ], [ %.0.copyload.i52528, %bb.akm ]
  %i.jbi = icmp eq i32 %.143414, -4
  br i1 %i.jbi, label %.preheader54395, label %bb.akn

bb.akn:                                           ; preds = %.preheader54401
  %i.jbj = add i32 %.643579, %.1043801
  %i.jbk = add i32 %.643579, 1
  %i.jbl = and i32 %i.jbj, %i.jay                 ; 2 uses
  %i.jbm = shl i32 %i.jbl, 3
  %i.jbn = add i32 %i.jbm, %.0.copyload.i52527
  %i.jbo = zext i32 %i.jbn to i64
  %.val48278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbp = getelementptr inbounds nuw i8, ptr %.val48278, i64 %i.jbo
  %.0.copyload.i52529 = load i32, ptr %i.jbp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52529) #7, !srcloc !19
  %.not46394 = icmp eq i32 %.0.copyload.i52529, %i.jav
  br i1 %.not46394, label %.preheader54399, label %.preheader54401

.preheader54399:                                  ; preds = %bb.akn, %bb.ako
  %.1544012 = phi i32 [ %.0.copyload.i52530, %bb.ako ], [ %.0.copyload.i52528, %bb.akn ] ; 2 uses
  %.103 = phi i32 [ %i.jbv, %bb.ako ], [ %i.jbc, %bb.akn ]
  %.243415 = phi i32 [ %i.jbs, %bb.ako ], [ 0, %bb.akn ] ; 4 uses
  %.1943359 = phi i32 [ %i.jbx, %bb.ako ], [ %i.jbe, %bb.akn ] ; 2 uses
  %.1243327 = phi i32 [ %i.jbu, %bb.ako ], [ 1, %bb.akn ] ; 2 uses
  %.not46395 = icmp eq i32 %.1544012, -4
  br i1 %.not46395, label %bb.akp, label %bb.ako

bb.ako:                                           ; preds = %.preheader54399
  %.not46404 = icmp eq i32 %.243415, 0
  %i.jbq = icmp eq i32 %.1544012, -8
  %i.jbr = select i1 %i.jbq, i1 %.not46404, i1 false
  %i.jbs = select i1 %i.jbr, i32 %.1943359, i32 %.243415
  %i.jbt = add i32 %.1243327, %.103
  %i.jbu = add i32 %.1243327, 1
  %i.jbv = and i32 %i.jbt, %i.jay                 ; 2 uses
  %i.jbw = shl i32 %i.jbv, 3
  %i.jbx = add i32 %i.jbw, %.0.copyload.i52527    ; 2 uses
  %i.jby = zext i32 %i.jbx to i64                 ; 2 uses
  %.val48277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbz = getelementptr inbounds nuw i8, ptr %.val48277, i64 %i.jby
  %.0.copyload.i52530 = load i32, ptr %i.jbz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52530) #7, !srcloc !19
  %.not46405 = icmp eq i32 %.0.copyload.i52530, %i.jav
  br i1 %.not46405, label %.loopexit54400, label %.preheader54399

bb.akp:                                           ; preds = %.preheader54399
  %.val48276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jca = getelementptr inbounds nuw i8, ptr %.val48276, i64 %i.hfc
  %.0.copyload.i52531 = load i32, ptr %i.jca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52531) #7, !srcloc !19
  %i.jcb = shl i32 %.0.copyload.i52531, 2
  %i.jcc = add i32 %i.jcb, 4
  %i.jcd = mul i32 %.0.copyload.i52526, 3
  %.not46396 = icmp ult i32 %i.jcc, %i.jcd
  br i1 %.not46396, label %bb.akr, label %bb.akq

bb.akq:                                           ; preds = %bb.akp
  %i.jce = shl i32 %.0.copyload.i52526, 1
  br label %bb.ale

bb.akr:                                           ; preds = %bb.akp
  %i.jcf = xor i32 %.0.copyload.i52531, -1
  %i.jcg = add i32 %.0.copyload.i52526, %i.jcf
  %.val48275 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jch = getelementptr inbounds nuw i8, ptr %.val48275, i64 %i.heh
  %i.jci = getelementptr inbounds nuw i8, ptr %i.jch, i64 1092
  %.0.copyload.i52532 = load i32, ptr %i.jci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52532) #7, !srcloc !19
  %i.jcj = sub i32 %i.jcg, %.0.copyload.i52532
  %i.jck = lshr i32 %.0.copyload.i52526, 3
  %.not46397 = icmp ugt i32 %i.jcj, %i.jck
  br i1 %.not46397, label %bb.aks, label %bb.ale

bb.aks:                                           ; preds = %bb.akr
  %.not46398 = icmp eq i32 %.243415, 0
  %i.jcl = select i1 %.not46398, i32 %.1943359, i32 %.243415 ; 2 uses
  %i.jcm = zext i32 %i.jcl to i64
  %.val48274 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jcn = getelementptr inbounds nuw i8, ptr %.val48274, i64 %i.jcm
  %.0.copyload.i52533 = load i32, ptr %i.jcn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52533) #7, !srcloc !19
  br label %.loopexit54398

.preheader54395:                                  ; preds = %.preheader54401, %bb.akt
  %.1644013 = phi i32 [ %.0.copyload.i52534, %bb.akt ], [ %.0.copyload.i52528, %.preheader54401 ] ; 2 uses
  %.104 = phi i32 [ %i.jct, %bb.akt ], [ %i.jbc, %.preheader54401 ]
  %.343396 = phi i32 [ %i.jcq, %bb.akt ], [ 0, %.preheader54401 ] ; 3 uses
  %.2043360 = phi i32 [ %i.jcv, %bb.akt ], [ %i.jbe, %.preheader54401 ] ; 2 uses
  %.1343328 = phi i32 [ %i.jcs, %bb.akt ], [ 1, %.preheader54401 ] ; 2 uses
  %.not46406 = icmp eq i32 %.1644013, -4
  %.not46407 = icmp eq i32 %.343396, 0            ; 2 uses
  br i1 %.not46406, label %bb.aku, label %bb.akt

bb.akt:                                           ; preds = %.preheader54395
  %i.jco = icmp eq i32 %.1644013, -8
  %i.jcp = select i1 %i.jco, i1 %.not46407, i1 false
  %i.jcq = select i1 %i.jcp, i32 %.2043360, i32 %.343396
  %i.jcr = add i32 %.1343328, %.104
  %i.jcs = add i32 %.1343328, 1
  %i.jct = and i32 %i.jcr, %i.jay                 ; 2 uses
  %i.jcu = shl i32 %i.jct, 3
  %i.jcv = add i32 %i.jcu, %.0.copyload.i52527    ; 2 uses
  %i.jcw = zext i32 %i.jcv to i64                 ; 2 uses
  %.val48273 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jcx = getelementptr inbounds nuw i8, ptr %.val48273, i64 %i.jcw
  %.0.copyload.i52534 = load i32, ptr %i.jcx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52534) #7, !srcloc !19
  %.not46415 = icmp eq i32 %i.jav, %.0.copyload.i52534
  br i1 %.not46415, label %.loopexit54396, label %.preheader54395
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.val48258 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jft = getelementptr inbounds nuw i8, ptr %.val48258, i64 %i.hfc
  %.0.copyload.i52549 = load i32, ptr %i.jft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52549) #7, !srcloc !19
  %i.jfu = add i32 %.0.copyload.i52549, 1
  %.val49888 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfv = getelementptr inbounds nuw i8, ptr %.val49888, i64 %i.hfc
  store i32 %i.jfu, ptr %i.jfv, align 1
  %.not46403 = icmp eq i32 %.1243141, -4
  br i1 %.not46403, label %bb.ali, label %bb.alh

bb.alh:                                           ; preds = %.loopexit54398
  %.val48257 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfw = getelementptr inbounds nuw i8, ptr %.val48257, i64 %i.hfd
  %.0.copyload.i52550 = load i32, ptr %i.jfw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52550) #7, !srcloc !19
  %i.jfx = add i32 %.0.copyload.i52550, -1
  %.val49887 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfy = getelementptr inbounds nuw i8, ptr %.val49887, i64 %i.hfd
  store i32 %i.jfx, ptr %i.jfy, align 1
  br label %bb.ali

bb.ali:                                           ; preds = %bb.alh, %.loopexit54398
  %i.jfz = zext i32 %.2843368 to i64              ; 3 uses
  %.val49886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jga = getelementptr inbounds nuw i8, ptr %.val49886, i64 %i.jfz
  %i.jgb = getelementptr inbounds nuw i8, ptr %i.jga, i64 4
  store i32 -1, ptr %i.jgb, align 1
  %.val49885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgc = getelementptr inbounds nuw i8, ptr %.val49885, i64 %i.jfz
  store i32 %i.jav, ptr %i.jgc, align 1
  br label %.loopexit54400

.loopexit54400:                                   ; preds = %bb.ako, %bb.akm, %bb.ali
  %.pre-phi55781 = phi i64 [ %i.jfz, %bb.ali ], [ %i.jbf, %bb.akm ], [ %i.jby, %bb.ako ]
  %.val48256 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgd = getelementptr inbounds nuw i8, ptr %.val48256, i64 %.pre-phi55781
  %i.jge = getelementptr inbounds nuw i8, ptr %i.jgd, i64 4
  %.0.copyload.i52551 = load i32, ptr %i.jge, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52551) #7, !srcloc !19
  %.not46416 = icmp ult i32 %.0.copyload.i52551, %.4943780
  br i1 %.not46416, label %bb.alj, label %bb.aln

bb.alj:                                           ; preds = %.loopexit54400
  %i.jgf = lshr i32 %.0.copyload.i52551, 3
  %i.jgg = and i32 %i.jgf, 536870908
  %i.jgh = add i32 %i.jgg, %.143279
  %i.jgi = zext i32 %i.jgh to i64
  %.val48255 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgj = getelementptr inbounds nuw i8, ptr %.val48255, i64 %i.jgi
  %.0.copyload.i52552 = load i32, ptr %i.jgj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52552) #7, !srcloc !19
  %i.jgk = and i32 %.0.copyload.i52551, 31
  %i.jgl = shl nuw i32 1, %i.jgk
  %i.jgm = and i32 %.0.copyload.i52552, %i.jgl
  %.not46417 = icmp eq i32 %i.jgm, 0
  br i1 %.not46417, label %bb.aln, label %bb.alk

bb.alk:                                           ; preds = %bb.alj
  %.val48254 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgn = getelementptr inbounds nuw i8, ptr %.val48254, i64 %i.iyq
  %.0.copyload.i52553 = load i32, ptr %i.jgn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52553) #7, !srcloc !19
  %.val48253 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgo = getelementptr inbounds nuw i8, ptr %.val48253, i64 %.pre-phi55897
  %i.jgp = getelementptr inbounds nuw i8, ptr %i.jgo, i64 12
  %.0.copyload.i52554 = load i32, ptr %i.jgp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52554) #7, !srcloc !19
  %.not46418 = icmp ult i32 %.0.copyload.i52553, %.0.copyload.i52554
  br i1 %.not46418, label %bb.alm, label %bb.all

bb.all:                                           ; preds = %bb.alk
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jan, i32 noundef %i.iys, i32 noundef 0, i32 noundef 4) #7
  %.val48252 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgq = getelementptr inbounds nuw i8, ptr %.val48252, i64 %i.iyq
  %.0.copyload.i52555 = load i32, ptr %i.jgq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52555) #7, !srcloc !19
  br label %bb.alm

bb.alm:                                           ; preds = %bb.all, %bb.alk
  %.3043370 = phi i32 [ %.0.copyload.i52555, %bb.all ], [ %.0.copyload.i52553, %bb.alk ]
  %.val48251 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgr = getelementptr inbounds nuw i8, ptr %.val48251, i64 %i.iyt
  %.0.copyload.i52556 = load i32, ptr %i.jgr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52556) #7, !srcloc !19
  %i.jgs = shl i32 %.3043370, 2
  %i.jgt = add i32 %.0.copyload.i52556, %i.jgs
  %i.jgu = zext i32 %i.jgt to i64
  %.val49884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgv = getelementptr inbounds nuw i8, ptr %.val49884, i64 %i.jgu
  store i32 %.0.copyload.i52551, ptr %i.jgv, align 1
  %.val48250 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgw = getelementptr inbounds nuw i8, ptr %.val48250, i64 %i.iyq
  %.0.copyload.i52557 = load i32, ptr %i.jgw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52557) #7, !srcloc !19
  %i.jgx = add i32 %.0.copyload.i52557, 1
  %.val49883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgy = getelementptr inbounds nuw i8, ptr %.val49883, i64 %i.iyq
  store i32 %i.jgx, ptr %i.jgy, align 1
  br label %bb.aln

bb.aln:                                           ; preds = %bb.alj, %.loopexit54400, %bb.alm, %.loopexit54396
  %i.jgz = zext i32 %.3743662 to i64              ; 3 uses
  %.val48249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jha = getelementptr inbounds nuw i8, ptr %.val48249, i64 %i.jgz
  %i.jhb = getelementptr inbounds nuw i8, ptr %i.jha, i64 44
  %.0.copyload.i52558 = load i32, ptr %i.jhb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52558) #7, !srcloc !19
  %.not46419 = icmp eq i32 %.0.copyload.i52558, 0
  br i1 %.not46419, label %.loopexit54392, label %.preheader54391

.preheader54391:                                  ; preds = %bb.aln, %.loopexit54308
  %.1544111 = phi i32 [ %.2044116, %.loopexit54308 ], [ %.1444110, %bb.aln ] ; 19 uses
  %.5043781 = phi i32 [ %.5543786, %.loopexit54308 ], [ %.4943780, %bb.aln ] ; 19 uses
  %.3143371 = phi i32 [ %i.kct, %.loopexit54308 ], [ 0, %bb.aln ] ; 2 uses
  %.243280 = phi i32 [ %.843286, %.loopexit54308 ], [ %.143279, %bb.aln ] ; 14 uses
  %.val48248 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhc = getelementptr inbounds nuw i8, ptr %.val48248, i64 %i.jgz
  %i.jhd = getelementptr inbounds nuw i8, ptr %i.jhc, i64 40
  %.0.copyload.i52559 = load i32, ptr %i.jhd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52559) #7, !srcloc !19
  %i.jhe = shl i32 %.3143371, 3
  %i.jhf = add i32 %.0.copyload.i52559, %i.jhe
  %i.jhg = zext i32 %i.jhf to i64
  %.val48247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhh = getelementptr inbounds nuw i8, ptr %.val48247, i64 %i.jhg
  %.0.copyload.i52560 = load i32, ptr %i.jhh, align 1 ; 38 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52560) #7, !srcloc !19
  %i.jhi = zext i32 %.0.copyload.i52560 to i64
  %.val51131 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhj = getelementptr inbounds nuw i8, ptr %.val51131, i64 %i.jhi
  %.0.copyload.i52561 = load i8, ptr %i.jhj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i52561) #7, !srcloc !21
  %i.jhk = add i8 %.0.copyload.i52561, -109
  %i.jhl = icmp ult i8 %i.jhk, -107
  br i1 %i.jhl, label %.loopexit54308, label %bb.alo

bb.alo:                                           ; preds = %.preheader54391
  %i.jhm = add i32 %.0.copyload.i52560, -8
  %.val48246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhn = getelementptr inbounds nuw i8, ptr %.val48246, i64 %i.hew
  %.0.copyload.i52562 = load i32, ptr %i.jhn, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52562) #7, !srcloc !19
  %.val48245 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jho = getelementptr inbounds nuw i8, ptr %.val48245, i64 %i.hex
  %.0.copyload.i52563 = load i32, ptr %i.jho, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52563) #7, !srcloc !19
  %.not46420 = icmp eq i32 %.0.copyload.i52563, 0 ; 2 uses
  br i1 %.not46420, label %.loopexit54307, label %bb.alp

bb.alp:                                           ; preds = %bb.alo
  %i.jhp = add i32 %.0.copyload.i52563, -1        ; 2 uses
  %i.jhq = lshr i32 %.0.copyload.i52560, 4
  %i.jhr = lshr i32 %.0.copyload.i52560, 9
  %i.jhs = xor i32 %i.jhq, %i.jhr
  %i.jht = and i32 %i.jhp, %i.jhs                 ; 2 uses
  %i.jhu = shl nuw nsw i32 %i.jht, 3
  %i.jhv = add i32 %i.jhu, %.0.copyload.i52562
  %i.jhw = zext i32 %i.jhv to i64
  %.val48244 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhx = getelementptr inbounds nuw i8, ptr %.val48244, i64 %i.jhw
  %.0.copyload.i52564 = load i32, ptr %i.jhx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52564) #7, !srcloc !19
  %i.jhy = icmp eq i32 %.0.copyload.i52564, %.0.copyload.i52560
  br i1 %i.jhy, label %.loopexit54308, label %.preheader54306

.preheader54306:                                  ; preds = %bb.alp, %bb.alq
  %.943582 = phi i32 [ %i.jic, %bb.alq ], [ %i.jht, %bb.alp ]
  %.343416 = phi i32 [ %.0.copyload.i52565, %bb.alq ], [ %.0.copyload.i52564, %bb.alp ]
  %.1643331 = phi i32 [ %i.jib, %bb.alq ], [ 1, %bb.alp ] ; 2 uses
  %i.jhz = icmp eq i32 %.343416, -4
  br i1 %i.jhz, label %.loopexit54307, label %bb.alq

bb.alq:                                           ; preds = %.preheader54306
  %i.jia = add i32 %.1643331, %.943582
  %i.jib = add i32 %.1643331, 1
  %i.jic = and i32 %i.jia, %i.jhp                 ; 2 uses
  %i.jid = shl i32 %i.jic, 3
  %i.jie = add i32 %i.jid, %.0.copyload.i52562
  %i.jif = zext i32 %i.jie to i64
  %.val48243 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jig = getelementptr inbounds nuw i8, ptr %.val48243, i64 %i.jif
  %.0.copyload.i52565 = load i32, ptr %i.jig, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52565) #7, !srcloc !19
  %.not46421 = icmp eq i32 %.0.copyload.i52565, %.0.copyload.i52560
  br i1 %.not46421, label %.loopexit54308, label %.preheader54306

.loopexit54307:                                   ; preds = %.preheader54306, %bb.alo
  %i.jih = zext i32 %i.jhm to i64
  %.val48242 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jii = getelementptr inbounds nuw i8, ptr %.val48242, i64 %i.jih
  %i.jij = getelementptr inbounds nuw i8, ptr %i.jii, i64 36
  %.0.copyload.i52566 = load i32, ptr %i.jij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52566) #7, !srcloc !19
  %.not46422 = icmp eq i32 %.0.copyload.i52524, %.0.copyload.i52566
  %.val48218 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not46422, label %bb.amx, label %bb.alr

bb.alr:                                           ; preds = %.loopexit54307
  %i.jik = getelementptr inbounds nuw i8, ptr %.val48218, i64 %i.hez
  %.0.copyload.i52567 = load i32, ptr %i.jik, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52567) #7, !srcloc !19
  %i.jil = add i32 %.0.copyload.i52567, 31        ; 3 uses
  %i.jim = icmp ult i32 %i.jil, 32
  br i1 %i.jim, label %.loopexit54305, label %bb.als

bb.als:                                           ; preds = %bb.alr
  %.val48240 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jin = getelementptr inbounds nuw i8, ptr %.val48240, i64 %i.hey
  %.0.copyload.i52568 = load i32, ptr %i.jin, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52568) #7, !srcloc !19
  %i.jio = zext i32 %.0.copyload.i52568 to i64
  %.val48239 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jip = getelementptr inbounds nuw i8, ptr %.val48239, i64 %i.jio
  %.0.copyload.i52569 = load i32, ptr %i.jip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52569) #7, !srcloc !19
  %.not46462 = icmp eq i32 %.0.copyload.i52569, 0
  br i1 %.not46462, label %bb.alt, label %bb.amo

bb.alt:                                           ; preds = %bb.als
  %i.jiq = lshr i32 %i.jil, 5                     ; 2 uses
  %i.jir = icmp ult i32 %i.jil, 64
  %i.jis = add nsw i32 %i.jiq, -1
  %i.jit = select i1 %i.jir, i32 0, i32 %i.jis    ; 2 uses
  %wide.trip.count55736 = zext nneg i32 %i.jit to i64
  %exitcond5573757429 = icmp eq i32 %i.jit, 0
  br i1 %exitcond5573757429, label %.loopexit54305, label %.lr.ph57432

bb.alu:                                           ; preds = %.lr.ph57432
  %exitcond55737 = icmp eq i64 %indvars.iv.next55733, %wide.trip.count55736
  br i1 %exitcond55737, label %.loopexit54305, label %.lr.ph57432

.lr.ph57432:                                      ; preds = %bb.alt, %bb.alu
  %indvars.iv5573257430 = phi i64 [ %indvars.iv.next55733, %bb.alu ], [ 0, %bb.alt ]
  %indvars.iv.next55733 = add nuw nsw i64 %indvars.iv5573257430, 1 ; 3 uses
  %indvars55734 = trunc i64 %indvars.iv.next55733 to i32 ; 2 uses
  %i.jiu = shl i32 %indvars55734, 2
  %i.jiv = add i32 %i.jiu, %.0.copyload.i52568
  %i.jiw = zext i32 %i.jiv to i64
  %.val48238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jix = getelementptr inbounds nuw i8, ptr %.val48238, i64 %i.jiw
  %.0.copyload.i52570 = load i32, ptr %i.jix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52570) #7, !srcloc !19
  %.not46463 = icmp eq i32 %.0.copyload.i52570, 0
  br i1 %.not46463, label %bb.alu, label %bb.alv

bb.alv:                                           ; preds = %.lr.ph57432
  %i.jiy = icmp ugt i32 %i.jiq, %indvars55734
  br i1 %i.jiy, label %bb.amo, label %.loopexit54305

.loopexit54305:                                   ; preds = %bb.alu, %bb.alt, %bb.alv, %bb.alr
  %i.jiz = add i32 %.0.copyload.i52567, 1         ; 5 uses
  %.val48237 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jja = getelementptr inbounds nuw i8, ptr %.val48237, i64 %i.hfa
  %.0.copyload.i52571 = load i32, ptr %i.jja, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52571) #7, !srcloc !19
  %i.jjb = shl i32 %.0.copyload.i52571, 5
  %.not46467 = icmp ugt i32 %i.jiz, %i.jjb
  br i1 %.not46467, label %bb.alw, label %bb.ame

bb.alw:                                           ; preds = %.loopexit54305
  %.val48236 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjc = getelementptr inbounds nuw i8, ptr %.val48236, i64 %i.hey
  %.0.copyload.i52572 = load i32, ptr %i.jjc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52572) #7, !srcloc !19
  %i.jjd = add i32 %.0.copyload.i52567, 32
  %i.jje = lshr i32 %i.jjd, 5
  %i.jjf = shl i32 %.0.copyload.i52571, 1
  %i.jjg = tail call i32 @llvm.umax.i32(i32 %i.jjf, i32 %i.jje) ; 6 uses
  %i.jjh = shl i32 %i.jjg, 2
  %i.jji = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52572, i32 noundef %i.jjh) #7 ; 5 uses
  %.not46468 = icmp eq i32 %i.jji, 0
  br i1 %.not46468, label %bb.alx, label %bb.aly

bb.alx:                                           ; preds = %bb.alw
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.aly

bb.aly:                                           ; preds = %bb.alx, %bb.alw
  %.val49882 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjj = getelementptr inbounds nuw i8, ptr %.val49882, i64 %i.hfa
  store i32 %i.jjg, ptr %i.jjj, align 1
  %.val49881 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjk = getelementptr inbounds nuw i8, ptr %.val49881, i64 %i.heh
  %i.jjl = getelementptr inbounds nuw i8, ptr %i.jjk, i64 1100
  store i32 %i.jji, ptr %i.jjl, align 1
  %.val48235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjm = getelementptr inbounds nuw i8, ptr %.val48235, i64 %i.hez
  %.0.copyload.i52573 = load i32, ptr %i.jjm, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52573) #7, !srcloc !19
  %i.jjn = add i32 %.0.copyload.i52573, 31
  %i.jjo = lshr i32 %i.jjn, 5                     ; 4 uses
  %i.jjp = icmp ult i32 %i.jjo, %i.jjg
  br i1 %i.jjp, label %bb.alz, label %bb.ama

bb.alz:                                           ; preds = %bb.aly
  %i.jjq = shl nuw nsw i32 %i.jjo, 2
  %i.jjr = add i32 %i.jjq, %i.jji
  %i.jjs = sub nuw i32 %i.jjg, %i.jjo
  %i.jjt = shl i32 %i.jjs, 2
  %i.jju = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jjr, i32 noundef 0, i32 noundef %i.jjt) #7 ; 0 uses
  br label %bb.ama

bb.ama:                                           ; preds = %bb.alz, %bb.aly
  %i.jjv = and i32 %.0.copyload.i52573, 31        ; 2 uses
  %.not46469 = icmp eq i32 %i.jjv, 0
  br i1 %.not46469, label %bb.amc, label %bb.amb

bb.amb:                                           ; preds = %bb.ama
  %i.jjw = shl nuw nsw i32 %i.jjo, 2
  %i.jjx = add i32 %i.jji, -4
  %i.jjy = add i32 %i.jjx, %i.jjw
  %i.jjz = zext i32 %i.jjy to i64                 ; 2 uses
  %.val48234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jka = getelementptr inbounds nuw i8, ptr %.val48234, i64 %i.jjz
  %.0.copyload.i52574 = load i32, ptr %i.jka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52574) #7, !srcloc !19
  %i.jkb = shl nsw i32 -1, %i.jjv
  %i.jkc = xor i32 %i.jkb, -1
  %i.jkd = and i32 %.0.copyload.i52574, %i.jkc
  %.val49880 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jke = getelementptr inbounds nuw i8, ptr %.val49880, i64 %i.jjz
  store i32 %i.jkd, ptr %i.jke, align 1
  br label %bb.amc

bb.amc:                                           ; preds = %bb.amb, %bb.ama
  %i.jkf = icmp eq i32 %.0.copyload.i52571, %i.jjg
  br i1 %i.jkf, label %bb.ame, label %bb.amd

bb.amd:                                           ; preds = %bb.amc
  %i.jkg = shl i32 %.0.copyload.i52571, 2
  %i.jkh = add i32 %i.jji, %i.jkg
  %i.jki = sub i32 %i.jjg, %.0.copyload.i52571
  %i.jkj = shl i32 %i.jki, 2
  %i.jkk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jkh, i32 noundef 0, i32 noundef %i.jkj) #7 ; 0 uses
  br label %bb.ame

bb.ame:                                           ; preds = %bb.amc, %.loopexit54305, %bb.amd
  %.7544326 = phi i32 [ %.0.copyload.i52567, %.loopexit54305 ], [ %.0.copyload.i52573, %bb.amc ], [ %.0.copyload.i52573, %bb.amd ] ; 4 uses
  %.not46470 = icmp ult i32 %.7544326, %i.jiz
  br i1 %.not46470, label %bb.amf, label %bb.amj

bb.amf:                                           ; preds = %bb.ame
  %.val48233 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkl = getelementptr inbounds nuw i8, ptr %.val48233, i64 %i.hfa
  %.0.copyload.i52575 = load i32, ptr %i.jkl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52575) #7, !srcloc !19
  %i.jkm = add i32 %.7544326, 31
  %i.jkn = lshr i32 %i.jkm, 5                     ; 4 uses
  %i.jko = icmp ugt i32 %.0.copyload.i52575, %i.jkn
  br i1 %i.jko, label %bb.amg, label %bb.amh

bb.amg:                                           ; preds = %bb.amf
  %.val48232 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkp = getelementptr inbounds nuw i8, ptr %.val48232, i64 %i.heh
  %i.jkq = getelementptr inbounds nuw i8, ptr %i.jkp, i64 1100
  %.0.copyload.i52576 = load i32, ptr %i.jkq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52576) #7, !srcloc !19
  %i.jkr = shl nuw nsw i32 %i.jkn, 2
  %i.jks = add i32 %.0.copyload.i52576, %i.jkr
  %i.jkt = sub nuw i32 %.0.copyload.i52575, %i.jkn
  %i.jku = shl i32 %i.jkt, 2
  %i.jkv = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jks, i32 noundef 0, i32 noundef %i.jku) #7 ; 0 uses
  %.val48231 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkw = getelementptr inbounds nuw i8, ptr %.val48231, i64 %i.hez
  %.0.copyload.i52577 = load i32, ptr %i.jkw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52577) #7, !srcloc !19
  br label %bb.amh

bb.amh:                                           ; preds = %bb.amg, %bb.amf
  %.7644327 = phi i32 [ %.0.copyload.i52577, %bb.amg ], [ %.7544326, %bb.amf ] ; 3 uses
  %i.jkx = and i32 %.7644327, 31                  ; 2 uses
  %.not46471 = icmp eq i32 %i.jkx, 0
  br i1 %.not46471, label %bb.amj, label %bb.ami

bb.ami:                                           ; preds = %bb.amh
  %.val48230 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jky = getelementptr inbounds nuw i8, ptr %.val48230, i64 %i.hey
  %.0.copyload.i52578 = load i32, ptr %i.jky, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52578) #7, !srcloc !19
  %i.jkz = shl nuw nsw i32 %i.jkn, 2
  %i.jla = add nsw i32 %i.jkz, -4
  %i.jlb = add i32 %i.jla, %.0.copyload.i52578
  %i.jlc = zext i32 %i.jlb to i64                 ; 2 uses
  %.val48229 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jld = getelementptr inbounds nuw i8, ptr %.val48229, i64 %i.jlc
  %.0.copyload.i52579 = load i32, ptr %i.jld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52579) #7, !srcloc !19
  %i.jle = shl nsw i32 -1, %i.jkx
  %i.jlf = xor i32 %i.jle, -1
  %i.jlg = and i32 %.0.copyload.i52579, %i.jlf
  %.val49879 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlh = getelementptr inbounds nuw i8, ptr %.val49879, i64 %i.jlc
  store i32 %i.jlg, ptr %i.jlh, align 1
  br label %bb.amj

bb.amj:                                           ; preds = %bb.amh, %bb.ame, %bb.ami
  %.7744328 = phi i32 [ %.7544326, %bb.ame ], [ %.7644327, %bb.amh ], [ %.7644327, %bb.ami ]
  %.val49878 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jli = getelementptr inbounds nuw i8, ptr %.val49878, i64 %i.hez
  store i32 %i.jiz, ptr %i.jli, align 1
  %.not46472 = icmp ugt i32 %.7744328, %i.jiz
  br i1 %.not46472, label %bb.amk, label %bb.amt

bb.amk:                                           ; preds = %bb.amj
  %.val48228 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlj = getelementptr inbounds nuw i8, ptr %.val48228, i64 %i.hfa
  %.0.copyload.i52580 = load i32, ptr %i.jlj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52580) #7, !srcloc !19
  %i.jlk = add i32 %.0.copyload.i52567, 32
  %i.jll = lshr i32 %i.jlk, 5                     ; 4 uses
  %i.jlm = icmp ugt i32 %.0.copyload.i52580, %i.jll
  br i1 %i.jlm, label %bb.aml, label %bb.amm

bb.aml:                                           ; preds = %bb.amk
  %.val48227 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jln = getelementptr inbounds nuw i8, ptr %.val48227, i64 %i.heh
  %i.jlo = getelementptr inbounds nuw i8, ptr %i.jln, i64 1100
  %.0.copyload.i52581 = load i32, ptr %i.jlo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52581) #7, !srcloc !19
  %i.jlp = shl nuw nsw i32 %i.jll, 2
  %i.jlq = add i32 %.0.copyload.i52581, %i.jlp
  %i.jlr = sub nuw i32 %.0.copyload.i52580, %i.jll
  %i.jls = shl i32 %i.jlr, 2
  %i.jlt = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jlq, i32 noundef 0, i32 noundef %i.jls) #7 ; 0 uses
  %.val48226 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlu = getelementptr inbounds nuw i8, ptr %.val48226, i64 %i.hez
  %.0.copyload.i52582 = load i32, ptr %i.jlu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52582) #7, !srcloc !19
  br label %bb.amm

bb.amm:                                           ; preds = %bb.amk, %bb.aml
  %.36 = phi i32 [ %.0.copyload.i52582, %bb.aml ], [ %i.jiz, %bb.amk ]
  %i.jlv = and i32 %.36, 31                       ; 2 uses
  %.not46473 = icmp eq i32 %i.jlv, 0
  br i1 %.not46473, label %bb.amt, label %bb.amn

bb.amn:                                           ; preds = %bb.amm
  %i.jlw = shl nsw i32 -1, %i.jlv
  %.val48225 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlx = getelementptr inbounds nuw i8, ptr %.val48225, i64 %i.hey
  %.0.copyload.i52583 = load i32, ptr %i.jlx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52583) #7, !srcloc !19
  %i.jly = shl nuw nsw i32 %i.jll, 2
  %i.jlz = add nsw i32 %i.jly, -4
  %i.jma = add i32 %i.jlz, %.0.copyload.i52583
  br label %bb.ams

bb.amo:                                           ; preds = %bb.alv, %bb.als
  %i.jmb = sub i32 0, %.0.copyload.i52567
  %i.jmc = and i32 %i.jmb, 31
  %i.jmd = lshr i32 -1, %i.jmc
  %i.jme = add i32 %.0.copyload.i52567, -1
  %i.jmf = lshr i32 %i.jme, 5
  %i.jmg = zext nneg i32 %i.jmf to i64
  br label %bb.amp

bb.amp:                                           ; preds = %bb.amr, %bb.amo
  %indvars.iv55738 = phi i64 [ %indvars.iv.next55739, %bb.amr ], [ 0, %bb.amo ] ; 4 uses
  %indvars.iv55738.tr = trunc nuw nsw i64 %indvars.iv55738 to i32
  %i.jmh = shl nuw nsw i32 %indvars.iv55738.tr, 2
  %i.jmi = add i32 %i.jmh, %.0.copyload.i52568
  %i.jmj = zext i32 %i.jmi to i64
  %.val48224 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmk = getelementptr inbounds nuw i8, ptr %.val48224, i64 %i.jmj
  %.0.copyload.i52584 = load i32, ptr %i.jmk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52584) #7, !srcloc !19
  %.not46465 = icmp eq i64 %indvars.iv55738, %i.jmg ; 2 uses
  %i.jml = select i1 %.not46465, i32 %i.jmd, i32 -1
  %i.jmm = and i32 %.0.copyload.i52584, %i.jml    ; 2 uses
  %.not46466 = icmp eq i32 %i.jmm, 0
  br i1 %.not46466, label %bb.amr, label %bb.amq

bb.amq:                                           ; preds = %bb.amp
  %i.jmn = trunc nuw nsw i64 %indvars.iv55738 to i32
  %i.jmo = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jmm, i1 true)
  %i.jmp = shl i32 %i.jmn, 5
  %i.jmq = or disjoint i32 %i.jmo, %i.jmp
  br label %.loopexit54304

bb.amr:                                           ; preds = %bb.amp
  %indvars.iv.next55739 = add nuw nsw i64 %indvars.iv55738, 1
  br i1 %.not46465, label %.loopexit54304, label %bb.amp

.loopexit54304:                                   ; preds = %bb.amr, %bb.amq
  %.37 = phi i32 [ %i.jmq, %bb.amq ], [ -1, %bb.amr ] ; 3 uses
  %i.jmr = and i32 %.37, 31
  %i.jms = shl nuw i32 1, %i.jmr
  %i.jmt = lshr i32 %.37, 3
  %i.jmu = and i32 %i.jmt, 536870908
  %i.jmv = add i32 %i.jmu, %.0.copyload.i52568
  br label %bb.ams

bb.ams:                                           ; preds = %.loopexit54304, %bb.amn
  %.1944016 = phi i32 [ %.0.copyload.i52567, %bb.amn ], [ %.37, %.loopexit54304 ]
  %.105 = phi i32 [ %i.jlw, %bb.amn ], [ %i.jms, %.loopexit54304 ]
  %.1343142 = phi i32 [ %i.jma, %bb.amn ], [ %i.jmv, %.loopexit54304 ]
  %i.jmw = zext i32 %.1343142 to i64              ; 2 uses
  %.val48223 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmx = getelementptr inbounds nuw i8, ptr %.val48223, i64 %i.jmw
  %.0.copyload.i52585 = load i32, ptr %i.jmx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52585) #7, !srcloc !19
  %i.jmy = xor i32 %.105, -1
  %i.jmz = and i32 %.0.copyload.i52585, %i.jmy
  %.val49877 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jna = getelementptr inbounds nuw i8, ptr %.val49877, i64 %i.jmw
  store i32 %i.jmz, ptr %i.jna, align 1
  br label %bb.amt

bb.amt:                                           ; preds = %bb.amm, %bb.amj, %bb.ams
  %.2044017 = phi i32 [ %.0.copyload.i52567, %bb.amj ], [ %.0.copyload.i52567, %bb.amm ], [ %.1944016, %bb.ams ] ; 4 uses
  %.val48222 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnb = getelementptr inbounds nuw i8, ptr %.val48222, i64 %i.hex
  %.0.copyload.i52586 = load i32, ptr %i.jnb, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52586) #7, !srcloc !19
  %.not46474 = icmp eq i32 %.0.copyload.i52586, 0
  br i1 %.not46474, label %bb.apq, label %bb.amu

bb.amu:                                           ; preds = %bb.amt
  %.val48221 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnc = getelementptr inbounds nuw i8, ptr %.val48221, i64 %i.hew
  %.0.copyload.i52587 = load i32, ptr %i.jnc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52587) #7, !srcloc !19
  %i.jnd = add i32 %.0.copyload.i52586, -1        ; 2 uses
  %i.jne = lshr i32 %.0.copyload.i52560, 4
  %i.jnf = lshr i32 %.0.copyload.i52560, 9
  %i.jng = xor i32 %i.jne, %i.jnf
  %i.jnh = and i32 %i.jnd, %i.jng                 ; 2 uses
  %i.jni = shl nuw nsw i32 %i.jnh, 3
  %i.jnj = add i32 %.0.copyload.i52587, %i.jni    ; 2 uses
  %i.jnk = zext i32 %i.jnj to i64                 ; 2 uses
  %.val48220 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnl = getelementptr inbounds nuw i8, ptr %.val48220, i64 %i.jnk
  %.0.copyload.i52588 = load i32, ptr %i.jnl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52588) #7, !srcloc !19
  %i.jnm = icmp eq i32 %.0.copyload.i52588, %.0.copyload.i52560
  br i1 %i.jnm, label %.loopexit54293, label %.preheader54302

.preheader54302:                                  ; preds = %bb.amu, %bb.amw
  %.106 = phi i32 [ %.0.copyload.i52589, %bb.amw ], [ %.0.copyload.i52588, %bb.amu ] ; 2 uses
  %.1143802 = phi i32 [ %i.jnr, %bb.amw ], [ 0, %bb.amu ] ; 3 uses
  %.1043583 = phi i32 [ %i.jnu, %bb.amw ], [ %i.jnh, %bb.amu ]
  %.443417 = phi i32 [ %i.jnw, %bb.amw ], [ %i.jnj, %bb.amu ] ; 2 uses
  %.443397 = phi i32 [ %i.jnt, %bb.amw ], [ 1, %bb.amu ] ; 2 uses
  %i.jnn = icmp eq i32 %.106, -4
  %.not46477 = icmp eq i32 %.1143802, 0           ; 2 uses
  br i1 %i.jnn, label %bb.amv, label %bb.amw

bb.amv:                                           ; preds = %.preheader54302
  %i.jno = select i1 %.not46477, i32 %.443417, i32 %.1143802
  br label %bb.apq

bb.amw:                                           ; preds = %.preheader54302
  %i.jnp = icmp eq i32 %.106, -8
  %i.jnq = select i1 %i.jnp, i1 %.not46477, i1 false
  %i.jnr = select i1 %i.jnq, i32 %.443417, i32 %.1143802
  %i.jns = add i32 %.443397, %.1043583
  %i.jnt = add i32 %.443397, 1
  %i.jnu = and i32 %i.jns, %i.jnd                 ; 2 uses
  %i.jnv = shl i32 %i.jnu, 3
  %i.jnw = add i32 %i.jnv, %.0.copyload.i52587    ; 2 uses
  %i.jnx = zext i32 %i.jnw to i64                 ; 2 uses
  %.val48219 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jny = getelementptr inbounds nuw i8, ptr %.val48219, i64 %i.jnx
  %.0.copyload.i52589 = load i32, ptr %i.jny, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52589) #7, !srcloc !19
  %.not46476 = icmp eq i32 %.0.copyload.i52589, %.0.copyload.i52560
  br i1 %.not46476, label %.loopexit54293, label %.preheader54302

bb.amx:                                           ; preds = %.loopexit54307
  %i.jnz = getelementptr inbounds nuw i8, ptr %.val48218, i64 %i.iyq
  %.0.copyload.i52590 = load i32, ptr %i.jnz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52590) #7, !srcloc !19
  %.not46423 = icmp eq i32 %.0.copyload.i52590, 0
  %.val48213 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not46423, label %bb.anc, label %bb.amy

bb.amy:                                           ; preds = %bb.amx
  %i.joa = getelementptr inbounds nuw i8, ptr %.val48213, i64 %i.iyt
  %.0.copyload.i52591 = load i32, ptr %i.joa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52591) #7, !srcloc !19
  %i.job = shl i32 %.0.copyload.i52590, 2
  %i.joc = add i32 %i.job, -4
  %i.jod = add i32 %i.joc, %.0.copyload.i52591
  %i.joe = zext i32 %i.jod to i64
  %.val48216 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jof = getelementptr inbounds nuw i8, ptr %.val48216, i64 %i.joe
  %.0.copyload.i52592 = load i32, ptr %i.jof, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52592) #7, !srcloc !19
  %i.jog = add i32 %.0.copyload.i52590, -1
  %.val49876 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.joh = getelementptr inbounds nuw i8, ptr %.val49876, i64 %i.iyq
  store i32 %i.jog, ptr %i.joh, align 1
  br i1 %.not46420, label %bb.apj, label %bb.amz

bb.amz:                                           ; preds = %bb.amy
  %i.joi = add i32 %.0.copyload.i52563, -1        ; 2 uses
  %i.joj = lshr i32 %.0.copyload.i52560, 4
  %i.jok = lshr i32 %.0.copyload.i52560, 9
  %i.jol = xor i32 %i.joj, %i.jok
  %i.jom = and i32 %i.joi, %i.jol                 ; 2 uses
  %i.jon = shl nuw nsw i32 %i.jom, 3
  %i.joo = add i32 %i.jon, %.0.copyload.i52562    ; 2 uses
  %i.jop = zext i32 %i.joo to i64                 ; 2 uses
  %.val48215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.joq = getelementptr inbounds nuw i8, ptr %.val48215, i64 %i.jop
  %.0.copyload.i52593 = load i32, ptr %i.joq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52593) #7, !srcloc !19
  %i.jor = icmp eq i32 %.0.copyload.i52593, %.0.copyload.i52560
  br i1 %i.jor, label %.loopexit54293, label %.preheader54298

.preheader54298:                                  ; preds = %bb.amz, %bb.anb
  %.1243803 = phi i32 [ %i.jow, %bb.anb ], [ 0, %bb.amz ] ; 3 uses
  %.1143584 = phi i32 [ %.0.copyload.i52594, %bb.anb ], [ %.0.copyload.i52593, %bb.amz ] ; 2 uses
  %.543418 = phi i32 [ %i.jpb, %bb.anb ], [ %i.joo, %bb.amz ] ; 2 uses
  %.543398 = phi i32 [ %i.joy, %bb.anb ], [ 1, %bb.amz ] ; 2 uses
  %.1743332 = phi i32 [ %i.joz, %bb.anb ], [ %i.jom, %bb.amz ]
  %i.jos = icmp eq i32 %.1143584, -4
  %.not46455 = icmp eq i32 %.1243803, 0           ; 2 uses
  br i1 %i.jos, label %bb.ana, label %bb.anb

bb.ana:                                           ; preds = %.preheader54298
  %i.jot = select i1 %.not46455, i32 %.543418, i32 %.1243803
  br label %bb.apj

bb.anb:                                           ; preds = %.preheader54298
  %i.jou = icmp eq i32 %.1143584, -8
  %i.jov = select i1 %i.jou, i1 %.not46455, i1 false
  %i.jow = select i1 %i.jov, i32 %.543418, i32 %.1243803
  %i.jox = add i32 %.1743332, %.543398
  %i.joy = add i32 %.543398, 1
  %i.joz = and i32 %i.jox, %i.joi                 ; 2 uses
  %i.jpa = shl i32 %i.joz, 3
  %i.jpb = add i32 %i.jpa, %.0.copyload.i52562    ; 2 uses
  %i.jpc = zext i32 %i.jpb to i64                 ; 2 uses
  %.val48214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpd = getelementptr inbounds nuw i8, ptr %.val48214, i64 %i.jpc
  %.0.copyload.i52594 = load i32, ptr %i.jpd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52594) #7, !srcloc !19
  %.not46454 = icmp eq i32 %.0.copyload.i52594, %.0.copyload.i52560
  br i1 %.not46454, label %.loopexit54293, label %.preheader54298

bb.anc:                                           ; preds = %bb.amx
  %i.jpe = getelementptr inbounds nuw i8, ptr %.val48213, i64 %i.hez
  %.0.copyload.i52595 = load i32, ptr %i.jpe, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52595) #7, !srcloc !19
  %i.jpf = add i32 %.0.copyload.i52595, 31        ; 3 uses
  %i.jpg = icmp ult i32 %i.jpf, 32
  br i1 %i.jpg, label %.loopexit54295, label %bb.and

bb.and:                                           ; preds = %bb.anc
  %.val48212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jph = getelementptr inbounds nuw i8, ptr %.val48212, i64 %i.hey
  %.0.copyload.i52596 = load i32, ptr %i.jph, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52596) #7, !srcloc !19
  %i.jpi = zext i32 %.0.copyload.i52596 to i64
  %.val48211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpj = getelementptr inbounds nuw i8, ptr %.val48211, i64 %i.jpi
  %.0.copyload.i52597 = load i32, ptr %i.jpj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52597) #7, !srcloc !19
  %.not46424 = icmp eq i32 %.0.copyload.i52597, 0
  br i1 %.not46424, label %bb.ane, label %bb.anz

bb.ane:                                           ; preds = %bb.and
  %i.jpk = lshr i32 %i.jpf, 5                     ; 2 uses
  %i.jpl = icmp ult i32 %i.jpf, 64
  %i.jpm = add nsw i32 %i.jpk, -1
  %i.jpn = select i1 %i.jpl, i32 0, i32 %i.jpm    ; 2 uses
  %wide.trip.count55746 = zext nneg i32 %i.jpn to i64
  %exitcond5574757433 = icmp eq i32 %i.jpn, 0
  br i1 %exitcond5574757433, label %.loopexit54295, label %.lr.ph57436

bb.anf:                                           ; preds = %.lr.ph57436
  %exitcond55747 = icmp eq i64 %indvars.iv.next55743, %wide.trip.count55746
  br i1 %exitcond55747, label %.loopexit54295, label %.lr.ph57436

.lr.ph57436:                                      ; preds = %bb.ane, %bb.anf
  %indvars.iv5574257434 = phi i64 [ %indvars.iv.next55743, %bb.anf ], [ 0, %bb.ane ]
  %indvars.iv.next55743 = add nuw nsw i64 %indvars.iv5574257434, 1 ; 3 uses
  %indvars55744 = trunc i64 %indvars.iv.next55743 to i32 ; 2 uses
  %i.jpo = shl i32 %indvars55744, 2
  %i.jpp = add i32 %i.jpo, %.0.copyload.i52596
  %i.jpq = zext i32 %i.jpp to i64
  %.val48210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpr = getelementptr inbounds nuw i8, ptr %.val48210, i64 %i.jpq
  %.0.copyload.i52598 = load i32, ptr %i.jpr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52598) #7, !srcloc !19
  %.not46425 = icmp eq i32 %.0.copyload.i52598, 0
  br i1 %.not46425, label %bb.anf, label %bb.ang

bb.ang:                                           ; preds = %.lr.ph57436
  %i.jps = icmp ugt i32 %i.jpk, %indvars55744
  br i1 %i.jps, label %bb.anz, label %.loopexit54295

.loopexit54295:                                   ; preds = %bb.anf, %bb.ane, %bb.ang, %bb.anc
  %i.jpt = add i32 %.0.copyload.i52595, 1         ; 5 uses
  %.val48209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpu = getelementptr inbounds nuw i8, ptr %.val48209, i64 %i.hfa
  %.0.copyload.i52599 = load i32, ptr %i.jpu, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52599) #7, !srcloc !19
  %i.jpv = shl i32 %.0.copyload.i52599, 5
  %.not46429 = icmp ugt i32 %i.jpt, %i.jpv
  br i1 %.not46429, label %bb.anh, label %bb.anp

bb.anh:                                           ; preds = %.loopexit54295
  %.val48208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpw = getelementptr inbounds nuw i8, ptr %.val48208, i64 %i.hey
  %.0.copyload.i52600 = load i32, ptr %i.jpw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52600) #7, !srcloc !19
  %i.jpx = add i32 %.0.copyload.i52595, 32
  %i.jpy = lshr i32 %i.jpx, 5
  %i.jpz = shl i32 %.0.copyload.i52599, 1
  %i.jqa = tail call i32 @llvm.umax.i32(i32 %i.jpz, i32 %i.jpy) ; 6 uses
  %i.jqb = shl i32 %i.jqa, 2
  %i.jqc = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52600, i32 noundef %i.jqb) #7 ; 5 uses
  %.not46430 = icmp eq i32 %i.jqc, 0
  br i1 %.not46430, label %bb.ani, label %bb.anj

bb.ani:                                           ; preds = %bb.anh
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.anj

bb.anj:                                           ; preds = %bb.ani, %bb.anh
  %.val49875 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqd = getelementptr inbounds nuw i8, ptr %.val49875, i64 %i.hfa
  store i32 %i.jqa, ptr %i.jqd, align 1
  %.val49874 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqe = getelementptr inbounds nuw i8, ptr %.val49874, i64 %i.heh
  %i.jqf = getelementptr inbounds nuw i8, ptr %i.jqe, i64 1100
  store i32 %i.jqc, ptr %i.jqf, align 1
  %.val48207 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqg = getelementptr inbounds nuw i8, ptr %.val48207, i64 %i.hez
  %.0.copyload.i52601 = load i32, ptr %i.jqg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52601) #7, !srcloc !19
  %i.jqh = add i32 %.0.copyload.i52601, 31
  %i.jqi = lshr i32 %i.jqh, 5                     ; 4 uses
  %i.jqj = icmp ult i32 %i.jqi, %i.jqa
  br i1 %i.jqj, label %bb.ank, label %bb.anl

bb.ank:                                           ; preds = %bb.anj
  %i.jqk = shl nuw nsw i32 %i.jqi, 2
  %i.jql = add i32 %i.jqk, %i.jqc
  %i.jqm = sub nuw i32 %i.jqa, %i.jqi
  %i.jqn = shl i32 %i.jqm, 2
  %i.jqo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jql, i32 noundef 0, i32 noundef %i.jqn) #7 ; 0 uses
  br label %bb.anl

bb.anl:                                           ; preds = %bb.ank, %bb.anj
  %i.jqp = and i32 %.0.copyload.i52601, 31        ; 2 uses
  %.not46431 = icmp eq i32 %i.jqp, 0
  br i1 %.not46431, label %bb.ann, label %bb.anm

bb.anm:                                           ; preds = %bb.anl
  %i.jqq = shl nuw nsw i32 %i.jqi, 2
  %i.jqr = add i32 %i.jqc, -4
  %i.jqs = add i32 %i.jqr, %i.jqq
  %i.jqt = zext i32 %i.jqs to i64                 ; 2 uses
  %.val48206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqu = getelementptr inbounds nuw i8, ptr %.val48206, i64 %i.jqt
  %.0.copyload.i52602 = load i32, ptr %i.jqu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52602) #7, !srcloc !19
  %i.jqv = shl nsw i32 -1, %i.jqp
  %i.jqw = xor i32 %i.jqv, -1
  %i.jqx = and i32 %.0.copyload.i52602, %i.jqw
  %.val49873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqy = getelementptr inbounds nuw i8, ptr %.val49873, i64 %i.jqt
  store i32 %i.jqx, ptr %i.jqy, align 1
  br label %bb.ann

bb.ann:                                           ; preds = %bb.anm, %bb.anl
  %i.jqz = icmp eq i32 %.0.copyload.i52599, %i.jqa
  br i1 %i.jqz, label %bb.anp, label %bb.ano

bb.ano:                                           ; preds = %bb.ann
  %i.jra = shl i32 %.0.copyload.i52599, 2
  %i.jrb = add i32 %i.jqc, %i.jra
  %i.jrc = sub i32 %i.jqa, %.0.copyload.i52599
  %i.jrd = shl i32 %i.jrc, 2
  %i.jre = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jrb, i32 noundef 0, i32 noundef %i.jrd) #7 ; 0 uses
  br label %bb.anp

bb.anp:                                           ; preds = %bb.ann, %.loopexit54295, %bb.ano
  %.8044331 = phi i32 [ %.0.copyload.i52595, %.loopexit54295 ], [ %.0.copyload.i52601, %bb.ann ], [ %.0.copyload.i52601, %bb.ano ] ; 4 uses
  %.not46432 = icmp ult i32 %.8044331, %i.jpt
  br i1 %.not46432, label %bb.anq, label %bb.anu

bb.anq:                                           ; preds = %bb.anp
  %.val48205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrf = getelementptr inbounds nuw i8, ptr %.val48205, i64 %i.hfa
  %.0.copyload.i52603 = load i32, ptr %i.jrf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52603) #7, !srcloc !19
  %i.jrg = add i32 %.8044331, 31
  %i.jrh = lshr i32 %i.jrg, 5                     ; 4 uses
  %i.jri = icmp ugt i32 %.0.copyload.i52603, %i.jrh
  br i1 %i.jri, label %bb.anr, label %bb.ans

bb.anr:                                           ; preds = %bb.anq
  %.val48204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrj = getelementptr inbounds nuw i8, ptr %.val48204, i64 %i.heh
  %i.jrk = getelementptr inbounds nuw i8, ptr %i.jrj, i64 1100
  %.0.copyload.i52604 = load i32, ptr %i.jrk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52604) #7, !srcloc !19
  %i.jrl = shl nuw nsw i32 %i.jrh, 2
  %i.jrm = add i32 %.0.copyload.i52604, %i.jrl
  %i.jrn = sub nuw i32 %.0.copyload.i52603, %i.jrh
  %i.jro = shl i32 %i.jrn, 2
  %i.jrp = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jrm, i32 noundef 0, i32 noundef %i.jro) #7 ; 0 uses
  %.val48203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrq = getelementptr inbounds nuw i8, ptr %.val48203, i64 %i.hez
  %.0.copyload.i52605 = load i32, ptr %i.jrq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52605) #7, !srcloc !19
  br label %bb.ans

bb.ans:                                           ; preds = %bb.anr, %bb.anq
  %.8144332 = phi i32 [ %.0.copyload.i52605, %bb.anr ], [ %.8044331, %bb.anq ] ; 3 uses
  %i.jrr = and i32 %.8144332, 31                  ; 2 uses
  %.not46433 = icmp eq i32 %i.jrr, 0
  br i1 %.not46433, label %bb.anu, label %bb.ant

bb.ant:                                           ; preds = %bb.ans
  %.val48202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrs = getelementptr inbounds nuw i8, ptr %.val48202, i64 %i.hey
  %.0.copyload.i52606 = load i32, ptr %i.jrs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52606) #7, !srcloc !19
  %i.jrt = shl nuw nsw i32 %i.jrh, 2
  %i.jru = add nsw i32 %i.jrt, -4
  %i.jrv = add i32 %i.jru, %.0.copyload.i52606
  %i.jrw = zext i32 %i.jrv to i64                 ; 2 uses
  %.val48201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrx = getelementptr inbounds nuw i8, ptr %.val48201, i64 %i.jrw
  %.0.copyload.i52607 = load i32, ptr %i.jrx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52607) #7, !srcloc !19
  %i.jry = shl nsw i32 -1, %i.jrr
  %i.jrz = xor i32 %i.jry, -1
  %i.jsa = and i32 %.0.copyload.i52607, %i.jrz
  %.val49872 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsb = getelementptr inbounds nuw i8, ptr %.val49872, i64 %i.jrw
  store i32 %i.jsa, ptr %i.jsb, align 1
  br label %bb.anu

bb.anu:                                           ; preds = %bb.ans, %bb.anp, %bb.ant
  %.8244333 = phi i32 [ %.8044331, %bb.anp ], [ %.8144332, %bb.ans ], [ %.8144332, %bb.ant ]
  %.val49871 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsc = getelementptr inbounds nuw i8, ptr %.val49871, i64 %i.hez
  store i32 %i.jpt, ptr %i.jsc, align 1
  %.not46434 = icmp ugt i32 %.8244333, %i.jpt
  br i1 %.not46434, label %bb.anv, label %bb.aoe

bb.anv:                                           ; preds = %bb.anu
  %.val48200 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsd = getelementptr inbounds nuw i8, ptr %.val48200, i64 %i.hfa
  %.0.copyload.i52608 = load i32, ptr %i.jsd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52608) #7, !srcloc !19
  %i.jse = add i32 %.0.copyload.i52595, 32
  %i.jsf = lshr i32 %i.jse, 5                     ; 4 uses
  %i.jsg = icmp ugt i32 %.0.copyload.i52608, %i.jsf
  br i1 %i.jsg, label %bb.anw, label %bb.anx

bb.anw:                                           ; preds = %bb.anv
  %.val48199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsh = getelementptr inbounds nuw i8, ptr %.val48199, i64 %i.heh
  %i.jsi = getelementptr inbounds nuw i8, ptr %i.jsh, i64 1100
  %.0.copyload.i52609 = load i32, ptr %i.jsi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52609) #7, !srcloc !19
  %i.jsj = shl nuw nsw i32 %i.jsf, 2
  %i.jsk = add i32 %.0.copyload.i52609, %i.jsj
  %i.jsl = sub nuw i32 %.0.copyload.i52608, %i.jsf
  %i.jsm = shl i32 %i.jsl, 2
  %i.jsn = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jsk, i32 noundef 0, i32 noundef %i.jsm) #7 ; 0 uses
  %.val48198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jso = getelementptr inbounds nuw i8, ptr %.val48198, i64 %i.hez
  %.0.copyload.i52610 = load i32, ptr %i.jso, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52610) #7, !srcloc !19
  br label %bb.anx

bb.anx:                                           ; preds = %bb.anv, %bb.anw
  %.38 = phi i32 [ %.0.copyload.i52610, %bb.anw ], [ %i.jpt, %bb.anv ]
  %i.jsp = and i32 %.38, 31                       ; 2 uses
  %.not46435 = icmp eq i32 %i.jsp, 0
  br i1 %.not46435, label %bb.aoe, label %bb.any

bb.any:                                           ; preds = %bb.anx
  %i.jsq = shl nsw i32 -1, %i.jsp
  %.val48197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsr = getelementptr inbounds nuw i8, ptr %.val48197, i64 %i.hey
  %.0.copyload.i52611 = load i32, ptr %i.jsr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52611) #7, !srcloc !19
  %i.jss = shl nuw nsw i32 %i.jsf, 2
  %i.jst = add nsw i32 %i.jss, -4
  %i.jsu = add i32 %i.jst, %.0.copyload.i52611
  br label %bb.aod

bb.anz:                                           ; preds = %bb.ang, %bb.and
  %i.jsv = sub i32 0, %.0.copyload.i52595
  %i.jsw = and i32 %i.jsv, 31
  %i.jsx = lshr i32 -1, %i.jsw
  %i.jsy = add i32 %.0.copyload.i52595, -1
  %i.jsz = lshr i32 %i.jsy, 5
  %i.jta = zext nneg i32 %i.jsz to i64
  br label %bb.aoa

bb.aoa:                                           ; preds = %bb.aoc, %bb.anz
  %indvars.iv55748 = phi i64 [ %indvars.iv.next55749, %bb.aoc ], [ 0, %bb.anz ] ; 4 uses
  %indvars.iv55748.tr = trunc nuw nsw i64 %indvars.iv55748 to i32
  %i.jtb = shl nuw nsw i32 %indvars.iv55748.tr, 2
  %i.jtc = add i32 %i.jtb, %.0.copyload.i52596
  %i.jtd = zext i32 %i.jtc to i64
  %.val48196 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jte = getelementptr inbounds nuw i8, ptr %.val48196, i64 %i.jtd
  %.0.copyload.i52612 = load i32, ptr %i.jte, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52612) #7, !srcloc !19
  %.not46427 = icmp eq i64 %indvars.iv55748, %i.jta ; 2 uses
  %i.jtf = select i1 %.not46427, i32 %i.jsx, i32 -1
  %i.jtg = and i32 %.0.copyload.i52612, %i.jtf    ; 2 uses
  %.not46428 = icmp eq i32 %i.jtg, 0
  br i1 %.not46428, label %bb.aoc, label %bb.aob

bb.aob:                                           ; preds = %bb.aoa
  %i.jth = trunc nuw nsw i64 %indvars.iv55748 to i32
  %i.jti = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jtg, i1 true)
  %i.jtj = shl i32 %i.jth, 5
  %i.jtk = or disjoint i32 %i.jti, %i.jtj
  br label %.loopexit54294

bb.aoc:                                           ; preds = %bb.aoa
  %indvars.iv.next55749 = add nuw nsw i64 %indvars.iv55748, 1
  br i1 %.not46427, label %.loopexit54294, label %bb.aoa

.loopexit54294:                                   ; preds = %bb.aoc, %bb.aob
  %.39 = phi i32 [ %i.jtk, %bb.aob ], [ -1, %bb.aoc ] ; 3 uses
  %i.jtl = and i32 %.39, 31
  %i.jtm = shl nuw i32 1, %i.jtl
  %i.jtn = lshr i32 %.39, 3
  %i.jto = and i32 %i.jtn, 536870908
  %i.jtp = add i32 %i.jto, %.0.copyload.i52596
  br label %bb.aod

bb.aod:                                           ; preds = %.loopexit54294, %bb.any
  %.2144018 = phi i32 [ %.0.copyload.i52595, %bb.any ], [ %.39, %.loopexit54294 ]
  %.107 = phi i32 [ %i.jsq, %bb.any ], [ %i.jtm, %.loopexit54294 ]
  %.1443143 = phi i32 [ %i.jsu, %bb.any ], [ %i.jtp, %.loopexit54294 ]
  %i.jtq = zext i32 %.1443143 to i64              ; 2 uses
  %.val48195 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jtr = getelementptr inbounds nuw i8, ptr %.val48195, i64 %i.jtq
  %.0.copyload.i52613 = load i32, ptr %i.jtr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52613) #7, !srcloc !19
  %i.jts = xor i32 %.107, -1
  %i.jtt = and i32 %.0.copyload.i52613, %i.jts
  %.val49870 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jtu = getelementptr inbounds nuw i8, ptr %.val49870, i64 %i.jtq
  store i32 %i.jtt, ptr %i.jtu, align 1
  br label %bb.aoe

bb.aoe:                                           ; preds = %bb.anx, %bb.anu, %bb.aod
  %.2244019 = phi i32 [ %.0.copyload.i52595, %bb.anu ], [ %.0.copyload.i52595, %bb.anx ], [ %.2144018, %bb.aod ] ; 10 uses
  %.not46436 = icmp ult i32 %.2244019, %.5043781
  br i1 %.not46436, label %bb.aoy, label %bb.aof

bb.aof:                                           ; preds = %bb.aoe
  %i.jtv = add i32 %.2244019, 1                   ; 7 uses
  %i.jtw = shl i32 %.1544111, 5
  %.not46437 = icmp ugt i32 %i.jtv, %i.jtw
  br i1 %.not46437, label %bb.aog, label %bb.aoo

bb.aog:                                           ; preds = %bb.aof
  %i.jtx = add i32 %.2244019, 32
  %i.jty = lshr i32 %i.jtx, 5
  %i.jtz = shl i32 %.1544111, 1
  %i.jua = tail call i32 @llvm.umax.i32(i32 %i.jtz, i32 %i.jty) ; 6 uses
  %i.jub = shl i32 %i.jua, 2
  %i.juc = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.243280, i32 noundef %i.jub) #7 ; 6 uses
  %.not46438 = icmp eq i32 %i.juc, 0
  br i1 %.not46438, label %bb.aoh, label %bb.aoi

bb.aoh:                                           ; preds = %bb.aog
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.aoi

bb.aoi:                                           ; preds = %bb.aoh, %bb.aog
  %i.jud = add i32 %.5043781, 31
  %i.jue = lshr i32 %i.jud, 5                     ; 4 uses
  %i.juf = icmp ult i32 %i.jue, %i.jua
  br i1 %i.juf, label %bb.aoj, label %bb.aok

bb.aoj:                                           ; preds = %bb.aoi
  %i.jug = shl nuw nsw i32 %i.jue, 2
  %i.juh = add i32 %i.juc, %i.jug
  %i.jui = sub nuw i32 %i.jua, %i.jue
  %i.juj = shl i32 %i.jui, 2
  %i.juk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.juh, i32 noundef 0, i32 noundef %i.juj) #7 ; 0 uses
  br label %bb.aok

bb.aok:                                           ; preds = %bb.aoj, %bb.aoi
  %i.jul = and i32 %.5043781, 31                  ; 2 uses
  %.not46439 = icmp eq i32 %i.jul, 0
  br i1 %.not46439, label %bb.aom, label %bb.aol

bb.aol:                                           ; preds = %bb.aok
  %i.jum = shl nuw nsw i32 %i.jue, 2
  %i.jun = add nsw i32 %i.jum, -4
  %i.juo = add i32 %i.jun, %i.juc
  %i.jup = zext i32 %i.juo to i64                 ; 2 uses
  %.val48194 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.juq = getelementptr inbounds nuw i8, ptr %.val48194, i64 %i.jup
  %.0.copyload.i52614 = load i32, ptr %i.juq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52614) #7, !srcloc !19
  %i.jur = shl nsw i32 -1, %i.jul
  %i.jus = xor i32 %i.jur, -1
  %i.jut = and i32 %.0.copyload.i52614, %i.jus
  %.val49869 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.juu = getelementptr inbounds nuw i8, ptr %.val49869, i64 %i.jup
  store i32 %i.jut, ptr %i.juu, align 1
  br label %bb.aom

bb.aom:                                           ; preds = %bb.aol, %bb.aok
  %i.juv = icmp eq i32 %i.jua, %.1544111
  br i1 %i.juv, label %bb.aoo, label %bb.aon

bb.aon:                                           ; preds = %bb.aom
  %i.juw = shl i32 %.1544111, 2
  %i.jux = add i32 %i.juc, %i.juw
  %i.juy = sub i32 %i.jua, %.1544111
  %i.juz = shl i32 %i.juy, 2
  %i.jva = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jux, i32 noundef 0, i32 noundef %i.juz) #7 ; 0 uses
  br label %bb.aoo

bb.aoo:                                           ; preds = %bb.aom, %bb.aof, %bb.aon
  %.8444335 = phi i32 [ %i.jua, %bb.aon ], [ %.1544111, %bb.aof ], [ %.1544111, %bb.aom ] ; 7 uses
  %.343281 = phi i32 [ %i.juc, %bb.aon ], [ %.243280, %bb.aof ], [ %i.juc, %bb.aom ] ; 7 uses
  %.not46440 = icmp ugt i32 %i.jtv, %.5043781
  br i1 %.not46440, label %bb.aop, label %bb.aot

bb.aop:                                           ; preds = %bb.aoo
  %i.jvb = add i32 %.5043781, 31
  %i.jvc = lshr i32 %i.jvb, 5                     ; 4 uses
  %i.jvd = icmp ult i32 %i.jvc, %.8444335
  br i1 %i.jvd, label %bb.aoq, label %bb.aor

bb.aoq:                                           ; preds = %bb.aop
  %i.jve = shl nuw nsw i32 %i.jvc, 2
  %i.jvf = add i32 %.343281, %i.jve
  %i.jvg = sub nuw i32 %.8444335, %i.jvc
  %i.jvh = shl i32 %i.jvg, 2
  %i.jvi = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jvf, i32 noundef 0, i32 noundef %i.jvh) #7 ; 0 uses
  br label %bb.aor

bb.aor:                                           ; preds = %bb.aoq, %bb.aop
  %i.jvj = and i32 %.5043781, 31                  ; 2 uses
  %.not46441 = icmp eq i32 %i.jvj, 0
  br i1 %.not46441, label %bb.aot, label %bb.aos

bb.aos:                                           ; preds = %bb.aor
  %i.jvk = shl nuw nsw i32 %i.jvc, 2
  %i.jvl = add nsw i32 %i.jvk, -4
  %i.jvm = add i32 %i.jvl, %.343281
  %i.jvn = zext i32 %i.jvm to i64                 ; 2 uses
  %.val48193 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jvo = getelementptr inbounds nuw i8, ptr %.val48193, i64 %i.jvn
  %.0.copyload.i52615 = load i32, ptr %i.jvo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52615) #7, !srcloc !19
  %i.jvp = shl nsw i32 -1, %i.jvj
  %i.jvq = xor i32 %i.jvp, -1
  %i.jvr = and i32 %.0.copyload.i52615, %i.jvq
  %.val49868 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jvs = getelementptr inbounds nuw i8, ptr %.val49868, i64 %i.jvn
  store i32 %i.jvr, ptr %i.jvs, align 1
  br label %bb.aot

bb.aot:                                           ; preds = %bb.aor, %bb.aoo, %bb.aos
  %.not46442 = icmp ult i32 %i.jtv, %.5043781
  br i1 %.not46442, label %bb.aou, label %bb.aoy

bb.aou:                                           ; preds = %bb.aot
  %i.jvt = add i32 %.2244019, 32
  %i.jvu = lshr i32 %i.jvt, 5                     ; 4 uses
  %i.jvv = icmp ult i32 %i.jvu, %.8444335
  br i1 %i.jvv, label %bb.aov, label %bb.aow

bb.aov:                                           ; preds = %bb.aou
  %i.jvw = shl nuw nsw i32 %i.jvu, 2
  %i.jvx = add i32 %.343281, %i.jvw
  %i.jvy = sub nuw i32 %.8444335, %i.jvu
  %i.jvz = shl i32 %i.jvy, 2
  %i.jwa = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jvx, i32 noundef 0, i32 noundef %i.jvz) #7 ; 0 uses
  br label %bb.aow

bb.aow:                                           ; preds = %bb.aov, %bb.aou
  %i.jwb = and i32 %i.jtv, 31                     ; 2 uses
  %.not46443 = icmp eq i32 %i.jwb, 0
  br i1 %.not46443, label %bb.aoy, label %bb.aox

bb.aox:                                           ; preds = %bb.aow
  %i.jwc = shl nuw nsw i32 %i.jvu, 2
  %i.jwd = add nsw i32 %i.jwc, -4
  %i.jwe = add i32 %i.jwd, %.343281
  %i.jwf = zext i32 %i.jwe to i64                 ; 2 uses
  %.val48192 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jwg = getelementptr inbounds nuw i8, ptr %.val48192, i64 %i.jwf
  %.0.copyload.i52616 = load i32, ptr %i.jwg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52616) #7, !srcloc !19
  %i.jwh = shl nsw i32 -1, %i.jwb
  %i.jwi = xor i32 %i.jwh, -1
  %i.jwj = and i32 %.0.copyload.i52616, %i.jwi
  %.val49867 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jwk = getelementptr inbounds nuw i8, ptr %.val49867, i64 %i.jwf
  store i32 %i.jwj, ptr %i.jwk, align 1
  br label %bb.aoy

bb.aoy:                                           ; preds = %bb.aox, %bb.aot, %bb.aow, %bb.aoe
  %.1644112 = phi i32 [ %.1544111, %bb.aoe ], [ %.8444335, %bb.aow ], [ %.8444335, %bb.aot ], [ %.8444335, %bb.aox ] ; 4 uses
  %.5143782 = phi i32 [ %.5043781, %bb.aoe ], [ %i.jtv, %bb.aow ], [ %i.jtv, %bb.aot ], [ %i.jtv, %bb.aox ] ; 4 uses
  %.443282 = phi i32 [ %.243280, %bb.aoe ], [ %.343281, %bb.aow ], [ %.343281, %bb.aot ], [ %.343281, %bb.aox ] ; 5 uses
  %i.jwl = lshr i32 %.2244019, 3
  %i.jwm = and i32 %i.jwl, 536870908
  %i.jwn = add i32 %.443282, %i.jwm
  %i.jwo = zext i32 %i.jwn to i64                 ; 2 uses
  %.val48191 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jwp = getelementptr inbounds nuw i8, ptr %.val48191, i64 %i.jwo
  %.0.copyload.i52617 = load i32, ptr %i.jwp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52617) #7, !srcloc !19
  %i.jwq = and i32 %.2244019, 31
  %i.jwr = shl nuw i32 1, %i.jwq
  %i.jws = or i32 %.0.copyload.i52617, %i.jwr
  %.val49866 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jwt = getelementptr inbounds nuw i8, ptr %.val49866, i64 %i.jwo
  store i32 %i.jws, ptr %i.jwt, align 1
  %.val48190 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jwu = getelementptr inbounds nuw i8, ptr %.val48190, i64 %i.hex
  %.0.copyload.i52618 = load i32, ptr %i.jwu, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52618) #7, !srcloc !19
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.ppn = add i32 %.87, 4                        ; 2 uses
  %i.ppo = sub i32 %i.ppn, %.0.copyload.i53363
  %i.ppp = ashr i32 %i.ppo, 2
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_up0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i53363, i32 noundef %i.ppn, i32 noundef %.0.copyload.i53396, i32 noundef %i.ppp) #7
  br label %bb.bgp

bb.bgp:                                           ; preds = %bb.bgb, %bb.bgo, %bb.bgn
  %.val47433 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppq = getelementptr inbounds nuw i8, ptr %.val47433, i64 %i.ooa
  %.0.copyload.i53444 = load i32, ptr %i.ppq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53444) #7, !srcloc !19
  %i.ppr = add i32 %.0.copyload.i53444, -1
  %.val49668 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pps = getelementptr inbounds nuw i8, ptr %.val49668, i64 %i.ooa
  store i32 %i.ppr, ptr %i.pps, align 1
  %.val47432 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppt = getelementptr inbounds nuw i8, ptr %.val47432, i64 %i.het
  %.0.copyload.i53445 = load i32, ptr %i.ppt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53445) #7, !srcloc !19
  %i.ppu = shl i32 %.0.copyload.i53364, 2
  %i.ppv = add i32 %.0.copyload.i53445, %i.ppu
  %i.ppw = zext i32 %i.ppv to i64
  %.val47431 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppx = getelementptr inbounds nuw i8, ptr %.val47431, i64 %i.ppw
  %.0.copyload.i53446 = load i32, ptr %i.ppx, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53446) #7, !srcloc !19
  %i.ppy = add i32 %.0.copyload.i53446, 8
  %.not46320 = icmp eq i32 %.0.copyload.i53446, 0
  %i.ppz = select i1 %.not46320, i32 0, i32 %i.ppy ; 5 uses
  %.val49667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqa = getelementptr inbounds nuw i8, ptr %.val49667, i64 %i.htf
  %i.pqb = getelementptr inbounds nuw i8, ptr %i.pqa, i64 396
  store i32 %i.ppz, ptr %i.pqb, align 1
  %.val47430 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqc = getelementptr inbounds nuw i8, ptr %.val47430, i64 %i.heh
  %i.pqd = getelementptr inbounds nuw i8, ptr %i.pqc, i64 1096
  %.0.copyload.i53447 = load i32, ptr %i.pqd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53447) #7, !srcloc !19
  %.not46321 = icmp eq i32 %.0.copyload.i53447, 0
  br i1 %.not46321, label %bb.bhm, label %bb.bgq

bb.bgq:                                           ; preds = %bb.bgp
  %.val47429 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqe = getelementptr inbounds nuw i8, ptr %.val47429, i64 %i.heh
  %i.pqf = getelementptr inbounds nuw i8, ptr %i.pqe, i64 1084
  %.0.copyload.i53448 = load i32, ptr %i.pqf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53448) #7, !srcloc !19
  %i.pqg = add i32 %.0.copyload.i53447, -1        ; 2 uses
  %i.pqh = lshr i32 %i.ppz, 4
  %i.pqi = lshr i32 %i.ppz, 9
  %i.pqj = xor i32 %i.pqh, %i.pqi
  %i.pqk = and i32 %i.pqg, %i.pqj                 ; 2 uses
  %i.pql = shl nuw nsw i32 %i.pqk, 3
  %i.pqm = add i32 %.0.copyload.i53448, %i.pql    ; 2 uses
  %i.pqn = zext i32 %i.pqm to i64                 ; 2 uses
  %.val47428 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqo = getelementptr inbounds nuw i8, ptr %.val47428, i64 %i.pqn
  %.0.copyload.i53449 = load i32, ptr %i.pqo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53449) #7, !srcloc !19
  %i.pqp = icmp eq i32 %.0.copyload.i53449, %i.ppz
  br i1 %i.pqp, label %.loopexit54427, label %.preheader54426

.preheader54426:                                  ; preds = %bb.bgq, %bb.bgs
  %.143 = phi i32 [ %i.pqz, %bb.bgs ], [ %i.pqm, %bb.bgq ] ; 2 uses
  %.3943830 = phi i32 [ %i.pqu, %bb.bgs ], [ 0, %bb.bgq ] ; 3 uses
  %.88 = phi i32 [ %i.pqw, %bb.bgs ], [ 1, %bb.bgq ] ; 2 uses
  %.4543719 = phi i32 [ %.0.copyload.i53450, %bb.bgs ], [ %.0.copyload.i53449, %bb.bgq ] ; 2 uses
  %.2343265 = phi i32 [ %i.pqx, %bb.bgs ], [ %i.pqk, %bb.bgq ]
  %i.pqq = icmp eq i32 %.4543719, -4
  %.not46324 = icmp eq i32 %.3943830, 0           ; 2 uses
  br i1 %i.pqq, label %bb.bgr, label %bb.bgs

bb.bgr:                                           ; preds = %.preheader54426
  %i.pqr = select i1 %.not46324, i32 %.143, i32 %.3943830
  br label %bb.bhm

bb.bgs:                                           ; preds = %.preheader54426
  %i.pqs = icmp eq i32 %.4543719, -8
  %i.pqt = select i1 %i.pqs, i1 %.not46324, i1 false
  %i.pqu = select i1 %i.pqt, i32 %.143, i32 %.3943830
  %i.pqv = add i32 %.2343265, %.88
  %i.pqw = add i32 %.88, 1
  %i.pqx = and i32 %i.pqv, %i.pqg                 ; 2 uses
  %i.pqy = shl i32 %i.pqx, 3
  %i.pqz = add i32 %i.pqy, %.0.copyload.i53448    ; 2 uses
  %i.pra = zext i32 %i.pqz to i64                 ; 2 uses
  %.val47427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prb = getelementptr inbounds nuw i8, ptr %.val47427, i64 %i.pra
  %.0.copyload.i53450 = load i32, ptr %i.prb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53450) #7, !srcloc !19
  %.not46323 = icmp eq i32 %.0.copyload.i53450, %i.ppz
  br i1 %.not46323, label %.loopexit54427, label %.preheader54426

._crit_edge:                                      ; preds = %.loopexit54429, %func_types_eq.exit53485.thread, %.loopexit54572
  %.0.copyload.i53361.lcssa = phi i32 [ 0, %.loopexit54572 ], [ 0, %func_types_eq.exit53485.thread ], [ %.0.copyload.i5336155203, %.loopexit54429 ] ; 2 uses
  %.val47426 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prc = getelementptr inbounds nuw i8, ptr %.val47426, i64 %i.htf
  %i.prd = getelementptr inbounds nuw i8, ptr %i.prc, i64 356
  %.0.copyload.i53451 = load i32, ptr %i.prd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53451) #7, !srcloc !19
  %.not46261 = icmp eq i32 %.0.copyload.i53451, 0
  br i1 %.not46261, label %.loopexit54570, label %bb.bgt

bb.bgt:                                           ; preds = %._crit_edge
  %.val47425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pre = getelementptr inbounds nuw i8, ptr %.val47425, i64 %i.nhk
  %.0.copyload.i53452 = load i32, ptr %i.pre, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53452) #7, !srcloc !19
  %i.prf = add i32 %.0.copyload.i53451, -1        ; 2 uses
  %i.prg = lshr i32 %.0.copyload.i53347, 4
  %i.prh = lshr i32 %.0.copyload.i53347, 9
  %i.pri = xor i32 %i.prg, %i.prh
  %i.prj = and i32 %i.prf, %i.pri                 ; 2 uses
  %i.prk = shl nuw nsw i32 %i.prj, 3
  %i.prl = add i32 %.0.copyload.i53452, %i.prk
  %i.prm = zext i32 %i.prl to i64
  %.val47424 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prn = getelementptr inbounds nuw i8, ptr %.val47424, i64 %i.prm
  %.0.copyload.i53453 = load i32, ptr %i.prn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53453) #7, !srcloc !19
  %i.pro = icmp eq i32 %.0.copyload.i53453, %.0.copyload.i53347
  br i1 %i.pro, label %.loopexit54571, label %.preheader54569

.preheader54569:                                  ; preds = %bb.bgt, %bb.bgu
  %.11344209 = phi i32 [ %.0.copyload.i53454, %bb.bgu ], [ %.0.copyload.i53453, %bb.bgt ]
  %.8844085 = phi i32 [ %i.prs, %bb.bgu ], [ %i.prj, %bb.bgt ]
  %.2443266 = phi i32 [ %i.prr, %bb.bgu ], [ 1, %bb.bgt ] ; 2 uses
  %i.prp = icmp eq i32 %.11344209, -4
  br i1 %i.prp, label %.loopexit54570, label %bb.bgu

bb.bgu:                                           ; preds = %.preheader54569
  %i.prq = add i32 %.2443266, %.8844085
  %i.prr = add i32 %.2443266, 1
  %i.prs = and i32 %i.prq, %i.prf                 ; 2 uses
  %i.prt = shl i32 %i.prs, 3
  %i.pru = add i32 %i.prt, %.0.copyload.i53452
  %i.prv = zext i32 %i.pru to i64
  %.val47423 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prw = getelementptr inbounds nuw i8, ptr %.val47423, i64 %i.prv
  %.0.copyload.i53454 = load i32, ptr %i.prw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53454) #7, !srcloc !19
  %.not46262 = icmp eq i32 %.0.copyload.i53454, %.0.copyload.i53347
  br i1 %.not46262, label %.loopexit54571, label %.preheader54569

.loopexit54570:                                   ; preds = %.preheader54569, %._crit_edge
  %i.prx = add i32 %.0.copyload.i53347, 8
  %.not46263 = icmp eq i32 %.0.copyload.i53347, 0
  %i.pry = select i1 %.not46263, i32 0, i32 %i.prx ; 9 uses
  %.val47422 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prz = getelementptr inbounds nuw i8, ptr %.val47422, i64 %i.hew
  %.0.copyload.i53455 = load i32, ptr %i.prz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53455) #7, !srcloc !19
  %.val47421 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psa = getelementptr inbounds nuw i8, ptr %.val47421, i64 %i.hex
  %.0.copyload.i53456 = load i32, ptr %i.psa, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53456) #7, !srcloc !19
  %.not46264 = icmp eq i32 %.0.copyload.i53456, 0
  br i1 %.not46264, label %.loopexit54567, label %bb.bgv

bb.bgv:                                           ; preds = %.loopexit54570
  %i.psb = add i32 %.0.copyload.i53456, -1        ; 2 uses
  %i.psc = lshr i32 %i.pry, 4
  %i.psd = lshr i32 %i.pry, 9
  %i.pse = xor i32 %i.psc, %i.psd
  %i.psf = and i32 %i.psb, %i.pse                 ; 2 uses
  %i.psg = shl nuw nsw i32 %i.psf, 3
  %i.psh = add i32 %i.psg, %.0.copyload.i53455
  %i.psi = zext i32 %i.psh to i64
  %.val47420 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psj = getelementptr inbounds nuw i8, ptr %.val47420, i64 %i.psi
  %.0.copyload.i53457 = load i32, ptr %i.psj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53457) #7, !srcloc !19
  %i.psk = icmp eq i32 %.0.copyload.i53457, %i.pry
  br i1 %i.psk, label %.loopexit54568, label %.preheader54566

.preheader54566:                                  ; preds = %bb.bgv, %bb.bgw
  %.11444210 = phi i32 [ %.0.copyload.i53458, %bb.bgw ], [ %.0.copyload.i53457, %bb.bgv ]
  %.8944086 = phi i32 [ %i.pso, %bb.bgw ], [ %i.psf, %bb.bgv ]
  %.2543267 = phi i32 [ %i.psn, %bb.bgw ], [ 1, %bb.bgv ] ; 2 uses
  %i.psl = icmp eq i32 %.11444210, -4
  br i1 %i.psl, label %.loopexit54567, label %bb.bgw

bb.bgw:                                           ; preds = %.preheader54566
  %i.psm = add i32 %.2543267, %.8944086
  %i.psn = add i32 %.2543267, 1
  %i.pso = and i32 %i.psm, %i.psb                 ; 2 uses
  %i.psp = shl i32 %i.pso, 3
  %i.psq = add i32 %i.psp, %.0.copyload.i53455
  %i.psr = zext i32 %i.psq to i64
  %.val47419 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pss = getelementptr inbounds nuw i8, ptr %.val47419, i64 %i.psr
  %.0.copyload.i53458 = load i32, ptr %i.pss, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53458) #7, !srcloc !19
  %.not46265 = icmp eq i32 %.0.copyload.i53458, %i.pry
  br i1 %.not46265, label %.loopexit54568, label %.preheader54566

.loopexit54567:                                   ; preds = %.preheader54566, %.loopexit54570
  %.val47418 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pst = getelementptr inbounds nuw i8, ptr %.val47418, i64 %i.heh
  %i.psu = getelementptr inbounds nuw i8, ptr %i.pst, i64 1108
  %.0.copyload.i53459 = load i32, ptr %i.psu, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53459) #7, !srcloc !19
  %i.psv = add i32 %.0.copyload.i53459, 31        ; 3 uses
  %i.psw = icmp ult i32 %i.psv, 32
  br i1 %i.psw, label %.loopexit54565, label %bb.bgx

bb.bgx:                                           ; preds = %.loopexit54567
  %.val47417 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psx = getelementptr inbounds nuw i8, ptr %.val47417, i64 %i.hey
  %.0.copyload.i53460 = load i32, ptr %i.psx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53460) #7, !srcloc !19
  %i.psy = zext i32 %.0.copyload.i53460 to i64
  %.val47416 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psz = getelementptr inbounds nuw i8, ptr %.val47416, i64 %i.psy
  %.0.copyload.i53461 = load i32, ptr %i.psz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53461) #7, !srcloc !19
  %.not46266 = icmp eq i32 %.0.copyload.i53461, 0
  br i1 %.not46266, label %bb.bgy, label %bb.bhb

bb.bgy:                                           ; preds = %bb.bgx
  %i.pta = lshr i32 %i.psv, 5                     ; 2 uses
  %i.ptb = icmp ult i32 %i.psv, 64
  %i.ptc = add nsw i32 %i.pta, -1
  %i.ptd = select i1 %i.ptb, i32 0, i32 %i.ptc    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ptd to i64
  %exitcond57417 = icmp eq i32 %i.ptd, 0
  br i1 %exitcond57417, label %.loopexit54565, label %.lr.ph57420

bb.bgz:                                           ; preds = %.lr.ph57420
  %exitcond = icmp eq i64 %indvars.iv.next55705, %wide.trip.count
  br i1 %exitcond, label %.loopexit54565, label %.lr.ph57420

.lr.ph57420:                                      ; preds = %bb.bgy, %bb.bgz
  %indvars.iv5570457418 = phi i64 [ %indvars.iv.next55705, %bb.bgz ], [ 0, %bb.bgy ]
  %indvars.iv.next55705 = add nuw nsw i64 %indvars.iv5570457418, 1 ; 3 uses
  %indvars55706 = trunc i64 %indvars.iv.next55705 to i32 ; 2 uses
  %i.pte = shl i32 %indvars55706, 2
  %i.ptf = add i32 %i.pte, %.0.copyload.i53460
  %i.ptg = zext i32 %i.ptf to i64
  %.val47415 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pth = getelementptr inbounds nuw i8, ptr %.val47415, i64 %i.ptg
  %.0.copyload.i53462 = load i32, ptr %i.pth, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53462) #7, !srcloc !19
  %.not46267 = icmp eq i32 %.0.copyload.i53462, 0
  br i1 %.not46267, label %bb.bgz, label %bb.bha

bb.bha:                                           ; preds = %.lr.ph57420
  %i.pti = icmp ugt i32 %i.pta, %indvars55706
  br i1 %i.pti, label %bb.bhb, label %.loopexit54565

.loopexit54565:                                   ; preds = %bb.bgz, %bb.bgy, %bb.bha, %.loopexit54567
  %i.ptj = add i32 %.0.copyload.i53459, 1
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.hes, i32 noundef %i.ptj, i32 noundef 0) #7
  %.val47414 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptk = getelementptr inbounds nuw i8, ptr %.val47414, i64 %i.hex
  %.0.copyload.i53463 = load i32, ptr %i.ptk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53463) #7, !srcloc !19
  %.val47413 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptl = getelementptr inbounds nuw i8, ptr %.val47413, i64 %i.hew
  %.0.copyload.i53464 = load i32, ptr %i.ptl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53464) #7, !srcloc !19
  br label %bb.bhf

bb.bhb:                                           ; preds = %bb.bha, %bb.bgx
  %i.ptm = sub i32 0, %.0.copyload.i53459
  %i.ptn = and i32 %i.ptm, 31
  %i.pto = lshr i32 -1, %i.ptn
  %i.ptp = add i32 %.0.copyload.i53459, -1
  %i.ptq = lshr i32 %i.ptp, 5
  %i.ptr = zext nneg i32 %i.ptq to i64
  br label %bb.bhc

bb.bhc:                                           ; preds = %bb.bhe, %bb.bhb
  %indvars.iv55708 = phi i64 [ %indvars.iv.next55709, %bb.bhe ], [ 0, %bb.bhb ] ; 4 uses
  %indvars.iv55708.tr = trunc nuw nsw i64 %indvars.iv55708 to i32
  %i.pts = shl nuw nsw i32 %indvars.iv55708.tr, 2
  %i.ptt = add i32 %i.pts, %.0.copyload.i53460
  %i.ptu = zext i32 %i.ptt to i64
  %.val47412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptv = getelementptr inbounds nuw i8, ptr %.val47412, i64 %i.ptu
  %.0.copyload.i53465 = load i32, ptr %i.ptv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53465) #7, !srcloc !19
  %.not46269 = icmp eq i64 %indvars.iv55708, %i.ptr ; 2 uses
  %i.ptw = select i1 %.not46269, i32 %i.pto, i32 -1
  %i.ptx = and i32 %.0.copyload.i53465, %i.ptw    ; 2 uses
  %.not46270 = icmp eq i32 %i.ptx, 0
  br i1 %.not46270, label %bb.bhe, label %bb.bhd

bb.bhd:                                           ; preds = %bb.bhc
  %i.pty = trunc nuw nsw i64 %indvars.iv55708 to i32
  %i.ptz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ptx, i1 true)
  %i.pua = shl i32 %i.pty, 5
  %i.pub = or disjoint i32 %i.ptz, %i.pua
  br label %.loopexit54564

bb.bhe:                                           ; preds = %bb.bhc
  %indvars.iv.next55709 = add nuw nsw i64 %indvars.iv55708, 1
  br i1 %.not46269, label %.loopexit54564, label %bb.bhc

.loopexit54564:                                   ; preds = %bb.bhe, %bb.bhd
  %.3043159 = phi i32 [ %i.pub, %bb.bhd ], [ -1, %bb.bhe ] ; 3 uses
  %i.puc = lshr i32 %.3043159, 3
  %i.pud = and i32 %i.puc, 536870908
  %i.pue = add i32 %i.pud, %.0.copyload.i53460
  %i.puf = zext i32 %i.pue to i64                 ; 2 uses
  %.val47411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pug = getelementptr inbounds nuw i8, ptr %.val47411, i64 %i.puf
  %.0.copyload.i53466 = load i32, ptr %i.pug, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53466) #7, !srcloc !19
  %i.puh = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %.3043159)
  %i.pui = and i32 %.0.copyload.i53466, %i.puh
  %.val49666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puj = getelementptr inbounds nuw i8, ptr %.val49666, i64 %i.puf
  store i32 %i.pui, ptr %i.puj, align 1
  br label %bb.bhf

bb.bhf:                                           ; preds = %.loopexit54564, %.loopexit54565
  %.9044087 = phi i32 [ %.0.copyload.i53459, %.loopexit54565 ], [ %.3043159, %.loopexit54564 ]
  %.4043831 = phi i32 [ %.0.copyload.i53464, %.loopexit54565 ], [ %.0.copyload.i53455, %.loopexit54564 ] ; 2 uses
  %.1543233 = phi i32 [ %.0.copyload.i53463, %.loopexit54565 ], [ %.0.copyload.i53456, %.loopexit54564 ] ; 2 uses
  %.val49665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puk = getelementptr inbounds nuw i8, ptr %.val49665, i64 %i.htf
  %i.pul = getelementptr inbounds nuw i8, ptr %i.puk, i64 396
  store i32 %i.pry, ptr %i.pul, align 1
  %.not46271 = icmp eq i32 %.1543233, 0
  br i1 %.not46271, label %bb.bhj, label %bb.bhg

bb.bhg:                                           ; preds = %bb.bhf
  %i.pum = add i32 %.1543233, -1                  ; 2 uses
  %i.pun = lshr i32 %i.pry, 4
  %i.puo = lshr i32 %i.pry, 9
  %i.pup = xor i32 %i.pun, %i.puo
  %i.puq = and i32 %i.pum, %i.pup                 ; 2 uses
  %i.pur = shl nuw nsw i32 %i.puq, 3
  %i.pus = add i32 %i.pur, %.4043831              ; 2 uses
  %i.put = zext i32 %i.pus to i64                 ; 2 uses
  %.val47410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puu = getelementptr inbounds nuw i8, ptr %.val47410, i64 %i.put
  %.0.copyload.i53467 = load i32, ptr %i.puu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53467) #7, !srcloc !19
  %i.puv = icmp eq i32 %.0.copyload.i53467, %i.pry
  br i1 %i.puv, label %.loopexit54563, label %.preheader54562

.preheader54562:                                  ; preds = %bb.bhg, %bb.bhi
  %.11744213 = phi i32 [ %i.pvf, %bb.bhi ], [ %i.pus, %bb.bhg ] ; 2 uses
  %.144 = phi i32 [ %.0.copyload.i53468, %bb.bhi ], [ %.0.copyload.i53467, %bb.bhg ] ; 2 uses
  %.90 = phi i32 [ %i.pvc, %bb.bhi ], [ 1, %bb.bhg ] ; 2 uses
  %.2643268 = phi i32 [ %i.pvd, %bb.bhi ], [ %i.puq, %bb.bhg ]
  %.1743210 = phi i32 [ %i.pva, %bb.bhi ], [ 0, %bb.bhg ] ; 3 uses
  %i.puw = icmp eq i32 %.144, -4
  %.not46274 = icmp eq i32 %.1743210, 0           ; 2 uses
  br i1 %i.puw, label %bb.bhh, label %bb.bhi

bb.bhh:                                           ; preds = %.preheader54562
  %i.pux = select i1 %.not46274, i32 %.11744213, i32 %.1743210
  br label %bb.bhj

bb.bhi:                                           ; preds = %.preheader54562
  %i.puy = icmp eq i32 %.144, -8
  %i.puz = select i1 %i.puy, i1 %.not46274, i1 false
  %i.pva = select i1 %i.puz, i32 %.11744213, i32 %.1743210
  %i.pvb = add i32 %.2643268, %.90
  %i.pvc = add i32 %.90, 1
  %i.pvd = and i32 %i.pvb, %i.pum                 ; 2 uses
  %i.pve = shl i32 %i.pvd, 3
  %i.pvf = add i32 %i.pve, %.4043831              ; 2 uses
  %i.pvg = zext i32 %i.pvf to i64                 ; 2 uses
  %.val47409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvh = getelementptr inbounds nuw i8, ptr %.val47409, i64 %i.pvg
  %.0.copyload.i53468 = load i32, ptr %i.pvh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53468) #7, !srcloc !19
  %.not46273 = icmp eq i32 %.0.copyload.i53468, %i.pry
  br i1 %.not46273, label %.loopexit54563, label %.preheader54562

bb.bhj:                                           ; preds = %bb.bhf, %bb.bhh
  %.11844214 = phi i32 [ %i.pux, %bb.bhh ], [ 0, %bb.bhf ]
  %i.pvi = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.hdj, i32 noundef %.11844214, i32 noundef %i.oof) #7
  %.pre55788 = zext i32 %i.pvi to i64
  br label %.loopexit54563

.loopexit54563:                                   ; preds = %bb.bhi, %bb.bhg, %bb.bhj
  %.pre-phi55789 = phi i64 [ %.pre55788, %bb.bhj ], [ %i.put, %bb.bhg ], [ %i.pvg, %bb.bhi ]
  %.val49664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvj = getelementptr inbounds nuw i8, ptr %.val49664, i64 %.pre-phi55789
  %i.pvk = getelementptr inbounds nuw i8, ptr %i.pvj, i64 4
  store i32 %.9044087, ptr %i.pvk, align 1
  %.val47408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvl = getelementptr inbounds nuw i8, ptr %.val47408, i64 %i.ooa
  %.0.copyload.i53469 = load i32, ptr %i.pvl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53469) #7, !srcloc !19
  br label %.loopexit54568

.loopexit54568:                                   ; preds = %bb.bgw, %bb.bgv, %.loopexit54563
  %.91 = phi i32 [ %.0.copyload.i53469, %.loopexit54563 ], [ %.0.copyload.i53361.lcssa, %bb.bgv ], [ %.0.copyload.i53361.lcssa, %bb.bgw ] ; 2 uses
  %.val47407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvm = getelementptr inbounds nuw i8, ptr %.val47407, i64 %i.htf
  %i.pvn = getelementptr inbounds nuw i8, ptr %i.pvm, i64 56
  %.0.copyload.i53470 = load i32, ptr %i.pvn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53470) #7, !srcloc !19
  %.not46275 = icmp ugt i32 %.0.copyload.i53470, %.91
  br i1 %.not46275, label %bb.bhl, label %bb.bhk

bb.bhk:                                           ; preds = %.loopexit54568
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.oog, i32 noundef %i.ooc, i32 noundef 0, i32 noundef 4) #7
  %.val47406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvo = getelementptr inbounds nuw i8, ptr %.val47406, i64 %i.ooa
  %.0.copyload.i53471 = load i32, ptr %i.pvo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53471) #7, !srcloc !19
  br label %bb.bhl

bb.bhl:                                           ; preds = %bb.bhk, %.loopexit54568
  %.92 = phi i32 [ %.0.copyload.i53471, %bb.bhk ], [ %.91, %.loopexit54568 ]
  %.val47405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvp = getelementptr inbounds nuw i8, ptr %.val47405, i64 %i.ood
  %.0.copyload.i53472 = load i32, ptr %i.pvp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53472) #7, !srcloc !19
  %i.pvq = shl i32 %.92, 2
  %i.pvr = add i32 %.0.copyload.i53472, %i.pvq
  %i.pvs = zext i32 %i.pvr to i64
  %.val49663 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvt = getelementptr inbounds nuw i8, ptr %.val49663, i64 %i.pvs
  store i32 %.0.copyload.i53258, ptr %i.pvt, align 1
  %.val47404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvu = getelementptr inbounds nuw i8, ptr %.val47404, i64 %i.ooa
  %.0.copyload.i53473 = load i32, ptr %i.pvu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53473) #7, !srcloc !19
  %i.pvv = add i32 %.0.copyload.i53473, 1         ; 3 uses
  %.val49662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvw = getelementptr inbounds nuw i8, ptr %.val49662, i64 %i.ooa
  store i32 %i.pvv, ptr %i.pvw, align 1
  %.val47403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvx = getelementptr inbounds nuw i8, ptr %.val47403, i64 %i.ood
  %.0.copyload.i53474 = load i32, ptr %i.pvx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53474) #7, !srcloc !19
  %i.pvy = shl i32 %i.pvv, 2
  %i.pvz = add i32 %.0.copyload.i53474, %i.pvy
  %.val47402 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwa = getelementptr inbounds nuw i8, ptr %.val47402, i64 %i.ony
  %.0.copyload.i53475 = load i32, ptr %i.pwa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53475) #7, !srcloc !19
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_up0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i53474, i32 noundef %i.pvz, i32 noundef %.0.copyload.i53475, i32 noundef %i.pvv) #7
  br label %.loopexit54571

.loopexit54571:                                   ; preds = %bb.bgu, %bb.bgt, %bb.bhl
  %.val47401 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwb = getelementptr inbounds nuw i8, ptr %.val47401, i64 %i.omy
  %.0.copyload.i53476 = load i32, ptr %i.pwb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53476) #7, !srcloc !19
  %.not46276 = icmp eq i32 %.0.copyload.i53476, 0
  br i1 %.not46276, label %bb.bhq, label %bb.bfc

bb.bhm:                                           ; preds = %bb.bgp, %bb.bgr
  %.4643720 = phi i32 [ 0, %bb.bgp ], [ %i.pqr, %bb.bgr ]
  %i.pwc = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.hdj, i32 noundef %.4643720, i32 noundef %i.oof) #7
  %.pre55792 = zext i32 %i.pwc to i64
  br label %.loopexit54427

.loopexit54427:                                   ; preds = %bb.bgs, %bb.bgq, %bb.bhm
  %.pre-phi55793 = phi i64 [ %.pre55792, %bb.bhm ], [ %i.pqn, %bb.bgq ], [ %i.pra, %bb.bgs ]
  %.val47400 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwd = getelementptr inbounds nuw i8, ptr %.val47400, i64 %i.heh
  %i.pwe = getelementptr inbounds nuw i8, ptr %i.pwd, i64 1100
  %.0.copyload.i53477 = load i32, ptr %i.pwe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53477) #7, !srcloc !19
  %.val47399 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwf = getelementptr inbounds nuw i8, ptr %.val47399, i64 %.pre-phi55793
  %i.pwg = getelementptr inbounds nuw i8, ptr %i.pwf, i64 4
  %.0.copyload.i53478 = load i32, ptr %i.pwg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53478) #7, !srcloc !19
  %i.pwh = lshr i32 %.0.copyload.i53478, 3
  %i.pwi = and i32 %i.pwh, 536870908
  %i.pwj = add i32 %i.pwi, %.0.copyload.i53477
  %i.pwk = zext i32 %i.pwj to i64                 ; 2 uses
  %.val47398 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwl = getelementptr inbounds nuw i8, ptr %.val47398, i64 %i.pwk
  %.0.copyload.i53479 = load i32, ptr %i.pwl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53479) #7, !srcloc !19
  %i.pwm = and i32 %.0.copyload.i53478, 31
  %i.pwn = shl nuw i32 1, %i.pwm
  %i.pwo = or i32 %.0.copyload.i53479, %i.pwn
  %.val49661 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwp = getelementptr inbounds nuw i8, ptr %.val49661, i64 %i.pwk
  store i32 %i.pwo, ptr %i.pwp, align 1
  %.val47397 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwq = getelementptr inbounds nuw i8, ptr %.val47397, i64 %i.heh
  %.0.copyload.i53480 = load i32, ptr %i.pwq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53480) #7, !srcloc !19
  %i.pwr = zext i32 %.0.copyload.i53480 to i64
  %.val47396 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pws = getelementptr inbounds nuw i8, ptr %.val47396, i64 %i.pwr
  %i.pwt = getelementptr inbounds nuw i8, ptr %i.pws, i64 12
  %.0.copyload.i53481 = load i32, ptr %i.pwt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53481) #7, !srcloc !19
  %i.pwu = load i32, ptr %i.hdo, align 4, !tbaa !25
  %i.pwv = icmp ult i32 %.0.copyload.i53481, %i.pwu
  br i1 %i.pwv, label %bb.bhn, label %.critedge46800, !prof !26

bb.bhn:                                           ; preds = %.loopexit54427
  %i.pww = load ptr, ptr %i.hdn, align 8, !tbaa !27
  %i.pwx = zext i32 %.0.copyload.i53481 to i64
  %i.pwy = getelementptr inbounds nuw [24 x i8], ptr %i.pww, i64 %i.pwx ; 3 uses
end_hunk_3
