inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
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
  %i.ilk = load i32, ptr %i.a, align 8, !tbaa !7  ; 4 uses
  %i.ill = add i32 %i.ilk, -48                    ; 3 uses
  store i32 %i.ill, ptr %i.a, align 8, !tbaa !7
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
  %.4743778 = phi i32 [ %.0.copyload.i52449, %bb.ahu ], [ %i.iyo, %.loopexit54553 ] ; 2 uses
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
  %i.imk = load ptr, ptr %i.imj, align 8, !tbaa !28 ; 2 uses
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
  %.0.copyload.i52459 = load i32, ptr %i.ine, align 1 ; 12 uses
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
  br i1 %.not46350, label %bb.aic, label %bb.aiy

bb.aic:                                           ; preds = %bb.aib
  %i.inl = lshr i32 %i.inf, 5                     ; 2 uses
  %i.inm = icmp ult i32 %i.inf, 64
  %i.inn = select i1 %i.inm, i32 1, i32 %i.inl    ; 2 uses
  %wide.trip.count55716 = zext nneg i32 %i.inn to i64
  %exitcond5571757421 = icmp eq i32 %i.inn, 1
  br i1 %exitcond5571757421, label %.loopexit54409, label %.lr.ph57424

bb.aid:                                           ; preds = %.lr.ph57424
  %indvars.iv.next55713 = add nuw nsw i64 %indvars.iv5571257422, 1 ; 2 uses
  %exitcond55717 = icmp eq i64 %indvars.iv.next55713, %wide.trip.count55716
  br i1 %exitcond55717, label %.loopexit54409, label %.lr.ph57424

.lr.ph57424:                                      ; preds = %bb.aic, %bb.aid
  %indvars.iv5571257422 = phi i64 [ %indvars.iv.next55713, %bb.aid ], [ 1, %bb.aic ] ; 2 uses
  %indvars55714 = trunc nuw i64 %indvars.iv5571257422 to i32 ; 2 uses
  %i.ino = shl i32 %indvars55714, 2
  %i.inp = add i32 %i.ino, %.0.copyload.i52460
  %i.inq = zext i32 %i.inp to i64
  %.val48336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inr = getelementptr inbounds nuw i8, ptr %.val48336, i64 %i.inq
  %.0.copyload.i52462 = load i32, ptr %i.inr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52462) #7, !srcloc !19
  %.not46351 = icmp eq i32 %.0.copyload.i52462, 0
  br i1 %.not46351, label %bb.aid, label %bb.aie

bb.aie:                                           ; preds = %.lr.ph57424
  %i.ins = icmp ugt i32 %i.inl, %indvars55714
  br i1 %i.ins, label %bb.aix, label %.loopexit54409

.loopexit54409:                                   ; preds = %bb.aid, %bb.aic, %bb.aie, %bb.aia
  %i.int = add i32 %.0.copyload.i52459, 1         ; 5 uses
  %.val48335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inu = getelementptr inbounds nuw i8, ptr %.val48335, i64 %i.hfa
  %.0.copyload.i52463 = load i32, ptr %i.inu, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52463) #7, !srcloc !19
  %i.inv = shl i32 %.0.copyload.i52463, 5
  %.not46355 = icmp ugt i32 %i.int, %i.inv
  br i1 %.not46355, label %bb.aif, label %bb.ain

bb.aif:                                           ; preds = %.loopexit54409
  %.val48334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.inw = getelementptr inbounds nuw i8, ptr %.val48334, i64 %i.hfb
  %.0.copyload.i52464 = load i32, ptr %i.inw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52464) #7, !srcloc !19
  %i.inx = add i32 %.0.copyload.i52459, 32
  %i.iny = lshr i32 %i.inx, 5
  %i.inz = shl i32 %.0.copyload.i52463, 1
  %i.ioa = tail call i32 @llvm.umax.i32(i32 %i.inz, i32 %i.iny) ; 6 uses
  %i.iob = shl i32 %i.ioa, 2
  %i.ioc = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52464, i32 noundef %i.iob) #7 ; 5 uses
  %.not46356 = icmp eq i32 %i.ioc, 0
  br i1 %.not46356, label %bb.aig, label %bb.aih

bb.aig:                                           ; preds = %bb.aif
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.aih

bb.aih:                                           ; preds = %bb.aig, %bb.aif
  %.val49911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iod = getelementptr inbounds nuw i8, ptr %.val49911, i64 %i.hfa
  store i32 %i.ioa, ptr %i.iod, align 1
  %.val49910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ioe = getelementptr inbounds nuw i8, ptr %.val49910, i64 %i.hfb
  store i32 %i.ioc, ptr %i.ioe, align 1
  %.val48333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iof = getelementptr inbounds nuw i8, ptr %.val48333, i64 %i.hez
  %.0.copyload.i52465 = load i32, ptr %i.iof, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52465) #7, !srcloc !19
  %i.iog = add i32 %.0.copyload.i52465, 31
  %i.ioh = lshr i32 %i.iog, 5                     ; 4 uses
  %i.ioi = icmp ult i32 %i.ioh, %i.ioa
  br i1 %i.ioi, label %bb.aii, label %bb.aij

bb.aii:                                           ; preds = %bb.aih
  %i.ioj = shl nuw nsw i32 %i.ioh, 2
  %i.iok = add i32 %i.ioj, %i.ioc
  %i.iol = sub nuw i32 %i.ioa, %i.ioh
  %i.iom = shl i32 %i.iol, 2
  %i.ion = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iok, i32 noundef 0, i32 noundef %i.iom) #7 ; 0 uses
  br label %bb.aij

bb.aij:                                           ; preds = %bb.aii, %bb.aih
  %i.ioo = and i32 %.0.copyload.i52465, 31        ; 2 uses
  %.not46357 = icmp eq i32 %i.ioo, 0
  br i1 %.not46357, label %bb.ail, label %bb.aik

bb.aik:                                           ; preds = %bb.aij
  %i.iop = shl nuw nsw i32 %i.ioh, 2
  %i.ioq = add i32 %i.ioc, -4
  %i.ior = add i32 %i.ioq, %i.iop
  %i.ios = zext i32 %i.ior to i64                 ; 2 uses
  %.val48332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iot = getelementptr inbounds nuw i8, ptr %.val48332, i64 %i.ios
  %.0.copyload.i52466 = load i32, ptr %i.iot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52466) #7, !srcloc !19
  %i.iou = shl nsw i32 -1, %i.ioo
  %i.iov = xor i32 %i.iou, -1
  %i.iow = and i32 %.0.copyload.i52466, %i.iov
  %.val49909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iox = getelementptr inbounds nuw i8, ptr %.val49909, i64 %i.ios
  store i32 %i.iow, ptr %i.iox, align 1
  br label %bb.ail

bb.ail:                                           ; preds = %bb.aik, %bb.aij
  %i.ioy = icmp eq i32 %.0.copyload.i52463, %i.ioa
  br i1 %i.ioy, label %bb.ain, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  %i.ioz = shl i32 %.0.copyload.i52463, 2
  %i.ipa = add i32 %i.ioc, %i.ioz
  %i.ipb = sub i32 %i.ioa, %.0.copyload.i52463
  %i.ipc = shl i32 %i.ipb, 2
  %i.ipd = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ipa, i32 noundef 0, i32 noundef %i.ipc) #7 ; 0 uses
  br label %bb.ain

bb.ain:                                           ; preds = %bb.ail, %.loopexit54409, %bb.aim
  %.6144312 = phi i32 [ %.0.copyload.i52459, %.loopexit54409 ], [ %.0.copyload.i52465, %bb.ail ], [ %.0.copyload.i52465, %bb.aim ] ; 4 uses
  %.not46358 = icmp ult i32 %.6144312, %i.int
  br i1 %.not46358, label %bb.aio, label %bb.ais

bb.aio:                                           ; preds = %bb.ain
  %.val48331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipe = getelementptr inbounds nuw i8, ptr %.val48331, i64 %i.hfa
  %.0.copyload.i52467 = load i32, ptr %i.ipe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52467) #7, !srcloc !19
  %i.ipf = add i32 %.6144312, 31
  %i.ipg = lshr i32 %i.ipf, 5                     ; 4 uses
  %i.iph = icmp ugt i32 %.0.copyload.i52467, %i.ipg
  br i1 %i.iph, label %bb.aip, label %bb.aiq

bb.aip:                                           ; preds = %bb.aio
  %.val48330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipi = getelementptr inbounds nuw i8, ptr %.val48330, i64 %i.heh
  %i.ipj = getelementptr inbounds nuw i8, ptr %i.ipi, i64 1100
  %.0.copyload.i52468 = load i32, ptr %i.ipj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52468) #7, !srcloc !19
  %i.ipk = shl nuw nsw i32 %i.ipg, 2
  %i.ipl = add i32 %.0.copyload.i52468, %i.ipk
  %i.ipm = sub nuw i32 %.0.copyload.i52467, %i.ipg
  %i.ipn = shl i32 %i.ipm, 2
  %i.ipo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ipl, i32 noundef 0, i32 noundef %i.ipn) #7 ; 0 uses
  %.val48329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipp = getelementptr inbounds nuw i8, ptr %.val48329, i64 %i.hez
  %.0.copyload.i52469 = load i32, ptr %i.ipp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52469) #7, !srcloc !19
  br label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip, %bb.aio
  %.6244313 = phi i32 [ %.0.copyload.i52469, %bb.aip ], [ %.6144312, %bb.aio ] ; 3 uses
  %i.ipq = and i32 %.6244313, 31                  ; 2 uses
  %.not46359 = icmp eq i32 %i.ipq, 0
  br i1 %.not46359, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %.val48328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipr = getelementptr inbounds nuw i8, ptr %.val48328, i64 %i.heh
  %i.ips = getelementptr inbounds nuw i8, ptr %i.ipr, i64 1100
  %.0.copyload.i52470 = load i32, ptr %i.ips, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52470) #7, !srcloc !19
  %i.ipt = shl nuw nsw i32 %i.ipg, 2
  %i.ipu = add nsw i32 %i.ipt, -4
  %i.ipv = add i32 %i.ipu, %.0.copyload.i52470
  %i.ipw = zext i32 %i.ipv to i64                 ; 2 uses
  %.val48327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipx = getelementptr inbounds nuw i8, ptr %.val48327, i64 %i.ipw
  %.0.copyload.i52471 = load i32, ptr %i.ipx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52471) #7, !srcloc !19
  %i.ipy = shl nsw i32 -1, %i.ipq
  %i.ipz = xor i32 %i.ipy, -1
  %i.iqa = and i32 %.0.copyload.i52471, %i.ipz
  %.val49908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqb = getelementptr inbounds nuw i8, ptr %.val49908, i64 %i.ipw
  store i32 %i.iqa, ptr %i.iqb, align 1
  br label %bb.ais

bb.ais:                                           ; preds = %bb.aiq, %bb.ain, %bb.air
  %.6344314 = phi i32 [ %.6144312, %bb.ain ], [ %.6244313, %bb.aiq ], [ %.6244313, %bb.air ]
  %.val49907 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqc = getelementptr inbounds nuw i8, ptr %.val49907, i64 %i.hez
  store i32 %i.int, ptr %i.iqc, align 1
  %.not46360 = icmp ugt i32 %.6344314, %i.int
  br i1 %.not46360, label %bb.ait, label %bb.ajd

bb.ait:                                           ; preds = %bb.ais
  %.val48326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqd = getelementptr inbounds nuw i8, ptr %.val48326, i64 %i.hfa
  %.0.copyload.i52472 = load i32, ptr %i.iqd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52472) #7, !srcloc !19
  %i.iqe = add i32 %.0.copyload.i52459, 32
  %i.iqf = lshr i32 %i.iqe, 5                     ; 4 uses
  %i.iqg = icmp ugt i32 %.0.copyload.i52472, %i.iqf
  br i1 %i.iqg, label %bb.aiu, label %bb.aiv

bb.aiu:                                           ; preds = %bb.ait
  %.val48325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqh = getelementptr inbounds nuw i8, ptr %.val48325, i64 %i.heh
  %i.iqi = getelementptr inbounds nuw i8, ptr %i.iqh, i64 1100
  %.0.copyload.i52473 = load i32, ptr %i.iqi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52473) #7, !srcloc !19
  %i.iqj = shl nuw nsw i32 %i.iqf, 2
  %i.iqk = add i32 %.0.copyload.i52473, %i.iqj
  %i.iql = sub nuw i32 %.0.copyload.i52472, %i.iqf
  %i.iqm = shl i32 %i.iql, 2
  %i.iqn = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iqk, i32 noundef 0, i32 noundef %i.iqm) #7 ; 0 uses
  %.val48324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqo = getelementptr inbounds nuw i8, ptr %.val48324, i64 %i.hez
  %.0.copyload.i52474 = load i32, ptr %i.iqo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52474) #7, !srcloc !19
  br label %bb.aiv

bb.aiv:                                           ; preds = %bb.ait, %bb.aiu
  %.34 = phi i32 [ %.0.copyload.i52474, %bb.aiu ], [ %i.int, %bb.ait ]
  %i.iqp = and i32 %.34, 31                       ; 2 uses
  %.not46361 = icmp eq i32 %i.iqp, 0
  br i1 %.not46361, label %bb.ajd, label %bb.aiw
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.iwl = zext i32 %i.iwk to i64                 ; 2 uses
  %.val48302 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwm = getelementptr inbounds nuw i8, ptr %.val48302, i64 %i.iwl
  %.0.copyload.i52505 = load i32, ptr %i.iwm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52505) #7, !srcloc !19
  %.not46375 = icmp eq i32 %.0.copyload.i52505, %.0.copyload.i52501
  br i1 %.not46375, label %.loopexit54312, label %.preheader54311

bb.ajt:                                           ; preds = %.preheader54402, %bb.ajr
  %.6644317 = phi i32 [ 0, %.preheader54402 ], [ %i.iwc, %bb.ajr ]
  %.val48301 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwn = getelementptr inbounds nuw i8, ptr %.val48301, i64 %i.hfc
  %.0.copyload.i52506 = load i32, ptr %i.iwn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52506) #7, !srcloc !19
  %i.iwo = shl i32 %.0.copyload.i52506, 2
  %i.iwp = add i32 %i.iwo, 4
  %i.iwq = mul i32 %.0.copyload.i52502, 3
  %.not46377 = icmp ult i32 %i.iwp, %i.iwq
  br i1 %.not46377, label %bb.ajv, label %bb.aju

bb.aju:                                           ; preds = %bb.ajt
  %i.iwr = shl i32 %.0.copyload.i52502, 1
  br label %bb.ajw

bb.ajv:                                           ; preds = %bb.ajt
  %i.iws = xor i32 %.0.copyload.i52506, -1
  %i.iwt = add i32 %.0.copyload.i52502, %i.iws
  %.val48300 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwu = getelementptr inbounds nuw i8, ptr %.val48300, i64 %i.heh
  %i.iwv = getelementptr inbounds nuw i8, ptr %i.iwu, i64 1092
  %.0.copyload.i52507 = load i32, ptr %i.iwv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52507) #7, !srcloc !19
  %i.iww = sub i32 %i.iwt, %.0.copyload.i52507
  %i.iwx = lshr i32 %.0.copyload.i52502, 3
  %i.iwy = icmp ugt i32 %i.iww, %i.iwx
  br i1 %i.iwy, label %bb.ajz, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv, %bb.aju
  %.1344010 = phi i32 [ %i.iwr, %bb.aju ], [ %.0.copyload.i52502, %bb.ajv ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hdj, i32 noundef %.1344010) #7
  %.val48299 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iwz = getelementptr inbounds nuw i8, ptr %.val48299, i64 %i.heh
  %i.ixa = getelementptr inbounds nuw i8, ptr %i.iwz, i64 1084
  %.0.copyload.i52508 = load i32, ptr %i.ixa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52508) #7, !srcloc !19
  %.val48298 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixb = getelementptr inbounds nuw i8, ptr %.val48298, i64 %i.hex
  %.0.copyload.i52509 = load i32, ptr %i.ixb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52509) #7, !srcloc !19
  %i.ixc = add i32 %.0.copyload.i52509, -1        ; 2 uses
  %i.ixd = lshr i32 %.0.copyload.i52501, 4
  %i.ixe = lshr i32 %.0.copyload.i52501, 9
  %i.ixf = xor i32 %i.ixd, %i.ixe
  %i.ixg = and i32 %i.ixc, %i.ixf                 ; 2 uses
  %i.ixh = shl nuw nsw i32 %i.ixg, 3
  %i.ixi = add i32 %i.ixh, %.0.copyload.i52508    ; 3 uses
  %i.ixj = zext i32 %i.ixi to i64
  %.val48297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixk = getelementptr inbounds nuw i8, ptr %.val48297, i64 %i.ixj
  %.0.copyload.i52510 = load i32, ptr %i.ixk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52510) #7, !srcloc !19
  %.not46378 = icmp eq i32 %.0.copyload.i52510, %.0.copyload.i52501
  br i1 %.not46378, label %.loopexit54310, label %.preheader54309

.preheader54309:                                  ; preds = %bb.ajw, %bb.ajy
  %.6744318 = phi i32 [ %i.ixu, %bb.ajy ], [ %i.ixi, %bb.ajw ] ; 2 uses
  %.1444011 = phi i32 [ %.0.copyload.i52511, %bb.ajy ], [ %.0.copyload.i52510, %bb.ajw ] ; 2 uses
  %.943800 = phi i32 [ %i.ixr, %bb.ajy ], [ 1, %bb.ajw ] ; 2 uses
  %.543578 = phi i32 [ %i.ixp, %bb.ajy ], [ 0, %bb.ajw ] ; 3 uses
  %.1143326 = phi i32 [ %i.ixs, %bb.ajy ], [ %i.ixg, %bb.ajw ]
  %i.ixl = icmp eq i32 %.1444011, -4
  %.not46381 = icmp eq i32 %.543578, 0            ; 2 uses
  br i1 %i.ixl, label %bb.ajx, label %bb.ajy

bb.ajx:                                           ; preds = %.preheader54309
  %i.ixm = select i1 %.not46381, i32 %.6744318, i32 %.543578
  br label %bb.ajz

bb.ajy:                                           ; preds = %.preheader54309
  %i.ixn = icmp eq i32 %.1444011, -8
  %i.ixo = select i1 %i.ixn, i1 %.not46381, i1 false
  %i.ixp = select i1 %i.ixo, i32 %.6744318, i32 %.543578
  %i.ixq = add i32 %.1143326, %.943800
  %i.ixr = add i32 %.943800, 1
  %i.ixs = and i32 %i.ixq, %i.ixc                 ; 2 uses
  %i.ixt = shl i32 %i.ixs, 3
  %i.ixu = add i32 %i.ixt, %.0.copyload.i52508    ; 3 uses
  %i.ixv = zext i32 %i.ixu to i64
  %.val48296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixw = getelementptr inbounds nuw i8, ptr %.val48296, i64 %i.ixv
  %.0.copyload.i52511 = load i32, ptr %i.ixw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52511) #7, !srcloc !19
  %.not46380 = icmp eq i32 %.0.copyload.i52501, %.0.copyload.i52511
  br i1 %.not46380, label %.loopexit54310, label %.preheader54309

bb.ajz:                                           ; preds = %bb.ajv, %bb.ajx
  %.6944320 = phi i32 [ %i.ixm, %bb.ajx ], [ %.6644317, %bb.ajv ] ; 2 uses
  %i.ixx = zext i32 %.6944320 to i64
  %.val48295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixy = getelementptr inbounds nuw i8, ptr %.val48295, i64 %i.ixx
  %.0.copyload.i52512 = load i32, ptr %i.ixy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52512) #7, !srcloc !19
  br label %.loopexit54310

.loopexit54310:                                   ; preds = %bb.ajy, %bb.ajw, %bb.ajz
  %.7044321 = phi i32 [ %.6944320, %bb.ajz ], [ %i.ixi, %bb.ajw ], [ %i.ixu, %bb.ajy ]
  %.843137 = phi i32 [ %.0.copyload.i52512, %bb.ajz ], [ %.0.copyload.i52501, %bb.ajw ], [ %.0.copyload.i52501, %bb.ajy ]
  %.val48294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixz = getelementptr inbounds nuw i8, ptr %.val48294, i64 %i.hfc
  %.0.copyload.i52513 = load i32, ptr %i.ixz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52513) #7, !srcloc !19
  %i.iya = add i32 %.0.copyload.i52513, 1
  %.val49900 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyb = getelementptr inbounds nuw i8, ptr %.val49900, i64 %i.hfc
  store i32 %i.iya, ptr %i.iyb, align 1
  %.not46382 = icmp eq i32 %.843137, -4
  br i1 %.not46382, label %bb.akb, label %bb.aka

bb.aka:                                           ; preds = %.loopexit54310
  %.val48293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyc = getelementptr inbounds nuw i8, ptr %.val48293, i64 %i.hfd
  %.0.copyload.i52514 = load i32, ptr %i.iyc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52514) #7, !srcloc !19
  %i.iyd = add i32 %.0.copyload.i52514, -1
  %.val49899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iye = getelementptr inbounds nuw i8, ptr %.val49899, i64 %i.hfd
  store i32 %i.iyd, ptr %i.iye, align 1
  br label %bb.akb

bb.akb:                                           ; preds = %bb.aka, %.loopexit54310
  %i.iyf = zext i32 %.7044321 to i64              ; 3 uses
  %.val49898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyg = getelementptr inbounds nuw i8, ptr %.val49898, i64 %i.iyf
  %i.iyh = getelementptr inbounds nuw i8, ptr %i.iyg, i64 4
  store i32 -1, ptr %i.iyh, align 1
  %.val49897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyi = getelementptr inbounds nuw i8, ptr %.val49897, i64 %i.iyf
  store i32 %.0.copyload.i52501, ptr %i.iyi, align 1
  br label %.loopexit54312

.loopexit54312:                                   ; preds = %bb.ajs, %bb.ajq, %bb.akb
  %.pre-phi55783.a = phi i64 [ %i.iyf, %bb.akb ], [ %i.ivy, %bb.ajq ], [ %i.iwl, %bb.ajs ]
  %.val49896 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyj = getelementptr inbounds nuw i8, ptr %.val49896, i64 %.pre-phi55783.a
  %i.iyk = getelementptr inbounds nuw i8, ptr %i.iyj, i64 4
  store i32 %.3643661, ptr %i.iyk, align 1
  %i.iyl = add nuw nsw i32 %.243302, 1            ; 2 uses
  %.not46383 = icmp eq i32 %i.iyl, %i.iuw
  br i1 %.not46383, label %.loopexit54403, label %.preheader54402

.loopexit54403:                                   ; preds = %.loopexit54312, %func_types_eq.exit52457.thread, %.loopexit54407, %bb.ahz
  %.pre-phi55899.a = phi i64 [ %i.inb, %bb.ahz ], [ 0, %func_types_eq.exit52457.thread ], [ %i.inb, %.loopexit54407 ], [ %i.inb, %.loopexit54312 ]
  %.val48292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iym = getelementptr inbounds nuw i8, ptr %.val48292, i64 %.pre-phi55899.a
  %i.iyn = getelementptr inbounds nuw i8, ptr %i.iym, i64 4
  %.0.copyload.i52515 = load i32, ptr %i.iyn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52515) #7, !srcloc !19
  %.not46384 = icmp eq i32 %.0.copyload.i52515, %i.ilz
  br i1 %.not46384, label %.loopexit54553, label %.preheader54552

.loopexit54553:                                   ; preds = %.loopexit54403, %bb.ahv
  %i.iyo = add i32 %.4743778, 4                   ; 2 uses
  %.not46385 = icmp eq i32 %i.iyo, %i.ilq
  br i1 %.not46385, label %.loopexit54619, label %bb.ahv

.loopexit54619:                                   ; preds = %.loopexit54553, %..loopexit54619_crit_edge
  %.pre-phi55897.a = phi i64 [ %.pre55896, %..loopexit54619_crit_edge ], [ %i.ilt, %.loopexit54553 ] ; 3 uses
  %i.iyp = add nuw nsw i64 %.pre-phi55897.a, 8    ; 7 uses
  %.val50883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyq = getelementptr inbounds nuw i8, ptr %.val50883, i64 %i.iyp
  store i64 34359738368, ptr %i.iyq, align 1
  %i.iyr = add i32 %i.ilk, -32                    ; 3 uses
  %i.iys = add nuw nsw i64 %.pre-phi55897.a, 4    ; 4 uses
  %.val49895 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyt = getelementptr inbounds nuw i8, ptr %.val49895, i64 %i.iys
  store i32 %i.iyr, ptr %i.iyt, align 1
  %.val48291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyu = getelementptr inbounds nuw i8, ptr %.val48291, i64 %i.hff
  %.0.copyload.i52516 = load i32, ptr %i.iyu, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52516) #7, !srcloc !19
  %i.iyv = add i32 %.0.copyload.i52516, 31        ; 3 uses
  %i.iyw = icmp ult i32 %i.iyv, 32
  br i1 %i.iyw, label %.loopexit54618, label %bb.akc

bb.akc:                                           ; preds = %.loopexit54619
  %.val48290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyx = getelementptr inbounds nuw i8, ptr %.val48290, i64 %i.hey
  %.0.copyload.i52517 = load i32, ptr %i.iyx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52517) #7, !srcloc !19
  %i.iyy = zext i32 %.0.copyload.i52517 to i64
  %.val48289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyz = getelementptr inbounds nuw i8, ptr %.val48289, i64 %i.iyy
  %.0.copyload.i52518 = load i32, ptr %i.iyz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52518) #7, !srcloc !19
  %.not46386 = icmp eq i32 %.0.copyload.i52518, 0
  br i1 %.not46386, label %bb.akd, label %bb.akh

bb.akd:                                           ; preds = %bb.akc
  %i.iza = lshr i32 %i.iyv, 5                     ; 2 uses
  %i.izb = icmp ult i32 %i.iyv, 64
  %i.izc = select i1 %i.izb, i32 1, i32 %i.iza    ; 2 uses
  %wide.trip.count55726 = zext nneg i32 %i.izc to i64
  %exitcond5572757425 = icmp eq i32 %i.izc, 1
  br i1 %exitcond5572757425, label %.loopexit54618, label %.lr.ph57428.a

bb.ake:                                           ; preds = %.lr.ph57428.a
  %indvars.iv.next55721 = add nuw nsw i64 %indvars.iv5572257426, 1 ; 2 uses
  %exitcond55727 = icmp eq i64 %indvars.iv.next55721, %wide.trip.count55726
  br i1 %exitcond55727, label %.loopexit54618, label %.lr.ph57428.a

.lr.ph57428.a:                                    ; preds = %bb.akd, %bb.ake
  %indvars.iv5572257426 = phi i64 [ %indvars.iv.next55721, %bb.ake ], [ 1, %bb.akd ] ; 2 uses
  %indvars55724 = trunc nuw i64 %indvars.iv5572257426 to i32 ; 2 uses
  %i.izd = shl i32 %indvars55724, 2
  %i.ize = add i32 %i.izd, %.0.copyload.i52517
  %i.izf = zext i32 %i.ize to i64
  %.val48288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.izg = getelementptr inbounds nuw i8, ptr %.val48288, i64 %i.izf
  %.0.copyload.i52519 = load i32, ptr %i.izg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52519) #7, !srcloc !19
  %.not46387 = icmp eq i32 %.0.copyload.i52519, 0
  br i1 %.not46387, label %bb.ake, label %bb.akf

bb.akf:                                           ; preds = %.lr.ph57428.a
  %i.izh = icmp ugt i32 %i.iza, %indvars55724
  br i1 %i.izh, label %bb.akg, label %.loopexit54618

.loopexit54618:                                   ; preds = %bb.ake, %bb.akd, %bb.akf, %.loopexit54619
  %i.izi = add i32 %.0.copyload.i52516, 1
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.hes, i32 noundef %i.izi, i32 noundef 0) #7
  br label %bb.akl

bb.akg:                                           ; preds = %bb.akf
  %.not46388 = icmp eq i32 %.0.copyload.i52516, 0
  br i1 %.not46388, label %.loopexit54617, label %bb.akh

bb.akh:                                           ; preds = %bb.akg, %bb.akc
  %i.izj = sub i32 0, %.0.copyload.i52516
  %i.izk = and i32 %i.izj, 31
  %i.izl = lshr i32 -1, %i.izk
  %i.izm = add i32 %.0.copyload.i52516, -1
  %i.izn = lshr i32 %i.izm, 5
  %i.izo = zext nneg i32 %i.izn to i64
  br label %bb.aki

bb.aki:                                           ; preds = %bb.akk, %bb.akh
  %indvars.iv55728 = phi i64 [ %indvars.iv.next55729.a, %bb.akk ], [ 0, %bb.akh ] ; 4 uses
  %indvars.iv55728.tr = trunc i64 %indvars.iv55728 to i32
  %i.izp = shl i32 %indvars.iv55728.tr, 2
  %i.izq = add i32 %i.izp, %.0.copyload.i52517
  %i.izr = zext i32 %i.izq to i64
  %.val48287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.izs = getelementptr inbounds nuw i8, ptr %.val48287, i64 %i.izr
  %.0.copyload.i52520 = load i32, ptr %i.izs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52520) #7, !srcloc !19
  %.not46389 = icmp eq i64 %indvars.iv55728, %i.izo ; 2 uses
  %i.izt = select i1 %.not46389, i32 %i.izl, i32 -1
  %i.izu = and i32 %.0.copyload.i52520, %i.izt    ; 2 uses
  %.not46390 = icmp eq i32 %i.izu, 0
  br i1 %.not46390, label %bb.akk, label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  %i.izv = trunc nuw nsw i64 %indvars.iv55728 to i32
  %i.izw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.izu, i1 true)
  %i.izx = shl i32 %i.izv, 5
  %i.izy = or disjoint i32 %i.izw, %i.izx
  br label %.loopexit54617

bb.akk:                                           ; preds = %bb.aki
  %indvars.iv.next55729.a = add nuw nsw i64 %indvars.iv55728, 1
  br i1 %.not46389, label %.loopexit54617, label %bb.aki

.loopexit54617:                                   ; preds = %bb.akk, %bb.akg, %bb.akj
  %.943138 = phi i32 [ %i.izy, %bb.akj ], [ -1, %bb.akg ], [ -1, %bb.akk ] ; 3 uses
  %i.izz = lshr i32 %.943138, 3
  %i.jaa = and i32 %i.izz, 536870908
  %i.jab = add i32 %i.jaa, %.0.copyload.i52517
  %i.jac = zext i32 %i.jab to i64                 ; 2 uses
  %.val48286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jad = getelementptr inbounds nuw i8, ptr %.val48286, i64 %i.jac
  %.0.copyload.i52521 = load i32, ptr %i.jad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52521) #7, !srcloc !19
  %i.jae = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %.943138)
  %i.jaf = and i32 %.0.copyload.i52521, %i.jae
  %.val49894 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jag = getelementptr inbounds nuw i8, ptr %.val49894, i64 %i.jac
  store i32 %i.jaf, ptr %i.jag, align 1
  br label %bb.akl

bb.akl:                                           ; preds = %.loopexit54617, %.loopexit54618
  %.043447 = phi i32 [ %.0.copyload.i52516, %.loopexit54618 ], [ %.943138, %.loopexit54617 ]
  %.val48285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jah = getelementptr inbounds nuw i8, ptr %.val48285, i64 %i.ilm
  %.0.copyload.i52522 = load i32, ptr %i.jah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52522) #7, !srcloc !19
  %.not46391 = icmp eq i32 %.0.copyload.i52522, 0
  br i1 %.not46391, label %.loopexit54616, label %bb.akm

bb.akm:                                           ; preds = %bb.akl
  %.val48284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jai = getelementptr inbounds nuw i8, ptr %.val48284, i64 %i.ilg
  %.0.copyload.i52523 = load i32, ptr %i.jai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52523) #7, !srcloc !19
  %i.jaj = shl i32 %.0.copyload.i52522, 2
  %i.jak = add i32 %.0.copyload.i52523, %i.jaj
  %i.jal = add i32 %i.ilk, -44
  br label %bb.akn

bb.akn:                                           ; preds = %.loopexit54551, %bb.akm
  %.1344109 = phi i32 [ 0, %bb.akm ], [ %.2244118, %.loopexit54551 ] ; 2 uses
  %.4843779 = phi i32 [ 0, %bb.akm ], [ %.5743788, %.loopexit54551 ] ; 2 uses
  %.1243385 = phi i32 [ %i.jak, %bb.akm ], [ %i.jam, %.loopexit54551 ]
  %.043278 = phi i32 [ 0, %bb.akm ], [ %.1043288, %.loopexit54551 ] ; 2 uses
  %i.jam = add i32 %.1243385, -4                  ; 3 uses
  %i.jan = zext i32 %i.jam to i64
  %.val48283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jao = getelementptr inbounds nuw i8, ptr %.val48283, i64 %i.jan
  %.0.copyload.i52524 = load i32, ptr %i.jao, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52524) #7, !srcloc !19
  %i.jap = zext i32 %.0.copyload.i52524 to i64
  %.val48282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaq = getelementptr inbounds nuw i8, ptr %.val48282, i64 %i.jap
  %i.jar = getelementptr inbounds nuw i8, ptr %i.jaq, i64 36
  %.0.copyload.i52525 = load i32, ptr %i.jar, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52525) #7, !srcloc !19
  %i.jas = add i32 %.0.copyload.i52524, 36        ; 2 uses
  %.not46392 = icmp eq i32 %.0.copyload.i52525, %i.jas
  br i1 %.not46392, label %.loopexit54551, label %.preheader54550

.preheader54550:                                  ; preds = %bb.akn, %.loopexit54392
  %.1444110 = phi i32 [ %.2144117, %.loopexit54392 ], [ %.1344109, %bb.akn ] ; 2 uses
  %.4943780 = phi i32 [ %.5643787, %.loopexit54392 ], [ %.4843779, %bb.akn ] ; 3 uses
  %.3743662 = phi i32 [ %.0.copyload.i52647, %.loopexit54392 ], [ %.0.copyload.i52525, %bb.akn ] ; 2 uses
  %.143279 = phi i32 [ %.943287, %.loopexit54392 ], [ %.043278, %bb.akn ] ; 3 uses
  %i.jat = add i32 %.3743662, 8                   ; 18 uses
  %.val48281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jau = getelementptr inbounds nuw i8, ptr %.val48281, i64 %i.hex
  %.0.copyload.i52526 = load i32, ptr %i.jau, align 1 ; 13 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52526) #7, !srcloc !19
  %.not46393 = icmp eq i32 %.0.copyload.i52526, 0
  br i1 %.not46393, label %bb.akx, label %bb.ako

bb.ako:                                           ; preds = %.preheader54550
  %.val48280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jav = getelementptr inbounds nuw i8, ptr %.val48280, i64 %i.hew
  %.0.copyload.i52527 = load i32, ptr %i.jav, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52527) #7, !srcloc !19
  %i.jaw = add i32 %.0.copyload.i52526, -1        ; 4 uses
  %i.jax = lshr i32 %i.jat, 4
  %i.jay = lshr i32 %i.jat, 9
  %i.jaz = xor i32 %i.jax, %i.jay                 ; 2 uses
  %i.jba = and i32 %i.jaw, %i.jaz                 ; 4 uses
  %i.jbb = shl nuw nsw i32 %i.jba, 3
  %i.jbc = add i32 %.0.copyload.i52527, %i.jbb    ; 3 uses
  %i.jbd = zext i32 %i.jbc to i64                 ; 2 uses
  %.val48279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbe = getelementptr inbounds nuw i8, ptr %.val48279, i64 %i.jbd
  %.0.copyload.i52528 = load i32, ptr %i.jbe, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52528) #7, !srcloc !19
  %i.jbf = icmp eq i32 %.0.copyload.i52528, %i.jat
  br i1 %i.jbf, label %.loopexit54400, label %.preheader54401

.preheader54401:                                  ; preds = %bb.ako, %bb.akp
  %.1043801 = phi i32 [ %i.jbj, %bb.akp ], [ %i.jba, %bb.ako ]
  %.643579 = phi i32 [ %i.jbi, %bb.akp ], [ 1, %bb.ako ] ; 2 uses
  %.143414 = phi i32 [ %.0.copyload.i52529, %bb.akp ], [ %.0.copyload.i52528, %bb.ako ]
  %i.jbg = icmp eq i32 %.143414, -4
  br i1 %i.jbg, label %.preheader54395, label %bb.akp

bb.akp:                                           ; preds = %.preheader54401
  %i.jbh = add i32 %.643579, %.1043801
  %i.jbi = add i32 %.643579, 1
  %i.jbj = and i32 %i.jbh, %i.jaw                 ; 2 uses
  %i.jbk = shl i32 %i.jbj, 3
  %i.jbl = add i32 %i.jbk, %.0.copyload.i52527
  %i.jbm = zext i32 %i.jbl to i64
  %.val48278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbn = getelementptr inbounds nuw i8, ptr %.val48278, i64 %i.jbm
  %.0.copyload.i52529 = load i32, ptr %i.jbn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52529) #7, !srcloc !19
  %.not46394 = icmp eq i32 %.0.copyload.i52529, %i.jat
  br i1 %.not46394, label %.preheader54399, label %.preheader54401

.preheader54399:                                  ; preds = %bb.akp, %bb.akq
  %.1544012 = phi i32 [ %.0.copyload.i52530, %bb.akq ], [ %.0.copyload.i52528, %bb.akp ] ; 2 uses
  %.103 = phi i32 [ %i.jbt, %bb.akq ], [ %i.jba, %bb.akp ]
  %.243415 = phi i32 [ %i.jbq, %bb.akq ], [ 0, %bb.akp ] ; 4 uses
  %.1943359 = phi i32 [ %i.jbv, %bb.akq ], [ %i.jbc, %bb.akp ] ; 2 uses
  %.1243327 = phi i32 [ %i.jbs, %bb.akq ], [ 1, %bb.akp ] ; 2 uses
  %.not46395 = icmp eq i32 %.1544012, -4
  br i1 %.not46395, label %bb.akr, label %bb.akq

bb.akq:                                           ; preds = %.preheader54399
  %.not46404 = icmp eq i32 %.243415, 0
  %i.jbo = icmp eq i32 %.1544012, -8
  %i.jbp = select i1 %i.jbo, i1 %.not46404, i1 false
  %i.jbq = select i1 %i.jbp, i32 %.1943359, i32 %.243415
  %i.jbr = add i32 %.1243327, %.103
  %i.jbs = add i32 %.1243327, 1
  %i.jbt = and i32 %i.jbr, %i.jaw                 ; 2 uses
  %i.jbu = shl i32 %i.jbt, 3
  %i.jbv = add i32 %i.jbu, %.0.copyload.i52527    ; 2 uses
  %i.jbw = zext i32 %i.jbv to i64                 ; 2 uses
  %.val48277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbx = getelementptr inbounds nuw i8, ptr %.val48277, i64 %i.jbw
  %.0.copyload.i52530 = load i32, ptr %i.jbx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52530) #7, !srcloc !19
  %.not46405 = icmp eq i32 %.0.copyload.i52530, %i.jat
  br i1 %.not46405, label %.loopexit54400, label %.preheader54399

bb.akr:                                           ; preds = %.preheader54399
  %.val48276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jby = getelementptr inbounds nuw i8, ptr %.val48276, i64 %i.hfc
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
bb.alk:                                           ; preds = %bb.alj, %.loopexit54398
  %i.jfx = zext i32 %.2843368 to i64              ; 3 uses
  %.val49886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jfy = getelementptr inbounds nuw i8, ptr %.val49886, i64 %i.jfx
  %i.jfz = getelementptr inbounds nuw i8, ptr %i.jfy, i64 4
  store i32 -1, ptr %i.jfz, align 1
  %.val49885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jga = getelementptr inbounds nuw i8, ptr %.val49885, i64 %i.jfx
  store i32 %i.jat, ptr %i.jga, align 1
  br label %.loopexit54400

.loopexit54400:                                   ; preds = %bb.akq, %bb.ako, %bb.alk
  %.pre-phi55781.a = phi i64 [ %i.jfx, %bb.alk ], [ %i.jbd, %bb.ako ], [ %i.jbw, %bb.akq ]
  %.val48256 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgb = getelementptr inbounds nuw i8, ptr %.val48256, i64 %.pre-phi55781.a
  %i.jgc = getelementptr inbounds nuw i8, ptr %i.jgb, i64 4
  %.0.copyload.i52551 = load i32, ptr %i.jgc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52551) #7, !srcloc !19
  %.not46416 = icmp ult i32 %.0.copyload.i52551, %.4943780
  br i1 %.not46416, label %bb.all, label %bb.alp

bb.all:                                           ; preds = %.loopexit54400
  %i.jgd = lshr i32 %.0.copyload.i52551, 3
  %i.jge = and i32 %i.jgd, 536870908
  %i.jgf = add i32 %i.jge, %.143279
  %i.jgg = zext i32 %i.jgf to i64
  %.val48255 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgh = getelementptr inbounds nuw i8, ptr %.val48255, i64 %i.jgg
  %.0.copyload.i52552 = load i32, ptr %i.jgh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52552) #7, !srcloc !19
  %i.jgi = and i32 %.0.copyload.i52551, 31
  %i.jgj = shl nuw i32 1, %i.jgi
  %i.jgk = and i32 %.0.copyload.i52552, %i.jgj
  %.not46417 = icmp eq i32 %i.jgk, 0
  br i1 %.not46417, label %bb.alp, label %bb.alm

bb.alm:                                           ; preds = %bb.all
  %.val48254 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgl = getelementptr inbounds nuw i8, ptr %.val48254, i64 %i.iyp
  %.0.copyload.i52553 = load i32, ptr %i.jgl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52553) #7, !srcloc !19
  %.val48253 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgm = getelementptr inbounds nuw i8, ptr %.val48253, i64 %.pre-phi55897.a
  %i.jgn = getelementptr inbounds nuw i8, ptr %i.jgm, i64 12
  %.0.copyload.i52554 = load i32, ptr %i.jgn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52554) #7, !srcloc !19
  %.not46418 = icmp ult i32 %.0.copyload.i52553, %.0.copyload.i52554
  br i1 %.not46418, label %bb.alo, label %bb.aln

bb.aln:                                           ; preds = %bb.alm
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jal, i32 noundef %i.iyr, i32 noundef 0, i32 noundef 4) #7
  %.val48252 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgo = getelementptr inbounds nuw i8, ptr %.val48252, i64 %i.iyp
  %.0.copyload.i52555 = load i32, ptr %i.jgo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52555) #7, !srcloc !19
  br label %bb.alo

bb.alo:                                           ; preds = %bb.aln, %bb.alm
  %.3043370 = phi i32 [ %.0.copyload.i52555, %bb.aln ], [ %.0.copyload.i52553, %bb.alm ]
  %.val48251 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgp = getelementptr inbounds nuw i8, ptr %.val48251, i64 %i.iys
  %.0.copyload.i52556 = load i32, ptr %i.jgp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52556) #7, !srcloc !19
  %i.jgq = shl i32 %.3043370, 2
  %i.jgr = add i32 %.0.copyload.i52556, %i.jgq
  %i.jgs = zext i32 %i.jgr to i64
  %.val49884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgt = getelementptr inbounds nuw i8, ptr %.val49884, i64 %i.jgs
  store i32 %.0.copyload.i52551, ptr %i.jgt, align 1
  %.val48250 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgu = getelementptr inbounds nuw i8, ptr %.val48250, i64 %i.iyp
  %.0.copyload.i52557 = load i32, ptr %i.jgu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52557) #7, !srcloc !19
  %i.jgv = add i32 %.0.copyload.i52557, 1
  %.val49883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgw = getelementptr inbounds nuw i8, ptr %.val49883, i64 %i.iyp
  store i32 %i.jgv, ptr %i.jgw, align 1
  br label %bb.alp

bb.alp:                                           ; preds = %bb.all, %.loopexit54400, %bb.alo, %.loopexit54396
  %i.jgx = zext i32 %.3743662 to i64              ; 3 uses
  %.val48249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jgy = getelementptr inbounds nuw i8, ptr %.val48249, i64 %i.jgx
  %i.jgz = getelementptr inbounds nuw i8, ptr %i.jgy, i64 44
  %.0.copyload.i52558 = load i32, ptr %i.jgz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52558) #7, !srcloc !19
  %.not46419 = icmp eq i32 %.0.copyload.i52558, 0
  br i1 %.not46419, label %.loopexit54392, label %.preheader54391

.preheader54391:                                  ; preds = %bb.alp, %.loopexit54308
  %.1544111 = phi i32 [ %.2044116, %.loopexit54308 ], [ %.1444110, %bb.alp ] ; 19 uses
  %.5043781 = phi i32 [ %.5543786, %.loopexit54308 ], [ %.4943780, %bb.alp ] ; 19 uses
  %.3143371 = phi i32 [ %i.kcp, %.loopexit54308 ], [ 0, %bb.alp ] ; 2 uses
  %.243280 = phi i32 [ %.843286, %.loopexit54308 ], [ %.143279, %bb.alp ] ; 14 uses
  %.val48248 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jha = getelementptr inbounds nuw i8, ptr %.val48248, i64 %i.jgx
  %i.jhb = getelementptr inbounds nuw i8, ptr %i.jha, i64 40
  %.0.copyload.i52559 = load i32, ptr %i.jhb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52559) #7, !srcloc !19
  %i.jhc = shl i32 %.3143371, 3
  %i.jhd = add i32 %.0.copyload.i52559, %i.jhc
  %i.jhe = zext i32 %i.jhd to i64
  %.val48247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhf = getelementptr inbounds nuw i8, ptr %.val48247, i64 %i.jhe
  %.0.copyload.i52560 = load i32, ptr %i.jhf, align 1 ; 38 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52560) #7, !srcloc !19
  %i.jhg = zext i32 %.0.copyload.i52560 to i64
  %.val51131 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhh = getelementptr inbounds nuw i8, ptr %.val51131, i64 %i.jhg
  %.0.copyload.i52561 = load i8, ptr %i.jhh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i52561) #7, !srcloc !21
  %i.jhi = add i8 %.0.copyload.i52561, -109
  %i.jhj = icmp ult i8 %i.jhi, -107
  br i1 %i.jhj, label %.loopexit54308, label %bb.alq

bb.alq:                                           ; preds = %.preheader54391
  %i.jhk = add i32 %.0.copyload.i52560, -8
  %.val48246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhl = getelementptr inbounds nuw i8, ptr %.val48246, i64 %i.hew
  %.0.copyload.i52562 = load i32, ptr %i.jhl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52562) #7, !srcloc !19
  %.val48245 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhm = getelementptr inbounds nuw i8, ptr %.val48245, i64 %i.hex
  %.0.copyload.i52563 = load i32, ptr %i.jhm, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52563) #7, !srcloc !19
  %.not46420 = icmp eq i32 %.0.copyload.i52563, 0 ; 2 uses
  br i1 %.not46420, label %.loopexit54307, label %bb.alr

bb.alr:                                           ; preds = %bb.alq
  %i.jhn = add i32 %.0.copyload.i52563, -1        ; 2 uses
  %i.jho = lshr i32 %.0.copyload.i52560, 4
  %i.jhp = lshr i32 %.0.copyload.i52560, 9
  %i.jhq = xor i32 %i.jho, %i.jhp
  %i.jhr = and i32 %i.jhn, %i.jhq                 ; 2 uses
  %i.jhs = shl nuw nsw i32 %i.jhr, 3
  %i.jht = add i32 %i.jhs, %.0.copyload.i52562
  %i.jhu = zext i32 %i.jht to i64
  %.val48244 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jhv = getelementptr inbounds nuw i8, ptr %.val48244, i64 %i.jhu
  %.0.copyload.i52564 = load i32, ptr %i.jhv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52564) #7, !srcloc !19
  %i.jhw = icmp eq i32 %.0.copyload.i52564, %.0.copyload.i52560
  br i1 %i.jhw, label %.loopexit54308, label %.preheader54306

.preheader54306:                                  ; preds = %bb.alr, %bb.als
  %.943582 = phi i32 [ %i.jia, %bb.als ], [ %i.jhr, %bb.alr ]
  %.343416 = phi i32 [ %.0.copyload.i52565, %bb.als ], [ %.0.copyload.i52564, %bb.alr ]
  %.1643331 = phi i32 [ %i.jhz, %bb.als ], [ 1, %bb.alr ] ; 2 uses
  %i.jhx = icmp eq i32 %.343416, -4
  br i1 %i.jhx, label %.loopexit54307, label %bb.als

bb.als:                                           ; preds = %.preheader54306
  %i.jhy = add i32 %.1643331, %.943582
  %i.jhz = add i32 %.1643331, 1
  %i.jia = and i32 %i.jhy, %i.jhn                 ; 2 uses
  %i.jib = shl i32 %i.jia, 3
  %i.jic = add i32 %i.jib, %.0.copyload.i52562
  %i.jid = zext i32 %i.jic to i64
  %.val48243 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jie = getelementptr inbounds nuw i8, ptr %.val48243, i64 %i.jid
  %.0.copyload.i52565 = load i32, ptr %i.jie, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52565) #7, !srcloc !19
  %.not46421 = icmp eq i32 %.0.copyload.i52565, %.0.copyload.i52560
  br i1 %.not46421, label %.loopexit54308, label %.preheader54306

.loopexit54307:                                   ; preds = %.preheader54306, %bb.alq
  %i.jif = zext i32 %i.jhk to i64
  %.val48242 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jig = getelementptr inbounds nuw i8, ptr %.val48242, i64 %i.jif
  %i.jih = getelementptr inbounds nuw i8, ptr %i.jig, i64 36
  %.0.copyload.i52566 = load i32, ptr %i.jih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52566) #7, !srcloc !19
  %.not46422 = icmp eq i32 %.0.copyload.i52524, %.0.copyload.i52566
  %.val48218 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not46422, label %bb.ana, label %bb.alt

bb.alt:                                           ; preds = %.loopexit54307
  %i.jii = getelementptr inbounds nuw i8, ptr %.val48218, i64 %i.hez
  %.0.copyload.i52567 = load i32, ptr %i.jii, align 1 ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52567) #7, !srcloc !19
  %i.jij = add i32 %.0.copyload.i52567, 31        ; 3 uses
  %i.jik = icmp ult i32 %i.jij, 32
  br i1 %i.jik, label %.loopexit54305, label %bb.alu

bb.alu:                                           ; preds = %bb.alt
  %.val48240 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jil = getelementptr inbounds nuw i8, ptr %.val48240, i64 %i.hey
  %.0.copyload.i52568 = load i32, ptr %i.jil, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52568) #7, !srcloc !19
  %i.jim = zext i32 %.0.copyload.i52568 to i64
  %.val48239 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jin = getelementptr inbounds nuw i8, ptr %.val48239, i64 %i.jim
  %.0.copyload.i52569 = load i32, ptr %i.jin, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52569) #7, !srcloc !19
  %.not46462 = icmp eq i32 %.0.copyload.i52569, 0
  br i1 %.not46462, label %bb.alv, label %bb.amr

bb.alv:                                           ; preds = %bb.alu
  %i.jio = lshr i32 %i.jij, 5                     ; 2 uses
  %i.jip = icmp ult i32 %i.jij, 64
  %i.jiq = select i1 %i.jip, i32 1, i32 %i.jio    ; 2 uses
  %wide.trip.count55736 = zext nneg i32 %i.jiq to i64
  %exitcond5573757429 = icmp eq i32 %i.jiq, 1
  br i1 %exitcond5573757429, label %.loopexit54305, label %.lr.ph57432

bb.alw:                                           ; preds = %.lr.ph57432
  %indvars.iv.next55729 = add nuw nsw i64 %indvars.iv5573257430, 1 ; 2 uses
  %exitcond55737 = icmp eq i64 %indvars.iv.next55729, %wide.trip.count55736
  br i1 %exitcond55737, label %.loopexit54305, label %.lr.ph57432

.lr.ph57432:                                      ; preds = %bb.alv, %bb.alw
  %indvars.iv5573257430 = phi i64 [ %indvars.iv.next55729, %bb.alw ], [ 1, %bb.alv ] ; 2 uses
  %indvars55734 = trunc nuw i64 %indvars.iv5573257430 to i32 ; 2 uses
  %i.jir = shl i32 %indvars55734, 2
  %i.jis = add i32 %i.jir, %.0.copyload.i52568
  %i.jit = zext i32 %i.jis to i64
  %.val48238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jiu = getelementptr inbounds nuw i8, ptr %.val48238, i64 %i.jit
  %.0.copyload.i52570 = load i32, ptr %i.jiu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52570) #7, !srcloc !19
  %.not46463 = icmp eq i32 %.0.copyload.i52570, 0
  br i1 %.not46463, label %bb.alw, label %bb.alx

bb.alx:                                           ; preds = %.lr.ph57432
  %i.jiv = icmp ugt i32 %i.jio, %indvars55734
  br i1 %i.jiv, label %bb.amq, label %.loopexit54305

.loopexit54305:                                   ; preds = %bb.alw, %bb.alv, %bb.alx, %bb.alt
  %i.jiw = add i32 %.0.copyload.i52567, 1         ; 5 uses
  %.val48237 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jix = getelementptr inbounds nuw i8, ptr %.val48237, i64 %i.hfa
  %.0.copyload.i52571 = load i32, ptr %i.jix, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52571) #7, !srcloc !19
  %i.jiy = shl i32 %.0.copyload.i52571, 5
  %.not46467 = icmp ugt i32 %i.jiw, %i.jiy
  br i1 %.not46467, label %bb.aly, label %bb.amg

bb.aly:                                           ; preds = %.loopexit54305
  %.val48236 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jiz = getelementptr inbounds nuw i8, ptr %.val48236, i64 %i.hey
  %.0.copyload.i52572 = load i32, ptr %i.jiz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52572) #7, !srcloc !19
  %i.jja = add i32 %.0.copyload.i52567, 32
  %i.jjb = lshr i32 %i.jja, 5
  %i.jjc = shl i32 %.0.copyload.i52571, 1
  %i.jjd = tail call i32 @llvm.umax.i32(i32 %i.jjc, i32 %i.jjb) ; 6 uses
  %i.jje = shl i32 %i.jjd, 2
  %i.jjf = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52572, i32 noundef %i.jje) #7 ; 5 uses
  %.not46468 = icmp eq i32 %i.jjf, 0
  br i1 %.not46468, label %bb.alz, label %bb.ama

bb.alz:                                           ; preds = %bb.aly
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.ama

bb.ama:                                           ; preds = %bb.alz, %bb.aly
  %.val49882 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjg = getelementptr inbounds nuw i8, ptr %.val49882, i64 %i.hfa
  store i32 %i.jjd, ptr %i.jjg, align 1
  %.val49881 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjh = getelementptr inbounds nuw i8, ptr %.val49881, i64 %i.heh
  %i.jji = getelementptr inbounds nuw i8, ptr %i.jjh, i64 1100
  store i32 %i.jjf, ptr %i.jji, align 1
  %.val48235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjj = getelementptr inbounds nuw i8, ptr %.val48235, i64 %i.hez
  %.0.copyload.i52573 = load i32, ptr %i.jjj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52573) #7, !srcloc !19
  %i.jjk = add i32 %.0.copyload.i52573, 31
  %i.jjl = lshr i32 %i.jjk, 5                     ; 4 uses
  %i.jjm = icmp ult i32 %i.jjl, %i.jjd
  br i1 %i.jjm, label %bb.amb, label %bb.amc

bb.amb:                                           ; preds = %bb.ama
  %i.jjn = shl nuw nsw i32 %i.jjl, 2
  %i.jjo = add i32 %i.jjn, %i.jjf
  %i.jjp = sub nuw i32 %i.jjd, %i.jjl
  %i.jjq = shl i32 %i.jjp, 2
  %i.jjr = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jjo, i32 noundef 0, i32 noundef %i.jjq) #7 ; 0 uses
  br label %bb.amc

bb.amc:                                           ; preds = %bb.amb, %bb.ama
  %i.jjs = and i32 %.0.copyload.i52573, 31        ; 2 uses
  %.not46469 = icmp eq i32 %i.jjs, 0
  br i1 %.not46469, label %bb.ame, label %bb.amd

bb.amd:                                           ; preds = %bb.amc
  %i.jjt = shl nuw nsw i32 %i.jjl, 2
  %i.jju = add i32 %i.jjf, -4
  %i.jjv = add i32 %i.jju, %i.jjt
  %i.jjw = zext i32 %i.jjv to i64                 ; 2 uses
  %.val48234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjx = getelementptr inbounds nuw i8, ptr %.val48234, i64 %i.jjw
  %.0.copyload.i52574 = load i32, ptr %i.jjx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52574) #7, !srcloc !19
  %i.jjy = shl nsw i32 -1, %i.jjs
  %i.jjz = xor i32 %i.jjy, -1
  %i.jka = and i32 %.0.copyload.i52574, %i.jjz
  %.val49880 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkb = getelementptr inbounds nuw i8, ptr %.val49880, i64 %i.jjw
  store i32 %i.jka, ptr %i.jkb, align 1
  br label %bb.ame

bb.ame:                                           ; preds = %bb.amd, %bb.amc
  %i.jkc = icmp eq i32 %.0.copyload.i52571, %i.jjd
  br i1 %i.jkc, label %bb.amg, label %bb.amf

bb.amf:                                           ; preds = %bb.ame
  %i.jkd = shl i32 %.0.copyload.i52571, 2
  %i.jke = add i32 %i.jjf, %i.jkd
  %i.jkf = sub i32 %i.jjd, %.0.copyload.i52571
  %i.jkg = shl i32 %i.jkf, 2
  %i.jkh = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jke, i32 noundef 0, i32 noundef %i.jkg) #7 ; 0 uses
  br label %bb.amg

bb.amg:                                           ; preds = %bb.ame, %.loopexit54305, %bb.amf
  %.7544326 = phi i32 [ %.0.copyload.i52567, %.loopexit54305 ], [ %.0.copyload.i52573, %bb.ame ], [ %.0.copyload.i52573, %bb.amf ] ; 4 uses
  %.not46470 = icmp ult i32 %.7544326, %i.jiw
  br i1 %.not46470, label %bb.amh, label %bb.aml

bb.amh:                                           ; preds = %bb.amg
  %.val48233 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jki = getelementptr inbounds nuw i8, ptr %.val48233, i64 %i.hfa
  %.0.copyload.i52575 = load i32, ptr %i.jki, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52575) #7, !srcloc !19
  %i.jkj = add i32 %.7544326, 31
  %i.jkk = lshr i32 %i.jkj, 5                     ; 4 uses
  %i.jkl = icmp ugt i32 %.0.copyload.i52575, %i.jkk
  br i1 %i.jkl, label %bb.ami, label %bb.amj

bb.ami:                                           ; preds = %bb.amh
  %.val48232 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkm = getelementptr inbounds nuw i8, ptr %.val48232, i64 %i.heh
  %i.jkn = getelementptr inbounds nuw i8, ptr %i.jkm, i64 1100
  %.0.copyload.i52576 = load i32, ptr %i.jkn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52576) #7, !srcloc !19
  %i.jko = shl nuw nsw i32 %i.jkk, 2
  %i.jkp = add i32 %.0.copyload.i52576, %i.jko
  %i.jkq = sub nuw i32 %.0.copyload.i52575, %i.jkk
  %i.jkr = shl i32 %i.jkq, 2
  %i.jks = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jkp, i32 noundef 0, i32 noundef %i.jkr) #7 ; 0 uses
  %.val48231 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkt = getelementptr inbounds nuw i8, ptr %.val48231, i64 %i.hez
  %.0.copyload.i52577 = load i32, ptr %i.jkt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52577) #7, !srcloc !19
  br label %bb.amj

bb.amj:                                           ; preds = %bb.ami, %bb.amh
  %.7644327 = phi i32 [ %.0.copyload.i52577, %bb.ami ], [ %.7544326, %bb.amh ] ; 3 uses
  %i.jku = and i32 %.7644327, 31                  ; 2 uses
  %.not46471 = icmp eq i32 %i.jku, 0
  br i1 %.not46471, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  %.val48230 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkv = getelementptr inbounds nuw i8, ptr %.val48230, i64 %i.hey
  %.0.copyload.i52578 = load i32, ptr %i.jkv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52578) #7, !srcloc !19
  %i.jkw = shl nuw nsw i32 %i.jkk, 2
  %i.jkx = add nsw i32 %i.jkw, -4
  %i.jky = add i32 %i.jkx, %.0.copyload.i52578
  %i.jkz = zext i32 %i.jky to i64                 ; 2 uses
  %.val48229 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jla = getelementptr inbounds nuw i8, ptr %.val48229, i64 %i.jkz
  %.0.copyload.i52579 = load i32, ptr %i.jla, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52579) #7, !srcloc !19
  %i.jlb = shl nsw i32 -1, %i.jku
  %i.jlc = xor i32 %i.jlb, -1
  %i.jld = and i32 %.0.copyload.i52579, %i.jlc
  %.val49879 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jle = getelementptr inbounds nuw i8, ptr %.val49879, i64 %i.jkz
  store i32 %i.jld, ptr %i.jle, align 1
  br label %bb.aml

bb.aml:                                           ; preds = %bb.amj, %bb.amg, %bb.amk
  %.7744328 = phi i32 [ %.7544326, %bb.amg ], [ %.7644327, %bb.amj ], [ %.7644327, %bb.amk ]
  %.val49878 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlf = getelementptr inbounds nuw i8, ptr %.val49878, i64 %i.hez
  store i32 %i.jiw, ptr %i.jlf, align 1
  %.not46472 = icmp ugt i32 %.7744328, %i.jiw
  br i1 %.not46472, label %bb.amm, label %bb.amw

bb.amm:                                           ; preds = %bb.aml
  %.val48228 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlg = getelementptr inbounds nuw i8, ptr %.val48228, i64 %i.hfa
  %.0.copyload.i52580 = load i32, ptr %i.jlg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52580) #7, !srcloc !19
  %i.jlh = add i32 %.0.copyload.i52567, 32
  %i.jli = lshr i32 %i.jlh, 5                     ; 4 uses
  %i.jlj = icmp ugt i32 %.0.copyload.i52580, %i.jli
  br i1 %i.jlj, label %bb.amn, label %bb.amo

bb.amn:                                           ; preds = %bb.amm
  %.val48227 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlk = getelementptr inbounds nuw i8, ptr %.val48227, i64 %i.heh
  %i.jll = getelementptr inbounds nuw i8, ptr %i.jlk, i64 1100
  %.0.copyload.i52581 = load i32, ptr %i.jll, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52581) #7, !srcloc !19
  %i.jlm = shl nuw nsw i32 %i.jli, 2
  %i.jln = add i32 %.0.copyload.i52581, %i.jlm
  %i.jlo = sub nuw i32 %.0.copyload.i52580, %i.jli
  %i.jlp = shl i32 %i.jlo, 2
  %i.jlq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jln, i32 noundef 0, i32 noundef %i.jlp) #7 ; 0 uses
  %.val48226 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlr = getelementptr inbounds nuw i8, ptr %.val48226, i64 %i.hez
  %.0.copyload.i52582 = load i32, ptr %i.jlr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52582) #7, !srcloc !19
  br label %bb.amo

bb.amo:                                           ; preds = %bb.amm, %bb.amn
  %.36 = phi i32 [ %.0.copyload.i52582, %bb.amn ], [ %i.jiw, %bb.amm ]
  %i.jls = and i32 %.36, 31                       ; 2 uses
  %.not46473 = icmp eq i32 %i.jls, 0
  br i1 %.not46473, label %bb.amw, label %bb.amp
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52584) #7, !srcloc !19
  %.not46465 = icmp eq i64 %indvars.iv55738, %i.jmd ; 2 uses
  %i.jmi = select i1 %.not46465, i32 %i.jma, i32 -1
  %i.jmj = and i32 %.0.copyload.i52584, %i.jmi    ; 2 uses
  %.not46466 = icmp eq i32 %i.jmj, 0
  br i1 %.not46466, label %bb.amu, label %bb.amt

bb.amt:                                           ; preds = %bb.ams
  %i.jmk = trunc nuw nsw i64 %indvars.iv55738 to i32
  %i.jml = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jmj, i1 true)
  %i.jmm = shl i32 %i.jmk, 5
  %i.jmn = or disjoint i32 %i.jml, %i.jmm
  br label %.loopexit54304

bb.amu:                                           ; preds = %bb.ams
  %indvars.iv.next55739 = add nuw nsw i64 %indvars.iv55738, 1
  br i1 %.not46465, label %.loopexit54304, label %bb.ams

.loopexit54304:                                   ; preds = %bb.amu, %bb.amq, %bb.amt
  %.37 = phi i32 [ %i.jmn, %bb.amt ], [ -1, %bb.amq ], [ -1, %bb.amu ] ; 3 uses
  %i.jmo = and i32 %.37, 31
  %i.jmp = shl nuw i32 1, %i.jmo
  %i.jmq = lshr i32 %.37, 3
  %i.jmr = and i32 %i.jmq, 536870908
  %i.jms = add i32 %i.jmr, %.0.copyload.i52568
  br label %bb.amv

bb.amv:                                           ; preds = %.loopexit54304, %bb.amp
  %.1944016 = phi i32 [ %.0.copyload.i52567, %bb.amp ], [ %.37, %.loopexit54304 ]
  %.105 = phi i32 [ %i.jlt, %bb.amp ], [ %i.jmp, %.loopexit54304 ]
  %.1343142 = phi i32 [ %i.jlx, %bb.amp ], [ %i.jms, %.loopexit54304 ]
  %i.jmt = zext i32 %.1343142 to i64              ; 2 uses
  %.val48223 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmu = getelementptr inbounds nuw i8, ptr %.val48223, i64 %i.jmt
  %.0.copyload.i52585 = load i32, ptr %i.jmu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52585) #7, !srcloc !19
  %i.jmv = xor i32 %.105, -1
  %i.jmw = and i32 %.0.copyload.i52585, %i.jmv
  %.val49877 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmx = getelementptr inbounds nuw i8, ptr %.val49877, i64 %i.jmt
  store i32 %i.jmw, ptr %i.jmx, align 1
  br label %bb.amw

bb.amw:                                           ; preds = %bb.amo, %bb.aml, %bb.amv
  %.2044017 = phi i32 [ %.0.copyload.i52567, %bb.aml ], [ %.0.copyload.i52567, %bb.amo ], [ %.1944016, %bb.amv ] ; 4 uses
  %.val48222 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmy = getelementptr inbounds nuw i8, ptr %.val48222, i64 %i.hex
  %.0.copyload.i52586 = load i32, ptr %i.jmy, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52586) #7, !srcloc !19
  %.not46474 = icmp eq i32 %.0.copyload.i52586, 0
  br i1 %.not46474, label %bb.apu, label %bb.amx

bb.amx:                                           ; preds = %bb.amw
  %.val48221 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmz = getelementptr inbounds nuw i8, ptr %.val48221, i64 %i.hew
  %.0.copyload.i52587 = load i32, ptr %i.jmz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52587) #7, !srcloc !19
  %i.jna = add i32 %.0.copyload.i52586, -1        ; 2 uses
  %i.jnb = lshr i32 %.0.copyload.i52560, 4
  %i.jnc = lshr i32 %.0.copyload.i52560, 9
  %i.jnd = xor i32 %i.jnb, %i.jnc
  %i.jne = and i32 %i.jna, %i.jnd                 ; 2 uses
  %i.jnf = shl nuw nsw i32 %i.jne, 3
  %i.jng = add i32 %.0.copyload.i52587, %i.jnf    ; 2 uses
  %i.jnh = zext i32 %i.jng to i64                 ; 2 uses
  %.val48220 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jni = getelementptr inbounds nuw i8, ptr %.val48220, i64 %i.jnh
  %.0.copyload.i52588 = load i32, ptr %i.jni, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52588) #7, !srcloc !19
  %i.jnj = icmp eq i32 %.0.copyload.i52588, %.0.copyload.i52560
  br i1 %i.jnj, label %.loopexit54293, label %.preheader54302

.preheader54302:                                  ; preds = %bb.amx, %bb.amz
  %.106 = phi i32 [ %.0.copyload.i52589, %bb.amz ], [ %.0.copyload.i52588, %bb.amx ] ; 2 uses
  %.1143802 = phi i32 [ %i.jno, %bb.amz ], [ 0, %bb.amx ] ; 3 uses
  %.1043583 = phi i32 [ %i.jnr, %bb.amz ], [ %i.jne, %bb.amx ]
  %.443417 = phi i32 [ %i.jnt, %bb.amz ], [ %i.jng, %bb.amx ] ; 2 uses
  %.443397 = phi i32 [ %i.jnq, %bb.amz ], [ 1, %bb.amx ] ; 2 uses
  %i.jnk = icmp eq i32 %.106, -4
  %.not46477 = icmp eq i32 %.1143802, 0           ; 2 uses
  br i1 %i.jnk, label %bb.amy, label %bb.amz

bb.amy:                                           ; preds = %.preheader54302
  %i.jnl = select i1 %.not46477, i32 %.443417, i32 %.1143802
  br label %bb.apu

bb.amz:                                           ; preds = %.preheader54302
  %i.jnm = icmp eq i32 %.106, -8
  %i.jnn = select i1 %i.jnm, i1 %.not46477, i1 false
  %i.jno = select i1 %i.jnn, i32 %.443417, i32 %.1143802
  %i.jnp = add i32 %.443397, %.1043583
  %i.jnq = add i32 %.443397, 1
  %i.jnr = and i32 %i.jnp, %i.jna                 ; 2 uses
  %i.jns = shl i32 %i.jnr, 3
  %i.jnt = add i32 %i.jns, %.0.copyload.i52587    ; 2 uses
  %i.jnu = zext i32 %i.jnt to i64                 ; 2 uses
  %.val48219 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnv = getelementptr inbounds nuw i8, ptr %.val48219, i64 %i.jnu
  %.0.copyload.i52589 = load i32, ptr %i.jnv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52589) #7, !srcloc !19
  %.not46476 = icmp eq i32 %.0.copyload.i52589, %.0.copyload.i52560
  br i1 %.not46476, label %.loopexit54293, label %.preheader54302

bb.ana:                                           ; preds = %.loopexit54307
  %i.jnw = getelementptr inbounds nuw i8, ptr %.val48218, i64 %i.iyp
  %.0.copyload.i52590 = load i32, ptr %i.jnw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52590) #7, !srcloc !19
  %.not46423 = icmp eq i32 %.0.copyload.i52590, 0
  %.val48213 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not46423, label %bb.anf, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.jnx = getelementptr inbounds nuw i8, ptr %.val48213, i64 %i.iys
  %.0.copyload.i52591 = load i32, ptr %i.jnx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52591) #7, !srcloc !19
  %i.jny = shl i32 %.0.copyload.i52590, 2
  %i.jnz = add i32 %i.jny, -4
  %i.joa = add i32 %i.jnz, %.0.copyload.i52591
  %i.job = zext i32 %i.joa to i64
  %.val48216 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.joc = getelementptr inbounds nuw i8, ptr %.val48216, i64 %i.job
  %.0.copyload.i52592 = load i32, ptr %i.joc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52592) #7, !srcloc !19
  %i.jod = add i32 %.0.copyload.i52590, -1
  %.val49876 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.joe = getelementptr inbounds nuw i8, ptr %.val49876, i64 %i.iyp
  store i32 %i.jod, ptr %i.joe, align 1
  br i1 %.not46420, label %bb.apn, label %bb.anc

bb.anc:                                           ; preds = %bb.anb
  %i.jof = add i32 %.0.copyload.i52563, -1        ; 2 uses
  %i.jog = lshr i32 %.0.copyload.i52560, 4
  %i.joh = lshr i32 %.0.copyload.i52560, 9
  %i.joi = xor i32 %i.jog, %i.joh
  %i.joj = and i32 %i.jof, %i.joi                 ; 2 uses
  %i.jok = shl nuw nsw i32 %i.joj, 3
  %i.jol = add i32 %i.jok, %.0.copyload.i52562    ; 2 uses
  %i.jom = zext i32 %i.jol to i64                 ; 2 uses
  %.val48215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jon = getelementptr inbounds nuw i8, ptr %.val48215, i64 %i.jom
  %.0.copyload.i52593 = load i32, ptr %i.jon, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52593) #7, !srcloc !19
  %i.joo = icmp eq i32 %.0.copyload.i52593, %.0.copyload.i52560
  br i1 %i.joo, label %.loopexit54293, label %.preheader54298

.preheader54298:                                  ; preds = %bb.anc, %bb.ane
  %.1243803 = phi i32 [ %i.jot, %bb.ane ], [ 0, %bb.anc ] ; 3 uses
  %.1143584 = phi i32 [ %.0.copyload.i52594, %bb.ane ], [ %.0.copyload.i52593, %bb.anc ] ; 2 uses
  %.543418 = phi i32 [ %i.joy, %bb.ane ], [ %i.jol, %bb.anc ] ; 2 uses
  %.543398 = phi i32 [ %i.jov, %bb.ane ], [ 1, %bb.anc ] ; 2 uses
  %.1743332 = phi i32 [ %i.jow, %bb.ane ], [ %i.joj, %bb.anc ]
  %i.jop = icmp eq i32 %.1143584, -4
  %.not46455 = icmp eq i32 %.1243803, 0           ; 2 uses
  br i1 %i.jop, label %bb.and, label %bb.ane

bb.and:                                           ; preds = %.preheader54298
  %i.joq = select i1 %.not46455, i32 %.543418, i32 %.1243803
  br label %bb.apn

bb.ane:                                           ; preds = %.preheader54298
  %i.jor = icmp eq i32 %.1143584, -8
  %i.jos = select i1 %i.jor, i1 %.not46455, i1 false
  %i.jot = select i1 %i.jos, i32 %.543418, i32 %.1243803
  %i.jou = add i32 %.1743332, %.543398
  %i.jov = add i32 %.543398, 1
  %i.jow = and i32 %i.jou, %i.jof                 ; 2 uses
  %i.jox = shl i32 %i.jow, 3
  %i.joy = add i32 %i.jox, %.0.copyload.i52562    ; 2 uses
  %i.joz = zext i32 %i.joy to i64                 ; 2 uses
  %.val48214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpa = getelementptr inbounds nuw i8, ptr %.val48214, i64 %i.joz
  %.0.copyload.i52594 = load i32, ptr %i.jpa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52594) #7, !srcloc !19
  %.not46454 = icmp eq i32 %.0.copyload.i52594, %.0.copyload.i52560
  br i1 %.not46454, label %.loopexit54293, label %.preheader54298

bb.anf:                                           ; preds = %bb.ana
  %i.jpb = getelementptr inbounds nuw i8, ptr %.val48213, i64 %i.hez
  %.0.copyload.i52595 = load i32, ptr %i.jpb, align 1 ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52595) #7, !srcloc !19
  %i.jpc = add i32 %.0.copyload.i52595, 31        ; 3 uses
  %i.jpd = icmp ult i32 %i.jpc, 32
  br i1 %i.jpd, label %.loopexit54295, label %bb.ang

bb.ang:                                           ; preds = %bb.anf
  %.val48212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpe = getelementptr inbounds nuw i8, ptr %.val48212, i64 %i.hey
  %.0.copyload.i52596 = load i32, ptr %i.jpe, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52596) #7, !srcloc !19
  %i.jpf = zext i32 %.0.copyload.i52596 to i64
  %.val48211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpg = getelementptr inbounds nuw i8, ptr %.val48211, i64 %i.jpf
  %.0.copyload.i52597 = load i32, ptr %i.jpg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52597) #7, !srcloc !19
  %.not46424 = icmp eq i32 %.0.copyload.i52597, 0
  br i1 %.not46424, label %bb.anh, label %bb.aod

bb.anh:                                           ; preds = %bb.ang
  %i.jph = lshr i32 %i.jpc, 5                     ; 2 uses
  %i.jpi = icmp ult i32 %i.jpc, 64
  %i.jpj = select i1 %i.jpi, i32 1, i32 %i.jph    ; 2 uses
  %wide.trip.count55746 = zext nneg i32 %i.jpj to i64
  %exitcond5574757433 = icmp eq i32 %i.jpj, 1
  br i1 %exitcond5574757433, label %.loopexit54295, label %.lr.ph57436

bb.ani:                                           ; preds = %.lr.ph57436
  %indvars.iv.next55737 = add nuw nsw i64 %indvars.iv5574257434, 1 ; 2 uses
  %exitcond55747 = icmp eq i64 %indvars.iv.next55737, %wide.trip.count55746
  br i1 %exitcond55747, label %.loopexit54295, label %.lr.ph57436

.lr.ph57436:                                      ; preds = %bb.anh, %bb.ani
  %indvars.iv5574257434 = phi i64 [ %indvars.iv.next55737, %bb.ani ], [ 1, %bb.anh ] ; 2 uses
  %indvars55744 = trunc nuw i64 %indvars.iv5574257434 to i32 ; 2 uses
  %i.jpk = shl i32 %indvars55744, 2
  %i.jpl = add i32 %i.jpk, %.0.copyload.i52596
  %i.jpm = zext i32 %i.jpl to i64
  %.val48210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpn = getelementptr inbounds nuw i8, ptr %.val48210, i64 %i.jpm
  %.0.copyload.i52598 = load i32, ptr %i.jpn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52598) #7, !srcloc !19
  %.not46425 = icmp eq i32 %.0.copyload.i52598, 0
  br i1 %.not46425, label %bb.ani, label %bb.anj

bb.anj:                                           ; preds = %.lr.ph57436
  %i.jpo = icmp ugt i32 %i.jph, %indvars55744
  br i1 %i.jpo, label %bb.aoc, label %.loopexit54295

.loopexit54295:                                   ; preds = %bb.ani, %bb.anh, %bb.anj, %bb.anf
  %i.jpp = add i32 %.0.copyload.i52595, 1         ; 5 uses
  %.val48209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpq = getelementptr inbounds nuw i8, ptr %.val48209, i64 %i.hfa
  %.0.copyload.i52599 = load i32, ptr %i.jpq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52599) #7, !srcloc !19
  %i.jpr = shl i32 %.0.copyload.i52599, 5
  %.not46429 = icmp ugt i32 %i.jpp, %i.jpr
  br i1 %.not46429, label %bb.ank, label %bb.ans

bb.ank:                                           ; preds = %.loopexit54295
  %.val48208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jps = getelementptr inbounds nuw i8, ptr %.val48208, i64 %i.hey
  %.0.copyload.i52600 = load i32, ptr %i.jps, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52600) #7, !srcloc !19
  %i.jpt = add i32 %.0.copyload.i52595, 32
  %i.jpu = lshr i32 %i.jpt, 5
  %i.jpv = shl i32 %.0.copyload.i52599, 1
  %i.jpw = tail call i32 @llvm.umax.i32(i32 %i.jpv, i32 %i.jpu) ; 6 uses
  %i.jpx = shl i32 %i.jpw, 2
  %i.jpy = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52600, i32 noundef %i.jpx) #7 ; 5 uses
  %.not46430 = icmp eq i32 %i.jpy, 0
  br i1 %.not46430, label %bb.anl, label %bb.anm

bb.anl:                                           ; preds = %bb.ank
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.anm

bb.anm:                                           ; preds = %bb.anl, %bb.ank
  %.val49875 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpz = getelementptr inbounds nuw i8, ptr %.val49875, i64 %i.hfa
  store i32 %i.jpw, ptr %i.jpz, align 1
  %.val49874 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqa = getelementptr inbounds nuw i8, ptr %.val49874, i64 %i.heh
  %i.jqb = getelementptr inbounds nuw i8, ptr %i.jqa, i64 1100
  store i32 %i.jpy, ptr %i.jqb, align 1
  %.val48207 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqc = getelementptr inbounds nuw i8, ptr %.val48207, i64 %i.hez
  %.0.copyload.i52601 = load i32, ptr %i.jqc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52601) #7, !srcloc !19
  %i.jqd = add i32 %.0.copyload.i52601, 31
  %i.jqe = lshr i32 %i.jqd, 5                     ; 4 uses
  %i.jqf = icmp ult i32 %i.jqe, %i.jpw
  br i1 %i.jqf, label %bb.ann, label %bb.ano

bb.ann:                                           ; preds = %bb.anm
  %i.jqg = shl nuw nsw i32 %i.jqe, 2
  %i.jqh = add i32 %i.jqg, %i.jpy
  %i.jqi = sub nuw i32 %i.jpw, %i.jqe
  %i.jqj = shl i32 %i.jqi, 2
  %i.jqk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jqh, i32 noundef 0, i32 noundef %i.jqj) #7 ; 0 uses
  br label %bb.ano

bb.ano:                                           ; preds = %bb.ann, %bb.anm
  %i.jql = and i32 %.0.copyload.i52601, 31        ; 2 uses
  %.not46431 = icmp eq i32 %i.jql, 0
  br i1 %.not46431, label %bb.anq, label %bb.anp

bb.anp:                                           ; preds = %bb.ano
  %i.jqm = shl nuw nsw i32 %i.jqe, 2
  %i.jqn = add i32 %i.jpy, -4
  %i.jqo = add i32 %i.jqn, %i.jqm
  %i.jqp = zext i32 %i.jqo to i64                 ; 2 uses
  %.val48206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqq = getelementptr inbounds nuw i8, ptr %.val48206, i64 %i.jqp
  %.0.copyload.i52602 = load i32, ptr %i.jqq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52602) #7, !srcloc !19
  %i.jqr = shl nsw i32 -1, %i.jql
  %i.jqs = xor i32 %i.jqr, -1
  %i.jqt = and i32 %.0.copyload.i52602, %i.jqs
  %.val49873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqu = getelementptr inbounds nuw i8, ptr %.val49873, i64 %i.jqp
  store i32 %i.jqt, ptr %i.jqu, align 1
  br label %bb.anq

bb.anq:                                           ; preds = %bb.anp, %bb.ano
  %i.jqv = icmp eq i32 %.0.copyload.i52599, %i.jpw
  br i1 %i.jqv, label %bb.ans, label %bb.anr

bb.anr:                                           ; preds = %bb.anq
  %i.jqw = shl i32 %.0.copyload.i52599, 2
  %i.jqx = add i32 %i.jpy, %i.jqw
  %i.jqy = sub i32 %i.jpw, %.0.copyload.i52599
  %i.jqz = shl i32 %i.jqy, 2
  %i.jra = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jqx, i32 noundef 0, i32 noundef %i.jqz) #7 ; 0 uses
  br label %bb.ans

bb.ans:                                           ; preds = %bb.anq, %.loopexit54295, %bb.anr
  %.8044331 = phi i32 [ %.0.copyload.i52595, %.loopexit54295 ], [ %.0.copyload.i52601, %bb.anq ], [ %.0.copyload.i52601, %bb.anr ] ; 4 uses
  %.not46432 = icmp ult i32 %.8044331, %i.jpp
  br i1 %.not46432, label %bb.ant, label %bb.anx

bb.ant:                                           ; preds = %bb.ans
  %.val48205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrb = getelementptr inbounds nuw i8, ptr %.val48205, i64 %i.hfa
  %.0.copyload.i52603 = load i32, ptr %i.jrb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52603) #7, !srcloc !19
  %i.jrc = add i32 %.8044331, 31
  %i.jrd = lshr i32 %i.jrc, 5                     ; 4 uses
  %i.jre = icmp ugt i32 %.0.copyload.i52603, %i.jrd
  br i1 %i.jre, label %bb.anu, label %bb.anv

bb.anu:                                           ; preds = %bb.ant
  %.val48204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrf = getelementptr inbounds nuw i8, ptr %.val48204, i64 %i.heh
  %i.jrg = getelementptr inbounds nuw i8, ptr %i.jrf, i64 1100
  %.0.copyload.i52604 = load i32, ptr %i.jrg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52604) #7, !srcloc !19
  %i.jrh = shl nuw nsw i32 %i.jrd, 2
  %i.jri = add i32 %.0.copyload.i52604, %i.jrh
  %i.jrj = sub nuw i32 %.0.copyload.i52603, %i.jrd
  %i.jrk = shl i32 %i.jrj, 2
  %i.jrl = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jri, i32 noundef 0, i32 noundef %i.jrk) #7 ; 0 uses
  %.val48203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrm = getelementptr inbounds nuw i8, ptr %.val48203, i64 %i.hez
  %.0.copyload.i52605 = load i32, ptr %i.jrm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52605) #7, !srcloc !19
  br label %bb.anv

bb.anv:                                           ; preds = %bb.anu, %bb.ant
  %.8144332 = phi i32 [ %.0.copyload.i52605, %bb.anu ], [ %.8044331, %bb.ant ] ; 3 uses
  %i.jrn = and i32 %.8144332, 31                  ; 2 uses
  %.not46433 = icmp eq i32 %i.jrn, 0
  br i1 %.not46433, label %bb.anx, label %bb.anw

bb.anw:                                           ; preds = %bb.anv
  %.val48202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jro = getelementptr inbounds nuw i8, ptr %.val48202, i64 %i.hey
  %.0.copyload.i52606 = load i32, ptr %i.jro, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52606) #7, !srcloc !19
  %i.jrp = shl nuw nsw i32 %i.jrd, 2
  %i.jrq = add nsw i32 %i.jrp, -4
  %i.jrr = add i32 %i.jrq, %.0.copyload.i52606
  %i.jrs = zext i32 %i.jrr to i64                 ; 2 uses
  %.val48201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrt = getelementptr inbounds nuw i8, ptr %.val48201, i64 %i.jrs
  %.0.copyload.i52607 = load i32, ptr %i.jrt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52607) #7, !srcloc !19
  %i.jru = shl nsw i32 -1, %i.jrn
  %i.jrv = xor i32 %i.jru, -1
  %i.jrw = and i32 %.0.copyload.i52607, %i.jrv
  %.val49872 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrx = getelementptr inbounds nuw i8, ptr %.val49872, i64 %i.jrs
  store i32 %i.jrw, ptr %i.jrx, align 1
  br label %bb.anx

bb.anx:                                           ; preds = %bb.anv, %bb.ans, %bb.anw
  %.8244333 = phi i32 [ %.8044331, %bb.ans ], [ %.8144332, %bb.anv ], [ %.8144332, %bb.anw ]
  %.val49871 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jry = getelementptr inbounds nuw i8, ptr %.val49871, i64 %i.hez
  store i32 %i.jpp, ptr %i.jry, align 1
  %.not46434 = icmp ugt i32 %.8244333, %i.jpp
  br i1 %.not46434, label %bb.any, label %bb.aoi

bb.any:                                           ; preds = %bb.anx
  %.val48200 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrz = getelementptr inbounds nuw i8, ptr %.val48200, i64 %i.hfa
  %.0.copyload.i52608 = load i32, ptr %i.jrz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52608) #7, !srcloc !19
  %i.jsa = add i32 %.0.copyload.i52595, 32
  %i.jsb = lshr i32 %i.jsa, 5                     ; 4 uses
  %i.jsc = icmp ugt i32 %.0.copyload.i52608, %i.jsb
  br i1 %i.jsc, label %bb.anz, label %bb.aoa

bb.anz:                                           ; preds = %bb.any
  %.val48199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsd = getelementptr inbounds nuw i8, ptr %.val48199, i64 %i.heh
  %i.jse = getelementptr inbounds nuw i8, ptr %i.jsd, i64 1100
  %.0.copyload.i52609 = load i32, ptr %i.jse, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52609) #7, !srcloc !19
  %i.jsf = shl nuw nsw i32 %i.jsb, 2
  %i.jsg = add i32 %.0.copyload.i52609, %i.jsf
  %i.jsh = sub nuw i32 %.0.copyload.i52608, %i.jsb
  %i.jsi = shl i32 %i.jsh, 2
  %i.jsj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jsg, i32 noundef 0, i32 noundef %i.jsi) #7 ; 0 uses
  %.val48198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsk = getelementptr inbounds nuw i8, ptr %.val48198, i64 %i.hez
  %.0.copyload.i52610 = load i32, ptr %i.jsk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52610) #7, !srcloc !19
  br label %bb.aoa

bb.aoa:                                           ; preds = %bb.any, %bb.anz
  %.38 = phi i32 [ %.0.copyload.i52610, %bb.anz ], [ %i.jpp, %bb.any ]
  %i.jsl = and i32 %.38, 31                       ; 2 uses
  %.not46435 = icmp eq i32 %i.jsl, 0
  br i1 %.not46435, label %bb.aoi, label %bb.aob
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.val47431 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppt = getelementptr inbounds nuw i8, ptr %.val47431, i64 %i.pps
  %.0.copyload.i53446 = load i32, ptr %i.ppt, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53446) #7, !srcloc !19
  %i.ppu = add i32 %.0.copyload.i53446, 8
  %.not46320 = icmp eq i32 %.0.copyload.i53446, 0
  %i.ppv = select i1 %.not46320, i32 0, i32 %i.ppu ; 5 uses
  %.val49667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppw = getelementptr inbounds nuw i8, ptr %.val49667, i64 %i.htf
  %i.ppx = getelementptr inbounds nuw i8, ptr %i.ppw, i64 396
  store i32 %i.ppv, ptr %i.ppx, align 1
  %.val47430 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ppy = getelementptr inbounds nuw i8, ptr %.val47430, i64 %i.heh
  %i.ppz = getelementptr inbounds nuw i8, ptr %i.ppy, i64 1096
  %.0.copyload.i53447 = load i32, ptr %i.ppz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53447) #7, !srcloc !19
  %.not46321 = icmp eq i32 %.0.copyload.i53447, 0
  br i1 %.not46321, label %bb.bhr, label %bb.bgu

bb.bgu:                                           ; preds = %bb.bgt
  %.val47429 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqa = getelementptr inbounds nuw i8, ptr %.val47429, i64 %i.heh
  %i.pqb = getelementptr inbounds nuw i8, ptr %i.pqa, i64 1084
  %.0.copyload.i53448 = load i32, ptr %i.pqb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53448) #7, !srcloc !19
  %i.pqc = add i32 %.0.copyload.i53447, -1        ; 2 uses
  %i.pqd = lshr i32 %i.ppv, 4
  %i.pqe = lshr i32 %i.ppv, 9
  %i.pqf = xor i32 %i.pqd, %i.pqe
  %i.pqg = and i32 %i.pqc, %i.pqf                 ; 2 uses
  %i.pqh = shl nuw nsw i32 %i.pqg, 3
  %i.pqi = add i32 %.0.copyload.i53448, %i.pqh    ; 2 uses
  %i.pqj = zext i32 %i.pqi to i64                 ; 2 uses
  %.val47428 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqk = getelementptr inbounds nuw i8, ptr %.val47428, i64 %i.pqj
  %.0.copyload.i53449 = load i32, ptr %i.pqk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53449) #7, !srcloc !19
  %i.pql = icmp eq i32 %.0.copyload.i53449, %i.ppv
  br i1 %i.pql, label %.loopexit54427, label %.preheader54426

.preheader54426:                                  ; preds = %bb.bgu, %bb.bgw
  %.143 = phi i32 [ %i.pqv, %bb.bgw ], [ %i.pqi, %bb.bgu ] ; 2 uses
  %.3943830 = phi i32 [ %i.pqq, %bb.bgw ], [ 0, %bb.bgu ] ; 3 uses
  %.88 = phi i32 [ %i.pqs, %bb.bgw ], [ 1, %bb.bgu ] ; 2 uses
  %.4543719 = phi i32 [ %.0.copyload.i53450, %bb.bgw ], [ %.0.copyload.i53449, %bb.bgu ] ; 2 uses
  %.2343265 = phi i32 [ %i.pqt, %bb.bgw ], [ %i.pqg, %bb.bgu ]
  %i.pqm = icmp eq i32 %.4543719, -4
  %.not46324 = icmp eq i32 %.3943830, 0           ; 2 uses
  br i1 %i.pqm, label %bb.bgv, label %bb.bgw

bb.bgv:                                           ; preds = %.preheader54426
  %i.pqn = select i1 %.not46324, i32 %.143, i32 %.3943830
  br label %bb.bhr

bb.bgw:                                           ; preds = %.preheader54426
  %i.pqo = icmp eq i32 %.4543719, -8
  %i.pqp = select i1 %i.pqo, i1 %.not46324, i1 false
  %i.pqq = select i1 %i.pqp, i32 %.143, i32 %.3943830
  %i.pqr = add i32 %.2343265, %.88
  %i.pqs = add i32 %.88, 1
  %i.pqt = and i32 %i.pqr, %i.pqc                 ; 2 uses
  %i.pqu = shl i32 %i.pqt, 3
  %i.pqv = add i32 %i.pqu, %.0.copyload.i53448    ; 2 uses
  %i.pqw = zext i32 %i.pqv to i64                 ; 2 uses
  %.val47427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqx = getelementptr inbounds nuw i8, ptr %.val47427, i64 %i.pqw
  %.0.copyload.i53450 = load i32, ptr %i.pqx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53450) #7, !srcloc !19
  %.not46323 = icmp eq i32 %.0.copyload.i53450, %i.ppv
  br i1 %.not46323, label %.loopexit54427, label %.preheader54426

._crit_edge:                                      ; preds = %.loopexit54429, %func_types_eq.exit53485.thread, %.loopexit54572
  %.0.copyload.i53361.lcssa = phi i32 [ 0, %.loopexit54572 ], [ 0, %func_types_eq.exit53485.thread ], [ %.0.copyload.i5336155203, %.loopexit54429 ] ; 2 uses
  %.val47426 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pqy = getelementptr inbounds nuw i8, ptr %.val47426, i64 %i.htf
  %i.pqz = getelementptr inbounds nuw i8, ptr %i.pqy, i64 356
  %.0.copyload.i53451 = load i32, ptr %i.pqz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53451) #7, !srcloc !19
  %.not46261 = icmp eq i32 %.0.copyload.i53451, 0
  br i1 %.not46261, label %.loopexit54570, label %bb.bgx

bb.bgx:                                           ; preds = %._crit_edge
  %.val47425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pra = getelementptr inbounds nuw i8, ptr %.val47425, i64 %i.nhg
  %.0.copyload.i53452 = load i32, ptr %i.pra, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53452) #7, !srcloc !19
  %i.prb = add i32 %.0.copyload.i53451, -1        ; 2 uses
  %i.prc = lshr i32 %.0.copyload.i53347, 4
  %i.prd = lshr i32 %.0.copyload.i53347, 9
  %i.pre = xor i32 %i.prc, %i.prd
  %i.prf = and i32 %i.prb, %i.pre                 ; 2 uses
  %i.prg = shl nuw nsw i32 %i.prf, 3
  %i.prh = add i32 %.0.copyload.i53452, %i.prg
  %i.pri = zext i32 %i.prh to i64
  %.val47424 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prj = getelementptr inbounds nuw i8, ptr %.val47424, i64 %i.pri
  %.0.copyload.i53453 = load i32, ptr %i.prj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53453) #7, !srcloc !19
  %i.prk = icmp eq i32 %.0.copyload.i53453, %.0.copyload.i53347
  br i1 %i.prk, label %.loopexit54571, label %.preheader54569

.preheader54569:                                  ; preds = %bb.bgx, %bb.bgy
  %.11344209 = phi i32 [ %.0.copyload.i53454, %bb.bgy ], [ %.0.copyload.i53453, %bb.bgx ]
  %.8844085 = phi i32 [ %i.pro, %bb.bgy ], [ %i.prf, %bb.bgx ]
  %.2443266 = phi i32 [ %i.prn, %bb.bgy ], [ 1, %bb.bgx ] ; 2 uses
  %i.prl = icmp eq i32 %.11344209, -4
  br i1 %i.prl, label %.loopexit54570, label %bb.bgy

bb.bgy:                                           ; preds = %.preheader54569
  %i.prm = add i32 %.2443266, %.8844085
  %i.prn = add i32 %.2443266, 1
  %i.pro = and i32 %i.prm, %i.prb                 ; 2 uses
  %i.prp = shl i32 %i.pro, 3
  %i.prq = add i32 %i.prp, %.0.copyload.i53452
  %i.prr = zext i32 %i.prq to i64
  %.val47423 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prs = getelementptr inbounds nuw i8, ptr %.val47423, i64 %i.prr
  %.0.copyload.i53454 = load i32, ptr %i.prs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53454) #7, !srcloc !19
  %.not46262 = icmp eq i32 %.0.copyload.i53454, %.0.copyload.i53347
  br i1 %.not46262, label %.loopexit54571, label %.preheader54569

.loopexit54570:                                   ; preds = %.preheader54569, %._crit_edge
  %i.prt = add i32 %.0.copyload.i53347, 8
  %.not46263 = icmp eq i32 %.0.copyload.i53347, 0
  %i.pru = select i1 %.not46263, i32 0, i32 %i.prt ; 9 uses
  %.val47422 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prv = getelementptr inbounds nuw i8, ptr %.val47422, i64 %i.hew
  %.0.copyload.i53455 = load i32, ptr %i.prv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53455) #7, !srcloc !19
  %.val47421 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prw = getelementptr inbounds nuw i8, ptr %.val47421, i64 %i.hex
  %.0.copyload.i53456 = load i32, ptr %i.prw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53456) #7, !srcloc !19
  %.not46264 = icmp eq i32 %.0.copyload.i53456, 0
  br i1 %.not46264, label %.loopexit54567, label %bb.bgz

bb.bgz:                                           ; preds = %.loopexit54570
  %i.prx = add i32 %.0.copyload.i53456, -1        ; 2 uses
  %i.pry = lshr i32 %i.pru, 4
  %i.prz = lshr i32 %i.pru, 9
  %i.psa = xor i32 %i.pry, %i.prz
  %i.psb = and i32 %i.prx, %i.psa                 ; 2 uses
  %i.psc = shl nuw nsw i32 %i.psb, 3
  %i.psd = add i32 %i.psc, %.0.copyload.i53455
  %i.pse = zext i32 %i.psd to i64
  %.val47420 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psf = getelementptr inbounds nuw i8, ptr %.val47420, i64 %i.pse
  %.0.copyload.i53457 = load i32, ptr %i.psf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53457) #7, !srcloc !19
  %i.psg = icmp eq i32 %.0.copyload.i53457, %i.pru
  br i1 %i.psg, label %.loopexit54568, label %.preheader54566

.preheader54566:                                  ; preds = %bb.bgz, %bb.bha
  %.11444210 = phi i32 [ %.0.copyload.i53458, %bb.bha ], [ %.0.copyload.i53457, %bb.bgz ]
  %.8944086 = phi i32 [ %i.psk, %bb.bha ], [ %i.psb, %bb.bgz ]
  %.2543267 = phi i32 [ %i.psj, %bb.bha ], [ 1, %bb.bgz ] ; 2 uses
  %i.psh = icmp eq i32 %.11444210, -4
  br i1 %i.psh, label %.loopexit54567, label %bb.bha

bb.bha:                                           ; preds = %.preheader54566
  %i.psi = add i32 %.2543267, %.8944086
  %i.psj = add i32 %.2543267, 1
  %i.psk = and i32 %i.psi, %i.prx                 ; 2 uses
  %i.psl = shl i32 %i.psk, 3
  %i.psm = add i32 %i.psl, %.0.copyload.i53455
  %i.psn = zext i32 %i.psm to i64
  %.val47419 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pso = getelementptr inbounds nuw i8, ptr %.val47419, i64 %i.psn
  %.0.copyload.i53458 = load i32, ptr %i.pso, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53458) #7, !srcloc !19
  %.not46265 = icmp eq i32 %.0.copyload.i53458, %i.pru
  br i1 %.not46265, label %.loopexit54568, label %.preheader54566

.loopexit54567:                                   ; preds = %.preheader54566, %.loopexit54570
  %.val47418 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psp = getelementptr inbounds nuw i8, ptr %.val47418, i64 %i.heh
  %i.psq = getelementptr inbounds nuw i8, ptr %i.psp, i64 1108
  %.0.copyload.i53459 = load i32, ptr %i.psq, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53459) #7, !srcloc !19
  %i.psr = add i32 %.0.copyload.i53459, 31        ; 3 uses
  %i.pss = icmp ult i32 %i.psr, 32
  br i1 %i.pss, label %.loopexit54565, label %bb.bhb

bb.bhb:                                           ; preds = %.loopexit54567
  %.val47417 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pst = getelementptr inbounds nuw i8, ptr %.val47417, i64 %i.hey
  %.0.copyload.i53460 = load i32, ptr %i.pst, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53460) #7, !srcloc !19
  %i.psu = zext i32 %.0.copyload.i53460 to i64
  %.val47416 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psv = getelementptr inbounds nuw i8, ptr %.val47416, i64 %i.psu
  %.0.copyload.i53461 = load i32, ptr %i.psv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53461) #7, !srcloc !19
  %.not46266 = icmp eq i32 %.0.copyload.i53461, 0
  br i1 %.not46266, label %bb.bhc, label %bb.bhg

bb.bhc:                                           ; preds = %bb.bhb
  %i.psw = lshr i32 %i.psr, 5                     ; 2 uses
  %i.psx = icmp ult i32 %i.psr, 64
  %i.psy = select i1 %i.psx, i32 1, i32 %i.psw    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.psy to i64
  %exitcond57417 = icmp eq i32 %i.psy, 1
  br i1 %exitcond57417, label %.loopexit54565, label %.lr.ph57420

bb.bhd:                                           ; preds = %.lr.ph57420
  %indvars.iv.next55705 = add nuw nsw i64 %indvars.iv5570457418, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next55705, %wide.trip.count
  br i1 %exitcond, label %.loopexit54565, label %.lr.ph57420

.lr.ph57420:                                      ; preds = %bb.bhc, %bb.bhd
  %indvars.iv5570457418 = phi i64 [ %indvars.iv.next55705, %bb.bhd ], [ 1, %bb.bhc ] ; 2 uses
  %indvars55706 = trunc nuw i64 %indvars.iv5570457418 to i32 ; 2 uses
  %i.psz = shl i32 %indvars55706, 2
  %i.pta = add i32 %i.psz, %.0.copyload.i53460
  %i.ptb = zext i32 %i.pta to i64
  %.val47415 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptc = getelementptr inbounds nuw i8, ptr %.val47415, i64 %i.ptb
  %.0.copyload.i53462 = load i32, ptr %i.ptc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53462) #7, !srcloc !19
  %.not46267 = icmp eq i32 %.0.copyload.i53462, 0
  br i1 %.not46267, label %bb.bhd, label %bb.bhe

bb.bhe:                                           ; preds = %.lr.ph57420
  %i.ptd = icmp ugt i32 %i.psw, %indvars55706
  br i1 %i.ptd, label %bb.bhf, label %.loopexit54565

.loopexit54565:                                   ; preds = %bb.bhd, %bb.bhc, %bb.bhe, %.loopexit54567
  %i.pte = add i32 %.0.copyload.i53459, 1
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.hes, i32 noundef %i.pte, i32 noundef 0) #7
  %.val47414 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptf = getelementptr inbounds nuw i8, ptr %.val47414, i64 %i.hex
  %.0.copyload.i53463 = load i32, ptr %i.ptf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53463) #7, !srcloc !19
  %.val47413 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptg = getelementptr inbounds nuw i8, ptr %.val47413, i64 %i.hew
  %.0.copyload.i53464 = load i32, ptr %i.ptg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53464) #7, !srcloc !19
  br label %bb.bhk

bb.bhf:                                           ; preds = %bb.bhe
  %.not46268 = icmp eq i32 %.0.copyload.i53459, 0
  br i1 %.not46268, label %.loopexit54564, label %bb.bhg

bb.bhg:                                           ; preds = %bb.bhf, %bb.bhb
  %i.pth = sub i32 0, %.0.copyload.i53459
  %i.pti = and i32 %i.pth, 31
  %i.ptj = lshr i32 -1, %i.pti
  %i.ptk = add i32 %.0.copyload.i53459, -1
  %i.ptl = lshr i32 %i.ptk, 5
  %i.ptm = zext nneg i32 %i.ptl to i64
  br label %bb.bhh

bb.bhh:                                           ; preds = %bb.bhj, %bb.bhg
  %indvars.iv55708 = phi i64 [ %indvars.iv.next55709, %bb.bhj ], [ 0, %bb.bhg ] ; 4 uses
  %indvars.iv55708.tr = trunc i64 %indvars.iv55708 to i32
  %i.ptn = shl i32 %indvars.iv55708.tr, 2
  %i.pto = add i32 %i.ptn, %.0.copyload.i53460
  %i.ptp = zext i32 %i.pto to i64
  %.val47412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptq = getelementptr inbounds nuw i8, ptr %.val47412, i64 %i.ptp
  %.0.copyload.i53465 = load i32, ptr %i.ptq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53465) #7, !srcloc !19
  %.not46269 = icmp eq i64 %indvars.iv55708, %i.ptm ; 2 uses
  %i.ptr = select i1 %.not46269, i32 %i.ptj, i32 -1
  %i.pts = and i32 %.0.copyload.i53465, %i.ptr    ; 2 uses
  %.not46270 = icmp eq i32 %i.pts, 0
  br i1 %.not46270, label %bb.bhj, label %bb.bhi

bb.bhi:                                           ; preds = %bb.bhh
  %i.ptt = trunc nuw nsw i64 %indvars.iv55708 to i32
  %i.ptu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.pts, i1 true)
  %i.ptv = shl i32 %i.ptt, 5
  %i.ptw = or disjoint i32 %i.ptu, %i.ptv
  br label %.loopexit54564

bb.bhj:                                           ; preds = %bb.bhh
  %indvars.iv.next55709 = add nuw nsw i64 %indvars.iv55708, 1
  br i1 %.not46269, label %.loopexit54564, label %bb.bhh

.loopexit54564:                                   ; preds = %bb.bhj, %bb.bhf, %bb.bhi
  %.3043159 = phi i32 [ %i.ptw, %bb.bhi ], [ -1, %bb.bhf ], [ -1, %bb.bhj ] ; 3 uses
  %i.ptx = lshr i32 %.3043159, 3
  %i.pty = and i32 %i.ptx, 536870908
  %i.ptz = add i32 %i.pty, %.0.copyload.i53460
  %i.pua = zext i32 %i.ptz to i64                 ; 2 uses
  %.val47411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pub = getelementptr inbounds nuw i8, ptr %.val47411, i64 %i.pua
  %.0.copyload.i53466 = load i32, ptr %i.pub, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53466) #7, !srcloc !19
  %i.puc = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %.3043159)
  %i.pud = and i32 %.0.copyload.i53466, %i.puc
  %.val49666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pue = getelementptr inbounds nuw i8, ptr %.val49666, i64 %i.pua
  store i32 %i.pud, ptr %i.pue, align 1
  br label %bb.bhk

bb.bhk:                                           ; preds = %.loopexit54564, %.loopexit54565
  %.9044087 = phi i32 [ %.0.copyload.i53459, %.loopexit54565 ], [ %.3043159, %.loopexit54564 ]
  %.4043831 = phi i32 [ %.0.copyload.i53464, %.loopexit54565 ], [ %.0.copyload.i53455, %.loopexit54564 ] ; 2 uses
  %.1543233 = phi i32 [ %.0.copyload.i53463, %.loopexit54565 ], [ %.0.copyload.i53456, %.loopexit54564 ] ; 2 uses
  %.val49665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puf = getelementptr inbounds nuw i8, ptr %.val49665, i64 %i.htf
  %i.pug = getelementptr inbounds nuw i8, ptr %i.puf, i64 396
  store i32 %i.pru, ptr %i.pug, align 1
  %.not46271 = icmp eq i32 %.1543233, 0
  br i1 %.not46271, label %bb.bho, label %bb.bhl

bb.bhl:                                           ; preds = %bb.bhk
  %i.puh = add i32 %.1543233, -1                  ; 2 uses
  %i.pui = lshr i32 %i.pru, 4
  %i.puj = lshr i32 %i.pru, 9
  %i.puk = xor i32 %i.pui, %i.puj
  %i.pul = and i32 %i.puh, %i.puk                 ; 2 uses
  %i.pum = shl nuw nsw i32 %i.pul, 3
  %i.pun = add i32 %i.pum, %.4043831              ; 2 uses
  %i.puo = zext i32 %i.pun to i64                 ; 2 uses
  %.val47410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pup = getelementptr inbounds nuw i8, ptr %.val47410, i64 %i.puo
  %.0.copyload.i53467 = load i32, ptr %i.pup, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53467) #7, !srcloc !19
  %i.puq = icmp eq i32 %.0.copyload.i53467, %i.pru
  br i1 %i.puq, label %.loopexit54563, label %.preheader54562

.preheader54562:                                  ; preds = %bb.bhl, %bb.bhn
  %.11744213 = phi i32 [ %i.pva, %bb.bhn ], [ %i.pun, %bb.bhl ] ; 2 uses
  %.144 = phi i32 [ %.0.copyload.i53468, %bb.bhn ], [ %.0.copyload.i53467, %bb.bhl ] ; 2 uses
  %.90 = phi i32 [ %i.pux, %bb.bhn ], [ 1, %bb.bhl ] ; 2 uses
  %.2643268 = phi i32 [ %i.puy, %bb.bhn ], [ %i.pul, %bb.bhl ]
  %.1743210 = phi i32 [ %i.puv, %bb.bhn ], [ 0, %bb.bhl ] ; 3 uses
  %i.pur = icmp eq i32 %.144, -4
  %.not46274 = icmp eq i32 %.1743210, 0           ; 2 uses
  br i1 %i.pur, label %bb.bhm, label %bb.bhn

bb.bhm:                                           ; preds = %.preheader54562
  %i.pus = select i1 %.not46274, i32 %.11744213, i32 %.1743210
  br label %bb.bho

bb.bhn:                                           ; preds = %.preheader54562
  %i.put = icmp eq i32 %.144, -8
  %i.puu = select i1 %i.put, i1 %.not46274, i1 false
  %i.puv = select i1 %i.puu, i32 %.11744213, i32 %.1743210
  %i.puw = add i32 %.2643268, %.90
  %i.pux = add i32 %.90, 1
  %i.puy = and i32 %i.puw, %i.puh                 ; 2 uses
  %i.puz = shl i32 %i.puy, 3
  %i.pva = add i32 %i.puz, %.4043831              ; 2 uses
  %i.pvb = zext i32 %i.pva to i64                 ; 2 uses
  %.val47409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvc = getelementptr inbounds nuw i8, ptr %.val47409, i64 %i.pvb
  %.0.copyload.i53468 = load i32, ptr %i.pvc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53468) #7, !srcloc !19
  %.not46273 = icmp eq i32 %.0.copyload.i53468, %i.pru
  br i1 %.not46273, label %.loopexit54563, label %.preheader54562

bb.bho:                                           ; preds = %bb.bhk, %bb.bhm
  %.11844214 = phi i32 [ %i.pus, %bb.bhm ], [ 0, %bb.bhk ]
  %i.pvd = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.hdj, i32 noundef %.11844214, i32 noundef %i.oob) #7
  %.pre55788 = zext i32 %i.pvd to i64
  br label %.loopexit54563

.loopexit54563:                                   ; preds = %bb.bhn, %bb.bhl, %bb.bho
  %.pre-phi55789 = phi i64 [ %.pre55788, %bb.bho ], [ %i.puo, %bb.bhl ], [ %i.pvb, %bb.bhn ]
  %.val49664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pve = getelementptr inbounds nuw i8, ptr %.val49664, i64 %.pre-phi55789
  %i.pvf = getelementptr inbounds nuw i8, ptr %i.pve, i64 4
  store i32 %.9044087, ptr %i.pvf, align 1
  %.val47408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvg = getelementptr inbounds nuw i8, ptr %.val47408, i64 %i.onw
  %.0.copyload.i53469 = load i32, ptr %i.pvg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53469) #7, !srcloc !19
  br label %.loopexit54568

.loopexit54568:                                   ; preds = %bb.bha, %bb.bgz, %.loopexit54563
  %.91 = phi i32 [ %.0.copyload.i53469, %.loopexit54563 ], [ %.0.copyload.i53361.lcssa, %bb.bgz ], [ %.0.copyload.i53361.lcssa, %bb.bha ] ; 2 uses
  %.val47407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvh = getelementptr inbounds nuw i8, ptr %.val47407, i64 %i.htf
  %i.pvi = getelementptr inbounds nuw i8, ptr %i.pvh, i64 56
  %.0.copyload.i53470 = load i32, ptr %i.pvi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53470) #7, !srcloc !19
  %.not46275 = icmp ugt i32 %.0.copyload.i53470, %.91
  br i1 %.not46275, label %bb.bhq, label %bb.bhp

bb.bhp:                                           ; preds = %.loopexit54568
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ooc, i32 noundef %i.ony, i32 noundef 0, i32 noundef 4) #7
  %.val47406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvj = getelementptr inbounds nuw i8, ptr %.val47406, i64 %i.onw
  %.0.copyload.i53471 = load i32, ptr %i.pvj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53471) #7, !srcloc !19
  br label %bb.bhq

bb.bhq:                                           ; preds = %bb.bhp, %.loopexit54568
  %.92 = phi i32 [ %.0.copyload.i53471, %bb.bhp ], [ %.91, %.loopexit54568 ]
  %.val47405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvk = getelementptr inbounds nuw i8, ptr %.val47405, i64 %i.onz
  %.0.copyload.i53472 = load i32, ptr %i.pvk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53472) #7, !srcloc !19
  %i.pvl = shl i32 %.92, 2
  %i.pvm = add i32 %.0.copyload.i53472, %i.pvl
  %i.pvn = zext i32 %i.pvm to i64
  %.val49663 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvo = getelementptr inbounds nuw i8, ptr %.val49663, i64 %i.pvn
  store i32 %.0.copyload.i53258, ptr %i.pvo, align 1
  %.val47404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvp = getelementptr inbounds nuw i8, ptr %.val47404, i64 %i.onw
  %.0.copyload.i53473 = load i32, ptr %i.pvp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53473) #7, !srcloc !19
  %i.pvq = add i32 %.0.copyload.i53473, 1         ; 3 uses
  %.val49662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvr = getelementptr inbounds nuw i8, ptr %.val49662, i64 %i.onw
  store i32 %i.pvq, ptr %i.pvr, align 1
  %.val47403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvs = getelementptr inbounds nuw i8, ptr %.val47403, i64 %i.onz
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3AconstructCatchMap0x28hermes0x3A0x3AFunction0x2A0x2C0x20llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x260x2C0x20llvh0x3A0x3ASmallVectorImpl0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x260x2C0x20llvh0x3A0x3ASmallPtrSetImpl0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x260x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20unsigned0x20int0x29:bb.a
  %i.ry = icmp ugt i32 %.0.copyload.i2000, -3
  br i1 %i.ry, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.preheader2018
  %i.rz = add i32 %.17, 4                         ; 2 uses
  %.not1726 = icmp eq i32 %i.qe, %i.rz
  br i1 %.not1726, label %.loopexit2019, label %.preheader2018

bb.bw:                                            ; preds = %.preheader2018
  %.not1725 = icmp eq i32 %.17, %i.qe
  br i1 %.not1725, label %.loopexit2019, label %.preheader2029

bb.bx:                                            ; preds = %bb.bj
  %i.sa = zext i32 %1 to i64
  %.val1886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sb = getelementptr inbounds nuw i8, ptr %.val1886, i64 %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 36
  store i8 0, ptr %i.sc, align 1
  br label %bb.cc

.loopexit2019:                                    ; preds = %bb.bl, %bb.bw, %bb.bu, %bb.bv, %.loopexit2032
  %.val1743 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sd = getelementptr inbounds nuw i8, ptr %.val1743, i64 %i.nn
  %.0.copyload.i2001 = load i32, ptr %i.sd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2001) #7, !srcloc !19
  %i.se = zext i32 %.0.copyload.i2001 to i64
  %.val1742 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sf = getelementptr inbounds nuw i8, ptr %.val1742, i64 %i.se
  %.0.copyload.i2002 = load i32, ptr %i.sf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2002) #7, !srcloc !19
  %i.sg = add i32 %.0.copyload.i2002, -8
  %.not1727 = icmp eq i32 %.0.copyload.i2002, 0
  %i.sh = select i1 %.not1727, i32 0, i32 %i.sg   ; 2 uses
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImpl0x3Chermes0x3A0x3ALiteral0x2A0x3E0x3A0x3Ainsert0x28hermes0x3A0x3ALiteral0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef %5, i32 noundef %i.sh) #7
  %.val1741 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.si = getelementptr inbounds nuw i8, ptr %.val1741, i64 %i.ak
  %.0.copyload.i2003 = load i32, ptr %i.si, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2003) #7, !srcloc !19
  %.val1740 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %.val1740, i64 %i.ba
  %.0.copyload.i2004 = load i32, ptr %i.sj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2004) #7, !srcloc !19
  %.not1728 = icmp ult i32 %.0.copyload.i2003, %.0.copyload.i2004
  br i1 %.not1728, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.loopexit2019
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cd, i32 noundef %i.am, i32 noundef 0, i32 noundef 4) #7
  %.val1739 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sk = getelementptr inbounds nuw i8, ptr %.val1739, i64 %i.ak
  %.0.copyload.i2005 = load i32, ptr %i.sk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2005) #7, !srcloc !19
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.loopexit2019
  %.18 = phi i32 [ %.0.copyload.i2005, %bb.by ], [ %.0.copyload.i2003, %.loopexit2019 ]
  %.val1738 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.val1738, i64 %i.an
  %.0.copyload.i2006 = load i32, ptr %i.sl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2006) #7, !srcloc !19
  %i.sm = shl i32 %.18, 2
  %i.sn = add i32 %.0.copyload.i2006, %i.sm
  %i.so = zext i32 %i.sn to i64
  %.val1832 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val1832, i64 %i.so
  store i32 %i.sh, ptr %i.sp, align 1
  %.val1737 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sq = getelementptr inbounds nuw i8, ptr %.val1737, i64 %i.ak
  %.0.copyload.i2007 = load i32, ptr %i.sq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2007) #7, !srcloc !19
  %i.sr = add i32 %.0.copyload.i2007, 1
  %.val1831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val1831, i64 %i.ak
  store i32 %i.sr, ptr %i.ss, align 1
  %.val1902 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.st = getelementptr inbounds nuw i8, ptr %.val1902, i64 %i.bw
  %.0.copyload.i2008 = load i8, ptr %i.st, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2008) #7, !srcloc !21
  %.not1729 = icmp eq i8 %.0.copyload.i2008, 0
  br i1 %.not1729, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.val1736 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %.val1736, i64 %i.bx
  %.0.copyload.i2009 = load i32, ptr %i.su, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2009) #7, !srcloc !19
  %.val1735 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.val1735, i64 %i.by
  %.0.copyload.i2010 = load i32, ptr %i.sv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2010) #7, !srcloc !19
  %i.sw = icmp eq i32 %.0.copyload.i2009, %.0.copyload.i2010
  br i1 %i.sw, label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2009) #7
  br label %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread

w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread: ; preds = %.loopexit, %bb.ad, %bb.ad, %bb.ca, %bb.bz, %bb.ac, %bb.cb
  %.val1734 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val1734, i64 %i.ak
  %.0.copyload.i2011 = load i32, ptr %i.sx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2011) #7, !srcloc !19
  %.not1730 = icmp eq i32 %.0.copyload.i2011, 0
  br i1 %.not1730, label %.loopexit2037, label %bb.g

.loopexit2037:                                    ; preds = %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread, %..loopexit2037_crit_edge
  %.pre-phi2072 = phi i32 [ %.pre2071, %..loopexit2037_crit_edge ], [ %i.cf, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread ]
  %i.sy = zext i32 %1 to i64
  %.val1885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %.val1885, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 36
  store i8 1, ptr %i.ta, align 1
  %i.tb = add i32 %1, 20
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.tb, i32 noundef 4, i32 noundef %.pre-phi2072) #7
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit2037, %bb.bx
  %.val1733 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tc = getelementptr inbounds nuw i8, ptr %.val1733, i64 %i.au
  %.0.copyload.i2012 = load i32, ptr %i.tc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2012) #7, !srcloc !19
  %.val1732 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.td = getelementptr inbounds nuw i8, ptr %.val1732, i64 %i.aw
  %.0.copyload.i2013 = load i32, ptr %i.td, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2013) #7, !srcloc !19
  %.not1731 = icmp eq i32 %.0.copyload.i2012, %.0.copyload.i2013
  br i1 %.not1731, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2012) #7
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %.val, i64 %i.an
  %.0.copyload.i2014 = load i32, ptr %i.te, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2014) #7, !srcloc !19
  %i.tf = icmp eq i32 %.0.copyload.i2014, %i.am
  br i1 %i.tf, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2014) #7
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x2C0x20hermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x2C0x20hermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ACatchInst0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x2C0x20hermes0x3A0x3ACatchInst0x2A0x20const0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Asubtract0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.g = zext i32 %2 to i64                       ; 2 uses
  %.val458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.g
  %.0.copyload.i467 = load i64, ptr %i.h, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i467) #7, !srcloc !20
  %.val447 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val447, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i468 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i468) #7, !srcloc !19
  %.val446 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val446, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.0.copyload.i469 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i469) #7, !srcloc !19
  %i.m = zext i32 %1 to i64
  %.val457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.m
  %.0.copyload.i470 = load i64, ptr %i.n, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i470) #7, !srcloc !20
  %i.o = zext i32 %i.c to i64                     ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 8                  ; 2 uses
  %.val464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.p
  store i64 %.0.copyload.i470, ptr %i.q, align 1
  %i.r = lshr i64 %.0.copyload.i470, 32           ; 4 uses
  %.val445 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val445, i64 %i.r
  %.0.copyload.i471 = load i32, ptr %i.s, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i471) #7, !srcloc !19
  %i.t = icmp ugt i32 %.0.copyload.i469, %.0.copyload.i468 ; 3 uses
  %i.u = select i1 %i.t, i64 %.0.copyload.i467, i64 %.0.copyload.i ; 2 uses
  %i.v = lshr i64 %i.u, 32                        ; 3 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 5 uses
  %i.x = icmp ult i32 %.0.copyload.i471, %i.w
  br i1 %i.x, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = select i1 %i.t, i64 %.0.copyload.i, i64 %.0.copyload.i467 ; 2 uses
  %i.z = lshr i64 %i.y, 32                        ; 2 uses
  %i.aa = trunc nuw i64 %i.z to i32               ; 3 uses
  %i.ab = add i32 %i.w, 1                         ; 3 uses
  %i.ac = icmp ugt i32 %.0.copyload.i471, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val449 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.r
  store i32 %i.ab, ptr %i.ad, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0408 = phi i32 [ %i.ab, %bb.c ], [ %.0.copyload.i471, %bb.b ]
  %i.ae = icmp ult i32 %.0408, %i.aa
  br i1 %i.ae, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = trunc i64 %i.u to i32                   ; 2 uses
  %i.ag = trunc i64 %.0.copyload.i470 to i32
  %i.ah = trunc i64 %i.y to i32                   ; 2 uses
  %i.ai = shl i32 %i.aa, 3                        ; 3 uses
  %i.aj = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ai) #7 ; 4 uses
  %.val444 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val444, i64 %i.r
  %.0.copyload.i472 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i472) #7, !srcloc !19
  %i.al = sub i32 %.0.copyload.i472, %i.aa
  %i.am = shl i32 %i.al, 3
  %i.an = add i32 %i.aj, %i.ai
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %i.ah, -8
  %i.ap = add i32 %i.ao, %i.ai
  %i.aq = zext i32 %i.ap to i64
  %.val456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val456, i64 %i.aq
  %.0.copyload.i473 = load i64, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i473) #7, !srcloc !20
  %i.as = ashr i64 %.0.copyload.i473, 63
  %i.at = trunc nsw i64 %i.as to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0407 = phi i32 [ %i.at, %bb.f ], [ 0, %bb.e ]
  %i.au = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %.0407, i32 noundef %i.am) #7 ; 0 uses
  %.not429 = icmp eq i64 %i.v, 0
  br i1 %.not429, label %.thread, label %.preheader489

.preheader489:                                    ; preds = %bb.g, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %.0409 = phi i64 [ %i.bj, %bb.j ], [ 0, %bb.g ]
  %i.av = trunc nuw i64 %indvars.iv to i32
  %i.aw = shl i32 %i.av, 3                        ; 2 uses
  %i.ax = add i32 %i.aw, %i.af
  %i.ay = zext i32 %i.ax to i64
  %.val455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val455, i64 %i.ay
  %.0.copyload.i474 = load i64, ptr %i.az, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i474) #7, !srcloc !20
  %i.ba = add i32 %i.aw, %i.aj
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.val454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val454, i64 %i.bb
  %.0.copyload.i475 = load i64, ptr %i.bc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i475) #7, !srcloc !20
  %.not430 = icmp eq i64 %.0409, 0
  br i1 %.not430, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader489
  %i.bd = xor i64 %.0.copyload.i474, -1
  %i.be = add i64 %.0.copyload.i475, %i.bd        ; 2 uses
  %i.bf = icmp uge i64 %i.be, %.0.copyload.i475
  br label %bb.j

bb.i:                                             ; preds = %.preheader489
  %i.bg = sub i64 %.0.copyload.i475, %.0.copyload.i474
  %i.bh = icmp ult i64 %.0.copyload.i475, %.0.copyload.i474
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1410 = phi i64 [ %i.be, %bb.h ], [ %i.bg, %bb.i ]
  %.1.in = phi i1 [ %i.bf, %bb.h ], [ %i.bh, %bb.i ]
  %.val463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.bb
  store i64 %.1410, ptr %i.bi, align 1
  %i.bj = zext i1 %.1.in to i64                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not431 = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %.not431, label %bb.k, label %.preheader489

bb.k:                                             ; preds = %bb.j
  %i.bk = shl i32 %i.w, 3                         ; 2 uses
  %i.bl = add i32 %i.aj, %i.bk
  %i.bm = add i32 %i.af, -8
  %i.bn = add i32 %i.bm, %i.bk
  %i.bo = zext i32 %i.bn to i64
  %.val453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.bo
  %.0.copyload.i476 = load i64, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i476) #7, !srcloc !20
  %i.bq = ashr i64 %.0.copyload.i476, 63
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.k
  %i.br = phi i32 [ %i.bl, %bb.k ], [ %i.aj, %bb.g ] ; 2 uses
  %.2411487 = phi i64 [ %i.bj, %bb.k ], [ 0, %bb.g ]
  %.0 = phi i64 [ %i.bq, %bb.k ], [ 0, %bb.g ]
  %.val443 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val443, i64 %i.r
  %.0.copyload.i477 = load i32, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i477) #7, !srcloc !19
  %4 = sub i32 %.0.copyload.i477, %i.w            ; 3 uses
  %.not432 = icmp eq i32 %.0.copyload.i477, %i.w
  br i1 %.not432, label %.loopexit488, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bt = add nsw i64 %.0, %.2411487              ; 2 uses
  %i.bu = zext i32 %i.br to i64                   ; 3 uses
  %.val452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val452, i64 %i.bu
  %.0.copyload.i478 = load i64, ptr %i.bv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i478) #7, !srcloc !20
  %i.bw = sub i64 %.0.copyload.i478, %i.bt
  %.val462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.bu
  store i64 %i.bw, ptr %i.bx, align 1
  %.not433 = icmp ule i64 %i.bt, %.0.copyload.i478
  %i.by = icmp eq i32 %4, 1
  %or.cond = or i1 %i.by, %.not433
  br i1 %or.cond, label %.loopexit488, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = add nuw nsw i64 %i.bu, 8                ; 2 uses
  %.val451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val451, i64 %i.bz
  %.0.copyload.i479 = load i64, ptr %i.ca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i479) #7, !srcloc !20
  %i.cb = add i64 %.0.copyload.i479, -1
  %.val461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.bz
  store i64 %i.cb, ptr %i.cc, align 1
  %.not434 = icmp eq i64 %.0.copyload.i479, 0
  br i1 %.not434, label %.preheader.preheader, label %.loopexit488

.preheader.preheader:                             ; preds = %bb.m
  %wide.trip.count = zext i32 %4 to i64
  %exitcond507 = icmp eq i32 %4, 2
  br i1 %exitcond507, label %.loopexit488, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %indvars.iv495508 = phi i64 [ %indvars.iv.next496, %.lr.ph ], [ 2, %.preheader.preheader ] ; 2 uses
  %indvars = trunc nuw i64 %indvars.iv495508 to i32
  %i.cd = shl i32 %indvars, 3
  %i.ce = add i32 %i.cd, %i.br
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %.val450 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.cf
  %.0.copyload.i480 = load i64, ptr %i.cg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i480) #7, !srcloc !20
  %i.ch = add i64 %.0.copyload.i480, -1
  %.val460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.cf
  store i64 %i.ch, ptr %i.ci, align 1
  %.not436 = icmp ne i64 %.0.copyload.i480, 0
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495508, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next496, %wide.trip.count
  %or.cond512 = select i1 %.not436, i1 true, i1 %exitcond
  br i1 %or.cond512, label %.loopexit488, label %.lr.ph

.loopexit488:                                     ; preds = %.lr.ph, %.preheader.preheader, %bb.l, %bb.m, %.thread
  %i.cj = add i32 %i.b, -8                        ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit488
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %i.ck
  %.0.copyload.i.i = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %.val10.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.0.copyload.i12.i = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i12.i) #7, !srcloc !19
  %i.co = zext i32 %.0.copyload.i12.i to i64
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.co
  %.0.copyload.i13.i = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i13.i) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i, i32 noundef %.0.copyload.i13.i) #7
  br label %bb.p

bb.o:                                             ; preds = %.loopexit488
  tail call void @w2c_hermes_0x5F_cxxabiv10x3A0x3A_0x5Fshim_type_info0x3A0x3Anoop10x280x290x20const(ptr noundef nonnull %0, i32 noundef %i.cj) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.val442 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %.0.copyload.i481 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i481) #7, !srcloc !19
  %i.cs = zext i32 %.0.copyload.i481 to i64       ; 2 uses
  %.val441 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.cs
  %.0.copyload.i482 = load i32, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i482) #7, !srcloc !19
  %i.cu = shl i32 %.0.copyload.i482, 3            ; 5 uses
  %.not437 = icmp eq i32 %i.cu, 0
  br i1 %.not437, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %.0.copyload.i483 = load i32, ptr %i.cv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i483) #7, !srcloc !19
  %i.cw = add i32 %i.cu, -1                       ; 2 uses
  %i.cx = add i32 %.0.copyload.i483, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.cy
  %.0.copyload.i484 = load i8, ptr %i.cz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i484) #7, !srcloc !21
  %i.da = zext i8 %.0.copyload.i484 to i32
  %sext = shl nuw i32 %i.da, 24
  %i.db = ashr i32 %sext, 31                      ; 3 uses
  %i.dc = trunc nsw i32 %i.db to i8
  %.not438 = icmp eq i8 %.0.copyload.i484, %i.dc
  br i1 %.not438, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dd = zext i32 %i.cw to i64
  %i.de = add i32 %.0.copyload.i483, -1
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %i.df = add nsw i64 %.3510, -1                  ; 2 uses
  %i.dg = add i32 %.0414509, -1
  %.not439 = icmp eq i64 %i.df, 0
  br i1 %.not439, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.3510 = phi i64 [ %i.dd, %bb.r ], [ %i.df, %bb.s ] ; 2 uses
  %.0414509 = phi i32 [ %i.cu, %bb.r ], [ %i.dg, %bb.s ] ; 2 uses
  %i.dh = trunc nuw i64 %.3510 to i32             ; 2 uses
  %i.di = add i32 %i.de, %i.dh
  %i.dj = zext i32 %i.di to i64
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.dj
  %.0.copyload.i485 = load i8, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i485) #7, !srcloc !21
  %i.dl = icmp eq i8 %.0.copyload.i484, %.0.copyload.i485
  br i1 %i.dl, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = zext i8 %.0.copyload.i485 to i32
  %sext440 = shl nuw i32 %i.dm, 24
  %i.dn = ashr i32 %sext440, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.q, %bb.u
  %.1416 = phi i32 [ %.0414509, %bb.u ], [ %i.cu, %bb.q ], [ 1, %bb.s ]
  %.1413 = phi i32 [ %i.dh, %bb.u ], [ %i.cu, %bb.q ], [ 0, %bb.s ]
  %.2 = phi i32 [ %i.dn, %bb.u ], [ %i.db, %bb.q ], [ 0, %bb.s ]
  %i.do = icmp eq i32 %.2, %i.db
  %i.dp = select i1 %i.do, i32 %.1413, i32 %.1416
  %i.dq = add i32 %i.dp, 7
  %i.dr = lshr i32 %i.dq, 3
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %bb.p
  %.2417 = phi i32 [ %i.dr, %.loopexit ], [ 0, %bb.p ]
  %.val448 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.cs
  store i32 %.2417, ptr %i.ds, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.a, %bb.v
  %.0418 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.v ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.0418
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AnegateAdditiveOpPostProcess0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x260x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val10, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i12 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i12) #7, !srcloc !19
  %i.f = zext i32 %.0.copyload.i12 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %.0.copyload.i13 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i13) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef %.0.copyload.i13) #7
  ret void
}

declare void @w2c_hermes_0x5F_cxxabiv10x3A0x3A_0x5Fshim_type_info0x3A0x3Anoop10x280x290x20const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Aadd0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 24 uses
  %i.b = zext i32 %1 to i64
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.d = lshr i64 %.0.copyload.i, 32              ; 6 uses
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.d
  %.0.copyload.i424 = load i32, ptr %i.e, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #7, !srcloc !19
  %i.f = zext i32 %2 to i64                       ; 2 uses
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.f
  %.0.copyload.i425 = load i64, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i425) #7, !srcloc !20
  %i.h = zext i32 %3 to i64                       ; 2 uses
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.h
  %.0.copyload.i426 = load i64, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i426) #7, !srcloc !20
  %.val404 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.0.copyload.i427 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i427) #7, !srcloc !19
  %.val403 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.0.copyload.i428 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #7, !srcloc !19
  %i.n = icmp ugt i32 %.0.copyload.i427, %.0.copyload.i428 ; 2 uses
  %i.o = select i1 %i.n, i64 %.0.copyload.i425, i64 %.0.copyload.i426 ; 2 uses
  %i.p = lshr i64 %i.o, 32                        ; 3 uses
  %i.q = trunc nuw i64 %i.p to i32                ; 5 uses
  %i.r = icmp ult i32 %.0.copyload.i424, %i.q
  br i1 %i.r, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = select i1 %i.n, i64 %.0.copyload.i426, i64 %.0.copyload.i425 ; 2 uses
  %i.t = lshr i64 %i.s, 32                        ; 2 uses
  %i.u = trunc nuw i64 %i.t to i32                ; 3 uses
  %i.v = add i32 %i.q, 1                          ; 3 uses
  %i.w = icmp ugt i32 %.0.copyload.i424, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val407 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.d
  store i32 %i.v, ptr %i.x, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0367 = phi i32 [ %i.v, %bb.c ], [ %.0.copyload.i424, %bb.b ]
  %i.y = icmp ult i32 %.0367, %i.u
  br i1 %i.y, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = trunc i64 %i.o to i32                    ; 2 uses
  %i.aa = trunc i64 %.0.copyload.i to i32
  %i.ab = trunc i64 %i.s to i32                   ; 2 uses
  %i.ac = shl i32 %i.u, 3                         ; 3 uses
  %i.ad = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ac) #7 ; 6 uses
  %.val402 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.d
  %.0.copyload.i429 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #7, !srcloc !19
  %i.af = sub i32 %.0.copyload.i429, %i.u
  %i.ag = shl i32 %i.af, 3
  %i.ah = add i32 %i.ad, %i.ac
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add i32 %i.ab, -8
  %i.aj = add i32 %i.ai, %i.ac
  %i.ak = zext i32 %i.aj to i64
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.ak
  %.0.copyload.i430 = load i64, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i430) #7, !srcloc !20
  %i.am = ashr i64 %.0.copyload.i430, 63
  %i.an = trunc nsw i64 %i.am to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0366 = phi i32 [ %i.an, %bb.f ], [ 0, %bb.e ]
  %i.ao = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef %.0366, i32 noundef %i.ag) #7 ; 0 uses
  %.not389 = icmp eq i64 %i.p, 0
  br i1 %.not389, label %.thread, label %.preheader444

.preheader444:                                    ; preds = %bb.g, %.preheader444
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader444 ], [ 0, %bb.g ] ; 2 uses
  %.0369 = phi i64 [ %i.bc, %.preheader444 ], [ 0, %bb.g ]
  %i.ap = trunc nuw i64 %indvars.iv to i32
  %i.aq = shl i32 %i.ap, 3                        ; 2 uses
  %i.ar = add i32 %i.aq, %i.z
  %i.as = zext i32 %i.ar to i64
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.as
  %.0.copyload.i431 = load i64, ptr %i.at, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i431) #7, !srcloc !20
  %i.au = add i32 %i.aq, %i.ad
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.av
  %.0.copyload.i432 = load i64, ptr %i.aw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i432) #7, !srcloc !20
  %.not390 = icmp eq i64 %.0369, 0                ; 2 uses
  %i.ax = add i64 %.0.copyload.i432, %.0.copyload.i431 ; 3 uses
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = icmp ule i64 %i.ay, %.0.copyload.i432
  %i.ba = icmp ult i64 %i.ax, %.0.copyload.i431
  %.1370 = select i1 %.not390, i64 %i.ax, i64 %i.ay
  %.1368.in = select i1 %.not390, i1 %i.ba, i1 %i.az
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.av
  store i64 %.1370, ptr %i.bb, align 1
  %i.bc = zext i1 %.1368.in to i64                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not391 = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %.not391, label %bb.h, label %.preheader444

bb.h:                                             ; preds = %.preheader444
  %i.bd = shl i32 %i.q, 3                         ; 2 uses
  %i.be = add i32 %i.ad, %i.bd
  %i.bf = add i32 %i.z, -8
  %i.bg = add i32 %i.bf, %i.bd
  %i.bh = zext i32 %i.bg to i64
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.bh
  %.0.copyload.i433 = load i64, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i433) #7, !srcloc !20
  %i.bj = ashr i64 %.0.copyload.i433, 63
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bk = phi i32 [ %i.be, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %.2371442 = phi i64 [ %i.bc, %bb.h ], [ 0, %bb.g ]
  %.0 = phi i64 [ %i.bj, %bb.h ], [ 0, %bb.g ]
  %.val401 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.d
  %.0.copyload.i434 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #7, !srcloc !19
  %4 = sub i32 %.0.copyload.i434, %i.q            ; 3 uses
  %.not392 = icmp eq i32 %.0.copyload.i434, %i.q
  br i1 %.not392, label %.loopexit443, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.bm = add nsw i64 %.0, %.2371442
  %i.bn = zext i32 %i.bk to i64                   ; 3 uses
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.bn
  %.0.copyload.i435 = load i64, ptr %i.bo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i435) #7, !srcloc !20
  %i.bp = add i64 %i.bm, %.0.copyload.i435        ; 2 uses
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.bn
  store i64 %i.bp, ptr %i.bq, align 1
  %.not393 = icmp uge i64 %i.bp, %.0.copyload.i435
  %i.br = icmp eq i32 %4, 1
  %or.cond = or i1 %i.br, %.not393
  br i1 %or.cond, label %.loopexit443, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = add nuw nsw i64 %i.bn, 8                ; 2 uses
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.bs
  %.0.copyload.i436 = load i64, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i436) #7, !srcloc !20
  %i.bu = add i64 %.0.copyload.i436, 1            ; 2 uses
  %.val419 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 1
  %.not394 = icmp eq i64 %i.bu, 0
  br i1 %.not394, label %.preheader.preheader, label %.loopexit443

.preheader.preheader:                             ; preds = %bb.j
  %wide.trip.count = zext i32 %4 to i64
  %exitcond462 = icmp eq i32 %4, 2
  br i1 %exitcond462, label %.loopexit443, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %indvars.iv450463 = phi i64 [ %indvars.iv.next451, %.lr.ph ], [ 2, %.preheader.preheader ] ; 2 uses
  %indvars = trunc nuw i64 %indvars.iv450463 to i32
  %i.bw = shl i32 %indvars, 3
  %i.bx = add i32 %i.bw, %i.bk
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.by
  %.0.copyload.i437 = load i64, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i437) #7, !srcloc !20
  %i.ca = add i64 %.0.copyload.i437, 1            ; 2 uses
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.by
  store i64 %i.ca, ptr %i.cb, align 1
  %.not396 = icmp ne i64 %i.ca, 0
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450463, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next451, %wide.trip.count
  %or.cond467 = select i1 %.not396, i1 true, i1 %exitcond
  br i1 %or.cond467, label %.loopexit443, label %.lr.ph

.loopexit443:                                     ; preds = %.lr.ph, %.preheader.preheader, %bb.i, %bb.j, %.thread
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %.0.copyload.i438 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i438) #7, !srcloc !19
  %i.cd = shl i32 %.0.copyload.i438, 3            ; 5 uses
  %.not397 = icmp eq i32 %i.cd, 0
  br i1 %.not397, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.loopexit443
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  %i.cf = add i32 %i.ce, %i.ad
  %i.cg = zext i32 %i.cf to i64
  %.val423 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.cg
  %.0.copyload.i439 = load i8, ptr %i.ch, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i439) #7, !srcloc !21
  %i.ci = zext i8 %.0.copyload.i439 to i32
  %sext = shl nuw i32 %i.ci, 24
  %i.cj = ashr i32 %sext, 31                      ; 3 uses
  %i.ck = trunc nsw i32 %i.cj to i8
  %.not398 = icmp eq i8 %.0.copyload.i439, %i.ck
  br i1 %.not398, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.cl = zext i32 %i.ce to i64
  %i.cm = add i32 %i.ad, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cn = add nsw i64 %.0372465, -1               ; 2 uses
  %i.co = add i32 %.1376464, -1
  %.not399 = icmp eq i64 %i.cn, 0
  br i1 %.not399, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0372465 = phi i64 [ %i.cl, %bb.l ], [ %i.cn, %bb.m ] ; 2 uses
  %.1376464 = phi i32 [ %i.cd, %bb.l ], [ %i.co, %bb.m ] ; 2 uses
  %i.cp = trunc nuw i64 %.0372465 to i32          ; 2 uses
  %i.cq = add i32 %i.cm, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %.val422 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.cr
  %.0.copyload.i440 = load i8, ptr %i.cs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i440) #7, !srcloc !21
  %i.ct = icmp eq i8 %.0.copyload.i439, %.0.copyload.i440
  br i1 %i.ct, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = zext i8 %.0.copyload.i440 to i32
  %sext400 = shl nuw i32 %i.cu, 24
  %i.cv = ashr i32 %sext400, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.o
  %.0378 = phi i32 [ %i.cp, %bb.o ], [ %i.cd, %bb.k ], [ 0, %bb.m ]
  %.0377 = phi i32 [ %.1376464, %bb.o ], [ %i.cd, %bb.k ], [ 1, %bb.m ]
  %.1 = phi i32 [ %i.cv, %bb.o ], [ %i.cj, %bb.k ], [ 0, %bb.m ]
  %i.cw = icmp eq i32 %.1, %i.cj
  %i.cx = select i1 %i.cw, i32 %.0378, i32 %.0377
  %i.cy = add i32 %i.cx, 7
  %i.cz = lshr i32 %i.cy, 3
  br label %bb.p

bb.p:                                             ; preds = %.loopexit443, %.loopexit
  %.2 = phi i32 [ %i.cz, %.loopexit ], [ 0, %.loopexit443 ]
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.d
  store i32 %.2, ptr %i.da, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.a, %bb.p
  %.0373 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.p ]
  ret i32 %.0373
}

; Function Attrs: nounwind uwtable
define hidden range(i32 2, 1) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3AaddSignedResultSize0x28hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20long0x20long0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.d = lshr i64 %.0.copyload.i, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = tail call i32 @llvm.umax.i32(i32 %i.e, i32 1)
  %i.g = add i32 %i.f, 1
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AsignedRightShiftAdapter0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %2, 3
  %i.b = add i32 %1, -8
  %i.c = add i32 %i.b, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = zext i32 %i.c to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.g = icmp sgt i64 %.0.copyload.i, -1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcComplement0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #7
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftRight0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcComplement0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftRight0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcComplement0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftRight0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AshiftImpl0x28hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AShiftOpIs0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.e = zext i32 %4 to i64
  %.val339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.g = lshr i64 %.0.copyload.i, 32              ; 2 uses
  %i.h = trunc nuw i64 %i.g to i32                ; 4 uses
  %i.i = lshr i64 %5, 32                          ; 4 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %5 to i32                      ; 2 uses
  %i.k = shl nuw nsw i64 %i.i, 3
  %i.l = add i64 %5, 4294967288
  %i.m = add i64 %i.l, %i.k
  %i.n = and i64 %i.m, 4294967295                 ; 4 uses
  %.val338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.n
  %.0.copyload.i345 = load i64, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i345) #7, !srcloc !20
  %i.p = zext i32 %i.c to i64
  %i.q = add nuw nsw i64 %i.p, 8                  ; 3 uses
  %.val342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.q
  store i64 -65536, ptr %i.r, align 1
  %i.s = lshr i64 %.0.copyload.i345, 63
  %i.t = trunc nuw nsw i64 %i.s to i32            ; 5 uses
  %.val337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.n
  %.0.copyload.i346 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i346) #7, !srcloc !20
  %i.v = icmp slt i64 %.0.copyload.i346, 0
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not322 = icmp eq i64 %i.i, 1
  br i1 %.not322, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.w = add i32 %i.b, -8                         ; 2 uses
  %i.x = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef %i.w, i32 noundef 1) #7
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.q
  store i64 65536, ptr %i.z, align 1
  %.val336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.n
  %.0.copyload.i347 = load i64, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i347) #7, !srcloc !20
  %i.ab = icmp slt i64 %.0.copyload.i347, 0
  br i1 %i.ab, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.b
  %.val340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.q
  store i64 65536, ptr %i.ac, align 1
  %.val335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.n
end_hunk_5
